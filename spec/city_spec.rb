module NearestTimeZone
  describe City do
    let(:id) { 321123 }
    let(:latitude) { 12 }
    let(:longitude) { 21 }
    let(:time_zone_id) { 4 }
    subject { City.new(id, latitude, longitude, time_zone_id) }

    it "should have the right latitude" do
      expect(subject.latitude).to eq latitude
    end

    it "should have the right longitude" do
      expect(subject.longitude).to eq longitude
    end

    it "should have the right time zone id" do
      expect(subject.time_zone_id).to eq time_zone_id
    end

    it "the class should have a kdtree method" do
      expect(City.kdtree).to be_a_kind_of Kdtree
    end

    it "should expose all the cities as a hash with the id as the key" do
      expect(City.all.first[0]).to be_a_kind_of Integer
    end

    it "should have a nearest method that finds the right city" do
      expect(City.nearest(37.2,68.9)).to eq City.find(220)
    end

    it "should have a time zone" do
      expect(City.all.first[1].time_zone).to be_a_kind_of TimeZone
    end

    it "should ask for the right time zone" do
      city = City.all.first[1]
      expect(TimeZone).to receive(:find).with(city.time_zone_id)
      city.time_zone
    end
  end
end
