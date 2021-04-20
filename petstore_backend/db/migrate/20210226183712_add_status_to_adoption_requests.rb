class AddStatusToAdoptionRequests < ActiveRecord::Migration[6.1]
  def up
    add_column :adoption_requests, :status, :string, default: 'initialized', null: false
    add_index :adoption_requests, :status
  end
end
