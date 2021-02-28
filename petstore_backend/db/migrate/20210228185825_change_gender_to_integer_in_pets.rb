class ChangeGenderToIntegerInPets < ActiveRecord::Migration[6.1]
  def change
    change_column :pets, :gender, :integer, using: 'gender::integer', default: 0, null: false
  end
end
