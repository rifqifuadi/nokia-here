require './lib/nokia/here'
require './spec/app_setup'
RSpec.describe Nokia::Here::Resource::Routing::Isoline do

  describe "get isoline" do
    it "Should get a vaild isoline json" do
      options = {
        mode: 'fastest;car;traffic:enabled',
        rangetype: 'time',
        start: 'geo!-37.8089497,144.9731852',
        range: 600,
        departure: Time.now.xmlschema
      }

      res = Nokia::Here::Resource::Routing::Isoline.get options

      expect(res.code).to eq(200)
    end
  end
end
