class RockPaperScissors

  # Exceptions this class can raise:
  class NoSuchStrategyError < StandardError ; end

  def self.winner(player1, player2)
    p1c = player1.last.downcase
    p2c = player2.last.downcase
    raise NoSuchStrategyError, "Strategy must be one of R,P,S" unless (self.is_valid? p1c and self.is_valid? p2c)
    
    
    if p1c.downcase == "r" && p2c.downcase == "r"
      return player1
    elsif p1c.downcase == "r" && p2c.downcase == "s"
      return player1
    elsif p1c.downcase == "r" && p2c.downcase == "p"
      return player2
    elsif p1c.downcase == "s" && p2c.downcase == "r"
      return player2
    elsif p1c.downcase == "s" && p2c.downcase == "s"
      return player1
    elsif p1c.downcase == "s" && p2c.downcase == "p"
      return player1
    elsif p1c.downcase == "p" && p2c.downcase == "r"
      return player1
    elsif p1c.downcase == "p" && p2c.downcase == "s"
      return player2
    elsif p1c.downcase == "p" && p2c.downcase == "p"
      return player1
    end
  
  end

  def self.tournament_winner(tournament)
    # YOUR CODE HERE
  end

end
