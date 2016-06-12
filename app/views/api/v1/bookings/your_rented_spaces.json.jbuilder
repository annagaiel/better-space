json.array! @rented_spaces do |rented_space|
  json.partial! 'bookings', booking: rented_space
  json.host "#{rented_space.user.full_name}"
end
