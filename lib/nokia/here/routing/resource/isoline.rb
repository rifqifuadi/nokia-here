module Nokia
  module Here
    module Routing
      module Resource
        class Isoline < Base

          def initialize
            super()
            @base_url    = 'http://isoline.route.api.here.com'
            @test_url    = 'http://isoline.route.cit.api.here.com'
            @method_name = 'calculateisoline'
          end

          def get(options={})
            destination = options[:destination]
            start       = options[:start]
            raise "One of destination or start must be supplied" unless destination or start
            super(options)
          end

        end
      end
    end
  end
end
