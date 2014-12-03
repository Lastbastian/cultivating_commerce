ZIP_CODE_REG_EX = %r{\d{5}(-\d{4})?}

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :listings

  has_many :events_participants, foreign_key: :participant_id
  has_many :events_hosts, foreign_key: :host_id

  has_many :events, through: :events_participants
  has_many :hosted_events, through: :events_hosts, source: :event

	validates :first_name, 
          :presence => {:message => "Please enter your first name." }
	validates :last_name, 
					:presence => {:message => "Please enter your last name."}
	validates	:username,
					:uniqueness => {:message => "Username is already taken. Please choose another."},
					:presence => {:message => "Please choose a username."}
	validates :email, 
						:uniqueness => {:message => "Please enter a unique email"},
						:presence => {:message => "Please enter your email address to proceed."}

	validates :address_line_1,
						:presence => {:message => "Please enter your address to create a profile."}
  validates :city,
					  :presence => {:message => "Please enter your city"}
  validates :state,
					  :presence => {:message => "Please enter a state"}
  validates :zipcode,
					  :presence => {:message => "Please enter a valid five digit zip code"}


	validates :shipping_zip, :presence => true, :format => { :with => ZIP_CODE_REG_EX }

end

