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
  end
end
