# Omniauth::Onvedeo
[![Gem Version](https://badge.fury.io/rb/omniauth-onvedeo.svg)](http://badge.fury.io/rb/omniauth-onvedeo)
[![Build Status](https://travis-ci.org/onvedeo/omniauth-onvedeo.svg?branch=master)](https://travis-ci.org/onvedeo/omniauth-onvedeo)
[![Dependency Status](https://gemnasium.com/onvedeo/omniauth-onvedeo.svg)](https://gemnasium.com/onvedeo/omniauth-onvedeo)
[![Code Climate](https://codeclimate.com/github/onvedeo/omniauth-onvedeo/badges/gpa.svg)](https://codeclimate.com/github/onvedeo/omniauth-onvedeo)
[![Coverage Status](https://coveralls.io/repos/onvedeo/omniauth-onvedeo/badge.svg?branch=master&service=github)](https://coveralls.io/github/onvedeo/omniauth-onvedeo?branch=master)

Provides the Onvedeo strategy for OmniAuth.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'omniauth-onvedeo'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install omniauth-onvedeo

## Authentication Hash

An example auth hash available in `request.env['omniauth.auth']`:
```rb
{
  provider: 'onvedeo',
  uid: 123456,
  info: {
    email: 'email@onvedeo.com',
    name: 'John Doe',
    first_name: 'John',
    last_name: 'Doe',
    role: 'user',
    image: 'http://www.onvedeo.com/image.url',
    description: 'User description'
  }
}
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/onvedeo/omniauth-onvedeo.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

