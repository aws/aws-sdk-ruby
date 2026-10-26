# AWS SDK for Ruby V4

The AWS SDK for Ruby V4 is experimental and under active development. APIs and behavior may change before general availability. Use [AWS SDK for Ruby V3](https://github.com/aws/aws-sdk-ruby/tree/version-3) for production workloads.

V4 uses [smithy-ruby](https://github.com/smithy-lang/smithy-ruby) to generate service clients. It does not yet include all features and service-specific functionality available in V3.

To work on V4 from source, follow [CONTRIBUTING.md](CONTRIBUTING.md). Build and test commands are documented below.

## Protocol Tests

### Syncing tests

Sync protocol tests from the pinned `smithy-aws-protocol-tests` Maven artifact:

```bash
bundle exec rake sync:protocol-tests
```

This does not fetch the latest upstream tests. It rebuilds from the version pinned in `build_tools/spec/protocol_tests/smithy-build.json`.

To pull in newer upstream protocol test cases, update the dependency version there first, for example:

```json
{
  "maven": {
    "dependencies": [
      "software.amazon.smithy:smithy-aws-protocol-tests:1.74.0"
    ]
  }
}
```

Then rerun:

```bash
bundle exec rake sync:protocol-tests
```

Available versions are published on [Maven Central](https://central.sonatype.com/artifact/software.amazon.smithy/smithy-aws-protocol-tests/versions).

### Running protocol tests

Run the full generated protocol-test suite with:

```bash
bundle exec rake test:protocols
```

Individual protocol suites can also be run by name:

```bash
bundle exec rake test:protocols:awsJson1_0
bundle exec rake test:protocols:awsJson1_1
bundle exec rake test:protocols:awsQuery
bundle exec rake test:protocols:ec2Query
bundle exec rake test:protocols:restJson1
bundle exec rake test:protocols:restXml
```

## Common tasks

### Building service gems

```bash
# Build all service gems
bundle exec rake build

# Build a specific service gem
bundle exec rake build:aws-sdk-dynamodb
```

### Running specs and linting

```bash
# Run every spec
bundle exec rake test:spec

# Run each spec file individually and report all failures
bundle exec rake test:spec:each

# Run the specs for one gem
bundle exec rake test:spec:aws-sdk-s3

# Run RuboCop
bundle exec rake rubocop
```

### Updating dependencies in `aws-sdk` gem

After adding or removing service gems, regenerate the aggregate `aws-sdk` gem's service dependencies in `aws-sdk.gemspec` and module autoloads in `lib/aws-sdk.rb`:

```bash
bundle exec rake update-aws-sdk-dependencies
```
