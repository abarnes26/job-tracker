class AddCompaniesToContacts < ActiveRecord::Migration[5.1]
  def change
    add_reference :contacts, :company, foreign_key: true
  end
end
