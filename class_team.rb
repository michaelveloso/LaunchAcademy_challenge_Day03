require_relative "class_league"

class Team

  attr_accessor :name, :positions

  def initialize (name, positions = {})
    @name = name
    @positions = positions
  end

end
