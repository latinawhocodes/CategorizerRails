class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :product_name
      t.string :product_type
      t.boolean :fullsize

      t.text :notes
      t.references :brand, null: false, foreign_key: true

      t.timestamps
    end
  end
end
