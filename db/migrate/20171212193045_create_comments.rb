class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.text :content
      t.string :timestamp
      t.string :true
    end
  end
end
