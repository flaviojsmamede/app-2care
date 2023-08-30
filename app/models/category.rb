class Category < ApplicationRecord
  has_many :report_categories, dependent: :destroy
  has_many :options, dependent: :destroy
end
