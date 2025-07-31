class SpaceAge
  ORBITS = {
    on_mercury: 0.2408467,
    on_venus: 0.61519726,
    on_earth: 1,
    on_mars: 1.8808158,
    on_jupiter: 11.862615,
    on_saturn: 29.447498,
    on_uranus: 84.016846,
    on_neptune: 164.79132
  }

  def initialize(seconds)
    @seconds = seconds
  end

  ORBITS.each do |name, orbit|
    define_method(name) { return @seconds.to_f / 31_557_600 / orbit }
  end
end
