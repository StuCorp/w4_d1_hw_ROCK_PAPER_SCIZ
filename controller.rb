require 'sinatra'
require 'sinatra/contrib/all'
require 'pry-byebug'
#widely used - javascript object notation - can pass almost anything to a json object
require 'json'

require_relative './models/rps_game'

get "/" do
  erb(:home)
end

get "/about_rps" do
  erb(:about_rps)
end

get "/play" do
  erb(:play)
end



get '/:move1/:move2' do
  # content_type( :json )
  "yo!"
  # options = params[:move1].merge(params[:move2])

  new_game = RpsGame.new(params[:move1], params[:move2])
  @game_result = new_game.check_result()
  erb(:result)
  # return new_game.check_result().to_json
end

# c = a.merge(b)

# calculator = Calculator.new(params[:num1].to_i, params[:num2].to_i)