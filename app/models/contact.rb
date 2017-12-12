class Contact < ApplicationRecord
  validates :full_name, :position, :email, presence: true
  belongs_to :company
end
