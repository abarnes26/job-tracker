class Job < ApplicationRecord
  validates :title, :level_of_interest, :city, presence: true
  has_many :comments
  belongs_to :company
  belongs_to :category
end
