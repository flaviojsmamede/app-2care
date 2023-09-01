class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :residents

  validates :first_name,
            presence: true,
            length: { minimum: 3 },
            format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }

  validates :last_name,
            presence: true,
            length: { minimum: 3 },
            format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }

  def full_name
    "#{first_name} #{last_name}"
  end
end
