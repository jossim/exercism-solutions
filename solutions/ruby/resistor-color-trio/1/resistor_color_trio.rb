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
    @colors = colors
  end

  def label
    @colors.each { |color| raise ArgumentError unless COLORS[color] }
    "Resistor value: #{resistor_value}"
  end

  def resistor_value
    value = numeric_value.to_s

    case value.length
    when 1..3
      "#{value} ohms"
    when 4
      "#{value[0]} kiloohms"
    when 5
      "#{value[0, 2]} kiloohms"
    when 6
      "#{value[0, 3]} kiloohms"
    end
  end

  def numeric_value
    (COLORS[@colors[0]] * 10 + COLORS[@colors[1]]) * 10**COLORS[@colors[2]]
  end
end
