require_relative 'planet.rb'
require_relative 'solar_system.rb'
require 'pry'

def main
  mercury = Planet.new('Mercury','gray', 3.3022e23, 57.9e6, 'Mercury is slightly smaller than Earth’s moon and is extremely hot. As in 850 Fahrenheit or so.' )
  venus = Planet.new('Venus', 'red', 4.8685e24, 108.2e6, '1 day on Venus is the equivalent of 241 Earth days.')
  earth = Planet.new('Earth', 'blue', 5.9736e24, 149.6e6, 'Earth is the only planet, that we know of, that can maintain and support life.')
  mars = Planet.new('Mars', 'red', 6.4185e23, 227.9e6,'Mars is very cold and is currently inhabited solely by robots.')
  jupiter = Planet.new('Jupiter', 'gray', 1.8986e27, 778.3e6, 'Jupiter is the first of the gas giants and is the largest planet in our solar system.')
  saturn = Planet.new('Saturn', 'gray', 5.6846e26, 1427e6, 'Saturn is most recognizable by its rings that are made up of ice and space debris.')
  uranus = Planet.new('Uranus', 'blue', 8.6810e25, 2871e6, 'Uranus’ core is thought to be extremely icy, instead of being molten like other planets.')
  neptune = Planet.new('Neptune', 'blue', 1.0243e26, 4497.1e6, 'Neptune was predicted to exist by math before we actually saw it, making it the first predicted planet.')



  solar_system = SolarSystem.new('Sol')

  solar_system.add_planet(mercury)
  solar_system.add_planet(venus)
  solar_system.add_planet(earth)

  list = solar_system.list_planets
  puts list

  found_planet = solar_system.find_planet_by_name('Earth')

  # found_planet is an instance of class Planet
  puts found_planet
  # => #<Planet:0x00007fe7c2868ee8>

  puts found_planet.summary
  # => Earth is a blue-green planet ...
  puts solar_system.distance_between(venus, earth)

end

main