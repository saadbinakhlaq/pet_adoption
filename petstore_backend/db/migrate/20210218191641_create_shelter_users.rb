class CreateShelterUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :shelter_users do |t|
      t.text :first_name
      t.text :last_name
      t.text :address_line_1
      t.references :shelter, null: false, foreign_key: true

      t.timestamps
    end
  end
end
