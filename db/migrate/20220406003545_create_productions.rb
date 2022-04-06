class CreateProductions < ActiveRecord::Migration[6.0]
  def change
    create_table :productions do |t|

      t.timestamps
    end
  end
end
