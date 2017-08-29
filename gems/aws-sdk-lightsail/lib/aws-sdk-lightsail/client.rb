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

Aws::Plugins::GlobalConfiguration.add_identifier(:lightsail)

module Aws::Lightsail
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :lightsail

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

    # Allocates a static IP address.
    #
    # @option params [required, String] :static_ip_name
    #   The name of the static IP address.
    #
    # @return [Types::AllocateStaticIpResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AllocateStaticIpResult#operations #operations} => Array&lt;Types::Operation&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.allocate_static_ip({
    #     static_ip_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.operations #=> Array
    #   resp.operations[0].id #=> String
    #   resp.operations[0].resource_name #=> String
    #   resp.operations[0].resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc"
    #   resp.operations[0].created_at #=> Time
    #   resp.operations[0].location.availability_zone #=> String
    #   resp.operations[0].location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.operations[0].is_terminal #=> Boolean
    #   resp.operations[0].operation_details #=> String
    #   resp.operations[0].operation_type #=> String, one of "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot"
    #   resp.operations[0].status #=> String, one of "NotStarted", "Started", "Failed", "Completed"
    #   resp.operations[0].status_changed_at #=> Time
    #   resp.operations[0].error_code #=> String
    #   resp.operations[0].error_details #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/AllocateStaticIp AWS API Documentation
    #
    # @overload allocate_static_ip(params = {})
    # @param [Hash] params ({})
    def allocate_static_ip(params = {}, options = {})
      req = build_request(:allocate_static_ip, params)
      req.send_request(options)
    end

    # Attaches a static IP address to a specific Amazon Lightsail instance.
    #
    # @option params [required, String] :static_ip_name
    #   The name of the static IP.
    #
    # @option params [required, String] :instance_name
    #   The instance name to which you want to attach the static IP address.
    #
    # @return [Types::AttachStaticIpResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AttachStaticIpResult#operations #operations} => Array&lt;Types::Operation&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.attach_static_ip({
    #     static_ip_name: "ResourceName", # required
    #     instance_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.operations #=> Array
    #   resp.operations[0].id #=> String
    #   resp.operations[0].resource_name #=> String
    #   resp.operations[0].resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc"
    #   resp.operations[0].created_at #=> Time
    #   resp.operations[0].location.availability_zone #=> String
    #   resp.operations[0].location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.operations[0].is_terminal #=> Boolean
    #   resp.operations[0].operation_details #=> String
    #   resp.operations[0].operation_type #=> String, one of "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot"
    #   resp.operations[0].status #=> String, one of "NotStarted", "Started", "Failed", "Completed"
    #   resp.operations[0].status_changed_at #=> Time
    #   resp.operations[0].error_code #=> String
    #   resp.operations[0].error_details #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/AttachStaticIp AWS API Documentation
    #
    # @overload attach_static_ip(params = {})
    # @param [Hash] params ({})
    def attach_static_ip(params = {}, options = {})
      req = build_request(:attach_static_ip, params)
      req.send_request(options)
    end

    # Closes the public ports on a specific Amazon Lightsail instance.
    #
    # @option params [required, Types::PortInfo] :port_info
    #   Information about the public port you are trying to close.
    #
    # @option params [required, String] :instance_name
    #   The name of the instance on which you're attempting to close the
    #   public ports.
    #
    # @return [Types::CloseInstancePublicPortsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CloseInstancePublicPortsResult#operation #operation} => Types::Operation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.close_instance_public_ports({
    #     port_info: { # required
    #       from_port: 1,
    #       to_port: 1,
    #       protocol: "tcp", # accepts tcp, all, udp
    #     },
    #     instance_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.operation.id #=> String
    #   resp.operation.resource_name #=> String
    #   resp.operation.resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc"
    #   resp.operation.created_at #=> Time
    #   resp.operation.location.availability_zone #=> String
    #   resp.operation.location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.operation.is_terminal #=> Boolean
    #   resp.operation.operation_details #=> String
    #   resp.operation.operation_type #=> String, one of "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot"
    #   resp.operation.status #=> String, one of "NotStarted", "Started", "Failed", "Completed"
    #   resp.operation.status_changed_at #=> Time
    #   resp.operation.error_code #=> String
    #   resp.operation.error_details #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CloseInstancePublicPorts AWS API Documentation
    #
    # @overload close_instance_public_ports(params = {})
    # @param [Hash] params ({})
    def close_instance_public_ports(params = {}, options = {})
      req = build_request(:close_instance_public_ports, params)
      req.send_request(options)
    end

    # Creates a domain resource for the specified domain (e.g.,
    # example.com).
    #
    # @option params [required, String] :domain_name
    #   The domain name to manage (e.g., `example.com`).
    #
    #   <note markdown="1"> You cannot register a new domain name using Lightsail. You must
    #   register a domain name using Amazon Route 53 or another domain name
    #   registrar. If you have already registered your domain, you can enter
    #   its name in this parameter to manage the DNS records for that domain.
    #
    #    </note>
    #
    # @return [Types::CreateDomainResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDomainResult#operation #operation} => Types::Operation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_domain({
    #     domain_name: "DomainName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.operation.id #=> String
    #   resp.operation.resource_name #=> String
    #   resp.operation.resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc"
    #   resp.operation.created_at #=> Time
    #   resp.operation.location.availability_zone #=> String
    #   resp.operation.location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.operation.is_terminal #=> Boolean
    #   resp.operation.operation_details #=> String
    #   resp.operation.operation_type #=> String, one of "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot"
    #   resp.operation.status #=> String, one of "NotStarted", "Started", "Failed", "Completed"
    #   resp.operation.status_changed_at #=> Time
    #   resp.operation.error_code #=> String
    #   resp.operation.error_details #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CreateDomain AWS API Documentation
    #
    # @overload create_domain(params = {})
    # @param [Hash] params ({})
    def create_domain(params = {}, options = {})
      req = build_request(:create_domain, params)
      req.send_request(options)
    end

    # Creates one of the following entry records associated with the domain:
    # A record, CNAME record, TXT record, or MX record.
    #
    # @option params [required, String] :domain_name
    #   The domain name (e.g., `example.com`) for which you want to create the
    #   domain entry.
    #
    # @option params [required, Types::DomainEntry] :domain_entry
    #   An array of key-value pairs containing information about the domain
    #   entry request.
    #
    # @return [Types::CreateDomainEntryResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDomainEntryResult#operation #operation} => Types::Operation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_domain_entry({
    #     domain_name: "DomainName", # required
    #     domain_entry: { # required
    #       id: "NonEmptyString",
    #       name: "DomainName",
    #       target: "string",
    #       type: "DomainEntryType",
    #       options: {
    #         "DomainEntryOptionsKeys" => "string",
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.operation.id #=> String
    #   resp.operation.resource_name #=> String
    #   resp.operation.resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc"
    #   resp.operation.created_at #=> Time
    #   resp.operation.location.availability_zone #=> String
    #   resp.operation.location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.operation.is_terminal #=> Boolean
    #   resp.operation.operation_details #=> String
    #   resp.operation.operation_type #=> String, one of "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot"
    #   resp.operation.status #=> String, one of "NotStarted", "Started", "Failed", "Completed"
    #   resp.operation.status_changed_at #=> Time
    #   resp.operation.error_code #=> String
    #   resp.operation.error_details #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CreateDomainEntry AWS API Documentation
    #
    # @overload create_domain_entry(params = {})
    # @param [Hash] params ({})
    def create_domain_entry(params = {}, options = {})
      req = build_request(:create_domain_entry, params)
      req.send_request(options)
    end

    # Creates a snapshot of a specific virtual private server, or
    # *instance*. You can use a snapshot to create a new instance that is
    # based on that snapshot.
    #
    # @option params [required, String] :instance_snapshot_name
    #   The name for your new snapshot.
    #
    # @option params [required, String] :instance_name
    #   The Lightsail instance on which to base your snapshot.
    #
    # @return [Types::CreateInstanceSnapshotResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateInstanceSnapshotResult#operations #operations} => Array&lt;Types::Operation&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_instance_snapshot({
    #     instance_snapshot_name: "ResourceName", # required
    #     instance_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.operations #=> Array
    #   resp.operations[0].id #=> String
    #   resp.operations[0].resource_name #=> String
    #   resp.operations[0].resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc"
    #   resp.operations[0].created_at #=> Time
    #   resp.operations[0].location.availability_zone #=> String
    #   resp.operations[0].location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.operations[0].is_terminal #=> Boolean
    #   resp.operations[0].operation_details #=> String
    #   resp.operations[0].operation_type #=> String, one of "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot"
    #   resp.operations[0].status #=> String, one of "NotStarted", "Started", "Failed", "Completed"
    #   resp.operations[0].status_changed_at #=> Time
    #   resp.operations[0].error_code #=> String
    #   resp.operations[0].error_details #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CreateInstanceSnapshot AWS API Documentation
    #
    # @overload create_instance_snapshot(params = {})
    # @param [Hash] params ({})
    def create_instance_snapshot(params = {}, options = {})
      req = build_request(:create_instance_snapshot, params)
      req.send_request(options)
    end

    # Creates one or more Amazon Lightsail virtual private servers, or
    # *instances*.
    #
    # @option params [required, Array<String>] :instance_names
    #   The names to use for your new Lightsail instances. Separate multiple
    #   values using quotation marks and commas, for example:
    #   `["MyFirstInstance","MySecondInstance"]`
    #
    # @option params [required, String] :availability_zone
    #   The Availability Zone in which to create your instance. Use the
    #   following format: `us-east-1a` (case sensitive). You can get a list of
    #   availability zones by using the [get regions][1] operation. Be sure to
    #   add the `include availability zones` parameter to your request.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_GetRegions.html
    #
    # @option params [String] :custom_image_name
    #   (Deprecated) The name for your custom image.
    #
    #   <note markdown="1"> In releases prior to June 12, 2017, this parameter was ignored by the
    #   API. It is now deprecated.
    #
    #    </note>
    #
    # @option params [required, String] :blueprint_id
    #   The ID for a virtual private server image (e.g., `app_wordpress_4_4`
    #   or `app_lamp_7_0`). Use the get blueprints operation to return a list
    #   of available images (or *blueprints*).
    #
    # @option params [required, String] :bundle_id
    #   The bundle of specification information for your virtual private
    #   server (or *instance*), including the pricing plan (e.g.,
    #   `micro_1_0`).
    #
    # @option params [String] :user_data
    #   A launch script you can create that configures a server with
    #   additional user data. For example, you might want to run `apt-get –y
    #   update`.
    #
    #   <note markdown="1"> Depending on the machine image you choose, the command to get software
    #   on your instance varies. Amazon Linux and CentOS use `yum`, Debian and
    #   Ubuntu use `apt-get`, and FreeBSD uses `pkg`. For a complete list, see
    #   the [Dev Guide][1].
    #
    #    </note>
    #
    #
    #
    #   [1]: http://lightsail.aws.amazon.com/ls/docs/getting-started/articles/pre-installed-apps
    #
    # @option params [String] :key_pair_name
    #   The name of your key pair.
    #
    # @return [Types::CreateInstancesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateInstancesResult#operations #operations} => Array&lt;Types::Operation&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_instances({
    #     instance_names: ["string"], # required
    #     availability_zone: "string", # required
    #     custom_image_name: "ResourceName",
    #     blueprint_id: "NonEmptyString", # required
    #     bundle_id: "NonEmptyString", # required
    #     user_data: "string",
    #     key_pair_name: "ResourceName",
    #   })
    #
    # @example Response structure
    #
    #   resp.operations #=> Array
    #   resp.operations[0].id #=> String
    #   resp.operations[0].resource_name #=> String
    #   resp.operations[0].resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc"
    #   resp.operations[0].created_at #=> Time
    #   resp.operations[0].location.availability_zone #=> String
    #   resp.operations[0].location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.operations[0].is_terminal #=> Boolean
    #   resp.operations[0].operation_details #=> String
    #   resp.operations[0].operation_type #=> String, one of "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot"
    #   resp.operations[0].status #=> String, one of "NotStarted", "Started", "Failed", "Completed"
    #   resp.operations[0].status_changed_at #=> Time
    #   resp.operations[0].error_code #=> String
    #   resp.operations[0].error_details #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CreateInstances AWS API Documentation
    #
    # @overload create_instances(params = {})
    # @param [Hash] params ({})
    def create_instances(params = {}, options = {})
      req = build_request(:create_instances, params)
      req.send_request(options)
    end

    # Uses a specific snapshot as a blueprint for creating one or more new
    # instances that are based on that identical configuration.
    #
    # @option params [required, Array<String>] :instance_names
    #   The names for your new instances.
    #
    # @option params [required, String] :availability_zone
    #   The Availability Zone where you want to create your instances. Use the
    #   following formatting: `us-east-1a` (case sensitive). You can get a
    #   list of availability zones by using the [get regions][1] operation. Be
    #   sure to add the `include availability zones` parameter to your
    #   request.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_GetRegions.html
    #
    # @option params [required, String] :instance_snapshot_name
    #   The name of the instance snapshot on which you are basing your new
    #   instances. Use the get instance snapshots operation to return
    #   information about your existing snapshots.
    #
    # @option params [required, String] :bundle_id
    #   The bundle of specification information for your virtual private
    #   server (or *instance*), including the pricing plan (e.g.,
    #   `micro_1_0`).
    #
    # @option params [String] :user_data
    #   You can create a launch script that configures a server with
    #   additional user data. For example, `apt-get –y update`.
    #
    #   <note markdown="1"> Depending on the machine image you choose, the command to get software
    #   on your instance varies. Amazon Linux and CentOS use `yum`, Debian and
    #   Ubuntu use `apt-get`, and FreeBSD uses `pkg`. For a complete list, see
    #   the [Dev Guide][1].
    #
    #    </note>
    #
    #
    #
    #   [1]: http://lightsail.aws.amazon.com/ls/docs/getting-started/articles/pre-installed-apps
    #
    # @option params [String] :key_pair_name
    #   The name for your key pair.
    #
    # @return [Types::CreateInstancesFromSnapshotResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateInstancesFromSnapshotResult#operations #operations} => Array&lt;Types::Operation&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_instances_from_snapshot({
    #     instance_names: ["string"], # required
    #     availability_zone: "string", # required
    #     instance_snapshot_name: "ResourceName", # required
    #     bundle_id: "NonEmptyString", # required
    #     user_data: "string",
    #     key_pair_name: "ResourceName",
    #   })
    #
    # @example Response structure
    #
    #   resp.operations #=> Array
    #   resp.operations[0].id #=> String
    #   resp.operations[0].resource_name #=> String
    #   resp.operations[0].resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc"
    #   resp.operations[0].created_at #=> Time
    #   resp.operations[0].location.availability_zone #=> String
    #   resp.operations[0].location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.operations[0].is_terminal #=> Boolean
    #   resp.operations[0].operation_details #=> String
    #   resp.operations[0].operation_type #=> String, one of "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot"
    #   resp.operations[0].status #=> String, one of "NotStarted", "Started", "Failed", "Completed"
    #   resp.operations[0].status_changed_at #=> Time
    #   resp.operations[0].error_code #=> String
    #   resp.operations[0].error_details #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CreateInstancesFromSnapshot AWS API Documentation
    #
    # @overload create_instances_from_snapshot(params = {})
    # @param [Hash] params ({})
    def create_instances_from_snapshot(params = {}, options = {})
      req = build_request(:create_instances_from_snapshot, params)
      req.send_request(options)
    end

    # Creates sn SSH key pair.
    #
    # @option params [required, String] :key_pair_name
    #   The name for your new key pair.
    #
    # @return [Types::CreateKeyPairResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateKeyPairResult#key_pair #key_pair} => Types::KeyPair
    #   * {Types::CreateKeyPairResult#public_key_base_64 #public_key_base_64} => String
    #   * {Types::CreateKeyPairResult#private_key_base_64 #private_key_base_64} => String
    #   * {Types::CreateKeyPairResult#operation #operation} => Types::Operation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_key_pair({
    #     key_pair_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.key_pair.name #=> String
    #   resp.key_pair.arn #=> String
    #   resp.key_pair.support_code #=> String
    #   resp.key_pair.created_at #=> Time
    #   resp.key_pair.location.availability_zone #=> String
    #   resp.key_pair.location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.key_pair.resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc"
    #   resp.key_pair.fingerprint #=> String
    #   resp.public_key_base_64 #=> String
    #   resp.private_key_base_64 #=> String
    #   resp.operation.id #=> String
    #   resp.operation.resource_name #=> String
    #   resp.operation.resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc"
    #   resp.operation.created_at #=> Time
    #   resp.operation.location.availability_zone #=> String
    #   resp.operation.location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.operation.is_terminal #=> Boolean
    #   resp.operation.operation_details #=> String
    #   resp.operation.operation_type #=> String, one of "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot"
    #   resp.operation.status #=> String, one of "NotStarted", "Started", "Failed", "Completed"
    #   resp.operation.status_changed_at #=> Time
    #   resp.operation.error_code #=> String
    #   resp.operation.error_details #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CreateKeyPair AWS API Documentation
    #
    # @overload create_key_pair(params = {})
    # @param [Hash] params ({})
    def create_key_pair(params = {}, options = {})
      req = build_request(:create_key_pair, params)
      req.send_request(options)
    end

    # Deletes the specified domain recordset and all of its domain records.
    #
    # @option params [required, String] :domain_name
    #   The specific domain name to delete.
    #
    # @return [Types::DeleteDomainResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteDomainResult#operation #operation} => Types::Operation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_domain({
    #     domain_name: "DomainName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.operation.id #=> String
    #   resp.operation.resource_name #=> String
    #   resp.operation.resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc"
    #   resp.operation.created_at #=> Time
    #   resp.operation.location.availability_zone #=> String
    #   resp.operation.location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.operation.is_terminal #=> Boolean
    #   resp.operation.operation_details #=> String
    #   resp.operation.operation_type #=> String, one of "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot"
    #   resp.operation.status #=> String, one of "NotStarted", "Started", "Failed", "Completed"
    #   resp.operation.status_changed_at #=> Time
    #   resp.operation.error_code #=> String
    #   resp.operation.error_details #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DeleteDomain AWS API Documentation
    #
    # @overload delete_domain(params = {})
    # @param [Hash] params ({})
    def delete_domain(params = {}, options = {})
      req = build_request(:delete_domain, params)
      req.send_request(options)
    end

    # Deletes a specific domain entry.
    #
    # @option params [required, String] :domain_name
    #   The name of the domain entry to delete.
    #
    # @option params [required, Types::DomainEntry] :domain_entry
    #   An array of key-value pairs containing information about your domain
    #   entries.
    #
    # @return [Types::DeleteDomainEntryResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteDomainEntryResult#operation #operation} => Types::Operation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_domain_entry({
    #     domain_name: "DomainName", # required
    #     domain_entry: { # required
    #       id: "NonEmptyString",
    #       name: "DomainName",
    #       target: "string",
    #       type: "DomainEntryType",
    #       options: {
    #         "DomainEntryOptionsKeys" => "string",
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.operation.id #=> String
    #   resp.operation.resource_name #=> String
    #   resp.operation.resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc"
    #   resp.operation.created_at #=> Time
    #   resp.operation.location.availability_zone #=> String
    #   resp.operation.location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.operation.is_terminal #=> Boolean
    #   resp.operation.operation_details #=> String
    #   resp.operation.operation_type #=> String, one of "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot"
    #   resp.operation.status #=> String, one of "NotStarted", "Started", "Failed", "Completed"
    #   resp.operation.status_changed_at #=> Time
    #   resp.operation.error_code #=> String
    #   resp.operation.error_details #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DeleteDomainEntry AWS API Documentation
    #
    # @overload delete_domain_entry(params = {})
    # @param [Hash] params ({})
    def delete_domain_entry(params = {}, options = {})
      req = build_request(:delete_domain_entry, params)
      req.send_request(options)
    end

    # Deletes a specific Amazon Lightsail virtual private server, or
    # *instance*.
    #
    # @option params [required, String] :instance_name
    #   The name of the instance to delete.
    #
    # @return [Types::DeleteInstanceResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteInstanceResult#operations #operations} => Array&lt;Types::Operation&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_instance({
    #     instance_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.operations #=> Array
    #   resp.operations[0].id #=> String
    #   resp.operations[0].resource_name #=> String
    #   resp.operations[0].resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc"
    #   resp.operations[0].created_at #=> Time
    #   resp.operations[0].location.availability_zone #=> String
    #   resp.operations[0].location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.operations[0].is_terminal #=> Boolean
    #   resp.operations[0].operation_details #=> String
    #   resp.operations[0].operation_type #=> String, one of "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot"
    #   resp.operations[0].status #=> String, one of "NotStarted", "Started", "Failed", "Completed"
    #   resp.operations[0].status_changed_at #=> Time
    #   resp.operations[0].error_code #=> String
    #   resp.operations[0].error_details #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DeleteInstance AWS API Documentation
    #
    # @overload delete_instance(params = {})
    # @param [Hash] params ({})
    def delete_instance(params = {}, options = {})
      req = build_request(:delete_instance, params)
      req.send_request(options)
    end

    # Deletes a specific snapshot of a virtual private server (or
    # *instance*).
    #
    # @option params [required, String] :instance_snapshot_name
    #   The name of the snapshot to delete.
    #
    # @return [Types::DeleteInstanceSnapshotResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteInstanceSnapshotResult#operations #operations} => Array&lt;Types::Operation&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_instance_snapshot({
    #     instance_snapshot_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.operations #=> Array
    #   resp.operations[0].id #=> String
    #   resp.operations[0].resource_name #=> String
    #   resp.operations[0].resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc"
    #   resp.operations[0].created_at #=> Time
    #   resp.operations[0].location.availability_zone #=> String
    #   resp.operations[0].location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.operations[0].is_terminal #=> Boolean
    #   resp.operations[0].operation_details #=> String
    #   resp.operations[0].operation_type #=> String, one of "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot"
    #   resp.operations[0].status #=> String, one of "NotStarted", "Started", "Failed", "Completed"
    #   resp.operations[0].status_changed_at #=> Time
    #   resp.operations[0].error_code #=> String
    #   resp.operations[0].error_details #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DeleteInstanceSnapshot AWS API Documentation
    #
    # @overload delete_instance_snapshot(params = {})
    # @param [Hash] params ({})
    def delete_instance_snapshot(params = {}, options = {})
      req = build_request(:delete_instance_snapshot, params)
      req.send_request(options)
    end

    # Deletes a specific SSH key pair.
    #
    # @option params [required, String] :key_pair_name
    #   The name of the key pair to delete.
    #
    # @return [Types::DeleteKeyPairResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteKeyPairResult#operation #operation} => Types::Operation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_key_pair({
    #     key_pair_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.operation.id #=> String
    #   resp.operation.resource_name #=> String
    #   resp.operation.resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc"
    #   resp.operation.created_at #=> Time
    #   resp.operation.location.availability_zone #=> String
    #   resp.operation.location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.operation.is_terminal #=> Boolean
    #   resp.operation.operation_details #=> String
    #   resp.operation.operation_type #=> String, one of "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot"
    #   resp.operation.status #=> String, one of "NotStarted", "Started", "Failed", "Completed"
    #   resp.operation.status_changed_at #=> Time
    #   resp.operation.error_code #=> String
    #   resp.operation.error_details #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DeleteKeyPair AWS API Documentation
    #
    # @overload delete_key_pair(params = {})
    # @param [Hash] params ({})
    def delete_key_pair(params = {}, options = {})
      req = build_request(:delete_key_pair, params)
      req.send_request(options)
    end

    # Detaches a static IP from the Amazon Lightsail instance to which it is
    # attached.
    #
    # @option params [required, String] :static_ip_name
    #   The name of the static IP to detach from the instance.
    #
    # @return [Types::DetachStaticIpResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DetachStaticIpResult#operations #operations} => Array&lt;Types::Operation&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.detach_static_ip({
    #     static_ip_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.operations #=> Array
    #   resp.operations[0].id #=> String
    #   resp.operations[0].resource_name #=> String
    #   resp.operations[0].resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc"
    #   resp.operations[0].created_at #=> Time
    #   resp.operations[0].location.availability_zone #=> String
    #   resp.operations[0].location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.operations[0].is_terminal #=> Boolean
    #   resp.operations[0].operation_details #=> String
    #   resp.operations[0].operation_type #=> String, one of "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot"
    #   resp.operations[0].status #=> String, one of "NotStarted", "Started", "Failed", "Completed"
    #   resp.operations[0].status_changed_at #=> Time
    #   resp.operations[0].error_code #=> String
    #   resp.operations[0].error_details #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DetachStaticIp AWS API Documentation
    #
    # @overload detach_static_ip(params = {})
    # @param [Hash] params ({})
    def detach_static_ip(params = {}, options = {})
      req = build_request(:detach_static_ip, params)
      req.send_request(options)
    end

    # Downloads the default SSH key pair from the user's account.
    #
    # @return [Types::DownloadDefaultKeyPairResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DownloadDefaultKeyPairResult#public_key_base_64 #public_key_base_64} => String
    #   * {Types::DownloadDefaultKeyPairResult#private_key_base_64 #private_key_base_64} => String
    #
    # @example Response structure
    #
    #   resp.public_key_base_64 #=> String
    #   resp.private_key_base_64 #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DownloadDefaultKeyPair AWS API Documentation
    #
    # @overload download_default_key_pair(params = {})
    # @param [Hash] params ({})
    def download_default_key_pair(params = {}, options = {})
      req = build_request(:download_default_key_pair, params)
      req.send_request(options)
    end

    # Returns the names of all active (not deleted) resources.
    #
    # @option params [String] :page_token
    #   A token used for paginating results from your get active names
    #   request.
    #
    # @return [Types::GetActiveNamesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetActiveNamesResult#active_names #active_names} => Array&lt;String&gt;
    #   * {Types::GetActiveNamesResult#next_page_token #next_page_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_active_names({
    #     page_token: "string",
    #   })
    #
    # @example Response structure
    #
    #   resp.active_names #=> Array
    #   resp.active_names[0] #=> String
    #   resp.next_page_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetActiveNames AWS API Documentation
    #
    # @overload get_active_names(params = {})
    # @param [Hash] params ({})
    def get_active_names(params = {}, options = {})
      req = build_request(:get_active_names, params)
      req.send_request(options)
    end

    # Returns the list of available instance images, or *blueprints*. You
    # can use a blueprint to create a new virtual private server already
    # running a specific operating system, as well as a preinstalled app or
    # development stack. The software each instance is running depends on
    # the blueprint image you choose.
    #
    # @option params [Boolean] :include_inactive
    #   A Boolean value indicating whether to include inactive results in your
    #   request.
    #
    # @option params [String] :page_token
    #   A token used for advancing to the next page of results from your get
    #   blueprints request.
    #
    # @return [Types::GetBlueprintsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetBlueprintsResult#blueprints #blueprints} => Array&lt;Types::Blueprint&gt;
    #   * {Types::GetBlueprintsResult#next_page_token #next_page_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_blueprints({
    #     include_inactive: false,
    #     page_token: "string",
    #   })
    #
    # @example Response structure
    #
    #   resp.blueprints #=> Array
    #   resp.blueprints[0].blueprint_id #=> String
    #   resp.blueprints[0].name #=> String
    #   resp.blueprints[0].group #=> String
    #   resp.blueprints[0].type #=> String, one of "os", "app"
    #   resp.blueprints[0].description #=> String
    #   resp.blueprints[0].is_active #=> Boolean
    #   resp.blueprints[0].min_power #=> Integer
    #   resp.blueprints[0].version #=> String
    #   resp.blueprints[0].version_code #=> String
    #   resp.blueprints[0].product_url #=> String
    #   resp.blueprints[0].license_url #=> String
    #   resp.next_page_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetBlueprints AWS API Documentation
    #
    # @overload get_blueprints(params = {})
    # @param [Hash] params ({})
    def get_blueprints(params = {}, options = {})
      req = build_request(:get_blueprints, params)
      req.send_request(options)
    end

    # Returns the list of bundles that are available for purchase. A bundle
    # describes the specs for your virtual private server (or *instance*).
    #
    # @option params [Boolean] :include_inactive
    #   A Boolean value that indicates whether to include inactive bundle
    #   results in your request.
    #
    # @option params [String] :page_token
    #   A token used for advancing to the next page of results from your get
    #   bundles request.
    #
    # @return [Types::GetBundlesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetBundlesResult#bundles #bundles} => Array&lt;Types::Bundle&gt;
    #   * {Types::GetBundlesResult#next_page_token #next_page_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_bundles({
    #     include_inactive: false,
    #     page_token: "string",
    #   })
    #
    # @example Response structure
    #
    #   resp.bundles #=> Array
    #   resp.bundles[0].price #=> Float
    #   resp.bundles[0].cpu_count #=> Integer
    #   resp.bundles[0].disk_size_in_gb #=> Integer
    #   resp.bundles[0].bundle_id #=> String
    #   resp.bundles[0].instance_type #=> String
    #   resp.bundles[0].is_active #=> Boolean
    #   resp.bundles[0].name #=> String
    #   resp.bundles[0].power #=> Integer
    #   resp.bundles[0].ram_size_in_gb #=> Float
    #   resp.bundles[0].transfer_per_month_in_gb #=> Integer
    #   resp.next_page_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetBundles AWS API Documentation
    #
    # @overload get_bundles(params = {})
    # @param [Hash] params ({})
    def get_bundles(params = {}, options = {})
      req = build_request(:get_bundles, params)
      req.send_request(options)
    end

    # Returns information about a specific domain recordset.
    #
    # @option params [required, String] :domain_name
    #   The domain name for which your want to return information about.
    #
    # @return [Types::GetDomainResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDomainResult#domain #domain} => Types::Domain
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_domain({
    #     domain_name: "DomainName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.domain.name #=> String
    #   resp.domain.arn #=> String
    #   resp.domain.support_code #=> String
    #   resp.domain.created_at #=> Time
    #   resp.domain.location.availability_zone #=> String
    #   resp.domain.location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.domain.resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc"
    #   resp.domain.domain_entries #=> Array
    #   resp.domain.domain_entries[0].id #=> String
    #   resp.domain.domain_entries[0].name #=> String
    #   resp.domain.domain_entries[0].target #=> String
    #   resp.domain.domain_entries[0].type #=> String
    #   resp.domain.domain_entries[0].options #=> Hash
    #   resp.domain.domain_entries[0].options["DomainEntryOptionsKeys"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetDomain AWS API Documentation
    #
    # @overload get_domain(params = {})
    # @param [Hash] params ({})
    def get_domain(params = {}, options = {})
      req = build_request(:get_domain, params)
      req.send_request(options)
    end

    # Returns a list of all domains in the user's account.
    #
    # @option params [String] :page_token
    #   A token used for advancing to the next page of results from your get
    #   domains request.
    #
    # @return [Types::GetDomainsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDomainsResult#domains #domains} => Array&lt;Types::Domain&gt;
    #   * {Types::GetDomainsResult#next_page_token #next_page_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_domains({
    #     page_token: "string",
    #   })
    #
    # @example Response structure
    #
    #   resp.domains #=> Array
    #   resp.domains[0].name #=> String
    #   resp.domains[0].arn #=> String
    #   resp.domains[0].support_code #=> String
    #   resp.domains[0].created_at #=> Time
    #   resp.domains[0].location.availability_zone #=> String
    #   resp.domains[0].location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.domains[0].resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc"
    #   resp.domains[0].domain_entries #=> Array
    #   resp.domains[0].domain_entries[0].id #=> String
    #   resp.domains[0].domain_entries[0].name #=> String
    #   resp.domains[0].domain_entries[0].target #=> String
    #   resp.domains[0].domain_entries[0].type #=> String
    #   resp.domains[0].domain_entries[0].options #=> Hash
    #   resp.domains[0].domain_entries[0].options["DomainEntryOptionsKeys"] #=> String
    #   resp.next_page_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetDomains AWS API Documentation
    #
    # @overload get_domains(params = {})
    # @param [Hash] params ({})
    def get_domains(params = {}, options = {})
      req = build_request(:get_domains, params)
      req.send_request(options)
    end

    # Returns information about a specific Amazon Lightsail instance, which
    # is a virtual private server.
    #
    # @option params [required, String] :instance_name
    #   The name of the instance.
    #
    # @return [Types::GetInstanceResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetInstanceResult#instance #instance} => Types::Instance
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_instance({
    #     instance_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.instance.name #=> String
    #   resp.instance.arn #=> String
    #   resp.instance.support_code #=> String
    #   resp.instance.created_at #=> Time
    #   resp.instance.location.availability_zone #=> String
    #   resp.instance.location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.instance.resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc"
    #   resp.instance.blueprint_id #=> String
    #   resp.instance.blueprint_name #=> String
    #   resp.instance.bundle_id #=> String
    #   resp.instance.is_static_ip #=> Boolean
    #   resp.instance.private_ip_address #=> String
    #   resp.instance.public_ip_address #=> String
    #   resp.instance.ipv6_address #=> String
    #   resp.instance.hardware.cpu_count #=> Integer
    #   resp.instance.hardware.disks #=> Array
    #   resp.instance.hardware.disks[0].name #=> String
    #   resp.instance.hardware.disks[0].arn #=> String
    #   resp.instance.hardware.disks[0].support_code #=> String
    #   resp.instance.hardware.disks[0].created_at #=> Time
    #   resp.instance.hardware.disks[0].location.availability_zone #=> String
    #   resp.instance.hardware.disks[0].location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.instance.hardware.disks[0].resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc"
    #   resp.instance.hardware.disks[0].size_in_gb #=> Integer
    #   resp.instance.hardware.disks[0].gb_in_use #=> Integer
    #   resp.instance.hardware.disks[0].is_system_disk #=> Boolean
    #   resp.instance.hardware.disks[0].iops #=> Integer
    #   resp.instance.hardware.disks[0].path #=> String
    #   resp.instance.hardware.disks[0].attached_to #=> String
    #   resp.instance.hardware.disks[0].is_attached #=> Boolean
    #   resp.instance.hardware.disks[0].attachment_state #=> String
    #   resp.instance.hardware.ram_size_in_gb #=> Float
    #   resp.instance.networking.monthly_transfer.gb_per_month_allocated #=> Integer
    #   resp.instance.networking.ports #=> Array
    #   resp.instance.networking.ports[0].from_port #=> Integer
    #   resp.instance.networking.ports[0].to_port #=> Integer
    #   resp.instance.networking.ports[0].protocol #=> String, one of "tcp", "all", "udp"
    #   resp.instance.networking.ports[0].access_from #=> String
    #   resp.instance.networking.ports[0].access_type #=> String, one of "Public", "Private"
    #   resp.instance.networking.ports[0].common_name #=> String
    #   resp.instance.networking.ports[0].access_direction #=> String, one of "inbound", "outbound"
    #   resp.instance.state.code #=> Integer
    #   resp.instance.state.name #=> String
    #   resp.instance.username #=> String
    #   resp.instance.ssh_key_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetInstance AWS API Documentation
    #
    # @overload get_instance(params = {})
    # @param [Hash] params ({})
    def get_instance(params = {}, options = {})
      req = build_request(:get_instance, params)
      req.send_request(options)
    end

    # Returns temporary SSH keys you can use to connect to a specific
    # virtual private server, or *instance*.
    #
    # @option params [required, String] :instance_name
    #   The name of the instance to access.
    #
    # @option params [String] :protocol
    #   The protocol to use to connect to your instance. Defaults to `ssh`.
    #
    # @return [Types::GetInstanceAccessDetailsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetInstanceAccessDetailsResult#access_details #access_details} => Types::InstanceAccessDetails
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_instance_access_details({
    #     instance_name: "ResourceName", # required
    #     protocol: "ssh", # accepts ssh, rdp
    #   })
    #
    # @example Response structure
    #
    #   resp.access_details.cert_key #=> String
    #   resp.access_details.expires_at #=> Time
    #   resp.access_details.ip_address #=> String
    #   resp.access_details.password #=> String
    #   resp.access_details.private_key #=> String
    #   resp.access_details.protocol #=> String, one of "ssh", "rdp"
    #   resp.access_details.instance_name #=> String
    #   resp.access_details.username #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetInstanceAccessDetails AWS API Documentation
    #
    # @overload get_instance_access_details(params = {})
    # @param [Hash] params ({})
    def get_instance_access_details(params = {}, options = {})
      req = build_request(:get_instance_access_details, params)
      req.send_request(options)
    end

    # Returns the data points for the specified Amazon Lightsail instance
    # metric, given an instance name.
    #
    # @option params [required, String] :instance_name
    #   The name of the instance for which you want to get metrics data.
    #
    # @option params [required, String] :metric_name
    #   The metric name to get data about.
    #
    # @option params [required, Integer] :period
    #   The time period for which you are requesting data.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :start_time
    #   The start time of the time period.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :end_time
    #   The end time of the time period.
    #
    # @option params [required, String] :unit
    #   The unit. The list of valid values is below.
    #
    # @option params [required, Array<String>] :statistics
    #   The instance statistics.
    #
    # @return [Types::GetInstanceMetricDataResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetInstanceMetricDataResult#metric_name #metric_name} => String
    #   * {Types::GetInstanceMetricDataResult#metric_data #metric_data} => Array&lt;Types::MetricDatapoint&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_instance_metric_data({
    #     instance_name: "ResourceName", # required
    #     metric_name: "CPUUtilization", # required, accepts CPUUtilization, NetworkIn, NetworkOut, StatusCheckFailed, StatusCheckFailed_Instance, StatusCheckFailed_System
    #     period: 1, # required
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #     unit: "Seconds", # required, accepts Seconds, Microseconds, Milliseconds, Bytes, Kilobytes, Megabytes, Gigabytes, Terabytes, Bits, Kilobits, Megabits, Gigabits, Terabits, Percent, Count, Bytes/Second, Kilobytes/Second, Megabytes/Second, Gigabytes/Second, Terabytes/Second, Bits/Second, Kilobits/Second, Megabits/Second, Gigabits/Second, Terabits/Second, Count/Second, None
    #     statistics: ["Minimum"], # required, accepts Minimum, Maximum, Sum, Average, SampleCount
    #   })
    #
    # @example Response structure
    #
    #   resp.metric_name #=> String, one of "CPUUtilization", "NetworkIn", "NetworkOut", "StatusCheckFailed", "StatusCheckFailed_Instance", "StatusCheckFailed_System"
    #   resp.metric_data #=> Array
    #   resp.metric_data[0].average #=> Float
    #   resp.metric_data[0].maximum #=> Float
    #   resp.metric_data[0].minimum #=> Float
    #   resp.metric_data[0].sample_count #=> Float
    #   resp.metric_data[0].sum #=> Float
    #   resp.metric_data[0].timestamp #=> Time
    #   resp.metric_data[0].unit #=> String, one of "Seconds", "Microseconds", "Milliseconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Count", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second", "None"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetInstanceMetricData AWS API Documentation
    #
    # @overload get_instance_metric_data(params = {})
    # @param [Hash] params ({})
    def get_instance_metric_data(params = {}, options = {})
      req = build_request(:get_instance_metric_data, params)
      req.send_request(options)
    end

    # Returns the port states for a specific virtual private server, or
    # *instance*.
    #
    # @option params [required, String] :instance_name
    #   The name of the instance.
    #
    # @return [Types::GetInstancePortStatesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetInstancePortStatesResult#port_states #port_states} => Array&lt;Types::InstancePortState&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_instance_port_states({
    #     instance_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.port_states #=> Array
    #   resp.port_states[0].from_port #=> Integer
    #   resp.port_states[0].to_port #=> Integer
    #   resp.port_states[0].protocol #=> String, one of "tcp", "all", "udp"
    #   resp.port_states[0].state #=> String, one of "open", "closed"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetInstancePortStates AWS API Documentation
    #
    # @overload get_instance_port_states(params = {})
    # @param [Hash] params ({})
    def get_instance_port_states(params = {}, options = {})
      req = build_request(:get_instance_port_states, params)
      req.send_request(options)
    end

    # Returns information about a specific instance snapshot.
    #
    # @option params [required, String] :instance_snapshot_name
    #   The name of the snapshot for which you are requesting information.
    #
    # @return [Types::GetInstanceSnapshotResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetInstanceSnapshotResult#instance_snapshot #instance_snapshot} => Types::InstanceSnapshot
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_instance_snapshot({
    #     instance_snapshot_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.instance_snapshot.name #=> String
    #   resp.instance_snapshot.arn #=> String
    #   resp.instance_snapshot.support_code #=> String
    #   resp.instance_snapshot.created_at #=> Time
    #   resp.instance_snapshot.location.availability_zone #=> String
    #   resp.instance_snapshot.location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.instance_snapshot.resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc"
    #   resp.instance_snapshot.state #=> String, one of "pending", "error", "available"
    #   resp.instance_snapshot.progress #=> String
    #   resp.instance_snapshot.from_instance_name #=> String
    #   resp.instance_snapshot.from_instance_arn #=> String
    #   resp.instance_snapshot.from_blueprint_id #=> String
    #   resp.instance_snapshot.from_bundle_id #=> String
    #   resp.instance_snapshot.size_in_gb #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetInstanceSnapshot AWS API Documentation
    #
    # @overload get_instance_snapshot(params = {})
    # @param [Hash] params ({})
    def get_instance_snapshot(params = {}, options = {})
      req = build_request(:get_instance_snapshot, params)
      req.send_request(options)
    end

    # Returns all instance snapshots for the user's account.
    #
    # @option params [String] :page_token
    #   A token used for advancing to the next page of results from your get
    #   instance snapshots request.
    #
    # @return [Types::GetInstanceSnapshotsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetInstanceSnapshotsResult#instance_snapshots #instance_snapshots} => Array&lt;Types::InstanceSnapshot&gt;
    #   * {Types::GetInstanceSnapshotsResult#next_page_token #next_page_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_instance_snapshots({
    #     page_token: "string",
    #   })
    #
    # @example Response structure
    #
    #   resp.instance_snapshots #=> Array
    #   resp.instance_snapshots[0].name #=> String
    #   resp.instance_snapshots[0].arn #=> String
    #   resp.instance_snapshots[0].support_code #=> String
    #   resp.instance_snapshots[0].created_at #=> Time
    #   resp.instance_snapshots[0].location.availability_zone #=> String
    #   resp.instance_snapshots[0].location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.instance_snapshots[0].resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc"
    #   resp.instance_snapshots[0].state #=> String, one of "pending", "error", "available"
    #   resp.instance_snapshots[0].progress #=> String
    #   resp.instance_snapshots[0].from_instance_name #=> String
    #   resp.instance_snapshots[0].from_instance_arn #=> String
    #   resp.instance_snapshots[0].from_blueprint_id #=> String
    #   resp.instance_snapshots[0].from_bundle_id #=> String
    #   resp.instance_snapshots[0].size_in_gb #=> Integer
    #   resp.next_page_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetInstanceSnapshots AWS API Documentation
    #
    # @overload get_instance_snapshots(params = {})
    # @param [Hash] params ({})
    def get_instance_snapshots(params = {}, options = {})
      req = build_request(:get_instance_snapshots, params)
      req.send_request(options)
    end

    # Returns the state of a specific instance. Works on one instance at a
    # time.
    #
    # @option params [required, String] :instance_name
    #   The name of the instance to get state information about.
    #
    # @return [Types::GetInstanceStateResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetInstanceStateResult#state #state} => Types::InstanceState
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_instance_state({
    #     instance_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.state.code #=> Integer
    #   resp.state.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetInstanceState AWS API Documentation
    #
    # @overload get_instance_state(params = {})
    # @param [Hash] params ({})
    def get_instance_state(params = {}, options = {})
      req = build_request(:get_instance_state, params)
      req.send_request(options)
    end

    # Returns information about all Amazon Lightsail virtual private
    # servers, or *instances*.
    #
    # @option params [String] :page_token
    #   A token used for advancing to the next page of results from your get
    #   instances request.
    #
    # @return [Types::GetInstancesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetInstancesResult#instances #instances} => Array&lt;Types::Instance&gt;
    #   * {Types::GetInstancesResult#next_page_token #next_page_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_instances({
    #     page_token: "string",
    #   })
    #
    # @example Response structure
    #
    #   resp.instances #=> Array
    #   resp.instances[0].name #=> String
    #   resp.instances[0].arn #=> String
    #   resp.instances[0].support_code #=> String
    #   resp.instances[0].created_at #=> Time
    #   resp.instances[0].location.availability_zone #=> String
    #   resp.instances[0].location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.instances[0].resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc"
    #   resp.instances[0].blueprint_id #=> String
    #   resp.instances[0].blueprint_name #=> String
    #   resp.instances[0].bundle_id #=> String
    #   resp.instances[0].is_static_ip #=> Boolean
    #   resp.instances[0].private_ip_address #=> String
    #   resp.instances[0].public_ip_address #=> String
    #   resp.instances[0].ipv6_address #=> String
    #   resp.instances[0].hardware.cpu_count #=> Integer
    #   resp.instances[0].hardware.disks #=> Array
    #   resp.instances[0].hardware.disks[0].name #=> String
    #   resp.instances[0].hardware.disks[0].arn #=> String
    #   resp.instances[0].hardware.disks[0].support_code #=> String
    #   resp.instances[0].hardware.disks[0].created_at #=> Time
    #   resp.instances[0].hardware.disks[0].location.availability_zone #=> String
    #   resp.instances[0].hardware.disks[0].location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.instances[0].hardware.disks[0].resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc"
    #   resp.instances[0].hardware.disks[0].size_in_gb #=> Integer
    #   resp.instances[0].hardware.disks[0].gb_in_use #=> Integer
    #   resp.instances[0].hardware.disks[0].is_system_disk #=> Boolean
    #   resp.instances[0].hardware.disks[0].iops #=> Integer
    #   resp.instances[0].hardware.disks[0].path #=> String
    #   resp.instances[0].hardware.disks[0].attached_to #=> String
    #   resp.instances[0].hardware.disks[0].is_attached #=> Boolean
    #   resp.instances[0].hardware.disks[0].attachment_state #=> String
    #   resp.instances[0].hardware.ram_size_in_gb #=> Float
    #   resp.instances[0].networking.monthly_transfer.gb_per_month_allocated #=> Integer
    #   resp.instances[0].networking.ports #=> Array
    #   resp.instances[0].networking.ports[0].from_port #=> Integer
    #   resp.instances[0].networking.ports[0].to_port #=> Integer
    #   resp.instances[0].networking.ports[0].protocol #=> String, one of "tcp", "all", "udp"
    #   resp.instances[0].networking.ports[0].access_from #=> String
    #   resp.instances[0].networking.ports[0].access_type #=> String, one of "Public", "Private"
    #   resp.instances[0].networking.ports[0].common_name #=> String
    #   resp.instances[0].networking.ports[0].access_direction #=> String, one of "inbound", "outbound"
    #   resp.instances[0].state.code #=> Integer
    #   resp.instances[0].state.name #=> String
    #   resp.instances[0].username #=> String
    #   resp.instances[0].ssh_key_name #=> String
    #   resp.next_page_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetInstances AWS API Documentation
    #
    # @overload get_instances(params = {})
    # @param [Hash] params ({})
    def get_instances(params = {}, options = {})
      req = build_request(:get_instances, params)
      req.send_request(options)
    end

    # Returns information about a specific key pair.
    #
    # @option params [required, String] :key_pair_name
    #   The name of the key pair for which you are requesting information.
    #
    # @return [Types::GetKeyPairResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetKeyPairResult#key_pair #key_pair} => Types::KeyPair
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_key_pair({
    #     key_pair_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.key_pair.name #=> String
    #   resp.key_pair.arn #=> String
    #   resp.key_pair.support_code #=> String
    #   resp.key_pair.created_at #=> Time
    #   resp.key_pair.location.availability_zone #=> String
    #   resp.key_pair.location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.key_pair.resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc"
    #   resp.key_pair.fingerprint #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetKeyPair AWS API Documentation
    #
    # @overload get_key_pair(params = {})
    # @param [Hash] params ({})
    def get_key_pair(params = {}, options = {})
      req = build_request(:get_key_pair, params)
      req.send_request(options)
    end

    # Returns information about all key pairs in the user's account.
    #
    # @option params [String] :page_token
    #   A token used for advancing to the next page of results from your get
    #   key pairs request.
    #
    # @return [Types::GetKeyPairsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetKeyPairsResult#key_pairs #key_pairs} => Array&lt;Types::KeyPair&gt;
    #   * {Types::GetKeyPairsResult#next_page_token #next_page_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_key_pairs({
    #     page_token: "string",
    #   })
    #
    # @example Response structure
    #
    #   resp.key_pairs #=> Array
    #   resp.key_pairs[0].name #=> String
    #   resp.key_pairs[0].arn #=> String
    #   resp.key_pairs[0].support_code #=> String
    #   resp.key_pairs[0].created_at #=> Time
    #   resp.key_pairs[0].location.availability_zone #=> String
    #   resp.key_pairs[0].location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.key_pairs[0].resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc"
    #   resp.key_pairs[0].fingerprint #=> String
    #   resp.next_page_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetKeyPairs AWS API Documentation
    #
    # @overload get_key_pairs(params = {})
    # @param [Hash] params ({})
    def get_key_pairs(params = {}, options = {})
      req = build_request(:get_key_pairs, params)
      req.send_request(options)
    end

    # Returns information about a specific operation. Operations include
    # events such as when you create an instance, allocate a static IP,
    # attach a static IP, and so on.
    #
    # @option params [required, String] :operation_id
    #   A GUID used to identify the operation.
    #
    # @return [Types::GetOperationResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetOperationResult#operation #operation} => Types::Operation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_operation({
    #     operation_id: "NonEmptyString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.operation.id #=> String
    #   resp.operation.resource_name #=> String
    #   resp.operation.resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc"
    #   resp.operation.created_at #=> Time
    #   resp.operation.location.availability_zone #=> String
    #   resp.operation.location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.operation.is_terminal #=> Boolean
    #   resp.operation.operation_details #=> String
    #   resp.operation.operation_type #=> String, one of "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot"
    #   resp.operation.status #=> String, one of "NotStarted", "Started", "Failed", "Completed"
    #   resp.operation.status_changed_at #=> Time
    #   resp.operation.error_code #=> String
    #   resp.operation.error_details #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetOperation AWS API Documentation
    #
    # @overload get_operation(params = {})
    # @param [Hash] params ({})
    def get_operation(params = {}, options = {})
      req = build_request(:get_operation, params)
      req.send_request(options)
    end

    # Returns information about all operations.
    #
    # Results are returned from oldest to newest, up to a maximum of 200.
    # Results can be paged by making each subsequent call to `GetOperations`
    # use the maximum (last) `statusChangedAt` value from the previous
    # request.
    #
    # @option params [String] :page_token
    #   A token used for advancing to the next page of results from your get
    #   operations request.
    #
    # @return [Types::GetOperationsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetOperationsResult#operations #operations} => Array&lt;Types::Operation&gt;
    #   * {Types::GetOperationsResult#next_page_token #next_page_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_operations({
    #     page_token: "string",
    #   })
    #
    # @example Response structure
    #
    #   resp.operations #=> Array
    #   resp.operations[0].id #=> String
    #   resp.operations[0].resource_name #=> String
    #   resp.operations[0].resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc"
    #   resp.operations[0].created_at #=> Time
    #   resp.operations[0].location.availability_zone #=> String
    #   resp.operations[0].location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.operations[0].is_terminal #=> Boolean
    #   resp.operations[0].operation_details #=> String
    #   resp.operations[0].operation_type #=> String, one of "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot"
    #   resp.operations[0].status #=> String, one of "NotStarted", "Started", "Failed", "Completed"
    #   resp.operations[0].status_changed_at #=> Time
    #   resp.operations[0].error_code #=> String
    #   resp.operations[0].error_details #=> String
    #   resp.next_page_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetOperations AWS API Documentation
    #
    # @overload get_operations(params = {})
    # @param [Hash] params ({})
    def get_operations(params = {}, options = {})
      req = build_request(:get_operations, params)
      req.send_request(options)
    end

    # Gets operations for a specific resource (e.g., an instance or a static
    # IP).
    #
    # @option params [required, String] :resource_name
    #   The name of the resource for which you are requesting information.
    #
    # @option params [String] :page_token
    #   A token used for advancing to the next page of results from your get
    #   operations for resource request.
    #
    # @return [Types::GetOperationsForResourceResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetOperationsForResourceResult#operations #operations} => Array&lt;Types::Operation&gt;
    #   * {Types::GetOperationsForResourceResult#next_page_count #next_page_count} => String
    #   * {Types::GetOperationsForResourceResult#next_page_token #next_page_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_operations_for_resource({
    #     resource_name: "ResourceName", # required
    #     page_token: "string",
    #   })
    #
    # @example Response structure
    #
    #   resp.operations #=> Array
    #   resp.operations[0].id #=> String
    #   resp.operations[0].resource_name #=> String
    #   resp.operations[0].resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc"
    #   resp.operations[0].created_at #=> Time
    #   resp.operations[0].location.availability_zone #=> String
    #   resp.operations[0].location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.operations[0].is_terminal #=> Boolean
    #   resp.operations[0].operation_details #=> String
    #   resp.operations[0].operation_type #=> String, one of "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot"
    #   resp.operations[0].status #=> String, one of "NotStarted", "Started", "Failed", "Completed"
    #   resp.operations[0].status_changed_at #=> Time
    #   resp.operations[0].error_code #=> String
    #   resp.operations[0].error_details #=> String
    #   resp.next_page_count #=> String
    #   resp.next_page_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetOperationsForResource AWS API Documentation
    #
    # @overload get_operations_for_resource(params = {})
    # @param [Hash] params ({})
    def get_operations_for_resource(params = {}, options = {})
      req = build_request(:get_operations_for_resource, params)
      req.send_request(options)
    end

    # Returns a list of all valid regions for Amazon Lightsail. Use the
    # `include availability zones` parameter to also return the availability
    # zones in a region.
    #
    # @option params [Boolean] :include_availability_zones
    #   A Boolean value indicating whether to also include Availability Zones
    #   in your get regions request. Availability Zones are indicated with a
    #   letter: e.g., `us-east-1a`.
    #
    # @return [Types::GetRegionsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRegionsResult#regions #regions} => Array&lt;Types::Region&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_regions({
    #     include_availability_zones: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.regions #=> Array
    #   resp.regions[0].continent_code #=> String
    #   resp.regions[0].description #=> String
    #   resp.regions[0].display_name #=> String
    #   resp.regions[0].name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.regions[0].availability_zones #=> Array
    #   resp.regions[0].availability_zones[0].zone_name #=> String
    #   resp.regions[0].availability_zones[0].state #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetRegions AWS API Documentation
    #
    # @overload get_regions(params = {})
    # @param [Hash] params ({})
    def get_regions(params = {}, options = {})
      req = build_request(:get_regions, params)
      req.send_request(options)
    end

    # Returns information about a specific static IP.
    #
    # @option params [required, String] :static_ip_name
    #   The name of the static IP in Lightsail.
    #
    # @return [Types::GetStaticIpResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetStaticIpResult#static_ip #static_ip} => Types::StaticIp
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_static_ip({
    #     static_ip_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.static_ip.name #=> String
    #   resp.static_ip.arn #=> String
    #   resp.static_ip.support_code #=> String
    #   resp.static_ip.created_at #=> Time
    #   resp.static_ip.location.availability_zone #=> String
    #   resp.static_ip.location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.static_ip.resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc"
    #   resp.static_ip.ip_address #=> String
    #   resp.static_ip.attached_to #=> String
    #   resp.static_ip.is_attached #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetStaticIp AWS API Documentation
    #
    # @overload get_static_ip(params = {})
    # @param [Hash] params ({})
    def get_static_ip(params = {}, options = {})
      req = build_request(:get_static_ip, params)
      req.send_request(options)
    end

    # Returns information about all static IPs in the user's account.
    #
    # @option params [String] :page_token
    #   A token used for advancing to the next page of results from your get
    #   static IPs request.
    #
    # @return [Types::GetStaticIpsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetStaticIpsResult#static_ips #static_ips} => Array&lt;Types::StaticIp&gt;
    #   * {Types::GetStaticIpsResult#next_page_token #next_page_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_static_ips({
    #     page_token: "string",
    #   })
    #
    # @example Response structure
    #
    #   resp.static_ips #=> Array
    #   resp.static_ips[0].name #=> String
    #   resp.static_ips[0].arn #=> String
    #   resp.static_ips[0].support_code #=> String
    #   resp.static_ips[0].created_at #=> Time
    #   resp.static_ips[0].location.availability_zone #=> String
    #   resp.static_ips[0].location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.static_ips[0].resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc"
    #   resp.static_ips[0].ip_address #=> String
    #   resp.static_ips[0].attached_to #=> String
    #   resp.static_ips[0].is_attached #=> Boolean
    #   resp.next_page_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetStaticIps AWS API Documentation
    #
    # @overload get_static_ips(params = {})
    # @param [Hash] params ({})
    def get_static_ips(params = {}, options = {})
      req = build_request(:get_static_ips, params)
      req.send_request(options)
    end

    # Imports a public SSH key from a specific key pair.
    #
    # @option params [required, String] :key_pair_name
    #   The name of the key pair for which you want to import the public key.
    #
    # @option params [required, String] :public_key_base_64
    #   A base64-encoded public key of the `ssh-rsa` type.
    #
    # @return [Types::ImportKeyPairResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ImportKeyPairResult#operation #operation} => Types::Operation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.import_key_pair({
    #     key_pair_name: "ResourceName", # required
    #     public_key_base_64: "Base64", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.operation.id #=> String
    #   resp.operation.resource_name #=> String
    #   resp.operation.resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc"
    #   resp.operation.created_at #=> Time
    #   resp.operation.location.availability_zone #=> String
    #   resp.operation.location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.operation.is_terminal #=> Boolean
    #   resp.operation.operation_details #=> String
    #   resp.operation.operation_type #=> String, one of "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot"
    #   resp.operation.status #=> String, one of "NotStarted", "Started", "Failed", "Completed"
    #   resp.operation.status_changed_at #=> Time
    #   resp.operation.error_code #=> String
    #   resp.operation.error_details #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/ImportKeyPair AWS API Documentation
    #
    # @overload import_key_pair(params = {})
    # @param [Hash] params ({})
    def import_key_pair(params = {}, options = {})
      req = build_request(:import_key_pair, params)
      req.send_request(options)
    end

    # Returns a Boolean value indicating whether your Lightsail VPC is
    # peered.
    #
    # @return [Types::IsVpcPeeredResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::IsVpcPeeredResult#is_peered #is_peered} => Boolean
    #
    # @example Response structure
    #
    #   resp.is_peered #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/IsVpcPeered AWS API Documentation
    #
    # @overload is_vpc_peered(params = {})
    # @param [Hash] params ({})
    def is_vpc_peered(params = {}, options = {})
      req = build_request(:is_vpc_peered, params)
      req.send_request(options)
    end

    # Adds public ports to an Amazon Lightsail instance.
    #
    # @option params [required, Types::PortInfo] :port_info
    #   An array of key-value pairs containing information about the port
    #   mappings.
    #
    # @option params [required, String] :instance_name
    #   The name of the instance for which you want to open the public ports.
    #
    # @return [Types::OpenInstancePublicPortsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::OpenInstancePublicPortsResult#operation #operation} => Types::Operation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.open_instance_public_ports({
    #     port_info: { # required
    #       from_port: 1,
    #       to_port: 1,
    #       protocol: "tcp", # accepts tcp, all, udp
    #     },
    #     instance_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.operation.id #=> String
    #   resp.operation.resource_name #=> String
    #   resp.operation.resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc"
    #   resp.operation.created_at #=> Time
    #   resp.operation.location.availability_zone #=> String
    #   resp.operation.location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.operation.is_terminal #=> Boolean
    #   resp.operation.operation_details #=> String
    #   resp.operation.operation_type #=> String, one of "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot"
    #   resp.operation.status #=> String, one of "NotStarted", "Started", "Failed", "Completed"
    #   resp.operation.status_changed_at #=> Time
    #   resp.operation.error_code #=> String
    #   resp.operation.error_details #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/OpenInstancePublicPorts AWS API Documentation
    #
    # @overload open_instance_public_ports(params = {})
    # @param [Hash] params ({})
    def open_instance_public_ports(params = {}, options = {})
      req = build_request(:open_instance_public_ports, params)
      req.send_request(options)
    end

    # Tries to peer the Lightsail VPC with the user's default VPC.
    #
    # @return [Types::PeerVpcResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PeerVpcResult#operation #operation} => Types::Operation
    #
    # @example Response structure
    #
    #   resp.operation.id #=> String
    #   resp.operation.resource_name #=> String
    #   resp.operation.resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc"
    #   resp.operation.created_at #=> Time
    #   resp.operation.location.availability_zone #=> String
    #   resp.operation.location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.operation.is_terminal #=> Boolean
    #   resp.operation.operation_details #=> String
    #   resp.operation.operation_type #=> String, one of "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot"
    #   resp.operation.status #=> String, one of "NotStarted", "Started", "Failed", "Completed"
    #   resp.operation.status_changed_at #=> Time
    #   resp.operation.error_code #=> String
    #   resp.operation.error_details #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/PeerVpc AWS API Documentation
    #
    # @overload peer_vpc(params = {})
    # @param [Hash] params ({})
    def peer_vpc(params = {}, options = {})
      req = build_request(:peer_vpc, params)
      req.send_request(options)
    end

    # Sets the specified open ports for an Amazon Lightsail instance, and
    # closes all ports for every protocol not included in the current
    # request.
    #
    # @option params [required, Array<Types::PortInfo>] :port_infos
    #   Specifies information about the public port(s).
    #
    # @option params [required, String] :instance_name
    #   The Lightsail instance name of the public port(s) you are setting.
    #
    # @return [Types::PutInstancePublicPortsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutInstancePublicPortsResult#operation #operation} => Types::Operation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_instance_public_ports({
    #     port_infos: [ # required
    #       {
    #         from_port: 1,
    #         to_port: 1,
    #         protocol: "tcp", # accepts tcp, all, udp
    #       },
    #     ],
    #     instance_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.operation.id #=> String
    #   resp.operation.resource_name #=> String
    #   resp.operation.resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc"
    #   resp.operation.created_at #=> Time
    #   resp.operation.location.availability_zone #=> String
    #   resp.operation.location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.operation.is_terminal #=> Boolean
    #   resp.operation.operation_details #=> String
    #   resp.operation.operation_type #=> String, one of "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot"
    #   resp.operation.status #=> String, one of "NotStarted", "Started", "Failed", "Completed"
    #   resp.operation.status_changed_at #=> Time
    #   resp.operation.error_code #=> String
    #   resp.operation.error_details #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/PutInstancePublicPorts AWS API Documentation
    #
    # @overload put_instance_public_ports(params = {})
    # @param [Hash] params ({})
    def put_instance_public_ports(params = {}, options = {})
      req = build_request(:put_instance_public_ports, params)
      req.send_request(options)
    end

    # Restarts a specific instance. When your Amazon Lightsail instance is
    # finished rebooting, Lightsail assigns a new public IP address. To use
    # the same IP address after restarting, create a static IP address and
    # attach it to the instance.
    #
    # @option params [required, String] :instance_name
    #   The name of the instance to reboot.
    #
    # @return [Types::RebootInstanceResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RebootInstanceResult#operations #operations} => Array&lt;Types::Operation&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reboot_instance({
    #     instance_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.operations #=> Array
    #   resp.operations[0].id #=> String
    #   resp.operations[0].resource_name #=> String
    #   resp.operations[0].resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc"
    #   resp.operations[0].created_at #=> Time
    #   resp.operations[0].location.availability_zone #=> String
    #   resp.operations[0].location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.operations[0].is_terminal #=> Boolean
    #   resp.operations[0].operation_details #=> String
    #   resp.operations[0].operation_type #=> String, one of "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot"
    #   resp.operations[0].status #=> String, one of "NotStarted", "Started", "Failed", "Completed"
    #   resp.operations[0].status_changed_at #=> Time
    #   resp.operations[0].error_code #=> String
    #   resp.operations[0].error_details #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/RebootInstance AWS API Documentation
    #
    # @overload reboot_instance(params = {})
    # @param [Hash] params ({})
    def reboot_instance(params = {}, options = {})
      req = build_request(:reboot_instance, params)
      req.send_request(options)
    end

    # Deletes a specific static IP from your account.
    #
    # @option params [required, String] :static_ip_name
    #   The name of the static IP to delete.
    #
    # @return [Types::ReleaseStaticIpResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ReleaseStaticIpResult#operations #operations} => Array&lt;Types::Operation&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.release_static_ip({
    #     static_ip_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.operations #=> Array
    #   resp.operations[0].id #=> String
    #   resp.operations[0].resource_name #=> String
    #   resp.operations[0].resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc"
    #   resp.operations[0].created_at #=> Time
    #   resp.operations[0].location.availability_zone #=> String
    #   resp.operations[0].location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.operations[0].is_terminal #=> Boolean
    #   resp.operations[0].operation_details #=> String
    #   resp.operations[0].operation_type #=> String, one of "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot"
    #   resp.operations[0].status #=> String, one of "NotStarted", "Started", "Failed", "Completed"
    #   resp.operations[0].status_changed_at #=> Time
    #   resp.operations[0].error_code #=> String
    #   resp.operations[0].error_details #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/ReleaseStaticIp AWS API Documentation
    #
    # @overload release_static_ip(params = {})
    # @param [Hash] params ({})
    def release_static_ip(params = {}, options = {})
      req = build_request(:release_static_ip, params)
      req.send_request(options)
    end

    # Starts a specific Amazon Lightsail instance from a stopped state. To
    # restart an instance, use the reboot instance operation.
    #
    # @option params [required, String] :instance_name
    #   The name of the instance (a virtual private server) to start.
    #
    # @return [Types::StartInstanceResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartInstanceResult#operations #operations} => Array&lt;Types::Operation&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_instance({
    #     instance_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.operations #=> Array
    #   resp.operations[0].id #=> String
    #   resp.operations[0].resource_name #=> String
    #   resp.operations[0].resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc"
    #   resp.operations[0].created_at #=> Time
    #   resp.operations[0].location.availability_zone #=> String
    #   resp.operations[0].location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.operations[0].is_terminal #=> Boolean
    #   resp.operations[0].operation_details #=> String
    #   resp.operations[0].operation_type #=> String, one of "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot"
    #   resp.operations[0].status #=> String, one of "NotStarted", "Started", "Failed", "Completed"
    #   resp.operations[0].status_changed_at #=> Time
    #   resp.operations[0].error_code #=> String
    #   resp.operations[0].error_details #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/StartInstance AWS API Documentation
    #
    # @overload start_instance(params = {})
    # @param [Hash] params ({})
    def start_instance(params = {}, options = {})
      req = build_request(:start_instance, params)
      req.send_request(options)
    end

    # Stops a specific Amazon Lightsail instance that is currently running.
    #
    # @option params [required, String] :instance_name
    #   The name of the instance (a virtual private server) to stop.
    #
    # @return [Types::StopInstanceResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StopInstanceResult#operations #operations} => Array&lt;Types::Operation&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_instance({
    #     instance_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.operations #=> Array
    #   resp.operations[0].id #=> String
    #   resp.operations[0].resource_name #=> String
    #   resp.operations[0].resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc"
    #   resp.operations[0].created_at #=> Time
    #   resp.operations[0].location.availability_zone #=> String
    #   resp.operations[0].location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.operations[0].is_terminal #=> Boolean
    #   resp.operations[0].operation_details #=> String
    #   resp.operations[0].operation_type #=> String, one of "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot"
    #   resp.operations[0].status #=> String, one of "NotStarted", "Started", "Failed", "Completed"
    #   resp.operations[0].status_changed_at #=> Time
    #   resp.operations[0].error_code #=> String
    #   resp.operations[0].error_details #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/StopInstance AWS API Documentation
    #
    # @overload stop_instance(params = {})
    # @param [Hash] params ({})
    def stop_instance(params = {}, options = {})
      req = build_request(:stop_instance, params)
      req.send_request(options)
    end

    # Attempts to unpeer the Lightsail VPC from the user's default VPC.
    #
    # @return [Types::UnpeerVpcResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UnpeerVpcResult#operation #operation} => Types::Operation
    #
    # @example Response structure
    #
    #   resp.operation.id #=> String
    #   resp.operation.resource_name #=> String
    #   resp.operation.resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc"
    #   resp.operation.created_at #=> Time
    #   resp.operation.location.availability_zone #=> String
    #   resp.operation.location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.operation.is_terminal #=> Boolean
    #   resp.operation.operation_details #=> String
    #   resp.operation.operation_type #=> String, one of "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot"
    #   resp.operation.status #=> String, one of "NotStarted", "Started", "Failed", "Completed"
    #   resp.operation.status_changed_at #=> Time
    #   resp.operation.error_code #=> String
    #   resp.operation.error_details #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/UnpeerVpc AWS API Documentation
    #
    # @overload unpeer_vpc(params = {})
    # @param [Hash] params ({})
    def unpeer_vpc(params = {}, options = {})
      req = build_request(:unpeer_vpc, params)
      req.send_request(options)
    end

    # Updates a domain recordset after it is created.
    #
    # @option params [required, String] :domain_name
    #   The name of the domain recordset to update.
    #
    # @option params [required, Types::DomainEntry] :domain_entry
    #   An array of key-value pairs containing information about the domain
    #   entry.
    #
    # @return [Types::UpdateDomainEntryResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateDomainEntryResult#operations #operations} => Array&lt;Types::Operation&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_domain_entry({
    #     domain_name: "DomainName", # required
    #     domain_entry: { # required
    #       id: "NonEmptyString",
    #       name: "DomainName",
    #       target: "string",
    #       type: "DomainEntryType",
    #       options: {
    #         "DomainEntryOptionsKeys" => "string",
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.operations #=> Array
    #   resp.operations[0].id #=> String
    #   resp.operations[0].resource_name #=> String
    #   resp.operations[0].resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc"
    #   resp.operations[0].created_at #=> Time
    #   resp.operations[0].location.availability_zone #=> String
    #   resp.operations[0].location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.operations[0].is_terminal #=> Boolean
    #   resp.operations[0].operation_details #=> String
    #   resp.operations[0].operation_type #=> String, one of "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot"
    #   resp.operations[0].status #=> String, one of "NotStarted", "Started", "Failed", "Completed"
    #   resp.operations[0].status_changed_at #=> Time
    #   resp.operations[0].error_code #=> String
    #   resp.operations[0].error_details #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/UpdateDomainEntry AWS API Documentation
    #
    # @overload update_domain_entry(params = {})
    # @param [Hash] params ({})
    def update_domain_entry(params = {}, options = {})
      req = build_request(:update_domain_entry, params)
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
      context[:gem_name] = 'aws-sdk-lightsail'
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
