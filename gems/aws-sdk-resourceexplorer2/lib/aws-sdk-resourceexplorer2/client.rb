# frozen_string_literal: true

# This is generated code!

require_relative 'plugins/endpoint'
require 'smithy-client/plugins/checksum_required'
require 'smithy-client/plugins/content_length'
require 'smithy-client/plugins/default_params'
require 'smithy-client/plugins/host_prefix'
require 'smithy-client/plugins/idempotency_token'
require 'smithy-client/plugins/logging'
require 'smithy-client/plugins/net_http'
require 'smithy-client/plugins/pageable_response'
require 'smithy-client/plugins/param_converter'
require 'smithy-client/plugins/param_validator'
require 'smithy-client/plugins/raise_response_errors'
require 'smithy-client/plugins/request_compression'
require 'smithy-client/plugins/resolve_auth'
require 'smithy-client/plugins/response_target'
require 'smithy-client/plugins/retry_errors'
require 'smithy-client/plugins/sign_requests'
require 'smithy-client/plugins/stub_responses'
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/rest_json_protocol'
require 'aws-sdk-core/plugins/sigv4'

module Aws::ResourceExplorer2
  # An API client for Aws::ResourceExplorer2.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::ResourceExplorer

    add_plugin(::Aws::ResourceExplorer2::Plugins::Endpoint)
    add_plugin(Smithy::Client::Plugins::ChecksumRequired)
    add_plugin(Smithy::Client::Plugins::ContentLength)
    add_plugin(Smithy::Client::Plugins::DefaultParams)
    add_plugin(Smithy::Client::Plugins::HostPrefix)
    add_plugin(Smithy::Client::Plugins::IdempotencyToken)
    add_plugin(Smithy::Client::Plugins::Logging)
    add_plugin(Smithy::Client::Plugins::NetHTTP)
    add_plugin(Smithy::Client::Plugins::PageableResponse)
    add_plugin(Smithy::Client::Plugins::ParamConverter)
    add_plugin(Smithy::Client::Plugins::ParamValidator)
    add_plugin(Smithy::Client::Plugins::RaiseResponseErrors)
    add_plugin(Smithy::Client::Plugins::RequestCompression)
    add_plugin(Smithy::Client::Plugins::ResolveAuth)
    add_plugin(Smithy::Client::Plugins::ResponseTarget)
    add_plugin(Smithy::Client::Plugins::RetryErrors)
    add_plugin(Smithy::Client::Plugins::SignRequests)
    add_plugin(Smithy::Client::Plugins::StubResponses)
    add_plugin(Aws::Core::Plugins::RegionalEndpoints)
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
    add_plugin(Aws::Core::Plugins::RestJsonProtocol)
    add_plugin(Aws::Core::Plugins::SigV4)

    # @param options [Hash] Client options
    # @option options [String] :access_key_id
    # @option options [String] :account_id
    # @option options [String] :account_id_endpoint_mode
    #  The account ID endpoint mode to use. This can be one of the following values:
    #  * `preferred` - (default) Use the account ID endpoint if available, otherwise use the standard endpoint.
    #  * `disabled` - Never use the account ID endpoint, only use the standard endpoint.
    #  * `required` - Always use the account ID endpoint. If the account ID cannot be retrieved from credentials, an error is raised.
    # @option options [Boolean] :adaptive_retry_wait_to_fill (true)
    #  When true, the request will sleep until there is sufficient client side capacity to retry
    #  the request. When false, the request will raise a `CapacityNotAvailableError` and will
    #  not retry instead of sleeping.
    # @option options [#resolve(context)] :auth_resolver (AuthResolver.new)
    #  An object that resolves authentication schemes for request signing.
    # @option options [Array<String>] :auth_scheme_preference
    #  An ordered list of preferred authentication schemes to use when making a request.
    #  The items in the list must be a fully qualified scheme IDs, such as `smithy.api#httpBearerAuth`.
    # @option options [Boolean] :convert_params (true)
    #  When `true`, request parameters are coerced into the required types.
    # @option options [#identity] :credentials_provider
    #  The credentials provider used to resolve credentials. Any object that responds to `#identity`
    #  and returns a {Aws::Core::Credentials}.
    # @option options [Boolean] :disable_host_prefix_injection
    #  When `true`, the SDK will not prepend the modeled host prefix to the endpoint.
    # @option options [Boolean] :disable_request_compression
    #  When `true`, the request body will not be compressed for supported operations.
    # @option options [String] :endpoint
    #  The endpoint to send requests to.
    #  The endpoint should be a URI formatted like "http://example.com:123"'
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::ResourceExplorer2::EndpointProvider)
    #  An object that provides an endpoint to use for the request.
    # @option options [String] :http_ca_file
    #  The path to a CA certification file in PEM format. Defaults to `nil` which uses
    #  the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-ca_file Net::HTTP#ca_file}.
    # @option options [String] :http_ca_path
    #  The path of to CA directory containing certification files in PEM format. Defaults to
    #  `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-ca_path Net::HTTP#ca_path}.
    # @option options [OpenSSL::X509::Certificate] :http_cert
    #  Sets the OpenSSL::X509::Certificate object to be used for client certification. Defaults
    #  to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-cert Net::HTTP#cert}.
    # @option options [OpenSSL::X509::Store] :http_cert_store
    #  Sets the OpenSSL::X509::Store to be used for verifying peer certificate. Defaults to
    #  `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-cert_store Net::HTTP#cert_store}.
    # @option options [Numeric] :http_continue_timeout
    #  Sets the continue timeout value, which is the number of seconds to wait for an
    #  expected 100 Continue response. If the HTTP object does not receive a response
    #  in this many seconds it sends the request body. Defaults to `nil` which uses the
    #  Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-continue_timeout Net::HTTP#continue_timeout}.
    # @option options [Boolean] :http_debug_output
    #  When `true`, Net::HTTP debug output will be sent to the configured logger.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#method-i-set_debug_output Net::HTTP#set_debug_output}.
    # @option options [Numeric] :http_keep_alive_timeout
    #  The number of seconds to keep the connection open after a request is sent. If a
    #  new request is made during the given interval, the still-open connection is used;
    #  otherwise the connection will have been closed and a new connection is opened.
    #  Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-keep_alive_timeout Net::HTTP#keep_alive_timeout}.
    # @option options [OpenSSL::PKey::RSA, OpenSSL::PKey::DSA] :http_key
    #  Sets the OpenSSL::PKey object to be used for client private key. Defaults to `nil` which
    #  uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-key Net::HTTP#key}.
    # @option options [Numeric] :http_open_timeout
    #  The number of seconds to wait for a connection to open. If the connection is not
    #  made in the given interval, an exception is raised. Defaults to `nil` which uses
    #  the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-open_timeout Net::HTTP#open_timeout}.
    # @option options [URI::HTTP, String] :http_proxy
    #  A proxy to send requests through. Formatted like 'http://proxy.com:123'.
    # @option options [Numeric] :http_read_timeout
    #  The number of seconds to wait for one block to be read (via one read(2) call).
    #  Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-read_timeout Net::HTTP#read_timeout}.
    # @option options [Numeric] :http_ssl_timeout
    #  Sets the SSL timeout seconds. Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-ssl_timeout Net::HTTP#ssl_timeout}.
    # @option options [Integer] :http_verify_mode (OpenSSL::SSL::VERIFY_PEER)
    #  Sets the verify mode for SSL. Defaults to `OpenSSL::SSL::VERIFY_PEER`.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-verify_mode Net::HTTP#verify_mode}.
    # @option options [Numeric] :http_write_timeout
    #  The number of seconds to wait for one block to be written (via one write(2) call).
    #  Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-write_timeout Net::HTTP#write_timeout}.
    # @option options [Smithy::Client::LogFormatter] :log_formatter (Aws::Log::Formatter.default)
    #  The log formatter used by the logger.
    # @option options [Symbol] :log_level (:info)
    #  The log level to send messages to the logger at.
    # @option options [Logger] :logger
    #  The Logger instance to send log messages to. If this option is not set, logging is disabled.
    # @option options [String] :profile (default)
    #  Used when loading credentials from the shared config file and credentials file
    #  at ~/.aws/config and ~/.aws/credentials, respectively.  When not specified, 'default' is used.
    # @option options [Boolean] :raise_response_errors (true)
    #  When `true`, response errors are raised. When `false`, the error is placed on the
    #  output in the {Smithy::Client::Response#error error accessor}.
    # @option options [String] :region
    #  The AWS region to connect to. The configured `:region` is used to determine the service `:endpoint`.
    #  When not provided, a default region is searched for in the following locations:
    #  * `Aws.config[:region]`
    #  * `ENV['AWS_REGION']`
    #  * `ENV['AWS_DEFAULT_REGION']`
    #  * `~/.aws/credentials` as `region` under a profile
    #  * `~/.aws/config` as `region` under a profile
    # @option options [Integer] :request_min_compression_size_bytes (10240)
    #  The minimum size in bytes that triggers compression for request bodies.
    #  The value must be non-negative integer value between 0 and 10,485,780 bytes inclusive.
    # @option options [lambda] :retry_backoff (Smithy::Client::Retry::EXPONENTIAL_BACKOFF)
    #  A callable object that calculates a backoff delay for a retry attempt. The callable
    #  should accept a single argument, `attempts`, that represents the number of attempts
    #  that have been made. Used in the `standard` and `adaptive` retry strategies.
    # @option options [Integer] :retry_max_attempts (3)
    #  The maximum number attempts that will be made for a single request, including
    #  the initial attempt. Used in the `standard` and `adaptive` retry strategies.
    # @option options [String, Class] :retry_strategy ('standard')
    #  The retry strategy to use when retrying errors. This can be one of the following:
    #  * `standard` - A standardized retry strategy used by the AWS SDKs. This includes support
    #    for retry quotas, which limit the number of unsuccessful retries a client can make.
    #  * `adaptive` - An experimental retry strategy that includes all the functionality of the
    #    `standard` strategy along with automatic client side throttling. This is a provisional
    #    strategy that may change behavior in the future.
    #  * Any instance of a class that implements the following methods:
    #    - `acquire_initial_retry_token(token_scope)`
    #    - `refresh_retry_token(retry_token, error_info)`
    #    - `record_success(retry_token)`
    # @option options [String] :sdk_ua_app_id
    #  A unique and opaque application ID that is appended to the User-Agent header as app/sdk_ua_app_id.
    #  It should have a maximum length of 50. This variable is sourced from environment variable
    #  `AWS_SDK_UA_APP_ID` or the shared config profile attribute `sdk_ua_app_id`.
    # @option options [String] :secret_access_key
    # @option options [String] :session_token
    # @option options [Boolean] :stub_responses
    #  When `true`, the client will return stubbed responses instead of networking requests.
    #  By default fake responses are generated and returned. You can specify the response data
    #  to return or errors to raise by calling {Stubs#stub_responses}.
    #  @see Stubs
    # @option options [Boolean] :use_dualstack_endpoint
    #  When set to `true`, dualstack enabled endpoints (with `.aws` TLD) will be used if available.
    #  This option can also be configured in the following locations:
    #  * `ENV['AWS_USE_DUALSTACK_ENDPOINT']`
    #  * `~/.aws/credentials` as `use_dualstack_endpoint` under a profile
    #  * `~/.aws/config` as `use_dualstack_endpoint` under a profile
    # @option options [Boolean] :use_fips_endpoint
    #  When set to `true`, FIPS compatible endpoints will be used if available.
    #  This option can also be configured in the following locations:
    #  * `ENV['AWS_USE_FIPS_ENDPOINT']`
    #  * `~/.aws/credentials` as `use_fips_endpoint` under a profile
    #  * `~/.aws/config` as `use_fips_endpoint` under a profile
    # @option options [Boolean] :validate_params (true)
    #  When `true`, request parameters are validated before sending the request.
    def initialize(*options)
      super
    end

    # <p>Sets the specified view as the default for the Amazon Web Services Region in which you call this
    #             operation. When a user performs a <a>Search</a> that doesn't explicitly
    #             specify which view to use, then Amazon Web Services Resource Explorer automatically chooses this default view for
    #             searches performed in this Amazon Web Services Region.</p>
    #          <p>If an Amazon Web Services Region doesn't have a default view 
    #     configured, then users must explicitly specify a view with every <code>Search</code> 
    #     operation performed in that Region.</p>
    # @param [Hash, Types::AssociateDefaultViewOperationInput] params
    # @option params [String] :view_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon resource name (ARN)</a> of the view to set as the default for the Amazon Web Services Region and
    #               Amazon Web Services account in which you call this operation. The specified view must already exist in
    #               the called Region.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     view_arn: "String", # required
    #   }
    #   options = {}
    #   response = client.associate_default_view(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     view_arn: "String"
    #   }
    # @return [Types::AssociateDefaultViewOperationOutput]
    def associate_default_view(params = {}, options = {})
      request = build_request(:associate_default_view, params)
      request.send_request(options)
    end

    # <p>Retrieves details about a list of views.</p>
    # @param [Hash, Types::BatchGetViewOperationInput] params
    # @option params [Array<String>] :view_arns
    #   <p>A list of <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon resource names (ARNs)</a> that identify the views you want details for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     view_arns: ["String"]
    #   }
    #   options = {}
    #   response = client.batch_get_view(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     views: [
    #       {
    #         view_arn: "String",
    #         owner: "String",
    #         last_updated_at: Time.now,
    #         scope: "String",
    #         included_properties: [
    #           {
    #             name: "String", # required
    #           }
    #         ],
    #         filters: {
    #           filter_string: "String", # required
    #         }
    #       }
    #     ],
    #     errors: [
    #       {
    #         view_arn: "String", # required
    #         error_message: "String", # required
    #       }
    #     ]
    #   }
    # @return [Types::BatchGetViewOperationOutput]
    def batch_get_view(params = {}, options = {})
      request = build_request(:batch_get_view, params)
      request.send_request(options)
    end

    # <p>Turns on Amazon Web Services Resource Explorer in the Amazon Web Services Region in which you called this operation by creating
    #             an index. Resource Explorer begins discovering the resources in this Region and stores the details
    #             about the resources in the index so that they can be queried by using the <a>Search</a> operation. You can create only one index in a Region.</p>
    #          <note>
    #             <p>This operation creates only a <i>local</i> index. To promote the
    #                 local index in one Amazon Web Services Region into the aggregator index for the Amazon Web Services account, use the
    #                     <a>UpdateIndexType</a> operation. For more information, see <a href="https://docs.aws.amazon.com/resource-explorer/latest/userguide/manage-aggregator-region.html">Turning on cross-Region search by creating an aggregator index</a> in the
    #                     <i>Amazon Web Services Resource Explorer User Guide</i>.</p>
    #          </note>
    #          <p>For more details about what happens when you turn on Resource Explorer in an Amazon Web Services Region, see
    #                 <a href="https://docs.aws.amazon.com/resource-explorer/latest/userguide/manage-service-activate.html">Turn
    #                 on Resource Explorer to index your resources in an Amazon Web Services Region</a> in the
    #                 <i>Amazon Web Services Resource Explorer User Guide</i>.</p>
    #          <p>If this is the first Amazon Web Services Region in which you've created an index for Resource Explorer, then
    #             this operation also <a href="https://docs.aws.amazon.com/resource-explorer/latest/userguide/security_iam_service-linked-roles.html">creates a
    #                 service-linked role</a> in your Amazon Web Services account that allows Resource Explorer to enumerate
    #             your resources to populate the index.</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <b>Action</b>:
    #                         <code>resource-explorer-2:CreateIndex</code>
    #                </p>
    #                <p>
    #                   <b>Resource</b>: The ARN of the index (as it will
    #                     exist after the operation completes) in the Amazon Web Services Region and account in which
    #                     you're trying to create the index. Use the wildcard character (<code>*</code>)
    #                     at the end of the string to match the eventual UUID. For example, the following
    #                         <code>Resource</code> element restricts the role or user to creating an
    #                     index in only the <code>us-east-2</code> Region of the specified account.</p>
    #                <p>
    #                   <code>"Resource":
    #                             "arn:aws:resource-explorer-2:us-west-2:<i>&lt;account-id&gt;</i>:index/*"</code>
    #                </p>
    #                <p>Alternatively, you can use <code>"Resource": "*"</code> to allow the role or
    #                     user to create an index in any Region.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>Action</b>:
    #                         <code>iam:CreateServiceLinkedRole</code>
    #                </p>
    #                <p>
    #                   <b>Resource</b>: No specific resource (*). </p>
    #                <p>This permission is required only the first time you create an index to turn on
    #                     Resource Explorer in the account. Resource Explorer uses this to create the <a href="https://docs.aws.amazon.com/resource-explorer/latest/userguide/security_iam_service-linked-roles.html">service-linked
    #                         role needed to index the resources in your account</a>. Resource Explorer uses the
    #                     same service-linked role for all additional indexes you create
    #                     afterwards.</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::CreateIndexOperationInput] params
    # @option params [String] :client_token
    #   <p>This value helps ensure idempotency. Resource Explorer uses this value to prevent the
    #           accidental creation of duplicate versions. We recommend that you generate a <a href="https://wikipedia.org/wiki/Universally_unique_identifier">UUID-type
    #           value</a> to ensure the uniqueness of your index.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The specified tags are attached only to the index created in this Amazon Web Services Region. The
    #               tags aren't attached to any of the resources listed in the index.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "String",
    #     tags: {
    #       "String" => "String"
    #     }
    #   }
    #   options = {}
    #   response = client.create_index(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "String",
    #     state: "IndexState",
    #     created_at: Time.now
    #   }
    # @return [Types::CreateIndexOperationOutput]
    def create_index(params = {}, options = {})
      request = build_request(:create_index, params)
      request.send_request(options)
    end

    # <p>Creates a view that users can query by using the <a>Search</a> operation.
    #             Results from queries that you make using this view include only resources that match the
    #             view's <code>Filters</code>. For more information about Amazon Web Services Resource Explorer views, see <a href="https://docs.aws.amazon.com/resource-explorer/latest/userguide/manage-views.html">Managing views</a>
    #             in the <i>Amazon Web Services Resource Explorer User Guide</i>.</p>
    #          <p>Only the principals with an IAM identity-based policy that grants <code>Allow</code>
    #             to the <code>Search</code> action on a <code>Resource</code> with the <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon resource name (ARN)</a> of
    #             this view can <a>Search</a> using views you create with this
    #             operation.</p>
    # @param [Hash, Types::CreateViewOperationInput] params
    # @option params [String] :client_token
    #   <p>This value helps ensure idempotency. Resource Explorer uses this value to prevent the
    #           accidental creation of duplicate versions. We recommend that you generate a <a href="https://wikipedia.org/wiki/Universally_unique_identifier">UUID-type
    #           value</a> to ensure the uniqueness of your views.</p>
    # @option params [String] :view_name
    #   <p>The name of the new view. This name appears in the list of views in Resource Explorer.</p>
    #            <p>The name must be no more than 64 characters long, and can include letters, digits, and
    #               the dash (-) character. The name must be unique within its Amazon Web Services Region.</p>
    # @option params [Array<Types::IncludedProperty>] :included_properties
    #   <p>Specifies optional fields that you want included in search results from this
    #           view. It is a list of objects that each describe a field to include.</p>
    #            <p>The default is an empty list, with no optional fields included in the results.</p>
    # @option params [String] :scope
    #   <p>The root ARN of the account, an organizational unit (OU), or an organization ARN. If
    #               left empty, the default is account.</p>
    # @option params [Types::SearchFilter] :filters
    #   <p>An array of strings that specify which resources are included in the results of 
    #               queries made using this view. When you use this view in a <a>Search</a> 
    #               operation, the filter string is combined with the search's <code>QueryString</code> 
    #               parameter using a logical <code>AND</code> operator.</p>
    #            <p>For information about the supported syntax, see <a href="https://docs.aws.amazon.com/resource-explorer/latest/userguide/using-search-query-syntax.html">Search query reference for
    #                   Resource Explorer</a> in the <i>Amazon Web Services Resource Explorer User Guide</i>.</p>
    #            <important>
    #               <p>This query string in the context of this operation supports only <a href="https://docs.aws.amazon.com/resource-explorer/latest/userguide/using-search-query-syntax.html#query-syntax-filters">filter
    #                       prefixes</a> with optional <a href="https://docs.aws.amazon.com/resource-explorer/latest/userguide/using-search-query-syntax.html#query-syntax-operators">operators</a>. It doesn't support free-form text. For example, the 
    #                       string <code>region:us* service:ec2 -tag:stage=prod</code> includes all Amazon EC2 
    #                       resources in any Amazon Web Services Region that begins with the letters <code>us</code> and is
    #                       <i>not</i> tagged with a key <code>Stage</code> that has the value
    #                       <code>prod</code>.</p>
    #            </important>
    # @option params [Hash<String, String>] :tags
    #   <p>Tag key and value pairs that are attached to the view.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "String",
    #     view_name: "ViewName", # required
    #     included_properties: [
    #       {
    #         name: "String", # required
    #       }
    #     ],
    #     scope: "String",
    #     filters: {
    #       filter_string: "String", # required
    #     },
    #     tags: {
    #       "String" => "String"
    #     }
    #   }
    #   options = {}
    #   response = client.create_view(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     view: {
    #       view_arn: "String",
    #       owner: "String",
    #       last_updated_at: Time.now,
    #       scope: "String",
    #       included_properties: [
    #         {
    #           name: "String", # required
    #         }
    #       ],
    #       filters: {
    #         filter_string: "String", # required
    #       }
    #     }
    #   }
    # @return [Types::CreateViewOperationOutput]
    def create_view(params = {}, options = {})
      request = build_request(:create_view, params)
      request.send_request(options)
    end

    # <p>Deletes the specified index and turns off Amazon Web Services Resource Explorer in the specified Amazon Web Services Region.
    #             When you delete an index, Resource Explorer stops discovering and indexing resources in that
    #             Region. Resource Explorer also deletes all views in that Region. These actions occur as
    #             asynchronous background tasks. You can check to see when the actions are complete by
    #             using the <a>GetIndex</a> operation and checking the <code>Status</code>
    #             response value.</p>
    #          <note>
    #             <p>If the index you delete is the aggregator index for the Amazon Web Services account, you must
    #                 wait 24 hours before you can promote another local index to be the
    #                 aggregator index for the account. Users can't perform account-wide searches using
    #                 Resource Explorer until another aggregator index is configured.</p>
    #          </note>
    # @param [Hash, Types::DeleteIndexOperationInput] params
    # @option params [String] :arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon resource name (ARN)</a> of the index that you want to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "String", # required
    #   }
    #   options = {}
    #   response = client.delete_index(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "String",
    #     state: "IndexState",
    #     last_updated_at: Time.now
    #   }
    # @return [Types::DeleteIndexOperationOutput]
    def delete_index(params = {}, options = {})
      request = build_request(:delete_index, params)
      request.send_request(options)
    end

    # <p>Deletes the specified view.</p>
    #          <p>If the specified view is the default view for its Amazon Web Services Region, then all <a>Search</a> operations in that Region must explicitly specify the view to use
    #             until you configure a new default by calling the <a>AssociateDefaultView</a>
    #             operation.</p>
    # @param [Hash, Types::DeleteViewOperationInput] params
    # @option params [String] :view_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon resource name (ARN)</a> of the view that you want to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     view_arn: "String", # required
    #   }
    #   options = {}
    #   response = client.delete_view(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     view_arn: "String"
    #   }
    # @return [Types::DeleteViewOperationOutput]
    def delete_view(params = {}, options = {})
      request = build_request(:delete_view, params)
      request.send_request(options)
    end

    # <p>After you call this operation, the affected Amazon Web Services Region no longer has a default view.
    #             All <a>Search</a> operations in that Region must explicitly specify a view or
    #             the operation fails. You can configure a new default by calling the <a>AssociateDefaultView</a> operation.</p>
    #          <p>If an Amazon Web Services Region doesn't have a default view 
    #     configured, then users must explicitly specify a view with every <code>Search</code> 
    #     operation performed in that Region.</p>
    # @param [Hash, Smithy::Schema::EmptyStructure] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.disassociate_default_view(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def disassociate_default_view(params = {}, options = {})
      request = build_request(:disassociate_default_view, params)
      request.send_request(options)
    end

    # <p>Retrieves the status of your account's Amazon Web Services service access, and validates the service
    #             linked role required to access the multi-account search feature. Only the management
    #             account can invoke this API call. </p>
    # @param [Hash, Smithy::Schema::EmptyStructure] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_account_level_service_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     org_configuration: {
    #       aws_service_access_status: "AWSServiceAccessStatus", # required
    #       service_linked_role: "String"
    #     }
    #   }
    # @return [Types::GetAccountLevelServiceConfigurationOutput]
    def get_account_level_service_configuration(params = {}, options = {})
      request = build_request(:get_account_level_service_configuration, params)
      request.send_request(options)
    end

    # <p>Retrieves the Amazon Resource Name (ARN) of the view that is the default for the
    #             Amazon Web Services Region in which you call this operation. You can then call <a>GetView</a> to retrieve the details of that view.</p>
    # @param [Hash, Smithy::Schema::EmptyStructure] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_default_view(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     view_arn: "String"
    #   }
    # @return [Types::GetDefaultViewOperationOutput]
    def get_default_view(params = {}, options = {})
      request = build_request(:get_default_view, params)
      request.send_request(options)
    end

    # <p>Retrieves details about the Amazon Web Services Resource Explorer index in the Amazon Web Services Region in which you invoked
    #             the operation.</p>
    # @param [Hash, Smithy::Schema::EmptyStructure] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_index(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "String",
    #     type: "IndexType",
    #     state: "IndexState",
    #     replicating_from: ["String"],
    #     replicating_to: ["String"],
    #     created_at: Time.now,
    #     last_updated_at: Time.now,
    #     tags: {
    #       "String" => "String"
    #     }
    #   }
    # @return [Types::GetIndexOperationOutput]
    def get_index(params = {}, options = {})
      request = build_request(:get_index, params)
      request.send_request(options)
    end

    # <p>Retrieves details of the specified <a href="https://docs.aws.amazon.com/resource-explorer/latest/userguide/aws-managed-views.html">Amazon Web Services-managed view</a>. </p>
    # @param [Hash, Types::GetManagedViewInput] params
    # @option params [String] :managed_view_arn
    #   <p>The Amazon resource name (ARN) of the managed view.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     managed_view_arn: "String", # required
    #   }
    #   options = {}
    #   response = client.get_managed_view(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     managed_view: {
    #       managed_view_arn: "String",
    #       managed_view_name: "String",
    #       trusted_service: "String",
    #       last_updated_at: Time.now,
    #       owner: "String",
    #       scope: "String",
    #       included_properties: [
    #         {
    #           name: "String", # required
    #         }
    #       ],
    #       filters: {
    #         filter_string: "String", # required
    #       },
    #       resource_policy: "String",
    #       version: "String"
    #     }
    #   }
    # @return [Types::GetManagedViewOutput]
    def get_managed_view(params = {}, options = {})
      request = build_request(:get_managed_view, params)
      request.send_request(options)
    end

    # <p>Retrieves details of the specified view.</p>
    # @param [Hash, Types::GetViewOperationInput] params
    # @option params [String] :view_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon resource name (ARN)</a> of the view that you want information about.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     view_arn: "String", # required
    #   }
    #   options = {}
    #   response = client.get_view(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     view: {
    #       view_arn: "String",
    #       owner: "String",
    #       last_updated_at: Time.now,
    #       scope: "String",
    #       included_properties: [
    #         {
    #           name: "String", # required
    #         }
    #       ],
    #       filters: {
    #         filter_string: "String", # required
    #       }
    #     },
    #     tags: {
    #       "String" => "String"
    #     }
    #   }
    # @return [Types::GetViewOperationOutput]
    def get_view(params = {}, options = {})
      request = build_request(:get_view, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of all of the indexes in Amazon Web Services Regions that are currently collecting
    #             resource information for Amazon Web Services Resource Explorer.</p>
    # @param [Hash, Types::ListIndexesOperationInput] params
    # @option params [String] :type
    #   <p>If specified, limits the output to only indexes of the specified Type, either
    #                   <code>LOCAL</code> or <code>AGGREGATOR</code>.</p>
    #            <p>Use this option to discover the aggregator index for your account.</p>
    # @option params [Array<String>] :regions
    #   <p>If specified, limits the response to only information about the index in the specified
    #               list of Amazon Web Services Regions.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results that you want included on each page of the 
    #       response. If you do not include this parameter, it defaults to a value appropriate to the 
    #       operation. If additional items exist beyond those included in the current response, the 
    #       <code>NextToken</code> response element is present and has a value (is not null). Include that 
    #       value as the <code>NextToken</code> request parameter in the next call to the operation to get 
    #       the next part of the results.</p>
    #            <note>
    #               <p>An API operation can return fewer results than the maximum even when there are 
    #       more results available. You should check <code>NextToken</code> after every operation to ensure 
    #       that you receive all of the results.</p>
    #            </note>
    # @option params [String] :next_token
    #   <p>The parameter for receiving additional results if you receive a 
    #       <code>NextToken</code> response in a previous request. A <code>NextToken</code> response 
    #       indicates that more output is available. Set this parameter to the value of the previous 
    #       call's <code>NextToken</code> response to indicate where the output should continue 
    #       from. The pagination tokens expire after 24 hours.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     type: "IndexType",
    #     regions: ["String"],
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_indexes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     indexes: [
    #       {
    #         region: "String",
    #         arn: "String",
    #         type: "IndexType"
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListIndexesOperationOutput]
    def list_indexes(params = {}, options = {})
      request = build_request(:list_indexes, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of a member's indexes in all Amazon Web Services Regions that are currently
    #             collecting resource information for Amazon Web Services Resource Explorer. Only the management account or a
    #             delegated administrator with service access enabled can invoke this API call.
    #             </p>
    # @param [Hash, Types::ListIndexesForMembersInput] params
    # @option params [Array<String>] :account_id_list
    #   <p>The account IDs will limit the output to only indexes from these
    #               accounts.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results that you want included on each page of the 
    #       response. If you do not include this parameter, it defaults to a value appropriate to the 
    #       operation. If additional items exist beyond those included in the current response, the 
    #       <code>NextToken</code> response element is present and has a value (is not null). Include that 
    #       value as the <code>NextToken</code> request parameter in the next call to the operation to get 
    #       the next part of the results.</p>
    #            <note>
    #               <p>An API operation can return fewer results than the maximum even when there are 
    #       more results available. You should check <code>NextToken</code> after every operation to ensure 
    #       that you receive all of the results.</p>
    #            </note>
    # @option params [String] :next_token
    #   <p>The parameter for receiving additional results if you receive a 
    #       <code>NextToken</code> response in a previous request. A <code>NextToken</code> response 
    #       indicates that more output is available. Set this parameter to the value of the previous 
    #       call's <code>NextToken</code> response to indicate where the output should continue 
    #       from. The pagination tokens expire after 24 hours.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id_list: ["AccountId"], # required
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_indexes_for_members(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     indexes: [
    #       {
    #         account_id: "String",
    #         region: "String",
    #         arn: "String",
    #         type: "IndexType"
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListIndexesForMembersOutput]
    def list_indexes_for_members(params = {}, options = {})
      request = build_request(:list_indexes_for_members, params)
      request.send_request(options)
    end

    # <p>Lists the Amazon resource names (ARNs) of the 
    #             <a href="https://docs.aws.amazon.com/resource-explorer/latest/userguide/aws-managed-views.html">Amazon Web Services-managed views</a> available 
    #             in the Amazon Web Services Region in which you call this operation. </p>
    # @param [Hash, Types::ListManagedViewsInput] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results that you want included on each page of the 
    #       response. If you do not include this parameter, it defaults to a value appropriate to the 
    #       operation. If additional items exist beyond those included in the current response, the 
    #       <code>NextToken</code> response element is present and has a value (is not null). Include that 
    #       value as the <code>NextToken</code> request parameter in the next call to the operation to get 
    #       the next part of the results.</p>
    #            <note>
    #               <p>An API operation can return fewer results than the maximum even when there are 
    #       more results available. You should check <code>NextToken</code> after every operation to ensure 
    #       that you receive all of the results.</p>
    #            </note>
    # @option params [String] :next_token
    #   <p>The parameter for receiving additional results if you receive a 
    #       <code>NextToken</code> response in a previous request. A <code>NextToken</code> response 
    #       indicates that more output is available. Set this parameter to the value of the previous 
    #       call's <code>NextToken</code> response to indicate where the output should continue 
    #       from. The pagination tokens expire after 24 hours.</p>
    # @option params [String] :service_principal
    #   <p>Specifies a service principal name. If specified, then the 
    #               operation only returns the managed views that are managed by the input service. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "String",
    #     service_principal: "String"
    #   }
    #   options = {}
    #   response = client.list_managed_views(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "String",
    #     managed_views: ["String"]
    #   }
    # @return [Types::ListManagedViewsOutput]
    def list_managed_views(params = {}, options = {})
      request = build_request(:list_managed_views, params)
      request.send_request(options)
    end

    # <p>Returns a list of resources and their details that match the specified criteria. This query must 
    #             use a view. If you don’t explicitly specify a view, then Resource Explorer uses the default view for the Amazon Web Services Region 
    #             in which you call this operation. </p>
    # @param [Hash, Types::ListResourcesInput] params
    # @option params [Types::SearchFilter] :filters
    #   <p>An array of strings that specify which resources are included in the results of 
    #               queries made using this view. When you use this view in a <a>Search</a> 
    #               operation, the filter string is combined with the search's <code>QueryString</code> 
    #               parameter using a logical <code>AND</code> operator.</p>
    #            <p>For information about the supported syntax, see <a href="https://docs.aws.amazon.com/resource-explorer/latest/userguide/using-search-query-syntax.html">Search query reference for
    #                   Resource Explorer</a> in the <i>Amazon Web Services Resource Explorer User Guide</i>.</p>
    #            <important>
    #               <p>This query string in the context of this operation supports only <a href="https://docs.aws.amazon.com/resource-explorer/latest/userguide/using-search-query-syntax.html#query-syntax-filters">filter
    #                       prefixes</a> with optional <a href="https://docs.aws.amazon.com/resource-explorer/latest/userguide/using-search-query-syntax.html#query-syntax-operators">operators</a>. It doesn't support free-form text. For example, the 
    #                       string <code>region:us* service:ec2 -tag:stage=prod</code> includes all Amazon EC2 
    #                       resources in any Amazon Web Services Region that begins with the letters <code>us</code> and is
    #                       <i>not</i> tagged with a key <code>Stage</code> that has the value
    #                       <code>prod</code>.</p>
    #            </important>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results that you want included on each page of the 
    #       response. If you do not include this parameter, it defaults to a value appropriate to the 
    #       operation. If additional items exist beyond those included in the current response, the 
    #       <code>NextToken</code> response element is present and has a value (is not null). Include that 
    #       value as the <code>NextToken</code> request parameter in the next call to the operation to get 
    #       the next part of the results.</p>
    #            <note>
    #               <p>An API operation can return fewer results than the maximum even when there are 
    #       more results available. You should check <code>NextToken</code> after every operation to ensure 
    #       that you receive all of the results.</p>
    #            </note>
    # @option params [String] :view_arn
    #   <p>Specifies the Amazon resource name (ARN) of the view to use for the query. If you don't 
    #               specify a value for this parameter, then the operation automatically uses the default view 
    #               for the Amazon Web Services Region in which you called this operation. If the Region either doesn't have 
    #               a default view or if you don't have permission to use the default view, then the operation 
    #               fails with a 401 Unauthorized exception.</p>
    # @option params [String] :next_token
    #   <p>The parameter for receiving additional results if you receive a 
    #       <code>NextToken</code> response in a previous request. A <code>NextToken</code> response 
    #       indicates that more output is available. Set this parameter to the value of the previous 
    #       call's <code>NextToken</code> response to indicate where the output should continue 
    #       from. The pagination tokens expire after 24 hours.</p>
    #            <note>
    #               <p>The <code>ListResources</code> operation 
    #               does not generate a <code>NextToken</code> if you set <code>MaxResults</code> to 1000. </p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     filters: {
    #       filter_string: "String", # required
    #     },
    #     max_results: 1,
    #     view_arn: "String",
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_resources(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resources: [
    #       {
    #         arn: "String",
    #         owning_account_id: "String",
    #         region: "String",
    #         resource_type: "String",
    #         service: "String",
    #         last_reported_at: Time.now,
    #         properties: [
    #           {
    #             name: "String",
    #             last_reported_at: Time.now,
    #             data: ""null""
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "String",
    #     view_arn: "String"
    #   }
    # @return [Types::ListResourcesOutput]
    def list_resources(params = {}, options = {})
      request = build_request(:list_resources, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of all resource types currently supported by Amazon Web Services Resource Explorer.</p>
    # @param [Hash, Types::ListSupportedResourceTypesOperationInput] params
    # @option params [String] :next_token
    #   <p>The parameter for receiving additional results if you receive a 
    #       <code>NextToken</code> response in a previous request. A <code>NextToken</code> response 
    #       indicates that more output is available. Set this parameter to the value of the previous 
    #       call's <code>NextToken</code> response to indicate where the output should continue 
    #       from. The pagination tokens expire after 24 hours.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results that you want included on each page of the 
    #       response. If you do not include this parameter, it defaults to a value appropriate to the 
    #       operation. If additional items exist beyond those included in the current response, the 
    #       <code>NextToken</code> response element is present and has a value (is not null). Include that 
    #       value as the <code>NextToken</code> request parameter in the next call to the operation to get 
    #       the next part of the results.</p>
    #            <note>
    #               <p>An API operation can return fewer results than the maximum even when there are 
    #       more results available. You should check <code>NextToken</code> after every operation to ensure 
    #       that you receive all of the results.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_supported_resource_types(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_types: [
    #       {
    #         service: "String",
    #         resource_type: "String"
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListSupportedResourceTypesOperationOutput]
    def list_supported_resource_types(params = {}, options = {})
      request = build_request(:list_supported_resource_types, params)
      request.send_request(options)
    end

    # <p>Lists the tags that are attached to the specified resource.</p>
    # @param [Hash, Types::ListTagsForResourceOperationInput] params
    # @option params [String] :resource_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon resource name (ARN)</a> of the view or index that you want to attach tags to.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "String", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: {
    #       "String" => "String"
    #     }
    #   }
    # @return [Types::ListTagsForResourceOperationOutput]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Lists the <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon resource names (ARNs)</a> of the views available in the Amazon Web Services Region in which you
    #             call this operation.</p>
    #          <note>
    #             <p>Always check the <code>NextToken</code> response parameter 
    # for a <code>null</code> value when calling a paginated operation. These operations can 
    # occasionally return an empty set of results even when there are more results available. The 
    # <code>NextToken</code> response parameter value is <code>null</code>
    #                <i>only</i> 
    # when there are no more results to display.</p>
    #          </note>
    # @param [Hash, Types::ListViewsOperationInput] params
    # @option params [String] :next_token
    #   <p>The parameter for receiving additional results if you receive a 
    #       <code>NextToken</code> response in a previous request. A <code>NextToken</code> response 
    #       indicates that more output is available. Set this parameter to the value of the previous 
    #       call's <code>NextToken</code> response to indicate where the output should continue 
    #       from. The pagination tokens expire after 24 hours.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results that you want included on each page of the 
    #       response. If you do not include this parameter, it defaults to a value appropriate to the 
    #       operation. If additional items exist beyond those included in the current response, the 
    #       <code>NextToken</code> response element is present and has a value (is not null). Include that 
    #       value as the <code>NextToken</code> request parameter in the next call to the operation to get 
    #       the next part of the results.</p>
    #            <note>
    #               <p>An API operation can return fewer results than the maximum even when there are 
    #       more results available. You should check <code>NextToken</code> after every operation to ensure 
    #       that you receive all of the results.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_views(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     views: ["String"],
    #     next_token: "String"
    #   }
    # @return [Types::ListViewsOperationOutput]
    def list_views(params = {}, options = {})
      request = build_request(:list_views, params)
      request.send_request(options)
    end

    # <p>Searches for resources and displays details about all resources that match the
    #             specified criteria. You must specify a query string.</p>
    #          <p>All search queries must use a view. If you don't explicitly specify a view, then
    #             Amazon Web Services Resource Explorer uses the default view for the Amazon Web Services Region in which you call this operation.
    #             The results are the logical intersection of the results that match both the
    #                 <code>QueryString</code> parameter supplied to this operation and the
    #                 <code>SearchFilter</code> parameter attached to the view.</p>
    #          <p>For the complete syntax supported by the <code>QueryString</code> parameter, see
    #                 <a href="https://docs.aws.amazon.com/resource-explorer/latest/APIReference/about-query-syntax.html">Search
    #                 query syntax reference for Resource Explorer</a>.</p>
    #          <p>If your search results are empty, or are missing results that you think should be
    #             there, see <a href="https://docs.aws.amazon.com/resource-explorer/latest/userguide/troubleshooting_search.html">Troubleshooting Resource Explorer
    #                 search</a>.</p>
    # @param [Hash, Types::SearchOperationInput] params
    # @option params [String] :query_string
    #   <p>A string that includes keywords and filters that specify the resources that you want
    #               to include in the results.</p>
    #            <p>For the complete syntax supported by the <code>QueryString</code> parameter, see
    #                   <a href="https://docs.aws.amazon.com/resource-explorer/latest/userguide/using-search-query-syntax.html">Search query syntax reference for Resource Explorer</a>.</p>
    #            <p>The search is completely case insensitive. You can specify an empty string to return
    #               all results up to the limit of 1,000 total results.</p>
    #            <note>
    #               <p>The operation can return only the first 1,000 results. If the
    #                   resource you want is not included, then use a different value for
    #                       <code>QueryString</code> to refine the results.</p>
    #            </note>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results that you want included on each page of the 
    #       response. If you do not include this parameter, it defaults to a value appropriate to the 
    #       operation. If additional items exist beyond those included in the current response, the 
    #       <code>NextToken</code> response element is present and has a value (is not null). Include that 
    #       value as the <code>NextToken</code> request parameter in the next call to the operation to get 
    #       the next part of the results.</p>
    #            <note>
    #               <p>An API operation can return fewer results than the maximum even when there are 
    #       more results available. You should check <code>NextToken</code> after every operation to ensure 
    #       that you receive all of the results.</p>
    #            </note>
    # @option params [String] :view_arn
    #   <p>Specifies the <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon resource name (ARN)</a> of the view to use for the query. If you don't specify a
    #               value for this parameter, then the operation automatically uses the default view for the
    #               Amazon Web Services Region in which you called this operation. If the Region either doesn't have a
    #               default view or if you don't have permission to use the default view, then the operation
    #               fails with a <code>401 Unauthorized</code> exception.</p>
    # @option params [String] :next_token
    #   <p>The parameter for receiving additional results if you receive a 
    #       <code>NextToken</code> response in a previous request. A <code>NextToken</code> response 
    #       indicates that more output is available. Set this parameter to the value of the previous 
    #       call's <code>NextToken</code> response to indicate where the output should continue 
    #       from. The pagination tokens expire after 24 hours.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     query_string: "QueryString", # required
    #     max_results: 1,
    #     view_arn: "String",
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.search(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resources: [
    #       {
    #         arn: "String",
    #         owning_account_id: "String",
    #         region: "String",
    #         resource_type: "String",
    #         service: "String",
    #         last_reported_at: Time.now,
    #         properties: [
    #           {
    #             name: "String",
    #             last_reported_at: Time.now,
    #             data: ""null""
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "String",
    #     view_arn: "String",
    #     count: {
    #       total_resources: 1,
    #       complete: false
    #     }
    #   }
    # @return [Types::SearchOperationOutput]
    def search(params = {}, options = {})
      request = build_request(:search, params)
      request.send_request(options)
    end

    # <p>Adds one or more tag key and value pairs to an Amazon Web Services Resource Explorer view or index.</p>
    # @param [Hash, Types::TagResourceOperationInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the view or index that you want to attach tags
    #               to.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A list of tag key and value pairs that you want to attach to the specified view or
    #               index.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "String", # required
    #     tags: {
    #       "String" => "String"
    #     }
    #   }
    #   options = {}
    #   response = client.tag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::TagResourceOperationOutput]
    def tag_resource(params = {}, options = {})
      request = build_request(:tag_resource, params)
      request.send_request(options)
    end

    # <p>Removes one or more tag key and value pairs from an Amazon Web Services Resource Explorer view or index.</p>
    # @param [Hash, Types::UntagResourceOperationInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the view or index that you want to remove tags
    #               from.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>A list of the keys for the tags that you want to remove from the specified view or
    #               index.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "String", # required
    #     tag_keys: ["String"], # required
    #   }
    #   options = {}
    #   response = client.untag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UntagResourceOperationOutput]
    def untag_resource(params = {}, options = {})
      request = build_request(:untag_resource, params)
      request.send_request(options)
    end

    # <p>Changes the type of the index from one of the following types to the other. For more
    #             information about indexes and the role they perform in Amazon Web Services Resource Explorer, see <a href="https://docs.aws.amazon.com/resource-explorer/latest/userguide/manage-aggregator-region.html">Turning on
    #                 cross-Region search by creating an aggregator index</a> in the
    #                 <i>Amazon Web Services Resource Explorer User Guide</i>.</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <b>
    #                      <code>AGGREGATOR</code> index type</b>
    #                </p>
    #                <p>The index contains information about resources from all Amazon Web Services Regions in the
    #                     Amazon Web Services account in which you've created a Resource Explorer index. Resource information from
    #                     all other Regions is replicated to this Region's index.</p>
    #                <p>When you change the index type to <code>AGGREGATOR</code>, Resource Explorer turns on
    #                     replication of all discovered resource information from the other Amazon Web Services Regions
    #                     in your account to this index. You can then, from this Region only, perform
    #                     resource search queries that span all Amazon Web Services Regions in the Amazon Web Services account.
    #                     Turning on replication from all other Regions is performed by asynchronous
    #                     background tasks. You can check the status of the asynchronous tasks by using
    #                     the <a>GetIndex</a> operation. When the asynchronous tasks complete,
    #                     the <code>Status</code> response of that operation changes from
    #                         <code>UPDATING</code> to <code>ACTIVE</code>. After that, you can start to
    #                     see results from other Amazon Web Services Regions in query results. However, it can take
    #                     several hours for replication from all other Regions to complete.</p>
    #                <important>
    #                   <p>You can have only one aggregator index per Amazon Web Services account. Before you can
    #                         promote a different index to be the aggregator index for the account, you must
    #                         first demote the existing aggregator index to type <code>LOCAL</code>.</p>
    #                </important>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>
    #                      <code>LOCAL</code> index type</b>
    #                </p>
    #                <p>The index contains information about resources in only the Amazon Web Services Region in
    #                     which the index exists. If an aggregator index in another Region exists, then
    #                     information in this local index is replicated to the aggregator index.</p>
    #                <p>When you change the index type to <code>LOCAL</code>, Resource Explorer turns off the
    #                     replication of resource information from all other Amazon Web Services Regions in the
    #                     Amazon Web Services account to this Region. The aggregator index remains in the
    #                         <code>UPDATING</code> state until all replication with other Regions
    #                     successfully stops. You can check the status of the asynchronous task by using
    #                     the <a>GetIndex</a> operation. When Resource Explorer successfully stops all
    #                     replication with other Regions, the <code>Status</code> response of that
    #                     operation changes from <code>UPDATING</code> to <code>ACTIVE</code>. Separately,
    #                     the resource information from other Regions that was previously stored in the
    #                     index is deleted within 30 days by another background task. Until that
    #                     asynchronous task completes, some results from other Regions can continue to
    #                     appear in search results.</p>
    #                <important>
    #                   <p>After you demote an aggregator index to a local index, you must wait
    #                         24 hours before you can promote another index to be the new
    #                         aggregator index for the account.</p>
    #                </important>
    #             </li>
    #          </ul>
    # @param [Hash, Types::UpdateIndexTypeOperationInput] params
    # @option params [String] :arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon resource name (ARN)</a> of the index that you want to update.</p>
    # @option params [String] :type
    #   <p>The type of the index. To understand the difference between <code>LOCAL</code> and
    #                   <code>AGGREGATOR</code>, see <a href="https://docs.aws.amazon.com/resource-explorer/latest/userguide/manage-aggregator-region.html">Turning on cross-Region
    #                   search</a> in the <i>Amazon Web Services Resource Explorer User Guide</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "String", # required
    #     type: "IndexType", # required
    #   }
    #   options = {}
    #   response = client.update_index_type(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "String",
    #     type: "IndexType",
    #     state: "IndexState",
    #     last_updated_at: Time.now
    #   }
    # @return [Types::UpdateIndexTypeOperationOutput]
    def update_index_type(params = {}, options = {})
      request = build_request(:update_index_type, params)
      request.send_request(options)
    end

    # <p>Modifies some of the details of a view. You can change the filter string and the list
    #             of included properties. You can't change the name of the view.</p>
    # @param [Hash, Types::UpdateViewOperationInput] params
    # @option params [String] :view_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon resource name (ARN)</a> of the view that you want to modify.</p>
    # @option params [Array<Types::IncludedProperty>] :included_properties
    #   <p>Specifies optional fields that you want included in search results from this
    #           view. It is a list of objects that each describe a field to include.</p>
    #            <p>The default is an empty list, with no optional fields included in the results.</p>
    # @option params [Types::SearchFilter] :filters
    #   <p>An array of strings that specify which resources are included in the results of 
    #               queries made using this view. When you use this view in a <a>Search</a> 
    #               operation, the filter string is combined with the search's <code>QueryString</code> 
    #               parameter using a logical <code>AND</code> operator.</p>
    #            <p>For information about the supported syntax, see <a href="https://docs.aws.amazon.com/resource-explorer/latest/userguide/using-search-query-syntax.html">Search query reference for
    #                   Resource Explorer</a> in the <i>Amazon Web Services Resource Explorer User Guide</i>.</p>
    #            <important>
    #               <p>This query string in the context of this operation supports only <a href="https://docs.aws.amazon.com/resource-explorer/latest/userguide/using-search-query-syntax.html#query-syntax-filters">filter
    #                       prefixes</a> with optional <a href="https://docs.aws.amazon.com/resource-explorer/latest/userguide/using-search-query-syntax.html#query-syntax-operators">operators</a>. It doesn't support free-form text. For example, the 
    #                       string <code>region:us* service:ec2 -tag:stage=prod</code> includes all Amazon EC2 
    #                       resources in any Amazon Web Services Region that begins with the letters <code>us</code> and is
    #                       <i>not</i> tagged with a key <code>Stage</code> that has the value
    #                       <code>prod</code>.</p>
    #            </important>
    # @example Request syntax with placeholder values
    #   params = {
    #     view_arn: "String", # required
    #     included_properties: [
    #       {
    #         name: "String", # required
    #       }
    #     ],
    #     filters: {
    #       filter_string: "String", # required
    #     }
    #   }
    #   options = {}
    #   response = client.update_view(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     view: {
    #       view_arn: "String",
    #       owner: "String",
    #       last_updated_at: Time.now,
    #       scope: "String",
    #       included_properties: [
    #         {
    #           name: "String", # required
    #         }
    #       ],
    #       filters: {
    #         filter_string: "String", # required
    #       }
    #     }
    #   }
    # @return [Types::UpdateViewOperationOutput]
    def update_view(params = {}, options = {})
      request = build_request(:update_view, params)
      request.send_request(options)
    end

    # Polls an API operation until a resource enters a desired state.
    #
    # ## Basic Usage
    #
    # A waiter will call an API operation until:
    #
    # * It is successful
    # * It enters a terminal state
    # * It reaches the maximum wait time allowed
    #
    # In between attempts, the waiter will sleep.
    #
    #     # polls in a loop, sleeping between attempts
    #     client.wait_until(waiter_name, params, options)
    #
    # ## Configuration
    #
    # You must configure the maximum amount of time in seconds a
    # waiter should wait for. You may also configure the minimum
    # and maximum amount of time in seconds to delay between
    # retries. You can pass these configuration as the final
    # arguments hash.
    #
    #     weather = Weather::Client.new
    #
    #     # poll for a maximum of 25 seconds
    #     weather.wait_until(:forecast_exists, { forecast_id: '1' }, {
    #       max_wait_time: 25,
    #       min_delay: 2,
    #       max_delay: 10
    #     })
    #
    # ## Handling Errors
    #
    # When a waiter is unsuccessful, it will raise an error.
    # All the failure errors extend from
    # {Smithy::Client::Waiters::WaiterFailed}.
    #
    #     weather = Weather::Client.new
    #     begin
    #       weather.wait_until(:forecast_exists, { forecast_id: '1' }, max_wait_time: 60)
    #     rescue Smithy::Client::Waiters::WaiterFailed
    #       # resource did not enter the desired state in time
    #     end
    #
    # @param [Symbol] waiter_name
    # @param [Hash] params ({})
    # @param [Hash] options ({})
    # @option options [Integer] :max_wait_time
    # @option options [Integer] :min_delay
    # @option options [Integer] :max_delay
    # @return [nil] Returns `nil` if the waiter was successful.
    # @raise [FailureStateError] Raised when the waiter terminates
    #   because the waiter has entered a state that it will not transition
    #   out of, preventing success.
    # @raise [MaxWaitTimeExceededError] Raised when the configured
    #   maximum wait time is reached and the waiter is not yet successful.
    # @raise [UnexpectedError] Raised when an error that is not
    #   expected is encountered while polling for a resource.
    # @raise [NoSuchWaiterError] Raised when you request to wait
    #   for an unknown state.
    def wait_until(waiter_name, params = {}, options = {})
      waiter(waiter_name, options).wait(params)
    end

    # @api private
    def build_request(operation_name, params)
      handlers = @handlers.for(operation_name)
      context = Smithy::Client::HandlerContext.new(
        operation_name: operation_name,
        operation: config.service.operation(operation_name),
        client: self,
        config: config,
        params: params
      )
      context[:gem_name] = 'aws-sdk-resourceexplorer2'
      context[:gem_version] = '2.0.0.pre0'
      Smithy::Client::Request.new(handlers: handlers, context: context)
    end

    private

    def waiters
      {}
    end

    class << self
      # @api private
      attr_reader :identifier

      # @api private
      def auth_parameters
        AuthParameters
      end

      # @api private
      def auth_resolver
        AuthResolver
      end

      # @api private
      def errors_module
        Errors
      end
    end
  end
end
