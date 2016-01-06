require './lib/nokia/here'
RSpec.describe Nokia::Here::Resource::Routing::Isoline do

  Nokia::Here.app_id   = 'O4A0cqvdvijQCj0Bkpv4'
  Nokia::Here.app_code = 'djVlsYVe-PClHnBpb9CZ1w'
  Nokia::Here.env      = 'test'

  describe "get isoline" do
    it "Should get a vaild isoline json" do
      options = {
        waypoint0: 'geo!51.512,-0.111',
        waypoint1: 'geo!51.519,-0.074',
        departure: '2016-01-04T17:00:00+02',
        mode: 'fastest;publicTransportTimeTable'
      }

      res = Nokia::Here::Resource::Routing::Route.calculate_route options

      expect(res.code).to eq(200)
    end
  end
end
