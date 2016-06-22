User.create!([
  {
    first_name: "Angie",
    last_name: "Lao",
    email: "demo.angielao@gmail.com",
    phone_number: Faker::PhoneNumber.cell_phone,
    description: Faker::StarWars.quote,
    password: "password",
    password_confirmation: "password"
  },
  {
    first_name: "Betty",
    last_name: "go",
    email: "demo.bettygo@gmail.com",
    phone_number: Faker::PhoneNumber.cell_phone,
    description: Faker::StarWars.quote,
    password: "password",
    password_confirmation: "password"
  },
  {
    first_name: "Carmen",
    last_name: "Apo",
    email: "demo.carmenapo@gmail.com",
    phone_number: Faker::PhoneNumber.cell_phone,
    description: Faker::StarWars.quote,
    password: "password",
    password_confirmation: "password"
  },
  {
    first_name: "Daisy",
    last_name: "Rozal",
    email: "demo.daisyrozal@gmail.com",
    phone_number: Faker::PhoneNumber.cell_phone,
    description: Faker::StarWars.quote,
    password: "password",
    password_confirmation: "password"
  },
  {
    first_name: "Ethel",
    last_name: "Moore",
    email: "demo.ethelmoore@gmail.com",
    phone_number: Faker::PhoneNumber.cell_phone,
    description: Faker::StarWars.quote,
    password: "password",
    password_confirmation: "password"
  },
  {
    first_name: "Fita",
    last_name: "Gong",
    email: "demo.fitagong@gmail.com",
    phone_number: Faker::PhoneNumber.cell_phone,
    description: Faker::StarWars.quote,
    password: "password",
    password_confirmation: "password"
  },
  {
    first_name: "Artemio",
    last_name: "Medina",
    email: "demo.artemiomedina@gmail.com",
    phone_number: Faker::PhoneNumber.cell_phone,
    description: Faker::StarWars.quote,
    password: "password",
    password_confirmation: "password"
  },
  {
    first_name: "Bobby",
    last_name: "Stuwart",
    email: "demo.bobbystuwart@gmail.com",
    phone_number: Faker::PhoneNumber.cell_phone,
    description: Faker::StarWars.quote,
    password: "password",
    password_confirmation: "password"
  },
  {
    first_name: "Charlie",
    last_name: "Chen",
    email: "demo.charliechen@gmail.com",
    phone_number: Faker::PhoneNumber.cell_phone,
    description: Faker::StarWars.quote,
    password: "password",
    password_confirmation: "password"
  },
  {
    first_name: "David",
    last_name: "Lockheart",
    email: "demo.davidlockheart@gmail.com",
    phone_number: Faker::PhoneNumber.cell_phone,
    description: Faker::StarWars.quote,
    password: "password",
    password_confirmation: "password"
  },
  {
    first_name: "Frank",
    last_name: "Smart",
    email: "demo.franksmart@gmail.com",
    phone_number: Faker::PhoneNumber.cell_phone,
    description: Faker::StarWars.quote,
    password: "password",
    password_confirmation: "password"
  },
  {
    first_name: "Elpino",
    last_name: "Castro",
    email: "demo.elpinocastro@gmail.com",
    phone_number: Faker::PhoneNumber.cell_phone,
    description: Faker::StarWars.quote,
    password: "password",
    password_confirmation: "password"
  }
  ])

  # ======================= create space listings  ===============================

  SpaceListing.create!([
    {
      user_id: rand(1..12),
      title: Faker::Book.title,
      description: Faker::Hipster.sentence(6),
      street_number: "10",
      route: "Hipster Street",
      city: "San Francisco",
      state: "CA",
      zip_code: "94108",
      country: "United States",
      space_type: "House",
      environment_type: "Indoor",
      day_rent: rand(2..7),
      size_width: 10,
      size_height: 10,
      size_length: 10,
      latitude: 37.781975,
      longitude: -122.4102571,
      images_attributes: [
        { image_url: Pathname.new("vendor/assets/img/space01.jpeg").open },
        { image_url:  Pathname.new("vendor/assets/img/space02.jpeg").open }
      ]
    },
    {
      user_id: rand(1..12),
      title: Faker::Book.title,
      description: Faker::Hipster.sentence(6),
      street_number: "10",
      route: "Hipster Street",
      city: "San Francisco",
      state: "CA",
      zip_code: "94108",
      country: "United States",
      space_type: "Garage",
      environment_type: "Outdoor",
      day_rent: rand(2..7),
      size_width: 10,
      size_height: 10,
      size_length: 10,
      latitude: 37.760768,
      longitude: -122.387975,
      images_attributes: [
        { image_url: Pathname.new("vendor/assets/img/space03.jpeg").open }
      ]
    },
    {
      user_id: rand(1..12),
      title: Faker::Book.title,
      description: Faker::Hipster.sentence(6),
      street_number: "10",
      route: "Hipster Street",
      city: "San Francisco",
      state: "CA",
      zip_code: "94108",
      country: "United States",
      space_type: "Garage",
      environment_type: "Outdoor",
      day_rent: rand(2..7),
      size_width: 10,
      size_height: 10,
      size_length: 10,
      latitude: 37.7885853,
      longitude: -122.4012726,
      images_attributes: [
        { image_url:  Pathname.new("vendor/assets/img/space04.jpeg").open }
      ]
    },
    {
      user_id: rand(1..12),
      title: Faker::Book.title,
      description: Faker::Hipster.sentence(6),
      street_number: "10",
      route: "Hipster Street",
      city: "San Francisco",
      state: "CA",
      zip_code: "94108",
      country: "United States",
      space_type: "House",
      environment_type: "Indoor",
      day_rent: rand(2..7),
      size_width: 10,
      size_height: 10,
      size_length: 10,
      latitude: 37.7785036,
      longitude: -122.3919956,
      images_attributes: [
        { image_url: Pathname.new("vendor/assets/img/space05.jpeg").open },
        { image_url:  Pathname.new("vendor/assets/img/space06.jpeg").open }
      ]
    },
    {
      user_id: rand(1..12),
      title: Faker::Book.title,
      description: Faker::Hipster.sentence(6),
      street_number: "10",
      route: "Hipster Street",
      city: "San Francisco",
      state: "CA",
      zip_code: "94108",
      country: "United States",
      space_type: "House",
      environment_type: "Indoor",
      day_rent: rand(2..7),
      size_width: 10,
      size_height: 10,
      size_length: 10,
      latitude: 37.7357388,
      longitude: -122.4314897,
      images_attributes: [
        { image_url: Pathname.new("vendor/assets/img/space07.jpeg").open },
        { image_url:  Pathname.new("vendor/assets/img/space08.jpeg").open }
      ]
    },
    {
      user_id: rand(1..12),
      title: Faker::Book.title,
      description: Faker::Hipster.sentence(6),
      street_number: "10",
      route: "Hipster Street",
      city: "San Francisco",
      state: "CA",
      zip_code: "94108",
      country: "United States",
      space_type: "House",
      environment_type: "Indoor",
      day_rent: rand(2..7),
      size_width: 10,
      size_height: 10,
      size_length: 10,
      latitude: 37.7915721,
      longitude: -122.4073974,
      images_attributes: [
        { image_url: Pathname.new("vendor/assets/img/space09.jpeg").open },
        { image_url:  Pathname.new("vendor/assets/img/space10.jpeg").open }
      ]
    },
    {
      user_id: rand(1..12),
      title: Faker::Book.title,
      description: Faker::Hipster.sentence(6),
      street_number: "10",
      route: "Hipster Street",
      city: "San Francisco",
      state: "CA",
      zip_code: "94108",
      country: "United States",
      space_type: "Garage",
      environment_type: "Outdoor",
      day_rent: rand(2..7),
      size_width: 10,
      size_height: 10,
      size_length: 10,
      latitude: 37.785795,
      longitude: -122.399874,
      images_attributes: [
        { image_url: Pathname.new("vendor/assets/img/space11.jpeg").open }
      ]
    },
    {
      user_id: rand(1..12),
      title: Faker::Book.title,
      description: Faker::Hipster.sentence(6),
      street_number: "10",
      route: "Hipster Street",
      city: "San Francisco",
      state: "CA",
      zip_code: "94108",
      country: "United States",
      space_type: "House",
      environment_type: "Indoor",
      day_rent: rand(2..7),
      size_width: 10,
      size_height: 10,
      size_length: 10,
      latitude: 37.7838457,
      longitude: -122.430026,
      images_attributes: [
        { image_url:  Pathname.new("vendor/assets/img/space12.jpg").open }
      ]
    },
    {
      user_id: rand(1..12),
      title: Faker::Book.title,
      description: Faker::Hipster.sentence(6),
      street_number: "10",
      route: "Hipster Street",
      city: "San Francisco",
      state: "CA",
      zip_code: "94108",
      country: "United States",
      space_type: "House",
      environment_type: "Indoor",
      day_rent: rand(2..7),
      size_width: 10,
      size_height: 10,
      size_length: 10,
      latitude: 37.7869523,
      longitude: -122.4079349,
      images_attributes: [
        { image_url: Pathname.new("vendor/assets/img/space13.jpeg").open },
        { image_url:  Pathname.new("vendor/assets/img/space14.jpeg").open }
      ]
    },
    {
      user_id: rand(1..12),
      title: Faker::Book.title,
      description: Faker::Hipster.sentence(6),
      street_number: "10",
      route: "Hipster Street",
      city: "San Francisco",
      state: "CA",
      zip_code: "94108",
      country: "United States",
      space_type: "House",
      environment_type: "Indoor",
      day_rent: rand(2..7),
      size_width: 10,
      size_height: 10,
      size_length: 10,
      latitude: 37.7454026,
      longitude: -122.4197413,
      images_attributes: [
        { image_url: Pathname.new("vendor/assets/img/space15.jpeg").open },
        { image_url:  Pathname.new("vendor/assets/img/space16.jpeg").open }
      ]
    },
    {
      user_id: rand(1..12),
      title: Faker::Book.title,
      description: Faker::Hipster.sentence(6),
      street_number: "10",
      route: "Hipster Street",
      city: "San Francisco",
      state: "CA",
      zip_code: "94108",
      country: "United States",
      space_type: "House",
      environment_type: "Indoor",
      day_rent: rand(2..7),
      size_width: 10,
      size_height: 10,
      size_length: 10,
      latitude: 37.779114,
      longitude: -122.4038185,
      images_attributes: [
        { image_url: Pathname.new("vendor/assets/img/space17.jpeg").open },
        { image_url:  Pathname.new("vendor/assets/img/space18.jpeg").open }
      ]
    },
    {
      user_id: rand(1..12),
      title: Faker::Book.title,
      description: Faker::Hipster.sentence(6),
      street_number: "10",
      route: "Hipster Street",
      city: "San Francisco",
      state: "CA",
      zip_code: "94108",
      country: "United States",
      space_type: "House",
      environment_type: "Indoor",
      day_rent: rand(2..7),
      size_width: 10,
      size_height: 10,
      size_length: 10,
      latitude: 37.805701,
      longitude: -122.438279,
      images_attributes: [
        { image_url: Pathname.new("vendor/assets/img/space19.jpeg").open },
        { image_url:  Pathname.new("vendor/assets/img/space20.jpeg").open }
      ]
    },
    {
      user_id: rand(1..12),
      title: Faker::Book.title,
      description: Faker::Hipster.sentence(6),
      street_number: "10",
      route: "Hipster Street",
      city: "San Francisco",
      state: "CA",
      zip_code: "94108",
      country: "United States",
      space_type: "House",
      environment_type: "Indoor",
      day_rent: rand(2..7),
      size_width: 10,
      size_height: 10,
      size_length: 10,
      latitude: 37.8048914,
      longitude: -122.4176655,
      images_attributes: [
        { image_url: Pathname.new("vendor/assets/img/space21.jpeg").open },
        { image_url:  Pathname.new("vendor/assets/img/space22.jpeg").open }
      ]
    },
    {
      user_id: rand(1..12),
      title: Faker::Book.title,
      description: Faker::Hipster.sentence(6),
      street_number: "10",
      route: "Hipster Street",
      city: "San Francisco",
      state: "CA",
      zip_code: "94108",
      country: "United States",
      space_type: "House",
      environment_type: "Indoor",
      day_rent: rand(2..7),
      size_width: 10,
      size_height: 10,
      size_length: 10,
      latitude: 37.7881762,
      longitude: -122.3925217,
      images_attributes: [
        { image_url: Pathname.new("vendor/assets/img/space23.jpeg").open },
        { image_url:  Pathname.new("vendor/assets/img/space24.jpeg").open }
      ]
    },
    {
      user_id: rand(1..12),
      title: Faker::Book.title,
      description: Faker::Hipster.sentence(6),
      street_number: "10",
      route: "Hipster Street",
      city: "San Francisco",
      state: "CA",
      zip_code: "94108",
      country: "United States",
      space_type: "House",
      environment_type: "Indoor",
      day_rent: rand(2..7),
      size_width: 10,
      size_height: 10,
      size_length: 10,
      latitude: 37.7909427,
      longitude: -122.4084994,
      images_attributes: [
        { image_url: Pathname.new("vendor/assets/img/space25.jpeg").open },
        { image_url:  Pathname.new("vendor/assets/img/space26.jpg").open }
      ]
    },
    {
      user_id: rand(1..12),
      title: Faker::Book.title,
      description: Faker::Hipster.sentence(6),
      street_number: "10",
      route: "Hipster Street",
      city: "San Francisco",
      state: "CA",
      zip_code: "94108",
      country: "United States",
      space_type: "House",
      environment_type: "Indoor",
      day_rent: rand(2..7),
      size_width: 10,
      size_height: 10,
      size_length: 10,
      latitude: 37.7454026,
      longitude: -122.4197413,
      images_attributes: [
        { image_url: Pathname.new("vendor/assets/img/space27.jpg").open }
      ]
    },
    {
      user_id: rand(1..12),
      title: Faker::Book.title,
      description: Faker::Hipster.sentence(6),
      street_number: "10",
      route: "Hipster Street",
      city: "San Francisco",
      state: "CA",
      zip_code: "94108",
      country: "United States",
      space_type: "House",
      environment_type: "Indoor",
      day_rent: rand(2..7),
      size_width: 10,
      size_height: 10,
      size_length: 10,
      latitude: 37.7875474,
      longitude: -122.4049517,
      images_attributes: [
        { image_url:  Pathname.new("vendor/assets/img/space28.jpg").open },
        { image_url: Pathname.new("vendor/assets/img/space29.jpg").open }
      ]
    },
    {
      user_id: rand(1..12),
      title: Faker::Book.title,
      description: Faker::Hipster.sentence(6),
      street_number: "10",
      route: "Hipster Street",
      city: "San Francisco",
      state: "CA",
      zip_code: "94108",
      country: "United States",
      space_type: "House",
      environment_type: "Indoor",
      day_rent: rand(2..7),
      size_width: 10,
      size_height: 10,
      size_length: 10,
      latitude: 37.7875474,
      longitude: -122.4049517,
      images_attributes: [
        { image_url:  Pathname.new("vendor/assets/img/space30.jpg").open }
      ]
    },
    {
      user_id: rand(1..12),
      title: Faker::Book.title,
      description: Faker::Hipster.sentence(6),
      street_number: "10",
      route: "Hipster Street",
      city: "San Francisco",
      state: "CA",
      zip_code: "94108",
      country: "United States",
      space_type: "House",
      environment_type: "Indoor",
      day_rent: rand(2..7),
      size_width: 10,
      size_height: 10,
      size_length: 10,
      latitude: 37.7875474,
      longitude: -122.4049517,
      images_attributes: [
        { image_url: Pathname.new("vendor/assets/img/space31.jpg").open }
      ]
    }
    ])
    # ======================= create bookings  =====================================

    current_year = Time.new.year
    Booking.create!([
      {
        space_listing_id: 1,
        user_id: 1,
        approved_status: true,
        move_in: DateTime.new(current_year,7,1,17),
        move_out: DateTime.new(current_year,7,1,19),
        total: 100,
        price: 100
      },
      {
        space_listing_id: 2,
        user_id: 2,
        approved_status: true,
        move_in: DateTime.new(current_year,7,3,17),
        move_out: DateTime.new(current_year,7,3,19),
        total: 100,
        price: 100
      },
      {
        space_listing_id: 3,
        user_id: 4,
        approved_status: true,
        move_in: DateTime.new(current_year,7,4,17),
        move_out: DateTime.new(current_year,7,4,19),
        total: 100,
        price: 100
      },
      {
        space_listing_id: 1,
        user_id: 3,
        approved_status: true,
        move_in: DateTime.new(current_year,7,7,17),
        move_out: DateTime.new(current_year,7,8,19),
        total: 100,
        price: 100
      },
      {
        space_listing_id: 2,
        user_id: 3,
        approved_status: true,
        move_in: DateTime.new(current_year,7,9,17),
        move_out: DateTime.new(current_year,7,11,19),
        total: 100,
        price: 100
      },
      {
        space_listing_id: 7,
        user_id: 5,
        approved_status: true,
        move_in: DateTime.new(current_year,7,1,17),
        move_out: DateTime.new(current_year,7,1,19),
        total: 100,
        price: 100
      },
      {
        space_listing_id: 8,
        user_id: 6,
        approved_status: true,
        move_in: DateTime.new(current_year,7,3,17),
        move_out: DateTime.new(current_year,7,3,19),
        total: 100,
        price: 100
      },
      {
        space_listing_id: 9,
        user_id: 7,
        approved_status: true,
        move_in: DateTime.new(current_year,7,4,17),
        move_out: DateTime.new(current_year,7,4,19),
        total: 100,
        price: 100
      },
      {
        space_listing_id: 10,
        user_id: 8,
        approved_status: true,
        move_in: DateTime.new(current_year,7,7,17),
        move_out: DateTime.new(current_year,7,8,19),
        total: 100,
        price: 100
      },
      {
        space_listing_id: 11,
        user_id: 9,
        approved_status: true,
        move_in: DateTime.new(current_year,7,9,17),
        move_out: DateTime.new(current_year,7,11,19),
        total: 100,
        price: 100
      }
      ])
      # ======================= create reviews =======================================
      Review.create!([
        {
          space_listing_id: 1,
          user_id: 1,
          content: Faker::Hipster.sentence,
          score: rand(1..5)
        },
        {
          space_listing_id: 2,
          user_id: 2,
          content: Faker::Hipster.sentence,
          score: rand(1..5)
        },
        {
          space_listing_id: 3,
          user_id: 4,
          content: Faker::Hipster.sentence,
          score: rand(1..5)
        },
        {
          space_listing_id: 1,
          user_id: 3,
          content: Faker::Hipster.sentence,
          score: rand(1..5)
        },
        {
          space_listing_id: 2,
          user_id: 3,
          content: Faker::Hipster.sentence,
          score: rand(1..5)
        },
        {
          space_listing_id: 4,
          user_id: 1,
          content: Faker::Hipster.sentence,
          score: rand(1..5)
        },
        {
          space_listing_id: 5,
          user_id: 2,
          content: Faker::Hipster.sentence,
          score: rand(1..5)
        },
        {
          space_listing_id: 6,
          user_id: 4,
          content: Faker::Hipster.sentence,
          score: rand(1..5)
        },
        {
          space_listing_id: 7,
          user_id: 3,
          content: Faker::Hipster.sentence,
          score: rand(1..5)
        },
        {
          space_listing_id: 8,
          user_id: 3,
          content: Faker::Hipster.sentence,
          score: rand(1..5)
        },
        ])
