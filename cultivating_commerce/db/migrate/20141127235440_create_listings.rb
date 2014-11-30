class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :title
      t.string :description
      t.string :desired
      t.string :quantity
      t.string :image
      t.boolean :active
      t.references :item

      t.references :user      
      
      t.timestamps
    end
  end
end