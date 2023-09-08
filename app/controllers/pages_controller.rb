class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @user = current_user
  end

  def account
    @user = current_user
  end

  def search
    @user = current_user

    @residents = []

    return unless params[:query].present?

    search_query = params[:query].strip # Remove leading/trailing spaces
    sql_query = <<~SQL
      residents.first_name ILIKE :query
      OR residents.last_name ILIKE :query
    SQL
    @residents = Resident.where(sql_query, query: "%#{search_query}%")
  end

  def dashboard
    @sent_reports = Report.where(send_status: true, created_at: Time.zone.now.beginning_of_day..Time.zone.now.end_of_day)

    @averages = @sent_reports.map do |report|
      most_frequent_option = report.options
                                    .select("options.score")
                                    .group(:score)
                                    .count(:score)
                                    .max_by do |option_score, frequency|
                                      frequency
                                    end

      {
        report_id: report.id,
        most_frequent_option_score: most_frequent_option.first
      }
    end

    @goods_count = @averages.select { |report| report[:most_frequent_option_score] == 3 }.count
    @mediums_count = @averages.select { |report| report[:most_frequent_option_score] == 2 }.count
    @bads_count = @averages.select { |report| report[:most_frequent_option_score] == 1 }.count
  end
end
