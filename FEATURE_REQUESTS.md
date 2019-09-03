# Feature Requests

The purpose of this document is to provide an alternate to GitHub issues for tracking feature requests. This eliminates noise when viewing issues. Items ending up on this page are not guaranteed to make it into the SDK. Items on this page are not sorted by priority.

## Contributing

Please feel free to submit feature requests and add comments or suggestions on existing feature requests. If you are interested in contributing code, please open a dialog with us first. Ideally we can avoid wasted dev cycles by discussing alternatives up front.

We can be found in our [Gitter channel](http://gitter.im/aws/aws-sdk-ruby) and on the [AWS Forum for Ruby](https://forums.aws.amazon.com/forum.jspa?forumID=125).

## Ideas

### Credentials

### Add Region Detection from EC2 Metadata

We use instance metadata for credentials, feature request is to also use it for
region resolution.

See [related GitHub issue #1455](https://github.com/aws/aws-sdk-ruby/issues/1455).

### Support Raw credential objects from AWS API responses in config

See [related GitHub issue #1009](https://github.com/aws/aws-sdk-ruby/issues/1009).

### Support ca_bundle in ~/.aws/config

Match CLI support of ca_bundle being specified in config

See [related GitHub issue #1907](https://github.com/aws/aws-sdk-ruby/issues/1907)

### Resource Model, Waiters and Paginators

### Add Interface to Create Custom Waiters

For cases where a particular waiter doesn't exist, this request would provide an
interface with which someone could define a waiter in code, rather than having
to alter the SDK source JSON files.

See [related GitHub issue #1047](https://github.com/aws/aws-sdk-ruby/issues/1047).

### EC2 Route resource identifier issue

`:destination_cidr_block` is not longer an identifier for `Route` resource

See [related Github issue #1630](https://github.com/aws/aws-sdk-ruby/issues/1630)

### Add NatGateways to the Aws::EC2::Vpc Resource Object

See [related GitHub issue #1323](https://github.com/aws/aws-sdk-ruby/issues/1323).

### Add continue_update_rollback to the CloudFormation Stack Resource Object

See [related GitHub issue #1550](https://github.com/aws/aws-sdk-ruby/issues/1550).

### Add Use of list_objects_v2 to the S3 Resource Object

See [related GitHub issue #1335](https://github.com/aws/aws-sdk-ruby/issues/1335).

### Add Waiters for Aws::ElasticBeanstalk

See [related GitHub issue #1259](https://github.com/aws/aws-sdk-ruby/issues/1259).

### Add Waiters for Aws::SSM

See [related GitHub issue #1185](https://github.com/aws/aws-sdk-ruby/issues/1185).

### Enhance Aws::AutoScaling::Resource to Surface Tag Values in Collection

Not all Auto Scaling tag resources surface the value, should be doable with
existing client calls within the resource.

See [related GitHub issue #1145](https://github.com/aws/aws-sdk-ruby/issues/1145).

### Add Support for Copying Object Versions to Aws::S3::Resource

You can copy Amazon S3 object versions to a new Amazon S3 object using the
`Aws::S3::Client#copy_from` operation. However, there isn't currently a way to
do this in the resource interface. This is a feature request to add that support
to the `Aws::S3::Resource` interface.

See [related GitHub issue #969](https://github.com/aws/aws-sdk-ruby/issues/969).

### Add message_group_id to SQS Message Resource Object Definition

See [related GitHub issue #1385](https://github.com/aws/aws-sdk-ruby/issues/1385).

### RDS Resource CreateDBCluster path issue

See [related GitHub issue #1652](https://github.com/aws/aws-sdk-ruby/issues/1652).

### EC2 Resource definition assumes non-empty reservation resources

See [related GitHub issue #1449](https://github.com/aws/aws-sdk-ruby/issues/1449).

### AWS Service

### S3 Presign

### Add Option to Create Unsigned Requests

Add support to make unsigned calls using the SDK. Can be useful for cases such
as anonymously downlading S3 objects that have a `public-read` ACL.

See [related GitHub issue #1149](https://github.com/aws/aws-sdk-ruby/issues/1149).

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

### Add accelerate endpoint support to presigned POST requests

The presigned POST utility does not support pre-signing Amazon S3 acclerated
bucket endpoints. Explore adding an explicit configuration option to enable this,
or determine this by looking at the client configuration.

### Add ability to pre-sign a request

To work around limitations of S3 bucket policies, it is necessary to send certain headers
as headers and to not hoist them to querystring of a request URI. This would be useful
functionality in general.

See [related GitHub issue #874](https://github.com/aws/aws-sdk-ruby/issues/874).

### Port over the ability for extra headers in PresignPost

Port over the feature we have in v1.

See [related GitHub issue #1399](https://github.com/aws/aws-sdk-ruby/issues/1399).

### S3 Multipart

### Add ability to download to an IO object, provide helper to resume download

Provide better streaming download options, imstead of having parts in /tmp
directory, make leave it at the specifc directory and leave options for not
clean up.

See [related GitHub issue #1535](https://github.com/aws/aws-sdk-ruby/issues/1535).

### S3

### Retrieve data from response headers for streaming S3 objects

Pull in data from response headers on Object#get

See [related GitHub issue #1913](https://github.com/aws/aws-sdk-ruby/issues/1913)

### Add Aws::S3::Object#head method

Add method for parity with Client#head_object

See [related GitHub issue #1912](https://github.com/aws/aws-sdk-ruby/issues/1912)

### API Helper

### Handle S3 #exists? Edge Cases

See [related GitHub issue #1267](https://github.com/aws/aws-sdk-ruby/issues/1267).

### Progress callbacks for Amazon S3 Object uploads

To enable users to track file upload process, it would be helpful to support a progress callback for `Aws::S3::Object#upload_file`.

See [related GitHub issue #648](https://github.com/aws/aws-sdk-ruby/issues/648#issuecomment-78246370).

### Aws::Route53 `#list_resource_record_sets` domain name octal

If domain name value contains asterisks, the `#list_resource_record_sets` operation of `Aws::Route53::Client` returns octal in domain name, which is different from [public documentation](http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DomainNameFormat.html?shortFooter=true#domain-name-format-asterisk). SDK could have an optional flag utility for converting this for user.

See [related Github issue #1468](https://github.com/aws/aws-sdk-ruby/issues/1468).

### Add a helper for parsing DynamoDB stream events

See [related GitHub issue #1212](https://github.com/aws/aws-sdk-ruby/issues/1212).

### Enhance documentation for Dynamodb `:simple_attributes` at shared examples

See [related Github issue #1501](https://github.com/aws/aws-sdk-ruby/issues/1501).

### Retry Behavior

### Retry S3 Transfers on BadDigest Error

See [related GitHub issue #1264](https://github.com/aws/aws-sdk-ruby/issues/1264).

### Configurable Default Retry Limit for Instance Profile Credentials

The default credential provider chain will check for credentials from the EC2 instance metadata service once before giving up. This is intentional to prevent development environments from hanging for an extended period of time when not running on Amazon EC2.

Defaulting to no retries is problematic for code running on Amazon EC2, especially in a situation where the code is executing early in the boot process and the credentials are not immediately available. This forces developers to create a custom `Aws::InstanceProfileCredentials` object to configure retires, complicating configuration for development environments.

Adding a retry limit for instance profile credentials might be a possible solution.

See [related GitHub issue #717](https://github.com/aws/aws-sdk-ruby/issues/717).

### Util and Others

### Provide an Interface to Interact With Shared Configuration Values

The SDK uses the Shared Credential and Configuration files at various points
within the default credential provider chain, and other places. However, there
is not currently a way to interact with these raw configuration values. This
request is to expose these values in a consistent and usable way.

See [related GitHub issue #1256](https://github.com/aws/aws-sdk-ruby/issues/1256).

### Expose Raw Exception Response Bodies

The SDK uses first the exception response `__type` field, then the `ErrorCode`
field, to determine the exception's code. However, the related issue shows at
least one case where the `ErrorCode` field would be the more descriptive error.
We cannot change the exception classing behavior now, but exposing the raw
exception response fields could improve the exception handling experience.

See [related GitHub issue #1189](https://github.com/aws/aws-sdk-ruby/issues/1189).

See [related GitHub issue #1376](https://github.com/aws/aws-sdk-ruby/issues/1376).

### Accept AWS CLI Output for Stubbed Responses

There are some format differences between the input/output shapes of the AWS CLI
and the AWS SDK for Ruby. Supporting a transformation between these two formats
could be useful if using actual AWS CLI output as stubbed output for Ruby tests.

See [related GitHub issue #970](https://github.com/aws/aws-sdk-ruby/issues/970).

### Support non-symbolized keys

To support better cross-use with AWS CLI (specifically, borrowing input from --cli-input-json), the
AWS SDK for Ruby would need to support non-symbolized keys.

See [related GitHub issue #1685](https://github.com/aws/aws-sdk-ruby/issues/1685).

### Suppport http client configuration of MessageVerifier

Verifier currently makes http call directly, and does not use SNS client or Aws.config.

See [related GitHub issue #1683](https://github.com/aws/aws-sdk-ruby/issues/1683).
