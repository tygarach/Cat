class CreateTuratsinzes < ActiveRecord::Migration[5.2]
  def change
    create_table :turatsinzes do |t|
      t.string :firstname
      t.string :lastname

      t.timestamps
    end
  end
end
