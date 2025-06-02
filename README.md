# Quickstart

Run the following in the terminal to update bundler's config with the location of the local `smithy-ruby`:
```
bundle config local.smithy-client /path/to/smithy-ruby
bundle config local.smithy-cbor /path/to/smithy-ruby
bundle config local.smithy-json /path/to/smithy-ruby
bundle config local.smithy-schema /path/to/smithy-ruby
bundle config local.smithy /path/to/smithy-ruby
```

For example,
```
bundle config local.smithy-client ~/workplace/smithy-ruby
bundle config local.smithy-cbor ~/workplace/smithy-ruby
bundle config local.smithy-json ~/workplace/smithy-ruby
bundle config local.smithy-schema ~/workplace/smithy-ruby
bundle config local.smithy ~/workplace/smithy-ruby
```

Then run `bundle install`.

To build the `aws-sdk-lambda` gem locally, run `bundle exec rake build:aws-sdk-lambda`.

To use the generated Lambda client with `irb`, run `bundle exec irb -I gems/aws-sdk-lambda/lib -I gems/aws-sdl-core/lib`.

```
require 'aws-sdk-lambda'
c = Aws::Lambda::Client.new
```