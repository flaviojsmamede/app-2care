class Resident < ApplicationRecord
  belongs_to :user
  has_many :family_members
  has_many :reports
end
