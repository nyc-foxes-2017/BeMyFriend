class CreateFriends < ActiveRecord::Migration[5.0]
  def change
    create_table :friends do |t|
      t.references :user, null: false, foreign_key: true
      t.references :friend_user, null: false, index: true

      t.timestamps
    end
    add_foreign_key :friends, :users, column: :friend_user_id
    add_index :friends, [:user_id, :friend_user_id], unique: true
  end
end
