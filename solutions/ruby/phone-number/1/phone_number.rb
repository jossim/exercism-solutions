module PhoneNumber
  def self.clean(phone_number)
    stripped_number = phone_number.gsub(/\D/, '')

    return if stripped_number.length < 10
    return if stripped_number.length > 11
    return if stripped_number.length == 11 && stripped_number[0] != '1'

    stripped_number = stripped_number[1..-1] if stripped_number[0] == '1' && stripped_number.length == 11

    return if stripped_number[0].to_i < 2 || stripped_number[3].to_i < 2

    stripped_number
  end
end
