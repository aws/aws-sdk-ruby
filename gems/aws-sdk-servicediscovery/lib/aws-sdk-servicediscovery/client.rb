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
    # @option options [Integer] :retry_limit (3)
    #   The maximum number of times to retry failed requests.  Only
    #   ~ 500 level server errors and certain ~ 400 level client errors
    #   are retried.  Generally, these are throttling errors, data
    #   checksum errors, networking errors, timeout errors and auth
    #   errors from expired credentials.
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
    # service will be `backend.example.com`. You can associate more than one
    # service with the same namespace.
    #
    # @option params [required, String] :name
    #   The name that you want to assign to this namespace. When you create a
    #   namespace, Amazon Route 53 automatically creates a hosted zone that
    #   has the same name as the namespace.
    #
    # @option params [String] :creator_request_id
    #   An optional parameter that you can use to resolve concurrent creation
    #   requests. `CreatorRequestId` helps to determine if a specific client
    #   owns the namespace.
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
    # `backend.example.com`. You can associate more than one service with
    # the same namespace.
    #
    # @option params [required, String] :name
    #   The name that you want to assign to this namespace.
    #
    # @option params [String] :creator_request_id
    #   An optional parameter that you can use to resolve concurrent creation
    #   requests. `CreatorRequestId` helps to determine if a specific client
    #   owns the namespace.
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

    # Creates a service, which defines a template for the following
    # entities:
    #
    # * One to five resource record sets
    #
    # * Optionally, a health check
    #
    # After you create the service, you can submit a RegisterInstance
    # request, and Amazon Route 53 uses the values in the template to create
    # the specified entities.
    #
    # @option params [required, String] :name
    #   The name that you want to assign to the service.
    #
    # @option params [String] :creator_request_id
    #   An optional parameter that you can use to resolve concurrent creation
    #   requests. `CreatorRequestId` helps to determine if a specific client
    #   owns the namespace.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :description
    #   A description for the service.
    #
    # @option params [required, Types::DnsConfig] :dns_config
    #   A complex type that contains information about the resource record
    #   sets that you want Amazon Route 53 to create when you register an
    #   instance.
    #
    # @option params [Types::HealthCheckConfig] :health_check_config
    #   *Public DNS namespaces only.* A complex type that contains settings
    #   for an optional health check. If you specify settings for a health
    #   check, Amazon Route 53 associates the health check with all the
    #   resource record sets that you specify in `DnsConfig`.
    #
    #   <note markdown="1"> The health check uses 30 seconds as the request interval. This is the
    #   number of seconds between the time that each Amazon Route 53 health
    #   checker gets a response from your endpoint and the time that it sends
    #   the next health check request. A health checker in each data center
    #   around the world sends your endpoint a health check request every 30
    #   seconds. On average, your endpoint receives a health check request
    #   about every two seconds. Health checkers in different data centers
    #   don't coordinate with one another, so you'll sometimes see several
    #   requests per second followed by a few seconds with no health checks at
    #   all.
    #
    #    </note>
    #
    #   For information about the charges for health checks, see [Amazon Route
    #   53 Pricing][1].
    #
    #
    #
    #   [1]: http://aws.amazon.com/route53/pricing
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
    #       dns_records: [ # required
    #         {
    #           type: "SRV", # required, accepts SRV, A, AAAA
    #           ttl: 1, # required
    #         },
    #       ],
    #     },
    #     health_check_config: {
    #       type: "HTTP", # accepts HTTP, HTTPS, TCP
    #       resource_path: "ResourcePath",
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
    #   resp.service.dns_config.dns_records #=> Array
    #   resp.service.dns_config.dns_records[0].type #=> String, one of "SRV", "A", "AAAA"
    #   resp.service.dns_config.dns_records[0].ttl #=> Integer
    #   resp.service.health_check_config.type #=> String, one of "HTTP", "HTTPS", "TCP"
    #   resp.service.health_check_config.resource_path #=> String
    #   resp.service.health_check_config.failure_threshold #=> Integer
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

    # Deletes the resource record sets and the health check, if any, that
    # Amazon Route 53 created for the specified instance.
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
    # @option params [required, String] :service_id
    #   The ID of the service that the instance is associated with.
    #
    # @option params [Array<String>] :instances
    #   An array that contains the IDs of all the instances that you want to
    #   get the health status for. To get the IDs for the instances that
    #   you've created by using a specified service, submit a ListInstances
    #   request.
    #
    #   If you omit `Instances`, Amazon Route 53 returns the health status for
    #   all the instances that are associated with the specified service.
    #
    # @option params [Integer] :max_results
    #   The maximum number of instances that you want Amazon Route 53 to
    #   return in the response to a `GetInstancesHealthStatus` request. If you
    #   don't specify a value for `MaxResults`, Amazon Route 53 returns up to
    #   100 instances.
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
    # the response, such as a `CreateService` request. To get a list of
    # operations that match specified criteria, see ListOperations.
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
    #   resp.service.dns_config.dns_records #=> Array
    #   resp.service.dns_config.dns_records[0].type #=> String, one of "SRV", "A", "AAAA"
    #   resp.service.dns_config.dns_records[0].ttl #=> Integer
    #   resp.service.health_check_config.type #=> String, one of "HTTP", "HTTPS", "TCP"
    #   resp.service.health_check_config.resource_path #=> String
    #   resp.service.health_check_config.failure_threshold #=> Integer
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

    # Gets summary information about the instances that you created by using
    # a specified service.
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
    #   specify a value for `MaxResults`, Amazon Route 53 returns up to 100
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

    # Gets information about the namespaces that were created by the current
    # AWS account.
    #
    # @option params [String] :next_token
    #   For the first `ListNamespaces` request, omit this value.
    #
    #   If more than `MaxResults` namespaces match the specified criteria, you
    #   can submit another `ListNamespaces` request to get the next group of
    #   results. Specify the value of `NextToken` from the previous response
    #   in the next request.
    #
    # @option params [Integer] :max_results
    #   The maximum number of namespaces that you want Amazon Route 53 to
    #   return in the response to a `ListNamespaces` request. If you don't
    #   specify a value for `MaxResults`, Amazon Route 53 returns up to 100
    #   namespaces.
    #
    # @option params [Array<Types::NamespaceFilter>] :filters
    #   A complex type that contains specifications for the namespaces that
    #   you want to list.
    #
    #   If you specify more than one filter, an operation must match all
    #   filters to be returned by ListNamespaces.
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
    #   If more than `MaxResults` operations match the specified criteria, you
    #   can submit another `ListOperations` request to get the next group of
    #   results. Specify the value of `NextToken` from the previous response
    #   in the next request.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items that you want Amazon Route 53 to return in
    #   the response to a `ListOperations` request. If you don't specify a
    #   value for `MaxResults`, Amazon Route 53 returns up to 100 operations.
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

    # Gets settings for all the services that are associated with one or
    # more specified namespaces.
    #
    # @option params [String] :next_token
    #   For the first `ListServices` request, omit this value.
    #
    #   If more than `MaxResults` services match the specified criteria, you
    #   can submit another `ListServices` request to get the next group of
    #   results. Specify the value of `NextToken` from the previous response
    #   in the next request.
    #
    # @option params [Integer] :max_results
    #   The maximum number of services that you want Amazon Route 53 to return
    #   in the response to a `ListServices` request. If you don't specify a
    #   value for `MaxResults`, Amazon Route 53 returns up to 100 services.
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

    # Creates one or more resource record sets and optionally a health check
    # based on the settings in a specified service. When you submit a
    # `RegisterInstance` request, Amazon Route 53 does the following:
    #
    # * Creates a resource record set for each resource record set template
    #   in the service
    #
    # * Creates a health check based on the settings in the health check
    #   template in the service, if any
    #
    # * Associates the health check, if any, with each of the resource
    #   record sets
    #
    # One `RegisterInstance` request must complete before you can submit
    # another request and specify the same service and instance ID.
    #
    # For more information, see CreateService.
    #
    # When Amazon Route 53 receives a DNS query for the specified DNS name,
    # it returns the applicable value:
    #
    # * **If the health check is healthy**\: returns all the resource record
    #   sets
    #
    # * **If the health check is unhealthy**\: returns the IP address of the
    #   last healthy instance
    #
    # * **If you didn't specify a health check template**\: returns all the
    #   resource record sets
    #
    # @option params [required, String] :service_id
    #   The ID of the service that you want to use for settings for the
    #   resource record sets and health check that Amazon Route 53 will
    #   create.
    #
    # @option params [required, String] :instance_id
    #   An identifier that you want to associate with the instance. Note the
    #   following:
    #
    #   * You can use this value to update an existing instance.
    #
    #   * To register a new instance, you must specify a value that is unique
    #     among instances that you register by using the same service.
    #
    # @option params [String] :creator_request_id
    #   An optional parameter that you can use to resolve concurrent creation
    #   requests. `CreatorRequestId` helps to determine if a specific client
    #   owns the namespace.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, Hash<String,String>] :attributes
    #   A string map that contain attribute keys and values. Supported
    #   attribute keys include the following:
    #
    #   * `AWS_INSTANCE_PORT`\: The port on the endpoint that you want Amazon
    #     Route 53 to perform health checks on. This value is also used for
    #     the port value in an SRV record if the service that you specify
    #     includes an SRV record. For more information, see CreateService.
    #
    #   * `AWS_INSTANCE_IPV4`\: If the service that you specify contains a
    #     resource record set template for an A record, the IPv4 address that
    #     you want Amazon Route 53 to use for the value of the A record.
    #
    #   * `AWS_INSTANCE_IPV6`\: If the service that you specify contains a
    #     resource record set template for an AAAA record, the IPv6 address
    #     that you want Amazon Route 53 to use for the value of the AAAA
    #     record.
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

    # Updates the TTL setting for a specified service. You must specify all
    # the resource record set templates (and, optionally, a health check
    # template) that you want to appear in the updated service. Any current
    # resource record set templates (or health check template) that don't
    # appear in an `UpdateService` request are deleted.
    #
    # When you update the TTL setting for a service, Amazon Route 53 also
    # updates the corresponding settings in all the resource record sets and
    # health checks that were created by using the specified service.
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
    #             type: "SRV", # required, accepts SRV, A, AAAA
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
      context[:gem_version] = '1.0.0'
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
