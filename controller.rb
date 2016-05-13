require 'sinatra'
require_relative 'models/rps.rb'

get '/' do
	erb :index
end

post '/' do
	p1 = Player.new(params[:name])
	p2 = Player.new(params[:name2])
	game = Game.new(p1, p2)

	p1.response = params[:weapon]
	p2.response = params[:weapon2]

	game.results
	@results = game.scoreboard
	erb :results
end