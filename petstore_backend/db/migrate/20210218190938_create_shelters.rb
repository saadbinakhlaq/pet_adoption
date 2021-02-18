class CreateShelters < ActiveRecord::Migration[6.1]
  def change
    create_table :shelters do |t|
      t.text :name
      t.text :brand
      t.text :address_line_1

      t.timestamps
    end
  end
end
