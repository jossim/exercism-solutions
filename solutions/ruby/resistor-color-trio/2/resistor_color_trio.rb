class ResistorColorTrio
  COLORS = {
    'black' => 0,
    'brown' => 1,
    'red' => 2,
    'orange' => 3,
    'yellow' => 4,
    'green' => 5,
    'blue' => 6,
    'violet' => 7,
    'grey' => 8,
    'white' => 9
  }.freeze

  def initialize(colors)
    colors.each { |color| raise ArgumentError unless COLORS[color] }
    @colors = colors
  end

  def label
    "Resistor value: #{resistor_value}"
  end

  def resistor_value
    if numeric_value >= 1000
      "#{numeric_value / 1000} kiloohms"
    else
      "#{numeric_value} ohms"
    end
  end

  def numeric_value
    (COLORS[@colors[0]] * 10 + COLORS[@colors[1]]) * 10**COLORS[@colors[2]]
  end
end
