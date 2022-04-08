class CreateShops < ActiveRecord::Migration[6.0]
  def change
    create_table :shops do |t|
      t.string  :shop_name,            null: false
      t.string  :shi_ku_gun
      t.string  :chome_banchi
      t.string  :shop_url,        null: false
      t.integer :prefectures_id,  null: false
      t.references :user,        foreign_key: true
      t.timestamps
    end
  end
end
