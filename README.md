# RailsAdminTimezoneAwareTime

This provides a timezone aware Time field for Rails Admin.

## Usage

In `config/initializers/rails_admin`, use this as a substitute for the usual
Rails Admin Time field (when you have configured Rails 5 to use timezone aware
time columns).

```ruby
config.model MyModel do
  edit do
    field :time_of_day, :timezone_aware_time
  end
end
```

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rails_admin_timezone_aware_time',
    git: 'git@github.com:NU-CBITS/rails_admin_timezone_aware_time.git'
```

And then execute:

```bash
bundle
```

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
