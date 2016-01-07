require './lib/nokia/here'
require './spec/app_setup'
RSpec.describe Nokia::Here::Resource::Geocoder do



  describe "geocode an address" do
    it "Should get a invaild isochrone search respond 403" do
      options = {
        searchtext: '425 W Randolph Street, Chicago',
        gen: 9
      }
      res = Nokia::Here::Resource::Geocoder.geocode options
    end
  end

  describe "reverse geocode an point" do
    it "Should get a invaild isochrone search respond 403" do
      options = {
        prox: '50.112,8.683,100',
        mode: 'retrieveAddresses',
        gen: 9
      }
      res = Nokia::Here::Resource::Geocoder.reverse_geocode options
    end
  end
end
