require './lib/nokia/here'
require './spec/app_setup'
RSpec.describe Nokia::Here::Resource::Transit::Isochrone do

  describe "search isochrone" do
    it "Should get a invaild isochrone search respond 403" do
      options = {
        time: '2015-12-16T06:36:40',
        x: 144.9731852,
        y: -37.8089497
      }
      puts Nokia::Here::Resource::Transit::Isochrone.search options
    end

  end
end
