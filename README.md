# temporary_environment
Set a temporary environment variable for a duration of a block

![Temporary Environment Gem Logo](logos/logo.png)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'temporary_environment'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install temporary_environment

## Usage

```ruby
require 'temporary_environment'

puts ENV['MY_AWESOME_ENV_VARIABLE'] # nil

TemporaryEnvironment.with_env_variable(key: 'MY_AWESOME_ENV_VARIABLE', value: 'SOME_USEFUL_VALUE') do
  puts ENV['MY_AWESOME_ENV_VARIABLE'] # SOME_USEFUL_VALUE
end

puts ENV['MY_AWESOME_ENV_VARIABLE'] # nil
```


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/temporary_environment. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT). Cloud graphic is provided by [Freepik](http://www.flaticon.com/authors/freepik) [Flaticon](http://www.flaticon.com/) which is licensed under [Creative Commons 3.0](http://creativecommons.org/licenses/by/3.0/). Made with [Logo Maker](http://logomakr.com).
