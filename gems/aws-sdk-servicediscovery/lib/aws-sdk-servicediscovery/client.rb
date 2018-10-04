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

Aws::Plugins::GlobalConfiguration.add_identifier(:servicediscovery)

module Aws::ServiceDiscovery
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :servicediscovery

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

    # Creates a private namespace based on DNS, which will be visible only
    # inside a specified Amazon VPC. The namespace defines your service
    # naming scheme. For example, if you name your namespace `example.com`
    # and name your service `backend`, the resulting DNS name for the
    # service will be `backend.example.com`. For the current limit on the
    # number of namespaces that you can create using the same AWS account,
    # see [Limits on Auto Naming][1] in the *Route 53 Developer Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DNSLimitations.html#limits-api-entities-autonaming
    #
    # @option params [required, String] :name
    #   The name that you want to assign to this namespace. When you create a
    #   namespace, Amazon Route 53 automatically creates a hosted zone that
    #   has the same name as the namespace.
    #
    # @option params [String] :creator_request_id
    #   A unique string that identifies the request and that allows failed
    #   `CreatePrivateDnsNamespace` requests to be retried without the risk of
    #   executing the operation twice. `CreatorRequestId` can be any unique
    #   string, for example, a date/time stamp.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :description
    #   A description for the namespace.
    #
    # @option params [required, String] :vpc
    #   The ID of the Amazon VPC that you want to associate the namespace
    #   with.
    #
    # @return [Types::CreatePrivateDnsNamespaceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreatePrivateDnsNamespaceResponse#operation_id #operation_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_private_dns_namespace({
    #     name: "NamespaceName", # required
    #     creator_request_id: "ResourceId",
    #     description: "ResourceDescription",
    #     vpc: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.operation_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/CreatePrivateDnsNamespace AWS API Documentation
    #
    # @overload create_private_dns_namespace(params = {})
    # @param [Hash] params ({})
    def create_private_dns_namespace(params = {}, options = {})
      req = build_request(:create_private_dns_namespace, params)
      req.send_request(options)
    end

    # Creates a public namespace based on DNS, which will be visible on the
    # internet. The namespace defines your service naming scheme. For
    # example, if you name your namespace `example.com` and name your
    # service `backend`, the resulting DNS name for the service will be
    # `backend.example.com`. For the current limit on the number of
    # namespaces that you can create using the same AWS account, see [Limits
    # on Auto Naming][1] in the *Route 53 Developer Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DNSLimitations.html#limits-api-entities-autonaming
    #
    # @option params [required, String] :name
    #   The name that you want to assign to this namespace.
    #
    # @option params [String] :creator_request_id
    #   A unique string that identifies the request and that allows failed
    #   `CreatePublicDnsNamespace` requests to be retried without the risk of
    #   executing the operation twice. `CreatorRequestId` can be any unique
    #   string, for example, a date/time stamp.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :description
    #   A description for the namespace.
    #
    # @return [Types::CreatePublicDnsNamespaceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreatePublicDnsNamespaceResponse#operation_id #operation_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_public_dns_namespace({
    #     name: "NamespaceName", # required
    #     creator_request_id: "ResourceId",
    #     description: "ResourceDescription",
    #   })
    #
    # @example Response structure
    #
    #   resp.operation_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/CreatePublicDnsNamespace AWS API Documentation
    #
    # @overload create_public_dns_namespace(params = {})
    # @param [Hash] params ({})
    def create_public_dns_namespace(params = {}, options = {})
      req = build_request(:create_public_dns_namespace, params)
      req.send_request(options)
    end

    # Creates a service, which defines the configuration for the following
    # entities:
    #
    # * Up to three records (A, AAAA, and SRV) or one CNAME record
    #
    # * Optionally, a health check
    #
    # After you create the service, you can submit a RegisterInstance
    # request, and Amazon Route 53 uses the values in the configuration to
    # create the specified entities.
    #
    # For the current limit on the number of instances that you can register
    # using the same namespace and using the same service, see [Limits on
    # Auto Naming][1] in the *Route 53 Developer Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DNSLimitations.html#limits-api-entities-autonaming
    #
    # @option params [required, String] :name
    #   The name that you want to assign to the service.
    #
    # @option params [String] :creator_request_id
    #   A unique string that identifies the request and that allows failed
    #   `CreateService` requests to be retried without the risk of executing
    #   the operation twice. `CreatorRequestId` can be any unique string, for
    #   example, a date/time stamp.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :description
    #   A description for the service.
    #
    # @option params [required, Types::DnsConfig] :dns_config
    #   A complex type that contains information about the records that you
    #   want Route 53 to create when you register an instance.
    #
    # @option params [Types::HealthCheckConfig] :health_check_config
    #   *Public DNS namespaces only.* A complex type that contains settings
    #   for an optional health check. If you specify settings for a health
    #   check, Route 53 associates the health check with all the records that
    #   you specify in `DnsConfig`.
    #
    #   For information about the charges for health checks, see [Route 53
    #   Pricing][1].
    #
    #
    #
    #   [1]: http://aws.amazon.com/route53/pricing
    #
    # @option params [Types::HealthCheckCustomConfig] :health_check_custom_config
    #
    # @return [Types::CreateServiceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateServiceResponse#service #service} => Types::Service
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_service({
    #     name: "ServiceName", # required
    #     creator_request_id: "ResourceId",
    #     description: "ResourceDescription",
    #     dns_config: { # required
    #       namespace_id: "ResourceId", # required
    #       routing_policy: "MULTIVALUE", # accepts MULTIVALUE, WEIGHTED
    #       dns_records: [ # required
    #         {
    #           type: "SRV", # required, accepts SRV, A, AAAA, CNAME
    #           ttl: 1, # required
    #         },
    #       ],
    #     },
    #     health_check_config: {
    #       type: "HTTP", # accepts HTTP, HTTPS, TCP
    #       resource_path: "ResourcePath",
    #       failure_threshold: 1,
    #     },
    #     health_check_custom_config: {
    #       failure_threshold: 1,
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.service.id #=> String
    #   resp.service.arn #=> String
    #   resp.service.name #=> String
    #   resp.service.description #=> String
    #   resp.service.instance_count #=> Integer
    #   resp.service.dns_config.namespace_id #=> String
    #   resp.service.dns_config.routing_policy #=> String, one of "MULTIVALUE", "WEIGHTED"
    #   resp.service.dns_config.dns_records #=> Array
    #   resp.service.dns_config.dns_records[0].type #=> String, one of "SRV", "A", "AAAA", "CNAME"
    #   resp.service.dns_config.dns_records[0].ttl #=> Integer
    #   resp.service.health_check_config.type #=> String, one of "HTTP", "HTTPS", "TCP"
    #   resp.service.health_check_config.resource_path #=> String
    #   resp.service.health_check_config.failure_threshold #=> Integer
    #   resp.service.health_check_custom_config.failure_threshold #=> Integer
    #   resp.service.create_date #=> Time
    #   resp.service.creator_request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/CreateService AWS API Documentation
    #
    # @overload create_service(params = {})
    # @param [Hash] params ({})
    def create_service(params = {}, options = {})
      req = build_request(:create_service, params)
      req.send_request(options)
    end

    # Deletes a namespace from the current account. If the namespace still
    # contains one or more services, the request fails.
    #
    # @option params [required, String] :id
    #   The ID of the namespace that you want to delete.
    #
    # @return [Types::DeleteNamespaceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteNamespaceResponse#operation_id #operation_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_namespace({
    #     id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.operation_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/DeleteNamespace AWS API Documentation
    #
    # @overload delete_namespace(params = {})
    # @param [Hash] params ({})
    def delete_namespace(params = {}, options = {})
      req = build_request(:delete_namespace, params)
      req.send_request(options)
    end

    # Deletes a specified service. If the service still contains one or more
    # registered instances, the request fails.
    #
    # @option params [required, String] :id
    #   The ID of the service that you want to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_service({
    #     id: "ResourceId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/DeleteService AWS API Documentation
    #
    # @overload delete_service(params = {})
    # @param [Hash] params ({})
    def delete_service(params = {}, options = {})
      req = build_request(:delete_service, params)
      req.send_request(options)
    end

    # Deletes the records and the health check, if any, that Amazon Route 53
    # created for the specified instance.
    #
    # @option params [required, String] :service_id
    #   The ID of the service that the instance is associated with.
    #
    # @option params [required, String] :instance_id
    #   The value that you specified for `Id` in the RegisterInstance request.
    #
    # @return [Types::DeregisterInstanceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeregisterInstanceResponse#operation_id #operation_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deregister_instance({
    #     service_id: "ResourceId", # required
    #     instance_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.operation_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/DeregisterInstance AWS API Documentation
    #
    # @overload deregister_instance(params = {})
    # @param [Hash] params ({})
    def deregister_instance(params = {}, options = {})
      req = build_request(:deregister_instance, params)
      req.send_request(options)
    end

    # Gets information about a specified instance.
    #
    # @option params [required, String] :service_id
    #   The ID of the service that the instance is associated with.
    #
    # @option params [required, String] :instance_id
    #   The ID of the instance that you want to get information about.
    #
    # @return [Types::GetInstanceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetInstanceResponse#instance #instance} => Types::Instance
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_instance({
    #     service_id: "ResourceId", # required
    #     instance_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.instance.id #=> String
    #   resp.instance.creator_request_id #=> String
    #   resp.instance.attributes #=> Hash
    #   resp.instance.attributes["AttrKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/GetInstance AWS API Documentation
    #
    # @overload get_instance(params = {})
    # @param [Hash] params ({})
    def get_instance(params = {}, options = {})
      req = build_request(:get_instance, params)
      req.send_request(options)
    end

    # Gets the current health status (`Healthy`, `Unhealthy`, or `Unknown`)
    # of one or more instances that are associated with a specified service.
    #
    # <note markdown="1"> There is a brief delay between when you register an instance and when
    # the health status for the instance is available.
    #
    #  </note>
    #
    # @option params [required, String] :service_id
    #   The ID of the service that the instance is associated with.
    #
    # @option params [Array<String>] :instances
    #   An array that contains the IDs of all the instances that you want to
    #   get the health status for.
    #
    #   If you omit `Instances`, Amazon Route 53 returns the health status for
    #   all the instances that are associated with the specified service.
    #
    #   <note markdown="1"> To get the IDs for the instances that you've registered by using a
    #   specified service, submit a ListInstances request.
    #
    #    </note>
    #
    # @option params [Integer] :max_results
    #   The maximum number of instances that you want Route 53 to return in
    #   the response to a `GetInstancesHealthStatus` request. If you don't
    #   specify a value for `MaxResults`, Route 53 returns up to 100
    #   instances.
    #
    # @option params [String] :next_token
    #   For the first `GetInstancesHealthStatus` request, omit this value.
    #
    #   If more than `MaxResults` instances match the specified criteria, you
    #   can submit another `GetInstancesHealthStatus` request to get the next
    #   group of results. Specify the value of `NextToken` from the previous
    #   response in the next request.
    #
    # @return [Types::GetInstancesHealthStatusResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetInstancesHealthStatusResponse#status #status} => Hash&lt;String,String&gt;
    #   * {Types::GetInstancesHealthStatusResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_instances_health_status({
    #     service_id: "ResourceId", # required
    #     instances: ["ResourceId"],
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> Hash
    #   resp.status["ResourceId"] #=> String, one of "HEALTHY", "UNHEALTHY", "UNKNOWN"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/GetInstancesHealthStatus AWS API Documentation
    #
    # @overload get_instances_health_status(params = {})
    # @param [Hash] params ({})
    def get_instances_health_status(params = {}, options = {})
      req = build_request(:get_instances_health_status, params)
      req.send_request(options)
    end

    # Gets information about a namespace.
    #
    # @option params [required, String] :id
    #   The ID of the namespace that you want to get information about.
    #
    # @return [Types::GetNamespaceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetNamespaceResponse#namespace #namespace} => Types::Namespace
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_namespace({
    #     id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.namespace.id #=> String
    #   resp.namespace.arn #=> String
    #   resp.namespace.name #=> String
    #   resp.namespace.type #=> String, one of "DNS_PUBLIC", "DNS_PRIVATE"
    #   resp.namespace.description #=> String
    #   resp.namespace.service_count #=> Integer
    #   resp.namespace.properties.dns_properties.hosted_zone_id #=> String
    #   resp.namespace.create_date #=> Time
    #   resp.namespace.creator_request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/GetNamespace AWS API Documentation
    #
    # @overload get_namespace(params = {})
    # @param [Hash] params ({})
    def get_namespace(params = {}, options = {})
      req = build_request(:get_namespace, params)
      req.send_request(options)
    end

    # Gets information about any operation that returns an operation ID in
    # the response, such as a `CreateService` request.
    #
    # <note markdown="1"> To get a list of operations that match specified criteria, see
    # ListOperations.
    #
    #  </note>
    #
    # @option params [required, String] :operation_id
    #   The ID of the operation that you want to get more information about.
    #
    # @return [Types::GetOperationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetOperationResponse#operation #operation} => Types::Operation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_operation({
    #     operation_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.operation.id #=> String
    #   resp.operation.type #=> String, one of "CREATE_NAMESPACE", "DELETE_NAMESPACE", "UPDATE_SERVICE", "REGISTER_INSTANCE", "DEREGISTER_INSTANCE"
    #   resp.operation.status #=> String, one of "SUBMITTED", "PENDING", "SUCCESS", "FAIL"
    #   resp.operation.error_message #=> String
    #   resp.operation.error_code #=> String
    #   resp.operation.create_date #=> Time
    #   resp.operation.update_date #=> Time
    #   resp.operation.targets #=> Hash
    #   resp.operation.targets["OperationTargetType"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/GetOperation AWS API Documentation
    #
    # @overload get_operation(params = {})
    # @param [Hash] params ({})
    def get_operation(params = {}, options = {})
      req = build_request(:get_operation, params)
      req.send_request(options)
    end

    # Gets the settings for a specified service.
    #
    # @option params [required, String] :id
    #   The ID of the service that you want to get settings for.
    #
    # @return [Types::GetServiceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetServiceResponse#service #service} => Types::Service
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_service({
    #     id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.service.id #=> String
    #   resp.service.arn #=> String
    #   resp.service.name #=> String
    #   resp.service.description #=> String
    #   resp.service.instance_count #=> Integer
    #   resp.service.dns_config.namespace_id #=> String
    #   resp.service.dns_config.routing_policy #=> String, one of "MULTIVALUE", "WEIGHTED"
    #   resp.service.dns_config.dns_records #=> Array
    #   resp.service.dns_config.dns_records[0].type #=> String, one of "SRV", "A", "AAAA", "CNAME"
    #   resp.service.dns_config.dns_records[0].ttl #=> Integer
    #   resp.service.health_check_config.type #=> String, one of "HTTP", "HTTPS", "TCP"
    #   resp.service.health_check_config.resource_path #=> String
    #   resp.service.health_check_config.failure_threshold #=> Integer
    #   resp.service.health_check_custom_config.failure_threshold #=> Integer
    #   resp.service.create_date #=> Time
    #   resp.service.creator_request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/GetService AWS API Documentation
    #
    # @overload get_service(params = {})
    # @param [Hash] params ({})
    def get_service(params = {}, options = {})
      req = build_request(:get_service, params)
      req.send_request(options)
    end

    # Lists summary information about the instances that you registered by
    # using a specified service.
    #
    # @option params [required, String] :service_id
    #   The ID of the service that you want to list instances for.
    #
    # @option params [String] :next_token
    #   For the first `ListInstances` request, omit this value.
    #
    #   If more than `MaxResults` instances match the specified criteria, you
    #   can submit another `ListInstances` request to get the next group of
    #   results. Specify the value of `NextToken` from the previous response
    #   in the next request.
    #
    # @option params [Integer] :max_results
    #   The maximum number of instances that you want Amazon Route 53 to
    #   return in the response to a `ListInstances` request. If you don't
    #   specify a value for `MaxResults`, Route 53 returns up to 100
    #   instances.
    #
    # @return [Types::ListInstancesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListInstancesResponse#instances #instances} => Array&lt;Types::InstanceSummary&gt;
    #   * {Types::ListInstancesResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_instances({
    #     service_id: "ResourceId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.instances #=> Array
    #   resp.instances[0].id #=> String
    #   resp.instances[0].attributes #=> Hash
    #   resp.instances[0].attributes["AttrKey"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/ListInstances AWS API Documentation
    #
    # @overload list_instances(params = {})
    # @param [Hash] params ({})
    def list_instances(params = {}, options = {})
      req = build_request(:list_instances, params)
      req.send_request(options)
    end

    # Lists summary information about the namespaces that were created by
    # the current AWS account.
    #
    # @option params [String] :next_token
    #   For the first `ListNamespaces` request, omit this value.
    #
    #   If the response contains `NextToken`, submit another `ListNamespaces`
    #   request to get the next group of results. Specify the value of
    #   `NextToken` from the previous response in the next request.
    #
    #   <note markdown="1"> Route 53 gets `MaxResults` namespaces and then filters them based on
    #   the specified criteria. It's possible that no namespaces in the first
    #   `MaxResults` namespaces matched the specified criteria but that
    #   subsequent groups of `MaxResults` namespaces do contain namespaces
    #   that match the criteria.
    #
    #    </note>
    #
    # @option params [Integer] :max_results
    #   The maximum number of namespaces that you want Amazon Route 53 to
    #   return in the response to a `ListNamespaces` request. If you don't
    #   specify a value for `MaxResults`, Route 53 returns up to 100
    #   namespaces.
    #
    # @option params [Array<Types::NamespaceFilter>] :filters
    #   A complex type that contains specifications for the namespaces that
    #   you want to list.
    #
    #   If you specify more than one filter, a namespace must match all
    #   filters to be returned by `ListNamespaces`.
    #
    # @return [Types::ListNamespacesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListNamespacesResponse#namespaces #namespaces} => Array&lt;Types::NamespaceSummary&gt;
    #   * {Types::ListNamespacesResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_namespaces({
    #     next_token: "NextToken",
    #     max_results: 1,
    #     filters: [
    #       {
    #         name: "TYPE", # required, accepts TYPE
    #         values: ["FilterValue"], # required
    #         condition: "EQ", # accepts EQ, IN, BETWEEN
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.namespaces #=> Array
    #   resp.namespaces[0].id #=> String
    #   resp.namespaces[0].arn #=> String
    #   resp.namespaces[0].name #=> String
    #   resp.namespaces[0].type #=> String, one of "DNS_PUBLIC", "DNS_PRIVATE"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/ListNamespaces AWS API Documentation
    #
    # @overload list_namespaces(params = {})
    # @param [Hash] params ({})
    def list_namespaces(params = {}, options = {})
      req = build_request(:list_namespaces, params)
      req.send_request(options)
    end

    # Lists operations that match the criteria that you specify.
    #
    # @option params [String] :next_token
    #   For the first `ListOperations` request, omit this value.
    #
    #   If the response contains `NextToken`, submit another `ListOperations`
    #   request to get the next group of results. Specify the value of
    #   `NextToken` from the previous response in the next request.
    #
    #   <note markdown="1"> Route 53 gets `MaxResults` operations and then filters them based on
    #   the specified criteria. It's possible that no operations in the first
    #   `MaxResults` operations matched the specified criteria but that
    #   subsequent groups of `MaxResults` operations do contain operations
    #   that match the criteria.
    #
    #    </note>
    #
    # @option params [Integer] :max_results
    #   The maximum number of items that you want Amazon Route 53 to return in
    #   the response to a `ListOperations` request. If you don't specify a
    #   value for `MaxResults`, Route 53 returns up to 100 operations.
    #
    # @option params [Array<Types::OperationFilter>] :filters
    #   A complex type that contains specifications for the operations that
    #   you want to list, for example, operations that you started between a
    #   specified start date and end date.
    #
    #   If you specify more than one filter, an operation must match all
    #   filters to be returned by `ListOperations`.
    #
    # @return [Types::ListOperationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListOperationsResponse#operations #operations} => Array&lt;Types::OperationSummary&gt;
    #   * {Types::ListOperationsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_operations({
    #     next_token: "NextToken",
    #     max_results: 1,
    #     filters: [
    #       {
    #         name: "NAMESPACE_ID", # required, accepts NAMESPACE_ID, SERVICE_ID, STATUS, TYPE, UPDATE_DATE
    #         values: ["FilterValue"], # required
    #         condition: "EQ", # accepts EQ, IN, BETWEEN
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.operations #=> Array
    #   resp.operations[0].id #=> String
    #   resp.operations[0].status #=> String, one of "SUBMITTED", "PENDING", "SUCCESS", "FAIL"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/ListOperations AWS API Documentation
    #
    # @overload list_operations(params = {})
    # @param [Hash] params ({})
    def list_operations(params = {}, options = {})
      req = build_request(:list_operations, params)
      req.send_request(options)
    end

    # Lists summary information for all the services that are associated
    # with one or more specified namespaces.
    #
    # @option params [String] :next_token
    #   For the first `ListServices` request, omit this value.
    #
    #   If the response contains `NextToken`, submit another `ListServices`
    #   request to get the next group of results. Specify the value of
    #   `NextToken` from the previous response in the next request.
    #
    #   <note markdown="1"> Route 53 gets `MaxResults` services and then filters them based on the
    #   specified criteria. It's possible that no services in the first
    #   `MaxResults` services matched the specified criteria but that
    #   subsequent groups of `MaxResults` services do contain services that
    #   match the criteria.
    #
    #    </note>
    #
    # @option params [Integer] :max_results
    #   The maximum number of services that you want Amazon Route 53 to return
    #   in the response to a `ListServices` request. If you don't specify a
    #   value for `MaxResults`, Route 53 returns up to 100 services.
    #
    # @option params [Array<Types::ServiceFilter>] :filters
    #   A complex type that contains specifications for the namespaces that
    #   you want to list services for.
    #
    #   If you specify more than one filter, an operation must match all
    #   filters to be returned by `ListServices`.
    #
    # @return [Types::ListServicesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListServicesResponse#services #services} => Array&lt;Types::ServiceSummary&gt;
    #   * {Types::ListServicesResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_services({
    #     next_token: "NextToken",
    #     max_results: 1,
    #     filters: [
    #       {
    #         name: "NAMESPACE_ID", # required, accepts NAMESPACE_ID
    #         values: ["FilterValue"], # required
    #         condition: "EQ", # accepts EQ, IN, BETWEEN
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.services #=> Array
    #   resp.services[0].id #=> String
    #   resp.services[0].arn #=> String
    #   resp.services[0].name #=> String
    #   resp.services[0].description #=> String
    #   resp.services[0].instance_count #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/ListServices AWS API Documentation
    #
    # @overload list_services(params = {})
    # @param [Hash] params ({})
    def list_services(params = {}, options = {})
      req = build_request(:list_services, params)
      req.send_request(options)
    end

    # Creates or updates one or more records and optionally a health check
    # based on the settings in a specified service. When you submit a
    # `RegisterInstance` request, Amazon Route 53 does the following:
    #
    # * For each DNS record that you define in the service specified by
    #   `ServiceId`, creates or updates a record in the hosted zone that is
    #   associated with the corresponding namespace
    #
    # * If the service includes `HealthCheckConfig`, creates or updates a
    #   health check based on the settings in the health check configuration
    #
    # * Associates the health check, if any, with each of the records
    #
    # One `RegisterInstance` request must complete before you can submit
    # another request and specify the same service ID and instance ID.
    #
    # For more information, see CreateService.
    #
    # When Route 53 receives a DNS query for the specified DNS name, it
    # returns the applicable value:
    #
    # * **If the health check is healthy**\: returns all the records
    #
    # * **If the health check is unhealthy**\: returns the applicable value
    #   for the last healthy instance
    #
    # * **If you didn't specify a health check configuration**\: returns
    #   all the records
    #
    # For the current limit on the number of instances that you can register
    # using the same namespace and using the same service, see [Limits on
    # Auto Naming][1] in the *Route 53 Developer Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DNSLimitations.html#limits-api-entities-autonaming
    #
    # @option params [required, String] :service_id
    #   The ID of the service that you want to use for settings for the
    #   records and health check that Route 53 will create.
    #
    # @option params [required, String] :instance_id
    #   An identifier that you want to associate with the instance. Note the
    #   following:
    #
    #   * If the service that is specified by `ServiceId` includes settings
    #     for an SRV record, the value of `InstanceId` is automatically
    #     included as part of the value for the SRV record. For more
    #     information, see DnsRecord$Type.
    #
    #   * You can use this value to update an existing instance.
    #
    #   * To register a new instance, you must specify a value that is unique
    #     among instances that you register by using the same service.
    #
    #   * If you specify an existing `InstanceId` and `ServiceId`, Route 53
    #     updates the existing records. If there's also an existing health
    #     check, Route 53 deletes the old health check and creates a new one.
    #
    #     <note markdown="1"> The health check isn't deleted immediately, so it will still appear
    #     for a while if you submit a `ListHealthChecks` request, for example.
    #
    #      </note>
    #
    # @option params [String] :creator_request_id
    #   A unique string that identifies the request and that allows failed
    #   `RegisterInstance` requests to be retried without the risk of
    #   executing the operation twice. You must use a unique
    #   `CreatorRequestId` string every time you submit a `RegisterInstance`
    #   request if you're registering additional instances for the same
    #   namespace and service. `CreatorRequestId` can be any unique string,
    #   for example, a date/time stamp.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, Hash<String,String>] :attributes
    #   A string map that contains the following information for the service
    #   that you specify in `ServiceId`\:
    #
    #   * The attributes that apply to the records that are defined in the
    #     service.
    #
    #   * For each attribute, the applicable value.
    #
    #   Supported attribute keys include the following:
    #
    #   **AWS\_ALIAS\_DNS\_NAME**
    #
    #   ****
    #
    #   If you want Route 53 to create an alias record that routes traffic to
    #   an Elastic Load Balancing load balancer, specify the DNS name that is
    #   associated with the load balancer. For information about how to get
    #   the DNS name, see "DNSName" in the topic [AliasTarget][1].
    #
    #   Note the following:
    #
    #   * The configuration for the service that is specified by `ServiceId`
    #     must include settings for an A record, an AAAA record, or both.
    #
    #   * In the service that is specified by `ServiceId`, the value of
    #     `RoutingPolicy` must be `WEIGHTED`.
    #
    #   * If the service that is specified by `ServiceId` includes
    #     `HealthCheckConfig` settings, Route 53 will create the health check,
    #     but it won't associate the health check with the alias record.
    #
    #   * Auto naming currently doesn't support creating alias records that
    #     route traffic to AWS resources other than ELB load balancers.
    #
    #   * If you specify a value for `AWS_ALIAS_DNS_NAME`, don't specify
    #     values for any of the `AWS_INSTANCE` attributes.
    #
    #   **AWS\_INSTANCE\_CNAME**
    #
    #   If the service configuration includes a CNAME record, the domain name
    #   that you want Route 53 to return in response to DNS queries, for
    #   example, `example.com`.
    #
    #   This value is required if the service specified by `ServiceId`
    #   includes settings for an CNAME record.
    #
    #   **AWS\_INSTANCE\_IPV4**
    #
    #   If the service configuration includes an A record, the IPv4 address
    #   that you want Route 53 to return in response to DNS queries, for
    #   example, `192.0.2.44`.
    #
    #   This value is required if the service specified by `ServiceId`
    #   includes settings for an A record. If the service includes settings
    #   for an SRV record, you must specify a value for `AWS_INSTANCE_IPV4`,
    #   `AWS_INSTANCE_IPV6`, or both.
    #
    #   **AWS\_INSTANCE\_IPV6**
    #
    #   If the service configuration includes an AAAA record, the IPv6 address
    #   that you want Route 53 to return in response to DNS queries, for
    #   example, `2001:0db8:85a3:0000:0000:abcd:0001:2345`.
    #
    #   This value is required if the service specified by `ServiceId`
    #   includes settings for an AAAA record. If the service includes settings
    #   for an SRV record, you must specify a value for `AWS_INSTANCE_IPV4`,
    #   `AWS_INSTANCE_IPV6`, or both.
    #
    #   **AWS\_INSTANCE\_PORT**
    #
    #   If the service includes an SRV record, the value that you want Route
    #   53 to return for the port.
    #
    #   If the service includes `HealthCheckConfig`, the port on the endpoint
    #   that you want Route 53 to send requests to.
    #
    #   This value is required if you specified settings for an SRV record
    #   when you created the service.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/http:/docs.aws.amazon.com/Route53/latest/APIReference/API_AliasTarget.html
    #
    # @return [Types::RegisterInstanceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RegisterInstanceResponse#operation_id #operation_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_instance({
    #     service_id: "ResourceId", # required
    #     instance_id: "ResourceId", # required
    #     creator_request_id: "ResourceId",
    #     attributes: { # required
    #       "AttrKey" => "AttrValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.operation_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/RegisterInstance AWS API Documentation
    #
    # @overload register_instance(params = {})
    # @param [Hash] params ({})
    def register_instance(params = {}, options = {})
      req = build_request(:register_instance, params)
      req.send_request(options)
    end

    # @option params [required, String] :service_id
    #
    # @option params [required, String] :instance_id
    #
    # @option params [required, String] :status
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_instance_custom_health_status({
    #     service_id: "ResourceId", # required
    #     instance_id: "ResourceId", # required
    #     status: "HEALTHY", # required, accepts HEALTHY, UNHEALTHY
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/UpdateInstanceCustomHealthStatus AWS API Documentation
    #
    # @overload update_instance_custom_health_status(params = {})
    # @param [Hash] params ({})
    def update_instance_custom_health_status(params = {}, options = {})
      req = build_request(:update_instance_custom_health_status, params)
      req.send_request(options)
    end

    # Submits a request to perform the following operations:
    #
    # * Add or delete `DnsRecords` configurations
    #
    # * Update the TTL setting for existing `DnsRecords` configurations
    #
    # * Add, update, or delete `HealthCheckConfig` for a specified service
    #
    # You must specify all `DnsRecords` configurations (and, optionally,
    # `HealthCheckConfig`) that you want to appear in the updated service.
    # Any current configurations that don't appear in an `UpdateService`
    # request are deleted.
    #
    # When you update the TTL setting for a service, Amazon Route 53 also
    # updates the corresponding settings in all the records and health
    # checks that were created by using the specified service.
    #
    # @option params [required, String] :id
    #   The ID of the service that you want to update.
    #
    # @option params [required, Types::ServiceChange] :service
    #   A complex type that contains the new settings for the service.
    #
    # @return [Types::UpdateServiceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateServiceResponse#operation_id #operation_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_service({
    #     id: "ResourceId", # required
    #     service: { # required
    #       description: "ResourceDescription",
    #       dns_config: { # required
    #         dns_records: [ # required
    #           {
    #             type: "SRV", # required, accepts SRV, A, AAAA, CNAME
    #             ttl: 1, # required
    #           },
    #         ],
    #       },
    #       health_check_config: {
    #         type: "HTTP", # accepts HTTP, HTTPS, TCP
    #         resource_path: "ResourcePath",
    #         failure_threshold: 1,
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.operation_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/UpdateService AWS API Documentation
    #
    # @overload update_service(params = {})
    # @param [Hash] params ({})
    def update_service(params = {}, options = {})
      req = build_request(:update_service, params)
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
      context[:gem_name] = 'aws-sdk-servicediscovery'
      context[:gem_version] = '1.5.0'
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
