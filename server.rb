require 'sinatra'
require_relative 'class_team'
require_relative 'class_league'
require 'json'
require 'pry'

file = File.read('roster.json')
kickball_league = JSON.parse(file)
league = League.new("Kickball")
kickball_league.each do |team, positions|
  league.teams[team] = Team.new(team, positions)
end
#binding.pry
get '/home' do
  erb :index, locals: {teams: league.teams}
end

get '/home/:team_name' do
  erb :show, locals: {team_name: params[:team_name], league: league}
end
