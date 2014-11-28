class CreateStorefronts < ActiveRecord::Migration
  def change
    create_table :storefronts do |t|
      t.string :description
      t.string :name
      t.references :seller
      
      t.timestamps
    end
  end
end
