
class Player 
	attr_accessor :name, :response, :wins

	def initialize (name)
		@name = name
		@player1wins = 0
		@player2wins = 0

	end
end


class Game 
	def initialize (player1, player2)
		@player1 = player1
		@player2 = player2
	end

def results

	if @player1.response == "rock" && @player2.response = "rock"
		 @message = "It's a tie!"
	elsif @player1.response == "scissors" && @player2.response = "scissors"
		 @message = "It's a tie!"
	elsif @player1.response == "paper" && @player2.response = "paper"
		 @message = "It's a tie!"


	elsif @player1.response == "rock" && @player2.response == "scissors" 
		 @message =  "Player 1 wins!"
		 @player1wins = @player1wins + 1
	elsif @player1.response == "scissors" && @player2.response == "paper"
		 @message = "Player 1 wins!"
		 @player1wins = @player1wins + 1
	elsif @player1.response == "paper" && @player2.response == "rock"
		 @message = "Player 1 wins!"
		 @player1wins = @player1wins + 1


	elsif @player1.response == "scissors" && @player2.response == "rock"
		 @message = "Player 2 wins!"
		 @player2wins = @player2wins + 1
	elsif @player1.response == "paper" && @player2.response == "scissors"
		 @message = "Player 2 wins!"
		 @player2wins = @player2wins + 1
	elsif @player1.response == "rock" && @player2.response == "paper"
		 @message = "Player 2 wins!"
		 @player2wins = @player2wins + 1
	end
end

def scoreboard
	"#{@player1.name} = #{@player1.wins}, #{@player2.name} = #{@player2.wins}" + " - #{@message}"
end

end



