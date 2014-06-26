A service client builder for <%= full_name %>.

## Configuration

You can specify global default configuration options via `Aws.config`.  Values
in `Aws.config` are used as default options for all services.

    Aws.config[:region] = 'us-west-2'

You can specify service specific defaults as well:

    Aws.config[:<%= svc_name.downcase %>] = { region: 'us-west-1' }

This has a higher precendence that values at the root of `Aws.config` and will
only applied to objects constructed by {new}.

## Regions & Endpoints

You must configure a default region with `Aws.config` or provide a `:region`
when creating a service client.  The regions listed below will connect
to the following endpoints:

<%= default_api.metadata['regional_endpoints'].map { |r,e| "* `#{r}` - #{e}"}.join("\n") %>

## API Versions

Calling {new} will construct and return a versioned service client. The client
will default to the most recent API version. You can also specify an API version:

    <%= svc_name.downcase %> = Aws::<%= svc_name %>.new # Aws::<%= svc_name %>::V<%= default_api.version.gsub(/-/, '') %>
    <%= svc_name.downcase %> = Aws::<%= svc_name %>.new(api_version: '<%= oldest_api.version %>') # Aws::<%= svc_name %>::V<%= oldest_api.version.gsub(/-/, '') %>

The following API versions are available for Aws::<%= svc_name %>:

<%= apis.map{ |a| "* {V#{a.version.gsub(/-/, '')} #{a.version}}" }.join("\n") %>

You can specify the API version for the client by passing `:api_version` to {new}.
  DOCSTRING
