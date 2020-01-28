class CreatePerson < ActiveRecord::Migration[5.2]
  def change
    add_column :applications :name :house_id

    create_table :people do |t|
      t.string :name
      t.integer :house_id
    end
  end
end
