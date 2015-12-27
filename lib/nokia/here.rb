require "nokia/here/version"

module Nokia
  module Here
    require 'rest-client'
    require "nokia/here/routing/resource"
    require "nokia/here/routing/resource/isoline"
    require "nokia/here/routing/resource/link_info"
    require "nokia/here/routing/resource/matrix"
    require "nokia/here/routing/resource/route"

    class << self
      attr_accessor :app_id, :app_code, :env
    end

  end
end
