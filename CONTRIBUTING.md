# Contributing to the AWS SDK for Ruby

We work hard to provide a high-quality and useful SDK, and we greatly value feedback and contributions from our
community. Whether it's a new feature, correction, or additional documentation, we welcome your pull requests.
Please submit any [issues][] or [pull requests][pull-requests] through GitHub.

## What you should keep in mind

1. The SDK is released under the [Apache license][license]. Any code you submit will be released under that license. For
   substantial contributions, we may ask you to sign a [Contributor License Agreement (CLA)][cla].
2. We maintain a high percentage of code coverage in our unit tests. If you make changes to the code, please add,
   update, and/or remove unit (and integration) tests as appropriate.
3. We may choose not to accept pull requests that change service descriptions, such as `aws-sdk-core/apis/S3.api.json`.
   We generate these files based on our internal knowledge of the AWS services. If there is something incorrect
   with or missing from a service description, it may be more appropriate to [submit an issue][issues].
   We *will*, however, consider pull requests affecting service descriptions, if the changes are related to
   **paginators**, **waiters**, or **resources** configurations.
4. If your code does not include adequate tests, we may ask you to update your pull requests before we accept them.
   We also reserve the right to deny any pull requests that do not align with our standards or goals.
5. If you would like to implement support for a significant feature that is not yet available in the SDK, please talk to
   us beforehand to avoid any duplication of effort.

## What we are looking for

We are open to anything that improves the SDK and doesn't unnecessarily cause backwards-incompatible changes. If you are
unsure if your idea is something we would be open to, please ask us; Open an issue, send us an email, or ask in the
[Gitter channel](https://gitter.im/aws/aws-sdk-ruby). Specifically, here are a few things that we would
appreciate help on:

1. **Waiters** – Waiter configurations are located in the apis directory.
2. **Docs** – We  greatly appreciate contributions to our documentation. The docs are written as code comments
   and via a pair of [YARD](https://github.com/lsegal/yard) plugins.
3. **Tests** – We maintain high code coverage, but if there are any tests you feel are missing, please add them.
4. **Convenience features** – Are there any features you feel would add value to the SDK? Contributions in this
   area would be greatly appreciated. See the [feature requests document][feature-requests] for a list of ideas.
5. If you have some other ideas, please let us know!

## Running the unit tests

The AWS SDK for Ruby is unit tested using RSpec. You can run the unit tests of the SDK after cloning the repo:

    bundle install
    bundle exec rake test

To run integration tests, create a `integration-test-config.json` file at the root of this repository. It should
contain a `"region"` and credentials. Running rake test when this file is present will enable integration tests.

[issues]: https://github.com/aws/aws-sdk-ruby/issues
[pull-requests]: https://github.com/aws/aws-sdk-ruby/pulls
[feature-requests]: https://github.com/aws/aws-sdk-ruby/blob/master/FEATURE_REQUESTS.md
[license]: http://aws.amazon.com/apache2.0/
[cla]: http://en.wikipedia.org/wiki/Contributor_License_Agreement
[docs-readme]: https://github.com/aws/aws-sdk-php/blob/master/docs/README.md
