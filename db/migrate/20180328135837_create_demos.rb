class CreateDemos < ActiveRecord::Migration[5.1]
  def change
    create_table :demos do |t|
      t.string :name
      t.string :company
      t.string :email

      t.timestamps
    end
  end
end
