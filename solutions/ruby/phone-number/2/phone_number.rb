module PhoneNumber
  def self.clean(phone_number)
    phone_number.gsub(/\D/, '').sub(/^1/, '')[/^([2-9]\d{2})([2-9]\d{6})$/]
  end
end
