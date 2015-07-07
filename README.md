# Weekend
Gem for basic but helpful week days related queries.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'Weekend'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install Weekend

## Usage

Weekend::Base is base class.

1) For filtering weekends(only weekdays) :

```Weekend::Base.filter_weekends(start_date, end_date)```

e.g. ```Weekend::Base.filter_weekends(Date.today, Date.today + 6) => [#<Date: 2015-07-07 ((2457211j,0s,0n),+0s,2299161j)>, #<Date: 2015-07-08 ((2457212j,0s,0n),+0s,2299161j)>, #<Date: 2015-07-09 ((2457213j,0s,0n),+0s,2299161j)>, #<Date: 2015-07-10 ((2457214j,0s,0n),+0s,2299161j)>, #<Date: 2015-07-13 ((2457217j,0s,0n),+0s,2299161j)>]```

2) For filtering weekdays(only weekends) :

```Weekend::Base.filter_weekdays(start_date, end_date)```

e.g. ```Weekend::Base.filter_weekdays(Date.today, Date.today + 6) => [#<Date: 2015-07-11 ((2457215j,0s,0n),+0s,2299161j)>, #<Date: 2015-07-12 ((2457216j,0s,0n),+0s,2299161j)>]```

3) For total no of working days :

```Weekend::Base.no_of_working_days(start_date, end_date)```

e.g. ```Weekend::Base.no_of_working_days(Date.today, Date.today + 6) => 5```

4) For total no of weekends :

```Weekend::Base.no_of_weekends(start_date, end_date)```

e.g. ```Weekend::Base.no_of_weekends(Date.today, Date.today + 6) => 2```

5) Similarly for getting no. of sundays, mondays & so on....we have :

```Weekend::Base.no_of_sundays(start_date, end_date)```

```Weekend::Base.no_of_mondays(start_date, end_date)```

```Weekend::Base.no_of_tuesdays(start_date, end_date)```

```Weekend::Base.no_of_wednesdays(start_date, end_date)```

```Weekend::Base.no_of_thursdays(start_date, end_date)```

```Weekend::Base.no_of_fridays(start_date, end_date)```

```Weekend::Base.no_of_saturdays(start_date, end_date)```


## Future Enhancements

1. Add concept of holidays, so that one can get actual no. of working days


## Contributing

1. Fork it ( https://github.com/[my-github-username]/Weekend/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
