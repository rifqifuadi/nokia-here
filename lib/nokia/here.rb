require "nokia/here/version"

module Nokia
  module Here
    require 'rest-client'
    require "nokia/here/resource/base"
    #routing
    require "nokia/here/resource/routing/base"
    require "nokia/here/resource/routing/isoline"
    require "nokia/here/resource/routing/link_info"
    require "nokia/here/resource/routing/matrix"
    require "nokia/here/resource/routing/route"
    #geocoder
    require "nokia/here/resource/geocoder"
    #transit
    require "nokia/here/resource/transit/base"
    require 'nokia/here/resource/transit/isochrone'

    class << self
      attr_accessor :app_id, :app_code, :env
    end

  end
end
