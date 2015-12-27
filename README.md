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

Resourse:

    Nokia::Here::Resource::Isoline
    Nokia::Here::Resource::LinkInfo
    Nokia::Here::Resource::Matrix
    Nokia::Here::Resource::Route

## Contributing

1. Fork it ( https://github.com/[my-github-username]/nokia-here/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
