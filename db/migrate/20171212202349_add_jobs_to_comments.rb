class AddJobsToComments < ActiveRecord::Migration[5.1]
  def change
    add_reference :comments, :job, foreign_key: true
  end
end
