class CreateShops < ActiveRecord::Migration[8.0]
  def change
    create_table :shops do |t|
      t.string :name
      t.string :api_token

      t.timestamps
    end
  end
end
