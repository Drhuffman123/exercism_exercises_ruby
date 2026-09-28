module Acronym
  def self.abbreviate(phrase)
    phrase.split(/[ _-]+/).map { |segment| segment.capitalize.to_s[0] }.join
  end
end
