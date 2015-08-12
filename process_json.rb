require 'json'
require_relative 'class_league'
require 'pry'

file = File.read('roster.json')
kickball_league = JSON.parse(file)
league = League.new("Kickball")
position_list = kickball_league.values[0].keys
kickball_league.each do |team, positions|
  league.teams[team] = Team.new(team, positions)
end
puts league.players_at_position("Pitcher")
