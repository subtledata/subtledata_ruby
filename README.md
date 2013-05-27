SubtleData Ruby Library
=======================

Ruby Library for SubtleData's SubtleJSON API

Install
=======

    gem install subtledata

Example
=======

    require 'subtledata'

    key = 'S0YrNTJY'

    puts SubtleData::Standard::Locations.get_all_locations(key, false).inspect
    puts SubtleData::Standard::Locations.get_location(959, key, false).inspect


## API Docs : 

### LOCATIONS :

#### Methods Available on LocationsAPI (SubtleData::Standard::Locations)

#### Get All Locations
`get_all_locations(key,cache)`

### Get Nearby Locations
`get_locations_near(key,use_cache,latitude,longitude,radius,opts={})`

### Get Location Details By ID
`get_location(location_id, key, cache)`

### Get Menu Items for a Location
`get_location_menu(location_id, key, cache, option)`

### Get the Employees for a Location
`get_location_employees(location_id,api_key,manager_id,revenue_center_id,opts={})`

### Get the List of Tables at a Location
`get_table_list(location_id,api_key,use_cache,opts={})`

### Get the Tickets at a Location 
`get_tickets(location_id,api_key,condensed,opts={})`

### Creation of a Ticket
`create_ticket(location_id,api_key,ticket_type,body,opts={})`

### Get the Open Tabs
`get_tabs (location_id,api_key,opts={})`

### Get the Information of a table at a location
`get_table (location_id,table_id,api_key,opts={})`

### Get the Information of a Ticket
`get_ticket (location_id,ticket_id,api_key,user_id,opts={})`

### Void a Ticket
`void_ticket(location_id,ticket_id,api_key,user_id,opts={})`

### Get the Ticket with POS ID 
`get_ticket_with_p_o_s__i_d(location_id,pos_ticket_id,api_key,user_id,opts={})`

### Submit the Order with staged Items
`submit_order(location_id,ticket_id,user_id,api_key,opts={})`

### Adding Items to the Order
`add_items_to_order(location_id,ticket_id,user_id,api_key,body,opts={})`

### Get the Users Connected to a ticket
`get_users_connected_to_ticket(location_id,ticket_id,api_key,opts={})`

### Connect a user to a Ticket
`connect_user_to_ticket(location_id,ticket_id,api_key,body,opts={})`

### Discount on a Ticket
`discount_ticket(location_id,ticket_id,api_key,body,opts={})`

### Adding Payment to a Ticket
`add_payment_to_ticket(location_id,ticket_id,api_key,body,opts={})`

### Adding External Payment to a Ticket
`add_external_payment_to_ticket(location_id,ticket_id,api_key,body,opts={})`


### USERS :

#### Methods Available on UsersAPI (SubtleData::Standard::Users)

### Creating a User
`create_user(api_key,body,opts={})`

### Get the Details of a User
`get_user(user_id,api_key,use_cache,opts={})`

### Delete a User
`delete_user(user_id,api_key,opts={})`

### Authenticate a User
`auth_user(api_key,body,opts={})`

### Search users by their username
`search_users_by_name(user_name,api_key,use_cache,opts={})`

### Get the user cards
`get_users_cards(user_id,api_key,opts={})`

### Create a card for a user
`create_card_for_user(user_id,api_key,body,opts={})`

### Delete a card for a user
`delete_user_credit_card(user_id,card_id,api_key,opts={})`

### GENERAL :

#### General Methods (SubtleData::Standard::General)

### Get all the States
`get_all_states(api_key,use_cache,opts={})`

### Get all the Countries
`get_all_countries( api_key,use_cache,opts={})`
