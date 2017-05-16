# middleman-somemoji

[![Build Status](https://travis-ci.org/unasuke/middleman-somemoji.svg?branch=master)](https://travis-ci.org/unasuke/middleman-somemoji)

middleman-somemoji is a emoji extension for Middleman.
Choose emoji provider and convert emoji shorthand (e.g. `:heart:`) to `<img>` tag using somemoji gem.

## usage
### 1. bundle install

```ruby
# Gemfile
source 'https://rubygems.org'

gem 'middleman', '>= 4.0.0'
gem 'middleman-somemoji'
```

and run `bundle install`

### 2. download emoji images

Download emoji images to your middleman images directory using somemoji gem.

```shell
# in your middleman root directory (destination path is a example)
$ bundle exec somemoji extract --provider=twemoji --destination=./source/images/emoji
```

See also somemoji's readme → [somemoji/README.md](https://github.com/r7kamura/somemoji/blob/master/README.md)

### 3. activate somemoji extension and setting it

```ruby
# your middleman config.rb
activate :somemoji,
  provider:    'twemoji',
  emojis_dir:  '/images/emoji'
```

:warning: __note__ :warning:

If you using `asset_hash` extension, currentry disable it in emoji images directory please :pray:

```ruby
# for example
activate :asset_hash, ignore: 'images/twemoji'
```

### 4. write emoji shorthand

examples...

```markdown
# my markdown document
I'm happy :lauging:

## but
So sorry... :bow:
```

```slim
h1 my slim document
div.some-class
  p
    | :eyes:
  small
    | :+1:
```

See also [Emoji cheat sheet for GitHub, Basecamp and other services](https://www.webpagefx.com/tools/emoji-cheat-sheet/)

### 5. build middleman site!

```shell
$ bundle exec middleman build
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/unasuke/middleman-somemoji.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

## Reference
- [r7kamura/somemoji: A grand unified emoji mapper for some emoji providers.](https://github.com/r7kamura/somemoji)
