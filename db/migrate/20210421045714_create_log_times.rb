class CreateLogTimes < ActiveRecord::Migration[6.1]
  def change
    create_table :log_times do |t|
      t.datetime :check_in
      t.datetime :check_out

      t.timestamps
    end
  end
end
