class AddSignerToWorkorder < ActiveRecord::Migration[5.1]
  def change
     add_column :workorders, :signer, :string
  end
end
