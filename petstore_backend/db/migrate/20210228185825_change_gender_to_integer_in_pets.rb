class ChangeGenderToIntegerInPets < ActiveRecord::Migration[6.1]
  def up
    change_column :pets, :gender, :string, default: 'female', null: false
  end

  def down
    change_column :pets, :gender, :string
  end
end
