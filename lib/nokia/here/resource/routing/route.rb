module Nokia
  module Here
    module Resource
      module Routing
        class Route < Base

          def initialize
            super()
            @method_name = 'getroute'
          end

          def calculate_route(options={})
            @method_name = 'calculateroute'
            self.get(options)
          end

          def get_route(options={})
            @method_name = 'getroute'
            self.get(options)
          end

          def get(options={})
            super(options)
          end

        end
      end
    end
  end
end
