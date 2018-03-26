class CreateWorkorders < ActiveRecord::Migration[5.1]
  def change
    create_table :workorders do |t|
      t.string :address
      t.text :description
      t.datetime :date_planned
      t.datetime :date_done
      t.text :report
      t.string :status
      t.references :manager, foreign_key: true
      t.references :technician, foreign_key: true

      t.timestamps
    end
  end
end
