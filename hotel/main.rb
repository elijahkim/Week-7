require "csv"
require "./hotels"
require "./hotel_converter"

hotels = []
hotels = HotelConverter.new("hotels.csv").convert
hotels.each do |hotel|
  puts hotel.hotel
end
