class Listing < ActiveRecord::Base
  has_one :item
  belongs_to :user
  before_save :format

  def format
    self.title.downcase!
  end

  def self.search(query)
    query.downcase!
    where("title like ?", "%#{query}%")
  end
end
