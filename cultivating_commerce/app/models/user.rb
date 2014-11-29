class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_one :listing
  has_many :meetups_participants
  has_many :meetups_hosts
  has_many :meetups, through: :meetups_participants, foreign_key: :participant_id
  has_many :hosted_meetups, through: :meetups_hosts, foreign_key: :host_id
  # belongs_to :meetup
end