json.array! @space_listings do |space_listing|
  json.id space_listing.id
  json.title space_listing.title
  json.bookings do
    json.array! space_listing.bookings.each do |booking|
      json.partial! 'bookings', booking: booking
      json.renter "#{booking.user.first_name} #{booking.user.last_name}"
    end
  end
end
