require './lib/nokia/here'
RSpec.describe Nokia::Here::Resource::Geocoder do

  Nokia::Here.app_id   = 'O4A0cqvdvijQCj0Bkpv4'
  Nokia::Here.app_code = 'djVlsYVe-PClHnBpb9CZ1w'
  Nokia::Here.env      = 'test'
  RestClient.log = 'stdout'

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
