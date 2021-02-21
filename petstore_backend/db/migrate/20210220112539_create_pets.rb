class CreatePets < ActiveRecord::Migration[6.1]
  def change
    create_table :pets do |t|
      t.references :shelter, null: false, foreign_key: true
      t.string :name
      t.string :species
      t.string :gender
      t.string :color
      t.string :additional_properties
      t.datetime :date_of_birth

      t.timestamps
    end
  end
end
