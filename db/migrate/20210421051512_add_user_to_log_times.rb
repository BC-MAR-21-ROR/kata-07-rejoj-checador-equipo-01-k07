class AddUserToLogTimes < ActiveRecord::Migration[6.1]
  def change
    add_reference :log_times, :user, null: false, foreign_key: true
  end
end
