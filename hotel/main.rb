require "csv"
require "./hotels"
require "./hotel_converter"
require "./null_hotel"
require "./formatter"

hotels = []
hotels = HotelConverter.new("hotels.csv").convert

print "What Property? > "
query = gets.chomp

selected_hotel = hotels.find{|h| h.name == query} || NullHotel.new
puts selected_hotel

