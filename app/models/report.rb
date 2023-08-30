class Report < ApplicationRecord
  belongs_to :resident
  has_many :report_categories, dependent: :destroy
  has_many :categories, through: :report_categories
end
