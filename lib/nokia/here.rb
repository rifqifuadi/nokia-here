require "nokia/here/version"

module Nokia
  module Here
    require 'rest-client'
    require "nokia/here/resource"
    require "nokia/here/resource/isoline"
    require "nokia/here/resource/link_info"
    require "nokia/here/resource/matrix"
    require "nokia/here/resource/route"

    class << self
      attr_accessor :app_id, :app_code, :env
    end

  end
end
