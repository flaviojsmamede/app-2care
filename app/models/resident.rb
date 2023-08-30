class Resident < ApplicationRecord
  belongs_to :user
  has_many :family_members
  has_many :reports, dependent: :destroy
  has_one_attached :photo
end
