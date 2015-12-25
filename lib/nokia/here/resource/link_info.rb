module Nokia
  module Here
    module Resource
      class LinkInfo < Base

        def initialize
          super()
          @method_name = 'getlinkinfo'
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
