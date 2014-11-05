require "csv"

class HotelConverter
  def initialize(csv)
    @my_csv = csv
    @rows = []
  end

  def convert
    CSV.foreach(@my_csv, :headers => true) do |row|
      puts row["Hotel"]
    end
  end
end

converter = HotelConverter.new("hotels.csv")
converter.convert
