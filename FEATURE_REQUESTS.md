# Feature Requests

The purpose of this document is to provide an alternate to GitHub issues for tracking feature requests. This eliminates noise when viewing issues. Items ending up on this page are not guaranteed to make it into the SDK. Items on this page are not sorted by priority.

## Contributing

Please feel free to submit feature requests and add comments or suggestions on existing feature requests. If you are interested in contributing code, please open a dialog with us first. Ideally we can avoid wasted dev cycles by discussing alternatives up front.

We can be found in our [Gitter channel](http://gitter.im/aws/aws-sdk-ruby) and on the [AWS Forum for Ruby](https://forums.aws.amazon.com/forum.jspa?forumID=125).

## Ideas

### Add Interface to Create Custom Waiters

For cases where a particular waiter doesn't exist, this request would provide an
interface with which someone could define a waiter in code, rather than having
to alter the SDK source JSON files.

See [related GitHub issue #1047](https://github.com/aws/aws-sdk-ruby/issues/1047).

### Add Header Whitelist for Request Signing

There are many headers that we blacklist from adding to the signed request. For
example, the blacklist includes some headers that can be legally modified in
transit, increasing the risk of signature errors despite a properly constructed
request.

This feature request is to allow users to manually whitelist a header to be
signed. In essence, that user would be certifying "I know that this header will
not be modified in transit or be otherwise changed, so sign it."

See [related GitHub issue #1051](https://github.com/aws/aws-sdk-ruby/issues/1051).

### Add Injectable Timestamp to Presigner

Since the signing logic uses `now` for the signing time, the
`Aws::S3::Presigner` class will always generate unique URLs, though use cases
can exist for wanting consistency across generated URLs. The ask would be to add
support for an injectable timestamp into signing via the presigner.

See [related GitHub issue #1013](https://github.com/aws/aws-sdk-ruby/issues/1013).

### Add Client-Side Decryption for Amazon EC2 Passwords

Calling `Aws::EC2::Client#get_password_data` returns an encrypted password,
which can be decrypted using the .pem key associated with the instance. The
feature request is to add a parameter that will automatically perform this when
the correct .pem file is provided, most likely with a plugin.

See [related GitHub issue #1003](https://github.com/aws/aws-sdk-ruby/issues/1003).

See the [AWS CLI implementation](https://github.com/aws/aws-cli/blob/develop/awscli/customizations/ec2decryptpassword.py).

### Accept AWS CLI Output for Stubbed Responses

There are some format differences between the input/output shapes of the AWS CLI
and the AWS SDK for Ruby. Supporting a transformation between these two formats
could be useful if using actual AWS CLI output as stubbed output for Ruby tests.

See [related GitHub issue #970](https://github.com/aws/aws-sdk-ruby/issues/970).

### Add SDK Performance Metrics in Amazon CloudWatch

Similar to the
[AWS SDK for Java's feature](https://java.awsblog.com/post/Tx3C0RV4NRRBKTG/Enabling-Metrics-with-the-AWS-SDK-for-Java).

This would create a plugin that takes metrics about API call performance and
possibly other SDK performance metrics, and would enable automatic uploads to
Amazon CloudWatch.

### Add Pagination Support for Amazon CloudSearch Domain Client

The current spec for pagination is not able to support the response structure of
the `Aws::CloudSearchDomain::Client#search` API, for example. The feature
request is to either add a custom CloudSearch Domain pagination plugin, or to
enhance pagination in general to support this type of response.

See [related GitHub issue #984](https://github.com/aws/aws-sdk-ruby/issues/984).

### Add Support for Copying Object Versions to Aws::S3::Resource

You can copy Amazon S3 object versions to a new Amazon S3 object using the
`Aws::S3::Client#copy_from` operation. However, there isn't currently a way to
do this in the resource interface. This is a feature request to add that support
to the `Aws::S3::Resource` interface.

See [related GitHub issue #969](https://github.com/aws/aws-sdk-ruby/issues/969).

### Add to Param Validation Error Message

Currently, parameter validation errors come in the following form:
`expected params[:pipeline_objects][1][:fields][5][:string_value] to be a string`

This could be enhanced by printing the actual value and type of what was passed
to the client.

See [related GitHub issue #991](https://github.com/aws/aws-sdk-ruby/issues/991).

### Add Multipart Download Helper(s)

The SDK already has a multipart upload helper for Amazon S3, but doing a GET request
for very large objects can be problematic using the client directly. Byte ranged
requests allow the user to circumvent the issue, but this could be distilled
into a high level helper class that manages multipart downloads in this manner.

See [related GitHub issue #990](https://github.com/aws/aws-sdk-ruby/issues/990)
for an example related to Amazon S3.

See [related GitHub issue #987](https://github.com/aws/aws-sdk-ruby/issues/987)
for an example related to the Amazon RDS client (similar, not identical,
pattern).

### Add ability to pre-sign a request

To work around limitations of S3 bucket policies, it is necessary to send certain headers
as headers and to not hoist them to querystring of a request URI. This would be useful
functionality in general.

See [related GitHub issue #874](https://github.com/aws/aws-sdk-ruby/issues/874).

### Extract SigV4 Signer into a Gem

More services have interfaces like Amazon Elasticsearch Service where it would be useful to use the signature version 4 interface directly. It is currently marked API private. It should be extracted, polished and released as a separate gem.

See [related GitHub issue #961](https://github.com/aws/aws-sdk-ruby/issues/961).

### Add Proxy Option to Instance Profile Credentials

The SDK ignores environment proxies by default for security reasons. Add the ability
to configure a proxy or to enable the default proxy from the constructor.

See [related GitHub issue #956](https://github.com/aws/aws-sdk-ruby/issues/956).

### Configurable Default Retry Limit for Instance Profile Credentials

The default credential provider chain will check for credentials from the EC2 instance metadata service once before giving up. This is intentional to prevent development environments from hanging for an extended period of time when not running on Amazon EC2.

Defaulting to no retries is problematic for code running on Amazon EC2, especially in a situation where the code is executing early in the boot process and the credentials are not immediately available. This forces developers to create a custom `Aws::InstanceProfileCredentials` object to configure retires, complicating configuration for development environments.

Adding a retry limit for instance profile credentials might be a possible solution.

See [related GitHub issue #717](https://github.com/aws/aws-sdk-ruby/issues/717).

### Add Region Enumeration

Add the ability to programmatically determine what region a specific service is available in. Some useful interfaces include:

* pass the service name; return a list of supported regions
* pass a region; return a list of supported services.
* pass service_name and region; return true/false if region supports that service

This feature would be an interface for the information provided here http://docs.aws.amazon.com/general/latest/gr/rande.html#ct_region

See [related GitHub issue #926](https://github.com/aws/aws-sdk-ruby/issues/926).

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

### Support Raw crednetial objects from AWS API responses in config

See [related GitHub issue #1009](https://github.com/aws/aws-sdk-ruby/issues/1009).
