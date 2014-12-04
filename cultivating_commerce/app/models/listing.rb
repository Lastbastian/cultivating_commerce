class Listing < ActiveRecord::Base
  belongs_to :item
  belongs_to :user
  before_save :format

  # validates :title,
  #           :presence => {:message => "Your listing requires a title."}
  # validates :description,
  #           :presence => {:message => "Your listing requires a description."}
  # validates :quantity,
  #           :presence => {:message => "Please enter the quantity available for exchange."}

  def format
    self.title.downcase!
  end

  def self.search(query)
    query.downcase!
    where("title like ?", "%#{query}%")
  end
end
