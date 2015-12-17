# EverythingBecomesF

https://ja.wikipedia.org/wiki/すべてがFになる

https://en.wikipedia.org/wiki/Subete_ga_F_ni_Naru

このgemは、ゲーム化・漫画化・アニメ化・ドラマ化などもされた森博嗣のミステリー小説【すべてがFになる】に触発されて、

すべてがfになる `everything_becomes_f` method と

すべてがfになったか、を判定する `everything_became_f?` method

だけを提供するネタgemです。

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
### everything_became_f?

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

### everything_becomes_f

Integer

````ruby
0.everything_becomes_f # => 15
1.everything_becomes_f # => 15
10.everything_becomes_f # => 15
15.everything_becomes_f # => 15
16.everything_becomes_f # => 255
254.everything_becomes_f # => 255
255.everything_becomes_f # => 255
256.everything_becomes_f # => 4095
65534.everything_becomes_f # => 65535
65535.everything_becomes_f # => 65535]
```

String

````ruby
'a'.everything_becomes_f # => 'f'
'af'.everything_becomes_f # => 'ff'
'fa'.everything_becomes_f # => 'ff'
'ffffffffffffffffffffffffffffffffffffffffffffffffffe'.everything_becomes_f # => 'fffffffffffffffffffffffffffffffffffffffffffffffffff'
'あいうえお'.everything_becomes_f # => 'fffff']
```

Time

````ruby
Time.new(1970, 1, 1, 0, 0, 14).everything_becomes_f # => Time.new(1970, 1, 1, 0, 0, 15)
Time.new(1970, 1, 1, 0, 0, 15).everything_becomes_f # => Time.new(1970, 1, 1, 0, 0, 15)
Time.new(1970, 1, 1, 0, 0, 16).everything_becomes_f # => Time.new(1970, 1, 1, 0, 4, 15)
Time.new(1978, 7, 4, 21, 24, 14).everything_becomes_f # => Time.new(1978, 7, 4, 21, 24, 15)
Time.new(1978, 7, 4, 21, 24, 15).everything_becomes_f # => Time.new(1978, 7, 4, 21, 24, 15)
Time.new(1978, 7, 4, 21, 24, 16).everything_becomes_f # => Time.new(2106, 2, 7, 6, 28, 15)]
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/everything_becomes_f. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

