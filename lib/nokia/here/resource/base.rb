module Nokia
  module Here
    module Resource
      class Base

        BASE_URL = 'https://transit.api.here.com'
        TEST_URL = 'https://cit.transit.api.here.com'
        PATH     = '/metarouter/rest/routeservice/v2' #default path

        attr_accessor :method_name, :base_url, :test_url, :path


        def initialize
          @base_url    = BASE_URL
          @test_url    = TEST_URL
          @path        = PATH
          @method_name = 'getroute' # getroute as default method.
        end

        def request_url(format: 'json')
          format ||= 'json'
          url = Nokia::Here.env == 'test' ? self.test_url : self.base_url
          url = File.join(url, self.path , "#{self.method_name}.#{format}")
          puts url
          url
        end

        def prepare_the_request(options={})
          params = options.merge(:app_id=>Nokia::Here.app_id, :app_code => Nokia::Here.app_code)
        end

        def get(options={})
          res = RestClient.get(self.request_url(format: options[:format]), params: self.prepare_the_request(options))
        end

        def self.get(options={})
          self.new.get(options)
        end

        # direct call to instance methods as class methods.
        def self.method_missing(method_sym, *arg, &block)
          if self.instance_methods.include?(method_sym)
            self.new.send(method_sym, *arg, &block)
          else
            super
          end
        end

      end
    end
  end
end
