class CreateProductions < ActiveRecord::Migration[6.0]
  def change
    create_table :productions do |t|
      t.string  :production_name,              null: false
      t.date    :purchase_date,                null: false
      t.string  :coffee_beans_type
      t.string  :farm_name
      t.text    :product_report
      t.integer :product_category_id,          null: false
      t.integer :coffee_blend_id,              null: false
      t.integer :degree_of_roasting_id,        null: false
      t.integer :country_of_origin_id,         null: false
      t.integer :carefully_selected_method_id, null: false
      t.integer :sweetness_id,                 null: false
      t.integer :acidity_id,                   null: false
      t.integer :bitter_taste_id,              null: false
      t.integer :flavor_id,                    null: false
      t.references :shop, foreign_key: true
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
