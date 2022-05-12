class CreateWishLists < ActiveRecord::Migration[6.0]
  def change
    create_table :wish_lists do |t|
      t.integer :user_id, null: false
      t.integer :production_id, null: false

      t.timestamps
    end
  end
end
