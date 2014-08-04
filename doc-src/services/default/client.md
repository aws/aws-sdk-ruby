An API client for <%= full_name %>.

# Configuration

You can provide default configuration options to `Aws.config` for
all services, or for only this service. You can additionally provide
configuration options to the constructor. Constructor options always
take precedence.

    # default region for all service
    Aws.config[:region] = 'us-west-2'

    # default region for only this service
    Aws.config[:<%= svc_name.downcase %>] = { region: 'us-west-1' }

    # this has the highest precedence
    Aws::<%= svc_name %>::Client.new(region: 'us-east-1')

At a minimum, you must configure `:region` and `:credentials`.

## Region

If `ENV['AWS_REGION']` is set, this is used as the default region.

The `:region` option is used to build the `:endpoint`. You can override the
endpoint constructed from the region, but the region is still required for
signing requests.

    <%= svc_name.downcase %> = Aws::<%= svc_name %>::Client.new(region: 'us-west-1')
    <%= svc_name.downcase %>.config.endpoint #=> <%= Aws::EndpointProvider.default_provider.resolve(service: api.metadata('endpointPrefix'), region:'us-west-1', scheme:'https').inspect %>

## Credentials

Credentials are used to sign requests sent to AWS. The Ruby SDK
attempts to load credentials from the following locations:

* From the instance profile when running on EC2
* From AWS shared credentials file located at `ENV['HOME']/.aws/credentials`.
* From `ENV['AWS_ACCESS_KEY_ID']` and `ENV['SECRET_ACCESS_KEY']`

If credentials can not be found, they must be configured via `:credentials`:

    credentials = Aws::SharedCredentials.new(
      path: '/path/to/file',
      profile_name: Rails.env)

    Aws::<%= svc_name %>::Client.new(credentials: credentials)

The `:credentials` option should be one of the following types:

* {Aws::Credentials}
* {Aws::SharedCredentials}
* {Aws::InstanceProfileCredentials}

Alternatively, you configure credentials with `:access_key_id` and
`:secret_access_key`:

    # load credentials from disk
    creds = YAML.load(File.read('/path/to/secrets'))

    Aws::<%= svc_name %>::Client.new(
      access_key_id: creds['access_key_id'],
      secret_access_key: creds['secret_access_key']
    )

**It is recommended to never configure credentials statically in your
application.** This makes it difficult to rotate credentials and
easy to commit to source control.

