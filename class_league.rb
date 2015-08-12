require_relative 'class_team'

class League

  attr_accessor :name, :teams

  def initialize (name = "", teams = {})
    @name = name
    @teams = teams
  end

  def players_at_position (position)
    list_of_players = []
    teams.each do |name, team|
      list_of_players << team.positions[position]
    end
    return list_of_players
  end

end
