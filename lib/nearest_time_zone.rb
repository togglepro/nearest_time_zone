require "csv"
require "kdtree"

require "require_all"
require_rel "./nearest_time_zone"

module NearestTimeZone

  def self.to(latitude, longitude)
    nearest_city = City.nearest(latitude, longitude)
    if nearest_city.present?
      nearest_city.time_zone.name
    end
  end

  def self.dump
    Dump.dump
    puts "dumped!"
  end
end

# load the kdtree so that everything is fast
NearestTimeZone::City.kdtree
