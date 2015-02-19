module NearestTimeZone
  describe TimeZone do
    it "should expose all of the time zones with a hash with ids as keys" do
      expect(TimeZone.all.first[0]).to be_a_kind_of Integer
    end

    it "should expose all of the time zones as a hash with time zone objects as values" do
      expect(TimeZone.all.first[1]).to be_a_kind_of TimeZone
    end

    it "should have the class method find that returns the right time zone" do
      id = TimeZone.all.first[0]
      expect(TimeZone.find(id)).to eq TimeZone.all.first[1]
    end
  end
end
