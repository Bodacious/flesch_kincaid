# FleschKincaid

Simple, super-lightweight gem for calculating the Flesch Kincaid score for a given block of text.

## Vs Odyssey

We needed to calculate F.K. scores in Ruby.

There's a similar gem named [Odyssey](https://github.com/cameronsutter/odyssey), which provides some additional formulae too. However, that codebase is a bit larger and slower.

[flesch_kincaid](/) is more than 2x faster (see the [benchmark](benchmarks/odyssey.rb))

If you just need standard Flesch Kincaid scores, this gem should do the trick.

    Warming up --------------------------------------
                 Odyssey    31.000  i/100ms
          Flesch Kincaid    75.000  i/100ms
    Calculating -------------------------------------
                 Odyssey    323.004  (± 4.0%) i/s -      1.643k in   5.095737s
          Flesch Kincaid    764.062  (± 3.3%) i/s -      3.825k in   5.012054s


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'flesch_kincaid'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install flesch_kincaid

## Usage

    @result = FleschKincaid.read("I can't explain myself, I'm afraid, sir' said Alice, 'because I'm not myself, you see.")
    @result.score # => 75.77
    @result.grade # => "7th grade"
    @result.notes # => "Fairly easy to read."

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/katanacode/flesch_kincaid.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

