# Contributing to the AWS SDK for Ruby V4

> [!IMPORTANT]
> V4 is experimental and under active development.

We work hard to provide a high-quality and useful SDK, and we greatly value feedback and contributions from our community. Whether it's a new feature, correction, or additional documentation, we welcome your pull requests.

Please submit any [issues][] or [pull requests][pull-requests] through GitHub.

See the [README](README.md) for V4’s current status and relationship to V3.
When reporting an issue or submitting a pull request, identify whether it concerns V3 or V4 by using a label.

## Generated Code

A large percentage of the SDK is generated from Smithy AST definitions of AWS services.
Generated source files contain a header indicating that they are generated.
Fixes to generated code should be made in its inputs or generator and followed by regeneration.

Bugs in these files can result from:

* Errors in the code generator or shared runtime. These are defined in [smithy-ruby][smithy-ruby]. Generator and shared-runtime fixes belong in that repository.

* Errors in AWS-specific generation behavior. These customizations are defined in [build_tools](build_tools), including [welds](build_tools/lib/welds). We welcome contributions to these customizations.

* Errors in service models. These are defined in [models](models) and maintained by AWS SDK maintainers. Open an issue to report a model error; maintainers handle corrections and model updates.

AWS-specific generation customizations, called welds, live under [build_tools/lib/welds](build_tools/lib/welds). The handwritten runtime code they connect to generated clients lives under [gems](gems). Changes to handwritten runtime files can be submitted directly, with appropriate tests.

## What you should keep in mind

1. The SDK is distributed under the [Apache license][license]. Any code you submit will be distributed under that license.
   For substantial contributions, we may ask you to sign a [Contributor License Agreement (CLA)][cla].
2. If you make changes to the code, please add, update, and/or remove tests as appropriate.
3. If your code does not include adequate tests, we may ask you to update your pull request before we accept it.
   We also reserve the right to deny pull requests that do not align with our standards or goals.
4. If you would like to implement support for a significant feature that is not yet available in the SDK,
   please talk to us beforehand to avoid duplication of effort.

## What we are looking for

We welcome improvements to the SDK. If you are unsure whether an idea fits the current V4 plans, open an issue before starting.
Here are a few areas where contributions are especially useful:

1. **Pagination and waiters**: Report unexpected behavior and help improve generation or service-specific handling.
2. **Docs**: Improve setup instructions, examples, and API documentation. For generated documentation, update its source in the generator or AWS customizations and regenerate the affected files.
3. **Tests**: Add coverage for missing cases and regressions.
4. **Convenience features**: Discuss additions that would make the SDK easier to use.
5. If you have other ideas, please let us know!

## Running the unit tests

The AWS SDK for Ruby is unit tested using RSpec. Run the following commands from the repository root.

```bash
bundle install
bundle exec rake test:spec
```

The Gemfile fetches Smithy Ruby gems from public GitHub. A separate local Smithy checkout is optional.

### Build a service client

Generate the Lambda client using the models already in this repository:

```bash
bundle exec rake build:aws-sdk-lambda
```

For commands to build all clients, run tests, and lint the repository, see the [README](README.md#common-tasks).

### Try the client without AWS credentials

Start IRB with the Lambda and core source directories on the load path:

```bash
bundle exec irb -I gems/aws-sdk-lambda/lib -I gems/aws-sdk-core/lib
```

Then run:

```ruby
require 'aws-sdk-lambda'

client = Aws::Lambda::Client.new(
  region: 'us-west-2',
  stub_responses: true
)

client.stub_responses(:list_functions, functions: [])
response = client.list_functions
response.functions # => []
```

Stubbed responses do not make AWS requests or require AWS credentials.

## Optional: develop Smithy Ruby alongside the SDK

Use a local Smithy checkout when changing the generator or runtime together with AWS SDK code.

Set `smithy_checkout` to your checkout's absolute path:

```bash
smithy_checkout=/absolute/path/to/smithy-ruby

bundle config set --local local.smithy "$smithy_checkout"
bundle config set --local local.smithy-client "$smithy_checkout"
bundle config set --local local.smithy-cbor "$smithy_checkout"
bundle config set --local local.smithy-json "$smithy_checkout"
bundle config set --local local.smithy-schema "$smithy_checkout"
bundle config set --local local.smithy-xml "$smithy_checkout"

bundle install
```

The local checkout must be on the branch selected by the Gemfile. It selects a Smithy branch matching the AWS SDK branch when one exists, otherwise `main`.

To return to the GitHub dependencies:

```bash
bundle config unset --local local.smithy
bundle config unset --local local.smithy-client
bundle config unset --local local.smithy-cbor
bundle config unset --local local.smithy-json
bundle config unset --local local.smithy-schema
bundle config unset --local local.smithy-xml

bundle install
```

## Automated Tools

The use of AI tooling for assisted development work is accepted and encouraged
in this repository, but due to the volume of submissions we ask that you observe
the following rules:

- All issue and pull request submissions to this repository that are sourced by
  AI must first be reviewed by a human before submitting to the repository.
  Items reviewed in this way must include a statement like "generated by AI
  tools, and reviewed by <person>"
- Please ensure that your submissions are actually improvements. While we are
  grateful for any proposed fixes, even if they are very small, behavior that
  looks like creating nuisance PRs or artificially inflating submission counts
  is not acceptable.
- We may close issues or pull requests, or limit your ability to interact with
  this repository, for behavior that in our estimation violates these rules or
  any of the other rules in this repository's
  [Code of Conduct][code-of-conduct].

[issues]: https://github.com/aws/aws-sdk-ruby/issues
[pull-requests]: https://github.com/aws/aws-sdk-ruby/pulls
[license]: LICENSE
[cla]: https://en.wikipedia.org/wiki/Contributor_License_Agreement
[smithy-ruby]: https://github.com/smithy-lang/smithy-ruby
[code-of-conduct]: https://github.com/aws/aws-sdk-ruby/blob/version-3/CODE_OF_CONDUCT.md
