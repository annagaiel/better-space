json.array! @rented_spaces do |rented_space|
  json.partial! 'bookings', booking: rented_space
  json.host "#{rented_space.space_listing.user.full_name}"
  json.space_listing_title "#{rented_space.space_listing.title}"
end
