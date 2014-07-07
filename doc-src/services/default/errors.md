When <%= full_name %> returns an error response, the Ruby SDK constructs and raises an error. These errors have the following ancestors:

* {Aws::<%= svc_name %>::Errors::ServiceError Aws::<%= svc_name %>::Errors::ServiceError}
* {Aws::Errors::ServiceError Aws::Errors::ServiceError}
* `RuntimeError`

You can rescue all <%= svc_name %> errors using `ServiceError`:

    # rescue all errors from <%= full_name %>
    begin
      # do stuff
    rescue Aws::<%= svc_name %>::Errors::ServiceError
      # ...
    end

# Request Context

ServiceError objects have a {Aws::Errors::ServiceError#context #context} method that returns information about the request that generated the error, including:

* `#params` - The request params
* `#operation_name` - Name of the API operation invoked
* `#http_request`
* `#http_response`
* etc ...

See {Seahorse::Client::RequestContext} for more information.

<% if known_errors.count > 0 %>

# Error Classes

You can rescue a specific errors by their error code:

    begin
      # do stuff
    rescue Aws::<%= svc_name %>::Errors::<%= known_errors.first %>
      # ...
    end

Some of the common errors are listed below:

<% known_errors.each do |code| %>
* {<%= code %>}
<% end %>
<% end %>
