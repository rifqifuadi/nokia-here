module Nokia
  module Here
    module Resource
      module Transit
        class Isochrone < Base

          def initialize
            super()
            @path        = '/isochrone/v1'
          end

          def search(options={})
            @method_name = 'search'
            raise ":time, :x and :y are required" unless options[:time] and options[:x] and options[:y]
            self.get(options)
          end

          def self.search(options={})
            self.new.search(options)
          end

        end
      end
    end
  end
end
