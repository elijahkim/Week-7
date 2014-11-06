class NullHotel
  attr_reader :name

  def initialize
    @name = nil
  end

  def to_s
    "No Property Found"
  end
end
