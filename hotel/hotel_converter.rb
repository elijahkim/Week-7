class HotelConverter
  attr_accessor :hotels

  def initialize(csv)
    @my_csv = csv
  end

  def convert
    CSV.foreach(@my_csv, headers: :true).map do |row|
      Hotel.new(row)
    end
  end
end
