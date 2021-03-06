class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :short
      t.text :description
      t.string :price
      t.string :image
      t.references :category, index: true

      t.timestamps
    end
  end
end
