class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :kind
      t.string :category
      t.references :listing

      t.timestamps
    end
  end
end
