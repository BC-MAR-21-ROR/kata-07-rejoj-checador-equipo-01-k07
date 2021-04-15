class RemoveBranchIdFromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_reference :users, :branch_id, null: false
  end
end
