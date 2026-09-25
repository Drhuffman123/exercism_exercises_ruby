module Chess
  RANKS = Range.new(1, 8)
  FILES = Range.new('A', 'H')
  
  def self.valid_square?(rank, file)
    (RANKS.begin.to_s <= rank.to_s && rank.to_s <= RANKS.end.to_s) &&
      (FILES.begin.to_s <= file.to_s && file.to_s <= FILES.end.to_s)
  end

  def self.nickname(first_name, last_name)
    (first_name[0..1] + last_name[-2..-1]).upcase
  end

  def self.move_message(first_name, last_name, square)
    nn = nickname(first_name, last_name)
    rank = square[1]
    file = square[0]
    sq_valid = valid_square?(rank, file)
    if sq_valid
      "#{nn} moved to #{square}"
    else
      "#{nn} attempted to move to #{square}, but that is not a valid square"
    end
  end
end
