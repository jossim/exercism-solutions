class LocomotiveEngineer
  def self.generate_list_of_wagons(*wagons)
    wagons
  end

  def self.fix_list_of_wagons(each_wagons_id, missing_wagons)
    a, b, one, *rest = each_wagons_id
    [1] + missing_wagons + rest + [a,b]
  end

  def self.add_missing_stops(to_from, **missing_info)
    { **to_from, stops: missing_info.values }
  end

  def self.extend_route_information(route, more_route_information)
    { **route, **more_route_information }
  end
end
