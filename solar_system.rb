require 'pry'
class SolarSystem

  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  attr_reader :star_name, :planets

  def add_planet(new_planet)
    @planets << new_planet
  end

  def list_planets
    string = "Planets orbiting #{@star_name}:"
    @planets.each_with_index do |planet, i|
      string += "\n#{i + 1}. #{planet.name}"
    end
    return string
  end
end
