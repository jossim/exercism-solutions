module Port
  # TODO: define the 'IDENTIFIER' constant
  IDENTIFIER = :PALE

  def self.get_identifier(city)
    case city
    when 'Hamburg'
      :HAMB
    when 'Rome'
      :ROME
    when 'Kiel'
      :KIEL
    end
  end

  def self.get_terminal(ship_identifier)
    prefix = ship_identifier.to_s[0,3]

    if ['OIL', 'GAS'].include? prefix
      :A
    else
      :B
    end
  end
end
