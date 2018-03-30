class AddLegendToPhoto < ActiveRecord::Migration[5.1]
  def change
    add_column :photos, :legend, :string
  end
end
