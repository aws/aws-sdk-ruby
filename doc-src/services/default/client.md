An API client for <%= full_name %>.

# Configuration

To construct a client, you need to configure a `:region` and `:credentials`.

    <%= svc_name.downcase %> = Aws::<%= svc_name %>::Client.new(
      region: region_name,
      credentials: credentials
    )

## Region

You can configure a default region in the following locations:

* `ENV['AWS_REGION']`
* `Aws.config[:region]`

[Go here for a list of supported regions.](http://docs.aws.amazon.com/general/latest/gr/rande.html)

## Credentials

Credentials are loaded automatically from the following locations:

* `ENV['AWS_ACCESS_KEY']` and `ENV['AWS_SECRET_ACCESS_KEY']`
* `Aws.config[:credentials]`
* Shared credentials file, `~/.aws/credentials`
* EC2 Instance profile

You can also construct a credentials object from one of the following
classes:

* {Credentials}
* {SharedCredentials}
* {InstanceProfileCredentials}
* {AssumeRoleCredentials}

Alternatively, you configure credentials with `:access_key_id` and
`:secret_access_key`:

    # load credentials from disk
    creds = YAML.load(File.read('/path/to/secrets'))

    Aws::<%= svc_name %>::Client.new(
      access_key_id: creds['access_key_id'],
      secret_access_key: creds['secret_access_key']
    )

**Always load your credentials from outside your application.** Avoid
configuring credentials statically and never commit them to source control.
