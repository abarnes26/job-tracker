class Company < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_many :jobs
  has_many :contacts
end
