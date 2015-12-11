# EverythingBecomesF

[see also]
https://en.wikipedia.org/wiki/Subete_ga_F_ni_Naru

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'everything_becomes_f'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install everything_becomes_f

## Usage

integer

````ruby
1.everything_became_f? # => false
14.everything_became_f? # => false
15.everything_became_f? # => true
16.everything_became_f? # => false
255.everything_became_f? # => true
65535.everything_became_f? # => true
```

String

````ruby
'f'.everything_became_f? # => true
'fF'.everything_became_f? # => true
'FF'.everything_became_f? # => true
'ffffffffffffffffffffffffffffffffffffffffffffffffff'.everything_became_f? # => true
'FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF'.everything_became_f? # => true
```

Time

````ruby
ENV['TZ'] = 'UTC'
Time.new(1970, 1, 1, 0, 0, 15).everything_became_f? # => true
Time.new(1978, 7, 4, 21, 24, 15).everything_became_f? # => true
Time.new(2106, 2, 7, 6, 28, 15).everything_became_f? # => true
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/everything_becomes_f. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

