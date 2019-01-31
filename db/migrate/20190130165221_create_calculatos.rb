class CreateCalculatos < ActiveRecord::Migration[5.2]
  def change
    create_table :calculatos do |t|
      t.string :firstname
      t.integer :firstnumber
      t.string :operator
      t.integer :secondnumber

      t.timestamps
    end
  end
end
