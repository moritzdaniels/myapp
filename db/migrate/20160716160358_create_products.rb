class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.text :colour
      t.text :price
      t.string :image_url

      t.timestamps
    end
  end
end
