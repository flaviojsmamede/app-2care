class ReportCategory < ApplicationRecord
  belongs_to :category
  belongs_to :report
end
