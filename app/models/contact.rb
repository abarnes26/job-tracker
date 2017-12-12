class Contact < ApplicationRecord
  validates :name, :position, :email, presence: true
  belongs_to :company
end
