An API client for <%= full_name %>. To construct a client, you need to configure a `:region` and `:credentials`.

    <%= svc_name.downcase %> = Aws::<%= svc_name %>::Client.new(
      region: region_name,
      credentials: credentials,
      # ...
    )

See {#initialize} for a full list of supported configuration options.

## Region

You can configure a default region in the following locations:

* `ENV['AWS_REGION']`
* `Aws.config[:region]`

[Go here for a list of supported regions.](http://docs.aws.amazon.com/general/latest/gr/rande.html)

## Credentials

Default credentials are loaded automatically from the following locations:

* `ENV['AWS_ACCESS_KEY_ID']` and `ENV['AWS_SECRET_ACCESS_KEY']`
* `Aws.config[:credentials]`
* The shared credentials ini file at `~/.aws/credentials` ([more information](http://blogs.aws.amazon.com/security/post/Tx3D6U6WSFGOK2H/A-New-and-Standardized-Way-to-Manage-Credentials-in-the-AWS-SDKs))
* From an instance profile when running on EC2

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
