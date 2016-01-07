# Nokia::Here

This is a ruby gem for Nokia here map rest api. It is still on a early developing stage. Only Routing APIs are implemented.

## Installation

Add this line to your application's Gemfile:

    gem 'nokia-here'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install nokia-here

And then require it manually:

    require 'nokia/here'

## Usage
Configuration:
```ruby
Nokia::Here.app_id = 'YOUR_APP_ID'
Nokia::Here.app_code = 'YOUR_APP_CODE'
```
Resourses and Methods:

```ruby
# Routing API, not fully tested.
Nokia::Here::Resource::Routing::Isoline.get options
Nokia::Here::Resource::Routing::LinkInfo.get options
Nokia::Here::Resource::Routing::Matrix.get options
Nokia::Here::Resource::Routing::Route.calculate_route options
Nokia::Here::Resource::Routing::Route.get_route options

#Transit API, not tested
Nokia::Here::Resource::Transit::Isochrone.search options

#Geocoding API
Nokia::Here::Resource::Geocoder.geocde
Nokia::Here::Resource::Geocoder.reverse_geocde
Nokia::Here::Resource::Geocoder.multi_reverse_geocode

# Example:
options = {
    mode: 'fastest;car;traffic:enabled',
    rangetype: 'time',
    start: 'geo!-37.8089497,144.9731852',
    range: 600,
    departure: Time.now.xmlschema
  }
res = Nokia::Here::Resource::Routing::Isoline.get options
# => returns JSON formatted string. You might wanna
response_hash = JSON.parse(res)
```

For detailed parameters and options please refer to offical nokia here rest api documents


## TODO
More tests and API to be added.

## Contributing

Welcome to add testing or to implement other resources API.

1. Fork it ( https://github.com/[my-github-username]/nokia-here/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
