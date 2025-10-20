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
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/json_rpc_protocol'
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/sigv4'

module Aws::MediaStore
  # An API client for Aws::MediaStore.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::MediaStore20170901
    @identifier = :mediastore

    add_plugin(::Aws::MediaStore::Plugins::Endpoint)
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
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
    add_plugin(Aws::Core::Plugins::JsonRpcProtocol)
    add_plugin(Aws::Core::Plugins::RegionalEndpoints)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::MediaStore::EndpointProvider)
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

    # <p>Creates a storage container to hold objects. A container is similar to a bucket in
    #          the Amazon S3 service.</p>
    # @param [Hash, Types::CreateContainerInput] params
    # @option params [String] :container_name
    #   <p>The name for the container. The name must be from 1 to 255 characters. Container
    #            names must be unique to your AWS account within a specific region. As an example, you could
    #            create a container named <code>movies</code> in every region, as long as you don’t have an
    #            existing container with that name.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>An array of key:value pairs that you define. These values can be anything that you want. Typically, the tag key represents a category (such as
    #              "environment") and the tag value represents a specific value within that category (such as "test," "development," or "production"). You can add up to 50 
    #              tags to each container. For more information about tagging, including naming and usage conventions, see <a href="https://docs.aws.amazon.com/mediastore/latest/ug/tagging.html">Tagging Resources in MediaStore</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     container_name: "ContainerName", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_container(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     container: { # required
    #       endpoint: "Endpoint",
    #       creation_time: Time.now,
    #       arn: "ContainerARN",
    #       name: "ContainerName",
    #       status: "ACTIVE" # One of: ["ACTIVE", "CREATING", "DELETING"],
    #       access_logging_enabled: false
    #     }
    #   }
    # @return [Types::CreateContainerOutput]
    def create_container(params = {}, options = {})
      request = build_request(:create_container, params)
      request.send_request(options)
    end

    # <p>Deletes the specified container. Before you make a <code>DeleteContainer</code>
    #          request, delete any objects in the container or in any folders in the container. You can
    #          delete only empty containers. </p>
    # @param [Hash, Types::DeleteContainerInput] params
    # @option params [String] :container_name
    #   <p>The name of the container to delete. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     container_name: "ContainerName", # required
    #   }
    #   options = {}
    #   response = client.delete_container(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteContainerOutput]
    def delete_container(params = {}, options = {})
      request = build_request(:delete_container, params)
      request.send_request(options)
    end

    # <p>Deletes the access policy that is associated with the specified container.</p>
    # @param [Hash, Types::DeleteContainerPolicyInput] params
    # @option params [String] :container_name
    #   <p>The name of the container that holds the policy.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     container_name: "ContainerName", # required
    #   }
    #   options = {}
    #   response = client.delete_container_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteContainerPolicyOutput]
    def delete_container_policy(params = {}, options = {})
      request = build_request(:delete_container_policy, params)
      request.send_request(options)
    end

    # <p>Deletes the cross-origin resource sharing (CORS) configuration information that is
    #          set for the container.</p>
    #          <p>To use this operation, you must have permission to perform the
    #             <code>MediaStore:DeleteCorsPolicy</code> action. The container owner has this permission
    #          by default and can grant this permission to others.</p>
    # @param [Hash, Types::DeleteCorsPolicyInput] params
    # @option params [String] :container_name
    #   <p>The name of the container to remove the policy from.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     container_name: "ContainerName", # required
    #   }
    #   options = {}
    #   response = client.delete_cors_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteCorsPolicyOutput]
    def delete_cors_policy(params = {}, options = {})
      request = build_request(:delete_cors_policy, params)
      request.send_request(options)
    end

    # <p>Removes an object lifecycle policy from a container. It takes up to 20 minutes for the change to take effect.</p>
    # @param [Hash, Types::DeleteLifecyclePolicyInput] params
    # @option params [String] :container_name
    #   <p>The name of the container that holds the object lifecycle policy.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     container_name: "ContainerName", # required
    #   }
    #   options = {}
    #   response = client.delete_lifecycle_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteLifecyclePolicyOutput]
    def delete_lifecycle_policy(params = {}, options = {})
      request = build_request(:delete_lifecycle_policy, params)
      request.send_request(options)
    end

    # <p>Deletes the metric policy that is associated with the specified container. If there is no metric policy associated with the container, MediaStore doesn't send metrics to CloudWatch.</p>
    # @param [Hash, Types::DeleteMetricPolicyInput] params
    # @option params [String] :container_name
    #   <p>The name of the container that is associated with the metric policy that you want to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     container_name: "ContainerName", # required
    #   }
    #   options = {}
    #   response = client.delete_metric_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteMetricPolicyOutput]
    def delete_metric_policy(params = {}, options = {})
      request = build_request(:delete_metric_policy, params)
      request.send_request(options)
    end

    # <p>Retrieves the properties of the requested container. This request is commonly used to
    #          retrieve the endpoint of a container. An endpoint is a value assigned by the service when a
    #          new container is created. A container's endpoint does not change after it has been
    #          assigned. The <code>DescribeContainer</code> request returns a single
    #             <code>Container</code> object based on <code>ContainerName</code>. To return all
    #             <code>Container</code> objects that are associated with a specified AWS account, use
    #             <a>ListContainers</a>.</p>
    # @param [Hash, Types::DescribeContainerInput] params
    # @option params [String] :container_name
    #   <p>The name of the container to query.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     container_name: "ContainerName"
    #   }
    #   options = {}
    #   response = client.describe_container(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     container: {
    #       endpoint: "Endpoint",
    #       creation_time: Time.now,
    #       arn: "ContainerARN",
    #       name: "ContainerName",
    #       status: "ACTIVE" # One of: ["ACTIVE", "CREATING", "DELETING"],
    #       access_logging_enabled: false
    #     }
    #   }
    # @return [Types::DescribeContainerOutput]
    def describe_container(params = {}, options = {})
      request = build_request(:describe_container, params)
      request.send_request(options)
    end

    # <p>Retrieves the access policy for the specified container. For information about the
    #          data that is included in an access policy, see the <a href="https://aws.amazon.com/documentation/iam/">AWS Identity and Access Management User
    #             Guide</a>.</p>
    # @param [Hash, Types::GetContainerPolicyInput] params
    # @option params [String] :container_name
    #   <p>The name of the container. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     container_name: "ContainerName", # required
    #   }
    #   options = {}
    #   response = client.get_container_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy: "ContainerPolicy", # required
    #   }
    # @return [Types::GetContainerPolicyOutput]
    def get_container_policy(params = {}, options = {})
      request = build_request(:get_container_policy, params)
      request.send_request(options)
    end

    # <p>Returns the cross-origin resource sharing (CORS) configuration information that is
    #          set for the container.</p>
    #          <p>To use this operation, you must have permission to perform the
    #             <code>MediaStore:GetCorsPolicy</code> action. By default, the container owner has this
    #          permission and can grant it to others.</p>
    # @param [Hash, Types::GetCorsPolicyInput] params
    # @option params [String] :container_name
    #   <p>The name of the container that the policy is assigned to.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     container_name: "ContainerName", # required
    #   }
    #   options = {}
    #   response = client.get_cors_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cors_policy: [ # required
    #       {
    #         allowed_origins: ["Origin"], # required
    #         allowed_methods: ["PUT" # One of: ["PUT", "GET", "DELETE", "HEAD"]],
    #         allowed_headers: ["Header"], # required
    #         max_age_seconds: 1,
    #         expose_headers: ["Header"]
    #       }
    #     ]
    #   }
    # @return [Types::GetCorsPolicyOutput]
    def get_cors_policy(params = {}, options = {})
      request = build_request(:get_cors_policy, params)
      request.send_request(options)
    end

    # <p>Retrieves the object lifecycle policy that is assigned to a container.</p>
    # @param [Hash, Types::GetLifecyclePolicyInput] params
    # @option params [String] :container_name
    #   <p>The name of the container that the object lifecycle policy is assigned to.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     container_name: "ContainerName", # required
    #   }
    #   options = {}
    #   response = client.get_lifecycle_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     lifecycle_policy: "LifecyclePolicy", # required
    #   }
    # @return [Types::GetLifecyclePolicyOutput]
    def get_lifecycle_policy(params = {}, options = {})
      request = build_request(:get_lifecycle_policy, params)
      request.send_request(options)
    end

    # <p>Returns the metric policy for the specified container. </p>
    # @param [Hash, Types::GetMetricPolicyInput] params
    # @option params [String] :container_name
    #   <p>The name of the container that is associated with the metric policy.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     container_name: "ContainerName", # required
    #   }
    #   options = {}
    #   response = client.get_metric_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     metric_policy: { # required
    #       container_level_metrics: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #       metric_policy_rules: [
    #         {
    #           object_group: "ObjectGroup", # required
    #           object_group_name: "ObjectGroupName", # required
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::GetMetricPolicyOutput]
    def get_metric_policy(params = {}, options = {})
      request = build_request(:get_metric_policy, params)
      request.send_request(options)
    end

    # <p>Lists the properties of all containers in AWS Elemental MediaStore. </p>
    #          <p>You can query to receive all the containers in one response. Or you can include the
    #             <code>MaxResults</code> parameter to receive a limited number of containers in each
    #          response. In this case, the response includes a token. To get the next set of containers,
    #          send the command again, this time with the <code>NextToken</code> parameter (with the
    #          returned token as its value). The next set of responses appears, with a token if there are
    #          still more containers to receive. </p>
    #          <p>See also <a>DescribeContainer</a>, which gets the properties of one
    #          container. </p>
    # @param [Hash, Types::ListContainersInput] params
    # @option params [String] :next_token
    #   <p>Only if you used <code>MaxResults</code> in the first command, enter the token (which
    #            was included in the previous response) to obtain the next set of containers. This token is
    #            included in a response only if there actually are more containers to list.</p>
    # @option params [Integer] :max_results
    #   <p>Enter the maximum number of containers in the response. Use from 1 to 255 characters.
    #         </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_containers(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     containers: [ # required
    #       {
    #         endpoint: "Endpoint",
    #         creation_time: Time.now,
    #         arn: "ContainerARN",
    #         name: "ContainerName",
    #         status: "ACTIVE" # One of: ["ACTIVE", "CREATING", "DELETING"],
    #         access_logging_enabled: false
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListContainersOutput]
    def list_containers(params = {}, options = {})
      request = build_request(:list_containers, params)
      request.send_request(options)
    end

    # <p>Returns a list of the tags assigned to the specified container. </p>
    # @param [Hash, Types::ListTagsForResourceInput] params
    # @option params [String] :resource
    #   <p>The Amazon Resource Name (ARN) for the container.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource: "ContainerARN", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    # @return [Types::ListTagsForResourceOutput]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Creates an access policy for the specified container to restrict the users and
    #          clients that can access it. For information about the data that is included in an access
    #          policy, see the <a href="https://aws.amazon.com/documentation/iam/">AWS Identity and
    #             Access Management User Guide</a>.</p>
    #          <p>For this release of the REST API, you can create only one policy for a container. If
    #          you enter <code>PutContainerPolicy</code> twice, the second command modifies the existing
    #          policy. </p>
    # @param [Hash, Types::PutContainerPolicyInput] params
    # @option params [String] :container_name
    #   <p>The name of the container.</p>
    # @option params [String] :policy
    #   <p>The contents of the policy, which includes the following: </p>
    #            <ul>
    #               <li>
    #                  <p>One <code>Version</code> tag</p>
    #               </li>
    #               <li>
    #                  <p>One <code>Statement</code> tag that contains the standard tags for the
    #                  policy.</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     container_name: "ContainerName", # required
    #     policy: "ContainerPolicy", # required
    #   }
    #   options = {}
    #   response = client.put_container_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::PutContainerPolicyOutput]
    def put_container_policy(params = {}, options = {})
      request = build_request(:put_container_policy, params)
      request.send_request(options)
    end

    # <p>Sets the cross-origin resource sharing (CORS) configuration on a container so that
    #          the container can service cross-origin requests. For example, you might want to enable a
    #          request whose origin is http://www.example.com to access your AWS Elemental MediaStore
    #          container at my.example.container.com by using the browser's XMLHttpRequest
    #          capability.</p>
    #          <p>To enable CORS on a container, you attach a CORS policy to the container. In the CORS
    #          policy, you configure rules that identify origins and the HTTP methods that can be executed
    #          on your container. The policy can contain up to 398,000 characters. You can add up to 100
    #          rules to a CORS policy. If more than one rule applies, the service uses the first
    #          applicable rule listed.</p>
    #          <p>To learn more about CORS, see <a href="https://docs.aws.amazon.com/mediastore/latest/ug/cors-policy.html">Cross-Origin Resource Sharing (CORS) in AWS Elemental MediaStore</a>.</p>
    # @param [Hash, Types::PutCorsPolicyInput] params
    # @option params [String] :container_name
    #   <p>The name of the container that you want to assign the CORS policy to.</p>
    # @option params [Array<Types::CorsRule>] :cors_policy
    #   <p>The CORS policy to apply to the container.  </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     container_name: "ContainerName", # required
    #     cors_policy: [ # required
    #       {
    #         allowed_origins: ["Origin"], # required
    #         allowed_methods: ["PUT" # One of: ["PUT", "GET", "DELETE", "HEAD"]],
    #         allowed_headers: ["Header"], # required
    #         max_age_seconds: 1,
    #         expose_headers: ["Header"]
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.put_cors_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::PutCorsPolicyOutput]
    def put_cors_policy(params = {}, options = {})
      request = build_request(:put_cors_policy, params)
      request.send_request(options)
    end

    # <p>Writes an object lifecycle policy to a container. If the container already has an object lifecycle policy, the service replaces the existing policy with the new policy. It takes up to 20 minutes for the change to take effect.</p>
    #          <p>For information about how to construct an object lifecycle policy, see <a href="https://docs.aws.amazon.com/mediastore/latest/ug/policies-object-lifecycle-components.html">Components of an Object Lifecycle Policy</a>.</p>
    # @param [Hash, Types::PutLifecyclePolicyInput] params
    # @option params [String] :container_name
    #   <p>The name of the container that you want to assign the object lifecycle policy to.</p>
    # @option params [String] :lifecycle_policy
    #   <p>The object lifecycle policy to apply to the container.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     container_name: "ContainerName", # required
    #     lifecycle_policy: "LifecyclePolicy", # required
    #   }
    #   options = {}
    #   response = client.put_lifecycle_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::PutLifecyclePolicyOutput]
    def put_lifecycle_policy(params = {}, options = {})
      request = build_request(:put_lifecycle_policy, params)
      request.send_request(options)
    end

    # <p>The metric policy that you want to add to the container. A metric policy allows AWS Elemental MediaStore to send metrics to Amazon CloudWatch. It takes up to 20 minutes for the new policy to take effect.</p>
    # @param [Hash, Types::PutMetricPolicyInput] params
    # @option params [String] :container_name
    #   <p>The name of the container that you want to add the metric policy to.</p>
    # @option params [Types::MetricPolicy] :metric_policy
    #   <p>The metric policy that you want to associate with the container. In the policy, you must indicate whether you want MediaStore to send container-level metrics. You can also include up to five rules to define groups of objects that you want MediaStore to send object-level metrics for.  If you include rules in the policy, construct each rule with both of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>An object group that defines which objects to include in the group. The definition can be a path or a file name, but it can't have more than 900 characters. Valid characters are: a-z, A-Z, 0-9, _ (underscore), = (equal), : (colon), . (period), - (hyphen), ~ (tilde), / (forward slash), and * (asterisk). Wildcards (*) are acceptable.</p>
    #               </li>
    #               <li>
    #                  <p>An object group name that allows you to refer to the object group. The name can't have more than 30 characters. Valid characters are: a-z, A-Z, 0-9, and _ (underscore).</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     container_name: "ContainerName", # required
    #     metric_policy: { # required
    #       container_level_metrics: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #       metric_policy_rules: [
    #         {
    #           object_group: "ObjectGroup", # required
    #           object_group_name: "ObjectGroupName", # required
    #         }
    #       ]
    #     }
    #   }
    #   options = {}
    #   response = client.put_metric_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::PutMetricPolicyOutput]
    def put_metric_policy(params = {}, options = {})
      request = build_request(:put_metric_policy, params)
      request.send_request(options)
    end

    # <p>Starts access logging on the specified container. When you enable access logging on a container, MediaStore delivers access logs for objects stored in that container to Amazon CloudWatch Logs.</p>
    # @param [Hash, Types::StartAccessLoggingInput] params
    # @option params [String] :container_name
    #   <p>The name of the container that you want to start access logging on.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     container_name: "ContainerName", # required
    #   }
    #   options = {}
    #   response = client.start_access_logging(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::StartAccessLoggingOutput]
    def start_access_logging(params = {}, options = {})
      request = build_request(:start_access_logging, params)
      request.send_request(options)
    end

    # <p>Stops access logging on the specified container. When you stop access logging on a container, MediaStore stops sending access logs to Amazon CloudWatch Logs. These access logs are not saved and are not retrievable.</p>
    # @param [Hash, Types::StopAccessLoggingInput] params
    # @option params [String] :container_name
    #   <p>The name of the container that you want to stop access logging on.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     container_name: "ContainerName", # required
    #   }
    #   options = {}
    #   response = client.stop_access_logging(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::StopAccessLoggingOutput]
    def stop_access_logging(params = {}, options = {})
      request = build_request(:stop_access_logging, params)
      request.send_request(options)
    end

    # <p>Adds tags to the specified AWS Elemental MediaStore container. Tags are key:value pairs that you can associate with AWS resources. For example, the
    #             tag key might be "customer" and the tag value might be "companyA." You can specify one or more tags to add to each container. You can add up to 50
    #             tags to each container. For more information about tagging, including naming and usage conventions, see <a href="https://docs.aws.amazon.com/mediastore/latest/ug/tagging.html">Tagging Resources in MediaStore</a>.</p>
    # @param [Hash, Types::TagResourceInput] params
    # @option params [String] :resource
    #   <p>The Amazon Resource Name (ARN) for the container. </p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>An array of key:value pairs that you want to add to the container. You need to specify only the tags that you want to add or update. For example,
    #               suppose a container already has two tags (customer:CompanyA and priority:High). You want to change the priority tag and also add a third tag
    #               (type:Contract). For TagResource, you specify the following tags: priority:Medium, type:Contract. The result is that your container has three tags:
    #               customer:CompanyA, priority:Medium, and type:Contract.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource: "ContainerARN", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.tag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::TagResourceOutput]
    def tag_resource(params = {}, options = {})
      request = build_request(:tag_resource, params)
      request.send_request(options)
    end

    # <p>Removes tags from the specified container. You can specify one or more tags to remove. </p>
    # @param [Hash, Types::UntagResourceInput] params
    # @option params [String] :resource
    #   <p>The Amazon Resource Name (ARN) for the container.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>A comma-separated list of keys for tags that you want to remove from the container. For example, if your container has two tags (customer:CompanyA
    #               and priority:High) and you want to remove one of the tags (priority:High), you specify the key for the tag that you want to remove
    #               (priority).</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource: "ContainerARN", # required
    #     tag_keys: ["TagKey"], # required
    #   }
    #   options = {}
    #   response = client.untag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UntagResourceOutput]
    def untag_resource(params = {}, options = {})
      request = build_request(:untag_resource, params)
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
      context[:gem_name] = 'aws-sdk-mediastore'
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
