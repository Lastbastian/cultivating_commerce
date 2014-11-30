# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


v1 = User.create(first_name:'Chris', last_name:'Bastian', user_name:'chrisb', email:'peacethrubeats@gmail.com',address_line_1:'277A Duncan st.', zipcode:'94131', about:'', phone:'510-717-7373', private_contact: true, user_img:'', user_img:'',encrypted_password:'')
v2 = User.create(first_name:'Osman', last_name:'Afridi', user_name:'osmana', email: 'osmanisalso@gmail.com', address_line_1:'', zipcode:'', about:'', phone:'(510) 447-3200', private_contact: true, user_img:'', user_img:'',encrypted_password:'')
v3 = User.create(first_name:'Marlon', last_name:'Frausto', user_name:'marlonf', email:'marlonjfrausto@gmail.com',  address_line_1:'', zipcode:'', about:'', phone:'(619) 373-6451', private_contact: true, user_img:'', user_img:'',encrypted_password:'')
v4 = User.create(first_name:'Chritine', last_name:'Vallaure', user_name:'christinev', email: 'christinevallaure@gmail.com',address_line_1:'', zipcode:'', about:'', phone:'555-555-5555', private_contact: true, user_img:'',encrypted_password:'')

10.times do
  User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, user_name:'christinev', email: Faker::Internet.email, address_line_1: Faker::Address.street_name, zipcode: Faker::Address.zip_code, about: Faker::Lorem.paragraph, phone:Faker::PhoneNumber.phone_number, private_contact: false, user_img: Faker::Avatar.image,encrypted_password:'')
end

Listing.create(title:'Eggs',description:'Eggs from my city chickens',desired:'apple',quantity:'3 dozen',image:'',active:true,user_id:'1')
Listing.create(title:'Oranges',description:'From my two orange trees. Large size.',desired:'Lemons',quantity:'3 dozen',image:'',active:true,user_id:'1')
Listing.create(title:'Meyer Lemons',description:'So many lemons for trade.',desired:'Avocado',quantity:'100',image:'',active:true,user_id:'2')
Listing.create(title:'Persimmons',description:'From my tree',desired:'Eggs',quantity:'30',image:'',active:true,user_id:'3')
Listing.create(title:'Heirloom Tomatoes',description:'I have as many as I need. The rest are for trade.',desired:'Eggs',quantity:'50',image:'',active:true,user_id:'3')
Listing.create(title:'Vine Tomatoes',description:'Extra large. Extra tasty.',desired:'Avocado',quantity:'20',image:'',active:true,user_id:'3')
Listing.create(title:'Honey',description:'I have a small behive up north and I bring back honey to trade.',desired:'Oranges',quantity:'30 jars',image:'',active:true,user_id:'4')
Listing.create(title:'Avocados',description:'Haas avocados',desired:'Eggs',quantity:'40',image:'',active:true,user_id:'4')


Item.create(kind:'',category:'', listing_id:'')

e1 = Event.create(address_line_1:'590 Dolores St', city: 'San Francisco', zipcode:'94110', date:'12/13/14', time:'9am - 1pm',title:'Delores Park exchange', description:'', image:'', user_id:'1')
e2 = Event.create(address_line_1:'1089 Fulton St', city: 'San Francisco', zipcode:'94117', date:'12/20/14', time:'9am - 1pm',title:'Alamo Square Park exchange', description:'I will be setting up a table and canopy.  Join in if you want.', image:'', user_id:'1')
e3 = Event.create(address_line_1:'2490 Folsom St', city: 'San Francisco', zipcode:'94110', date:'12/6/14', time:'1pm',title:'Jose Coronado Playground exchange', description:'I can meet here at this time.', image:'', user_id:'2')
e4 = Event.create(address_line_1:'2056 Sacramento St', city: 'San Francisco', zipcode:'94109', date:'12/13/14', time:'10am',title:'Lafayette Park exchange', description:'I will setup a table by the tennis courts.', image:'', user_id:'2')
e5 = Event.create(address_line_1:'333 Post St ', city: 'San Francisco', zipcode:'94108', date:'12/14/14', time:'11am',title:'Union Square exchange', description:'I have a table and will be setup by', image:'', user_id:'3')
e6 = Event.create(address_line_1:'320 Dolores St', city: 'San Francisco', zipcode:'94110', date:'12/20/14', time:'9am',title:'Mission Delores exchange', description:'My house is nearby and I will be in front of the church for a couple hours on Saturday.', image:'', user_id:'3')
e6 = Event.create(address_line_1:'585 Duboce Ave', city: 'San Francisco', zipcode:'94117', date:'12/27/14', time:'1pm',title:'Duboce Park exchange', description:'I will be setup right by the MUNI on/off ramp.', image:'', user_id:'4')

EventsHost.create(host_id:'1', event_id:'1')
EventsHost.create(host_id:'1', event_id:'2')
EventsHost.create(host_id:'2', event_id:'3')
EventsHost.create(host_id:'2', event_id:'4')
EventsHost.create(host_id:'3', event_id:'5')
EventsHost.create(host_id:'4', event_id:'6')

EventsParticipant.create(participant_id:'1', event_id:'4')
EventsParticipant.create(participant_id:'2', event_id:'3')
EventsParticipant.create(participant_id:'3', event_id:'3')
EventsParticipant.create(participant_id:'4', event_id:'1')
EventsParticipant.create(participant_id:'5', event_id:'1')
EventsParticipant.create(participant_id:'6', event_id:'1')
EventsParticipant.create(participant_id:'5', event_id:'2')
EventsParticipant.create(participant_id:'5', event_id:'3')
EventsParticipant.create(participant_id:'7', event_id:'4')
EventsParticipant.create(participant_id:'8', event_id:'4')
EventsParticipant.create(participant_id:'9', event_id:'4')
EventsParticipant.create(participant_id:'5', event_id:'5')
EventsParticipant.create(participant_id:'10', event_id:'6')
EventsParticipant.create(participant_id:'11', event_id:'6')