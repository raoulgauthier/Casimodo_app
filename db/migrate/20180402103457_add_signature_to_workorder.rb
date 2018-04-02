class AddSignatureToWorkorder < ActiveRecord::Migration[5.1]
  def change
    add_column :workorders, :signature, :string
  end
end
