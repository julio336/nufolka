class CreateProducts < ActiveRecord::Migration
  def self.up
    create_table :products do |t|
      t.string :title
      t.decimal :price, :precision => 8, :scale => 2
      t.text :description
      t.string :image_url
      t.text :buy_button
      t.timestamps
    end
  end

  def self.down
    drop_table :products
  end
end
