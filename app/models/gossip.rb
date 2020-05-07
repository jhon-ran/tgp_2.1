class Gossip < ApplicationRecord
  belongs_to :user
  # gossip comment is deleted when gossip is
  has_many :comments, dependent: :destroy
  
  # validations
  validates :title, presence: true, length: { minimum: 3, maximum: 14}
  validates :text, presence: true 
end
