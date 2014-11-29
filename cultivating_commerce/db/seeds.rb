# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.create(first_name:'Chris', last_name:'Bastian', user_name:'chrisb', email:'peacethrubeats@gmail.com',address_line_1:'277A Duncan st.', zipcode:'94131', about:'', phone:'555-555-5555', private_contact:'true')
User.create(first_name:'Osman', last_name:'Afridi', user_name:'osmana', email: 'osmanisalso@gmail.com', address_line_1:'', zipcode:'', about:'', phone:'(510) 447-3200', private_contact:'true')
User.create(first_name:'Marlon', last_name:'Frausto', email:'marlonjfrausto@gmail.com', user_name:'marlonf', address_line_1:'', zipcode:'', about:'', phone:'(619) 373-6451', private_contact:'true')
User.create(first_name:'Chritine', last_name:'Bastian', email: 'christinevallaure@gmail.com',user_name:'christinev', address_line_1:'', zipcode:'', about:'', phone:'555-555-5555', private_contact:'true')

Listing.create(title:'',description:'',desired:'',quantitiy:'',image:'',active:'',user_id:'')

Item.create(kind:'',category:'')

Event.create(address_line_1:'', zipcode:'', date:'', time:'',title:'', description:'', image:'')

