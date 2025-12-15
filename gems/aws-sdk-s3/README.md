# Amazon S3 Encryption Client for Ruby V3

This library provides an S3 client that supports client-side encryption.
`Aws::S3::EncryptionV3::Client` is the v3 of the Amazon S3 Encryption Client for the Ruby programming language.

The v3 encryption client requires a minimum version of **Ruby >= 2.5**.

Jump To:

* [Getting Started](#getting-started)
* [Migration](#migration)

## Maintenance and support for SDK major versions

For information about maintenance and support for SDK major versions and their underlying dependencies, see the
following in the AWS SDKs and Tools Shared Configuration and Credentials Reference Guide:

* [AWS SDKs and Tools Maintenance Policy](https://docs.aws.amazon.com/credref/latest/refdocs/maint-policy.html)
* [AWS SDKs and Tools Version Support Matrix](https://docs.aws.amazon.com/credref/latest/refdocs/version-support-matrix.html)

### Ruby version support policy

The v3 Encryption Client follows the upstream Ruby [maintenance policy](https://www.ruby-lang.org/en/downloads/branches/)
with an additional six months of support for the most recently deprecated
language version.

**AWS reserves the right to drop support for unsupported Ruby versions earlier to
address critical security issues.**

## Getting Started

1. **Sign up for AWS** – Before you begin, you need to
   sign up for an AWS account and retrieve your [AWS credentials][docs-signup].
2. **Minimum requirements** – To run the SDK, your system will need to meet the
   [minimum requirements][docs-requirements], including having **Ruby >= 2.5**.
3. **Install the SDK** – Using [Bundler][bundler] is the recommended way to install the
   AWS SDK for Ruby. The SDK is available via [RubyGems][rubygems] under the
   [`aws-sdk-s3`][install-rubygems] gem. If Bundler is installed on your system, you can add the following to your Gemfile:

   ```bash
   gem 'aws-sdk-s3'
   ```

   Or install the gem directly:

   ```bash
   gem install aws-sdk-s3
   ```

   Please see the
   [Installation section of the Developer Guide][docs-installation] for more
   detailed information about installing the SDK.
4. **Using the SDK** – The best way to become familiar with how to use the SDK
   is to read the [Developer Guide][docs-guide]. The
   [Getting Started Guide][docs-quickstart] will help you become familiar with
   the basic concepts.

## Quick Examples

### Create an Amazon S3 Encryption Client

```ruby
require 'aws-sdk-s3'

# Instantiate an Amazon S3 client.
s3_client = Aws::S3::Client.new(
  region: 'us-west-2'
)

# Instantiate an Amazon S3 Encryption Client V3.
client = Aws::S3::EncryptionV3::Client.new(
  client: s3_client,
  encryption_key: encryption_key,
  key_wrap_schema: :aes_gcm
)
```

### Upload a file to Amazon S3 using client side encryption

```ruby
require 'aws-sdk-s3'
require 'aws-sdk-kms'

# Create a KMS client
kms_client = Aws::KMS::Client.new(
  region: 'us-east-1'
)

# Specify your KMS key ID
kms_key_id = 'your-kms-key-id'

# Create the encryption client
client = Aws::S3::EncryptionV3::Client.new(
  kms_key_id: kms_key_id,
  kms_client: kms_client,
  key_wrap_schema: :kms_context
)

# Upload an encrypted object
bucket = 'the-bucket-name'
key = 'the-file-name'

result = client.put_object(
  bucket: bucket,
  key: key,
  body: File.open('file-to-encrypt.txt', 'r'),
  kms_encryption_context: { 'context-key' => 'context-value' }
)
```

## Migration

This version of the library supports reading encrypted objects from previous versions with extra configuration.
It also supports writing objects with non-legacy algorithms.
The list of legacy modes and operations will be provided below.

* [2.x to 3.x Migration Guide](https://docs.aws.amazon.com/sdk-for-ruby/v3/developer-guide/s3-encryption-migration-v2-v3.html)
* [1.x to 2.x Migration Guide](https://docs.aws.amazon.com/sdk-for-ruby/v3/developer-guide/s3-encryption-migration-v1-v2.html)

## Security

See [CONTRIBUTING](../../../CONTRIBUTING.md#security-issue-notifications) for more information.

## License

This project is licensed under the Apache-2.0 License.

[docs-signup]: https://docs.aws.amazon.com/sdk-for-ruby/v3/developer-guide/setup-config.html
[docs-requirements]: https://docs.aws.amazon.com/sdk-for-ruby/v3/developer-guide/setup-install.html
[docs-installation]: https://docs.aws.amazon.com/sdk-for-ruby/v3/developer-guide/setup-install.html
[docs-guide]: https://docs.aws.amazon.com/sdk-for-ruby/v3/developer-guide/welcome.html
[docs-quickstart]: https://docs.aws.amazon.com/sdk-for-ruby/v3/developer-guide/getting-started.html
[bundler]: https://bundler.io/
[rubygems]: https://rubygems.org/
[install-rubygems]: https://rubygems.org/gems/aws-sdk-s3
