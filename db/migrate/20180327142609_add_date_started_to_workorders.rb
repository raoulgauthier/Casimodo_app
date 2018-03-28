class AddDateStartedToWorkorders < ActiveRecord::Migration[5.1]
  def change
    add_column :workorders, :date_started, :datetime
  end
end
