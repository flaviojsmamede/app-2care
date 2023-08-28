class Resident < ApplicationRecord
  belongs_to :user
  has_many :family_members
end
