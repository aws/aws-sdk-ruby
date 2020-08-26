# Upgrade Notes

## `aws-sdk` - v3.0.0

* An equivalent gem of `aws-sdk` that provides resource oriented interfaces and
  other higher-level abstractions for many AWS services. Please see the
  `V3_UPGRADING_GUIDE.md` guide for upgrading details.

## `aws-sdk-core` - v3.0.0

* Service modules have been removed from `aws-sdk-core`. They are now available
  in service gems. The `aws-sdk-core` gem now only contains shared utilities,
  such as credential providers, logging, etc. If you had a dependency on
  `aws-sdk-core` previously to use Amazon S3, replace it instead with `aws-sdk-s3`.
  If you want to load every AWS service gem, use the `aws-sdk` gem.

* Moved the `aws.rb` REPL from the `aws-sdk-core` gem into the `aws-sdk`
  gem.

* `Aws.eager_autoload!` is deprecated as all autoload statements have been replaced
  with require statements. Calling this method will now generate a warning and
  have no other effect.

* Removed the `Aws.add_service` method. Services are no longer defined
  at runtime. Each service is now defined in a seperate gem, e.g.
  `aws-sdk-s3`, `aws-sdk-ec2`, etc.

* Preview Gem `aws-sdk-sfn` is deprecated, use `aws-sdk-states` instead.

* Preview Gem `aws-sdk-lexruntimeservice` is deprecated, use `aws-sdk-lex` instead.

# Upgrading from v2?

Please see [UPGRADING.md](https://github.com/aws/aws-sdk-ruby/blob/version-2/UPGRADING.md)

# Upgrading from v1?

Please see [MIGRATING.md](https://github.com/aws/aws-sdk-ruby/blob/version-2/MIGRATING.md)
