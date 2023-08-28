class Report < ApplicationRecord
  belongs_to :resident
  has_many :report_categories
end
