# Feature Requests

The purpose of this document is to provide an alternate to GitHub issues for tracking feature requests. This eliminates noise when viewing issues. Items ending up on this page are not guaranteed to make it into the SDK. Items on this page are not sorted by priority.

## Contributing

Please feel free to submit feature requests and add comments or suggestions on existing feature requests. If you are interested in contributing code, please open a dialog with us first. Ideally we can avoid wasted dev cycles by discussing alternatives up front.

We can be found in our [Gitter channel](http://gitter.im/aws/aws-sdk-ruby) and on the [AWS Forum for Ruby](https://forums.aws.amazon.com/forum.jspa?forumID=125).

## Ideas

### Add Proxy Option to Instance Profile Credentials

The SDK ignores environment proxies by default for security reasons. Add the ability
to configure a proxy or to enable the default proxy from the constructor.

See [related GitHub issue #956](https://github.com/aws/aws-sdk-ruby/issues/956).

### Configurable Default Retry Limit for Instance Profile Credentials

The default credential provider chain will check for credentials from the EC2 instance metadata service once before giving up. This is intentional to prevent development environments from hanging for an extended period of time when not running on Amazon EC2.

Defaulting to no retries is problematic for code running on Amazon EC2, especially in a situation where the code is executing early in the boot process and the credentials are not immediately available. This forces developers to create a custom `Aws::InstanceProfileCredentials` object to configure retires, complicating configuration for development environments.

Adding a retry limit for instance profile credentials might be a possible solution.

See [related GitHub issue #717](https://github.com/aws/aws-sdk-ruby/issues/717).

### Signed CloudFront URLs

Amazon CloudFront supports pre-signed URLs, similar to those used by Amazon S3. It would be helpful to have a pre-signed url builder for SDK users.

See [related GitHub issue #700](https://github.com/aws/aws-sdk-ruby/issues/700).

### Progress callbacks for Amazon S3 Object uploads

To enable users to track file upload process, it would be helpful to support a progress callback for `Aws::S3::Object#upload_file`.

See [related GitHub issue #648](https://github.com/aws/aws-sdk-ruby/issues/648#issuecomment-78246370).

### Aws::MachineLearning Booleans

The `#predict` operation of `Aws::MachineLearning::Client` accepts a map of string-to-strings. When a user wishes to provide a boolean value, the API expects the boolean to be "1" or "0". It would be helpful if a plugin were added that converted the boolean values of the record map from `true` and `false` to their expected string formats.

See [related GitHub issue #878](https://github.com/aws/aws-sdk-ruby/issues/878).

### Support Assume Role Credentials from Shared Credentials File

You can currently only configure an access key id, secret access key, and session token in the shared credentials file, `~/.aws/credentials`. It would be useful if you could also specify a role to assume similar to how the CLI supports.

See [related GitHub issue #910](https://github.com/aws/aws-sdk-ruby/issues/910).
