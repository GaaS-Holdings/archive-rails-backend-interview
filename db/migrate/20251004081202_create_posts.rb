class CreatePosts < ActiveRecord::Migration[8.0]
  def change
    create_table :posts do |t|
      t.string :image_url
      t.integer :likes_count
      t.integer :comments_count
      t.references :shop, null: false, foreign_key: true

      t.timestamps
    end
  end
end
