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

module Aws::ElasticsearchService
  # An API client for Aws::ElasticsearchService.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AmazonElasticsearchService2015

    add_plugin(::Aws::ElasticsearchService::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::ElasticsearchService::EndpointProvider)
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

    # <p>Allows the destination domain owner to accept an inbound cross-cluster search connection request.</p>
    # @param [Hash, Types::AcceptInboundCrossClusterSearchConnectionRequest] params
    # @option params [String] :cross_cluster_search_connection_id
    #   <p>The id of the inbound connection that you want to accept.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cross_cluster_search_connection_id: "CrossClusterSearchConnectionId", # required
    #   }
    #   options = {}
    #   response = client.accept_inbound_cross_cluster_search_connection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cross_cluster_search_connection: {
    #       source_domain_info: {
    #         owner_id: "OwnerId",
    #         domain_name: "DomainName", # required
    #         region: "Region"
    #       },
    #       destination_domain_info: {
    #         owner_id: "OwnerId",
    #         domain_name: "DomainName", # required
    #         region: "Region"
    #       },
    #       cross_cluster_search_connection_id: "CrossClusterSearchConnectionId",
    #       connection_status: {
    #         status_code: "PENDING_ACCEPTANCE" # One of: ["PENDING_ACCEPTANCE", "APPROVED", "REJECTING", "REJECTED", "DELETING", "DELETED"],
    #         message: "CrossClusterSearchConnectionStatusMessage"
    #       }
    #     }
    #   }
    # @return [Types::AcceptInboundCrossClusterSearchConnectionResponse]
    def accept_inbound_cross_cluster_search_connection(params = {}, options = {})
      request = build_request(:accept_inbound_cross_cluster_search_connection, params)
      request.send_request(options)
    end

    # <p>Attaches tags to an existing Elasticsearch domain. Tags are a set of case-sensitive key value pairs. An Elasticsearch domain may have up to 10 tags.  See <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-managedomains.html#es-managedomains-awsresorcetagging" target="_blank">
    #           Tagging Amazon Elasticsearch Service Domains for more information.</a></p>
    # @param [Hash, Types::AddTagsRequest] params
    # @option params [String] :arn
    #   <p> Specify the <code>ARN</code> for which you want to add the tags.</p>
    # @option params [Array<Types::Tag>] :tag_list
    #   <p> List of <code>Tag</code> that need to be added for the Elasticsearch domain. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "ARN", # required
    #     tag_list: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.add_tags(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def add_tags(params = {}, options = {})
      request = build_request(:add_tags, params)
      request.send_request(options)
    end

    # <p>Associates a package with an Amazon ES domain.</p>
    # @param [Hash, Types::AssociatePackageRequest] params
    # @option params [String] :package_id
    #   <p>Internal ID of the package that you want to associate with a domain. Use <code>DescribePackages</code> to find this value.</p>
    # @option params [String] :domain_name
    #   <p>Name of the domain that you want to associate the package with.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     package_id: "PackageID", # required
    #     domain_name: "DomainName", # required
    #   }
    #   options = {}
    #   response = client.associate_package(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain_package_details: {
    #       package_id: "PackageID",
    #       package_name: "PackageName",
    #       package_type: "TXT-DICTIONARY" # One of: ["TXT-DICTIONARY"],
    #       last_updated: Time.now,
    #       domain_name: "DomainName",
    #       domain_package_status: "ASSOCIATING" # One of: ["ASSOCIATING", "ASSOCIATION_FAILED", "ACTIVE", "DISSOCIATING", "DISSOCIATION_FAILED"],
    #       package_version: "PackageVersion",
    #       reference_path: "ReferencePath",
    #       error_details: {
    #         error_type: "ErrorType",
    #         error_message: "ErrorMessage"
    #       }
    #     }
    #   }
    # @return [Types::AssociatePackageResponse]
    def associate_package(params = {}, options = {})
      request = build_request(:associate_package, params)
      request.send_request(options)
    end

    # <p>Provides access to an Amazon OpenSearch Service domain through the use of an interface VPC endpoint.</p>
    # @param [Hash, Types::AuthorizeVpcEndpointAccessRequest] params
    # @option params [String] :domain_name
    #   <p>The name of the OpenSearch Service domain to provide access to.</p>
    # @option params [String] :account
    #   <p>The account ID to grant access to.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "DomainName", # required
    #     account: "AWSAccount", # required
    #   }
    #   options = {}
    #   response = client.authorize_vpc_endpoint_access(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     authorized_principal: { # required
    #       principal_type: "AWS_ACCOUNT" # One of: ["AWS_ACCOUNT", "AWS_SERVICE"],
    #       principal: "String"
    #     }
    #   }
    # @return [Types::AuthorizeVpcEndpointAccessResponse]
    def authorize_vpc_endpoint_access(params = {}, options = {})
      request = build_request(:authorize_vpc_endpoint_access, params)
      request.send_request(options)
    end

    # <p>Cancels a pending configuration change on an Amazon OpenSearch Service domain.</p>
    # @param [Hash, Types::CancelDomainConfigChangeRequest] params
    # @option params [String] :domain_name
    #   <p>Name of the OpenSearch Service domain configuration request to cancel.</p>
    # @option params [Boolean] :dry_run
    #   <p>When set to <b>True</b>, returns the list of change IDs and properties that will be cancelled without actually cancelling the change.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "DomainName", # required
    #     dry_run: false
    #   }
    #   options = {}
    #   response = client.cancel_domain_config_change(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     dry_run: false,
    #     cancelled_change_ids: ["GUID"],
    #     cancelled_change_properties: [
    #       {
    #         property_name: "String",
    #         cancelled_value: "String",
    #         active_value: "String"
    #       }
    #     ]
    #   }
    # @return [Types::CancelDomainConfigChangeResponse]
    def cancel_domain_config_change(params = {}, options = {})
      request = build_request(:cancel_domain_config_change, params)
      request.send_request(options)
    end

    # <p>Cancels a scheduled service software update for an Amazon ES domain. You can only perform this operation before the <code>AutomatedUpdateDate</code> and when the <code>UpdateStatus</code> is in the <code>PENDING_UPDATE</code> state.</p>
    # @param [Hash, Types::CancelElasticsearchServiceSoftwareUpdateRequest] params
    # @option params [String] :domain_name
    #   <p>The name of the domain that you want to stop the latest service software update on.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "DomainName", # required
    #   }
    #   options = {}
    #   response = client.cancel_elasticsearch_service_software_update(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     service_software_options: {
    #       current_version: "String",
    #       new_version: "String",
    #       update_available: false,
    #       cancellable: false,
    #       update_status: "PENDING_UPDATE" # One of: ["PENDING_UPDATE", "IN_PROGRESS", "COMPLETED", "NOT_ELIGIBLE", "ELIGIBLE"],
    #       description: "String",
    #       automated_update_date: Time.now,
    #       optional_deployment: false
    #     }
    #   }
    # @return [Types::CancelElasticsearchServiceSoftwareUpdateResponse]
    def cancel_elasticsearch_service_software_update(params = {}, options = {})
      request = build_request(:cancel_elasticsearch_service_software_update, params)
      request.send_request(options)
    end

    # <p>Creates a new Elasticsearch domain. For more information,
    #           see <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomains" target="_blank">Creating Elasticsearch Domains</a> in the <i>Amazon Elasticsearch Service Developer Guide</i>.</p>
    # @param [Hash, Types::CreateElasticsearchDomainRequest] params
    # @option params [String] :domain_name
    #   <p>The name of the Elasticsearch domain that you are creating. Domain names are unique across the domains owned by an account within an AWS region. Domain names must start with a lowercase letter and can contain the following characters: a-z (lowercase), 0-9, and - (hyphen).</p>
    # @option params [String] :elasticsearch_version
    #   <p>String of format X.Y to specify version for the Elasticsearch domain eg. "1.5" or "2.3". For more information,
    #             see <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomains" target="_blank">Creating Elasticsearch Domains</a> in the <i>Amazon Elasticsearch Service Developer Guide</i>.</p>
    # @option params [Types::ElasticsearchClusterConfig] :elasticsearch_cluster_config
    #   <p>Configuration options for an Elasticsearch domain. Specifies the instance type and number of instances in the domain cluster. </p>
    # @option params [Types::EBSOptions] :ebs_options
    #   <p>Options to enable, disable and specify the type and size of EBS storage volumes. </p>
    # @option params [String] :access_policies
    #   <p> IAM access policy as a JSON-formatted string.</p>
    # @option params [Types::SnapshotOptions] :snapshot_options
    #   <p>Option to set time, in UTC format, of the daily automated snapshot. Default value is 0 hours. </p>
    # @option params [Types::VPCOptions] :vpc_options
    #   <p>Options to specify the subnets and security groups for VPC endpoint. For more information, see <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-vpc.html#es-creating-vpc" target="_blank">Creating a VPC</a> in <i>VPC Endpoints for Amazon Elasticsearch Service Domains</i></p>
    # @option params [Types::CognitoOptions] :cognito_options
    #   <p>Options to specify the Cognito user and identity pools for Kibana authentication. For more information, see <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-cognito-auth.html" target="_blank">Amazon Cognito Authentication for Kibana</a>.</p>
    # @option params [Types::EncryptionAtRestOptions] :encryption_at_rest_options
    #   <p>Specifies the Encryption At Rest Options.</p>
    # @option params [Types::NodeToNodeEncryptionOptions] :node_to_node_encryption_options
    #   <p>Specifies the NodeToNodeEncryptionOptions.</p>
    # @option params [Hash<String, String>] :advanced_options
    #   <p> Option to allow references to indices in an HTTP request body.  Must be <code>false</code> when configuring access to individual sub-resources.  By default, the value is <code>true</code>.
    #             See <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-advanced-options" target="_blank">Configuration Advanced Options</a> for more information.</p>
    # @option params [Hash<String, Types::LogPublishingOption>] :log_publishing_options
    #   <p>Map of <code>LogType</code> and <code>LogPublishingOption</code>, each containing options to publish a given type of Elasticsearch log.</p>
    # @option params [Types::DomainEndpointOptions] :domain_endpoint_options
    #   <p>Options to specify configuration that will be applied to the domain endpoint.</p>
    # @option params [Types::AdvancedSecurityOptionsInput] :advanced_security_options
    #   <p>Specifies advanced security options.</p>
    # @option params [Types::AutoTuneOptionsInput] :auto_tune_options
    #   <p>Specifies Auto-Tune options.</p>
    # @option params [Array<Types::Tag>] :tag_list
    #   <p>A list of <code>Tag</code> added during domain creation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "DomainName", # required
    #     elasticsearch_version: "ElasticsearchVersionString",
    #     elasticsearch_cluster_config: {
    #       instance_type: "m3.medium.elasticsearch" # One of: ["m3.medium.elasticsearch", "m3.large.elasticsearch", "m3.xlarge.elasticsearch", "m3.2xlarge.elasticsearch", "m4.large.elasticsearch", "m4.xlarge.elasticsearch", "m4.2xlarge.elasticsearch", "m4.4xlarge.elasticsearch", "m4.10xlarge.elasticsearch", "m5.large.elasticsearch", "m5.xlarge.elasticsearch", "m5.2xlarge.elasticsearch", "m5.4xlarge.elasticsearch", "m5.12xlarge.elasticsearch", "r5.large.elasticsearch", "r5.xlarge.elasticsearch", "r5.2xlarge.elasticsearch", "r5.4xlarge.elasticsearch", "r5.12xlarge.elasticsearch", "c5.large.elasticsearch", "c5.xlarge.elasticsearch", "c5.2xlarge.elasticsearch", "c5.4xlarge.elasticsearch", "c5.9xlarge.elasticsearch", "c5.18xlarge.elasticsearch", "ultrawarm1.medium.elasticsearch", "ultrawarm1.large.elasticsearch", "t2.micro.elasticsearch", "t2.small.elasticsearch", "t2.medium.elasticsearch", "r3.large.elasticsearch", "r3.xlarge.elasticsearch", "r3.2xlarge.elasticsearch", "r3.4xlarge.elasticsearch", "r3.8xlarge.elasticsearch", "i2.xlarge.elasticsearch", "i2.2xlarge.elasticsearch", "d2.xlarge.elasticsearch", "d2.2xlarge.elasticsearch", "d2.4xlarge.elasticsearch", "d2.8xlarge.elasticsearch", "c4.large.elasticsearch", "c4.xlarge.elasticsearch", "c4.2xlarge.elasticsearch", "c4.4xlarge.elasticsearch", "c4.8xlarge.elasticsearch", "r4.large.elasticsearch", "r4.xlarge.elasticsearch", "r4.2xlarge.elasticsearch", "r4.4xlarge.elasticsearch", "r4.8xlarge.elasticsearch", "r4.16xlarge.elasticsearch", "i3.large.elasticsearch", "i3.xlarge.elasticsearch", "i3.2xlarge.elasticsearch", "i3.4xlarge.elasticsearch", "i3.8xlarge.elasticsearch", "i3.16xlarge.elasticsearch"],
    #       instance_count: 1,
    #       dedicated_master_enabled: false,
    #       zone_awareness_enabled: false,
    #       zone_awareness_config: {
    #         availability_zone_count: 1
    #       },
    #       dedicated_master_type: "m3.medium.elasticsearch" # One of: ["m3.medium.elasticsearch", "m3.large.elasticsearch", "m3.xlarge.elasticsearch", "m3.2xlarge.elasticsearch", "m4.large.elasticsearch", "m4.xlarge.elasticsearch", "m4.2xlarge.elasticsearch", "m4.4xlarge.elasticsearch", "m4.10xlarge.elasticsearch", "m5.large.elasticsearch", "m5.xlarge.elasticsearch", "m5.2xlarge.elasticsearch", "m5.4xlarge.elasticsearch", "m5.12xlarge.elasticsearch", "r5.large.elasticsearch", "r5.xlarge.elasticsearch", "r5.2xlarge.elasticsearch", "r5.4xlarge.elasticsearch", "r5.12xlarge.elasticsearch", "c5.large.elasticsearch", "c5.xlarge.elasticsearch", "c5.2xlarge.elasticsearch", "c5.4xlarge.elasticsearch", "c5.9xlarge.elasticsearch", "c5.18xlarge.elasticsearch", "ultrawarm1.medium.elasticsearch", "ultrawarm1.large.elasticsearch", "t2.micro.elasticsearch", "t2.small.elasticsearch", "t2.medium.elasticsearch", "r3.large.elasticsearch", "r3.xlarge.elasticsearch", "r3.2xlarge.elasticsearch", "r3.4xlarge.elasticsearch", "r3.8xlarge.elasticsearch", "i2.xlarge.elasticsearch", "i2.2xlarge.elasticsearch", "d2.xlarge.elasticsearch", "d2.2xlarge.elasticsearch", "d2.4xlarge.elasticsearch", "d2.8xlarge.elasticsearch", "c4.large.elasticsearch", "c4.xlarge.elasticsearch", "c4.2xlarge.elasticsearch", "c4.4xlarge.elasticsearch", "c4.8xlarge.elasticsearch", "r4.large.elasticsearch", "r4.xlarge.elasticsearch", "r4.2xlarge.elasticsearch", "r4.4xlarge.elasticsearch", "r4.8xlarge.elasticsearch", "r4.16xlarge.elasticsearch", "i3.large.elasticsearch", "i3.xlarge.elasticsearch", "i3.2xlarge.elasticsearch", "i3.4xlarge.elasticsearch", "i3.8xlarge.elasticsearch", "i3.16xlarge.elasticsearch"],
    #       dedicated_master_count: 1,
    #       warm_enabled: false,
    #       warm_type: "ultrawarm1.medium.elasticsearch" # One of: ["ultrawarm1.medium.elasticsearch", "ultrawarm1.large.elasticsearch"],
    #       warm_count: 1,
    #       cold_storage_options: {
    #         enabled: false, # required
    #       }
    #     },
    #     ebs_options: {
    #       ebs_enabled: false,
    #       volume_type: "standard" # One of: ["standard", "gp2", "io1", "gp3"],
    #       volume_size: 1,
    #       iops: 1,
    #       throughput: 1
    #     },
    #     access_policies: "PolicyDocument",
    #     snapshot_options: {
    #       automated_snapshot_start_hour: 1
    #     },
    #     vpc_options: {
    #       subnet_ids: ["String"],
    #       security_group_ids: ["String"]
    #     },
    #     cognito_options: {
    #       enabled: false,
    #       user_pool_id: "UserPoolId",
    #       identity_pool_id: "IdentityPoolId",
    #       role_arn: "RoleArn"
    #     },
    #     encryption_at_rest_options: {
    #       enabled: false,
    #       kms_key_id: "KmsKeyId"
    #     },
    #     node_to_node_encryption_options: {
    #       enabled: false
    #     },
    #     advanced_options: {
    #       "String" => "String"
    #     },
    #     log_publishing_options: {
    #       "LogType" => {
    #         cloud_watch_logs_log_group_arn: "CloudWatchLogsLogGroupArn",
    #         enabled: false
    #       }
    #     },
    #     domain_endpoint_options: {
    #       enforce_https: false,
    #       tls_security_policy: "Policy-Min-TLS-1-0-2019-07" # One of: ["Policy-Min-TLS-1-0-2019-07", "Policy-Min-TLS-1-2-2019-07", "Policy-Min-TLS-1-2-PFS-2023-10"],
    #       custom_endpoint_enabled: false,
    #       custom_endpoint: "DomainNameFqdn",
    #       custom_endpoint_certificate_arn: "ARN"
    #     },
    #     advanced_security_options: {
    #       enabled: false,
    #       internal_user_database_enabled: false,
    #       master_user_options: {
    #         master_user_arn: "ARN",
    #         master_user_name: "Username",
    #         master_user_password: "Password"
    #       },
    #       saml_options: {
    #         enabled: false,
    #         idp: {
    #           metadata_content: "SAMLMetadata", # required
    #           entity_id: "SAMLEntityId", # required
    #         },
    #         master_user_name: "Username",
    #         master_backend_role: "BackendRole",
    #         subject_key: "String",
    #         roles_key: "String",
    #         session_timeout_minutes: 1
    #       },
    #       anonymous_auth_enabled: false
    #     },
    #     auto_tune_options: {
    #       desired_state: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #       maintenance_schedules: [
    #         {
    #           start_at: Time.now,
    #           duration: {
    #             value: 1,
    #             unit: "HOURS" # One of: ["HOURS"]
    #           },
    #           cron_expression_for_recurrence: "String"
    #         }
    #       ]
    #     },
    #     tag_list: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_elasticsearch_domain(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain_status: {
    #       domain_id: "DomainId", # required
    #       domain_name: "DomainName", # required
    #       arn: "ARN", # required
    #       created: false,
    #       deleted: false,
    #       endpoint: "ServiceUrl",
    #       endpoints: {
    #         "String" => "ServiceUrl"
    #       },
    #       processing: false,
    #       upgrade_processing: false,
    #       elasticsearch_version: "ElasticsearchVersionString",
    #       elasticsearch_cluster_config: { # required
    #         instance_type: "m3.medium.elasticsearch" # One of: ["m3.medium.elasticsearch", "m3.large.elasticsearch", "m3.xlarge.elasticsearch", "m3.2xlarge.elasticsearch", "m4.large.elasticsearch", "m4.xlarge.elasticsearch", "m4.2xlarge.elasticsearch", "m4.4xlarge.elasticsearch", "m4.10xlarge.elasticsearch", "m5.large.elasticsearch", "m5.xlarge.elasticsearch", "m5.2xlarge.elasticsearch", "m5.4xlarge.elasticsearch", "m5.12xlarge.elasticsearch", "r5.large.elasticsearch", "r5.xlarge.elasticsearch", "r5.2xlarge.elasticsearch", "r5.4xlarge.elasticsearch", "r5.12xlarge.elasticsearch", "c5.large.elasticsearch", "c5.xlarge.elasticsearch", "c5.2xlarge.elasticsearch", "c5.4xlarge.elasticsearch", "c5.9xlarge.elasticsearch", "c5.18xlarge.elasticsearch", "ultrawarm1.medium.elasticsearch", "ultrawarm1.large.elasticsearch", "t2.micro.elasticsearch", "t2.small.elasticsearch", "t2.medium.elasticsearch", "r3.large.elasticsearch", "r3.xlarge.elasticsearch", "r3.2xlarge.elasticsearch", "r3.4xlarge.elasticsearch", "r3.8xlarge.elasticsearch", "i2.xlarge.elasticsearch", "i2.2xlarge.elasticsearch", "d2.xlarge.elasticsearch", "d2.2xlarge.elasticsearch", "d2.4xlarge.elasticsearch", "d2.8xlarge.elasticsearch", "c4.large.elasticsearch", "c4.xlarge.elasticsearch", "c4.2xlarge.elasticsearch", "c4.4xlarge.elasticsearch", "c4.8xlarge.elasticsearch", "r4.large.elasticsearch", "r4.xlarge.elasticsearch", "r4.2xlarge.elasticsearch", "r4.4xlarge.elasticsearch", "r4.8xlarge.elasticsearch", "r4.16xlarge.elasticsearch", "i3.large.elasticsearch", "i3.xlarge.elasticsearch", "i3.2xlarge.elasticsearch", "i3.4xlarge.elasticsearch", "i3.8xlarge.elasticsearch", "i3.16xlarge.elasticsearch"],
    #         instance_count: 1,
    #         dedicated_master_enabled: false,
    #         zone_awareness_enabled: false,
    #         zone_awareness_config: {
    #           availability_zone_count: 1
    #         },
    #         dedicated_master_type: "m3.medium.elasticsearch" # One of: ["m3.medium.elasticsearch", "m3.large.elasticsearch", "m3.xlarge.elasticsearch", "m3.2xlarge.elasticsearch", "m4.large.elasticsearch", "m4.xlarge.elasticsearch", "m4.2xlarge.elasticsearch", "m4.4xlarge.elasticsearch", "m4.10xlarge.elasticsearch", "m5.large.elasticsearch", "m5.xlarge.elasticsearch", "m5.2xlarge.elasticsearch", "m5.4xlarge.elasticsearch", "m5.12xlarge.elasticsearch", "r5.large.elasticsearch", "r5.xlarge.elasticsearch", "r5.2xlarge.elasticsearch", "r5.4xlarge.elasticsearch", "r5.12xlarge.elasticsearch", "c5.large.elasticsearch", "c5.xlarge.elasticsearch", "c5.2xlarge.elasticsearch", "c5.4xlarge.elasticsearch", "c5.9xlarge.elasticsearch", "c5.18xlarge.elasticsearch", "ultrawarm1.medium.elasticsearch", "ultrawarm1.large.elasticsearch", "t2.micro.elasticsearch", "t2.small.elasticsearch", "t2.medium.elasticsearch", "r3.large.elasticsearch", "r3.xlarge.elasticsearch", "r3.2xlarge.elasticsearch", "r3.4xlarge.elasticsearch", "r3.8xlarge.elasticsearch", "i2.xlarge.elasticsearch", "i2.2xlarge.elasticsearch", "d2.xlarge.elasticsearch", "d2.2xlarge.elasticsearch", "d2.4xlarge.elasticsearch", "d2.8xlarge.elasticsearch", "c4.large.elasticsearch", "c4.xlarge.elasticsearch", "c4.2xlarge.elasticsearch", "c4.4xlarge.elasticsearch", "c4.8xlarge.elasticsearch", "r4.large.elasticsearch", "r4.xlarge.elasticsearch", "r4.2xlarge.elasticsearch", "r4.4xlarge.elasticsearch", "r4.8xlarge.elasticsearch", "r4.16xlarge.elasticsearch", "i3.large.elasticsearch", "i3.xlarge.elasticsearch", "i3.2xlarge.elasticsearch", "i3.4xlarge.elasticsearch", "i3.8xlarge.elasticsearch", "i3.16xlarge.elasticsearch"],
    #         dedicated_master_count: 1,
    #         warm_enabled: false,
    #         warm_type: "ultrawarm1.medium.elasticsearch" # One of: ["ultrawarm1.medium.elasticsearch", "ultrawarm1.large.elasticsearch"],
    #         warm_count: 1,
    #         cold_storage_options: {
    #           enabled: false, # required
    #         }
    #       },
    #       ebs_options: {
    #         ebs_enabled: false,
    #         volume_type: "standard" # One of: ["standard", "gp2", "io1", "gp3"],
    #         volume_size: 1,
    #         iops: 1,
    #         throughput: 1
    #       },
    #       access_policies: "PolicyDocument",
    #       snapshot_options: {
    #         automated_snapshot_start_hour: 1
    #       },
    #       vpc_options: {
    #         vpc_id: "String",
    #         subnet_ids: ["String"],
    #         availability_zones: ["String"],
    #         security_group_ids: ["String"]
    #       },
    #       cognito_options: {
    #         enabled: false,
    #         user_pool_id: "UserPoolId",
    #         identity_pool_id: "IdentityPoolId",
    #         role_arn: "RoleArn"
    #       },
    #       encryption_at_rest_options: {
    #         enabled: false,
    #         kms_key_id: "KmsKeyId"
    #       },
    #       node_to_node_encryption_options: {
    #         enabled: false
    #       },
    #       advanced_options: {
    #         "String" => "String"
    #       },
    #       log_publishing_options: {
    #         "LogType" => {
    #           cloud_watch_logs_log_group_arn: "CloudWatchLogsLogGroupArn",
    #           enabled: false
    #         }
    #       },
    #       service_software_options: {
    #         current_version: "String",
    #         new_version: "String",
    #         update_available: false,
    #         cancellable: false,
    #         update_status: "PENDING_UPDATE" # One of: ["PENDING_UPDATE", "IN_PROGRESS", "COMPLETED", "NOT_ELIGIBLE", "ELIGIBLE"],
    #         description: "String",
    #         automated_update_date: Time.now,
    #         optional_deployment: false
    #       },
    #       domain_endpoint_options: {
    #         enforce_https: false,
    #         tls_security_policy: "Policy-Min-TLS-1-0-2019-07" # One of: ["Policy-Min-TLS-1-0-2019-07", "Policy-Min-TLS-1-2-2019-07", "Policy-Min-TLS-1-2-PFS-2023-10"],
    #         custom_endpoint_enabled: false,
    #         custom_endpoint: "DomainNameFqdn",
    #         custom_endpoint_certificate_arn: "ARN"
    #       },
    #       advanced_security_options: {
    #         enabled: false,
    #         internal_user_database_enabled: false,
    #         saml_options: {
    #           enabled: false,
    #           idp: {
    #             metadata_content: "SAMLMetadata", # required
    #             entity_id: "SAMLEntityId", # required
    #           },
    #           subject_key: "String",
    #           roles_key: "String",
    #           session_timeout_minutes: 1
    #         },
    #         anonymous_auth_disable_date: Time.now,
    #         anonymous_auth_enabled: false
    #       },
    #       auto_tune_options: {
    #         state: "ENABLED" # One of: ["ENABLED", "DISABLED", "ENABLE_IN_PROGRESS", "DISABLE_IN_PROGRESS", "DISABLED_AND_ROLLBACK_SCHEDULED", "DISABLED_AND_ROLLBACK_IN_PROGRESS", "DISABLED_AND_ROLLBACK_COMPLETE", "DISABLED_AND_ROLLBACK_ERROR", "ERROR"],
    #         error_message: "String"
    #       },
    #       change_progress_details: {
    #         change_id: "GUID",
    #         message: "Message",
    #         config_change_status: "Pending" # One of: ["Pending", "Initializing", "Validating", "ValidationFailed", "ApplyingChanges", "Completed", "PendingUserInput", "Cancelled"],
    #         start_time: Time.now,
    #         last_updated_time: Time.now,
    #         initiated_by: "CUSTOMER" # One of: ["CUSTOMER", "SERVICE"]
    #       },
    #       domain_processing_status: "Creating" # One of: ["Creating", "Active", "Modifying", "UpgradingEngineVersion", "UpdatingServiceSoftware", "Isolated", "Deleting"],
    #       modifying_properties: [
    #         {
    #           name: "String",
    #           active_value: "String",
    #           pending_value: "String",
    #           value_type: "PLAIN_TEXT" # One of: ["PLAIN_TEXT", "STRINGIFIED_JSON"]
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::CreateElasticsearchDomainResponse]
    def create_elasticsearch_domain(params = {}, options = {})
      request = build_request(:create_elasticsearch_domain, params)
      request.send_request(options)
    end

    # <p>Creates a new cross-cluster search connection from a source domain to a destination domain.</p>
    # @param [Hash, Types::CreateOutboundCrossClusterSearchConnectionRequest] params
    # @option params [Types::DomainInformation] :source_domain_info
    #   <p>Specifies the <code><a>DomainInformation</a></code> for the source Elasticsearch domain.</p>
    # @option params [Types::DomainInformation] :destination_domain_info
    #   <p>Specifies the <code><a>DomainInformation</a></code> for the destination Elasticsearch domain.</p>
    # @option params [String] :connection_alias
    #   <p>Specifies the connection alias that will be used by the customer for this connection.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     source_domain_info: { # required
    #       owner_id: "OwnerId",
    #       domain_name: "DomainName", # required
    #       region: "Region"
    #     },
    #     destination_domain_info: { # required
    #       owner_id: "OwnerId",
    #       domain_name: "DomainName", # required
    #       region: "Region"
    #     },
    #     connection_alias: "ConnectionAlias", # required
    #   }
    #   options = {}
    #   response = client.create_outbound_cross_cluster_search_connection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     source_domain_info: {
    #       owner_id: "OwnerId",
    #       domain_name: "DomainName", # required
    #       region: "Region"
    #     },
    #     destination_domain_info: {
    #       owner_id: "OwnerId",
    #       domain_name: "DomainName", # required
    #       region: "Region"
    #     },
    #     connection_alias: "ConnectionAlias",
    #     connection_status: {
    #       status_code: "PENDING_ACCEPTANCE" # One of: ["PENDING_ACCEPTANCE", "VALIDATING", "VALIDATION_FAILED", "PROVISIONING", "ACTIVE", "REJECTED", "DELETING", "DELETED"],
    #       message: "CrossClusterSearchConnectionStatusMessage"
    #     },
    #     cross_cluster_search_connection_id: "CrossClusterSearchConnectionId"
    #   }
    # @return [Types::CreateOutboundCrossClusterSearchConnectionResponse]
    def create_outbound_cross_cluster_search_connection(params = {}, options = {})
      request = build_request(:create_outbound_cross_cluster_search_connection, params)
      request.send_request(options)
    end

    # <p>Create a package for use with Amazon ES domains.</p>
    # @param [Hash, Types::CreatePackageRequest] params
    # @option params [String] :package_name
    #   <p>Unique identifier for the package.</p>
    # @option params [String] :package_type
    #   <p>Type of package. Currently supports only TXT-DICTIONARY.</p>
    # @option params [String] :package_description
    #   <p>Description of the package.</p>
    # @option params [Types::PackageSource] :package_source
    #   <p>The customer S3 location <code>PackageSource</code> for importing the package.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     package_name: "PackageName", # required
    #     package_type: "TXT-DICTIONARY" # One of: ["TXT-DICTIONARY"], # required
    #     package_description: "PackageDescription",
    #     package_source: { # required
    #       s3_bucket_name: "S3BucketName",
    #       s3_key: "S3Key"
    #     }
    #   }
    #   options = {}
    #   response = client.create_package(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     package_details: {
    #       package_id: "PackageID",
    #       package_name: "PackageName",
    #       package_type: "TXT-DICTIONARY" # One of: ["TXT-DICTIONARY"],
    #       package_description: "PackageDescription",
    #       package_status: "COPYING" # One of: ["COPYING", "COPY_FAILED", "VALIDATING", "VALIDATION_FAILED", "AVAILABLE", "DELETING", "DELETED", "DELETE_FAILED"],
    #       created_at: Time.now,
    #       last_updated_at: Time.now,
    #       available_package_version: "PackageVersion",
    #       error_details: {
    #         error_type: "ErrorType",
    #         error_message: "ErrorMessage"
    #       }
    #     }
    #   }
    # @return [Types::CreatePackageResponse]
    def create_package(params = {}, options = {})
      request = build_request(:create_package, params)
      request.send_request(options)
    end

    # <p>Creates an Amazon OpenSearch Service-managed VPC endpoint.</p>
    # @param [Hash, Types::CreateVpcEndpointRequest] params
    # @option params [String] :domain_arn
    #   <p>The Amazon Resource Name (ARN) of the domain to grant access to.</p>
    # @option params [Types::VPCOptions] :vpc_options
    #   <p>Options to specify the subnets and security groups for the endpoint.</p>
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier to ensure idempotency of the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_arn: "DomainArn", # required
    #     vpc_options: { # required
    #       subnet_ids: ["String"],
    #       security_group_ids: ["String"]
    #     },
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_vpc_endpoint(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     vpc_endpoint: { # required
    #       vpc_endpoint_id: "VpcEndpointId",
    #       vpc_endpoint_owner: "AWSAccount",
    #       domain_arn: "DomainArn",
    #       vpc_options: {
    #         vpc_id: "String",
    #         subnet_ids: ["String"],
    #         availability_zones: ["String"],
    #         security_group_ids: ["String"]
    #       },
    #       status: "CREATING" # One of: ["CREATING", "CREATE_FAILED", "ACTIVE", "UPDATING", "UPDATE_FAILED", "DELETING", "DELETE_FAILED"],
    #       endpoint: "Endpoint"
    #     }
    #   }
    # @return [Types::CreateVpcEndpointResponse]
    def create_vpc_endpoint(params = {}, options = {})
      request = build_request(:create_vpc_endpoint, params)
      request.send_request(options)
    end

    # <p>Permanently deletes the specified Elasticsearch domain and all of its data. Once a domain is deleted, it cannot be recovered.</p>
    # @param [Hash, Types::DeleteElasticsearchDomainRequest] params
    # @option params [String] :domain_name
    #   <p>The name of the Elasticsearch domain that you want to permanently delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "DomainName", # required
    #   }
    #   options = {}
    #   response = client.delete_elasticsearch_domain(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain_status: {
    #       domain_id: "DomainId", # required
    #       domain_name: "DomainName", # required
    #       arn: "ARN", # required
    #       created: false,
    #       deleted: false,
    #       endpoint: "ServiceUrl",
    #       endpoints: {
    #         "String" => "ServiceUrl"
    #       },
    #       processing: false,
    #       upgrade_processing: false,
    #       elasticsearch_version: "ElasticsearchVersionString",
    #       elasticsearch_cluster_config: { # required
    #         instance_type: "m3.medium.elasticsearch" # One of: ["m3.medium.elasticsearch", "m3.large.elasticsearch", "m3.xlarge.elasticsearch", "m3.2xlarge.elasticsearch", "m4.large.elasticsearch", "m4.xlarge.elasticsearch", "m4.2xlarge.elasticsearch", "m4.4xlarge.elasticsearch", "m4.10xlarge.elasticsearch", "m5.large.elasticsearch", "m5.xlarge.elasticsearch", "m5.2xlarge.elasticsearch", "m5.4xlarge.elasticsearch", "m5.12xlarge.elasticsearch", "r5.large.elasticsearch", "r5.xlarge.elasticsearch", "r5.2xlarge.elasticsearch", "r5.4xlarge.elasticsearch", "r5.12xlarge.elasticsearch", "c5.large.elasticsearch", "c5.xlarge.elasticsearch", "c5.2xlarge.elasticsearch", "c5.4xlarge.elasticsearch", "c5.9xlarge.elasticsearch", "c5.18xlarge.elasticsearch", "ultrawarm1.medium.elasticsearch", "ultrawarm1.large.elasticsearch", "t2.micro.elasticsearch", "t2.small.elasticsearch", "t2.medium.elasticsearch", "r3.large.elasticsearch", "r3.xlarge.elasticsearch", "r3.2xlarge.elasticsearch", "r3.4xlarge.elasticsearch", "r3.8xlarge.elasticsearch", "i2.xlarge.elasticsearch", "i2.2xlarge.elasticsearch", "d2.xlarge.elasticsearch", "d2.2xlarge.elasticsearch", "d2.4xlarge.elasticsearch", "d2.8xlarge.elasticsearch", "c4.large.elasticsearch", "c4.xlarge.elasticsearch", "c4.2xlarge.elasticsearch", "c4.4xlarge.elasticsearch", "c4.8xlarge.elasticsearch", "r4.large.elasticsearch", "r4.xlarge.elasticsearch", "r4.2xlarge.elasticsearch", "r4.4xlarge.elasticsearch", "r4.8xlarge.elasticsearch", "r4.16xlarge.elasticsearch", "i3.large.elasticsearch", "i3.xlarge.elasticsearch", "i3.2xlarge.elasticsearch", "i3.4xlarge.elasticsearch", "i3.8xlarge.elasticsearch", "i3.16xlarge.elasticsearch"],
    #         instance_count: 1,
    #         dedicated_master_enabled: false,
    #         zone_awareness_enabled: false,
    #         zone_awareness_config: {
    #           availability_zone_count: 1
    #         },
    #         dedicated_master_type: "m3.medium.elasticsearch" # One of: ["m3.medium.elasticsearch", "m3.large.elasticsearch", "m3.xlarge.elasticsearch", "m3.2xlarge.elasticsearch", "m4.large.elasticsearch", "m4.xlarge.elasticsearch", "m4.2xlarge.elasticsearch", "m4.4xlarge.elasticsearch", "m4.10xlarge.elasticsearch", "m5.large.elasticsearch", "m5.xlarge.elasticsearch", "m5.2xlarge.elasticsearch", "m5.4xlarge.elasticsearch", "m5.12xlarge.elasticsearch", "r5.large.elasticsearch", "r5.xlarge.elasticsearch", "r5.2xlarge.elasticsearch", "r5.4xlarge.elasticsearch", "r5.12xlarge.elasticsearch", "c5.large.elasticsearch", "c5.xlarge.elasticsearch", "c5.2xlarge.elasticsearch", "c5.4xlarge.elasticsearch", "c5.9xlarge.elasticsearch", "c5.18xlarge.elasticsearch", "ultrawarm1.medium.elasticsearch", "ultrawarm1.large.elasticsearch", "t2.micro.elasticsearch", "t2.small.elasticsearch", "t2.medium.elasticsearch", "r3.large.elasticsearch", "r3.xlarge.elasticsearch", "r3.2xlarge.elasticsearch", "r3.4xlarge.elasticsearch", "r3.8xlarge.elasticsearch", "i2.xlarge.elasticsearch", "i2.2xlarge.elasticsearch", "d2.xlarge.elasticsearch", "d2.2xlarge.elasticsearch", "d2.4xlarge.elasticsearch", "d2.8xlarge.elasticsearch", "c4.large.elasticsearch", "c4.xlarge.elasticsearch", "c4.2xlarge.elasticsearch", "c4.4xlarge.elasticsearch", "c4.8xlarge.elasticsearch", "r4.large.elasticsearch", "r4.xlarge.elasticsearch", "r4.2xlarge.elasticsearch", "r4.4xlarge.elasticsearch", "r4.8xlarge.elasticsearch", "r4.16xlarge.elasticsearch", "i3.large.elasticsearch", "i3.xlarge.elasticsearch", "i3.2xlarge.elasticsearch", "i3.4xlarge.elasticsearch", "i3.8xlarge.elasticsearch", "i3.16xlarge.elasticsearch"],
    #         dedicated_master_count: 1,
    #         warm_enabled: false,
    #         warm_type: "ultrawarm1.medium.elasticsearch" # One of: ["ultrawarm1.medium.elasticsearch", "ultrawarm1.large.elasticsearch"],
    #         warm_count: 1,
    #         cold_storage_options: {
    #           enabled: false, # required
    #         }
    #       },
    #       ebs_options: {
    #         ebs_enabled: false,
    #         volume_type: "standard" # One of: ["standard", "gp2", "io1", "gp3"],
    #         volume_size: 1,
    #         iops: 1,
    #         throughput: 1
    #       },
    #       access_policies: "PolicyDocument",
    #       snapshot_options: {
    #         automated_snapshot_start_hour: 1
    #       },
    #       vpc_options: {
    #         vpc_id: "String",
    #         subnet_ids: ["String"],
    #         availability_zones: ["String"],
    #         security_group_ids: ["String"]
    #       },
    #       cognito_options: {
    #         enabled: false,
    #         user_pool_id: "UserPoolId",
    #         identity_pool_id: "IdentityPoolId",
    #         role_arn: "RoleArn"
    #       },
    #       encryption_at_rest_options: {
    #         enabled: false,
    #         kms_key_id: "KmsKeyId"
    #       },
    #       node_to_node_encryption_options: {
    #         enabled: false
    #       },
    #       advanced_options: {
    #         "String" => "String"
    #       },
    #       log_publishing_options: {
    #         "LogType" => {
    #           cloud_watch_logs_log_group_arn: "CloudWatchLogsLogGroupArn",
    #           enabled: false
    #         }
    #       },
    #       service_software_options: {
    #         current_version: "String",
    #         new_version: "String",
    #         update_available: false,
    #         cancellable: false,
    #         update_status: "PENDING_UPDATE" # One of: ["PENDING_UPDATE", "IN_PROGRESS", "COMPLETED", "NOT_ELIGIBLE", "ELIGIBLE"],
    #         description: "String",
    #         automated_update_date: Time.now,
    #         optional_deployment: false
    #       },
    #       domain_endpoint_options: {
    #         enforce_https: false,
    #         tls_security_policy: "Policy-Min-TLS-1-0-2019-07" # One of: ["Policy-Min-TLS-1-0-2019-07", "Policy-Min-TLS-1-2-2019-07", "Policy-Min-TLS-1-2-PFS-2023-10"],
    #         custom_endpoint_enabled: false,
    #         custom_endpoint: "DomainNameFqdn",
    #         custom_endpoint_certificate_arn: "ARN"
    #       },
    #       advanced_security_options: {
    #         enabled: false,
    #         internal_user_database_enabled: false,
    #         saml_options: {
    #           enabled: false,
    #           idp: {
    #             metadata_content: "SAMLMetadata", # required
    #             entity_id: "SAMLEntityId", # required
    #           },
    #           subject_key: "String",
    #           roles_key: "String",
    #           session_timeout_minutes: 1
    #         },
    #         anonymous_auth_disable_date: Time.now,
    #         anonymous_auth_enabled: false
    #       },
    #       auto_tune_options: {
    #         state: "ENABLED" # One of: ["ENABLED", "DISABLED", "ENABLE_IN_PROGRESS", "DISABLE_IN_PROGRESS", "DISABLED_AND_ROLLBACK_SCHEDULED", "DISABLED_AND_ROLLBACK_IN_PROGRESS", "DISABLED_AND_ROLLBACK_COMPLETE", "DISABLED_AND_ROLLBACK_ERROR", "ERROR"],
    #         error_message: "String"
    #       },
    #       change_progress_details: {
    #         change_id: "GUID",
    #         message: "Message",
    #         config_change_status: "Pending" # One of: ["Pending", "Initializing", "Validating", "ValidationFailed", "ApplyingChanges", "Completed", "PendingUserInput", "Cancelled"],
    #         start_time: Time.now,
    #         last_updated_time: Time.now,
    #         initiated_by: "CUSTOMER" # One of: ["CUSTOMER", "SERVICE"]
    #       },
    #       domain_processing_status: "Creating" # One of: ["Creating", "Active", "Modifying", "UpgradingEngineVersion", "UpdatingServiceSoftware", "Isolated", "Deleting"],
    #       modifying_properties: [
    #         {
    #           name: "String",
    #           active_value: "String",
    #           pending_value: "String",
    #           value_type: "PLAIN_TEXT" # One of: ["PLAIN_TEXT", "STRINGIFIED_JSON"]
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::DeleteElasticsearchDomainResponse]
    def delete_elasticsearch_domain(params = {}, options = {})
      request = build_request(:delete_elasticsearch_domain, params)
      request.send_request(options)
    end

    # <p>Deletes the service-linked role that Elasticsearch Service uses to manage and maintain VPC domains. Role deletion will fail if any existing VPC domains use the role. You must delete any such Elasticsearch domains before deleting the role. See <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-vpc.html#es-enabling-slr" target="_blank">Deleting Elasticsearch Service Role</a> in <i>VPC Endpoints for Amazon Elasticsearch Service Domains</i>.</p>
    # @param [Hash, Smithy::Schema::EmptyStructure] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.delete_elasticsearch_service_role(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_elasticsearch_service_role(params = {}, options = {})
      request = build_request(:delete_elasticsearch_service_role, params)
      request.send_request(options)
    end

    # <p>Allows the destination domain owner to delete an existing inbound cross-cluster search connection.</p>
    # @param [Hash, Types::DeleteInboundCrossClusterSearchConnectionRequest] params
    # @option params [String] :cross_cluster_search_connection_id
    #   <p>The id of the inbound connection that you want to permanently delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cross_cluster_search_connection_id: "CrossClusterSearchConnectionId", # required
    #   }
    #   options = {}
    #   response = client.delete_inbound_cross_cluster_search_connection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cross_cluster_search_connection: {
    #       source_domain_info: {
    #         owner_id: "OwnerId",
    #         domain_name: "DomainName", # required
    #         region: "Region"
    #       },
    #       destination_domain_info: {
    #         owner_id: "OwnerId",
    #         domain_name: "DomainName", # required
    #         region: "Region"
    #       },
    #       cross_cluster_search_connection_id: "CrossClusterSearchConnectionId",
    #       connection_status: {
    #         status_code: "PENDING_ACCEPTANCE" # One of: ["PENDING_ACCEPTANCE", "APPROVED", "REJECTING", "REJECTED", "DELETING", "DELETED"],
    #         message: "CrossClusterSearchConnectionStatusMessage"
    #       }
    #     }
    #   }
    # @return [Types::DeleteInboundCrossClusterSearchConnectionResponse]
    def delete_inbound_cross_cluster_search_connection(params = {}, options = {})
      request = build_request(:delete_inbound_cross_cluster_search_connection, params)
      request.send_request(options)
    end

    # <p>Allows the source domain owner to delete an existing outbound cross-cluster search connection.</p>
    # @param [Hash, Types::DeleteOutboundCrossClusterSearchConnectionRequest] params
    # @option params [String] :cross_cluster_search_connection_id
    #   <p>The id of the outbound connection that you want to permanently delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cross_cluster_search_connection_id: "CrossClusterSearchConnectionId", # required
    #   }
    #   options = {}
    #   response = client.delete_outbound_cross_cluster_search_connection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cross_cluster_search_connection: {
    #       source_domain_info: {
    #         owner_id: "OwnerId",
    #         domain_name: "DomainName", # required
    #         region: "Region"
    #       },
    #       destination_domain_info: {
    #         owner_id: "OwnerId",
    #         domain_name: "DomainName", # required
    #         region: "Region"
    #       },
    #       cross_cluster_search_connection_id: "CrossClusterSearchConnectionId",
    #       connection_alias: "ConnectionAlias",
    #       connection_status: {
    #         status_code: "PENDING_ACCEPTANCE" # One of: ["PENDING_ACCEPTANCE", "VALIDATING", "VALIDATION_FAILED", "PROVISIONING", "ACTIVE", "REJECTED", "DELETING", "DELETED"],
    #         message: "CrossClusterSearchConnectionStatusMessage"
    #       }
    #     }
    #   }
    # @return [Types::DeleteOutboundCrossClusterSearchConnectionResponse]
    def delete_outbound_cross_cluster_search_connection(params = {}, options = {})
      request = build_request(:delete_outbound_cross_cluster_search_connection, params)
      request.send_request(options)
    end

    # <p>Delete the package.</p>
    # @param [Hash, Types::DeletePackageRequest] params
    # @option params [String] :package_id
    #   <p>Internal ID of the package that you want to delete. Use <code>DescribePackages</code> to find this value.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     package_id: "PackageID", # required
    #   }
    #   options = {}
    #   response = client.delete_package(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     package_details: {
    #       package_id: "PackageID",
    #       package_name: "PackageName",
    #       package_type: "TXT-DICTIONARY" # One of: ["TXT-DICTIONARY"],
    #       package_description: "PackageDescription",
    #       package_status: "COPYING" # One of: ["COPYING", "COPY_FAILED", "VALIDATING", "VALIDATION_FAILED", "AVAILABLE", "DELETING", "DELETED", "DELETE_FAILED"],
    #       created_at: Time.now,
    #       last_updated_at: Time.now,
    #       available_package_version: "PackageVersion",
    #       error_details: {
    #         error_type: "ErrorType",
    #         error_message: "ErrorMessage"
    #       }
    #     }
    #   }
    # @return [Types::DeletePackageResponse]
    def delete_package(params = {}, options = {})
      request = build_request(:delete_package, params)
      request.send_request(options)
    end

    # <p>Deletes an Amazon OpenSearch Service-managed interface VPC endpoint.</p>
    # @param [Hash, Types::DeleteVpcEndpointRequest] params
    # @option params [String] :vpc_endpoint_id
    #   <p>The unique identifier of the endpoint to be deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     vpc_endpoint_id: "VpcEndpointId", # required
    #   }
    #   options = {}
    #   response = client.delete_vpc_endpoint(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     vpc_endpoint_summary: { # required
    #       vpc_endpoint_id: "VpcEndpointId",
    #       vpc_endpoint_owner: "String",
    #       domain_arn: "DomainArn",
    #       status: "CREATING" # One of: ["CREATING", "CREATE_FAILED", "ACTIVE", "UPDATING", "UPDATE_FAILED", "DELETING", "DELETE_FAILED"]
    #     }
    #   }
    # @return [Types::DeleteVpcEndpointResponse]
    def delete_vpc_endpoint(params = {}, options = {})
      request = build_request(:delete_vpc_endpoint, params)
      request.send_request(options)
    end

    # <p>Provides scheduled Auto-Tune action details for the Elasticsearch domain, such as Auto-Tune action type, description, severity, and scheduled date.</p>
    # @param [Hash, Types::DescribeDomainAutoTunesRequest] params
    # @option params [String] :domain_name
    #   <p>Specifies the domain name for which you want Auto-Tune action details.</p>
    # @option params [Integer] :max_results
    #   <p>Set this value to limit the number of results returned. If not specified, defaults to 100.</p>
    # @option params [String] :next_token
    #   <p>NextToken is sent in case the earlier API call results contain the NextToken. It is used for pagination.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "DomainName", # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.describe_domain_auto_tunes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     auto_tunes: [
    #       {
    #         auto_tune_type: "SCHEDULED_ACTION" # One of: ["SCHEDULED_ACTION"],
    #         auto_tune_details: {
    #           scheduled_auto_tune_details: {
    #             date: Time.now,
    #             action_type: "JVM_HEAP_SIZE_TUNING" # One of: ["JVM_HEAP_SIZE_TUNING", "JVM_YOUNG_GEN_TUNING"],
    #             action: "ScheduledAutoTuneDescription",
    #             severity: "LOW" # One of: ["LOW", "MEDIUM", "HIGH"]
    #           }
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeDomainAutoTunesResponse]
    def describe_domain_auto_tunes(params = {}, options = {})
      request = build_request(:describe_domain_auto_tunes, params)
      request.send_request(options)
    end

    # <p>Returns information about the current blue/green deployment happening on a domain, including
    #         a change ID, status, and progress stages.</p>
    # @param [Hash, Types::DescribeDomainChangeProgressRequest] params
    # @option params [String] :domain_name
    #   <p>The domain you want to get the progress information about.</p>
    # @option params [String] :change_id
    #   <p>The specific change ID for which you want to get progress information. This is an optional parameter.
    #           If omitted, the service returns information about the most recent configuration change.
    #         </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "DomainName", # required
    #     change_id: "GUID"
    #   }
    #   options = {}
    #   response = client.describe_domain_change_progress(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     change_progress_status: {
    #       change_id: "GUID",
    #       start_time: Time.now,
    #       status: "PENDING" # One of: ["PENDING", "PROCESSING", "COMPLETED", "FAILED"],
    #       pending_properties: ["String"],
    #       completed_properties: ["String"],
    #       total_number_of_stages: 1,
    #       change_progress_stages: [
    #         {
    #           name: "ChangeProgressStageName",
    #           status: "ChangeProgressStageStatus",
    #           description: "Description",
    #           last_updated: Time.now
    #         }
    #       ],
    #       config_change_status: "Pending" # One of: ["Pending", "Initializing", "Validating", "ValidationFailed", "ApplyingChanges", "Completed", "PendingUserInput", "Cancelled"],
    #       last_updated_time: Time.now,
    #       initiated_by: "CUSTOMER" # One of: ["CUSTOMER", "SERVICE"]
    #     }
    #   }
    # @return [Types::DescribeDomainChangeProgressResponse]
    def describe_domain_change_progress(params = {}, options = {})
      request = build_request(:describe_domain_change_progress, params)
      request.send_request(options)
    end

    # <p>Returns domain configuration information about the specified Elasticsearch domain, including the domain ID, domain endpoint, and domain ARN.</p>
    # @param [Hash, Types::DescribeElasticsearchDomainRequest] params
    # @option params [String] :domain_name
    #   <p>The name of the Elasticsearch domain for which you want information.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "DomainName", # required
    #   }
    #   options = {}
    #   response = client.describe_elasticsearch_domain(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain_status: { # required
    #       domain_id: "DomainId", # required
    #       domain_name: "DomainName", # required
    #       arn: "ARN", # required
    #       created: false,
    #       deleted: false,
    #       endpoint: "ServiceUrl",
    #       endpoints: {
    #         "String" => "ServiceUrl"
    #       },
    #       processing: false,
    #       upgrade_processing: false,
    #       elasticsearch_version: "ElasticsearchVersionString",
    #       elasticsearch_cluster_config: { # required
    #         instance_type: "m3.medium.elasticsearch" # One of: ["m3.medium.elasticsearch", "m3.large.elasticsearch", "m3.xlarge.elasticsearch", "m3.2xlarge.elasticsearch", "m4.large.elasticsearch", "m4.xlarge.elasticsearch", "m4.2xlarge.elasticsearch", "m4.4xlarge.elasticsearch", "m4.10xlarge.elasticsearch", "m5.large.elasticsearch", "m5.xlarge.elasticsearch", "m5.2xlarge.elasticsearch", "m5.4xlarge.elasticsearch", "m5.12xlarge.elasticsearch", "r5.large.elasticsearch", "r5.xlarge.elasticsearch", "r5.2xlarge.elasticsearch", "r5.4xlarge.elasticsearch", "r5.12xlarge.elasticsearch", "c5.large.elasticsearch", "c5.xlarge.elasticsearch", "c5.2xlarge.elasticsearch", "c5.4xlarge.elasticsearch", "c5.9xlarge.elasticsearch", "c5.18xlarge.elasticsearch", "ultrawarm1.medium.elasticsearch", "ultrawarm1.large.elasticsearch", "t2.micro.elasticsearch", "t2.small.elasticsearch", "t2.medium.elasticsearch", "r3.large.elasticsearch", "r3.xlarge.elasticsearch", "r3.2xlarge.elasticsearch", "r3.4xlarge.elasticsearch", "r3.8xlarge.elasticsearch", "i2.xlarge.elasticsearch", "i2.2xlarge.elasticsearch", "d2.xlarge.elasticsearch", "d2.2xlarge.elasticsearch", "d2.4xlarge.elasticsearch", "d2.8xlarge.elasticsearch", "c4.large.elasticsearch", "c4.xlarge.elasticsearch", "c4.2xlarge.elasticsearch", "c4.4xlarge.elasticsearch", "c4.8xlarge.elasticsearch", "r4.large.elasticsearch", "r4.xlarge.elasticsearch", "r4.2xlarge.elasticsearch", "r4.4xlarge.elasticsearch", "r4.8xlarge.elasticsearch", "r4.16xlarge.elasticsearch", "i3.large.elasticsearch", "i3.xlarge.elasticsearch", "i3.2xlarge.elasticsearch", "i3.4xlarge.elasticsearch", "i3.8xlarge.elasticsearch", "i3.16xlarge.elasticsearch"],
    #         instance_count: 1,
    #         dedicated_master_enabled: false,
    #         zone_awareness_enabled: false,
    #         zone_awareness_config: {
    #           availability_zone_count: 1
    #         },
    #         dedicated_master_type: "m3.medium.elasticsearch" # One of: ["m3.medium.elasticsearch", "m3.large.elasticsearch", "m3.xlarge.elasticsearch", "m3.2xlarge.elasticsearch", "m4.large.elasticsearch", "m4.xlarge.elasticsearch", "m4.2xlarge.elasticsearch", "m4.4xlarge.elasticsearch", "m4.10xlarge.elasticsearch", "m5.large.elasticsearch", "m5.xlarge.elasticsearch", "m5.2xlarge.elasticsearch", "m5.4xlarge.elasticsearch", "m5.12xlarge.elasticsearch", "r5.large.elasticsearch", "r5.xlarge.elasticsearch", "r5.2xlarge.elasticsearch", "r5.4xlarge.elasticsearch", "r5.12xlarge.elasticsearch", "c5.large.elasticsearch", "c5.xlarge.elasticsearch", "c5.2xlarge.elasticsearch", "c5.4xlarge.elasticsearch", "c5.9xlarge.elasticsearch", "c5.18xlarge.elasticsearch", "ultrawarm1.medium.elasticsearch", "ultrawarm1.large.elasticsearch", "t2.micro.elasticsearch", "t2.small.elasticsearch", "t2.medium.elasticsearch", "r3.large.elasticsearch", "r3.xlarge.elasticsearch", "r3.2xlarge.elasticsearch", "r3.4xlarge.elasticsearch", "r3.8xlarge.elasticsearch", "i2.xlarge.elasticsearch", "i2.2xlarge.elasticsearch", "d2.xlarge.elasticsearch", "d2.2xlarge.elasticsearch", "d2.4xlarge.elasticsearch", "d2.8xlarge.elasticsearch", "c4.large.elasticsearch", "c4.xlarge.elasticsearch", "c4.2xlarge.elasticsearch", "c4.4xlarge.elasticsearch", "c4.8xlarge.elasticsearch", "r4.large.elasticsearch", "r4.xlarge.elasticsearch", "r4.2xlarge.elasticsearch", "r4.4xlarge.elasticsearch", "r4.8xlarge.elasticsearch", "r4.16xlarge.elasticsearch", "i3.large.elasticsearch", "i3.xlarge.elasticsearch", "i3.2xlarge.elasticsearch", "i3.4xlarge.elasticsearch", "i3.8xlarge.elasticsearch", "i3.16xlarge.elasticsearch"],
    #         dedicated_master_count: 1,
    #         warm_enabled: false,
    #         warm_type: "ultrawarm1.medium.elasticsearch" # One of: ["ultrawarm1.medium.elasticsearch", "ultrawarm1.large.elasticsearch"],
    #         warm_count: 1,
    #         cold_storage_options: {
    #           enabled: false, # required
    #         }
    #       },
    #       ebs_options: {
    #         ebs_enabled: false,
    #         volume_type: "standard" # One of: ["standard", "gp2", "io1", "gp3"],
    #         volume_size: 1,
    #         iops: 1,
    #         throughput: 1
    #       },
    #       access_policies: "PolicyDocument",
    #       snapshot_options: {
    #         automated_snapshot_start_hour: 1
    #       },
    #       vpc_options: {
    #         vpc_id: "String",
    #         subnet_ids: ["String"],
    #         availability_zones: ["String"],
    #         security_group_ids: ["String"]
    #       },
    #       cognito_options: {
    #         enabled: false,
    #         user_pool_id: "UserPoolId",
    #         identity_pool_id: "IdentityPoolId",
    #         role_arn: "RoleArn"
    #       },
    #       encryption_at_rest_options: {
    #         enabled: false,
    #         kms_key_id: "KmsKeyId"
    #       },
    #       node_to_node_encryption_options: {
    #         enabled: false
    #       },
    #       advanced_options: {
    #         "String" => "String"
    #       },
    #       log_publishing_options: {
    #         "LogType" => {
    #           cloud_watch_logs_log_group_arn: "CloudWatchLogsLogGroupArn",
    #           enabled: false
    #         }
    #       },
    #       service_software_options: {
    #         current_version: "String",
    #         new_version: "String",
    #         update_available: false,
    #         cancellable: false,
    #         update_status: "PENDING_UPDATE" # One of: ["PENDING_UPDATE", "IN_PROGRESS", "COMPLETED", "NOT_ELIGIBLE", "ELIGIBLE"],
    #         description: "String",
    #         automated_update_date: Time.now,
    #         optional_deployment: false
    #       },
    #       domain_endpoint_options: {
    #         enforce_https: false,
    #         tls_security_policy: "Policy-Min-TLS-1-0-2019-07" # One of: ["Policy-Min-TLS-1-0-2019-07", "Policy-Min-TLS-1-2-2019-07", "Policy-Min-TLS-1-2-PFS-2023-10"],
    #         custom_endpoint_enabled: false,
    #         custom_endpoint: "DomainNameFqdn",
    #         custom_endpoint_certificate_arn: "ARN"
    #       },
    #       advanced_security_options: {
    #         enabled: false,
    #         internal_user_database_enabled: false,
    #         saml_options: {
    #           enabled: false,
    #           idp: {
    #             metadata_content: "SAMLMetadata", # required
    #             entity_id: "SAMLEntityId", # required
    #           },
    #           subject_key: "String",
    #           roles_key: "String",
    #           session_timeout_minutes: 1
    #         },
    #         anonymous_auth_disable_date: Time.now,
    #         anonymous_auth_enabled: false
    #       },
    #       auto_tune_options: {
    #         state: "ENABLED" # One of: ["ENABLED", "DISABLED", "ENABLE_IN_PROGRESS", "DISABLE_IN_PROGRESS", "DISABLED_AND_ROLLBACK_SCHEDULED", "DISABLED_AND_ROLLBACK_IN_PROGRESS", "DISABLED_AND_ROLLBACK_COMPLETE", "DISABLED_AND_ROLLBACK_ERROR", "ERROR"],
    #         error_message: "String"
    #       },
    #       change_progress_details: {
    #         change_id: "GUID",
    #         message: "Message",
    #         config_change_status: "Pending" # One of: ["Pending", "Initializing", "Validating", "ValidationFailed", "ApplyingChanges", "Completed", "PendingUserInput", "Cancelled"],
    #         start_time: Time.now,
    #         last_updated_time: Time.now,
    #         initiated_by: "CUSTOMER" # One of: ["CUSTOMER", "SERVICE"]
    #       },
    #       domain_processing_status: "Creating" # One of: ["Creating", "Active", "Modifying", "UpgradingEngineVersion", "UpdatingServiceSoftware", "Isolated", "Deleting"],
    #       modifying_properties: [
    #         {
    #           name: "String",
    #           active_value: "String",
    #           pending_value: "String",
    #           value_type: "PLAIN_TEXT" # One of: ["PLAIN_TEXT", "STRINGIFIED_JSON"]
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::DescribeElasticsearchDomainResponse]
    def describe_elasticsearch_domain(params = {}, options = {})
      request = build_request(:describe_elasticsearch_domain, params)
      request.send_request(options)
    end

    # <p>Provides cluster configuration information about the specified Elasticsearch domain, such as the state, creation date, update version, and update date for cluster options.</p>
    # @param [Hash, Types::DescribeElasticsearchDomainConfigRequest] params
    # @option params [String] :domain_name
    #   <p>The Elasticsearch domain that you want to get information about.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "DomainName", # required
    #   }
    #   options = {}
    #   response = client.describe_elasticsearch_domain_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain_config: { # required
    #       elasticsearch_version: {
    #         options: "ElasticsearchVersionString", # required
    #         status: { # required
    #           creation_date: Time.now, # required
    #           update_date: Time.now, # required
    #           update_version: 1,
    #           state: "RequiresIndexDocuments" # One of: ["RequiresIndexDocuments", "Processing", "Active"], # required
    #           pending_deletion: false
    #         }
    #       },
    #       elasticsearch_cluster_config: {
    #         options: { # required
    #           instance_type: "m3.medium.elasticsearch" # One of: ["m3.medium.elasticsearch", "m3.large.elasticsearch", "m3.xlarge.elasticsearch", "m3.2xlarge.elasticsearch", "m4.large.elasticsearch", "m4.xlarge.elasticsearch", "m4.2xlarge.elasticsearch", "m4.4xlarge.elasticsearch", "m4.10xlarge.elasticsearch", "m5.large.elasticsearch", "m5.xlarge.elasticsearch", "m5.2xlarge.elasticsearch", "m5.4xlarge.elasticsearch", "m5.12xlarge.elasticsearch", "r5.large.elasticsearch", "r5.xlarge.elasticsearch", "r5.2xlarge.elasticsearch", "r5.4xlarge.elasticsearch", "r5.12xlarge.elasticsearch", "c5.large.elasticsearch", "c5.xlarge.elasticsearch", "c5.2xlarge.elasticsearch", "c5.4xlarge.elasticsearch", "c5.9xlarge.elasticsearch", "c5.18xlarge.elasticsearch", "ultrawarm1.medium.elasticsearch", "ultrawarm1.large.elasticsearch", "t2.micro.elasticsearch", "t2.small.elasticsearch", "t2.medium.elasticsearch", "r3.large.elasticsearch", "r3.xlarge.elasticsearch", "r3.2xlarge.elasticsearch", "r3.4xlarge.elasticsearch", "r3.8xlarge.elasticsearch", "i2.xlarge.elasticsearch", "i2.2xlarge.elasticsearch", "d2.xlarge.elasticsearch", "d2.2xlarge.elasticsearch", "d2.4xlarge.elasticsearch", "d2.8xlarge.elasticsearch", "c4.large.elasticsearch", "c4.xlarge.elasticsearch", "c4.2xlarge.elasticsearch", "c4.4xlarge.elasticsearch", "c4.8xlarge.elasticsearch", "r4.large.elasticsearch", "r4.xlarge.elasticsearch", "r4.2xlarge.elasticsearch", "r4.4xlarge.elasticsearch", "r4.8xlarge.elasticsearch", "r4.16xlarge.elasticsearch", "i3.large.elasticsearch", "i3.xlarge.elasticsearch", "i3.2xlarge.elasticsearch", "i3.4xlarge.elasticsearch", "i3.8xlarge.elasticsearch", "i3.16xlarge.elasticsearch"],
    #           instance_count: 1,
    #           dedicated_master_enabled: false,
    #           zone_awareness_enabled: false,
    #           zone_awareness_config: {
    #             availability_zone_count: 1
    #           },
    #           dedicated_master_type: "m3.medium.elasticsearch" # One of: ["m3.medium.elasticsearch", "m3.large.elasticsearch", "m3.xlarge.elasticsearch", "m3.2xlarge.elasticsearch", "m4.large.elasticsearch", "m4.xlarge.elasticsearch", "m4.2xlarge.elasticsearch", "m4.4xlarge.elasticsearch", "m4.10xlarge.elasticsearch", "m5.large.elasticsearch", "m5.xlarge.elasticsearch", "m5.2xlarge.elasticsearch", "m5.4xlarge.elasticsearch", "m5.12xlarge.elasticsearch", "r5.large.elasticsearch", "r5.xlarge.elasticsearch", "r5.2xlarge.elasticsearch", "r5.4xlarge.elasticsearch", "r5.12xlarge.elasticsearch", "c5.large.elasticsearch", "c5.xlarge.elasticsearch", "c5.2xlarge.elasticsearch", "c5.4xlarge.elasticsearch", "c5.9xlarge.elasticsearch", "c5.18xlarge.elasticsearch", "ultrawarm1.medium.elasticsearch", "ultrawarm1.large.elasticsearch", "t2.micro.elasticsearch", "t2.small.elasticsearch", "t2.medium.elasticsearch", "r3.large.elasticsearch", "r3.xlarge.elasticsearch", "r3.2xlarge.elasticsearch", "r3.4xlarge.elasticsearch", "r3.8xlarge.elasticsearch", "i2.xlarge.elasticsearch", "i2.2xlarge.elasticsearch", "d2.xlarge.elasticsearch", "d2.2xlarge.elasticsearch", "d2.4xlarge.elasticsearch", "d2.8xlarge.elasticsearch", "c4.large.elasticsearch", "c4.xlarge.elasticsearch", "c4.2xlarge.elasticsearch", "c4.4xlarge.elasticsearch", "c4.8xlarge.elasticsearch", "r4.large.elasticsearch", "r4.xlarge.elasticsearch", "r4.2xlarge.elasticsearch", "r4.4xlarge.elasticsearch", "r4.8xlarge.elasticsearch", "r4.16xlarge.elasticsearch", "i3.large.elasticsearch", "i3.xlarge.elasticsearch", "i3.2xlarge.elasticsearch", "i3.4xlarge.elasticsearch", "i3.8xlarge.elasticsearch", "i3.16xlarge.elasticsearch"],
    #           dedicated_master_count: 1,
    #           warm_enabled: false,
    #           warm_type: "ultrawarm1.medium.elasticsearch" # One of: ["ultrawarm1.medium.elasticsearch", "ultrawarm1.large.elasticsearch"],
    #           warm_count: 1,
    #           cold_storage_options: {
    #             enabled: false, # required
    #           }
    #         },
    #         status: { # required
    #           creation_date: Time.now, # required
    #           update_date: Time.now, # required
    #           update_version: 1,
    #           state: "RequiresIndexDocuments" # One of: ["RequiresIndexDocuments", "Processing", "Active"], # required
    #           pending_deletion: false
    #         }
    #       },
    #       ebs_options: {
    #         options: { # required
    #           ebs_enabled: false,
    #           volume_type: "standard" # One of: ["standard", "gp2", "io1", "gp3"],
    #           volume_size: 1,
    #           iops: 1,
    #           throughput: 1
    #         },
    #         status: { # required
    #           creation_date: Time.now, # required
    #           update_date: Time.now, # required
    #           update_version: 1,
    #           state: "RequiresIndexDocuments" # One of: ["RequiresIndexDocuments", "Processing", "Active"], # required
    #           pending_deletion: false
    #         }
    #       },
    #       access_policies: {
    #         options: "PolicyDocument", # required
    #         status: { # required
    #           creation_date: Time.now, # required
    #           update_date: Time.now, # required
    #           update_version: 1,
    #           state: "RequiresIndexDocuments" # One of: ["RequiresIndexDocuments", "Processing", "Active"], # required
    #           pending_deletion: false
    #         }
    #       },
    #       snapshot_options: {
    #         options: { # required
    #           automated_snapshot_start_hour: 1
    #         },
    #         status: { # required
    #           creation_date: Time.now, # required
    #           update_date: Time.now, # required
    #           update_version: 1,
    #           state: "RequiresIndexDocuments" # One of: ["RequiresIndexDocuments", "Processing", "Active"], # required
    #           pending_deletion: false
    #         }
    #       },
    #       vpc_options: {
    #         options: { # required
    #           vpc_id: "String",
    #           subnet_ids: ["String"],
    #           availability_zones: ["String"],
    #           security_group_ids: ["String"]
    #         },
    #         status: { # required
    #           creation_date: Time.now, # required
    #           update_date: Time.now, # required
    #           update_version: 1,
    #           state: "RequiresIndexDocuments" # One of: ["RequiresIndexDocuments", "Processing", "Active"], # required
    #           pending_deletion: false
    #         }
    #       },
    #       cognito_options: {
    #         options: { # required
    #           enabled: false,
    #           user_pool_id: "UserPoolId",
    #           identity_pool_id: "IdentityPoolId",
    #           role_arn: "RoleArn"
    #         },
    #         status: { # required
    #           creation_date: Time.now, # required
    #           update_date: Time.now, # required
    #           update_version: 1,
    #           state: "RequiresIndexDocuments" # One of: ["RequiresIndexDocuments", "Processing", "Active"], # required
    #           pending_deletion: false
    #         }
    #       },
    #       encryption_at_rest_options: {
    #         options: { # required
    #           enabled: false,
    #           kms_key_id: "KmsKeyId"
    #         },
    #         status: { # required
    #           creation_date: Time.now, # required
    #           update_date: Time.now, # required
    #           update_version: 1,
    #           state: "RequiresIndexDocuments" # One of: ["RequiresIndexDocuments", "Processing", "Active"], # required
    #           pending_deletion: false
    #         }
    #       },
    #       node_to_node_encryption_options: {
    #         options: { # required
    #           enabled: false
    #         },
    #         status: { # required
    #           creation_date: Time.now, # required
    #           update_date: Time.now, # required
    #           update_version: 1,
    #           state: "RequiresIndexDocuments" # One of: ["RequiresIndexDocuments", "Processing", "Active"], # required
    #           pending_deletion: false
    #         }
    #       },
    #       advanced_options: {
    #         options: { # required
    #           "String" => "String"
    #         },
    #         status: { # required
    #           creation_date: Time.now, # required
    #           update_date: Time.now, # required
    #           update_version: 1,
    #           state: "RequiresIndexDocuments" # One of: ["RequiresIndexDocuments", "Processing", "Active"], # required
    #           pending_deletion: false
    #         }
    #       },
    #       log_publishing_options: {
    #         options: {
    #           "LogType" => {
    #             cloud_watch_logs_log_group_arn: "CloudWatchLogsLogGroupArn",
    #             enabled: false
    #           }
    #         },
    #         status: {
    #           creation_date: Time.now, # required
    #           update_date: Time.now, # required
    #           update_version: 1,
    #           state: "RequiresIndexDocuments" # One of: ["RequiresIndexDocuments", "Processing", "Active"], # required
    #           pending_deletion: false
    #         }
    #       },
    #       domain_endpoint_options: {
    #         options: { # required
    #           enforce_https: false,
    #           tls_security_policy: "Policy-Min-TLS-1-0-2019-07" # One of: ["Policy-Min-TLS-1-0-2019-07", "Policy-Min-TLS-1-2-2019-07", "Policy-Min-TLS-1-2-PFS-2023-10"],
    #           custom_endpoint_enabled: false,
    #           custom_endpoint: "DomainNameFqdn",
    #           custom_endpoint_certificate_arn: "ARN"
    #         },
    #         status: { # required
    #           creation_date: Time.now, # required
    #           update_date: Time.now, # required
    #           update_version: 1,
    #           state: "RequiresIndexDocuments" # One of: ["RequiresIndexDocuments", "Processing", "Active"], # required
    #           pending_deletion: false
    #         }
    #       },
    #       advanced_security_options: {
    #         options: { # required
    #           enabled: false,
    #           internal_user_database_enabled: false,
    #           saml_options: {
    #             enabled: false,
    #             idp: {
    #               metadata_content: "SAMLMetadata", # required
    #               entity_id: "SAMLEntityId", # required
    #             },
    #             subject_key: "String",
    #             roles_key: "String",
    #             session_timeout_minutes: 1
    #           },
    #           anonymous_auth_disable_date: Time.now,
    #           anonymous_auth_enabled: false
    #         },
    #         status: { # required
    #           creation_date: Time.now, # required
    #           update_date: Time.now, # required
    #           update_version: 1,
    #           state: "RequiresIndexDocuments" # One of: ["RequiresIndexDocuments", "Processing", "Active"], # required
    #           pending_deletion: false
    #         }
    #       },
    #       auto_tune_options: {
    #         options: {
    #           desired_state: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #           rollback_on_disable: "NO_ROLLBACK" # One of: ["NO_ROLLBACK", "DEFAULT_ROLLBACK"],
    #           maintenance_schedules: [
    #             {
    #               start_at: Time.now,
    #               duration: {
    #                 value: 1,
    #                 unit: "HOURS" # One of: ["HOURS"]
    #               },
    #               cron_expression_for_recurrence: "String"
    #             }
    #           ]
    #         },
    #         status: {
    #           creation_date: Time.now, # required
    #           update_date: Time.now, # required
    #           update_version: 1,
    #           state: "ENABLED" # One of: ["ENABLED", "DISABLED", "ENABLE_IN_PROGRESS", "DISABLE_IN_PROGRESS", "DISABLED_AND_ROLLBACK_SCHEDULED", "DISABLED_AND_ROLLBACK_IN_PROGRESS", "DISABLED_AND_ROLLBACK_COMPLETE", "DISABLED_AND_ROLLBACK_ERROR", "ERROR"], # required
    #           error_message: "String",
    #           pending_deletion: false
    #         }
    #       },
    #       change_progress_details: {
    #         change_id: "GUID",
    #         message: "Message",
    #         config_change_status: "Pending" # One of: ["Pending", "Initializing", "Validating", "ValidationFailed", "ApplyingChanges", "Completed", "PendingUserInput", "Cancelled"],
    #         start_time: Time.now,
    #         last_updated_time: Time.now,
    #         initiated_by: "CUSTOMER" # One of: ["CUSTOMER", "SERVICE"]
    #       },
    #       modifying_properties: [
    #         {
    #           name: "String",
    #           active_value: "String",
    #           pending_value: "String",
    #           value_type: "PLAIN_TEXT" # One of: ["PLAIN_TEXT", "STRINGIFIED_JSON"]
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::DescribeElasticsearchDomainConfigResponse]
    def describe_elasticsearch_domain_config(params = {}, options = {})
      request = build_request(:describe_elasticsearch_domain_config, params)
      request.send_request(options)
    end

    # <p>Returns domain configuration information about the specified Elasticsearch domains, including the domain ID, domain endpoint, and domain ARN.</p>
    # @param [Hash, Types::DescribeElasticsearchDomainsRequest] params
    # @option params [Array<String>] :domain_names
    #   <p>The Elasticsearch domains for which you want information.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_names: ["DomainName"], # required
    #   }
    #   options = {}
    #   response = client.describe_elasticsearch_domains(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain_status_list: [ # required
    #       {
    #         domain_id: "DomainId", # required
    #         domain_name: "DomainName", # required
    #         arn: "ARN", # required
    #         created: false,
    #         deleted: false,
    #         endpoint: "ServiceUrl",
    #         endpoints: {
    #           "String" => "ServiceUrl"
    #         },
    #         processing: false,
    #         upgrade_processing: false,
    #         elasticsearch_version: "ElasticsearchVersionString",
    #         elasticsearch_cluster_config: { # required
    #           instance_type: "m3.medium.elasticsearch" # One of: ["m3.medium.elasticsearch", "m3.large.elasticsearch", "m3.xlarge.elasticsearch", "m3.2xlarge.elasticsearch", "m4.large.elasticsearch", "m4.xlarge.elasticsearch", "m4.2xlarge.elasticsearch", "m4.4xlarge.elasticsearch", "m4.10xlarge.elasticsearch", "m5.large.elasticsearch", "m5.xlarge.elasticsearch", "m5.2xlarge.elasticsearch", "m5.4xlarge.elasticsearch", "m5.12xlarge.elasticsearch", "r5.large.elasticsearch", "r5.xlarge.elasticsearch", "r5.2xlarge.elasticsearch", "r5.4xlarge.elasticsearch", "r5.12xlarge.elasticsearch", "c5.large.elasticsearch", "c5.xlarge.elasticsearch", "c5.2xlarge.elasticsearch", "c5.4xlarge.elasticsearch", "c5.9xlarge.elasticsearch", "c5.18xlarge.elasticsearch", "ultrawarm1.medium.elasticsearch", "ultrawarm1.large.elasticsearch", "t2.micro.elasticsearch", "t2.small.elasticsearch", "t2.medium.elasticsearch", "r3.large.elasticsearch", "r3.xlarge.elasticsearch", "r3.2xlarge.elasticsearch", "r3.4xlarge.elasticsearch", "r3.8xlarge.elasticsearch", "i2.xlarge.elasticsearch", "i2.2xlarge.elasticsearch", "d2.xlarge.elasticsearch", "d2.2xlarge.elasticsearch", "d2.4xlarge.elasticsearch", "d2.8xlarge.elasticsearch", "c4.large.elasticsearch", "c4.xlarge.elasticsearch", "c4.2xlarge.elasticsearch", "c4.4xlarge.elasticsearch", "c4.8xlarge.elasticsearch", "r4.large.elasticsearch", "r4.xlarge.elasticsearch", "r4.2xlarge.elasticsearch", "r4.4xlarge.elasticsearch", "r4.8xlarge.elasticsearch", "r4.16xlarge.elasticsearch", "i3.large.elasticsearch", "i3.xlarge.elasticsearch", "i3.2xlarge.elasticsearch", "i3.4xlarge.elasticsearch", "i3.8xlarge.elasticsearch", "i3.16xlarge.elasticsearch"],
    #           instance_count: 1,
    #           dedicated_master_enabled: false,
    #           zone_awareness_enabled: false,
    #           zone_awareness_config: {
    #             availability_zone_count: 1
    #           },
    #           dedicated_master_type: "m3.medium.elasticsearch" # One of: ["m3.medium.elasticsearch", "m3.large.elasticsearch", "m3.xlarge.elasticsearch", "m3.2xlarge.elasticsearch", "m4.large.elasticsearch", "m4.xlarge.elasticsearch", "m4.2xlarge.elasticsearch", "m4.4xlarge.elasticsearch", "m4.10xlarge.elasticsearch", "m5.large.elasticsearch", "m5.xlarge.elasticsearch", "m5.2xlarge.elasticsearch", "m5.4xlarge.elasticsearch", "m5.12xlarge.elasticsearch", "r5.large.elasticsearch", "r5.xlarge.elasticsearch", "r5.2xlarge.elasticsearch", "r5.4xlarge.elasticsearch", "r5.12xlarge.elasticsearch", "c5.large.elasticsearch", "c5.xlarge.elasticsearch", "c5.2xlarge.elasticsearch", "c5.4xlarge.elasticsearch", "c5.9xlarge.elasticsearch", "c5.18xlarge.elasticsearch", "ultrawarm1.medium.elasticsearch", "ultrawarm1.large.elasticsearch", "t2.micro.elasticsearch", "t2.small.elasticsearch", "t2.medium.elasticsearch", "r3.large.elasticsearch", "r3.xlarge.elasticsearch", "r3.2xlarge.elasticsearch", "r3.4xlarge.elasticsearch", "r3.8xlarge.elasticsearch", "i2.xlarge.elasticsearch", "i2.2xlarge.elasticsearch", "d2.xlarge.elasticsearch", "d2.2xlarge.elasticsearch", "d2.4xlarge.elasticsearch", "d2.8xlarge.elasticsearch", "c4.large.elasticsearch", "c4.xlarge.elasticsearch", "c4.2xlarge.elasticsearch", "c4.4xlarge.elasticsearch", "c4.8xlarge.elasticsearch", "r4.large.elasticsearch", "r4.xlarge.elasticsearch", "r4.2xlarge.elasticsearch", "r4.4xlarge.elasticsearch", "r4.8xlarge.elasticsearch", "r4.16xlarge.elasticsearch", "i3.large.elasticsearch", "i3.xlarge.elasticsearch", "i3.2xlarge.elasticsearch", "i3.4xlarge.elasticsearch", "i3.8xlarge.elasticsearch", "i3.16xlarge.elasticsearch"],
    #           dedicated_master_count: 1,
    #           warm_enabled: false,
    #           warm_type: "ultrawarm1.medium.elasticsearch" # One of: ["ultrawarm1.medium.elasticsearch", "ultrawarm1.large.elasticsearch"],
    #           warm_count: 1,
    #           cold_storage_options: {
    #             enabled: false, # required
    #           }
    #         },
    #         ebs_options: {
    #           ebs_enabled: false,
    #           volume_type: "standard" # One of: ["standard", "gp2", "io1", "gp3"],
    #           volume_size: 1,
    #           iops: 1,
    #           throughput: 1
    #         },
    #         access_policies: "PolicyDocument",
    #         snapshot_options: {
    #           automated_snapshot_start_hour: 1
    #         },
    #         vpc_options: {
    #           vpc_id: "String",
    #           subnet_ids: ["String"],
    #           availability_zones: ["String"],
    #           security_group_ids: ["String"]
    #         },
    #         cognito_options: {
    #           enabled: false,
    #           user_pool_id: "UserPoolId",
    #           identity_pool_id: "IdentityPoolId",
    #           role_arn: "RoleArn"
    #         },
    #         encryption_at_rest_options: {
    #           enabled: false,
    #           kms_key_id: "KmsKeyId"
    #         },
    #         node_to_node_encryption_options: {
    #           enabled: false
    #         },
    #         advanced_options: {
    #           "String" => "String"
    #         },
    #         log_publishing_options: {
    #           "LogType" => {
    #             cloud_watch_logs_log_group_arn: "CloudWatchLogsLogGroupArn",
    #             enabled: false
    #           }
    #         },
    #         service_software_options: {
    #           current_version: "String",
    #           new_version: "String",
    #           update_available: false,
    #           cancellable: false,
    #           update_status: "PENDING_UPDATE" # One of: ["PENDING_UPDATE", "IN_PROGRESS", "COMPLETED", "NOT_ELIGIBLE", "ELIGIBLE"],
    #           description: "String",
    #           automated_update_date: Time.now,
    #           optional_deployment: false
    #         },
    #         domain_endpoint_options: {
    #           enforce_https: false,
    #           tls_security_policy: "Policy-Min-TLS-1-0-2019-07" # One of: ["Policy-Min-TLS-1-0-2019-07", "Policy-Min-TLS-1-2-2019-07", "Policy-Min-TLS-1-2-PFS-2023-10"],
    #           custom_endpoint_enabled: false,
    #           custom_endpoint: "DomainNameFqdn",
    #           custom_endpoint_certificate_arn: "ARN"
    #         },
    #         advanced_security_options: {
    #           enabled: false,
    #           internal_user_database_enabled: false,
    #           saml_options: {
    #             enabled: false,
    #             idp: {
    #               metadata_content: "SAMLMetadata", # required
    #               entity_id: "SAMLEntityId", # required
    #             },
    #             subject_key: "String",
    #             roles_key: "String",
    #             session_timeout_minutes: 1
    #           },
    #           anonymous_auth_disable_date: Time.now,
    #           anonymous_auth_enabled: false
    #         },
    #         auto_tune_options: {
    #           state: "ENABLED" # One of: ["ENABLED", "DISABLED", "ENABLE_IN_PROGRESS", "DISABLE_IN_PROGRESS", "DISABLED_AND_ROLLBACK_SCHEDULED", "DISABLED_AND_ROLLBACK_IN_PROGRESS", "DISABLED_AND_ROLLBACK_COMPLETE", "DISABLED_AND_ROLLBACK_ERROR", "ERROR"],
    #           error_message: "String"
    #         },
    #         change_progress_details: {
    #           change_id: "GUID",
    #           message: "Message",
    #           config_change_status: "Pending" # One of: ["Pending", "Initializing", "Validating", "ValidationFailed", "ApplyingChanges", "Completed", "PendingUserInput", "Cancelled"],
    #           start_time: Time.now,
    #           last_updated_time: Time.now,
    #           initiated_by: "CUSTOMER" # One of: ["CUSTOMER", "SERVICE"]
    #         },
    #         domain_processing_status: "Creating" # One of: ["Creating", "Active", "Modifying", "UpgradingEngineVersion", "UpdatingServiceSoftware", "Isolated", "Deleting"],
    #         modifying_properties: [
    #           {
    #             name: "String",
    #             active_value: "String",
    #             pending_value: "String",
    #             value_type: "PLAIN_TEXT" # One of: ["PLAIN_TEXT", "STRINGIFIED_JSON"]
    #           }
    #         ]
    #       }
    #     ]
    #   }
    # @return [Types::DescribeElasticsearchDomainsResponse]
    def describe_elasticsearch_domains(params = {}, options = {})
      request = build_request(:describe_elasticsearch_domains, params)
      request.send_request(options)
    end

    # <p>
    #     Describe Elasticsearch Limits for a given InstanceType and ElasticsearchVersion.
    #     When modifying existing Domain, specify the
    #     <code>
    #       <a>DomainName</a>
    #     </code>
    #     to know what Limits are supported for modifying.
    #   </p>
    # @param [Hash, Types::DescribeElasticsearchInstanceTypeLimitsRequest] params
    # @option params [String] :domain_name
    #   <p>
    #         DomainName represents the name of the Domain that we are trying to
    #         modify. This should be present only if we are
    #         querying for Elasticsearch
    #         <code>
    #           <a>Limits</a>
    #         </code>
    #         for existing domain.
    #       </p>
    # @option params [String] :instance_type
    #   <p>
    #         The instance type for an Elasticsearch cluster for which Elasticsearch
    #         <code>
    #           <a>Limits</a>
    #         </code>
    #         are needed.
    #       </p>
    # @option params [String] :elasticsearch_version
    #   <p>
    #         Version of Elasticsearch for which
    #         <code>
    #           <a>Limits</a>
    #         </code>
    #         are needed.
    #       </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "DomainName",
    #     instance_type: "m3.medium.elasticsearch" # One of: ["m3.medium.elasticsearch", "m3.large.elasticsearch", "m3.xlarge.elasticsearch", "m3.2xlarge.elasticsearch", "m4.large.elasticsearch", "m4.xlarge.elasticsearch", "m4.2xlarge.elasticsearch", "m4.4xlarge.elasticsearch", "m4.10xlarge.elasticsearch", "m5.large.elasticsearch", "m5.xlarge.elasticsearch", "m5.2xlarge.elasticsearch", "m5.4xlarge.elasticsearch", "m5.12xlarge.elasticsearch", "r5.large.elasticsearch", "r5.xlarge.elasticsearch", "r5.2xlarge.elasticsearch", "r5.4xlarge.elasticsearch", "r5.12xlarge.elasticsearch", "c5.large.elasticsearch", "c5.xlarge.elasticsearch", "c5.2xlarge.elasticsearch", "c5.4xlarge.elasticsearch", "c5.9xlarge.elasticsearch", "c5.18xlarge.elasticsearch", "ultrawarm1.medium.elasticsearch", "ultrawarm1.large.elasticsearch", "t2.micro.elasticsearch", "t2.small.elasticsearch", "t2.medium.elasticsearch", "r3.large.elasticsearch", "r3.xlarge.elasticsearch", "r3.2xlarge.elasticsearch", "r3.4xlarge.elasticsearch", "r3.8xlarge.elasticsearch", "i2.xlarge.elasticsearch", "i2.2xlarge.elasticsearch", "d2.xlarge.elasticsearch", "d2.2xlarge.elasticsearch", "d2.4xlarge.elasticsearch", "d2.8xlarge.elasticsearch", "c4.large.elasticsearch", "c4.xlarge.elasticsearch", "c4.2xlarge.elasticsearch", "c4.4xlarge.elasticsearch", "c4.8xlarge.elasticsearch", "r4.large.elasticsearch", "r4.xlarge.elasticsearch", "r4.2xlarge.elasticsearch", "r4.4xlarge.elasticsearch", "r4.8xlarge.elasticsearch", "r4.16xlarge.elasticsearch", "i3.large.elasticsearch", "i3.xlarge.elasticsearch", "i3.2xlarge.elasticsearch", "i3.4xlarge.elasticsearch", "i3.8xlarge.elasticsearch", "i3.16xlarge.elasticsearch"], # required
    #     elasticsearch_version: "ElasticsearchVersionString", # required
    #   }
    #   options = {}
    #   response = client.describe_elasticsearch_instance_type_limits(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     limits_by_role: {
    #       "InstanceRole" => {
    #         storage_types: [
    #           {
    #             storage_type_name: "StorageTypeName",
    #             storage_sub_type_name: "StorageSubTypeName",
    #             storage_type_limits: [
    #               {
    #                 limit_name: "LimitName",
    #                 limit_values: ["LimitValue"]
    #               }
    #             ]
    #           }
    #         ],
    #         instance_limits: {
    #           instance_count_limits: {
    #             minimum_instance_count: 1,
    #             maximum_instance_count: 1
    #           }
    #         },
    #         additional_limits: [
    #           {
    #             limit_name: "LimitName",
    #             limit_values: ["LimitValue"]
    #           }
    #         ]
    #       }
    #     }
    #   }
    # @return [Types::DescribeElasticsearchInstanceTypeLimitsResponse]
    def describe_elasticsearch_instance_type_limits(params = {}, options = {})
      request = build_request(:describe_elasticsearch_instance_type_limits, params)
      request.send_request(options)
    end

    # <p>Lists all the inbound cross-cluster search connections for a destination domain.</p>
    # @param [Hash, Types::DescribeInboundCrossClusterSearchConnectionsRequest] params
    # @option params [Array<Types::Filter>] :filters
    #   <p>
    #         A list of filters used to match properties for inbound cross-cluster search connection.
    #         Available <code><a>Filter</a></code> names for this operation are:
    #         <ul>
    #           <li>cross-cluster-search-connection-id</li>
    #           <li>source-domain-info.domain-name</li>
    #           <li>source-domain-info.owner-id</li>
    #           <li>source-domain-info.region</li>
    #           <li>destination-domain-info.domain-name</li>
    #         </ul>
    #       </p>
    # @option params [Integer] :max_results
    #   <p>Set this value to limit the number of results returned. If not specified, defaults to 100.</p>
    # @option params [String] :next_token
    #   <p> NextToken is sent in case the earlier API call results contain the NextToken. It is used for pagination.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filters: [
    #       {
    #         name: "NonEmptyString",
    #         values: ["NonEmptyString"]
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.describe_inbound_cross_cluster_search_connections(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cross_cluster_search_connections: [
    #       {
    #         source_domain_info: {
    #           owner_id: "OwnerId",
    #           domain_name: "DomainName", # required
    #           region: "Region"
    #         },
    #         destination_domain_info: {
    #           owner_id: "OwnerId",
    #           domain_name: "DomainName", # required
    #           region: "Region"
    #         },
    #         cross_cluster_search_connection_id: "CrossClusterSearchConnectionId",
    #         connection_status: {
    #           status_code: "PENDING_ACCEPTANCE" # One of: ["PENDING_ACCEPTANCE", "APPROVED", "REJECTING", "REJECTED", "DELETING", "DELETED"],
    #           message: "CrossClusterSearchConnectionStatusMessage"
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeInboundCrossClusterSearchConnectionsResponse]
    def describe_inbound_cross_cluster_search_connections(params = {}, options = {})
      request = build_request(:describe_inbound_cross_cluster_search_connections, params)
      request.send_request(options)
    end

    # <p>Lists all the outbound cross-cluster search connections for a source domain.</p>
    # @param [Hash, Types::DescribeOutboundCrossClusterSearchConnectionsRequest] params
    # @option params [Array<Types::Filter>] :filters
    #   <p>
    #         A list of filters used to match properties for outbound cross-cluster search connection.
    #         Available <code><a>Filter</a></code> names for this operation are:
    #         <ul>
    #           <li>cross-cluster-search-connection-id</li>
    #           <li>destination-domain-info.domain-name</li>
    #           <li>destination-domain-info.owner-id</li>
    #           <li>destination-domain-info.region</li>
    #           <li>source-domain-info.domain-name</li>
    #         </ul>
    #       </p>
    # @option params [Integer] :max_results
    #   <p>Set this value to limit the number of results returned. If not specified, defaults to 100.</p>
    # @option params [String] :next_token
    #   <p> NextToken is sent in case the earlier API call results contain the NextToken. It is used for pagination.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filters: [
    #       {
    #         name: "NonEmptyString",
    #         values: ["NonEmptyString"]
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.describe_outbound_cross_cluster_search_connections(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cross_cluster_search_connections: [
    #       {
    #         source_domain_info: {
    #           owner_id: "OwnerId",
    #           domain_name: "DomainName", # required
    #           region: "Region"
    #         },
    #         destination_domain_info: {
    #           owner_id: "OwnerId",
    #           domain_name: "DomainName", # required
    #           region: "Region"
    #         },
    #         cross_cluster_search_connection_id: "CrossClusterSearchConnectionId",
    #         connection_alias: "ConnectionAlias",
    #         connection_status: {
    #           status_code: "PENDING_ACCEPTANCE" # One of: ["PENDING_ACCEPTANCE", "VALIDATING", "VALIDATION_FAILED", "PROVISIONING", "ACTIVE", "REJECTED", "DELETING", "DELETED"],
    #           message: "CrossClusterSearchConnectionStatusMessage"
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeOutboundCrossClusterSearchConnectionsResponse]
    def describe_outbound_cross_cluster_search_connections(params = {}, options = {})
      request = build_request(:describe_outbound_cross_cluster_search_connections, params)
      request.send_request(options)
    end

    # <p>Describes all packages available to Amazon ES. Includes options for filtering, limiting the number of results, and pagination.</p>
    # @param [Hash, Types::DescribePackagesRequest] params
    # @option params [Array<Types::DescribePackagesFilter>] :filters
    #   <p>Only returns packages that match the <code>DescribePackagesFilterList</code> values.</p>
    # @option params [Integer] :max_results
    #   <p>Limits results to a maximum number of packages.</p>
    # @option params [String] :next_token
    #   <p>Used for pagination. Only necessary if a previous API call includes a non-null NextToken value. If provided, returns results for the next page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filters: [
    #       {
    #         name: "PackageID" # One of: ["PackageID", "PackageName", "PackageStatus"],
    #         value: ["DescribePackagesFilterValue"]
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.describe_packages(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     package_details_list: [
    #       {
    #         package_id: "PackageID",
    #         package_name: "PackageName",
    #         package_type: "TXT-DICTIONARY" # One of: ["TXT-DICTIONARY"],
    #         package_description: "PackageDescription",
    #         package_status: "COPYING" # One of: ["COPYING", "COPY_FAILED", "VALIDATING", "VALIDATION_FAILED", "AVAILABLE", "DELETING", "DELETED", "DELETE_FAILED"],
    #         created_at: Time.now,
    #         last_updated_at: Time.now,
    #         available_package_version: "PackageVersion",
    #         error_details: {
    #           error_type: "ErrorType",
    #           error_message: "ErrorMessage"
    #         }
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::DescribePackagesResponse]
    def describe_packages(params = {}, options = {})
      request = build_request(:describe_packages, params)
      request.send_request(options)
    end

    # <p>Lists available reserved Elasticsearch instance offerings.</p>
    # @param [Hash, Types::DescribeReservedElasticsearchInstanceOfferingsRequest] params
    # @option params [String] :reserved_elasticsearch_instance_offering_id
    #   <p>The offering identifier filter value. Use this parameter to show only the available offering that matches the specified reservation identifier.</p>
    # @option params [Integer] :max_results
    #   <p>Set this value to limit the number of results returned. If not specified, defaults to 100.</p>
    # @option params [String] :next_token
    #   <p>NextToken should be sent in case if earlier API call produced result
    #   		containing NextToken. It is used for pagination.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     reserved_elasticsearch_instance_offering_id: "GUID",
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.describe_reserved_elasticsearch_instance_offerings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     reserved_elasticsearch_instance_offerings: [
    #       {
    #         reserved_elasticsearch_instance_offering_id: "GUID",
    #         elasticsearch_instance_type: "m3.medium.elasticsearch" # One of: ["m3.medium.elasticsearch", "m3.large.elasticsearch", "m3.xlarge.elasticsearch", "m3.2xlarge.elasticsearch", "m4.large.elasticsearch", "m4.xlarge.elasticsearch", "m4.2xlarge.elasticsearch", "m4.4xlarge.elasticsearch", "m4.10xlarge.elasticsearch", "m5.large.elasticsearch", "m5.xlarge.elasticsearch", "m5.2xlarge.elasticsearch", "m5.4xlarge.elasticsearch", "m5.12xlarge.elasticsearch", "r5.large.elasticsearch", "r5.xlarge.elasticsearch", "r5.2xlarge.elasticsearch", "r5.4xlarge.elasticsearch", "r5.12xlarge.elasticsearch", "c5.large.elasticsearch", "c5.xlarge.elasticsearch", "c5.2xlarge.elasticsearch", "c5.4xlarge.elasticsearch", "c5.9xlarge.elasticsearch", "c5.18xlarge.elasticsearch", "ultrawarm1.medium.elasticsearch", "ultrawarm1.large.elasticsearch", "t2.micro.elasticsearch", "t2.small.elasticsearch", "t2.medium.elasticsearch", "r3.large.elasticsearch", "r3.xlarge.elasticsearch", "r3.2xlarge.elasticsearch", "r3.4xlarge.elasticsearch", "r3.8xlarge.elasticsearch", "i2.xlarge.elasticsearch", "i2.2xlarge.elasticsearch", "d2.xlarge.elasticsearch", "d2.2xlarge.elasticsearch", "d2.4xlarge.elasticsearch", "d2.8xlarge.elasticsearch", "c4.large.elasticsearch", "c4.xlarge.elasticsearch", "c4.2xlarge.elasticsearch", "c4.4xlarge.elasticsearch", "c4.8xlarge.elasticsearch", "r4.large.elasticsearch", "r4.xlarge.elasticsearch", "r4.2xlarge.elasticsearch", "r4.4xlarge.elasticsearch", "r4.8xlarge.elasticsearch", "r4.16xlarge.elasticsearch", "i3.large.elasticsearch", "i3.xlarge.elasticsearch", "i3.2xlarge.elasticsearch", "i3.4xlarge.elasticsearch", "i3.8xlarge.elasticsearch", "i3.16xlarge.elasticsearch"],
    #         duration: 1,
    #         fixed_price: 1.0,
    #         usage_price: 1.0,
    #         currency_code: "String",
    #         payment_option: "ALL_UPFRONT" # One of: ["ALL_UPFRONT", "PARTIAL_UPFRONT", "NO_UPFRONT"],
    #         recurring_charges: [
    #           {
    #             recurring_charge_amount: 1.0,
    #             recurring_charge_frequency: "String"
    #           }
    #         ]
    #       }
    #     ]
    #   }
    # @return [Types::DescribeReservedElasticsearchInstanceOfferingsResponse]
    def describe_reserved_elasticsearch_instance_offerings(params = {}, options = {})
      request = build_request(:describe_reserved_elasticsearch_instance_offerings, params)
      request.send_request(options)
    end

    # <p>Returns information about reserved Elasticsearch instances for this account.</p>
    # @param [Hash, Types::DescribeReservedElasticsearchInstancesRequest] params
    # @option params [String] :reserved_elasticsearch_instance_id
    #   <p>The reserved instance identifier filter value. Use this parameter to show only the reservation that matches the specified reserved Elasticsearch instance ID.</p>
    # @option params [Integer] :max_results
    #   <p>Set this value to limit the number of results returned. If not specified, defaults to 100.</p>
    # @option params [String] :next_token
    #   <p>NextToken should be sent in case if earlier API call produced result
    #   		containing NextToken. It is used for pagination.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     reserved_elasticsearch_instance_id: "GUID",
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.describe_reserved_elasticsearch_instances(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "String",
    #     reserved_elasticsearch_instances: [
    #       {
    #         reservation_name: "ReservationToken",
    #         reserved_elasticsearch_instance_id: "GUID",
    #         reserved_elasticsearch_instance_offering_id: "String",
    #         elasticsearch_instance_type: "m3.medium.elasticsearch" # One of: ["m3.medium.elasticsearch", "m3.large.elasticsearch", "m3.xlarge.elasticsearch", "m3.2xlarge.elasticsearch", "m4.large.elasticsearch", "m4.xlarge.elasticsearch", "m4.2xlarge.elasticsearch", "m4.4xlarge.elasticsearch", "m4.10xlarge.elasticsearch", "m5.large.elasticsearch", "m5.xlarge.elasticsearch", "m5.2xlarge.elasticsearch", "m5.4xlarge.elasticsearch", "m5.12xlarge.elasticsearch", "r5.large.elasticsearch", "r5.xlarge.elasticsearch", "r5.2xlarge.elasticsearch", "r5.4xlarge.elasticsearch", "r5.12xlarge.elasticsearch", "c5.large.elasticsearch", "c5.xlarge.elasticsearch", "c5.2xlarge.elasticsearch", "c5.4xlarge.elasticsearch", "c5.9xlarge.elasticsearch", "c5.18xlarge.elasticsearch", "ultrawarm1.medium.elasticsearch", "ultrawarm1.large.elasticsearch", "t2.micro.elasticsearch", "t2.small.elasticsearch", "t2.medium.elasticsearch", "r3.large.elasticsearch", "r3.xlarge.elasticsearch", "r3.2xlarge.elasticsearch", "r3.4xlarge.elasticsearch", "r3.8xlarge.elasticsearch", "i2.xlarge.elasticsearch", "i2.2xlarge.elasticsearch", "d2.xlarge.elasticsearch", "d2.2xlarge.elasticsearch", "d2.4xlarge.elasticsearch", "d2.8xlarge.elasticsearch", "c4.large.elasticsearch", "c4.xlarge.elasticsearch", "c4.2xlarge.elasticsearch", "c4.4xlarge.elasticsearch", "c4.8xlarge.elasticsearch", "r4.large.elasticsearch", "r4.xlarge.elasticsearch", "r4.2xlarge.elasticsearch", "r4.4xlarge.elasticsearch", "r4.8xlarge.elasticsearch", "r4.16xlarge.elasticsearch", "i3.large.elasticsearch", "i3.xlarge.elasticsearch", "i3.2xlarge.elasticsearch", "i3.4xlarge.elasticsearch", "i3.8xlarge.elasticsearch", "i3.16xlarge.elasticsearch"],
    #         start_time: Time.now,
    #         duration: 1,
    #         fixed_price: 1.0,
    #         usage_price: 1.0,
    #         currency_code: "String",
    #         elasticsearch_instance_count: 1,
    #         state: "String",
    #         payment_option: "ALL_UPFRONT" # One of: ["ALL_UPFRONT", "PARTIAL_UPFRONT", "NO_UPFRONT"],
    #         recurring_charges: [
    #           {
    #             recurring_charge_amount: 1.0,
    #             recurring_charge_frequency: "String"
    #           }
    #         ]
    #       }
    #     ]
    #   }
    # @return [Types::DescribeReservedElasticsearchInstancesResponse]
    def describe_reserved_elasticsearch_instances(params = {}, options = {})
      request = build_request(:describe_reserved_elasticsearch_instances, params)
      request.send_request(options)
    end

    # <p>Describes one or more Amazon OpenSearch Service-managed VPC endpoints.</p>
    # @param [Hash, Types::DescribeVpcEndpointsRequest] params
    # @option params [Array<String>] :vpc_endpoint_ids
    #   <p>The unique identifiers of the endpoints to get information about.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     vpc_endpoint_ids: ["VpcEndpointId"], # required
    #   }
    #   options = {}
    #   response = client.describe_vpc_endpoints(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     vpc_endpoints: [ # required
    #       {
    #         vpc_endpoint_id: "VpcEndpointId",
    #         vpc_endpoint_owner: "AWSAccount",
    #         domain_arn: "DomainArn",
    #         vpc_options: {
    #           vpc_id: "String",
    #           subnet_ids: ["String"],
    #           availability_zones: ["String"],
    #           security_group_ids: ["String"]
    #         },
    #         status: "CREATING" # One of: ["CREATING", "CREATE_FAILED", "ACTIVE", "UPDATING", "UPDATE_FAILED", "DELETING", "DELETE_FAILED"],
    #         endpoint: "Endpoint"
    #       }
    #     ],
    #     vpc_endpoint_errors: [ # required
    #       {
    #         vpc_endpoint_id: "VpcEndpointId",
    #         error_code: "ENDPOINT_NOT_FOUND" # One of: ["ENDPOINT_NOT_FOUND", "SERVER_ERROR"],
    #         error_message: "String"
    #       }
    #     ]
    #   }
    # @return [Types::DescribeVpcEndpointsResponse]
    def describe_vpc_endpoints(params = {}, options = {})
      request = build_request(:describe_vpc_endpoints, params)
      request.send_request(options)
    end

    # <p>Dissociates a package from the Amazon ES domain.</p>
    # @param [Hash, Types::DissociatePackageRequest] params
    # @option params [String] :package_id
    #   <p>Internal ID of the package that you want to associate with a domain. Use <code>DescribePackages</code> to find this value.</p>
    # @option params [String] :domain_name
    #   <p>Name of the domain that you want to associate the package with.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     package_id: "PackageID", # required
    #     domain_name: "DomainName", # required
    #   }
    #   options = {}
    #   response = client.dissociate_package(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain_package_details: {
    #       package_id: "PackageID",
    #       package_name: "PackageName",
    #       package_type: "TXT-DICTIONARY" # One of: ["TXT-DICTIONARY"],
    #       last_updated: Time.now,
    #       domain_name: "DomainName",
    #       domain_package_status: "ASSOCIATING" # One of: ["ASSOCIATING", "ASSOCIATION_FAILED", "ACTIVE", "DISSOCIATING", "DISSOCIATION_FAILED"],
    #       package_version: "PackageVersion",
    #       reference_path: "ReferencePath",
    #       error_details: {
    #         error_type: "ErrorType",
    #         error_message: "ErrorMessage"
    #       }
    #     }
    #   }
    # @return [Types::DissociatePackageResponse]
    def dissociate_package(params = {}, options = {})
      request = build_request(:dissociate_package, params)
      request.send_request(options)
    end

    # <p>
    #         Returns a list of upgrade compatible Elastisearch versions.
    #         You can optionally pass a
    #         <code>
    #           <a>DomainName</a>
    #         </code>
    #         to get all upgrade compatible Elasticsearch versions for that specific domain.
    #       </p>
    # @param [Hash, Types::GetCompatibleElasticsearchVersionsRequest] params
    # @option params [String] :domain_name
    #   <p>The name of an Elasticsearch domain. Domain names are unique across the domains owned by an account within an AWS region. Domain names start with a letter or number and can contain the following characters: a-z (lowercase), 0-9, and - (hyphen).</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "DomainName"
    #   }
    #   options = {}
    #   response = client.get_compatible_elasticsearch_versions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     compatible_elasticsearch_versions: [
    #       {
    #         source_version: "ElasticsearchVersionString",
    #         target_versions: ["ElasticsearchVersionString"]
    #       }
    #     ]
    #   }
    # @return [Types::GetCompatibleElasticsearchVersionsResponse]
    def get_compatible_elasticsearch_versions(params = {}, options = {})
      request = build_request(:get_compatible_elasticsearch_versions, params)
      request.send_request(options)
    end

    # <p>Returns a list of versions of the package, along with their creation time and commit message.</p>
    # @param [Hash, Types::GetPackageVersionHistoryRequest] params
    # @option params [String] :package_id
    #   <p>Returns an audit history of versions of the package.</p>
    # @option params [Integer] :max_results
    #   <p>Limits results to a maximum number of versions.</p>
    # @option params [String] :next_token
    #   <p>Used for pagination. Only necessary if a previous API call includes a non-null NextToken value. If provided, returns results for the next page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     package_id: "PackageID", # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.get_package_version_history(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     package_id: "PackageID",
    #     package_version_history_list: [
    #       {
    #         package_version: "PackageVersion",
    #         commit_message: "CommitMessage",
    #         created_at: Time.now
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::GetPackageVersionHistoryResponse]
    def get_package_version_history(params = {}, options = {})
      request = build_request(:get_package_version_history, params)
      request.send_request(options)
    end

    # <p>Retrieves the complete history of the last 10 upgrades that were performed on the domain.</p>
    # @param [Hash, Types::GetUpgradeHistoryRequest] params
    # @option params [String] :domain_name
    #   <p>The name of an Elasticsearch domain. Domain names are unique across the domains owned by an account within an AWS region. Domain names start with a letter or number and can contain the following characters: a-z (lowercase), 0-9, and - (hyphen).</p>
    # @option params [Integer] :max_results
    #   <p>
    #         Set this value to limit the number of results returned.
    #       </p>
    # @option params [String] :next_token
    #   <p>
    #         Paginated APIs accepts NextToken input to returns next page results and provides
    #         a NextToken output in the response which can be used by the client to retrieve more results.
    #       </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "DomainName", # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.get_upgrade_history(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     upgrade_histories: [
    #       {
    #         upgrade_name: "UpgradeName",
    #         start_timestamp: Time.now,
    #         upgrade_status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "SUCCEEDED", "SUCCEEDED_WITH_ISSUES", "FAILED"],
    #         steps_list: [
    #           {
    #             upgrade_step: "PRE_UPGRADE_CHECK" # One of: ["PRE_UPGRADE_CHECK", "SNAPSHOT", "UPGRADE"],
    #             upgrade_step_status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "SUCCEEDED", "SUCCEEDED_WITH_ISSUES", "FAILED"],
    #             issues: ["Issue"],
    #             progress_percent: 1.0
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::GetUpgradeHistoryResponse]
    def get_upgrade_history(params = {}, options = {})
      request = build_request(:get_upgrade_history, params)
      request.send_request(options)
    end

    # <p>Retrieves the latest status of the last upgrade or upgrade eligibility check that was performed on the domain.</p>
    # @param [Hash, Types::GetUpgradeStatusRequest] params
    # @option params [String] :domain_name
    #   <p>The name of an Elasticsearch domain. Domain names are unique across the domains owned by an account within an AWS region. Domain names start with a letter or number and can contain the following characters: a-z (lowercase), 0-9, and - (hyphen).</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "DomainName", # required
    #   }
    #   options = {}
    #   response = client.get_upgrade_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     upgrade_step: "PRE_UPGRADE_CHECK" # One of: ["PRE_UPGRADE_CHECK", "SNAPSHOT", "UPGRADE"],
    #     step_status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "SUCCEEDED", "SUCCEEDED_WITH_ISSUES", "FAILED"],
    #     upgrade_name: "UpgradeName"
    #   }
    # @return [Types::GetUpgradeStatusResponse]
    def get_upgrade_status(params = {}, options = {})
      request = build_request(:get_upgrade_status, params)
      request.send_request(options)
    end

    # <p>Returns the name of all Elasticsearch domains owned by the current user's account. </p>
    # @param [Hash, Types::ListDomainNamesRequest] params
    # @option params [String] :engine_type
    #   <p> Optional parameter to filter the output by domain engine type. Acceptable values are 'Elasticsearch' and 'OpenSearch'. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     engine_type: "OpenSearch" # One of: ["OpenSearch", "Elasticsearch"]
    #   }
    #   options = {}
    #   response = client.list_domain_names(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain_names: [
    #       {
    #         domain_name: "DomainName",
    #         engine_type: "OpenSearch" # One of: ["OpenSearch", "Elasticsearch"]
    #       }
    #     ]
    #   }
    # @return [Types::ListDomainNamesResponse]
    def list_domain_names(params = {}, options = {})
      request = build_request(:list_domain_names, params)
      request.send_request(options)
    end

    # <p>Lists all Amazon ES domains associated with the package.</p>
    # @param [Hash, Types::ListDomainsForPackageRequest] params
    # @option params [String] :package_id
    #   <p>The package for which to list domains.</p>
    # @option params [Integer] :max_results
    #   <p>Limits results to a maximum number of domains.</p>
    # @option params [String] :next_token
    #   <p>Used for pagination. Only necessary if a previous API call includes a non-null NextToken value. If provided, returns results for the next page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     package_id: "PackageID", # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_domains_for_package(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain_package_details_list: [
    #       {
    #         package_id: "PackageID",
    #         package_name: "PackageName",
    #         package_type: "TXT-DICTIONARY" # One of: ["TXT-DICTIONARY"],
    #         last_updated: Time.now,
    #         domain_name: "DomainName",
    #         domain_package_status: "ASSOCIATING" # One of: ["ASSOCIATING", "ASSOCIATION_FAILED", "ACTIVE", "DISSOCIATING", "DISSOCIATION_FAILED"],
    #         package_version: "PackageVersion",
    #         reference_path: "ReferencePath",
    #         error_details: {
    #           error_type: "ErrorType",
    #           error_message: "ErrorMessage"
    #         }
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListDomainsForPackageResponse]
    def list_domains_for_package(params = {}, options = {})
      request = build_request(:list_domains_for_package, params)
      request.send_request(options)
    end

    # <p>List all Elasticsearch instance types that are supported for given ElasticsearchVersion</p>
    # @param [Hash, Types::ListElasticsearchInstanceTypesRequest] params
    # @option params [String] :elasticsearch_version
    #   <p>Version of Elasticsearch for which list of supported elasticsearch
    #         instance types are needed.
    #       </p>
    # @option params [String] :domain_name
    #   <p>DomainName represents the name of the Domain that we are trying to modify. This should be present only if we are
    #         querying for list of available Elasticsearch instance types when modifying existing domain.
    #       </p>
    # @option params [Integer] :max_results
    #   <p>
    #       Set this value to limit the number of results returned.
    #       Value provided must be greater than 30 else it wont be honored.
    #     </p>
    # @option params [String] :next_token
    #   <p>NextToken should be sent in case if earlier API call produced result
    #         containing NextToken. It is used for pagination.
    #       </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     elasticsearch_version: "ElasticsearchVersionString", # required
    #     domain_name: "DomainName",
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_elasticsearch_instance_types(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     elasticsearch_instance_types: ["m3.medium.elasticsearch" # One of: ["m3.medium.elasticsearch", "m3.large.elasticsearch", "m3.xlarge.elasticsearch", "m3.2xlarge.elasticsearch", "m4.large.elasticsearch", "m4.xlarge.elasticsearch", "m4.2xlarge.elasticsearch", "m4.4xlarge.elasticsearch", "m4.10xlarge.elasticsearch", "m5.large.elasticsearch", "m5.xlarge.elasticsearch", "m5.2xlarge.elasticsearch", "m5.4xlarge.elasticsearch", "m5.12xlarge.elasticsearch", "r5.large.elasticsearch", "r5.xlarge.elasticsearch", "r5.2xlarge.elasticsearch", "r5.4xlarge.elasticsearch", "r5.12xlarge.elasticsearch", "c5.large.elasticsearch", "c5.xlarge.elasticsearch", "c5.2xlarge.elasticsearch", "c5.4xlarge.elasticsearch", "c5.9xlarge.elasticsearch", "c5.18xlarge.elasticsearch", "ultrawarm1.medium.elasticsearch", "ultrawarm1.large.elasticsearch", "t2.micro.elasticsearch", "t2.small.elasticsearch", "t2.medium.elasticsearch", "r3.large.elasticsearch", "r3.xlarge.elasticsearch", "r3.2xlarge.elasticsearch", "r3.4xlarge.elasticsearch", "r3.8xlarge.elasticsearch", "i2.xlarge.elasticsearch", "i2.2xlarge.elasticsearch", "d2.xlarge.elasticsearch", "d2.2xlarge.elasticsearch", "d2.4xlarge.elasticsearch", "d2.8xlarge.elasticsearch", "c4.large.elasticsearch", "c4.xlarge.elasticsearch", "c4.2xlarge.elasticsearch", "c4.4xlarge.elasticsearch", "c4.8xlarge.elasticsearch", "r4.large.elasticsearch", "r4.xlarge.elasticsearch", "r4.2xlarge.elasticsearch", "r4.4xlarge.elasticsearch", "r4.8xlarge.elasticsearch", "r4.16xlarge.elasticsearch", "i3.large.elasticsearch", "i3.xlarge.elasticsearch", "i3.2xlarge.elasticsearch", "i3.4xlarge.elasticsearch", "i3.8xlarge.elasticsearch", "i3.16xlarge.elasticsearch"]],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListElasticsearchInstanceTypesResponse]
    def list_elasticsearch_instance_types(params = {}, options = {})
      request = build_request(:list_elasticsearch_instance_types, params)
      request.send_request(options)
    end

    # <p>List all supported Elasticsearch versions</p>
    # @param [Hash, Types::ListElasticsearchVersionsRequest] params
    # @option params [Integer] :max_results
    #   <p>
    #         Set this value to limit the number of results returned.
    #         Value provided must be greater than 10 else it wont be honored.
    #       </p>
    # @option params [String] :next_token
    #   <p>
    #         Paginated APIs accepts NextToken input to returns next page results and provides
    #         a NextToken output in the response which can be used by the client to retrieve more results.
    #       </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_elasticsearch_versions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     elasticsearch_versions: ["ElasticsearchVersionString"],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListElasticsearchVersionsResponse]
    def list_elasticsearch_versions(params = {}, options = {})
      request = build_request(:list_elasticsearch_versions, params)
      request.send_request(options)
    end

    # <p>Lists all packages associated with the Amazon ES domain.</p>
    # @param [Hash, Types::ListPackagesForDomainRequest] params
    # @option params [String] :domain_name
    #   <p>The name of the domain for which you want to list associated packages.</p>
    # @option params [Integer] :max_results
    #   <p>Limits results to a maximum number of packages.</p>
    # @option params [String] :next_token
    #   <p>Used for pagination. Only necessary if a previous API call includes a non-null NextToken value. If provided, returns results for the next page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "DomainName", # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_packages_for_domain(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain_package_details_list: [
    #       {
    #         package_id: "PackageID",
    #         package_name: "PackageName",
    #         package_type: "TXT-DICTIONARY" # One of: ["TXT-DICTIONARY"],
    #         last_updated: Time.now,
    #         domain_name: "DomainName",
    #         domain_package_status: "ASSOCIATING" # One of: ["ASSOCIATING", "ASSOCIATION_FAILED", "ACTIVE", "DISSOCIATING", "DISSOCIATION_FAILED"],
    #         package_version: "PackageVersion",
    #         reference_path: "ReferencePath",
    #         error_details: {
    #           error_type: "ErrorType",
    #           error_message: "ErrorMessage"
    #         }
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListPackagesForDomainResponse]
    def list_packages_for_domain(params = {}, options = {})
      request = build_request(:list_packages_for_domain, params)
      request.send_request(options)
    end

    # <p>Returns all tags for the given Elasticsearch domain.</p>
    # @param [Hash, Types::ListTagsRequest] params
    # @option params [String] :arn
    #   <p> Specify the <code>ARN</code> for the Elasticsearch domain to which the tags are attached that you want to view.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "ARN", # required
    #   }
    #   options = {}
    #   response = client.list_tags(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tag_list: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    # @return [Types::ListTagsResponse]
    def list_tags(params = {}, options = {})
      request = build_request(:list_tags, params)
      request.send_request(options)
    end

    # <p>Retrieves information about each  principal that is allowed to access a
    #    given Amazon OpenSearch Service domain through the use of an interface VPC endpoint.</p>
    # @param [Hash, Types::ListVpcEndpointAccessRequest] params
    # @option params [String] :domain_name
    #   <p>The name of the OpenSearch Service domain to retrieve access information for.</p>
    # @option params [String] :next_token
    #   <p>Provides an identifier to allow retrieval of paginated results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "DomainName", # required
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_vpc_endpoint_access(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     authorized_principal_list: [ # required
    #       {
    #         principal_type: "AWS_ACCOUNT" # One of: ["AWS_ACCOUNT", "AWS_SERVICE"],
    #         principal: "String"
    #       }
    #     ],
    #     next_token: "NextToken", # required
    #   }
    # @return [Types::ListVpcEndpointAccessResponse]
    def list_vpc_endpoint_access(params = {}, options = {})
      request = build_request(:list_vpc_endpoint_access, params)
      request.send_request(options)
    end

    # <p>Retrieves all Amazon OpenSearch Service-managed VPC endpoints in the current account and Region.</p>
    # @param [Hash, Types::ListVpcEndpointsRequest] params
    # @option params [String] :next_token
    #   <p>Identifier to allow retrieval of paginated results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_vpc_endpoints(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     vpc_endpoint_summary_list: [ # required
    #       {
    #         vpc_endpoint_id: "VpcEndpointId",
    #         vpc_endpoint_owner: "String",
    #         domain_arn: "DomainArn",
    #         status: "CREATING" # One of: ["CREATING", "CREATE_FAILED", "ACTIVE", "UPDATING", "UPDATE_FAILED", "DELETING", "DELETE_FAILED"]
    #       }
    #     ],
    #     next_token: "NextToken", # required
    #   }
    # @return [Types::ListVpcEndpointsResponse]
    def list_vpc_endpoints(params = {}, options = {})
      request = build_request(:list_vpc_endpoints, params)
      request.send_request(options)
    end

    # <p>Retrieves all Amazon OpenSearch Service-managed VPC endpoints associated with a particular domain.</p>
    # @param [Hash, Types::ListVpcEndpointsForDomainRequest] params
    # @option params [String] :domain_name
    #   <p>Name of the ElasticSearch domain whose VPC endpoints are to be listed.</p>
    # @option params [String] :next_token
    #   <p>Provides an identifier to allow retrieval of paginated results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "DomainName", # required
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_vpc_endpoints_for_domain(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     vpc_endpoint_summary_list: [ # required
    #       {
    #         vpc_endpoint_id: "VpcEndpointId",
    #         vpc_endpoint_owner: "String",
    #         domain_arn: "DomainArn",
    #         status: "CREATING" # One of: ["CREATING", "CREATE_FAILED", "ACTIVE", "UPDATING", "UPDATE_FAILED", "DELETING", "DELETE_FAILED"]
    #       }
    #     ],
    #     next_token: "NextToken", # required
    #   }
    # @return [Types::ListVpcEndpointsForDomainResponse]
    def list_vpc_endpoints_for_domain(params = {}, options = {})
      request = build_request(:list_vpc_endpoints_for_domain, params)
      request.send_request(options)
    end

    # <p>Allows you to purchase reserved Elasticsearch instances.</p>
    # @param [Hash, Types::PurchaseReservedElasticsearchInstanceOfferingRequest] params
    # @option params [String] :reserved_elasticsearch_instance_offering_id
    #   <p>The ID of the reserved Elasticsearch instance offering to purchase.</p>
    # @option params [String] :reservation_name
    #   <p>A customer-specified identifier to track this reservation.</p>
    # @option params [Integer] :instance_count
    #   <p>The number of Elasticsearch instances to reserve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     reserved_elasticsearch_instance_offering_id: "GUID", # required
    #     reservation_name: "ReservationToken", # required
    #     instance_count: 1
    #   }
    #   options = {}
    #   response = client.purchase_reserved_elasticsearch_instance_offering(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     reserved_elasticsearch_instance_id: "GUID",
    #     reservation_name: "ReservationToken"
    #   }
    # @return [Types::PurchaseReservedElasticsearchInstanceOfferingResponse]
    def purchase_reserved_elasticsearch_instance_offering(params = {}, options = {})
      request = build_request(:purchase_reserved_elasticsearch_instance_offering, params)
      request.send_request(options)
    end

    # <p>Allows the destination domain owner to reject an inbound cross-cluster search connection request.</p>
    # @param [Hash, Types::RejectInboundCrossClusterSearchConnectionRequest] params
    # @option params [String] :cross_cluster_search_connection_id
    #   <p>The id of the inbound connection that you want to reject.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cross_cluster_search_connection_id: "CrossClusterSearchConnectionId", # required
    #   }
    #   options = {}
    #   response = client.reject_inbound_cross_cluster_search_connection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cross_cluster_search_connection: {
    #       source_domain_info: {
    #         owner_id: "OwnerId",
    #         domain_name: "DomainName", # required
    #         region: "Region"
    #       },
    #       destination_domain_info: {
    #         owner_id: "OwnerId",
    #         domain_name: "DomainName", # required
    #         region: "Region"
    #       },
    #       cross_cluster_search_connection_id: "CrossClusterSearchConnectionId",
    #       connection_status: {
    #         status_code: "PENDING_ACCEPTANCE" # One of: ["PENDING_ACCEPTANCE", "APPROVED", "REJECTING", "REJECTED", "DELETING", "DELETED"],
    #         message: "CrossClusterSearchConnectionStatusMessage"
    #       }
    #     }
    #   }
    # @return [Types::RejectInboundCrossClusterSearchConnectionResponse]
    def reject_inbound_cross_cluster_search_connection(params = {}, options = {})
      request = build_request(:reject_inbound_cross_cluster_search_connection, params)
      request.send_request(options)
    end

    # <p>Removes the specified set of tags from the specified Elasticsearch domain.</p>
    # @param [Hash, Types::RemoveTagsRequest] params
    # @option params [String] :arn
    #   <p>Specifies the <code>ARN</code> for the Elasticsearch domain from which you want to delete the specified tags.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>Specifies the <code>TagKey</code> list which you want to remove from the Elasticsearch domain.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "ARN", # required
    #     tag_keys: ["String"], # required
    #   }
    #   options = {}
    #   response = client.remove_tags(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def remove_tags(params = {}, options = {})
      request = build_request(:remove_tags, params)
      request.send_request(options)
    end

    # <p>Revokes access to an Amazon OpenSearch Service domain that was provided through an interface
    #    VPC endpoint.</p>
    # @param [Hash, Types::RevokeVpcEndpointAccessRequest] params
    # @option params [String] :domain_name
    #   <p>The name of the OpenSearch Service domain.</p>
    # @option params [String] :account
    #   <p>The account ID to revoke access from.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "DomainName", # required
    #     account: "AWSAccount", # required
    #   }
    #   options = {}
    #   response = client.revoke_vpc_endpoint_access(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::RevokeVpcEndpointAccessResponse]
    def revoke_vpc_endpoint_access(params = {}, options = {})
      request = build_request(:revoke_vpc_endpoint_access, params)
      request.send_request(options)
    end

    # <p>Schedules a service software update for an Amazon ES domain.</p>
    # @param [Hash, Types::StartElasticsearchServiceSoftwareUpdateRequest] params
    # @option params [String] :domain_name
    #   <p>The name of the domain that you want to update to the latest service software.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "DomainName", # required
    #   }
    #   options = {}
    #   response = client.start_elasticsearch_service_software_update(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     service_software_options: {
    #       current_version: "String",
    #       new_version: "String",
    #       update_available: false,
    #       cancellable: false,
    #       update_status: "PENDING_UPDATE" # One of: ["PENDING_UPDATE", "IN_PROGRESS", "COMPLETED", "NOT_ELIGIBLE", "ELIGIBLE"],
    #       description: "String",
    #       automated_update_date: Time.now,
    #       optional_deployment: false
    #     }
    #   }
    # @return [Types::StartElasticsearchServiceSoftwareUpdateResponse]
    def start_elasticsearch_service_software_update(params = {}, options = {})
      request = build_request(:start_elasticsearch_service_software_update, params)
      request.send_request(options)
    end

    # <p>Modifies the cluster configuration of the specified Elasticsearch domain, setting as setting the instance type and the number of instances. </p>
    # @param [Hash, Types::UpdateElasticsearchDomainConfigRequest] params
    # @option params [String] :domain_name
    #   <p>The name of the Elasticsearch domain that you are updating. </p>
    # @option params [Types::ElasticsearchClusterConfig] :elasticsearch_cluster_config
    #   <p>The type and number of instances to instantiate for the domain cluster.</p>
    # @option params [Types::EBSOptions] :ebs_options
    #   <p>Specify the type and size of the EBS volume that you want to use. </p>
    # @option params [Types::SnapshotOptions] :snapshot_options
    #   <p>Option to set the time, in UTC format, for the daily automated snapshot. Default value is <code>0</code> hours. </p>
    # @option params [Types::VPCOptions] :vpc_options
    #   <p>Options to specify the subnets and security groups for VPC endpoint. For more information, see <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-vpc.html#es-creating-vpc" target="_blank">Creating a VPC</a> in <i>VPC Endpoints for Amazon Elasticsearch Service Domains</i></p>
    # @option params [Types::CognitoOptions] :cognito_options
    #   <p>Options to specify the Cognito user and identity pools for Kibana authentication. For more information, see <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-cognito-auth.html" target="_blank">Amazon Cognito Authentication for Kibana</a>.</p>
    # @option params [Hash<String, String>] :advanced_options
    #   <p>Modifies the advanced option to allow references to indices in an HTTP request body.  Must be <code>false</code> when configuring access to individual sub-resources.  By default, the value is <code>true</code>.
    #          See <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-advanced-options" target="_blank">Configuration Advanced Options</a> for more information.</p>
    # @option params [String] :access_policies
    #   <p>IAM access policy as a JSON-formatted string.</p>
    # @option params [Hash<String, Types::LogPublishingOption>] :log_publishing_options
    #   <p>Map of <code>LogType</code> and <code>LogPublishingOption</code>, each containing options to publish a given type of Elasticsearch log.</p>
    # @option params [Types::DomainEndpointOptions] :domain_endpoint_options
    #   <p>Options to specify configuration that will be applied to the domain endpoint.</p>
    # @option params [Types::AdvancedSecurityOptionsInput] :advanced_security_options
    #   <p>Specifies advanced security options.</p>
    # @option params [Types::NodeToNodeEncryptionOptions] :node_to_node_encryption_options
    #   <p>Specifies the NodeToNodeEncryptionOptions.</p>
    # @option params [Types::EncryptionAtRestOptions] :encryption_at_rest_options
    #   <p>Specifies the Encryption At Rest Options.</p>
    # @option params [Types::AutoTuneOptions] :auto_tune_options
    #   <p>Specifies Auto-Tune options.</p>
    # @option params [Boolean] :dry_run
    #   <p>
    #              This flag, when set to True, specifies whether the <code>UpdateElasticsearchDomain</code> request should return the results of validation checks without actually applying the change.
    #              This flag, when set to True, specifies the deployment mechanism through which the update shall be applied on the domain.
    #              This will not actually perform the Update.
    #          </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "DomainName", # required
    #     elasticsearch_cluster_config: {
    #       instance_type: "m3.medium.elasticsearch" # One of: ["m3.medium.elasticsearch", "m3.large.elasticsearch", "m3.xlarge.elasticsearch", "m3.2xlarge.elasticsearch", "m4.large.elasticsearch", "m4.xlarge.elasticsearch", "m4.2xlarge.elasticsearch", "m4.4xlarge.elasticsearch", "m4.10xlarge.elasticsearch", "m5.large.elasticsearch", "m5.xlarge.elasticsearch", "m5.2xlarge.elasticsearch", "m5.4xlarge.elasticsearch", "m5.12xlarge.elasticsearch", "r5.large.elasticsearch", "r5.xlarge.elasticsearch", "r5.2xlarge.elasticsearch", "r5.4xlarge.elasticsearch", "r5.12xlarge.elasticsearch", "c5.large.elasticsearch", "c5.xlarge.elasticsearch", "c5.2xlarge.elasticsearch", "c5.4xlarge.elasticsearch", "c5.9xlarge.elasticsearch", "c5.18xlarge.elasticsearch", "ultrawarm1.medium.elasticsearch", "ultrawarm1.large.elasticsearch", "t2.micro.elasticsearch", "t2.small.elasticsearch", "t2.medium.elasticsearch", "r3.large.elasticsearch", "r3.xlarge.elasticsearch", "r3.2xlarge.elasticsearch", "r3.4xlarge.elasticsearch", "r3.8xlarge.elasticsearch", "i2.xlarge.elasticsearch", "i2.2xlarge.elasticsearch", "d2.xlarge.elasticsearch", "d2.2xlarge.elasticsearch", "d2.4xlarge.elasticsearch", "d2.8xlarge.elasticsearch", "c4.large.elasticsearch", "c4.xlarge.elasticsearch", "c4.2xlarge.elasticsearch", "c4.4xlarge.elasticsearch", "c4.8xlarge.elasticsearch", "r4.large.elasticsearch", "r4.xlarge.elasticsearch", "r4.2xlarge.elasticsearch", "r4.4xlarge.elasticsearch", "r4.8xlarge.elasticsearch", "r4.16xlarge.elasticsearch", "i3.large.elasticsearch", "i3.xlarge.elasticsearch", "i3.2xlarge.elasticsearch", "i3.4xlarge.elasticsearch", "i3.8xlarge.elasticsearch", "i3.16xlarge.elasticsearch"],
    #       instance_count: 1,
    #       dedicated_master_enabled: false,
    #       zone_awareness_enabled: false,
    #       zone_awareness_config: {
    #         availability_zone_count: 1
    #       },
    #       dedicated_master_type: "m3.medium.elasticsearch" # One of: ["m3.medium.elasticsearch", "m3.large.elasticsearch", "m3.xlarge.elasticsearch", "m3.2xlarge.elasticsearch", "m4.large.elasticsearch", "m4.xlarge.elasticsearch", "m4.2xlarge.elasticsearch", "m4.4xlarge.elasticsearch", "m4.10xlarge.elasticsearch", "m5.large.elasticsearch", "m5.xlarge.elasticsearch", "m5.2xlarge.elasticsearch", "m5.4xlarge.elasticsearch", "m5.12xlarge.elasticsearch", "r5.large.elasticsearch", "r5.xlarge.elasticsearch", "r5.2xlarge.elasticsearch", "r5.4xlarge.elasticsearch", "r5.12xlarge.elasticsearch", "c5.large.elasticsearch", "c5.xlarge.elasticsearch", "c5.2xlarge.elasticsearch", "c5.4xlarge.elasticsearch", "c5.9xlarge.elasticsearch", "c5.18xlarge.elasticsearch", "ultrawarm1.medium.elasticsearch", "ultrawarm1.large.elasticsearch", "t2.micro.elasticsearch", "t2.small.elasticsearch", "t2.medium.elasticsearch", "r3.large.elasticsearch", "r3.xlarge.elasticsearch", "r3.2xlarge.elasticsearch", "r3.4xlarge.elasticsearch", "r3.8xlarge.elasticsearch", "i2.xlarge.elasticsearch", "i2.2xlarge.elasticsearch", "d2.xlarge.elasticsearch", "d2.2xlarge.elasticsearch", "d2.4xlarge.elasticsearch", "d2.8xlarge.elasticsearch", "c4.large.elasticsearch", "c4.xlarge.elasticsearch", "c4.2xlarge.elasticsearch", "c4.4xlarge.elasticsearch", "c4.8xlarge.elasticsearch", "r4.large.elasticsearch", "r4.xlarge.elasticsearch", "r4.2xlarge.elasticsearch", "r4.4xlarge.elasticsearch", "r4.8xlarge.elasticsearch", "r4.16xlarge.elasticsearch", "i3.large.elasticsearch", "i3.xlarge.elasticsearch", "i3.2xlarge.elasticsearch", "i3.4xlarge.elasticsearch", "i3.8xlarge.elasticsearch", "i3.16xlarge.elasticsearch"],
    #       dedicated_master_count: 1,
    #       warm_enabled: false,
    #       warm_type: "ultrawarm1.medium.elasticsearch" # One of: ["ultrawarm1.medium.elasticsearch", "ultrawarm1.large.elasticsearch"],
    #       warm_count: 1,
    #       cold_storage_options: {
    #         enabled: false, # required
    #       }
    #     },
    #     ebs_options: {
    #       ebs_enabled: false,
    #       volume_type: "standard" # One of: ["standard", "gp2", "io1", "gp3"],
    #       volume_size: 1,
    #       iops: 1,
    #       throughput: 1
    #     },
    #     snapshot_options: {
    #       automated_snapshot_start_hour: 1
    #     },
    #     vpc_options: {
    #       subnet_ids: ["String"],
    #       security_group_ids: ["String"]
    #     },
    #     cognito_options: {
    #       enabled: false,
    #       user_pool_id: "UserPoolId",
    #       identity_pool_id: "IdentityPoolId",
    #       role_arn: "RoleArn"
    #     },
    #     advanced_options: {
    #       "String" => "String"
    #     },
    #     access_policies: "PolicyDocument",
    #     log_publishing_options: {
    #       "LogType" => {
    #         cloud_watch_logs_log_group_arn: "CloudWatchLogsLogGroupArn",
    #         enabled: false
    #       }
    #     },
    #     domain_endpoint_options: {
    #       enforce_https: false,
    #       tls_security_policy: "Policy-Min-TLS-1-0-2019-07" # One of: ["Policy-Min-TLS-1-0-2019-07", "Policy-Min-TLS-1-2-2019-07", "Policy-Min-TLS-1-2-PFS-2023-10"],
    #       custom_endpoint_enabled: false,
    #       custom_endpoint: "DomainNameFqdn",
    #       custom_endpoint_certificate_arn: "ARN"
    #     },
    #     advanced_security_options: {
    #       enabled: false,
    #       internal_user_database_enabled: false,
    #       master_user_options: {
    #         master_user_arn: "ARN",
    #         master_user_name: "Username",
    #         master_user_password: "Password"
    #       },
    #       saml_options: {
    #         enabled: false,
    #         idp: {
    #           metadata_content: "SAMLMetadata", # required
    #           entity_id: "SAMLEntityId", # required
    #         },
    #         master_user_name: "Username",
    #         master_backend_role: "BackendRole",
    #         subject_key: "String",
    #         roles_key: "String",
    #         session_timeout_minutes: 1
    #       },
    #       anonymous_auth_enabled: false
    #     },
    #     node_to_node_encryption_options: {
    #       enabled: false
    #     },
    #     encryption_at_rest_options: {
    #       enabled: false,
    #       kms_key_id: "KmsKeyId"
    #     },
    #     auto_tune_options: {
    #       desired_state: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #       rollback_on_disable: "NO_ROLLBACK" # One of: ["NO_ROLLBACK", "DEFAULT_ROLLBACK"],
    #       maintenance_schedules: [
    #         {
    #           start_at: Time.now,
    #           duration: {
    #             value: 1,
    #             unit: "HOURS" # One of: ["HOURS"]
    #           },
    #           cron_expression_for_recurrence: "String"
    #         }
    #       ]
    #     },
    #     dry_run: false
    #   }
    #   options = {}
    #   response = client.update_elasticsearch_domain_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain_config: { # required
    #       elasticsearch_version: {
    #         options: "ElasticsearchVersionString", # required
    #         status: { # required
    #           creation_date: Time.now, # required
    #           update_date: Time.now, # required
    #           update_version: 1,
    #           state: "RequiresIndexDocuments" # One of: ["RequiresIndexDocuments", "Processing", "Active"], # required
    #           pending_deletion: false
    #         }
    #       },
    #       elasticsearch_cluster_config: {
    #         options: { # required
    #           instance_type: "m3.medium.elasticsearch" # One of: ["m3.medium.elasticsearch", "m3.large.elasticsearch", "m3.xlarge.elasticsearch", "m3.2xlarge.elasticsearch", "m4.large.elasticsearch", "m4.xlarge.elasticsearch", "m4.2xlarge.elasticsearch", "m4.4xlarge.elasticsearch", "m4.10xlarge.elasticsearch", "m5.large.elasticsearch", "m5.xlarge.elasticsearch", "m5.2xlarge.elasticsearch", "m5.4xlarge.elasticsearch", "m5.12xlarge.elasticsearch", "r5.large.elasticsearch", "r5.xlarge.elasticsearch", "r5.2xlarge.elasticsearch", "r5.4xlarge.elasticsearch", "r5.12xlarge.elasticsearch", "c5.large.elasticsearch", "c5.xlarge.elasticsearch", "c5.2xlarge.elasticsearch", "c5.4xlarge.elasticsearch", "c5.9xlarge.elasticsearch", "c5.18xlarge.elasticsearch", "ultrawarm1.medium.elasticsearch", "ultrawarm1.large.elasticsearch", "t2.micro.elasticsearch", "t2.small.elasticsearch", "t2.medium.elasticsearch", "r3.large.elasticsearch", "r3.xlarge.elasticsearch", "r3.2xlarge.elasticsearch", "r3.4xlarge.elasticsearch", "r3.8xlarge.elasticsearch", "i2.xlarge.elasticsearch", "i2.2xlarge.elasticsearch", "d2.xlarge.elasticsearch", "d2.2xlarge.elasticsearch", "d2.4xlarge.elasticsearch", "d2.8xlarge.elasticsearch", "c4.large.elasticsearch", "c4.xlarge.elasticsearch", "c4.2xlarge.elasticsearch", "c4.4xlarge.elasticsearch", "c4.8xlarge.elasticsearch", "r4.large.elasticsearch", "r4.xlarge.elasticsearch", "r4.2xlarge.elasticsearch", "r4.4xlarge.elasticsearch", "r4.8xlarge.elasticsearch", "r4.16xlarge.elasticsearch", "i3.large.elasticsearch", "i3.xlarge.elasticsearch", "i3.2xlarge.elasticsearch", "i3.4xlarge.elasticsearch", "i3.8xlarge.elasticsearch", "i3.16xlarge.elasticsearch"],
    #           instance_count: 1,
    #           dedicated_master_enabled: false,
    #           zone_awareness_enabled: false,
    #           zone_awareness_config: {
    #             availability_zone_count: 1
    #           },
    #           dedicated_master_type: "m3.medium.elasticsearch" # One of: ["m3.medium.elasticsearch", "m3.large.elasticsearch", "m3.xlarge.elasticsearch", "m3.2xlarge.elasticsearch", "m4.large.elasticsearch", "m4.xlarge.elasticsearch", "m4.2xlarge.elasticsearch", "m4.4xlarge.elasticsearch", "m4.10xlarge.elasticsearch", "m5.large.elasticsearch", "m5.xlarge.elasticsearch", "m5.2xlarge.elasticsearch", "m5.4xlarge.elasticsearch", "m5.12xlarge.elasticsearch", "r5.large.elasticsearch", "r5.xlarge.elasticsearch", "r5.2xlarge.elasticsearch", "r5.4xlarge.elasticsearch", "r5.12xlarge.elasticsearch", "c5.large.elasticsearch", "c5.xlarge.elasticsearch", "c5.2xlarge.elasticsearch", "c5.4xlarge.elasticsearch", "c5.9xlarge.elasticsearch", "c5.18xlarge.elasticsearch", "ultrawarm1.medium.elasticsearch", "ultrawarm1.large.elasticsearch", "t2.micro.elasticsearch", "t2.small.elasticsearch", "t2.medium.elasticsearch", "r3.large.elasticsearch", "r3.xlarge.elasticsearch", "r3.2xlarge.elasticsearch", "r3.4xlarge.elasticsearch", "r3.8xlarge.elasticsearch", "i2.xlarge.elasticsearch", "i2.2xlarge.elasticsearch", "d2.xlarge.elasticsearch", "d2.2xlarge.elasticsearch", "d2.4xlarge.elasticsearch", "d2.8xlarge.elasticsearch", "c4.large.elasticsearch", "c4.xlarge.elasticsearch", "c4.2xlarge.elasticsearch", "c4.4xlarge.elasticsearch", "c4.8xlarge.elasticsearch", "r4.large.elasticsearch", "r4.xlarge.elasticsearch", "r4.2xlarge.elasticsearch", "r4.4xlarge.elasticsearch", "r4.8xlarge.elasticsearch", "r4.16xlarge.elasticsearch", "i3.large.elasticsearch", "i3.xlarge.elasticsearch", "i3.2xlarge.elasticsearch", "i3.4xlarge.elasticsearch", "i3.8xlarge.elasticsearch", "i3.16xlarge.elasticsearch"],
    #           dedicated_master_count: 1,
    #           warm_enabled: false,
    #           warm_type: "ultrawarm1.medium.elasticsearch" # One of: ["ultrawarm1.medium.elasticsearch", "ultrawarm1.large.elasticsearch"],
    #           warm_count: 1,
    #           cold_storage_options: {
    #             enabled: false, # required
    #           }
    #         },
    #         status: { # required
    #           creation_date: Time.now, # required
    #           update_date: Time.now, # required
    #           update_version: 1,
    #           state: "RequiresIndexDocuments" # One of: ["RequiresIndexDocuments", "Processing", "Active"], # required
    #           pending_deletion: false
    #         }
    #       },
    #       ebs_options: {
    #         options: { # required
    #           ebs_enabled: false,
    #           volume_type: "standard" # One of: ["standard", "gp2", "io1", "gp3"],
    #           volume_size: 1,
    #           iops: 1,
    #           throughput: 1
    #         },
    #         status: { # required
    #           creation_date: Time.now, # required
    #           update_date: Time.now, # required
    #           update_version: 1,
    #           state: "RequiresIndexDocuments" # One of: ["RequiresIndexDocuments", "Processing", "Active"], # required
    #           pending_deletion: false
    #         }
    #       },
    #       access_policies: {
    #         options: "PolicyDocument", # required
    #         status: { # required
    #           creation_date: Time.now, # required
    #           update_date: Time.now, # required
    #           update_version: 1,
    #           state: "RequiresIndexDocuments" # One of: ["RequiresIndexDocuments", "Processing", "Active"], # required
    #           pending_deletion: false
    #         }
    #       },
    #       snapshot_options: {
    #         options: { # required
    #           automated_snapshot_start_hour: 1
    #         },
    #         status: { # required
    #           creation_date: Time.now, # required
    #           update_date: Time.now, # required
    #           update_version: 1,
    #           state: "RequiresIndexDocuments" # One of: ["RequiresIndexDocuments", "Processing", "Active"], # required
    #           pending_deletion: false
    #         }
    #       },
    #       vpc_options: {
    #         options: { # required
    #           vpc_id: "String",
    #           subnet_ids: ["String"],
    #           availability_zones: ["String"],
    #           security_group_ids: ["String"]
    #         },
    #         status: { # required
    #           creation_date: Time.now, # required
    #           update_date: Time.now, # required
    #           update_version: 1,
    #           state: "RequiresIndexDocuments" # One of: ["RequiresIndexDocuments", "Processing", "Active"], # required
    #           pending_deletion: false
    #         }
    #       },
    #       cognito_options: {
    #         options: { # required
    #           enabled: false,
    #           user_pool_id: "UserPoolId",
    #           identity_pool_id: "IdentityPoolId",
    #           role_arn: "RoleArn"
    #         },
    #         status: { # required
    #           creation_date: Time.now, # required
    #           update_date: Time.now, # required
    #           update_version: 1,
    #           state: "RequiresIndexDocuments" # One of: ["RequiresIndexDocuments", "Processing", "Active"], # required
    #           pending_deletion: false
    #         }
    #       },
    #       encryption_at_rest_options: {
    #         options: { # required
    #           enabled: false,
    #           kms_key_id: "KmsKeyId"
    #         },
    #         status: { # required
    #           creation_date: Time.now, # required
    #           update_date: Time.now, # required
    #           update_version: 1,
    #           state: "RequiresIndexDocuments" # One of: ["RequiresIndexDocuments", "Processing", "Active"], # required
    #           pending_deletion: false
    #         }
    #       },
    #       node_to_node_encryption_options: {
    #         options: { # required
    #           enabled: false
    #         },
    #         status: { # required
    #           creation_date: Time.now, # required
    #           update_date: Time.now, # required
    #           update_version: 1,
    #           state: "RequiresIndexDocuments" # One of: ["RequiresIndexDocuments", "Processing", "Active"], # required
    #           pending_deletion: false
    #         }
    #       },
    #       advanced_options: {
    #         options: { # required
    #           "String" => "String"
    #         },
    #         status: { # required
    #           creation_date: Time.now, # required
    #           update_date: Time.now, # required
    #           update_version: 1,
    #           state: "RequiresIndexDocuments" # One of: ["RequiresIndexDocuments", "Processing", "Active"], # required
    #           pending_deletion: false
    #         }
    #       },
    #       log_publishing_options: {
    #         options: {
    #           "LogType" => {
    #             cloud_watch_logs_log_group_arn: "CloudWatchLogsLogGroupArn",
    #             enabled: false
    #           }
    #         },
    #         status: {
    #           creation_date: Time.now, # required
    #           update_date: Time.now, # required
    #           update_version: 1,
    #           state: "RequiresIndexDocuments" # One of: ["RequiresIndexDocuments", "Processing", "Active"], # required
    #           pending_deletion: false
    #         }
    #       },
    #       domain_endpoint_options: {
    #         options: { # required
    #           enforce_https: false,
    #           tls_security_policy: "Policy-Min-TLS-1-0-2019-07" # One of: ["Policy-Min-TLS-1-0-2019-07", "Policy-Min-TLS-1-2-2019-07", "Policy-Min-TLS-1-2-PFS-2023-10"],
    #           custom_endpoint_enabled: false,
    #           custom_endpoint: "DomainNameFqdn",
    #           custom_endpoint_certificate_arn: "ARN"
    #         },
    #         status: { # required
    #           creation_date: Time.now, # required
    #           update_date: Time.now, # required
    #           update_version: 1,
    #           state: "RequiresIndexDocuments" # One of: ["RequiresIndexDocuments", "Processing", "Active"], # required
    #           pending_deletion: false
    #         }
    #       },
    #       advanced_security_options: {
    #         options: { # required
    #           enabled: false,
    #           internal_user_database_enabled: false,
    #           saml_options: {
    #             enabled: false,
    #             idp: {
    #               metadata_content: "SAMLMetadata", # required
    #               entity_id: "SAMLEntityId", # required
    #             },
    #             subject_key: "String",
    #             roles_key: "String",
    #             session_timeout_minutes: 1
    #           },
    #           anonymous_auth_disable_date: Time.now,
    #           anonymous_auth_enabled: false
    #         },
    #         status: { # required
    #           creation_date: Time.now, # required
    #           update_date: Time.now, # required
    #           update_version: 1,
    #           state: "RequiresIndexDocuments" # One of: ["RequiresIndexDocuments", "Processing", "Active"], # required
    #           pending_deletion: false
    #         }
    #       },
    #       auto_tune_options: {
    #         options: {
    #           desired_state: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #           rollback_on_disable: "NO_ROLLBACK" # One of: ["NO_ROLLBACK", "DEFAULT_ROLLBACK"],
    #           maintenance_schedules: [
    #             {
    #               start_at: Time.now,
    #               duration: {
    #                 value: 1,
    #                 unit: "HOURS" # One of: ["HOURS"]
    #               },
    #               cron_expression_for_recurrence: "String"
    #             }
    #           ]
    #         },
    #         status: {
    #           creation_date: Time.now, # required
    #           update_date: Time.now, # required
    #           update_version: 1,
    #           state: "ENABLED" # One of: ["ENABLED", "DISABLED", "ENABLE_IN_PROGRESS", "DISABLE_IN_PROGRESS", "DISABLED_AND_ROLLBACK_SCHEDULED", "DISABLED_AND_ROLLBACK_IN_PROGRESS", "DISABLED_AND_ROLLBACK_COMPLETE", "DISABLED_AND_ROLLBACK_ERROR", "ERROR"], # required
    #           error_message: "String",
    #           pending_deletion: false
    #         }
    #       },
    #       change_progress_details: {
    #         change_id: "GUID",
    #         message: "Message",
    #         config_change_status: "Pending" # One of: ["Pending", "Initializing", "Validating", "ValidationFailed", "ApplyingChanges", "Completed", "PendingUserInput", "Cancelled"],
    #         start_time: Time.now,
    #         last_updated_time: Time.now,
    #         initiated_by: "CUSTOMER" # One of: ["CUSTOMER", "SERVICE"]
    #       },
    #       modifying_properties: [
    #         {
    #           name: "String",
    #           active_value: "String",
    #           pending_value: "String",
    #           value_type: "PLAIN_TEXT" # One of: ["PLAIN_TEXT", "STRINGIFIED_JSON"]
    #         }
    #       ]
    #     },
    #     dry_run_results: {
    #       deployment_type: "DeploymentType",
    #       message: "Message"
    #     }
    #   }
    # @return [Types::UpdateElasticsearchDomainConfigResponse]
    def update_elasticsearch_domain_config(params = {}, options = {})
      request = build_request(:update_elasticsearch_domain_config, params)
      request.send_request(options)
    end

    # <p>Updates a package for use with Amazon ES domains.</p>
    # @param [Hash, Types::UpdatePackageRequest] params
    # @option params [String] :package_id
    #   <p>Unique identifier for the package.</p>
    # @option params [Types::PackageSource] :package_source
    #   <p>The S3 location for importing the package specified as <code>S3BucketName</code> and <code>S3Key</code></p>
    # @option params [String] :package_description
    #   <p>New description of the package.</p>
    # @option params [String] :commit_message
    #   <p>An info message for the new version which will be shown as part of <code>GetPackageVersionHistoryResponse</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     package_id: "PackageID", # required
    #     package_source: { # required
    #       s3_bucket_name: "S3BucketName",
    #       s3_key: "S3Key"
    #     },
    #     package_description: "PackageDescription",
    #     commit_message: "CommitMessage"
    #   }
    #   options = {}
    #   response = client.update_package(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     package_details: {
    #       package_id: "PackageID",
    #       package_name: "PackageName",
    #       package_type: "TXT-DICTIONARY" # One of: ["TXT-DICTIONARY"],
    #       package_description: "PackageDescription",
    #       package_status: "COPYING" # One of: ["COPYING", "COPY_FAILED", "VALIDATING", "VALIDATION_FAILED", "AVAILABLE", "DELETING", "DELETED", "DELETE_FAILED"],
    #       created_at: Time.now,
    #       last_updated_at: Time.now,
    #       available_package_version: "PackageVersion",
    #       error_details: {
    #         error_type: "ErrorType",
    #         error_message: "ErrorMessage"
    #       }
    #     }
    #   }
    # @return [Types::UpdatePackageResponse]
    def update_package(params = {}, options = {})
      request = build_request(:update_package, params)
      request.send_request(options)
    end

    # <p>Modifies an Amazon OpenSearch Service-managed interface VPC endpoint.</p>
    # @param [Hash, Types::UpdateVpcEndpointRequest] params
    # @option params [String] :vpc_endpoint_id
    #   <p>Unique identifier of the VPC endpoint to be updated.</p>
    # @option params [Types::VPCOptions] :vpc_options
    #   <p>The security groups and/or subnets to add, remove, or modify.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     vpc_endpoint_id: "VpcEndpointId", # required
    #     vpc_options: { # required
    #       subnet_ids: ["String"],
    #       security_group_ids: ["String"]
    #     }
    #   }
    #   options = {}
    #   response = client.update_vpc_endpoint(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     vpc_endpoint: { # required
    #       vpc_endpoint_id: "VpcEndpointId",
    #       vpc_endpoint_owner: "AWSAccount",
    #       domain_arn: "DomainArn",
    #       vpc_options: {
    #         vpc_id: "String",
    #         subnet_ids: ["String"],
    #         availability_zones: ["String"],
    #         security_group_ids: ["String"]
    #       },
    #       status: "CREATING" # One of: ["CREATING", "CREATE_FAILED", "ACTIVE", "UPDATING", "UPDATE_FAILED", "DELETING", "DELETE_FAILED"],
    #       endpoint: "Endpoint"
    #     }
    #   }
    # @return [Types::UpdateVpcEndpointResponse]
    def update_vpc_endpoint(params = {}, options = {})
      request = build_request(:update_vpc_endpoint, params)
      request.send_request(options)
    end

    # <p>Allows you to either upgrade your domain or perform an Upgrade eligibility check to a compatible Elasticsearch version.</p>
    # @param [Hash, Types::UpgradeElasticsearchDomainRequest] params
    # @option params [String] :domain_name
    #   <p>The name of an Elasticsearch domain. Domain names are unique across the domains owned by an account within an AWS region. Domain names start with a letter or number and can contain the following characters: a-z (lowercase), 0-9, and - (hyphen).</p>
    # @option params [String] :target_version
    #   <p>The version of Elasticsearch that you intend to upgrade the domain to.</p>
    # @option params [Boolean] :perform_check_only
    #   <p>
    #         This flag, when set to True, indicates that an Upgrade Eligibility Check needs to be performed.
    #         This will not actually perform the Upgrade.
    #       </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "DomainName", # required
    #     target_version: "ElasticsearchVersionString", # required
    #     perform_check_only: false
    #   }
    #   options = {}
    #   response = client.upgrade_elasticsearch_domain(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain_name: "DomainName",
    #     target_version: "ElasticsearchVersionString",
    #     perform_check_only: false,
    #     change_progress_details: {
    #       change_id: "GUID",
    #       message: "Message",
    #       config_change_status: "Pending" # One of: ["Pending", "Initializing", "Validating", "ValidationFailed", "ApplyingChanges", "Completed", "PendingUserInput", "Cancelled"],
    #       start_time: Time.now,
    #       last_updated_time: Time.now,
    #       initiated_by: "CUSTOMER" # One of: ["CUSTOMER", "SERVICE"]
    #     }
    #   }
    # @return [Types::UpgradeElasticsearchDomainResponse]
    def upgrade_elasticsearch_domain(params = {}, options = {})
      request = build_request(:upgrade_elasticsearch_domain, params)
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
      context[:gem_name] = 'aws-sdk-elasticsearchservice'
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
