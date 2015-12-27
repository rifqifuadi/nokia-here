# Nokia::Here

This is a ruby gem for Nokia here map rest api. It is still on a early developing stage. Only Routing APIs are implemented.

## Installation

Add this line to your application's Gemfile:

    gem 'nokia-here'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install nokia-here

## Usage
Configuration:

    Nokia::Here.app_id = 'YOUR_APP_ID'
    Nokia::Here.app_code = 'YOUR_APP_CODE'

Resourses and Methods:

    Nokia::Here::Resource::Routing::Isoline.get options
    Nokia::Here::Resource::Routing::LinkInfo.get options
    Nokia::Here::Resource::Routing::Matrix.get options
    Nokia::Here::Resource::Routing::Route.calculate_route options
    Nokia::Here::Resource::Routing::Route.get_route options
    
    #Example:
    options = {
        mode: 'fastest;car;traffic:enabled',
        rangetype: 'time',
        start: 'geo!-37.8089497,144.9731852',
        range: 600,
        departure: Time.now.xmlschema
      }
    res = Nokia::Here::Resource::Routing::Isoline.get options
    #res will be a hash of the calcualte resoure.
  For detailed parameters and options please refer to offical nokia here rest api documents
  

## TODO
More tests and API to be added.

## Contributing

1. Fork it ( https://github.com/[my-github-username]/nokia-here/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
