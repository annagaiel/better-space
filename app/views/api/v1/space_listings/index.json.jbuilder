json.array! @space_listings do |space_listing|
  json.id space_listing.id
  json.title space_listing.title
  json.description space_listing.description
  json.address space_listing.address
  json.street_number space_listing.street_number
  json.route space_listing.route
  json.zip_code space_listing.zip_code
  json.city space_listing.city
  json.state space_listing.state
  json.country space_listing.country
  json.latitude space_listing.latitude
  json.longitude space_listing.longitude
  json.environment_type space_listing.environment_type
  json.user_id space_listing.user_id
  json.monthly_rent space_listing.monthly_rent
  json.day_rent space_listing.day_rent
  json.size_height space_listing.size_height
  json.size_length space_listing.size_length
end
