require_relative 'class_team'

class League

  attr_accessor :name, :teams

  def initialize (name = "", teams = {})
    @name = name
    @teams = teams
  end

end
