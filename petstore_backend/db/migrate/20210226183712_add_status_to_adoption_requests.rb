class AddStatusToAdoptionRequests < ActiveRecord::Migration[6.1]
  def change
    add_column :adoption_requests, :status, :integer, default: 0
    add_index :adoption_requests, :status
  end
end
