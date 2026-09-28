class TwoFer
  def self.two_fer(recipient = nil)
    if recipient
      "One for #{recipient}, one for me."
    else
      "One for you, one for me."
    end
  end
end
