=begin
Write your code for the 'Space Age' exercise in this file. Make the tests in
`space_age_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/space-age` directory.
=end
class SpaceAge
  ORBITAL_PERIOD_IN_EARTH_YEARS = {
    Mercury: 0.2408467,
    Venus:   0.61519726,
    Earth:   1.0,
    Mars:    1.8808158,
    Jupiter: 11.862615,
    Saturn:  29.447498,
    Uranus:  84.016846,
    Neptune: 164.79132,
  }

  @@age = 0

  def initialize(val)
    @@age = val
  end
  
  def from_seconds(val)
    @@age = val
    self
  end

  def age_on_earth
    on_earth
  end

  def on_earth
    (@@age/(365.25*24*60*60)).round(2)
  end

  def on_mercury
    age_on_earth / ORBITAL_PERIOD_IN_EARTH_YEARS[:Mercury]
  end

  def on_venus
    age_on_earth / ORBITAL_PERIOD_IN_EARTH_YEARS[:Venus]
  end

  def on_mars
    age_on_earth / ORBITAL_PERIOD_IN_EARTH_YEARS[:Mars]
  end

  def on_jupiter
    age_on_earth / ORBITAL_PERIOD_IN_EARTH_YEARS[:Jupiter]
  end

  def on_saturn
    age_on_earth / ORBITAL_PERIOD_IN_EARTH_YEARS[:Saturn]
  end

  def on_uranus
    age_on_earth / ORBITAL_PERIOD_IN_EARTH_YEARS[:Uranus]
  end

  def on_neptune
    age_on_earth / ORBITAL_PERIOD_IN_EARTH_YEARS[:Neptune]
  end
end
