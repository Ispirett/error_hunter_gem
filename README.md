# ErrorHunter

## Realtime error tracking for live apps

## Installation
##### before installing make sure you have an account here! [errorhunter](https://errorhunter.herokuapp.com)
######Add this line to your application's Gemfile:

```ruby
gem 'error_hunter'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install error_hunter

## Setup

##### The api is simple

###### In your ```config/development``` or ``` config/production``` stage of your app the token and app name.
###### Your token and app_name is in the dashboard on https://errorhunter.herokuapp.com

```
ErrorHunter::App.config(token:'yourtokenhere',app_name: 'app_name')
```
## Usage
Logging an error is as simple as the code below.
 ```
ErrorHunter::App.add_error(
title: "GemTest", 
description: "testing from get" ,
log: "error probably raise by an exception",
 severity: "urgent"
)
```
You can now monitor errors in realtime in your dashboard at https://errorhunter.com/apps/app_name

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/error_hunter. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/error_hunter/blob/master/CODE_OF_CONDUCT.md).


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the ErrorHunter project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/error_hunter/blob/master/CODE_OF_CONDUCT.md).
