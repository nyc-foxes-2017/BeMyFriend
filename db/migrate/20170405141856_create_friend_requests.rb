class CreateFriendRequests < ActiveRecord::Migration[5.0]
  def change
    create_table :friend_requests do |t|
      t.references :user, null: false, index: true
      t.integer :friend_id, null: false, index: true

      t.boolean :accepted, default: false

      t.timestamps
    end
  end
end
