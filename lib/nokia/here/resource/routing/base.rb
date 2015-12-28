module Nokia
  module Here
    module Resource
      module Routing
        class Base < Nokia::Here::Resource::Base

          BASE_URL = 'http://route.api.here.com'
          TEST_URL = 'http://route.cit.api.here.com'
          PATH     = '/routing/7.2/'

          attr_accessor :method_name, :base_url, :test_url, :path


          def initialize
            @base_url    = BASE_URL
            @test_url    = TEST_URL
            @path        = PATH
            @method_name = 'getroute' # getroute as default method.
          end

        end
      end
    end
  end
end
