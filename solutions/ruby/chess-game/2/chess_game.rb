module Chess
  RANKS = 1..8
  FILES = 'A'..'H'

  def self.valid_square?(rank, file)
    RANKS.include?(rank.to_i) && FILES.include?(file)
  end

  def self.nick_name(first_name, last_name)
    "#{first_name[0..1]}#{last_name[-2..]}".upcase
  end

  def self.move_message(first_name, last_name, square)
    n_name = nick_name(first_name, last_name)
    square_parts = square.split('').reverse

    if valid_square?(*square_parts)
      "#{n_name} moved to #{square}"
    else
      "#{n_name} attempted to move to #{square}, but that is not a valid square"
    end
  end
end
