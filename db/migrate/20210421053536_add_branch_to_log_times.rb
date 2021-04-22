class AddBranchToLogTimes < ActiveRecord::Migration[6.1]
  def change
    add_reference :log_times, :branch, null: false, foreign_key: true
  end
end
