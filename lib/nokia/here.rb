require "nokia/here/version"

module Nokia
  module Here
    require 'rest-client'
    require "nokia/here/resource"

    class << self
      attr_accessor :app_id, :app_code
    end

  end
end
