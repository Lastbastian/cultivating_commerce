class Listing < ActiveRecord::Base
  has_one :item
  belongs_to :user

  def self.search(query)
    where("title like ?", "%#{query}%")
  end
end
