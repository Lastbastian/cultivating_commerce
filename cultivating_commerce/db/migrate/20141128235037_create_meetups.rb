class CreateMeetups < ActiveRecord::Migration
  def change
    create_table :meetups do |t|
      t.string :address_line_1
      t.string :city
      t.string :zipcode
      t.date :date
      t.string :time
      t.string :title
      t.string :description
      t.string :image
      
      t.references :user

      t.timestamps
    end
  end
end
