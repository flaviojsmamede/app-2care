class Option < ApplicationRecord
  belongs_to :category
  validates :name, presence: true, uniqueness: { scope: :category_id }
end
