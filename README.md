# RailsApiResponse

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/rails_api_response`. To experiment with that code, run `bin/console` for an interactive prompt.

## Installation

Add this line to your application's Gemfile:

```rails
gem 'rails_api_response'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rails_api_response

## Usage

Add the line `include RailsApiResponse::ControllerHelpers::Responses` to the controller where you want to you response format. (Recommended: base or application controller).

Response success: `respond_success message: "Create user successfully", data: {}`.

Response error: `respond_error message: "Create user failed", data: {}` or `respond_error instance: @user, data: {}` (with instance param, the format will be got from errors and full message from instance.

Response with customer code: `respond_json code: 200, message: "", data: {}`.

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/rails_api_response.

# api-response
