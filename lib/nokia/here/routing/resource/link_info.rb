module Nokia
  module Here
    module Routing
      module Resource
        class LinkInfo < Base

          def initialize
            super()
            @method_name = 'getlinkinfo'
          end

          def get(options={})
            raise ":linkids is required" unless options[:linkids]
            raise "One of :quadKey or :tmcCodes is required" unless options[:quadKey] or options[:tmcCodes]
            super(options)
          end

        end
      end
    end
  end
end
