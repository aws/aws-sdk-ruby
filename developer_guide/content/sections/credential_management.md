---
title: Credential Management
---

To make API calls, you must provide credentials to your client.

Your credentials are secrets and should be kept safe at all times. **It is strongly recommended that you never commit credentials to source code.** This makes it difficult to rotate credentials and can be a security vulnerability.

## Default Credential Provider

By default, the AWS SDK for Ruby searches the following locations for credentials:

* `Aws.config[:credentials]`
* `Aws.config[:access_key_id]` and `Aws.config[:secret_access_key]`
* `ENV['AWS_ACCESS_KEY_ID']`, and `ENV['AWS_SECRET_ACCESS_KEY']`
* `~/.aws/credentials` on Linux/Mac, `%USERPROFILE%\.aws\credentials` on Windows
* EC2 Instance metadata service

## Credential Scope

When you populate `Aws.config[:credentials]`, you are setting default credentials for all services. You can provide per-client credentials that will take precedence over the default ones.

```ruby
Aws.config[:credentials] = default_creds

ec2 = Aws::EC2::Resource.new
ec2.config.credentials
#=> default_creds

s3 = Aws::S3::Resource.new(credentials: other_creds)
ec2.config.credentials
#=> other_creds
```

## Credential Objects

When configuring `Aws.config[:credentials]`, you need to provide a credentials object. The AWS SDK for Ruby ships with the following credential classes:

* [Aws::Credentials](http://docs.aws.amazon.com/sdkforruby/api/Aws/Credentials.html)
* [Aws::SharedCredentials](http://docs.aws.amazon.com/sdkforruby/api/Aws/SharedCredentials.html)
* [Aws::InstanceProfileCredentials](http://docs.aws.amazon.com/sdkforruby/api/Aws/InstanceProfileCredentials.html)
* [Aws::AssumeRoleCredentials](http://docs.aws.amazon.com/sdkforruby/api/Aws/AssumeRoleCredentials.html)

### Aws::Credentials

The following JSON document and Ruby code demonstrate loading credentials from disk.

```json
{
  "accessKeyId": "MY_AWS_ACCESS_KEY_ID",
  "secretAccessKey": "MY_AWS_SECRET_ACCESS_KEY"
}
```

```ruby
require 'aws-sdk'
require 'json'

creds = JSON.load(File.read('~/secrets.json'))
creds = Aws::Credentials.new(creds['accessKeyId'], creds['secretAccessKey'])

Aws.config[:credentials] = creds
```

### Aws::SharedCredentials

All of the official AWS SDKs and CLIs can share a single credential file. This file is located at `~/.aws/credentials`, or `%USERPROFILE%\.aws\credentials` for Windows. It is formatted as an INI file and can contain multiple credential profiles:

```ini
[default]
aws_access_key_id=AWS_ACCESS_KEY_ID
aws_secret_access_key=AWS_SECRET_ACCESS_KEY

[alternate-profile]
aws_access_key_id=ALTERNATE_ACCESS_KEY_ID
aws_secret_access_key=ALTERNATE_SECRET_ACCESS_KEY
```

When the shared credentials file is present, no credential configuration is required. If you do not wish to use the default profile, you can configure the profile name via `:profile`.

```ruby
Aws.config[:profile] = 'alternate-profile'

s3 = Aws::S3::Client.new
s3.config.credentials.access_key_id
#=> 'ALTERNATE_ACCESS_KEY_ID'
```

If you want to load credentials from an INI file, but it is not in the default location, you can construct an instance of the shared credential class with a custom path.

```ruby
creds = Aws::SharedCredentials.new(
  path: '/path/to/credentials/file',
  profile_name: 'default'
)

s3 = Aws::S3::Client.new(credentials: creds)
```

### Aws::InstanceProfileCredentials

If you are using the AWS SDK for Ruby from an Amazon EC2 instance, the SDK will attempt to automatically load instance profile credentials.

```ruby
# no configuration required when running from EC2 with an instance profile
iam = Aws::IAM::Client.new
```

If you wish to force only EC2 credentials, or you wish to customize network timeouts, you can construct the instance profile credentials object yourself.

```ruby
Aws.config[:credentials] = Aws::InstanceProfileCredentials.new({
  retries: 10,
  http_open_timeout: 5,
  http_read_timeout: 5,
  http_debug_output: Logger.new($stdout),
})

s3 = Aws::S3::Client.new
```

The SDK will automatically rotate instance profile credentials before they expire.

### Assume Role Credentials

If you need to assume a role for credentials, then you can use an instance of `Aws::AssumeRoleCredentials`. To do this, you need to provide an `Aws::STS::Client` that has credentials required for assuming the given role.


```ruby
sts = Aws::STS::Client.new(credentials: your_credentials)

creds = Aws::AssumeRoleCredentials.new(
  # required
  client: sts,
  role_arn: 'role-arn-to-assume',
  role_session_name: 'role-session-name',
  # optional
  policy: "{...}",
  duration_secion
)

ec2 = Aws::EC2::Client.new(credentials: creds)
```

Assume role credentials automatically refresh before they expire.
