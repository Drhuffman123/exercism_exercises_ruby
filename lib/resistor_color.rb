class ResistorColor
  def self.color_code(color)
    if colors.include?(color)
      color_indexes[color]
    else
      nil
    end
  end

  def self.colors
    ["black", "brown", "red", "orange", "yellow", "green", "blue", "violet", "grey", "white"]
  end

  def self.color_indexes
    hash_colors = Hash.new # (String, Int32).new { |hash, key| hash[key] = 0 }
    colors.map.with_index do |color, index|
      hash_colors[color] = index
    end
    hash_colors
  end
end

module ResistorColorDuo
  def self.value(values)
    values[0..1].map { |val| ResistorColor.color_code(val) }.join.to_i
  end
end
