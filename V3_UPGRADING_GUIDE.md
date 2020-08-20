# AWS SDK for Ruby V3 Upgrading Guide

The AWS SDK for Ruby's release of modularization as a feature means we are major version bumping the SDK. While the SDK interface you're using for V2 remains unchanged, for packaging reasons (shifting of which code is in which package, and preventing V2 and V3 from running in the same process and creating unpredictable runtime behavior) you'll need to make some changes to your `Gemfile` and possibly to `require` statements in code. This guide will walk you through some common upgrade scenarios.

## User of aws-sdk Version 2

Most users of the SDK have a setup similar to this:

```ruby
# Gemfile
gem 'aws-sdk', '~> 2'
```
```ruby
# Code Files
require 'aws-sdk'

s3 = Aws::S3::Client.new
ddb = Aws::DynamoDB::Client.new

# etc.
```

If that's you, the quickest migration path is to simply change your `Gemfile` like so:

```ruby
# Gemfile
gem 'aws-sdk', '~> 3'
```

However, this will pull in a large number of new dependencies, as each service client has its own individual gem. As a direct user, you can also change to using only the service gems actually required by your project, which is the recommended path. This would involve a change to both your `Gemfile`, and to the code files where your `require` statements live, like so:

```ruby
# Gemfile
gem 'aws-sdk-s3', '~> 1'
gem 'aws-sdk-dynamodb', '~> 1'
```
```ruby
# Code Files
require 'aws-sdk-s3'
require 'aws-sdk-dynamodb'

s3 = Aws::S3::Client.new
ddb = Aws::DynamoDB::Client.new

# etc.
```

As you can see, only gems and require statements need to be changed - the modules, classes, and methods are backwards compatible.

## User of the aws-sdk-resources Gem

This is VERY similar to if you're a user of `aws-sdk`. The V3 release provides an update to `aws-sdk-resources` as well, so your initial gemfile change is just the major version, as above. Of course, we still recommend moving over to service-level gems when you can.

## User of the aws-sdk-core Gem

The `aws-sdk-core` gem has been a popular choice for V2 users, providing the basic SDK client experience without the addition of resource abstractions. However, in V2 of the SDK, this gem no longer contains any service clients. Therefore, you'll need to make changes to both your `Gemfile` and to `require` statements to upgrade. Consider this usage pattern:

```ruby
# Gemfile
gem 'aws-sdk-core', '~> 2'
```
```ruby
# Code Files
require 'aws-sdk-core'

s3 = Aws::S3::Client.new
ddb = Aws::DynamoDB::Client.new

# etc.
```

The minimum change needed would be to change your `Gemfile` to use `aws-sdk` or `aws-sdk-resources` version 3, and change your `require` statements to match. For example:

```ruby
# Gemfile
gem 'aws-sdk', '~> 3'
```
```ruby
# Code Files
require 'aws-sdk'

s3 = Aws::S3::Client.new
ddb = Aws::DynamoDB::Client.new

# etc.
```

Of course, we still recommend moving over to using service-specific gems as specified above. The end state is the same.

## Library Maintainer

If you are the author of a library which has the AWS SDK for Ruby V2 as a dependency, you should also upgrade, and provide a reference to this guide to help your users smoothly transition over. You have two options for providing an upgrade path.

### Preferred Upgrade Path

The preferred upgrade path is to switch to only the service gems your library actually uses. For example, a library like our `aws-record` gem will only depend on the `aws-sdk-dynamodb` gem, adding other gems only when actually used by the library.

```ruby
# Gemspec File
Gem::Specification.new do |spec|
  # ...
  spec.add_dependency('aws-sdk-dynamodb', '~> 1')
  # ...
end
```

Your users will need to follow the upgrade paths above if they are current users of V2 of the AWS SDK for Ruby.

### Simplest Upgrade Path

The simplest upgrade path is to open up your dependency on `aws-sdk` or `aws-sdk-resources` like so:

```ruby
# Gemspec File
Gem::Specification.new do |spec|
  # ...
  spec.add_dependency('aws-sdk', '>= 2.0', '< 4')
  # ...
end
```

This means users who don't have an AWS SDK dependency will end up using V3, while users who are using V2 won't have to make any changes. This is workable since the public API is backwards compatible, but it's not ideal in that you'll be adding about 100 gems to the dependency chain of your users, most of which they do not need or use.

## Upgrade from version 1

If you are using SDK version 1 and version 2 together in your application guided by our official [blog post](https://aws.amazon.com/blogs/developer/upcoming-stable-release-of-aws-sdk-for-ruby-version-2/), then you might have either `aws-sdk ~> 2` or `aws-sdk-resources ~> 2` exists in your project, you can simply update it to `~> 3` or using separate service gems as described in version 2 upgrade options.

For additional information of migrating from Version 1 to Version 2, please follow [V1 to V2 migration guide](https://github.com/aws/aws-sdk-ruby/blob/version-2/MIGRATING.md).

## Additional Information

* [Introduction Blog](https://aws.amazon.com/blogs/developer/aws-sdk-for-ruby-modularization-version-3-2/)
* [V2 to V3 Upgrade Blog Guide](https://aws.amazon.com/blogs/developer/upgrading-from-version-2-to-version-3-of-the-aws-sdk-for-ruby-2/)
* [Upgrade Release Notes](https://github.com/aws/aws-sdk-ruby/blob/master/UPGRADING.md)
