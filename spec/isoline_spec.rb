require './lib/nokia/here'
RSpec.describe Nokia::Here::Resource::Routing::Isoline do

  Nokia::Here.app_id   = 'O4A0cqvdvijQCj0Bkpv4'
  Nokia::Here.app_code = 'djVlsYVe-PClHnBpb9CZ1w'
  Nokia::Here.env      = 'test'

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

    it "Should ask for at least a start or a destination" do
      options = {
        mode: 'fastest;car;traffic:enabled',
        rangetype: 'time',
        # start: 'geo!-37.8089497,144.9731852',
        range: 600,
        departure: Time.now.xmlschema
      }

      expect{Nokia::Here::Resource::Routing::Isoline.get options}.to raise_error(RuntimeError)


    end
  end
end
