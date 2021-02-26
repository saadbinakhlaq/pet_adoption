class CreateAdoptionRequests < ActiveRecord::Migration[6.1]
  def change
    create_table :adoption_requests do |t|
      t.belongs_to :guardian, null: false
      t.belongs_to :pet, null: false
      t.text :comment

      t.timestamps
    end
  end
end
