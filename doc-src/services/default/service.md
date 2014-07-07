This module provides a client for making API requests to <%= full_name %>.

# Aws::<%= svc_name %>::Client

The {Aws::<%= svc_name %>::Client} class provides one-to-one mapping for each API operation.

    <%= svc_name.downcase %> = Aws::<%= svc_name %>::Client.new(region: 'us-east-1')
    <%= svc_name.downcase %>.operation_names
    #=> [<%= default_api.operation_names[0..3].map(&:inspect).join(', ') %>, ...]

Each API operation method accepts a hash of request parameters and returns a response object.

    resp = <%= svc_name.downcase %>.<%= default_api.operation_names.first %>(params)

See {Client} for more information.

# Aws::<%= svc_name %>::Errors

Errors returned from <%= full_name %> are defined in the {Errors} module
and extend {Aws::<%= svc_name %>::Errors::ServiceError}.

    begin
      # do stuff
    rescue Aws::<%= svc_name %>::Errors::ServiceError
      # rescues all errors returned by <%= full_name %>
    end

See {Errors} for more information.
