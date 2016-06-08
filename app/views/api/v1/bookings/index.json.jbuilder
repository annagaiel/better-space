json.array! @bookings do |booking|
  json.partial! 'bookings', booking: booking
end
