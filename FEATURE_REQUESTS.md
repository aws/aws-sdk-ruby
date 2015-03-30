# Feature Requests

The purpose of this document is to provide an alternate to GitHub issues for tracking feature requests. This eliminates noise when viewing issues. Items ending up on this page are not guaranteed to make it into the SDK. Items on this page are not sorted by priority.

## Contributing

Please feel free to sumbmit feature requests and add comments or suggestions on existing feature requests. If you are interested in contributing code, please open a dialog with us first. Ideally we can avoid wasted dev cycles by dicussing alternatives up front.

We can be found in our [Gitter channel](http://gitter.im/aws/aws-sdk-ruby) and on the [AWS Forum for Ruby](https://forums.aws.amazon.com/forum.jspa?forumID=125).

## Ideas

### Filtering Sensitive values from Logger

When using the built in log formatter, you can have request parameters logged. Some of these values may be sensitive and should be filtered before hitting the log. Some possible solutions include:

* Adding a backlist of sensitive parameter names, ala Rails style:

  ```ruby
  config.filter_parameters += [:password, :password_confirmation, :credit_card]
  ```

* Providing callbacks that are given request parameters with a context. The callback could filter and return values prior to logging allowing more fine-grained control of filtering.

See [related GitHub issue #726](https://github.com/aws/aws-sdk-ruby/issues/726).

### Configurable Default Retry Limit for Instance Profile Credentials

The default credential provider chain will check for credentials from the EC2 instance metadata service once before giving up. This is intentional to prevent development environments from hanging for an extended period of time when not running on Amazon EC2.

Defaulting to no retries is problematic for code running on Amazon EC2, especially in a situation where the code is executing early in the boot process and the credentials are not immediately available. This forces developers to create a custom `Aws::InstanceProfileCredentials` object to configure retires, complicating configuration for development environments.

Adding a retry limit for instance profile credentials might be a possible solution.

See [related GitHub issue #717](https://github.com/aws/aws-sdk-ruby/issues/717).

### Signed CloudFront URLs

Amazon CloudFront supports pre-signed URLs, similar to those used by Amazon S3. It would be helpful to have a pre-signed url builder for SDK users.

See [related GitHub issue #700](https://github.com/aws/aws-sdk-ruby/issues/700).

### Adding `#exists?` method to Resource Classes

Version 1 of the AWS SDK for Ruby had hand-coded methods for each resource class that would return a boolean value as a response to `#exists?`. These methods would typically call an API operation to describe the resource, rescuing errors as appropriate.

No such functionality exists in the version 2 SDK currently. It would be ideal to avoid hand-coding these methods. One possible solution is to add waiters for each resource type, e.g. `:bucket_exists`. The resource classes could be linked to their exists waiter. The resource class would poll the waiter exactly once, returning a true or false value.

This approach has the benefit of expanding waiter coverage and providing a reliable `#exists?` method.

See [related GitHub issue #696](https://github.com/aws/aws-sdk-ruby/issues/696).

### Aws::ElasticBeanstalk::Client Waiters

There are currently no waiters for `Aws::ElasticBeanstalk::Client`. Particular useful would be environment states.

See [related GitHub issue aws/aws-sdk-core-ruby#216](https://github.com/aws/aws-sdk-core-ruby/issues/216).

### Aws::ElasticBeanstalk::Client Waiters

There are currently no waiters for `Aws::ECS::Client`.

See [related GitHub issue #756](https://github.com/aws/aws-sdk-ruby/issues/756).

### Progress callbacks for Amazon S3 Object uploads

To enable users to track file upload process, it would be helpful to support a progress callback for `Aws::S3::Object#upload_file`.

See [related Github issue #648](https://github.com/aws/aws-sdk-ruby/issues/648#issuecomment-78246370).
