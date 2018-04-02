class AddCoordinatesToWorkorders < ActiveRecord::Migration[5.1]
  def change
    add_column :workorders, :latitude, :float
    add_column :workorders, :longitude, :float
  end
end
