class CreateAddresses < ActiveRecord::Migration[6.1]
  def change
    create_table :addresses do |t|
      t.references :addressable, polymorphic: true, null: false
      t.string :street_name
      t.string :number
      t.string :city
      t.string :state
      t.string :pincode
      t.string :country

      t.timestamps
    end
  end
end
