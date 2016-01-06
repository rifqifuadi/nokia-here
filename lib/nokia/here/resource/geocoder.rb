module Nokia
  module Here
    module Resource
      class Geocoder < Nokia::Here::Resource::Base

        BASE_URL = 'http://geocoder.api.here.com'
        TEST_URL = 'http://geocoder.cit.api.here.com'
        PATH     = '/6.2/'

        attr_accessor :method_name, :base_url, :test_url, :path


        def initialize
          @base_url    = BASE_URL
          @test_url    = TEST_URL
          @path        = PATH
          @method_name = 'geocode'
        end

        def geocode(options={})
          @method_name = 'geocode'
          get(options)
        end

        def search(options={})
          @method_name = 'search'
          get(options)
        end

        def reverse_geocode(options={})
          @base_url = 'http://reverse.geocoder.api.here.com'
          @test_url = 'http://reverse.geocoder.cit.api.here.com'
          @method_name = 'reversegeocode'
          get(options)
        end

        def multi_reverse_geocode(options={})
          @base_url = 'http://reverse.geocoder.api.here.com'
          @test_url = 'http://reverse.geocoder.cit.api.here.com'
          @method_name = 'multi-reversegeocode'
        end
      end
    end
  end
end
