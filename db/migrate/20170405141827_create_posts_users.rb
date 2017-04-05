class CreatePostsUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :posts_users do |t|
      t.references :user, null: false
      t.references :post, null: false
      
      t.timestamps
    end
  end
end
