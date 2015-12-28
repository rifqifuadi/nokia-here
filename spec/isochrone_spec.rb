require './lib/nokia/here'
RSpec.describe Nokia::Here::Resource::Transit::Isochrone do

  Nokia::Here.app_id   = 'O4A0cqvdvijQCj0Bkpv4'
  Nokia::Here.app_code = 'djVlsYVe-PClHnBpb9CZ1w'
  Nokia::Here.env      = 'test'

  describe "search isochrone" do
    it "Should get a invaild isochrone search respond 403" do
      options = {
        time: '2015-12-16T06:36:40',
        x: -37.8089497,
        y: 144.9731852,
      }
      expect{Nokia::Here::Resource::Transit::Isochrone.search options}.to raise_error(RuntimeError)
    end

  end
end
