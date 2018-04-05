class AddPredictedDurationToWorkorders < ActiveRecord::Migration[5.1]
  def change
    add_column :workorders, :predicted_duration, :float
  end
end
