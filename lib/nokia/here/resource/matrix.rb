module Nokia
  module Here
    module Resource
      class Matrix < Base

        def initialize
          super()
          @method_name = 'calculatematrix'
          @base_url    = 'http://matrix.route.api.here.com'
          @test_url    = 'http://matrix.route.cit.api.here.com'
        end

      end
    end
  end
end
