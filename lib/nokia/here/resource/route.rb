module Nokia
  module Here
    module Routing
      module Resource
        class Route < Base

          def initialize
            super()
            @method_name = 'getroute'
          end

          def calculate_route(options={})
            @method_name = 'calculateroute'
            waypoints = options.select{|k,v| k.to_s.include?("waypoint")}
            raise "At least two waypoints are required" unless waypoints.count >= 2
            raise ":mode is require" unless options[:mode]
            raise ":departure or :arrival is require for :mode=publicTransportTimeTable" unless (options[:departure] or options[:arrival]) and options[:mode].include?('publicTransportTimeTable')
            self.get(options={})
          end

          def calculate(options={})
            self.calculate_route(options)
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
end
