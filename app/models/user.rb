class User < ApplicationRecord
  has_secure_password
  has_many :gossips
  belongs_to :city, required: false
  
  # Validation
  validates :email, presence: true, uniqueness: true
end
