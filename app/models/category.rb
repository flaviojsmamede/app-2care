class Category < ApplicationRecord
  has_many :report_categories
  has_many :options
end
