# Contributing to the AWS SDK for Ruby

We work hard to provide a high-quality and useful SDK, and we greatly value feedback and contributions from our
community. Whether it's a new feature, correction, or additional documentation, we welcome your pull requests.
Please submit any [issues][] or [pull requests][pull-requests] through GitHub.

## Generated Code

A large percentage of the SDK is generated from JSON definitions of AWS services. Generated source code
contains a header comment block indicating the file has been generated. Bugs in these files result from
one of:

* Errors in the code generators. These are defined in [build_tools](https://github.com/aws/aws-sdk-ruby/blob/version-3/build_tools).
  We gladly accept contributions to the generators.

* Errors in the service **api** JSON. These are defined in [apis](https://github.com/aws/aws-sdk-ruby/blob/version-3/apis).
  We consume service definitions from another source. Corrections must be made upstream. Please feel free
  to open an issue if you feel there is an error in one of the API JSON definitions.

* Errors in the service **paginators**, **waiters**, or **resource** JSON definitions. These are also found in
  [apis](https://github.com/aws/aws-sdk-ruby/blob/version-3/apis). We can take contributions directly to these files
  as pull requests. If you have a question, please feel free to open an issue.

## What you should keep in mind

1. The SDK is released under the [Apache license][license]. Any code you submit will be released under that license. For
   substantial contributions, we may ask you to sign a [Contributor License Agreement (CLA)][cla].
2. We maintain a high percentage of code coverage in our unit tests. If you make changes to the code, please add,
   update, and/or remove unit (and integration) tests as appropriate.
3. If your code does not include adequate tests, we may ask you to update your pull requests before we accept them.
   We also reserve the right to deny any pull requests that do not align with our standards or goals.
4. If you would like to implement support for a significant feature that is not yet available in the SDK, please talk to
   us beforehand to avoid any duplication of effort.

## What we are looking for

We are open to anything that improves the SDK and doesn't unnecessarily cause backwards-incompatible changes. If you are
unsure if your idea is something we would be open to, please ask us; Open an issue or send us an email.
Specifically, here are a few things that we would appreciate help on:

1. **Waiters** – Waiter configurations are located in the apis directory.
2. **Docs** – We  greatly appreciate contributions to our documentation. The docs are written as code comments
   and via a pair of [YARD](https://github.com/lsegal/yard) plugins.
3. **Tests** – We maintain high code coverage, but if there are any tests you feel are missing, please add them.
4. **Convenience features** – Are there any features you feel would add value to the SDK? Contributions in this
   area would be greatly appreciated.
5. If you have some other ideas, please let us know!

## Running the unit tests

The AWS SDK for Ruby is unit tested using RSpec. You can run the unit tests of the SDK after cloning the repo:

    bundle install
    bundle exec rake test:spec

If you want to run `PURE_RUBY` tests, then `export PURE_RUBY=1` into your environment. This will skip installing
packages like `oj` for instance.

To run integration tests, create a `integration-test-config.json` file at the root of this repository. It should
contain a `"region"` and credentials. Running rake test when this file is present will enable integration tests.

[issues]: https://github.com/aws/aws-sdk-ruby/issues
[pull-requests]: https://github.com/aws/aws-sdk-ruby/pulls
[license]: http://aws.amazon.com/apache2.0/
[cla]: http://en.wikipedia.org/wiki/Contributor_License_Agreement
[docs-readme]: https://github.com/aws/aws-sdk-php/blob/version-3/docs/README.md
