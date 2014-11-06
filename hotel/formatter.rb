class Formatter
  attr_reader :data

  def initialize(data)
    @data = data
  end

  def clean
    data.gsub(/[\D]+/, "")
  end

  def format_number
    number = self.clean
    "(#{number[0..2]}) #{number[3..5]}-#{number[6..9]}"
  end
end
