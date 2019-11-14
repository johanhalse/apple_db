# AppleDb

A ruby gem to get metadata for Apple devices and software. Sourced from various places online (most notably https://github.com/MagerValp/MacModelShelf) and made into a Ruby gem for ease of use.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apple_db'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install apple_db

## Usage

Feed it a serial number, like so:

```ruby
AppleDb::Identifier.new.find_by_serial_number("C02CG123DC79")
```

And if your serial number matches a known Apple product from the database, you'll get back an object containing `"identifier", "category"` and `"name"`. If no matches, you get `nil`.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/johanhalse/apple_db. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the AppleDb project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/johanhalse/apple_db/blob/master/CODE_OF_CONDUCT.md).
