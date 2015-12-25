module Nokia
  module Here
    module Resource
      class Base

        # require all resources.
        Dir["resource/*.rb"].each {|file| require file }

        BASE_URL = 'http://route.api.here.com'
        TEST_URL = 'http://route.cit.api.here.com'
        PATH     = '/routing/7.2/'

        attr_accessor :method_name, :base_url, :test_url, :path

        def initialize
          @base_url = BASE_URL
          @test_url = TEST_URL
          @path     = PATH
          raise "Austract Method."
        end

        def request_url(format: 'json')
          format ||= 'json'
          url = Rails.env == 'production' ? self.base_url : self.test_url
          url = File.join(url, self.path , "#{self.method_name}.#{format}")
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
      end
    end
  end
end
