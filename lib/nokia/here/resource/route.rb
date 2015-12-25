module Nokia
  module Here
    module Resource
      class Route < Base

        def initialize
          super()
          @method_name = 'getroute'
        end

        def culculate_route(options={})
          @method_name = 'calculateroute'
          self.get(options={})
        end

        def get_route(options={})
          @method_name = 'getroute'
          self.get(options={})
        end

        def get(options={})
          super(options)
        end

      end
    end
  end
end
