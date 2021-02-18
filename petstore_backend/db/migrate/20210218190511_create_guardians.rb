class CreateGuardians < ActiveRecord::Migration[6.1]
  def change
    create_table :guardians do |t|
      t.text :first_name
      t.text :last_name
      t.text :address_line_1

      t.timestamps
    end
  end
end
