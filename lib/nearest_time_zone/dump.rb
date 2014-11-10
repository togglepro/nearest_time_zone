module NearestTimeZone
  class Dump

    def self.dump
      data_folder = "../../../data"
      
      File.open(File.expand_path("#{data_folder}/cities.dump", __FILE__),"w") do |f|
        f.write Marshal.dump(City.all)
      end

      File.open(File.expand_path("#{data_folder}/time_zones.dump", __FILE__),"w") do |f|
        f.write Marshal.dump(TimeZone.all)
      end

      File.open(File.expand_path("#{data_folder}/kdtree.dump", __FILE__),"w") do |f|
        City.kdtree.persist(f)
      end
    end

  end
end