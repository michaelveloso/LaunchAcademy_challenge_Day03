require 'json'
require_relative 'class_league'
require 'pry'

file = File.read('roster.json')
kickball_league = JSON.parse(file)
#puts kickball_league

league = League.new("Kickball")
kickball_league.each do |team, positions|
  league.teams << Team.new(team, positions)
end
puts league
