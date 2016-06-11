  # This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create!([
  {
    first_name: "Brant",
    last_name: "Wellman",
    email: "brant@email.com",
    password: "password",
    password_confirmation: "password"
  },
  { first_name: "Penney",
    last_name: "Gadget",
    email: "penney@email.com",
    password: "password",
    password_confirmation: "password"
  },
  { first_name: "Jamie",
    last_name: "Crockett",
    email: "jamie@email.com",
    password: "password",
    password_confirmation: "password"
  }
  ])

SpaceListing.create!([
  {
    user_id: 1,
    title: "Hipster Vest",
    description: "Hipster's favorite spot",
    street_number: "10",
    route: "Hipster Street",
    city: "San Francisco",
    state: "CA",
    zip_code: "94108",
    country: "United States",
    space_type: "Garage",
    environment_type: "Outdoor",
    monthly_rent: 100,
    day_rent: 3,
    size_width: 10,
    size_height: 10,
    size_length: 10,
    latitude: 37.7875474,
    longitude: -122.4049517
  },
  {
    user_id: 1,
    title: "Tactical Vest",
    description: "Pockets!!!",
    street_number: "10",
    route: "Vest Street",
    city: "San Francisco",
    state: "CA",
    zip_code: "94108",
    country: "United States",
    space_type: "Garage",
    environment_type: "Outdoor",
    monthly_rent: 100,
    day_rent: 3,
    size_width: 10,
    size_height: 10,
    size_length: 10,
    latitude: 47.7875474,
    longitude: -122.4049517
  },
  {
    user_id: 1,
    title: "Good village",
    description: "Good village",
    street_number: "10",
    route: "Good Street",
    city: "San Francisco",
    state: "CA",
    zip_code: "94108",
    country: "United States",
    space_type: "Garage",
    environment_type: "Outdoor",
    monthly_rent: 100,
    day_rent: 3,
    size_width: 10,
    size_height: 10,
    size_length: 10,
    latitude: 67.7875474,
    longitude: -122.4049517
  }
  ])

Booking.create!([
  {
    space_listing_id: 1,
    user_id: 2,
    approved_status: true,
    move_in: 2016-07-01 00:00:00,
    move_out: 2016-07-24 00:00:00,
    total: 100,
    price: 100
  },
  {
    space_listing_id: 2,
    user_id: 2,
    approved_status: true,
    move_in: 2016-07-01 00:00:00,
    move_out: 2016-07-24 00:00:00,
    total: 100,
    price: 100
  },
  {
    space_listing_id: 3,
    user_id: 2,
    approved_status: true,
    move_in: 2016-07-01 00:00:00,
    move_out: 2016-07-24 00:00:00,
    total: 100,
    price: 100
  },
  {
    space_listing_id: 1,
    user_id: 3,
    approved_status: true,
    move_in: 2016-08-01 00:00:00,
    move_out: 2016-08-24 00:00:00,
    total: 100,
    price: 100
  },
  {
    space_listing_id: 2,
    user_id: 3,
    approved_status: true,
    move_in: 2016-09-01 00:00:00,
    move_out: 2016-09-24 00:00:00,
    total: 100,
    price: 100
  },
  ])
