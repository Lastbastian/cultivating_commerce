class Transaction < ActiveRecord::Base
  belongs_to :buyer, class: "User"
  belongs_to :seller, class: "User"
  has_many :items
end
