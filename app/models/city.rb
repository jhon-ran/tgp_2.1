class City < ApplicationRecord
  # validates :zip_code, presence: true

  has_many :users
  has_many :gossips, through: :users
end
