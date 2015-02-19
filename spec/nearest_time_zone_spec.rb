describe NearestTimeZone do
  it "should have the method to" do
    expect { NearestTimeZone.to(1, 3) }.not_to raise_error
  end

  it "should find the time zone name nearest to coordinates" do
    expect(NearestTimeZone.to(41.8500, -87.6500)).to eq "America/Chicago"
  end
end
