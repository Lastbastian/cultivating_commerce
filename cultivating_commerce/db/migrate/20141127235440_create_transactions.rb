class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.references :buyer
      t.references :seller
      
      t.timestamps
    end
  end
end
