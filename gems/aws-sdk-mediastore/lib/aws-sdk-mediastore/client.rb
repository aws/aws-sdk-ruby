# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'seahorse/client/plugins/content_length.rb'
require 'aws-sdk-core/plugins/credentials_configuration.rb'
require 'aws-sdk-core/plugins/logging.rb'
require 'aws-sdk-core/plugins/param_converter.rb'
require 'aws-sdk-core/plugins/param_validator.rb'
require 'aws-sdk-core/plugins/user_agent.rb'
require 'aws-sdk-core/plugins/helpful_socket_errors.rb'
require 'aws-sdk-core/plugins/retry_errors.rb'
require 'aws-sdk-core/plugins/global_configuration.rb'
require 'aws-sdk-core/plugins/regional_endpoint.rb'
require 'aws-sdk-core/plugins/response_paging.rb'
require 'aws-sdk-core/plugins/stub_responses.rb'
require 'aws-sdk-core/plugins/idempotency_token.rb'
require 'aws-sdk-core/plugins/jsonvalue_converter.rb'
require 'aws-sdk-core/plugins/client_metrics_plugin.rb'
require 'aws-sdk-core/plugins/client_metrics_send_plugin.rb'
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/json_rpc.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:mediastore)

module Aws::MediaStore
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :mediastore

    set_api(ClientApi::API)

    add_plugin(Seahorse::Client::Plugins::ContentLength)
    add_plugin(Aws::Plugins::CredentialsConfiguration)
    add_plugin(Aws::Plugins::Logging)
    add_plugin(Aws::Plugins::ParamConverter)
    add_plugin(Aws::Plugins::ParamValidator)
    add_plugin(Aws::Plugins::UserAgent)
    add_plugin(Aws::Plugins::HelpfulSocketErrors)
    add_plugin(Aws::Plugins::RetryErrors)
    add_plugin(Aws::Plugins::GlobalConfiguration)
    add_plugin(Aws::Plugins::RegionalEndpoint)
    add_plugin(Aws::Plugins::ResponsePaging)
    add_plugin(Aws::Plugins::StubResponses)
    add_plugin(Aws::Plugins::IdempotencyToken)
    add_plugin(Aws::Plugins::JsonvalueConverter)
    add_plugin(Aws::Plugins::ClientMetricsPlugin)
    add_plugin(Aws::Plugins::ClientMetricsSendPlugin)
    add_plugin(Aws::Plugins::SignatureV4)
    add_plugin(Aws::Plugins::Protocols::JsonRpc)

    # @option options [required, Aws::CredentialProvider] :credentials
    #   Your AWS credentials. This can be an instance of any one of the
    #   following classes:
    #
    #   * `Aws::Credentials` - Used for configuring static, non-refreshing
    #     credentials.
    #
    #   * `Aws::InstanceProfileCredentials` - Used for loading credentials
    #     from an EC2 IMDS on an EC2 instance.
    #
    #   * `Aws::SharedCredentials` - Used for loading credentials from a
    #     shared file, such as `~/.aws/config`.
    #
    #   * `Aws::AssumeRoleCredentials` - Used when you need to assume a role.
    #
    #   When `:credentials` are not configured directly, the following
    #   locations will be searched for credentials:
    #
    #   * `Aws.config[:credentials]`
    #   * The `:access_key_id`, `:secret_access_key`, and `:session_token` options.
    #   * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY']
    #   * `~/.aws/credentials`
    #   * `~/.aws/config`
    #   * EC2 IMDS instance profile - When used by default, the timeouts are
    #     very aggressive. Construct and pass an instance of
    #     `Aws::InstanceProfileCredentails` to enable retries and extended
    #     timeouts.
    #
    # @option options [required, String] :region
    #   The AWS region to connect to.  The configured `:region` is
    #   used to determine the service `:endpoint`. When not passed,
    #   a default `:region` is search for in the following locations:
    #
    #   * `Aws.config[:region]`
    #   * `ENV['AWS_REGION']`
    #   * `ENV['AMAZON_REGION']`
    #   * `ENV['AWS_DEFAULT_REGION']`
    #   * `~/.aws/credentials`
    #   * `~/.aws/config`
    #
    # @option options [String] :access_key_id
    #
    # @option options [] :client_side_monitoring (false)
    #   When `true`, client-side metrics will be collected for all API requests from
    #   this client.
    #
    # @option options [] :client_side_monitoring_client_id ("")
    #   Allows you to provide an identifier for this client which will be attached to
    #   all generated client side metrics. Defaults to an empty string.
    #
    # @option options [] :client_side_monitoring_port (31000)
    #   Required for publishing client metrics. The port that the client side monitoring
    #   agent is running on, where client metrics will be published via UDP.
    #
    # @option options [] :client_side_monitoring_publisher (Aws::ClientSideMonitoring::Publisher)
    #   Allows you to provide a custom client-side monitoring publisher class. By default,
    #   will use the Client Side Monitoring Agent Publisher.
    #
    # @option options [Boolean] :convert_params (true)
    #   When `true`, an attempt is made to coerce request parameters into
    #   the required types.
    #
    # @option options [String] :endpoint
    #   The client endpoint is normally constructed from the `:region`
    #   option. You should only configure an `:endpoint` when connecting
    #   to test endpoints. This should be avalid HTTP(S) URI.
    #
    # @option options [Aws::Log::Formatter] :log_formatter (Aws::Log::Formatter.default)
    #   The log formatter.
    #
    # @option options [Symbol] :log_level (:info)
    #   The log level to send messages to the `:logger` at.
    #
    # @option options [Logger] :logger
    #   The Logger instance to send log messages to.  If this option
    #   is not set, logging will be disabled.
    #
    # @option options [String] :profile ("default")
    #   Used when loading credentials from the shared credentials file
    #   at HOME/.aws/credentials.  When not specified, 'default' is used.
    #
    # @option options [Float] :retry_base_delay (0.3)
    #   The base delay in seconds used by the default backoff function.
    #
    # @option options [Symbol] :retry_jitter (:none)
    #   A delay randomiser function used by the default backoff function. Some predefined functions can be referenced by name - :none, :equal, :full, otherwise a Proc that takes and returns a number.
    #
    #   @see https://www.awsarchitectureblog.com/2015/03/backoff.html
    #
    # @option options [Integer] :retry_limit (3)
    #   The maximum number of times to retry failed requests.  Only
    #   ~ 500 level server errors and certain ~ 400 level client errors
    #   are retried.  Generally, these are throttling errors, data
    #   checksum errors, networking errors, timeout errors and auth
    #   errors from expired credentials.
    #
    # @option options [Integer] :retry_max_delay (0)
    #   The maximum number of seconds to delay between retries (0 for no limit) used by the default backoff function.
    #
    # @option options [String] :secret_access_key
    #
    # @option options [String] :session_token
    #
    # @option options [Boolean] :simple_json (false)
    #   Disables request parameter conversion, validation, and formatting.
    #   Also disable response data type conversions. This option is useful
    #   when you want to ensure the highest level of performance by
    #   avoiding overhead of walking request parameters and response data
    #   structures.
    #
    #   When `:simple_json` is enabled, the request parameters hash must
    #   be formatted exactly as the DynamoDB API expects.
    #
    # @option options [Boolean] :stub_responses (false)
    #   Causes the client to return stubbed responses. By default
    #   fake responses are generated and returned. You can specify
    #   the response data to return or errors to raise by calling
    #   {ClientStubs#stub_responses}. See {ClientStubs} for more information.
    #
    #   ** Please note ** When response stubbing is enabled, no HTTP
    #   requests are made, and retries are disabled.
    #
    # @option options [Boolean] :validate_params (true)
    #   When `true`, request parameters are validated before
    #   sending the request.
    #
    def initialize(*args)
      super
    end

    # @!group API Operations

    # Creates a storage container to hold objects. A container is similar to
    # a bucket in the Amazon S3 service.
    #
    # @option params [required, String] :container_name
    #   The name for the container. The name must be from 1 to 255 characters.
    #   Container names must be unique to your AWS account within a specific
    #   region. As an example, you could create a container named `movies` in
    #   every region, as long as you don’t have an existing container with
    #   that name.
    #
    # @return [Types::CreateContainerOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateContainerOutput#container #container} => Types::Container
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_container({
    #     container_name: "ContainerName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.container.endpoint #=> String
    #   resp.container.creation_time #=> Time
    #   resp.container.arn #=> String
    #   resp.container.name #=> String
    #   resp.container.status #=> String, one of "ACTIVE", "CREATING", "DELETING"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediastore-2017-09-01/CreateContainer AWS API Documentation
    #
    # @overload create_container(params = {})
    # @param [Hash] params ({})
    def create_container(params = {}, options = {})
      req = build_request(:create_container, params)
      req.send_request(options)
    end

    # Deletes the specified container. Before you make a `DeleteContainer`
    # request, delete any objects in the container or in any folders in the
    # container. You can delete only empty containers.
    #
    # @option params [required, String] :container_name
    #   The name of the container to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_container({
    #     container_name: "ContainerName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediastore-2017-09-01/DeleteContainer AWS API Documentation
    #
    # @overload delete_container(params = {})
    # @param [Hash] params ({})
    def delete_container(params = {}, options = {})
      req = build_request(:delete_container, params)
      req.send_request(options)
    end

    # Deletes the access policy that is associated with the specified
    # container.
    #
    # @option params [required, String] :container_name
    #   The name of the container that holds the policy.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_container_policy({
    #     container_name: "ContainerName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediastore-2017-09-01/DeleteContainerPolicy AWS API Documentation
    #
    # @overload delete_container_policy(params = {})
    # @param [Hash] params ({})
    def delete_container_policy(params = {}, options = {})
      req = build_request(:delete_container_policy, params)
      req.send_request(options)
    end

    # Deletes the cross-origin resource sharing (CORS) configuration
    # information that is set for the container.
    #
    # To use this operation, you must have permission to perform the
    # `MediaStore:DeleteCorsPolicy` action. The container owner has this
    # permission by default and can grant this permission to others.
    #
    # @option params [required, String] :container_name
    #   The name of the container to remove the policy from.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_cors_policy({
    #     container_name: "ContainerName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediastore-2017-09-01/DeleteCorsPolicy AWS API Documentation
    #
    # @overload delete_cors_policy(params = {})
    # @param [Hash] params ({})
    def delete_cors_policy(params = {}, options = {})
      req = build_request(:delete_cors_policy, params)
      req.send_request(options)
    end

    # Retrieves the properties of the requested container. This request is
    # commonly used to retrieve the endpoint of a container. An endpoint is
    # a value assigned by the service when a new container is created. A
    # container's endpoint does not change after it has been assigned. The
    # `DescribeContainer` request returns a single `Container` object based
    # on `ContainerName`. To return all `Container` objects that are
    # associated with a specified AWS account, use ListContainers.
    #
    # @option params [String] :container_name
    #   The name of the container to query.
    #
    # @return [Types::DescribeContainerOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeContainerOutput#container #container} => Types::Container
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_container({
    #     container_name: "ContainerName",
    #   })
    #
    # @example Response structure
    #
    #   resp.container.endpoint #=> String
    #   resp.container.creation_time #=> Time
    #   resp.container.arn #=> String
    #   resp.container.name #=> String
    #   resp.container.status #=> String, one of "ACTIVE", "CREATING", "DELETING"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediastore-2017-09-01/DescribeContainer AWS API Documentation
    #
    # @overload describe_container(params = {})
    # @param [Hash] params ({})
    def describe_container(params = {}, options = {})
      req = build_request(:describe_container, params)
      req.send_request(options)
    end

    # Retrieves the access policy for the specified container. For
    # information about the data that is included in an access policy, see
    # the [AWS Identity and Access Management User Guide][1].
    #
    #
    #
    # [1]: https://aws.amazon.com/documentation/iam/
    #
    # @option params [required, String] :container_name
    #   The name of the container.
    #
    # @return [Types::GetContainerPolicyOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetContainerPolicyOutput#policy #policy} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_container_policy({
    #     container_name: "ContainerName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.policy #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediastore-2017-09-01/GetContainerPolicy AWS API Documentation
    #
    # @overload get_container_policy(params = {})
    # @param [Hash] params ({})
    def get_container_policy(params = {}, options = {})
      req = build_request(:get_container_policy, params)
      req.send_request(options)
    end

    # Returns the cross-origin resource sharing (CORS) configuration
    # information that is set for the container.
    #
    # To use this operation, you must have permission to perform the
    # `MediaStore:GetCorsPolicy` action. By default, the container owner has
    # this permission and can grant it to others.
    #
    # @option params [required, String] :container_name
    #   The name of the container that the policy is assigned to.
    #
    # @return [Types::GetCorsPolicyOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCorsPolicyOutput#cors_policy #cors_policy} => Array&lt;Types::CorsRule&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_cors_policy({
    #     container_name: "ContainerName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.cors_policy #=> Array
    #   resp.cors_policy[0].allowed_origins #=> Array
    #   resp.cors_policy[0].allowed_origins[0] #=> String
    #   resp.cors_policy[0].allowed_methods #=> Array
    #   resp.cors_policy[0].allowed_methods[0] #=> String, one of "PUT", "GET", "DELETE", "HEAD"
    #   resp.cors_policy[0].allowed_headers #=> Array
    #   resp.cors_policy[0].allowed_headers[0] #=> String
    #   resp.cors_policy[0].max_age_seconds #=> Integer
    #   resp.cors_policy[0].expose_headers #=> Array
    #   resp.cors_policy[0].expose_headers[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediastore-2017-09-01/GetCorsPolicy AWS API Documentation
    #
    # @overload get_cors_policy(params = {})
    # @param [Hash] params ({})
    def get_cors_policy(params = {}, options = {})
      req = build_request(:get_cors_policy, params)
      req.send_request(options)
    end

    # Lists the properties of all containers in AWS Elemental MediaStore.
    #
    # You can query to receive all the containers in one response. Or you
    # can include the `MaxResults` parameter to receive a limited number of
    # containers in each response. In this case, the response includes a
    # token. To get the next set of containers, send the command again, this
    # time with the `NextToken` parameter (with the returned token as its
    # value). The next set of responses appears, with a token if there are
    # still more containers to receive.
    #
    # See also DescribeContainer, which gets the properties of one
    # container.
    #
    # @option params [String] :next_token
    #   Only if you used `MaxResults` in the first command, enter the token
    #   (which was included in the previous response) to obtain the next set
    #   of containers. This token is included in a response only if there
    #   actually are more containers to list.
    #
    # @option params [Integer] :max_results
    #   Enter the maximum number of containers in the response. Use from 1 to
    #   255 characters.
    #
    # @return [Types::ListContainersOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListContainersOutput#containers #containers} => Array&lt;Types::Container&gt;
    #   * {Types::ListContainersOutput#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_containers({
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.containers #=> Array
    #   resp.containers[0].endpoint #=> String
    #   resp.containers[0].creation_time #=> Time
    #   resp.containers[0].arn #=> String
    #   resp.containers[0].name #=> String
    #   resp.containers[0].status #=> String, one of "ACTIVE", "CREATING", "DELETING"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediastore-2017-09-01/ListContainers AWS API Documentation
    #
    # @overload list_containers(params = {})
    # @param [Hash] params ({})
    def list_containers(params = {}, options = {})
      req = build_request(:list_containers, params)
      req.send_request(options)
    end

    # Creates an access policy for the specified container to restrict the
    # users and clients that can access it. For information about the data
    # that is included in an access policy, see the [AWS Identity and Access
    # Management User Guide][1].
    #
    # For this release of the REST API, you can create only one policy for a
    # container. If you enter `PutContainerPolicy` twice, the second command
    # modifies the existing policy.
    #
    #
    #
    # [1]: https://aws.amazon.com/documentation/iam/
    #
    # @option params [required, String] :container_name
    #   The name of the container.
    #
    # @option params [required, String] :policy
    #   The contents of the policy, which includes the following:
    #
    #   * One `Version` tag
    #
    #   * One `Statement` tag that contains the standard tags for the policy.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_container_policy({
    #     container_name: "ContainerName", # required
    #     policy: "ContainerPolicy", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediastore-2017-09-01/PutContainerPolicy AWS API Documentation
    #
    # @overload put_container_policy(params = {})
    # @param [Hash] params ({})
    def put_container_policy(params = {}, options = {})
      req = build_request(:put_container_policy, params)
      req.send_request(options)
    end

    # Sets the cross-origin resource sharing (CORS) configuration on a
    # container so that the container can service cross-origin requests. For
    # example, you might want to enable a request whose origin is
    # http://www.example.com to access your AWS Elemental MediaStore
    # container at my.example.container.com by using the browser's
    # XMLHttpRequest capability.
    #
    # To enable CORS on a container, you attach a CORS policy to the
    # container. In the CORS policy, you configure rules that identify
    # origins and the HTTP methods that can be executed on your container.
    # The policy can contain up to 398,000 characters. You can add up to 100
    # rules to a CORS policy. If more than one rule applies, the service
    # uses the first applicable rule listed.
    #
    # @option params [required, String] :container_name
    #   The name of the container that you want to assign the CORS policy to.
    #
    # @option params [required, Array<Types::CorsRule>] :cors_policy
    #   The CORS policy to apply to the container.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_cors_policy({
    #     container_name: "ContainerName", # required
    #     cors_policy: [ # required
    #       {
    #         allowed_origins: ["Origin"],
    #         allowed_methods: ["PUT"], # accepts PUT, GET, DELETE, HEAD
    #         allowed_headers: ["Header"],
    #         max_age_seconds: 1,
    #         expose_headers: ["Header"],
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediastore-2017-09-01/PutCorsPolicy AWS API Documentation
    #
    # @overload put_cors_policy(params = {})
    # @param [Hash] params ({})
    def put_cors_policy(params = {}, options = {})
      req = build_request(:put_cors_policy, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config)
      context[:gem_name] = 'aws-sdk-mediastore'
      context[:gem_version] = '1.4.0'
      Seahorse::Client::Request.new(handlers, context)
    end

    # @api private
    # @deprecated
    def waiter_names
      []
    end

    class << self

      # @api private
      attr_reader :identifier

      # @api private
      def errors_module
        Errors
      end

    end
  end
end
