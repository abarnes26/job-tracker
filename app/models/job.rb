class Job < ApplicationRecord
  validates :title, :level_of_interest, :city, presence: true
  has_many :comments, dependent: :destroy
  belongs_to :company
  belongs_to :category

  def self.by_city(location)
    where(:city => location)
  end

  def self.sort_by_city(location)
    order(:location)
  end

end
