require 'sinatra'
require_relative 'class_team'
require_relative 'class_league'
require 'json'
require 'pry'

file = File.read('roster.json')
kickball_league = JSON.parse(file)
league = League.new("Kickball")
position_list = kickball_league.values[0].keys
kickball_league.each do |team, positions|
  league.teams[team] = Team.new(team, positions)
end

get '/home' do
  erb :index, locals: {teams: league.teams, position_list: position_list}
end

get '/home/positions/:position' do
  names = league.players_at_position(params[:position])
  erb :show_pos, locals: {position: params[:position], names: names}
end

get '/home/:team_name' do
  erb :show, locals: {team_name: params[:team_name], league: league}
end
