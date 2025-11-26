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
require 'aws-sdk-core/plugins/global_configuration'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/rest_json_protocol'
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/sigv4'

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:opensearch)

module Aws::OpenSearch
  # An API client for Aws::OpenSearch.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AmazonOpenSearchService
    @identifier = :opensearch

    add_plugin(::Aws::OpenSearch::Plugins::Endpoint)
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
    add_plugin(Aws::Core::Plugins::GlobalConfiguration)
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
    add_plugin(Aws::Core::Plugins::RestJsonProtocol)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::OpenSearch::EndpointProvider)
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
    # @option options [#call(attempts)] :retry_backoff (Smithy::Client::Retry::ExponentialBackoff.new)
    #  A callable object that calculates a backoff delay for a retry attempt. The callable
    #  should accept a single argument, `attempts`, that represents the number of attempts
    #  that have been made. Used in the `standard` and `adaptive` retry strategies.
    # @option options :retry_base_delay (2)
    #  The base delay, in seconds, used to calculate the exponential backoff for
    #  retry attempts. This option is ignored if a custom `retry_backoff` is provided.
    #  Used in the `standard` and `adaptive` retry strategies.
    # @option options [Integer] :retry_max_attempts (3)
    #  The maximum number attempts that will be made for a single request, including
    #  the initial attempt. Used in the `standard` and `adaptive` retry strategies.
    # @option options :retry_max_delay (20)
    #  The maximum delay, in seconds, between retry attempts. This option is ignored
    #  if a custom `retry_backoff` is provided. Used in the `standard` and `adaptive`
    #  retry strategies.
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
    #  to return or errors to raise by calling {Smithy::Client::Stubs#stub_responses}.
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

    # <p>Allows the destination Amazon OpenSearch Service domain owner to accept an inbound
    #    cross-cluster search connection request. For more information, see <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/cross-cluster-search.html">Cross-cluster search
    #     for Amazon OpenSearch Service</a>.</p>
    # @param [Hash, Types::AcceptInboundConnectionRequest] params
    # @option params [String] :connection_id
    #   <p>The ID of the inbound connection to accept.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     connection_id: "ConnectionId", # required
    #   }
    #   options = {}
    #   response = client.accept_inbound_connection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     connection: {
    #       local_domain_info: {
    #         aws_domain_information: {
    #           owner_id: "OwnerId",
    #           domain_name: "DomainName", # required
    #           region: "Region"
    #         }
    #       },
    #       remote_domain_info: {
    #         aws_domain_information: {
    #           owner_id: "OwnerId",
    #           domain_name: "DomainName", # required
    #           region: "Region"
    #         }
    #       },
    #       connection_id: "ConnectionId",
    #       connection_status: {
    #         status_code: "PENDING_ACCEPTANCE" # One of: ["PENDING_ACCEPTANCE", "APPROVED", "PROVISIONING", "ACTIVE", "REJECTING", "REJECTED", "DELETING", "DELETED"],
    #         message: "ConnectionStatusMessage"
    #       },
    #       connection_mode: "DIRECT" # One of: ["DIRECT", "VPC_ENDPOINT"]
    #     }
    #   }
    # @return [Types::AcceptInboundConnectionResponse]
    def accept_inbound_connection(params = {}, options = {})
      request = build_request(:accept_inbound_connection, params)
      request.send_request(options)
    end

    # <p>Creates a new direct-query data source to the specified domain. For more information, see
    #    <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/direct-query-s3-creating.html">Creating Amazon OpenSearch Service data source integrations with Amazon S3</a>.</p>
    # @param [Hash, Types::AddDataSourceRequest] params
    # @option params [String] :domain_name
    #   <p>The name of the domain to add the data source to.</p>
    # @option params [String] :name
    #   <p>A name for the data source.</p>
    # @option params [Types::DataSourceType] :data_source_type
    #   <p>The type of data source.</p>
    # @option params [String] :description
    #   <p>A description of the data source.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "DomainName", # required
    #     name: "DataSourceName", # required
    #     data_source_type: { # required
    #       # One of:
    #       s3_glue_data_catalog: {
    #         role_arn: "RoleArn"
    #       }
    #     },
    #     description: "DataSourceDescription"
    #   }
    #   options = {}
    #   response = client.add_data_source(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     message: "String"
    #   }
    # @return [Types::AddDataSourceResponse]
    def add_data_source(params = {}, options = {})
      request = build_request(:add_data_source, params)
      request.send_request(options)
    end

    # <p>
    #    Adds a new data source in Amazon OpenSearch Service 
    #    so that you can perform direct queries on external data.
    #   </p>
    # @param [Hash, Types::AddDirectQueryDataSourceRequest] params
    # @option params [String] :data_source_name
    #   <p>
    #      A unique, user-defined label to identify the data source 
    #      within your OpenSearch Service environment.
    #     </p>
    # @option params [Types::DirectQueryDataSourceType] :data_source_type
    #   <p>
    #      The supported Amazon Web Services service that you want to use as the source for direct queries in OpenSearch Service.
    #     </p>
    # @option params [String] :description
    #   <p>
    #      An optional text field for providing additional context and details about the data source.
    #     </p>
    # @option params [Array<String>] :open_search_arns
    #   <p>
    #      A list of Amazon Resource Names (ARNs) for the OpenSearch 
    #      collections that are associated with the direct query data source.
    #     </p>
    # @option params [Array<Types::Tag>] :tag_list
    #   <p>A list of tags attached to a domain.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     data_source_name: "DirectQueryDataSourceName", # required
    #     data_source_type: { # required
    #       # One of:
    #       cloud_watch_log: {
    #         role_arn: "DirectQueryDataSourceRoleArn", # required
    #       },
    #       security_lake: {
    #         role_arn: "DirectQueryDataSourceRoleArn", # required
    #       }
    #     },
    #     description: "DirectQueryDataSourceDescription",
    #     open_search_arns: ["ARN"], # required
    #     tag_list: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.add_direct_query_data_source(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     data_source_arn: "String"
    #   }
    # @return [Types::AddDirectQueryDataSourceResponse]
    def add_direct_query_data_source(params = {}, options = {})
      request = build_request(:add_direct_query_data_source, params)
      request.send_request(options)
    end

    # <p>Attaches tags to an existing Amazon OpenSearch Service domain, data source, or application. </p>
    #          <p>Tags are a set of case-sensitive key-value pairs. A domain, data source, or application can
    #    have up to 10 tags. For more information, see <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/managedomains-awsresourcetagging.html">Tagging
    #     Amazon OpenSearch Service resources</a>. </p>
    # @param [Hash, Types::AddTagsRequest] params
    # @option params [String] :arn
    #   <p>Amazon Resource Name (ARN) for the OpenSearch Service domain, data source, or application to
    #      which you want to attach resource tags.</p>
    # @option params [Array<Types::Tag>] :tag_list
    #   <p>List of resource tags.</p>
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

    # <p>Associates a package with an Amazon OpenSearch Service domain. For more information, see
    #     <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/custom-packages.html">Custom packages
    #     for Amazon OpenSearch Service</a>.</p>
    # @param [Hash, Types::AssociatePackageRequest] params
    # @option params [String] :package_id
    #   <p>Internal ID of the package to associate with a domain. Use <code>DescribePackages</code> to find this value.
    #     </p>
    # @option params [String] :domain_name
    #   <p>Name of the domain to associate the package with.</p>
    # @option params [Array<String>] :prerequisite_package_id_list
    #   <p>A list of package IDs that must be associated with the domain before the package specified in the request can be associated.</p>
    # @option params [Types::PackageAssociationConfiguration] :association_configuration
    #   <p>The configuration for associating a package with an Amazon OpenSearch Service domain.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     package_id: "PackageID", # required
    #     domain_name: "DomainName", # required
    #     prerequisite_package_id_list: ["PackageID"],
    #     association_configuration: {
    #       key_store_access_option: {
    #         key_access_role_arn: "RoleArn",
    #         key_store_access_enabled: false, # required
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.associate_package(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain_package_details: {
    #       package_id: "PackageID",
    #       package_name: "PackageName",
    #       package_type: "TXT-DICTIONARY" # One of: ["TXT-DICTIONARY", "ZIP-PLUGIN", "PACKAGE-LICENSE", "PACKAGE-CONFIG"],
    #       last_updated: Time.now,
    #       domain_name: "DomainName",
    #       domain_package_status: "ASSOCIATING" # One of: ["ASSOCIATING", "ASSOCIATION_FAILED", "ACTIVE", "DISSOCIATING", "DISSOCIATION_FAILED"],
    #       package_version: "PackageVersion",
    #       prerequisite_package_id_list: ["PackageID"],
    #       reference_path: "ReferencePath",
    #       error_details: {
    #         error_type: "ErrorType",
    #         error_message: "ErrorMessage"
    #       },
    #       association_configuration: {
    #         key_store_access_option: {
    #           key_access_role_arn: "RoleArn",
    #           key_store_access_enabled: false, # required
    #         }
    #       }
    #     }
    #   }
    # @return [Types::AssociatePackageResponse]
    def associate_package(params = {}, options = {})
      request = build_request(:associate_package, params)
      request.send_request(options)
    end

    # <p>Operation in the Amazon OpenSearch Service API for associating  multiple packages with a domain simultaneously.</p>
    # @param [Hash, Types::AssociatePackagesRequest] params
    # @option params [Array<Types::PackageDetailsForAssociation>] :package_list
    #   <p>A list of packages and their prerequisites to be associated with a domain.</p>
    # @option params [String] :domain_name
    #   <p>The name of an OpenSearch Service domain. Domain names are unique across the domains owned
    #      by an account within an Amazon Web Services Region.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     package_list: [ # required
    #       {
    #         package_id: "PackageID", # required
    #         prerequisite_package_id_list: ["PackageID"],
    #         association_configuration: {
    #           key_store_access_option: {
    #             key_access_role_arn: "RoleArn",
    #             key_store_access_enabled: false, # required
    #           }
    #         }
    #       }
    #     ],
    #     domain_name: "DomainName", # required
    #   }
    #   options = {}
    #   response = client.associate_packages(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain_package_details_list: [
    #       {
    #         package_id: "PackageID",
    #         package_name: "PackageName",
    #         package_type: "TXT-DICTIONARY" # One of: ["TXT-DICTIONARY", "ZIP-PLUGIN", "PACKAGE-LICENSE", "PACKAGE-CONFIG"],
    #         last_updated: Time.now,
    #         domain_name: "DomainName",
    #         domain_package_status: "ASSOCIATING" # One of: ["ASSOCIATING", "ASSOCIATION_FAILED", "ACTIVE", "DISSOCIATING", "DISSOCIATION_FAILED"],
    #         package_version: "PackageVersion",
    #         prerequisite_package_id_list: ["PackageID"],
    #         reference_path: "ReferencePath",
    #         error_details: {
    #           error_type: "ErrorType",
    #           error_message: "ErrorMessage"
    #         },
    #         association_configuration: {
    #           key_store_access_option: {
    #             key_access_role_arn: "RoleArn",
    #             key_store_access_enabled: false, # required
    #           }
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::AssociatePackagesResponse]
    def associate_packages(params = {}, options = {})
      request = build_request(:associate_packages, params)
      request.send_request(options)
    end

    # <p>Provides access to an Amazon OpenSearch Service domain through the use of an interface VPC
    #    endpoint.</p>
    # @param [Hash, Types::AuthorizeVpcEndpointAccessRequest] params
    # @option params [String] :domain_name
    #   <p>The name of the OpenSearch Service domain to provide access to.</p>
    # @option params [String] :account
    #   <p>The Amazon Web Services account ID to grant access to.</p>
    # @option params [String] :service
    #   <p>The Amazon Web Services service SP to grant access to.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "DomainName", # required
    #     account: "AWSAccount",
    #     service: "application.opensearchservice.amazonaws.com" # One of: ["application.opensearchservice.amazonaws.com"]
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
    #   <p>The name of an OpenSearch Service domain. Domain names are unique across the domains owned
    #      by an account within an Amazon Web Services Region.</p>
    # @option params [Boolean] :dry_run
    #   <p>When set to <code>True</code>, returns the list of change IDs and properties that will be cancelled without actually cancelling the change.</p>
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
    #     cancelled_change_ids: ["GUID"],
    #     cancelled_change_properties: [
    #       {
    #         property_name: "String",
    #         cancelled_value: "String",
    #         active_value: "String"
    #       }
    #     ],
    #     dry_run: false
    #   }
    # @return [Types::CancelDomainConfigChangeResponse]
    def cancel_domain_config_change(params = {}, options = {})
      request = build_request(:cancel_domain_config_change, params)
      request.send_request(options)
    end

    # <p>Cancels a scheduled service software update for an Amazon OpenSearch Service domain. You can
    #    only perform this operation before the <code>AutomatedUpdateDate</code> and when the domain's
    #     <code>UpdateStatus</code> is <code>PENDING_UPDATE</code>. For more information, see <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/service-software.html">Service software updates in Amazon OpenSearch Service</a>.</p>
    # @param [Hash, Types::CancelServiceSoftwareUpdateRequest] params
    # @option params [String] :domain_name
    #   <p>Name of the OpenSearch Service domain that you want to cancel the service software update
    #      on.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "DomainName", # required
    #   }
    #   options = {}
    #   response = client.cancel_service_software_update(params, options)
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
    # @return [Types::CancelServiceSoftwareUpdateResponse]
    def cancel_service_software_update(params = {}, options = {})
      request = build_request(:cancel_service_software_update, params)
      request.send_request(options)
    end

    # <p>Creates an OpenSearch UI application. For more information, see <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/application.html">Using the OpenSearch user interface in Amazon OpenSearch Service</a>.</p>
    # @param [Hash, Types::CreateApplicationRequest] params
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier to ensure idempotency of the request.</p>
    # @option params [String] :name
    #   <p>The unique name of the OpenSearch application. Names must be unique within an Amazon Web Services Region for each account.</p>
    # @option params [Array<Types::DataSource>] :data_sources
    #   <p>The data sources to link to the OpenSearch application.</p>
    # @option params [Types::IamIdentityCenterOptionsInput] :iam_identity_center_options
    #   <p>Configuration settings for integrating Amazon Web Services IAM Identity Center with the OpenSearch application.</p>
    # @option params [Array<Types::AppConfig>] :app_configs
    #   <p>Configuration settings for the OpenSearch application, including administrative options.</p>
    # @option params [Array<Types::Tag>] :tag_list
    #   <p>A list of tags attached to a domain.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "ClientToken",
    #     name: "ApplicationName", # required
    #     data_sources: [
    #       {
    #         data_source_arn: "ARN",
    #         data_source_description: "DataSourceDescription"
    #       }
    #     ],
    #     iam_identity_center_options: {
    #       enabled: false,
    #       iam_identity_center_instance_arn: "ARN",
    #       iam_role_for_identity_center_application_arn: "RoleArn"
    #     },
    #     app_configs: [
    #       {
    #         key: "opensearchDashboards.dashboardAdmin.users" # One of: ["opensearchDashboards.dashboardAdmin.users", "opensearchDashboards.dashboardAdmin.groups"],
    #         value: "AppConfigValue"
    #       }
    #     ],
    #     tag_list: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_application(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "Id",
    #     name: "ApplicationName",
    #     arn: "ARN",
    #     data_sources: [
    #       {
    #         data_source_arn: "ARN",
    #         data_source_description: "DataSourceDescription"
    #       }
    #     ],
    #     iam_identity_center_options: {
    #       enabled: false,
    #       iam_identity_center_instance_arn: "ARN",
    #       iam_role_for_identity_center_application_arn: "RoleArn",
    #       iam_identity_center_application_arn: "ARN"
    #     },
    #     app_configs: [
    #       {
    #         key: "opensearchDashboards.dashboardAdmin.users" # One of: ["opensearchDashboards.dashboardAdmin.users", "opensearchDashboards.dashboardAdmin.groups"],
    #         value: "AppConfigValue"
    #       }
    #     ],
    #     tag_list: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     created_at: Time.now
    #   }
    # @return [Types::CreateApplicationResponse]
    def create_application(params = {}, options = {})
      request = build_request(:create_application, params)
      request.send_request(options)
    end

    # <p>Creates an Amazon OpenSearch Service domain. For more information, see <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/createupdatedomains.html">Creating and managing Amazon OpenSearch Service domains</a>.</p>
    # @param [Hash, Types::CreateDomainRequest] params
    # @option params [String] :domain_name
    #   <p>Name of the OpenSearch Service domain to create. Domain names are unique across the domains
    #      owned by an account within an Amazon Web Services Region.</p>
    # @option params [String] :engine_version
    #   <p>String of format Elasticsearch_X.Y or OpenSearch_X.Y to specify the engine version for the
    #      OpenSearch Service domain. For example, <code>OpenSearch_1.0</code> or
    #       <code>Elasticsearch_7.9</code>. For more information, see <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/createupdatedomains.html#createdomains">Creating
    #       and managing Amazon OpenSearch Service domains</a>.</p>
    # @option params [Types::ClusterConfig] :cluster_config
    #   <p>Container for the cluster configuration of a domain.</p>
    # @option params [Types::EBSOptions] :ebs_options
    #   <p>Container for the parameters required to enable EBS-based storage for an OpenSearch Service
    #      domain.</p>
    # @option params [String] :access_policies
    #   <p>Identity and Access Management (IAM) policy document specifying the access policies for the
    #      new domain.</p>
    # @option params [String] :ip_address_type
    #   <p>Specify either dual stack or IPv4 as your IP address type. Dual stack allows you to share
    #      domain resources across IPv4 and IPv6 address types, and is the recommended option. 
    #      If you set your IP address type to dual stack, you can't change your address type later.</p>
    # @option params [Types::SnapshotOptions] :snapshot_options
    #   <p>DEPRECATED. Container for the parameters required to configure automated snapshots of domain
    #      indexes.</p>
    # @option params [Types::VPCOptions] :vpc_options
    #   <p>Container for the values required to configure VPC access domains. If you don't specify
    #      these values, OpenSearch Service creates the domain with a public endpoint. For more information,
    #      see <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/vpc.html">Launching
    #       your Amazon OpenSearch Service domains using a VPC</a>.</p>
    # @option params [Types::CognitoOptions] :cognito_options
    #   <p>Key-value pairs to configure Amazon Cognito authentication. For more information, see <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/cognito-auth.html">Configuring Amazon Cognito authentication for OpenSearch Dashboards</a>.</p>
    # @option params [Types::EncryptionAtRestOptions] :encryption_at_rest_options
    #   <p>Key-value pairs to enable encryption at rest.</p>
    # @option params [Types::NodeToNodeEncryptionOptions] :node_to_node_encryption_options
    #   <p>Enables node-to-node encryption.</p>
    # @option params [Hash<String, String>] :advanced_options
    #   <p>Key-value pairs to specify advanced configuration options. The following key-value pairs are
    #      supported:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>"rest.action.multi.allow_explicit_index": "true" | "false"</code> - Note the use of
    #        a string rather than a boolean. Specifies whether explicit references to indexes are allowed
    #        inside the body of HTTP requests. If you want to configure access policies for domain
    #        sub-resources, such as specific indexes and domain APIs, you must disable this property.
    #        Default is true.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"indices.fielddata.cache.size": "80" </code> - Note the use of a string rather than
    #        a boolean. Specifies the percentage of heap space allocated to field data. Default is
    #        unbounded.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"indices.query.bool.max_clause_count": "1024"</code> - Note the use of a string
    #        rather than a boolean. Specifies the maximum number of clauses allowed in a Lucene boolean
    #        query. Default is 1,024. Queries with more than the permitted number of clauses result in a
    #         <code>TooManyClauses</code> error.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"override_main_response_version": "true" | "false"</code> - Note the use of a string
    #        rather than a boolean. Specifies whether the domain reports its version as 7.10 to allow
    #        Elasticsearch OSS clients and plugins to continue working with it. Default is false when
    #        creating a domain and true when upgrading a domain.</p>
    #               </li>
    #            </ul>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/createupdatedomains.html#createdomain-configure-advanced-options">Advanced cluster parameters</a>.</p>
    # @option params [Hash<String, Types::LogPublishingOption>] :log_publishing_options
    #   <p>Key-value pairs to configure log publishing.</p>
    # @option params [Types::DomainEndpointOptions] :domain_endpoint_options
    #   <p>Additional options for the domain endpoint, such as whether to require HTTPS for all
    #      traffic.</p>
    # @option params [Types::AdvancedSecurityOptionsInput] :advanced_security_options
    #   <p>Options for fine-grained access control.</p>
    # @option params [Types::IdentityCenterOptionsInput] :identity_center_options
    #   <p>Configuration options for enabling and managing IAM Identity Center integration within a domain.</p>
    # @option params [Array<Types::Tag>] :tag_list
    #   <p>List of tags to add to the domain upon creation.</p>
    # @option params [Types::AutoTuneOptionsInput] :auto_tune_options
    #   <p>Options for Auto-Tune.</p>
    # @option params [Types::OffPeakWindowOptions] :off_peak_window_options
    #   <p>Specifies a daily 10-hour time block during which OpenSearch Service can perform
    #      configuration changes on the domain, including service software updates and Auto-Tune
    #      enhancements that require a blue/green deployment. If no options are specified, the default start
    #      time of 10:00 P.M. local time (for the Region that the domain is created in) is used.</p>
    # @option params [Types::SoftwareUpdateOptions] :software_update_options
    #   <p>Software update options for the domain.</p>
    # @option params [Types::AIMLOptionsInput] :aiml_options
    #   <p>Options for all machine learning features for the specified domain.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "DomainName", # required
    #     engine_version: "VersionString",
    #     cluster_config: {
    #       instance_type: "m3.medium.search" # One of: ["m3.medium.search", "m3.large.search", "m3.xlarge.search", "m3.2xlarge.search", "m4.large.search", "m4.xlarge.search", "m4.2xlarge.search", "m4.4xlarge.search", "m4.10xlarge.search", "m5.large.search", "m5.xlarge.search", "m5.2xlarge.search", "m5.4xlarge.search", "m5.12xlarge.search", "m5.24xlarge.search", "r5.large.search", "r5.xlarge.search", "r5.2xlarge.search", "r5.4xlarge.search", "r5.12xlarge.search", "r5.24xlarge.search", "c5.large.search", "c5.xlarge.search", "c5.2xlarge.search", "c5.4xlarge.search", "c5.9xlarge.search", "c5.18xlarge.search", "t3.nano.search", "t3.micro.search", "t3.small.search", "t3.medium.search", "t3.large.search", "t3.xlarge.search", "t3.2xlarge.search", "or1.medium.search", "or1.large.search", "or1.xlarge.search", "or1.2xlarge.search", "or1.4xlarge.search", "or1.8xlarge.search", "or1.12xlarge.search", "or1.16xlarge.search", "ultrawarm1.medium.search", "ultrawarm1.large.search", "ultrawarm1.xlarge.search", "t2.micro.search", "t2.small.search", "t2.medium.search", "r3.large.search", "r3.xlarge.search", "r3.2xlarge.search", "r3.4xlarge.search", "r3.8xlarge.search", "i2.xlarge.search", "i2.2xlarge.search", "d2.xlarge.search", "d2.2xlarge.search", "d2.4xlarge.search", "d2.8xlarge.search", "c4.large.search", "c4.xlarge.search", "c4.2xlarge.search", "c4.4xlarge.search", "c4.8xlarge.search", "r4.large.search", "r4.xlarge.search", "r4.2xlarge.search", "r4.4xlarge.search", "r4.8xlarge.search", "r4.16xlarge.search", "i3.large.search", "i3.xlarge.search", "i3.2xlarge.search", "i3.4xlarge.search", "i3.8xlarge.search", "i3.16xlarge.search", "r6g.large.search", "r6g.xlarge.search", "r6g.2xlarge.search", "r6g.4xlarge.search", "r6g.8xlarge.search", "r6g.12xlarge.search", "m6g.large.search", "m6g.xlarge.search", "m6g.2xlarge.search", "m6g.4xlarge.search", "m6g.8xlarge.search", "m6g.12xlarge.search", "c6g.large.search", "c6g.xlarge.search", "c6g.2xlarge.search", "c6g.4xlarge.search", "c6g.8xlarge.search", "c6g.12xlarge.search", "r6gd.large.search", "r6gd.xlarge.search", "r6gd.2xlarge.search", "r6gd.4xlarge.search", "r6gd.8xlarge.search", "r6gd.12xlarge.search", "r6gd.16xlarge.search", "t4g.small.search", "t4g.medium.search"],
    #       instance_count: 1,
    #       dedicated_master_enabled: false,
    #       zone_awareness_enabled: false,
    #       zone_awareness_config: {
    #         availability_zone_count: 1
    #       },
    #       dedicated_master_type: "m3.medium.search" # One of: ["m3.medium.search", "m3.large.search", "m3.xlarge.search", "m3.2xlarge.search", "m4.large.search", "m4.xlarge.search", "m4.2xlarge.search", "m4.4xlarge.search", "m4.10xlarge.search", "m5.large.search", "m5.xlarge.search", "m5.2xlarge.search", "m5.4xlarge.search", "m5.12xlarge.search", "m5.24xlarge.search", "r5.large.search", "r5.xlarge.search", "r5.2xlarge.search", "r5.4xlarge.search", "r5.12xlarge.search", "r5.24xlarge.search", "c5.large.search", "c5.xlarge.search", "c5.2xlarge.search", "c5.4xlarge.search", "c5.9xlarge.search", "c5.18xlarge.search", "t3.nano.search", "t3.micro.search", "t3.small.search", "t3.medium.search", "t3.large.search", "t3.xlarge.search", "t3.2xlarge.search", "or1.medium.search", "or1.large.search", "or1.xlarge.search", "or1.2xlarge.search", "or1.4xlarge.search", "or1.8xlarge.search", "or1.12xlarge.search", "or1.16xlarge.search", "ultrawarm1.medium.search", "ultrawarm1.large.search", "ultrawarm1.xlarge.search", "t2.micro.search", "t2.small.search", "t2.medium.search", "r3.large.search", "r3.xlarge.search", "r3.2xlarge.search", "r3.4xlarge.search", "r3.8xlarge.search", "i2.xlarge.search", "i2.2xlarge.search", "d2.xlarge.search", "d2.2xlarge.search", "d2.4xlarge.search", "d2.8xlarge.search", "c4.large.search", "c4.xlarge.search", "c4.2xlarge.search", "c4.4xlarge.search", "c4.8xlarge.search", "r4.large.search", "r4.xlarge.search", "r4.2xlarge.search", "r4.4xlarge.search", "r4.8xlarge.search", "r4.16xlarge.search", "i3.large.search", "i3.xlarge.search", "i3.2xlarge.search", "i3.4xlarge.search", "i3.8xlarge.search", "i3.16xlarge.search", "r6g.large.search", "r6g.xlarge.search", "r6g.2xlarge.search", "r6g.4xlarge.search", "r6g.8xlarge.search", "r6g.12xlarge.search", "m6g.large.search", "m6g.xlarge.search", "m6g.2xlarge.search", "m6g.4xlarge.search", "m6g.8xlarge.search", "m6g.12xlarge.search", "c6g.large.search", "c6g.xlarge.search", "c6g.2xlarge.search", "c6g.4xlarge.search", "c6g.8xlarge.search", "c6g.12xlarge.search", "r6gd.large.search", "r6gd.xlarge.search", "r6gd.2xlarge.search", "r6gd.4xlarge.search", "r6gd.8xlarge.search", "r6gd.12xlarge.search", "r6gd.16xlarge.search", "t4g.small.search", "t4g.medium.search"],
    #       dedicated_master_count: 1,
    #       warm_enabled: false,
    #       warm_type: "ultrawarm1.medium.search" # One of: ["ultrawarm1.medium.search", "ultrawarm1.large.search", "ultrawarm1.xlarge.search"],
    #       warm_count: 1,
    #       cold_storage_options: {
    #         enabled: false, # required
    #       },
    #       multi_az_with_standby_enabled: false,
    #       node_options: [
    #         {
    #           node_type: "coordinator" # One of: ["coordinator"],
    #           node_config: {
    #             enabled: false,
    #             type: "m3.medium.search" # One of: ["m3.medium.search", "m3.large.search", "m3.xlarge.search", "m3.2xlarge.search", "m4.large.search", "m4.xlarge.search", "m4.2xlarge.search", "m4.4xlarge.search", "m4.10xlarge.search", "m5.large.search", "m5.xlarge.search", "m5.2xlarge.search", "m5.4xlarge.search", "m5.12xlarge.search", "m5.24xlarge.search", "r5.large.search", "r5.xlarge.search", "r5.2xlarge.search", "r5.4xlarge.search", "r5.12xlarge.search", "r5.24xlarge.search", "c5.large.search", "c5.xlarge.search", "c5.2xlarge.search", "c5.4xlarge.search", "c5.9xlarge.search", "c5.18xlarge.search", "t3.nano.search", "t3.micro.search", "t3.small.search", "t3.medium.search", "t3.large.search", "t3.xlarge.search", "t3.2xlarge.search", "or1.medium.search", "or1.large.search", "or1.xlarge.search", "or1.2xlarge.search", "or1.4xlarge.search", "or1.8xlarge.search", "or1.12xlarge.search", "or1.16xlarge.search", "ultrawarm1.medium.search", "ultrawarm1.large.search", "ultrawarm1.xlarge.search", "t2.micro.search", "t2.small.search", "t2.medium.search", "r3.large.search", "r3.xlarge.search", "r3.2xlarge.search", "r3.4xlarge.search", "r3.8xlarge.search", "i2.xlarge.search", "i2.2xlarge.search", "d2.xlarge.search", "d2.2xlarge.search", "d2.4xlarge.search", "d2.8xlarge.search", "c4.large.search", "c4.xlarge.search", "c4.2xlarge.search", "c4.4xlarge.search", "c4.8xlarge.search", "r4.large.search", "r4.xlarge.search", "r4.2xlarge.search", "r4.4xlarge.search", "r4.8xlarge.search", "r4.16xlarge.search", "i3.large.search", "i3.xlarge.search", "i3.2xlarge.search", "i3.4xlarge.search", "i3.8xlarge.search", "i3.16xlarge.search", "r6g.large.search", "r6g.xlarge.search", "r6g.2xlarge.search", "r6g.4xlarge.search", "r6g.8xlarge.search", "r6g.12xlarge.search", "m6g.large.search", "m6g.xlarge.search", "m6g.2xlarge.search", "m6g.4xlarge.search", "m6g.8xlarge.search", "m6g.12xlarge.search", "c6g.large.search", "c6g.xlarge.search", "c6g.2xlarge.search", "c6g.4xlarge.search", "c6g.8xlarge.search", "c6g.12xlarge.search", "r6gd.large.search", "r6gd.xlarge.search", "r6gd.2xlarge.search", "r6gd.4xlarge.search", "r6gd.8xlarge.search", "r6gd.12xlarge.search", "r6gd.16xlarge.search", "t4g.small.search", "t4g.medium.search"],
    #             count: 1
    #           }
    #         }
    #       ]
    #     },
    #     ebs_options: {
    #       ebs_enabled: false,
    #       volume_type: "standard" # One of: ["standard", "gp2", "io1", "gp3"],
    #       volume_size: 1,
    #       iops: 1,
    #       throughput: 1
    #     },
    #     access_policies: "PolicyDocument",
    #     ip_address_type: "ipv4" # One of: ["ipv4", "dualstack"],
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
    #       jwt_options: {
    #         enabled: false,
    #         subject_key: "SubjectKey",
    #         roles_key: "RolesKey",
    #         public_key: "String"
    #       },
    #       iam_federation_options: {
    #         enabled: false,
    #         subject_key: "IAMFederationSubjectKey",
    #         roles_key: "IAMFederationRolesKey"
    #       },
    #       anonymous_auth_enabled: false
    #     },
    #     identity_center_options: {
    #       enabled_api_access: false,
    #       identity_center_instance_arn: "IdentityCenterInstanceARN",
    #       subject_key: "UserName" # One of: ["UserName", "UserId", "Email"],
    #       roles_key: "GroupName" # One of: ["GroupName", "GroupId"]
    #     },
    #     tag_list: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
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
    #       ],
    #       use_off_peak_window: false
    #     },
    #     off_peak_window_options: {
    #       enabled: false,
    #       off_peak_window: {
    #         window_start_time: {
    #           hours: 1, # required
    #           minutes: 1, # required
    #         }
    #       }
    #     },
    #     software_update_options: {
    #       auto_software_update_enabled: false
    #     },
    #     aiml_options: {
    #       natural_language_query_generation_options: {
    #         desired_state: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #       },
    #       s3_vectors_engine: {
    #         enabled: false
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.create_domain(params, options)
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
    #       endpoint_v2: "ServiceUrl",
    #       endpoints: {
    #         "String" => "ServiceUrl"
    #       },
    #       domain_endpoint_v2_hosted_zone_id: "HostedZoneId",
    #       processing: false,
    #       upgrade_processing: false,
    #       engine_version: "VersionString",
    #       cluster_config: { # required
    #         instance_type: "m3.medium.search" # One of: ["m3.medium.search", "m3.large.search", "m3.xlarge.search", "m3.2xlarge.search", "m4.large.search", "m4.xlarge.search", "m4.2xlarge.search", "m4.4xlarge.search", "m4.10xlarge.search", "m5.large.search", "m5.xlarge.search", "m5.2xlarge.search", "m5.4xlarge.search", "m5.12xlarge.search", "m5.24xlarge.search", "r5.large.search", "r5.xlarge.search", "r5.2xlarge.search", "r5.4xlarge.search", "r5.12xlarge.search", "r5.24xlarge.search", "c5.large.search", "c5.xlarge.search", "c5.2xlarge.search", "c5.4xlarge.search", "c5.9xlarge.search", "c5.18xlarge.search", "t3.nano.search", "t3.micro.search", "t3.small.search", "t3.medium.search", "t3.large.search", "t3.xlarge.search", "t3.2xlarge.search", "or1.medium.search", "or1.large.search", "or1.xlarge.search", "or1.2xlarge.search", "or1.4xlarge.search", "or1.8xlarge.search", "or1.12xlarge.search", "or1.16xlarge.search", "ultrawarm1.medium.search", "ultrawarm1.large.search", "ultrawarm1.xlarge.search", "t2.micro.search", "t2.small.search", "t2.medium.search", "r3.large.search", "r3.xlarge.search", "r3.2xlarge.search", "r3.4xlarge.search", "r3.8xlarge.search", "i2.xlarge.search", "i2.2xlarge.search", "d2.xlarge.search", "d2.2xlarge.search", "d2.4xlarge.search", "d2.8xlarge.search", "c4.large.search", "c4.xlarge.search", "c4.2xlarge.search", "c4.4xlarge.search", "c4.8xlarge.search", "r4.large.search", "r4.xlarge.search", "r4.2xlarge.search", "r4.4xlarge.search", "r4.8xlarge.search", "r4.16xlarge.search", "i3.large.search", "i3.xlarge.search", "i3.2xlarge.search", "i3.4xlarge.search", "i3.8xlarge.search", "i3.16xlarge.search", "r6g.large.search", "r6g.xlarge.search", "r6g.2xlarge.search", "r6g.4xlarge.search", "r6g.8xlarge.search", "r6g.12xlarge.search", "m6g.large.search", "m6g.xlarge.search", "m6g.2xlarge.search", "m6g.4xlarge.search", "m6g.8xlarge.search", "m6g.12xlarge.search", "c6g.large.search", "c6g.xlarge.search", "c6g.2xlarge.search", "c6g.4xlarge.search", "c6g.8xlarge.search", "c6g.12xlarge.search", "r6gd.large.search", "r6gd.xlarge.search", "r6gd.2xlarge.search", "r6gd.4xlarge.search", "r6gd.8xlarge.search", "r6gd.12xlarge.search", "r6gd.16xlarge.search", "t4g.small.search", "t4g.medium.search"],
    #         instance_count: 1,
    #         dedicated_master_enabled: false,
    #         zone_awareness_enabled: false,
    #         zone_awareness_config: {
    #           availability_zone_count: 1
    #         },
    #         dedicated_master_type: "m3.medium.search" # One of: ["m3.medium.search", "m3.large.search", "m3.xlarge.search", "m3.2xlarge.search", "m4.large.search", "m4.xlarge.search", "m4.2xlarge.search", "m4.4xlarge.search", "m4.10xlarge.search", "m5.large.search", "m5.xlarge.search", "m5.2xlarge.search", "m5.4xlarge.search", "m5.12xlarge.search", "m5.24xlarge.search", "r5.large.search", "r5.xlarge.search", "r5.2xlarge.search", "r5.4xlarge.search", "r5.12xlarge.search", "r5.24xlarge.search", "c5.large.search", "c5.xlarge.search", "c5.2xlarge.search", "c5.4xlarge.search", "c5.9xlarge.search", "c5.18xlarge.search", "t3.nano.search", "t3.micro.search", "t3.small.search", "t3.medium.search", "t3.large.search", "t3.xlarge.search", "t3.2xlarge.search", "or1.medium.search", "or1.large.search", "or1.xlarge.search", "or1.2xlarge.search", "or1.4xlarge.search", "or1.8xlarge.search", "or1.12xlarge.search", "or1.16xlarge.search", "ultrawarm1.medium.search", "ultrawarm1.large.search", "ultrawarm1.xlarge.search", "t2.micro.search", "t2.small.search", "t2.medium.search", "r3.large.search", "r3.xlarge.search", "r3.2xlarge.search", "r3.4xlarge.search", "r3.8xlarge.search", "i2.xlarge.search", "i2.2xlarge.search", "d2.xlarge.search", "d2.2xlarge.search", "d2.4xlarge.search", "d2.8xlarge.search", "c4.large.search", "c4.xlarge.search", "c4.2xlarge.search", "c4.4xlarge.search", "c4.8xlarge.search", "r4.large.search", "r4.xlarge.search", "r4.2xlarge.search", "r4.4xlarge.search", "r4.8xlarge.search", "r4.16xlarge.search", "i3.large.search", "i3.xlarge.search", "i3.2xlarge.search", "i3.4xlarge.search", "i3.8xlarge.search", "i3.16xlarge.search", "r6g.large.search", "r6g.xlarge.search", "r6g.2xlarge.search", "r6g.4xlarge.search", "r6g.8xlarge.search", "r6g.12xlarge.search", "m6g.large.search", "m6g.xlarge.search", "m6g.2xlarge.search", "m6g.4xlarge.search", "m6g.8xlarge.search", "m6g.12xlarge.search", "c6g.large.search", "c6g.xlarge.search", "c6g.2xlarge.search", "c6g.4xlarge.search", "c6g.8xlarge.search", "c6g.12xlarge.search", "r6gd.large.search", "r6gd.xlarge.search", "r6gd.2xlarge.search", "r6gd.4xlarge.search", "r6gd.8xlarge.search", "r6gd.12xlarge.search", "r6gd.16xlarge.search", "t4g.small.search", "t4g.medium.search"],
    #         dedicated_master_count: 1,
    #         warm_enabled: false,
    #         warm_type: "ultrawarm1.medium.search" # One of: ["ultrawarm1.medium.search", "ultrawarm1.large.search", "ultrawarm1.xlarge.search"],
    #         warm_count: 1,
    #         cold_storage_options: {
    #           enabled: false, # required
    #         },
    #         multi_az_with_standby_enabled: false,
    #         node_options: [
    #           {
    #             node_type: "coordinator" # One of: ["coordinator"],
    #             node_config: {
    #               enabled: false,
    #               type: "m3.medium.search" # One of: ["m3.medium.search", "m3.large.search", "m3.xlarge.search", "m3.2xlarge.search", "m4.large.search", "m4.xlarge.search", "m4.2xlarge.search", "m4.4xlarge.search", "m4.10xlarge.search", "m5.large.search", "m5.xlarge.search", "m5.2xlarge.search", "m5.4xlarge.search", "m5.12xlarge.search", "m5.24xlarge.search", "r5.large.search", "r5.xlarge.search", "r5.2xlarge.search", "r5.4xlarge.search", "r5.12xlarge.search", "r5.24xlarge.search", "c5.large.search", "c5.xlarge.search", "c5.2xlarge.search", "c5.4xlarge.search", "c5.9xlarge.search", "c5.18xlarge.search", "t3.nano.search", "t3.micro.search", "t3.small.search", "t3.medium.search", "t3.large.search", "t3.xlarge.search", "t3.2xlarge.search", "or1.medium.search", "or1.large.search", "or1.xlarge.search", "or1.2xlarge.search", "or1.4xlarge.search", "or1.8xlarge.search", "or1.12xlarge.search", "or1.16xlarge.search", "ultrawarm1.medium.search", "ultrawarm1.large.search", "ultrawarm1.xlarge.search", "t2.micro.search", "t2.small.search", "t2.medium.search", "r3.large.search", "r3.xlarge.search", "r3.2xlarge.search", "r3.4xlarge.search", "r3.8xlarge.search", "i2.xlarge.search", "i2.2xlarge.search", "d2.xlarge.search", "d2.2xlarge.search", "d2.4xlarge.search", "d2.8xlarge.search", "c4.large.search", "c4.xlarge.search", "c4.2xlarge.search", "c4.4xlarge.search", "c4.8xlarge.search", "r4.large.search", "r4.xlarge.search", "r4.2xlarge.search", "r4.4xlarge.search", "r4.8xlarge.search", "r4.16xlarge.search", "i3.large.search", "i3.xlarge.search", "i3.2xlarge.search", "i3.4xlarge.search", "i3.8xlarge.search", "i3.16xlarge.search", "r6g.large.search", "r6g.xlarge.search", "r6g.2xlarge.search", "r6g.4xlarge.search", "r6g.8xlarge.search", "r6g.12xlarge.search", "m6g.large.search", "m6g.xlarge.search", "m6g.2xlarge.search", "m6g.4xlarge.search", "m6g.8xlarge.search", "m6g.12xlarge.search", "c6g.large.search", "c6g.xlarge.search", "c6g.2xlarge.search", "c6g.4xlarge.search", "c6g.8xlarge.search", "c6g.12xlarge.search", "r6gd.large.search", "r6gd.xlarge.search", "r6gd.2xlarge.search", "r6gd.4xlarge.search", "r6gd.8xlarge.search", "r6gd.12xlarge.search", "r6gd.16xlarge.search", "t4g.small.search", "t4g.medium.search"],
    #               count: 1
    #             }
    #           }
    #         ]
    #       },
    #       ebs_options: {
    #         ebs_enabled: false,
    #         volume_type: "standard" # One of: ["standard", "gp2", "io1", "gp3"],
    #         volume_size: 1,
    #         iops: 1,
    #         throughput: 1
    #       },
    #       access_policies: "PolicyDocument",
    #       ip_address_type: "ipv4" # One of: ["ipv4", "dualstack"],
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
    #         jwt_options: {
    #           enabled: false,
    #           subject_key: "String",
    #           roles_key: "String",
    #           public_key: "String"
    #         },
    #         iam_federation_options: {
    #           enabled: false,
    #           subject_key: "IAMFederationSubjectKey",
    #           roles_key: "IAMFederationRolesKey"
    #         },
    #         anonymous_auth_disable_date: Time.now,
    #         anonymous_auth_enabled: false
    #       },
    #       identity_center_options: {
    #         enabled_api_access: false,
    #         identity_center_instance_arn: "IdentityCenterInstanceARN",
    #         subject_key: "UserName" # One of: ["UserName", "UserId", "Email"],
    #         roles_key: "GroupName" # One of: ["GroupName", "GroupId"],
    #         identity_center_application_arn: "IdentityCenterApplicationARN",
    #         identity_store_id: "IdentityStoreId"
    #       },
    #       auto_tune_options: {
    #         state: "ENABLED" # One of: ["ENABLED", "DISABLED", "ENABLE_IN_PROGRESS", "DISABLE_IN_PROGRESS", "DISABLED_AND_ROLLBACK_SCHEDULED", "DISABLED_AND_ROLLBACK_IN_PROGRESS", "DISABLED_AND_ROLLBACK_COMPLETE", "DISABLED_AND_ROLLBACK_ERROR", "ERROR"],
    #         error_message: "String",
    #         use_off_peak_window: false
    #       },
    #       change_progress_details: {
    #         change_id: "GUID",
    #         message: "Message",
    #         config_change_status: "Pending" # One of: ["Pending", "Initializing", "Validating", "ValidationFailed", "ApplyingChanges", "Completed", "PendingUserInput", "Cancelled"],
    #         initiated_by: "CUSTOMER" # One of: ["CUSTOMER", "SERVICE"],
    #         start_time: Time.now,
    #         last_updated_time: Time.now
    #       },
    #       off_peak_window_options: {
    #         enabled: false,
    #         off_peak_window: {
    #           window_start_time: {
    #             hours: 1, # required
    #             minutes: 1, # required
    #           }
    #         }
    #       },
    #       software_update_options: {
    #         auto_software_update_enabled: false
    #       },
    #       domain_processing_status: "Creating" # One of: ["Creating", "Active", "Modifying", "UpgradingEngineVersion", "UpdatingServiceSoftware", "Isolated", "Deleting"],
    #       modifying_properties: [
    #         {
    #           name: "String",
    #           active_value: "String",
    #           pending_value: "String",
    #           value_type: "PLAIN_TEXT" # One of: ["PLAIN_TEXT", "STRINGIFIED_JSON"]
    #         }
    #       ],
    #       aiml_options: {
    #         natural_language_query_generation_options: {
    #           desired_state: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #           current_state: "NOT_ENABLED" # One of: ["NOT_ENABLED", "ENABLE_COMPLETE", "ENABLE_IN_PROGRESS", "ENABLE_FAILED", "DISABLE_COMPLETE", "DISABLE_IN_PROGRESS", "DISABLE_FAILED"]
    #         },
    #         s3_vectors_engine: {
    #           enabled: false
    #         }
    #       }
    #     }
    #   }
    # @return [Types::CreateDomainResponse]
    def create_domain(params = {}, options = {})
      request = build_request(:create_domain, params)
      request.send_request(options)
    end

    # <p>Creates a new cross-cluster search connection from a source Amazon OpenSearch Service domain
    #    to a destination domain. For more information, see <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/cross-cluster-search.html">Cross-cluster search
    #     for Amazon OpenSearch Service</a>.</p>
    # @param [Hash, Types::CreateOutboundConnectionRequest] params
    # @option params [Types::DomainInformationContainer] :local_domain_info
    #   <p>Name and Region of the source (local) domain.</p>
    # @option params [Types::DomainInformationContainer] :remote_domain_info
    #   <p>Name and Region of the destination (remote) domain.</p>
    # @option params [String] :connection_alias
    #   <p>Name of the connection.</p>
    # @option params [String] :connection_mode
    #   <p>The connection mode.</p>
    # @option params [Types::ConnectionProperties] :connection_properties
    #   <p>The <code>ConnectionProperties</code> for the outbound connection.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     local_domain_info: { # required
    #       aws_domain_information: {
    #         owner_id: "OwnerId",
    #         domain_name: "DomainName", # required
    #         region: "Region"
    #       }
    #     },
    #     remote_domain_info: { # required
    #       aws_domain_information: {
    #         owner_id: "OwnerId",
    #         domain_name: "DomainName", # required
    #         region: "Region"
    #       }
    #     },
    #     connection_alias: "ConnectionAlias", # required
    #     connection_mode: "DIRECT" # One of: ["DIRECT", "VPC_ENDPOINT"],
    #     connection_properties: {
    #       endpoint: "Endpoint",
    #       cross_cluster_search: {
    #         skip_unavailable: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.create_outbound_connection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     local_domain_info: {
    #       aws_domain_information: {
    #         owner_id: "OwnerId",
    #         domain_name: "DomainName", # required
    #         region: "Region"
    #       }
    #     },
    #     remote_domain_info: {
    #       aws_domain_information: {
    #         owner_id: "OwnerId",
    #         domain_name: "DomainName", # required
    #         region: "Region"
    #       }
    #     },
    #     connection_alias: "ConnectionAlias",
    #     connection_status: {
    #       status_code: "VALIDATING" # One of: ["VALIDATING", "VALIDATION_FAILED", "PENDING_ACCEPTANCE", "APPROVED", "PROVISIONING", "ACTIVE", "REJECTING", "REJECTED", "DELETING", "DELETED"],
    #       message: "ConnectionStatusMessage"
    #     },
    #     connection_id: "ConnectionId",
    #     connection_mode: "DIRECT" # One of: ["DIRECT", "VPC_ENDPOINT"],
    #     connection_properties: {
    #       endpoint: "Endpoint",
    #       cross_cluster_search: {
    #         skip_unavailable: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #       }
    #     }
    #   }
    # @return [Types::CreateOutboundConnectionResponse]
    def create_outbound_connection(params = {}, options = {})
      request = build_request(:create_outbound_connection, params)
      request.send_request(options)
    end

    # <p>Creates a package for use with Amazon OpenSearch Service domains. For more information, see
    #     <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/custom-packages.html">Custom packages for Amazon OpenSearch Service</a>.</p>
    # @param [Hash, Types::CreatePackageRequest] params
    # @option params [String] :package_name
    #   <p>Unique name for the package.</p>
    # @option params [String] :package_type
    #   <p>The type of package.</p>
    # @option params [String] :package_description
    #   <p>Description of the package.</p>
    # @option params [Types::PackageSource] :package_source
    #   <p>The Amazon S3 location from which to import the package.</p>
    # @option params [Types::PackageConfiguration] :package_configuration
    #   <p> The configuration parameters for the package being created.</p>
    # @option params [String] :engine_version
    #   <p>The version of the Amazon OpenSearch Service engine for which is compatible with the package. This can only be specified for package type <code>ZIP-PLUGIN</code>
    #            </p>
    # @option params [Types::PackageVendingOptions] :package_vending_options
    #   <p> The vending options for the package being created. They determine if the package can be vended to other users.</p>
    # @option params [Types::PackageEncryptionOptions] :package_encryption_options
    #   <p>The encryption parameters for the package being created.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     package_name: "PackageName", # required
    #     package_type: "TXT-DICTIONARY" # One of: ["TXT-DICTIONARY", "ZIP-PLUGIN", "PACKAGE-LICENSE", "PACKAGE-CONFIG"], # required
    #     package_description: "PackageDescription",
    #     package_source: { # required
    #       s3_bucket_name: "S3BucketName",
    #       s3_key: "S3Key"
    #     },
    #     package_configuration: {
    #       license_requirement: "REQUIRED" # One of: ["REQUIRED", "OPTIONAL", "NONE"], # required
    #       license_filepath: "LicenseFilepath",
    #       configuration_requirement: "REQUIRED" # One of: ["REQUIRED", "OPTIONAL", "NONE"], # required
    #       requires_restart_for_configuration_update: false
    #     },
    #     engine_version: "EngineVersion",
    #     package_vending_options: {
    #       vending_enabled: false, # required
    #     },
    #     package_encryption_options: {
    #       kms_key_identifier: "KmsKeyId",
    #       encryption_enabled: false, # required
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
    #       package_type: "TXT-DICTIONARY" # One of: ["TXT-DICTIONARY", "ZIP-PLUGIN", "PACKAGE-LICENSE", "PACKAGE-CONFIG"],
    #       package_description: "PackageDescription",
    #       package_status: "COPYING" # One of: ["COPYING", "COPY_FAILED", "VALIDATING", "VALIDATION_FAILED", "AVAILABLE", "DELETING", "DELETED", "DELETE_FAILED"],
    #       created_at: Time.now,
    #       last_updated_at: Time.now,
    #       available_package_version: "PackageVersion",
    #       error_details: {
    #         error_type: "ErrorType",
    #         error_message: "ErrorMessage"
    #       },
    #       engine_version: "EngineVersion",
    #       available_plugin_properties: {
    #         name: "PluginName",
    #         description: "PluginDescription",
    #         version: "PluginVersion",
    #         class_name: "PluginClassName",
    #         uncompressed_size_in_bytes: 1
    #       },
    #       available_package_configuration: {
    #         license_requirement: "REQUIRED" # One of: ["REQUIRED", "OPTIONAL", "NONE"], # required
    #         license_filepath: "LicenseFilepath",
    #         configuration_requirement: "REQUIRED" # One of: ["REQUIRED", "OPTIONAL", "NONE"], # required
    #         requires_restart_for_configuration_update: false
    #       },
    #       allow_listed_user_list: ["PackageUser"],
    #       package_owner: "PackageOwner",
    #       package_vending_options: {
    #         vending_enabled: false, # required
    #       },
    #       package_encryption_options: {
    #         kms_key_identifier: "KmsKeyId",
    #         encryption_enabled: false, # required
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
    #   <p>The Amazon Resource Name (ARN) of the domain to create the endpoint for.</p>
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

    # <p>Deletes a specified OpenSearch application.</p>
    # @param [Hash, Types::DeleteApplicationRequest] params
    # @option params [String] :id
    #   <p>The unique identifier of the OpenSearch application to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "Id", # required
    #   }
    #   options = {}
    #   response = client.delete_application(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteApplicationResponse]
    def delete_application(params = {}, options = {})
      request = build_request(:delete_application, params)
      request.send_request(options)
    end

    # <p>Deletes a direct-query data source. For more information, see <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/direct-query-s3-delete.html">Deleting an Amazon OpenSearch Service data source with Amazon S3</a>.</p>
    # @param [Hash, Types::DeleteDataSourceRequest] params
    # @option params [String] :domain_name
    #   <p>The name of the domain.</p>
    # @option params [String] :name
    #   <p>The name of the data source to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "DomainName", # required
    #     name: "DataSourceName", # required
    #   }
    #   options = {}
    #   response = client.delete_data_source(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     message: "String"
    #   }
    # @return [Types::DeleteDataSourceResponse]
    def delete_data_source(params = {}, options = {})
      request = build_request(:delete_data_source, params)
      request.send_request(options)
    end

    # <p>
    #    Deletes a previously configured direct query data 
    #    source from Amazon OpenSearch Service.
    #   </p>
    # @param [Hash, Types::DeleteDirectQueryDataSourceRequest] params
    # @option params [String] :data_source_name
    #   <p>
    #      A unique, user-defined label to identify the data source 
    #      within your OpenSearch Service environment.
    #     </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     data_source_name: "DirectQueryDataSourceName", # required
    #   }
    #   options = {}
    #   response = client.delete_direct_query_data_source(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_direct_query_data_source(params = {}, options = {})
      request = build_request(:delete_direct_query_data_source, params)
      request.send_request(options)
    end

    # <p>Deletes an Amazon OpenSearch Service domain and all of its data. You can't recover a domain
    #    after you delete it.</p>
    # @param [Hash, Types::DeleteDomainRequest] params
    # @option params [String] :domain_name
    #   <p>The name of the domain you want to permanently delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "DomainName", # required
    #   }
    #   options = {}
    #   response = client.delete_domain(params, options)
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
    #       endpoint_v2: "ServiceUrl",
    #       endpoints: {
    #         "String" => "ServiceUrl"
    #       },
    #       domain_endpoint_v2_hosted_zone_id: "HostedZoneId",
    #       processing: false,
    #       upgrade_processing: false,
    #       engine_version: "VersionString",
    #       cluster_config: { # required
    #         instance_type: "m3.medium.search" # One of: ["m3.medium.search", "m3.large.search", "m3.xlarge.search", "m3.2xlarge.search", "m4.large.search", "m4.xlarge.search", "m4.2xlarge.search", "m4.4xlarge.search", "m4.10xlarge.search", "m5.large.search", "m5.xlarge.search", "m5.2xlarge.search", "m5.4xlarge.search", "m5.12xlarge.search", "m5.24xlarge.search", "r5.large.search", "r5.xlarge.search", "r5.2xlarge.search", "r5.4xlarge.search", "r5.12xlarge.search", "r5.24xlarge.search", "c5.large.search", "c5.xlarge.search", "c5.2xlarge.search", "c5.4xlarge.search", "c5.9xlarge.search", "c5.18xlarge.search", "t3.nano.search", "t3.micro.search", "t3.small.search", "t3.medium.search", "t3.large.search", "t3.xlarge.search", "t3.2xlarge.search", "or1.medium.search", "or1.large.search", "or1.xlarge.search", "or1.2xlarge.search", "or1.4xlarge.search", "or1.8xlarge.search", "or1.12xlarge.search", "or1.16xlarge.search", "ultrawarm1.medium.search", "ultrawarm1.large.search", "ultrawarm1.xlarge.search", "t2.micro.search", "t2.small.search", "t2.medium.search", "r3.large.search", "r3.xlarge.search", "r3.2xlarge.search", "r3.4xlarge.search", "r3.8xlarge.search", "i2.xlarge.search", "i2.2xlarge.search", "d2.xlarge.search", "d2.2xlarge.search", "d2.4xlarge.search", "d2.8xlarge.search", "c4.large.search", "c4.xlarge.search", "c4.2xlarge.search", "c4.4xlarge.search", "c4.8xlarge.search", "r4.large.search", "r4.xlarge.search", "r4.2xlarge.search", "r4.4xlarge.search", "r4.8xlarge.search", "r4.16xlarge.search", "i3.large.search", "i3.xlarge.search", "i3.2xlarge.search", "i3.4xlarge.search", "i3.8xlarge.search", "i3.16xlarge.search", "r6g.large.search", "r6g.xlarge.search", "r6g.2xlarge.search", "r6g.4xlarge.search", "r6g.8xlarge.search", "r6g.12xlarge.search", "m6g.large.search", "m6g.xlarge.search", "m6g.2xlarge.search", "m6g.4xlarge.search", "m6g.8xlarge.search", "m6g.12xlarge.search", "c6g.large.search", "c6g.xlarge.search", "c6g.2xlarge.search", "c6g.4xlarge.search", "c6g.8xlarge.search", "c6g.12xlarge.search", "r6gd.large.search", "r6gd.xlarge.search", "r6gd.2xlarge.search", "r6gd.4xlarge.search", "r6gd.8xlarge.search", "r6gd.12xlarge.search", "r6gd.16xlarge.search", "t4g.small.search", "t4g.medium.search"],
    #         instance_count: 1,
    #         dedicated_master_enabled: false,
    #         zone_awareness_enabled: false,
    #         zone_awareness_config: {
    #           availability_zone_count: 1
    #         },
    #         dedicated_master_type: "m3.medium.search" # One of: ["m3.medium.search", "m3.large.search", "m3.xlarge.search", "m3.2xlarge.search", "m4.large.search", "m4.xlarge.search", "m4.2xlarge.search", "m4.4xlarge.search", "m4.10xlarge.search", "m5.large.search", "m5.xlarge.search", "m5.2xlarge.search", "m5.4xlarge.search", "m5.12xlarge.search", "m5.24xlarge.search", "r5.large.search", "r5.xlarge.search", "r5.2xlarge.search", "r5.4xlarge.search", "r5.12xlarge.search", "r5.24xlarge.search", "c5.large.search", "c5.xlarge.search", "c5.2xlarge.search", "c5.4xlarge.search", "c5.9xlarge.search", "c5.18xlarge.search", "t3.nano.search", "t3.micro.search", "t3.small.search", "t3.medium.search", "t3.large.search", "t3.xlarge.search", "t3.2xlarge.search", "or1.medium.search", "or1.large.search", "or1.xlarge.search", "or1.2xlarge.search", "or1.4xlarge.search", "or1.8xlarge.search", "or1.12xlarge.search", "or1.16xlarge.search", "ultrawarm1.medium.search", "ultrawarm1.large.search", "ultrawarm1.xlarge.search", "t2.micro.search", "t2.small.search", "t2.medium.search", "r3.large.search", "r3.xlarge.search", "r3.2xlarge.search", "r3.4xlarge.search", "r3.8xlarge.search", "i2.xlarge.search", "i2.2xlarge.search", "d2.xlarge.search", "d2.2xlarge.search", "d2.4xlarge.search", "d2.8xlarge.search", "c4.large.search", "c4.xlarge.search", "c4.2xlarge.search", "c4.4xlarge.search", "c4.8xlarge.search", "r4.large.search", "r4.xlarge.search", "r4.2xlarge.search", "r4.4xlarge.search", "r4.8xlarge.search", "r4.16xlarge.search", "i3.large.search", "i3.xlarge.search", "i3.2xlarge.search", "i3.4xlarge.search", "i3.8xlarge.search", "i3.16xlarge.search", "r6g.large.search", "r6g.xlarge.search", "r6g.2xlarge.search", "r6g.4xlarge.search", "r6g.8xlarge.search", "r6g.12xlarge.search", "m6g.large.search", "m6g.xlarge.search", "m6g.2xlarge.search", "m6g.4xlarge.search", "m6g.8xlarge.search", "m6g.12xlarge.search", "c6g.large.search", "c6g.xlarge.search", "c6g.2xlarge.search", "c6g.4xlarge.search", "c6g.8xlarge.search", "c6g.12xlarge.search", "r6gd.large.search", "r6gd.xlarge.search", "r6gd.2xlarge.search", "r6gd.4xlarge.search", "r6gd.8xlarge.search", "r6gd.12xlarge.search", "r6gd.16xlarge.search", "t4g.small.search", "t4g.medium.search"],
    #         dedicated_master_count: 1,
    #         warm_enabled: false,
    #         warm_type: "ultrawarm1.medium.search" # One of: ["ultrawarm1.medium.search", "ultrawarm1.large.search", "ultrawarm1.xlarge.search"],
    #         warm_count: 1,
    #         cold_storage_options: {
    #           enabled: false, # required
    #         },
    #         multi_az_with_standby_enabled: false,
    #         node_options: [
    #           {
    #             node_type: "coordinator" # One of: ["coordinator"],
    #             node_config: {
    #               enabled: false,
    #               type: "m3.medium.search" # One of: ["m3.medium.search", "m3.large.search", "m3.xlarge.search", "m3.2xlarge.search", "m4.large.search", "m4.xlarge.search", "m4.2xlarge.search", "m4.4xlarge.search", "m4.10xlarge.search", "m5.large.search", "m5.xlarge.search", "m5.2xlarge.search", "m5.4xlarge.search", "m5.12xlarge.search", "m5.24xlarge.search", "r5.large.search", "r5.xlarge.search", "r5.2xlarge.search", "r5.4xlarge.search", "r5.12xlarge.search", "r5.24xlarge.search", "c5.large.search", "c5.xlarge.search", "c5.2xlarge.search", "c5.4xlarge.search", "c5.9xlarge.search", "c5.18xlarge.search", "t3.nano.search", "t3.micro.search", "t3.small.search", "t3.medium.search", "t3.large.search", "t3.xlarge.search", "t3.2xlarge.search", "or1.medium.search", "or1.large.search", "or1.xlarge.search", "or1.2xlarge.search", "or1.4xlarge.search", "or1.8xlarge.search", "or1.12xlarge.search", "or1.16xlarge.search", "ultrawarm1.medium.search", "ultrawarm1.large.search", "ultrawarm1.xlarge.search", "t2.micro.search", "t2.small.search", "t2.medium.search", "r3.large.search", "r3.xlarge.search", "r3.2xlarge.search", "r3.4xlarge.search", "r3.8xlarge.search", "i2.xlarge.search", "i2.2xlarge.search", "d2.xlarge.search", "d2.2xlarge.search", "d2.4xlarge.search", "d2.8xlarge.search", "c4.large.search", "c4.xlarge.search", "c4.2xlarge.search", "c4.4xlarge.search", "c4.8xlarge.search", "r4.large.search", "r4.xlarge.search", "r4.2xlarge.search", "r4.4xlarge.search", "r4.8xlarge.search", "r4.16xlarge.search", "i3.large.search", "i3.xlarge.search", "i3.2xlarge.search", "i3.4xlarge.search", "i3.8xlarge.search", "i3.16xlarge.search", "r6g.large.search", "r6g.xlarge.search", "r6g.2xlarge.search", "r6g.4xlarge.search", "r6g.8xlarge.search", "r6g.12xlarge.search", "m6g.large.search", "m6g.xlarge.search", "m6g.2xlarge.search", "m6g.4xlarge.search", "m6g.8xlarge.search", "m6g.12xlarge.search", "c6g.large.search", "c6g.xlarge.search", "c6g.2xlarge.search", "c6g.4xlarge.search", "c6g.8xlarge.search", "c6g.12xlarge.search", "r6gd.large.search", "r6gd.xlarge.search", "r6gd.2xlarge.search", "r6gd.4xlarge.search", "r6gd.8xlarge.search", "r6gd.12xlarge.search", "r6gd.16xlarge.search", "t4g.small.search", "t4g.medium.search"],
    #               count: 1
    #             }
    #           }
    #         ]
    #       },
    #       ebs_options: {
    #         ebs_enabled: false,
    #         volume_type: "standard" # One of: ["standard", "gp2", "io1", "gp3"],
    #         volume_size: 1,
    #         iops: 1,
    #         throughput: 1
    #       },
    #       access_policies: "PolicyDocument",
    #       ip_address_type: "ipv4" # One of: ["ipv4", "dualstack"],
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
    #         jwt_options: {
    #           enabled: false,
    #           subject_key: "String",
    #           roles_key: "String",
    #           public_key: "String"
    #         },
    #         iam_federation_options: {
    #           enabled: false,
    #           subject_key: "IAMFederationSubjectKey",
    #           roles_key: "IAMFederationRolesKey"
    #         },
    #         anonymous_auth_disable_date: Time.now,
    #         anonymous_auth_enabled: false
    #       },
    #       identity_center_options: {
    #         enabled_api_access: false,
    #         identity_center_instance_arn: "IdentityCenterInstanceARN",
    #         subject_key: "UserName" # One of: ["UserName", "UserId", "Email"],
    #         roles_key: "GroupName" # One of: ["GroupName", "GroupId"],
    #         identity_center_application_arn: "IdentityCenterApplicationARN",
    #         identity_store_id: "IdentityStoreId"
    #       },
    #       auto_tune_options: {
    #         state: "ENABLED" # One of: ["ENABLED", "DISABLED", "ENABLE_IN_PROGRESS", "DISABLE_IN_PROGRESS", "DISABLED_AND_ROLLBACK_SCHEDULED", "DISABLED_AND_ROLLBACK_IN_PROGRESS", "DISABLED_AND_ROLLBACK_COMPLETE", "DISABLED_AND_ROLLBACK_ERROR", "ERROR"],
    #         error_message: "String",
    #         use_off_peak_window: false
    #       },
    #       change_progress_details: {
    #         change_id: "GUID",
    #         message: "Message",
    #         config_change_status: "Pending" # One of: ["Pending", "Initializing", "Validating", "ValidationFailed", "ApplyingChanges", "Completed", "PendingUserInput", "Cancelled"],
    #         initiated_by: "CUSTOMER" # One of: ["CUSTOMER", "SERVICE"],
    #         start_time: Time.now,
    #         last_updated_time: Time.now
    #       },
    #       off_peak_window_options: {
    #         enabled: false,
    #         off_peak_window: {
    #           window_start_time: {
    #             hours: 1, # required
    #             minutes: 1, # required
    #           }
    #         }
    #       },
    #       software_update_options: {
    #         auto_software_update_enabled: false
    #       },
    #       domain_processing_status: "Creating" # One of: ["Creating", "Active", "Modifying", "UpgradingEngineVersion", "UpdatingServiceSoftware", "Isolated", "Deleting"],
    #       modifying_properties: [
    #         {
    #           name: "String",
    #           active_value: "String",
    #           pending_value: "String",
    #           value_type: "PLAIN_TEXT" # One of: ["PLAIN_TEXT", "STRINGIFIED_JSON"]
    #         }
    #       ],
    #       aiml_options: {
    #         natural_language_query_generation_options: {
    #           desired_state: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #           current_state: "NOT_ENABLED" # One of: ["NOT_ENABLED", "ENABLE_COMPLETE", "ENABLE_IN_PROGRESS", "ENABLE_FAILED", "DISABLE_COMPLETE", "DISABLE_IN_PROGRESS", "DISABLE_FAILED"]
    #         },
    #         s3_vectors_engine: {
    #           enabled: false
    #         }
    #       }
    #     }
    #   }
    # @return [Types::DeleteDomainResponse]
    def delete_domain(params = {}, options = {})
      request = build_request(:delete_domain, params)
      request.send_request(options)
    end

    # <p>Allows the destination Amazon OpenSearch Service domain owner to delete an existing inbound
    #    cross-cluster search connection. For more information, see <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/cross-cluster-search.html">Cross-cluster search
    #     for Amazon OpenSearch Service</a>.</p>
    # @param [Hash, Types::DeleteInboundConnectionRequest] params
    # @option params [String] :connection_id
    #   <p>The ID of the inbound connection to permanently delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     connection_id: "ConnectionId", # required
    #   }
    #   options = {}
    #   response = client.delete_inbound_connection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     connection: {
    #       local_domain_info: {
    #         aws_domain_information: {
    #           owner_id: "OwnerId",
    #           domain_name: "DomainName", # required
    #           region: "Region"
    #         }
    #       },
    #       remote_domain_info: {
    #         aws_domain_information: {
    #           owner_id: "OwnerId",
    #           domain_name: "DomainName", # required
    #           region: "Region"
    #         }
    #       },
    #       connection_id: "ConnectionId",
    #       connection_status: {
    #         status_code: "PENDING_ACCEPTANCE" # One of: ["PENDING_ACCEPTANCE", "APPROVED", "PROVISIONING", "ACTIVE", "REJECTING", "REJECTED", "DELETING", "DELETED"],
    #         message: "ConnectionStatusMessage"
    #       },
    #       connection_mode: "DIRECT" # One of: ["DIRECT", "VPC_ENDPOINT"]
    #     }
    #   }
    # @return [Types::DeleteInboundConnectionResponse]
    def delete_inbound_connection(params = {}, options = {})
      request = build_request(:delete_inbound_connection, params)
      request.send_request(options)
    end

    # <p>Allows the source Amazon OpenSearch Service domain owner to delete an existing outbound
    #    cross-cluster search connection. For more information, see <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/cross-cluster-search.html">Cross-cluster search
    #     for Amazon OpenSearch Service</a>.</p>
    # @param [Hash, Types::DeleteOutboundConnectionRequest] params
    # @option params [String] :connection_id
    #   <p>The ID of the outbound connection you want to permanently delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     connection_id: "ConnectionId", # required
    #   }
    #   options = {}
    #   response = client.delete_outbound_connection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     connection: {
    #       local_domain_info: {
    #         aws_domain_information: {
    #           owner_id: "OwnerId",
    #           domain_name: "DomainName", # required
    #           region: "Region"
    #         }
    #       },
    #       remote_domain_info: {
    #         aws_domain_information: {
    #           owner_id: "OwnerId",
    #           domain_name: "DomainName", # required
    #           region: "Region"
    #         }
    #       },
    #       connection_id: "ConnectionId",
    #       connection_alias: "ConnectionAlias",
    #       connection_status: {
    #         status_code: "VALIDATING" # One of: ["VALIDATING", "VALIDATION_FAILED", "PENDING_ACCEPTANCE", "APPROVED", "PROVISIONING", "ACTIVE", "REJECTING", "REJECTED", "DELETING", "DELETED"],
    #         message: "ConnectionStatusMessage"
    #       },
    #       connection_mode: "DIRECT" # One of: ["DIRECT", "VPC_ENDPOINT"],
    #       connection_properties: {
    #         endpoint: "Endpoint",
    #         cross_cluster_search: {
    #           skip_unavailable: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #         }
    #       }
    #     }
    #   }
    # @return [Types::DeleteOutboundConnectionResponse]
    def delete_outbound_connection(params = {}, options = {})
      request = build_request(:delete_outbound_connection, params)
      request.send_request(options)
    end

    # <p>Deletes an Amazon OpenSearch Service package. For more information, see <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/custom-packages.html">Custom
    #     packages for Amazon OpenSearch Service</a>.</p>
    # @param [Hash, Types::DeletePackageRequest] params
    # @option params [String] :package_id
    #   <p>The internal ID of the package you want to delete. Use <code>DescribePackages</code> to find this value.</p>
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
    #       package_type: "TXT-DICTIONARY" # One of: ["TXT-DICTIONARY", "ZIP-PLUGIN", "PACKAGE-LICENSE", "PACKAGE-CONFIG"],
    #       package_description: "PackageDescription",
    #       package_status: "COPYING" # One of: ["COPYING", "COPY_FAILED", "VALIDATING", "VALIDATION_FAILED", "AVAILABLE", "DELETING", "DELETED", "DELETE_FAILED"],
    #       created_at: Time.now,
    #       last_updated_at: Time.now,
    #       available_package_version: "PackageVersion",
    #       error_details: {
    #         error_type: "ErrorType",
    #         error_message: "ErrorMessage"
    #       },
    #       engine_version: "EngineVersion",
    #       available_plugin_properties: {
    #         name: "PluginName",
    #         description: "PluginDescription",
    #         version: "PluginVersion",
    #         class_name: "PluginClassName",
    #         uncompressed_size_in_bytes: 1
    #       },
    #       available_package_configuration: {
    #         license_requirement: "REQUIRED" # One of: ["REQUIRED", "OPTIONAL", "NONE"], # required
    #         license_filepath: "LicenseFilepath",
    #         configuration_requirement: "REQUIRED" # One of: ["REQUIRED", "OPTIONAL", "NONE"], # required
    #         requires_restart_for_configuration_update: false
    #       },
    #       allow_listed_user_list: ["PackageUser"],
    #       package_owner: "PackageOwner",
    #       package_vending_options: {
    #         vending_enabled: false, # required
    #       },
    #       package_encryption_options: {
    #         kms_key_identifier: "KmsKeyId",
    #         encryption_enabled: false, # required
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
    #   <p>The unique identifier of the endpoint.</p>
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

    # <p>Describes the domain configuration for the specified Amazon OpenSearch Service domain,
    #    including the domain ID, domain service endpoint, and domain ARN.</p>
    # @param [Hash, Types::DescribeDomainRequest] params
    # @option params [String] :domain_name
    #   <p>The name of the domain that you want information about.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "DomainName", # required
    #   }
    #   options = {}
    #   response = client.describe_domain(params, options)
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
    #       endpoint_v2: "ServiceUrl",
    #       endpoints: {
    #         "String" => "ServiceUrl"
    #       },
    #       domain_endpoint_v2_hosted_zone_id: "HostedZoneId",
    #       processing: false,
    #       upgrade_processing: false,
    #       engine_version: "VersionString",
    #       cluster_config: { # required
    #         instance_type: "m3.medium.search" # One of: ["m3.medium.search", "m3.large.search", "m3.xlarge.search", "m3.2xlarge.search", "m4.large.search", "m4.xlarge.search", "m4.2xlarge.search", "m4.4xlarge.search", "m4.10xlarge.search", "m5.large.search", "m5.xlarge.search", "m5.2xlarge.search", "m5.4xlarge.search", "m5.12xlarge.search", "m5.24xlarge.search", "r5.large.search", "r5.xlarge.search", "r5.2xlarge.search", "r5.4xlarge.search", "r5.12xlarge.search", "r5.24xlarge.search", "c5.large.search", "c5.xlarge.search", "c5.2xlarge.search", "c5.4xlarge.search", "c5.9xlarge.search", "c5.18xlarge.search", "t3.nano.search", "t3.micro.search", "t3.small.search", "t3.medium.search", "t3.large.search", "t3.xlarge.search", "t3.2xlarge.search", "or1.medium.search", "or1.large.search", "or1.xlarge.search", "or1.2xlarge.search", "or1.4xlarge.search", "or1.8xlarge.search", "or1.12xlarge.search", "or1.16xlarge.search", "ultrawarm1.medium.search", "ultrawarm1.large.search", "ultrawarm1.xlarge.search", "t2.micro.search", "t2.small.search", "t2.medium.search", "r3.large.search", "r3.xlarge.search", "r3.2xlarge.search", "r3.4xlarge.search", "r3.8xlarge.search", "i2.xlarge.search", "i2.2xlarge.search", "d2.xlarge.search", "d2.2xlarge.search", "d2.4xlarge.search", "d2.8xlarge.search", "c4.large.search", "c4.xlarge.search", "c4.2xlarge.search", "c4.4xlarge.search", "c4.8xlarge.search", "r4.large.search", "r4.xlarge.search", "r4.2xlarge.search", "r4.4xlarge.search", "r4.8xlarge.search", "r4.16xlarge.search", "i3.large.search", "i3.xlarge.search", "i3.2xlarge.search", "i3.4xlarge.search", "i3.8xlarge.search", "i3.16xlarge.search", "r6g.large.search", "r6g.xlarge.search", "r6g.2xlarge.search", "r6g.4xlarge.search", "r6g.8xlarge.search", "r6g.12xlarge.search", "m6g.large.search", "m6g.xlarge.search", "m6g.2xlarge.search", "m6g.4xlarge.search", "m6g.8xlarge.search", "m6g.12xlarge.search", "c6g.large.search", "c6g.xlarge.search", "c6g.2xlarge.search", "c6g.4xlarge.search", "c6g.8xlarge.search", "c6g.12xlarge.search", "r6gd.large.search", "r6gd.xlarge.search", "r6gd.2xlarge.search", "r6gd.4xlarge.search", "r6gd.8xlarge.search", "r6gd.12xlarge.search", "r6gd.16xlarge.search", "t4g.small.search", "t4g.medium.search"],
    #         instance_count: 1,
    #         dedicated_master_enabled: false,
    #         zone_awareness_enabled: false,
    #         zone_awareness_config: {
    #           availability_zone_count: 1
    #         },
    #         dedicated_master_type: "m3.medium.search" # One of: ["m3.medium.search", "m3.large.search", "m3.xlarge.search", "m3.2xlarge.search", "m4.large.search", "m4.xlarge.search", "m4.2xlarge.search", "m4.4xlarge.search", "m4.10xlarge.search", "m5.large.search", "m5.xlarge.search", "m5.2xlarge.search", "m5.4xlarge.search", "m5.12xlarge.search", "m5.24xlarge.search", "r5.large.search", "r5.xlarge.search", "r5.2xlarge.search", "r5.4xlarge.search", "r5.12xlarge.search", "r5.24xlarge.search", "c5.large.search", "c5.xlarge.search", "c5.2xlarge.search", "c5.4xlarge.search", "c5.9xlarge.search", "c5.18xlarge.search", "t3.nano.search", "t3.micro.search", "t3.small.search", "t3.medium.search", "t3.large.search", "t3.xlarge.search", "t3.2xlarge.search", "or1.medium.search", "or1.large.search", "or1.xlarge.search", "or1.2xlarge.search", "or1.4xlarge.search", "or1.8xlarge.search", "or1.12xlarge.search", "or1.16xlarge.search", "ultrawarm1.medium.search", "ultrawarm1.large.search", "ultrawarm1.xlarge.search", "t2.micro.search", "t2.small.search", "t2.medium.search", "r3.large.search", "r3.xlarge.search", "r3.2xlarge.search", "r3.4xlarge.search", "r3.8xlarge.search", "i2.xlarge.search", "i2.2xlarge.search", "d2.xlarge.search", "d2.2xlarge.search", "d2.4xlarge.search", "d2.8xlarge.search", "c4.large.search", "c4.xlarge.search", "c4.2xlarge.search", "c4.4xlarge.search", "c4.8xlarge.search", "r4.large.search", "r4.xlarge.search", "r4.2xlarge.search", "r4.4xlarge.search", "r4.8xlarge.search", "r4.16xlarge.search", "i3.large.search", "i3.xlarge.search", "i3.2xlarge.search", "i3.4xlarge.search", "i3.8xlarge.search", "i3.16xlarge.search", "r6g.large.search", "r6g.xlarge.search", "r6g.2xlarge.search", "r6g.4xlarge.search", "r6g.8xlarge.search", "r6g.12xlarge.search", "m6g.large.search", "m6g.xlarge.search", "m6g.2xlarge.search", "m6g.4xlarge.search", "m6g.8xlarge.search", "m6g.12xlarge.search", "c6g.large.search", "c6g.xlarge.search", "c6g.2xlarge.search", "c6g.4xlarge.search", "c6g.8xlarge.search", "c6g.12xlarge.search", "r6gd.large.search", "r6gd.xlarge.search", "r6gd.2xlarge.search", "r6gd.4xlarge.search", "r6gd.8xlarge.search", "r6gd.12xlarge.search", "r6gd.16xlarge.search", "t4g.small.search", "t4g.medium.search"],
    #         dedicated_master_count: 1,
    #         warm_enabled: false,
    #         warm_type: "ultrawarm1.medium.search" # One of: ["ultrawarm1.medium.search", "ultrawarm1.large.search", "ultrawarm1.xlarge.search"],
    #         warm_count: 1,
    #         cold_storage_options: {
    #           enabled: false, # required
    #         },
    #         multi_az_with_standby_enabled: false,
    #         node_options: [
    #           {
    #             node_type: "coordinator" # One of: ["coordinator"],
    #             node_config: {
    #               enabled: false,
    #               type: "m3.medium.search" # One of: ["m3.medium.search", "m3.large.search", "m3.xlarge.search", "m3.2xlarge.search", "m4.large.search", "m4.xlarge.search", "m4.2xlarge.search", "m4.4xlarge.search", "m4.10xlarge.search", "m5.large.search", "m5.xlarge.search", "m5.2xlarge.search", "m5.4xlarge.search", "m5.12xlarge.search", "m5.24xlarge.search", "r5.large.search", "r5.xlarge.search", "r5.2xlarge.search", "r5.4xlarge.search", "r5.12xlarge.search", "r5.24xlarge.search", "c5.large.search", "c5.xlarge.search", "c5.2xlarge.search", "c5.4xlarge.search", "c5.9xlarge.search", "c5.18xlarge.search", "t3.nano.search", "t3.micro.search", "t3.small.search", "t3.medium.search", "t3.large.search", "t3.xlarge.search", "t3.2xlarge.search", "or1.medium.search", "or1.large.search", "or1.xlarge.search", "or1.2xlarge.search", "or1.4xlarge.search", "or1.8xlarge.search", "or1.12xlarge.search", "or1.16xlarge.search", "ultrawarm1.medium.search", "ultrawarm1.large.search", "ultrawarm1.xlarge.search", "t2.micro.search", "t2.small.search", "t2.medium.search", "r3.large.search", "r3.xlarge.search", "r3.2xlarge.search", "r3.4xlarge.search", "r3.8xlarge.search", "i2.xlarge.search", "i2.2xlarge.search", "d2.xlarge.search", "d2.2xlarge.search", "d2.4xlarge.search", "d2.8xlarge.search", "c4.large.search", "c4.xlarge.search", "c4.2xlarge.search", "c4.4xlarge.search", "c4.8xlarge.search", "r4.large.search", "r4.xlarge.search", "r4.2xlarge.search", "r4.4xlarge.search", "r4.8xlarge.search", "r4.16xlarge.search", "i3.large.search", "i3.xlarge.search", "i3.2xlarge.search", "i3.4xlarge.search", "i3.8xlarge.search", "i3.16xlarge.search", "r6g.large.search", "r6g.xlarge.search", "r6g.2xlarge.search", "r6g.4xlarge.search", "r6g.8xlarge.search", "r6g.12xlarge.search", "m6g.large.search", "m6g.xlarge.search", "m6g.2xlarge.search", "m6g.4xlarge.search", "m6g.8xlarge.search", "m6g.12xlarge.search", "c6g.large.search", "c6g.xlarge.search", "c6g.2xlarge.search", "c6g.4xlarge.search", "c6g.8xlarge.search", "c6g.12xlarge.search", "r6gd.large.search", "r6gd.xlarge.search", "r6gd.2xlarge.search", "r6gd.4xlarge.search", "r6gd.8xlarge.search", "r6gd.12xlarge.search", "r6gd.16xlarge.search", "t4g.small.search", "t4g.medium.search"],
    #               count: 1
    #             }
    #           }
    #         ]
    #       },
    #       ebs_options: {
    #         ebs_enabled: false,
    #         volume_type: "standard" # One of: ["standard", "gp2", "io1", "gp3"],
    #         volume_size: 1,
    #         iops: 1,
    #         throughput: 1
    #       },
    #       access_policies: "PolicyDocument",
    #       ip_address_type: "ipv4" # One of: ["ipv4", "dualstack"],
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
    #         jwt_options: {
    #           enabled: false,
    #           subject_key: "String",
    #           roles_key: "String",
    #           public_key: "String"
    #         },
    #         iam_federation_options: {
    #           enabled: false,
    #           subject_key: "IAMFederationSubjectKey",
    #           roles_key: "IAMFederationRolesKey"
    #         },
    #         anonymous_auth_disable_date: Time.now,
    #         anonymous_auth_enabled: false
    #       },
    #       identity_center_options: {
    #         enabled_api_access: false,
    #         identity_center_instance_arn: "IdentityCenterInstanceARN",
    #         subject_key: "UserName" # One of: ["UserName", "UserId", "Email"],
    #         roles_key: "GroupName" # One of: ["GroupName", "GroupId"],
    #         identity_center_application_arn: "IdentityCenterApplicationARN",
    #         identity_store_id: "IdentityStoreId"
    #       },
    #       auto_tune_options: {
    #         state: "ENABLED" # One of: ["ENABLED", "DISABLED", "ENABLE_IN_PROGRESS", "DISABLE_IN_PROGRESS", "DISABLED_AND_ROLLBACK_SCHEDULED", "DISABLED_AND_ROLLBACK_IN_PROGRESS", "DISABLED_AND_ROLLBACK_COMPLETE", "DISABLED_AND_ROLLBACK_ERROR", "ERROR"],
    #         error_message: "String",
    #         use_off_peak_window: false
    #       },
    #       change_progress_details: {
    #         change_id: "GUID",
    #         message: "Message",
    #         config_change_status: "Pending" # One of: ["Pending", "Initializing", "Validating", "ValidationFailed", "ApplyingChanges", "Completed", "PendingUserInput", "Cancelled"],
    #         initiated_by: "CUSTOMER" # One of: ["CUSTOMER", "SERVICE"],
    #         start_time: Time.now,
    #         last_updated_time: Time.now
    #       },
    #       off_peak_window_options: {
    #         enabled: false,
    #         off_peak_window: {
    #           window_start_time: {
    #             hours: 1, # required
    #             minutes: 1, # required
    #           }
    #         }
    #       },
    #       software_update_options: {
    #         auto_software_update_enabled: false
    #       },
    #       domain_processing_status: "Creating" # One of: ["Creating", "Active", "Modifying", "UpgradingEngineVersion", "UpdatingServiceSoftware", "Isolated", "Deleting"],
    #       modifying_properties: [
    #         {
    #           name: "String",
    #           active_value: "String",
    #           pending_value: "String",
    #           value_type: "PLAIN_TEXT" # One of: ["PLAIN_TEXT", "STRINGIFIED_JSON"]
    #         }
    #       ],
    #       aiml_options: {
    #         natural_language_query_generation_options: {
    #           desired_state: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #           current_state: "NOT_ENABLED" # One of: ["NOT_ENABLED", "ENABLE_COMPLETE", "ENABLE_IN_PROGRESS", "ENABLE_FAILED", "DISABLE_COMPLETE", "DISABLE_IN_PROGRESS", "DISABLE_FAILED"]
    #         },
    #         s3_vectors_engine: {
    #           enabled: false
    #         }
    #       }
    #     }
    #   }
    # @return [Types::DescribeDomainResponse]
    def describe_domain(params = {}, options = {})
      request = build_request(:describe_domain, params)
      request.send_request(options)
    end

    # <p>Returns the list of optimizations that Auto-Tune has made to an Amazon OpenSearch Service
    #    domain. For more information, see <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/auto-tune.html">Auto-Tune for Amazon OpenSearch
    #     Service</a>.</p>
    # @param [Hash, Types::DescribeDomainAutoTunesRequest] params
    # @option params [String] :domain_name
    #   <p>Name of the domain that you want Auto-Tune details about.</p>
    # @option params [Integer] :max_results
    #   <p>An optional parameter that specifies the maximum number of results to return. You can use
    #       <code>nextToken</code> to get the next page of results.</p>
    # @option params [String] :next_token
    #   <p>If your initial <code>DescribeDomainAutoTunes</code> operation returns a
    #       <code>nextToken</code>, you can include the returned <code>nextToken</code> in subsequent
    #       <code>DescribeDomainAutoTunes</code> operations, which returns results in the next page.</p>
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

    # <p>Returns information about the current blue/green deployment happening on an Amazon
    #    OpenSearch Service domain. For more information, see <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/managedomains-configuration-changes.html">Making configuration changes in Amazon OpenSearch Service</a>.</p>
    # @param [Hash, Types::DescribeDomainChangeProgressRequest] params
    # @option params [String] :domain_name
    #   <p>The name of the domain to get progress information for.</p>
    # @option params [String] :change_id
    #   <p>The specific change ID for which you want to get progress information. If omitted, the
    #      request returns information about the most recent configuration change.</p>
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
    #       last_updated_time: Time.now,
    #       config_change_status: "Pending" # One of: ["Pending", "Initializing", "Validating", "ValidationFailed", "ApplyingChanges", "Completed", "PendingUserInput", "Cancelled"],
    #       initiated_by: "CUSTOMER" # One of: ["CUSTOMER", "SERVICE"]
    #     }
    #   }
    # @return [Types::DescribeDomainChangeProgressResponse]
    def describe_domain_change_progress(params = {}, options = {})
      request = build_request(:describe_domain_change_progress, params)
      request.send_request(options)
    end

    # <p>Returns the configuration of an Amazon OpenSearch Service domain.</p>
    # @param [Hash, Types::DescribeDomainConfigRequest] params
    # @option params [String] :domain_name
    #   <p>Name of the OpenSearch Service domain configuration that you want to describe.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "DomainName", # required
    #   }
    #   options = {}
    #   response = client.describe_domain_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain_config: { # required
    #       engine_version: {
    #         options: "VersionString", # required
    #         status: { # required
    #           creation_date: Time.now, # required
    #           update_date: Time.now, # required
    #           update_version: 1,
    #           state: "RequiresIndexDocuments" # One of: ["RequiresIndexDocuments", "Processing", "Active"], # required
    #           pending_deletion: false
    #         }
    #       },
    #       cluster_config: {
    #         options: { # required
    #           instance_type: "m3.medium.search" # One of: ["m3.medium.search", "m3.large.search", "m3.xlarge.search", "m3.2xlarge.search", "m4.large.search", "m4.xlarge.search", "m4.2xlarge.search", "m4.4xlarge.search", "m4.10xlarge.search", "m5.large.search", "m5.xlarge.search", "m5.2xlarge.search", "m5.4xlarge.search", "m5.12xlarge.search", "m5.24xlarge.search", "r5.large.search", "r5.xlarge.search", "r5.2xlarge.search", "r5.4xlarge.search", "r5.12xlarge.search", "r5.24xlarge.search", "c5.large.search", "c5.xlarge.search", "c5.2xlarge.search", "c5.4xlarge.search", "c5.9xlarge.search", "c5.18xlarge.search", "t3.nano.search", "t3.micro.search", "t3.small.search", "t3.medium.search", "t3.large.search", "t3.xlarge.search", "t3.2xlarge.search", "or1.medium.search", "or1.large.search", "or1.xlarge.search", "or1.2xlarge.search", "or1.4xlarge.search", "or1.8xlarge.search", "or1.12xlarge.search", "or1.16xlarge.search", "ultrawarm1.medium.search", "ultrawarm1.large.search", "ultrawarm1.xlarge.search", "t2.micro.search", "t2.small.search", "t2.medium.search", "r3.large.search", "r3.xlarge.search", "r3.2xlarge.search", "r3.4xlarge.search", "r3.8xlarge.search", "i2.xlarge.search", "i2.2xlarge.search", "d2.xlarge.search", "d2.2xlarge.search", "d2.4xlarge.search", "d2.8xlarge.search", "c4.large.search", "c4.xlarge.search", "c4.2xlarge.search", "c4.4xlarge.search", "c4.8xlarge.search", "r4.large.search", "r4.xlarge.search", "r4.2xlarge.search", "r4.4xlarge.search", "r4.8xlarge.search", "r4.16xlarge.search", "i3.large.search", "i3.xlarge.search", "i3.2xlarge.search", "i3.4xlarge.search", "i3.8xlarge.search", "i3.16xlarge.search", "r6g.large.search", "r6g.xlarge.search", "r6g.2xlarge.search", "r6g.4xlarge.search", "r6g.8xlarge.search", "r6g.12xlarge.search", "m6g.large.search", "m6g.xlarge.search", "m6g.2xlarge.search", "m6g.4xlarge.search", "m6g.8xlarge.search", "m6g.12xlarge.search", "c6g.large.search", "c6g.xlarge.search", "c6g.2xlarge.search", "c6g.4xlarge.search", "c6g.8xlarge.search", "c6g.12xlarge.search", "r6gd.large.search", "r6gd.xlarge.search", "r6gd.2xlarge.search", "r6gd.4xlarge.search", "r6gd.8xlarge.search", "r6gd.12xlarge.search", "r6gd.16xlarge.search", "t4g.small.search", "t4g.medium.search"],
    #           instance_count: 1,
    #           dedicated_master_enabled: false,
    #           zone_awareness_enabled: false,
    #           zone_awareness_config: {
    #             availability_zone_count: 1
    #           },
    #           dedicated_master_type: "m3.medium.search" # One of: ["m3.medium.search", "m3.large.search", "m3.xlarge.search", "m3.2xlarge.search", "m4.large.search", "m4.xlarge.search", "m4.2xlarge.search", "m4.4xlarge.search", "m4.10xlarge.search", "m5.large.search", "m5.xlarge.search", "m5.2xlarge.search", "m5.4xlarge.search", "m5.12xlarge.search", "m5.24xlarge.search", "r5.large.search", "r5.xlarge.search", "r5.2xlarge.search", "r5.4xlarge.search", "r5.12xlarge.search", "r5.24xlarge.search", "c5.large.search", "c5.xlarge.search", "c5.2xlarge.search", "c5.4xlarge.search", "c5.9xlarge.search", "c5.18xlarge.search", "t3.nano.search", "t3.micro.search", "t3.small.search", "t3.medium.search", "t3.large.search", "t3.xlarge.search", "t3.2xlarge.search", "or1.medium.search", "or1.large.search", "or1.xlarge.search", "or1.2xlarge.search", "or1.4xlarge.search", "or1.8xlarge.search", "or1.12xlarge.search", "or1.16xlarge.search", "ultrawarm1.medium.search", "ultrawarm1.large.search", "ultrawarm1.xlarge.search", "t2.micro.search", "t2.small.search", "t2.medium.search", "r3.large.search", "r3.xlarge.search", "r3.2xlarge.search", "r3.4xlarge.search", "r3.8xlarge.search", "i2.xlarge.search", "i2.2xlarge.search", "d2.xlarge.search", "d2.2xlarge.search", "d2.4xlarge.search", "d2.8xlarge.search", "c4.large.search", "c4.xlarge.search", "c4.2xlarge.search", "c4.4xlarge.search", "c4.8xlarge.search", "r4.large.search", "r4.xlarge.search", "r4.2xlarge.search", "r4.4xlarge.search", "r4.8xlarge.search", "r4.16xlarge.search", "i3.large.search", "i3.xlarge.search", "i3.2xlarge.search", "i3.4xlarge.search", "i3.8xlarge.search", "i3.16xlarge.search", "r6g.large.search", "r6g.xlarge.search", "r6g.2xlarge.search", "r6g.4xlarge.search", "r6g.8xlarge.search", "r6g.12xlarge.search", "m6g.large.search", "m6g.xlarge.search", "m6g.2xlarge.search", "m6g.4xlarge.search", "m6g.8xlarge.search", "m6g.12xlarge.search", "c6g.large.search", "c6g.xlarge.search", "c6g.2xlarge.search", "c6g.4xlarge.search", "c6g.8xlarge.search", "c6g.12xlarge.search", "r6gd.large.search", "r6gd.xlarge.search", "r6gd.2xlarge.search", "r6gd.4xlarge.search", "r6gd.8xlarge.search", "r6gd.12xlarge.search", "r6gd.16xlarge.search", "t4g.small.search", "t4g.medium.search"],
    #           dedicated_master_count: 1,
    #           warm_enabled: false,
    #           warm_type: "ultrawarm1.medium.search" # One of: ["ultrawarm1.medium.search", "ultrawarm1.large.search", "ultrawarm1.xlarge.search"],
    #           warm_count: 1,
    #           cold_storage_options: {
    #             enabled: false, # required
    #           },
    #           multi_az_with_standby_enabled: false,
    #           node_options: [
    #             {
    #               node_type: "coordinator" # One of: ["coordinator"],
    #               node_config: {
    #                 enabled: false,
    #                 type: "m3.medium.search" # One of: ["m3.medium.search", "m3.large.search", "m3.xlarge.search", "m3.2xlarge.search", "m4.large.search", "m4.xlarge.search", "m4.2xlarge.search", "m4.4xlarge.search", "m4.10xlarge.search", "m5.large.search", "m5.xlarge.search", "m5.2xlarge.search", "m5.4xlarge.search", "m5.12xlarge.search", "m5.24xlarge.search", "r5.large.search", "r5.xlarge.search", "r5.2xlarge.search", "r5.4xlarge.search", "r5.12xlarge.search", "r5.24xlarge.search", "c5.large.search", "c5.xlarge.search", "c5.2xlarge.search", "c5.4xlarge.search", "c5.9xlarge.search", "c5.18xlarge.search", "t3.nano.search", "t3.micro.search", "t3.small.search", "t3.medium.search", "t3.large.search", "t3.xlarge.search", "t3.2xlarge.search", "or1.medium.search", "or1.large.search", "or1.xlarge.search", "or1.2xlarge.search", "or1.4xlarge.search", "or1.8xlarge.search", "or1.12xlarge.search", "or1.16xlarge.search", "ultrawarm1.medium.search", "ultrawarm1.large.search", "ultrawarm1.xlarge.search", "t2.micro.search", "t2.small.search", "t2.medium.search", "r3.large.search", "r3.xlarge.search", "r3.2xlarge.search", "r3.4xlarge.search", "r3.8xlarge.search", "i2.xlarge.search", "i2.2xlarge.search", "d2.xlarge.search", "d2.2xlarge.search", "d2.4xlarge.search", "d2.8xlarge.search", "c4.large.search", "c4.xlarge.search", "c4.2xlarge.search", "c4.4xlarge.search", "c4.8xlarge.search", "r4.large.search", "r4.xlarge.search", "r4.2xlarge.search", "r4.4xlarge.search", "r4.8xlarge.search", "r4.16xlarge.search", "i3.large.search", "i3.xlarge.search", "i3.2xlarge.search", "i3.4xlarge.search", "i3.8xlarge.search", "i3.16xlarge.search", "r6g.large.search", "r6g.xlarge.search", "r6g.2xlarge.search", "r6g.4xlarge.search", "r6g.8xlarge.search", "r6g.12xlarge.search", "m6g.large.search", "m6g.xlarge.search", "m6g.2xlarge.search", "m6g.4xlarge.search", "m6g.8xlarge.search", "m6g.12xlarge.search", "c6g.large.search", "c6g.xlarge.search", "c6g.2xlarge.search", "c6g.4xlarge.search", "c6g.8xlarge.search", "c6g.12xlarge.search", "r6gd.large.search", "r6gd.xlarge.search", "r6gd.2xlarge.search", "r6gd.4xlarge.search", "r6gd.8xlarge.search", "r6gd.12xlarge.search", "r6gd.16xlarge.search", "t4g.small.search", "t4g.medium.search"],
    #                 count: 1
    #               }
    #             }
    #           ]
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
    #       ip_address_type: {
    #         options: "ipv4" # One of: ["ipv4", "dualstack"], # required
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
    #           jwt_options: {
    #             enabled: false,
    #             subject_key: "String",
    #             roles_key: "String",
    #             public_key: "String"
    #           },
    #           iam_federation_options: {
    #             enabled: false,
    #             subject_key: "IAMFederationSubjectKey",
    #             roles_key: "IAMFederationRolesKey"
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
    #       identity_center_options: {
    #         options: { # required
    #           enabled_api_access: false,
    #           identity_center_instance_arn: "IdentityCenterInstanceARN",
    #           subject_key: "UserName" # One of: ["UserName", "UserId", "Email"],
    #           roles_key: "GroupName" # One of: ["GroupName", "GroupId"],
    #           identity_center_application_arn: "IdentityCenterApplicationARN",
    #           identity_store_id: "IdentityStoreId"
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
    #           ],
    #           use_off_peak_window: false
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
    #         initiated_by: "CUSTOMER" # One of: ["CUSTOMER", "SERVICE"],
    #         start_time: Time.now,
    #         last_updated_time: Time.now
    #       },
    #       off_peak_window_options: {
    #         options: {
    #           enabled: false,
    #           off_peak_window: {
    #             window_start_time: {
    #               hours: 1, # required
    #               minutes: 1, # required
    #             }
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
    #       software_update_options: {
    #         options: {
    #           auto_software_update_enabled: false
    #         },
    #         status: {
    #           creation_date: Time.now, # required
    #           update_date: Time.now, # required
    #           update_version: 1,
    #           state: "RequiresIndexDocuments" # One of: ["RequiresIndexDocuments", "Processing", "Active"], # required
    #           pending_deletion: false
    #         }
    #       },
    #       modifying_properties: [
    #         {
    #           name: "String",
    #           active_value: "String",
    #           pending_value: "String",
    #           value_type: "PLAIN_TEXT" # One of: ["PLAIN_TEXT", "STRINGIFIED_JSON"]
    #         }
    #       ],
    #       aiml_options: {
    #         options: {
    #           natural_language_query_generation_options: {
    #             desired_state: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #             current_state: "NOT_ENABLED" # One of: ["NOT_ENABLED", "ENABLE_COMPLETE", "ENABLE_IN_PROGRESS", "ENABLE_FAILED", "DISABLE_COMPLETE", "DISABLE_IN_PROGRESS", "DISABLE_FAILED"]
    #           },
    #           s3_vectors_engine: {
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
    #       }
    #     }
    #   }
    # @return [Types::DescribeDomainConfigResponse]
    def describe_domain_config(params = {}, options = {})
      request = build_request(:describe_domain_config, params)
      request.send_request(options)
    end

    # <p>Returns information about domain and node health, the standby Availability Zone, number of nodes per Availability Zone, and shard count per node.</p>
    # @param [Hash, Types::DescribeDomainHealthRequest] params
    # @option params [String] :domain_name
    #   <p>The name of the domain.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "DomainName", # required
    #   }
    #   options = {}
    #   response = client.describe_domain_health(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain_state: "Active" # One of: ["Active", "Processing", "NotAvailable"],
    #     availability_zone_count: "NumberOfAZs",
    #     active_availability_zone_count: "NumberOfAZs",
    #     stand_by_availability_zone_count: "NumberOfAZs",
    #     data_node_count: "NumberOfNodes",
    #     dedicated_master: false,
    #     master_eligible_node_count: "NumberOfNodes",
    #     warm_node_count: "NumberOfNodes",
    #     master_node: "Available" # One of: ["Available", "UnAvailable"],
    #     cluster_health: "Red" # One of: ["Red", "Yellow", "Green", "NotAvailable"],
    #     total_shards: "NumberOfShards",
    #     total_un_assigned_shards: "NumberOfShards",
    #     environment_information: [
    #       {
    #         availability_zone_information: [
    #           {
    #             availability_zone_name: "AvailabilityZone",
    #             zone_status: "Active" # One of: ["Active", "StandBy", "NotAvailable"],
    #             configured_data_node_count: "NumberOfNodes",
    #             available_data_node_count: "NumberOfNodes",
    #             total_shards: "NumberOfShards",
    #             total_un_assigned_shards: "NumberOfShards"
    #           }
    #         ]
    #       }
    #     ]
    #   }
    # @return [Types::DescribeDomainHealthResponse]
    def describe_domain_health(params = {}, options = {})
      request = build_request(:describe_domain_health, params)
      request.send_request(options)
    end

    # <p>Returns information about domain and nodes, including data nodes, master nodes, ultrawarm
    #    nodes, Availability Zone(s), standby nodes, node configurations, and node states.</p>
    # @param [Hash, Types::DescribeDomainNodesRequest] params
    # @option params [String] :domain_name
    #   <p>The name of the domain.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "DomainName", # required
    #   }
    #   options = {}
    #   response = client.describe_domain_nodes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain_nodes_status_list: [
    #       {
    #         node_id: "NodeId",
    #         node_type: "Data" # One of: ["Data", "Ultrawarm", "Master"],
    #         availability_zone: "AvailabilityZone",
    #         instance_type: "m3.medium.search" # One of: ["m3.medium.search", "m3.large.search", "m3.xlarge.search", "m3.2xlarge.search", "m4.large.search", "m4.xlarge.search", "m4.2xlarge.search", "m4.4xlarge.search", "m4.10xlarge.search", "m5.large.search", "m5.xlarge.search", "m5.2xlarge.search", "m5.4xlarge.search", "m5.12xlarge.search", "m5.24xlarge.search", "r5.large.search", "r5.xlarge.search", "r5.2xlarge.search", "r5.4xlarge.search", "r5.12xlarge.search", "r5.24xlarge.search", "c5.large.search", "c5.xlarge.search", "c5.2xlarge.search", "c5.4xlarge.search", "c5.9xlarge.search", "c5.18xlarge.search", "t3.nano.search", "t3.micro.search", "t3.small.search", "t3.medium.search", "t3.large.search", "t3.xlarge.search", "t3.2xlarge.search", "or1.medium.search", "or1.large.search", "or1.xlarge.search", "or1.2xlarge.search", "or1.4xlarge.search", "or1.8xlarge.search", "or1.12xlarge.search", "or1.16xlarge.search", "ultrawarm1.medium.search", "ultrawarm1.large.search", "ultrawarm1.xlarge.search", "t2.micro.search", "t2.small.search", "t2.medium.search", "r3.large.search", "r3.xlarge.search", "r3.2xlarge.search", "r3.4xlarge.search", "r3.8xlarge.search", "i2.xlarge.search", "i2.2xlarge.search", "d2.xlarge.search", "d2.2xlarge.search", "d2.4xlarge.search", "d2.8xlarge.search", "c4.large.search", "c4.xlarge.search", "c4.2xlarge.search", "c4.4xlarge.search", "c4.8xlarge.search", "r4.large.search", "r4.xlarge.search", "r4.2xlarge.search", "r4.4xlarge.search", "r4.8xlarge.search", "r4.16xlarge.search", "i3.large.search", "i3.xlarge.search", "i3.2xlarge.search", "i3.4xlarge.search", "i3.8xlarge.search", "i3.16xlarge.search", "r6g.large.search", "r6g.xlarge.search", "r6g.2xlarge.search", "r6g.4xlarge.search", "r6g.8xlarge.search", "r6g.12xlarge.search", "m6g.large.search", "m6g.xlarge.search", "m6g.2xlarge.search", "m6g.4xlarge.search", "m6g.8xlarge.search", "m6g.12xlarge.search", "c6g.large.search", "c6g.xlarge.search", "c6g.2xlarge.search", "c6g.4xlarge.search", "c6g.8xlarge.search", "c6g.12xlarge.search", "r6gd.large.search", "r6gd.xlarge.search", "r6gd.2xlarge.search", "r6gd.4xlarge.search", "r6gd.8xlarge.search", "r6gd.12xlarge.search", "r6gd.16xlarge.search", "t4g.small.search", "t4g.medium.search"],
    #         node_status: "Active" # One of: ["Active", "StandBy", "NotAvailable"],
    #         storage_type: "StorageTypeName",
    #         storage_volume_type: "standard" # One of: ["standard", "gp2", "io1", "gp3"],
    #         storage_size: "VolumeSize"
    #       }
    #     ]
    #   }
    # @return [Types::DescribeDomainNodesResponse]
    def describe_domain_nodes(params = {}, options = {})
      request = build_request(:describe_domain_nodes, params)
      request.send_request(options)
    end

    # <p>Returns domain configuration information about the specified Amazon OpenSearch Service
    #    domains.</p>
    # @param [Hash, Types::DescribeDomainsRequest] params
    # @option params [Array<String>] :domain_names
    #   <p>Array of OpenSearch Service domain names that you want information about. You must specify
    #      at least one domain name.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_names: ["DomainName"], # required
    #   }
    #   options = {}
    #   response = client.describe_domains(params, options)
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
    #         endpoint_v2: "ServiceUrl",
    #         endpoints: {
    #           "String" => "ServiceUrl"
    #         },
    #         domain_endpoint_v2_hosted_zone_id: "HostedZoneId",
    #         processing: false,
    #         upgrade_processing: false,
    #         engine_version: "VersionString",
    #         cluster_config: { # required
    #           instance_type: "m3.medium.search" # One of: ["m3.medium.search", "m3.large.search", "m3.xlarge.search", "m3.2xlarge.search", "m4.large.search", "m4.xlarge.search", "m4.2xlarge.search", "m4.4xlarge.search", "m4.10xlarge.search", "m5.large.search", "m5.xlarge.search", "m5.2xlarge.search", "m5.4xlarge.search", "m5.12xlarge.search", "m5.24xlarge.search", "r5.large.search", "r5.xlarge.search", "r5.2xlarge.search", "r5.4xlarge.search", "r5.12xlarge.search", "r5.24xlarge.search", "c5.large.search", "c5.xlarge.search", "c5.2xlarge.search", "c5.4xlarge.search", "c5.9xlarge.search", "c5.18xlarge.search", "t3.nano.search", "t3.micro.search", "t3.small.search", "t3.medium.search", "t3.large.search", "t3.xlarge.search", "t3.2xlarge.search", "or1.medium.search", "or1.large.search", "or1.xlarge.search", "or1.2xlarge.search", "or1.4xlarge.search", "or1.8xlarge.search", "or1.12xlarge.search", "or1.16xlarge.search", "ultrawarm1.medium.search", "ultrawarm1.large.search", "ultrawarm1.xlarge.search", "t2.micro.search", "t2.small.search", "t2.medium.search", "r3.large.search", "r3.xlarge.search", "r3.2xlarge.search", "r3.4xlarge.search", "r3.8xlarge.search", "i2.xlarge.search", "i2.2xlarge.search", "d2.xlarge.search", "d2.2xlarge.search", "d2.4xlarge.search", "d2.8xlarge.search", "c4.large.search", "c4.xlarge.search", "c4.2xlarge.search", "c4.4xlarge.search", "c4.8xlarge.search", "r4.large.search", "r4.xlarge.search", "r4.2xlarge.search", "r4.4xlarge.search", "r4.8xlarge.search", "r4.16xlarge.search", "i3.large.search", "i3.xlarge.search", "i3.2xlarge.search", "i3.4xlarge.search", "i3.8xlarge.search", "i3.16xlarge.search", "r6g.large.search", "r6g.xlarge.search", "r6g.2xlarge.search", "r6g.4xlarge.search", "r6g.8xlarge.search", "r6g.12xlarge.search", "m6g.large.search", "m6g.xlarge.search", "m6g.2xlarge.search", "m6g.4xlarge.search", "m6g.8xlarge.search", "m6g.12xlarge.search", "c6g.large.search", "c6g.xlarge.search", "c6g.2xlarge.search", "c6g.4xlarge.search", "c6g.8xlarge.search", "c6g.12xlarge.search", "r6gd.large.search", "r6gd.xlarge.search", "r6gd.2xlarge.search", "r6gd.4xlarge.search", "r6gd.8xlarge.search", "r6gd.12xlarge.search", "r6gd.16xlarge.search", "t4g.small.search", "t4g.medium.search"],
    #           instance_count: 1,
    #           dedicated_master_enabled: false,
    #           zone_awareness_enabled: false,
    #           zone_awareness_config: {
    #             availability_zone_count: 1
    #           },
    #           dedicated_master_type: "m3.medium.search" # One of: ["m3.medium.search", "m3.large.search", "m3.xlarge.search", "m3.2xlarge.search", "m4.large.search", "m4.xlarge.search", "m4.2xlarge.search", "m4.4xlarge.search", "m4.10xlarge.search", "m5.large.search", "m5.xlarge.search", "m5.2xlarge.search", "m5.4xlarge.search", "m5.12xlarge.search", "m5.24xlarge.search", "r5.large.search", "r5.xlarge.search", "r5.2xlarge.search", "r5.4xlarge.search", "r5.12xlarge.search", "r5.24xlarge.search", "c5.large.search", "c5.xlarge.search", "c5.2xlarge.search", "c5.4xlarge.search", "c5.9xlarge.search", "c5.18xlarge.search", "t3.nano.search", "t3.micro.search", "t3.small.search", "t3.medium.search", "t3.large.search", "t3.xlarge.search", "t3.2xlarge.search", "or1.medium.search", "or1.large.search", "or1.xlarge.search", "or1.2xlarge.search", "or1.4xlarge.search", "or1.8xlarge.search", "or1.12xlarge.search", "or1.16xlarge.search", "ultrawarm1.medium.search", "ultrawarm1.large.search", "ultrawarm1.xlarge.search", "t2.micro.search", "t2.small.search", "t2.medium.search", "r3.large.search", "r3.xlarge.search", "r3.2xlarge.search", "r3.4xlarge.search", "r3.8xlarge.search", "i2.xlarge.search", "i2.2xlarge.search", "d2.xlarge.search", "d2.2xlarge.search", "d2.4xlarge.search", "d2.8xlarge.search", "c4.large.search", "c4.xlarge.search", "c4.2xlarge.search", "c4.4xlarge.search", "c4.8xlarge.search", "r4.large.search", "r4.xlarge.search", "r4.2xlarge.search", "r4.4xlarge.search", "r4.8xlarge.search", "r4.16xlarge.search", "i3.large.search", "i3.xlarge.search", "i3.2xlarge.search", "i3.4xlarge.search", "i3.8xlarge.search", "i3.16xlarge.search", "r6g.large.search", "r6g.xlarge.search", "r6g.2xlarge.search", "r6g.4xlarge.search", "r6g.8xlarge.search", "r6g.12xlarge.search", "m6g.large.search", "m6g.xlarge.search", "m6g.2xlarge.search", "m6g.4xlarge.search", "m6g.8xlarge.search", "m6g.12xlarge.search", "c6g.large.search", "c6g.xlarge.search", "c6g.2xlarge.search", "c6g.4xlarge.search", "c6g.8xlarge.search", "c6g.12xlarge.search", "r6gd.large.search", "r6gd.xlarge.search", "r6gd.2xlarge.search", "r6gd.4xlarge.search", "r6gd.8xlarge.search", "r6gd.12xlarge.search", "r6gd.16xlarge.search", "t4g.small.search", "t4g.medium.search"],
    #           dedicated_master_count: 1,
    #           warm_enabled: false,
    #           warm_type: "ultrawarm1.medium.search" # One of: ["ultrawarm1.medium.search", "ultrawarm1.large.search", "ultrawarm1.xlarge.search"],
    #           warm_count: 1,
    #           cold_storage_options: {
    #             enabled: false, # required
    #           },
    #           multi_az_with_standby_enabled: false,
    #           node_options: [
    #             {
    #               node_type: "coordinator" # One of: ["coordinator"],
    #               node_config: {
    #                 enabled: false,
    #                 type: "m3.medium.search" # One of: ["m3.medium.search", "m3.large.search", "m3.xlarge.search", "m3.2xlarge.search", "m4.large.search", "m4.xlarge.search", "m4.2xlarge.search", "m4.4xlarge.search", "m4.10xlarge.search", "m5.large.search", "m5.xlarge.search", "m5.2xlarge.search", "m5.4xlarge.search", "m5.12xlarge.search", "m5.24xlarge.search", "r5.large.search", "r5.xlarge.search", "r5.2xlarge.search", "r5.4xlarge.search", "r5.12xlarge.search", "r5.24xlarge.search", "c5.large.search", "c5.xlarge.search", "c5.2xlarge.search", "c5.4xlarge.search", "c5.9xlarge.search", "c5.18xlarge.search", "t3.nano.search", "t3.micro.search", "t3.small.search", "t3.medium.search", "t3.large.search", "t3.xlarge.search", "t3.2xlarge.search", "or1.medium.search", "or1.large.search", "or1.xlarge.search", "or1.2xlarge.search", "or1.4xlarge.search", "or1.8xlarge.search", "or1.12xlarge.search", "or1.16xlarge.search", "ultrawarm1.medium.search", "ultrawarm1.large.search", "ultrawarm1.xlarge.search", "t2.micro.search", "t2.small.search", "t2.medium.search", "r3.large.search", "r3.xlarge.search", "r3.2xlarge.search", "r3.4xlarge.search", "r3.8xlarge.search", "i2.xlarge.search", "i2.2xlarge.search", "d2.xlarge.search", "d2.2xlarge.search", "d2.4xlarge.search", "d2.8xlarge.search", "c4.large.search", "c4.xlarge.search", "c4.2xlarge.search", "c4.4xlarge.search", "c4.8xlarge.search", "r4.large.search", "r4.xlarge.search", "r4.2xlarge.search", "r4.4xlarge.search", "r4.8xlarge.search", "r4.16xlarge.search", "i3.large.search", "i3.xlarge.search", "i3.2xlarge.search", "i3.4xlarge.search", "i3.8xlarge.search", "i3.16xlarge.search", "r6g.large.search", "r6g.xlarge.search", "r6g.2xlarge.search", "r6g.4xlarge.search", "r6g.8xlarge.search", "r6g.12xlarge.search", "m6g.large.search", "m6g.xlarge.search", "m6g.2xlarge.search", "m6g.4xlarge.search", "m6g.8xlarge.search", "m6g.12xlarge.search", "c6g.large.search", "c6g.xlarge.search", "c6g.2xlarge.search", "c6g.4xlarge.search", "c6g.8xlarge.search", "c6g.12xlarge.search", "r6gd.large.search", "r6gd.xlarge.search", "r6gd.2xlarge.search", "r6gd.4xlarge.search", "r6gd.8xlarge.search", "r6gd.12xlarge.search", "r6gd.16xlarge.search", "t4g.small.search", "t4g.medium.search"],
    #                 count: 1
    #               }
    #             }
    #           ]
    #         },
    #         ebs_options: {
    #           ebs_enabled: false,
    #           volume_type: "standard" # One of: ["standard", "gp2", "io1", "gp3"],
    #           volume_size: 1,
    #           iops: 1,
    #           throughput: 1
    #         },
    #         access_policies: "PolicyDocument",
    #         ip_address_type: "ipv4" # One of: ["ipv4", "dualstack"],
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
    #           jwt_options: {
    #             enabled: false,
    #             subject_key: "String",
    #             roles_key: "String",
    #             public_key: "String"
    #           },
    #           iam_federation_options: {
    #             enabled: false,
    #             subject_key: "IAMFederationSubjectKey",
    #             roles_key: "IAMFederationRolesKey"
    #           },
    #           anonymous_auth_disable_date: Time.now,
    #           anonymous_auth_enabled: false
    #         },
    #         identity_center_options: {
    #           enabled_api_access: false,
    #           identity_center_instance_arn: "IdentityCenterInstanceARN",
    #           subject_key: "UserName" # One of: ["UserName", "UserId", "Email"],
    #           roles_key: "GroupName" # One of: ["GroupName", "GroupId"],
    #           identity_center_application_arn: "IdentityCenterApplicationARN",
    #           identity_store_id: "IdentityStoreId"
    #         },
    #         auto_tune_options: {
    #           state: "ENABLED" # One of: ["ENABLED", "DISABLED", "ENABLE_IN_PROGRESS", "DISABLE_IN_PROGRESS", "DISABLED_AND_ROLLBACK_SCHEDULED", "DISABLED_AND_ROLLBACK_IN_PROGRESS", "DISABLED_AND_ROLLBACK_COMPLETE", "DISABLED_AND_ROLLBACK_ERROR", "ERROR"],
    #           error_message: "String",
    #           use_off_peak_window: false
    #         },
    #         change_progress_details: {
    #           change_id: "GUID",
    #           message: "Message",
    #           config_change_status: "Pending" # One of: ["Pending", "Initializing", "Validating", "ValidationFailed", "ApplyingChanges", "Completed", "PendingUserInput", "Cancelled"],
    #           initiated_by: "CUSTOMER" # One of: ["CUSTOMER", "SERVICE"],
    #           start_time: Time.now,
    #           last_updated_time: Time.now
    #         },
    #         off_peak_window_options: {
    #           enabled: false,
    #           off_peak_window: {
    #             window_start_time: {
    #               hours: 1, # required
    #               minutes: 1, # required
    #             }
    #           }
    #         },
    #         software_update_options: {
    #           auto_software_update_enabled: false
    #         },
    #         domain_processing_status: "Creating" # One of: ["Creating", "Active", "Modifying", "UpgradingEngineVersion", "UpdatingServiceSoftware", "Isolated", "Deleting"],
    #         modifying_properties: [
    #           {
    #             name: "String",
    #             active_value: "String",
    #             pending_value: "String",
    #             value_type: "PLAIN_TEXT" # One of: ["PLAIN_TEXT", "STRINGIFIED_JSON"]
    #           }
    #         ],
    #         aiml_options: {
    #           natural_language_query_generation_options: {
    #             desired_state: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #             current_state: "NOT_ENABLED" # One of: ["NOT_ENABLED", "ENABLE_COMPLETE", "ENABLE_IN_PROGRESS", "ENABLE_FAILED", "DISABLE_COMPLETE", "DISABLE_IN_PROGRESS", "DISABLE_FAILED"]
    #           },
    #           s3_vectors_engine: {
    #             enabled: false
    #           }
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::DescribeDomainsResponse]
    def describe_domains(params = {}, options = {})
      request = build_request(:describe_domains, params)
      request.send_request(options)
    end

    # <p>Describes the progress of a pre-update dry run analysis on an Amazon OpenSearch
    #    Service domain. For more information, see <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/managedomains-configuration-changes#dryrun">Determining whether a change will cause a blue/green deployment</a>.</p>
    # @param [Hash, Types::DescribeDryRunProgressRequest] params
    # @option params [String] :domain_name
    #   <p>The name of the domain.</p>
    # @option params [String] :dry_run_id
    #   <p>The unique identifier of the dry run.</p>
    # @option params [Boolean] :load_dry_run_config
    #   <p>Whether to include the configuration of the dry run in the response. The configuration
    #      specifies the updates that you're planning to make on the domain.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "DomainName", # required
    #     dry_run_id: "GUID",
    #     load_dry_run_config: false
    #   }
    #   options = {}
    #   response = client.describe_dry_run_progress(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     dry_run_progress_status: {
    #       dry_run_id: "GUID", # required
    #       dry_run_status: "String", # required
    #       creation_date: "String", # required
    #       update_date: "String", # required
    #       validation_failures: [
    #         {
    #           code: "String",
    #           message: "String"
    #         }
    #       ]
    #     },
    #     dry_run_config: {
    #       domain_id: "DomainId", # required
    #       domain_name: "DomainName", # required
    #       arn: "ARN", # required
    #       created: false,
    #       deleted: false,
    #       endpoint: "ServiceUrl",
    #       endpoint_v2: "ServiceUrl",
    #       endpoints: {
    #         "String" => "ServiceUrl"
    #       },
    #       domain_endpoint_v2_hosted_zone_id: "HostedZoneId",
    #       processing: false,
    #       upgrade_processing: false,
    #       engine_version: "VersionString",
    #       cluster_config: { # required
    #         instance_type: "m3.medium.search" # One of: ["m3.medium.search", "m3.large.search", "m3.xlarge.search", "m3.2xlarge.search", "m4.large.search", "m4.xlarge.search", "m4.2xlarge.search", "m4.4xlarge.search", "m4.10xlarge.search", "m5.large.search", "m5.xlarge.search", "m5.2xlarge.search", "m5.4xlarge.search", "m5.12xlarge.search", "m5.24xlarge.search", "r5.large.search", "r5.xlarge.search", "r5.2xlarge.search", "r5.4xlarge.search", "r5.12xlarge.search", "r5.24xlarge.search", "c5.large.search", "c5.xlarge.search", "c5.2xlarge.search", "c5.4xlarge.search", "c5.9xlarge.search", "c5.18xlarge.search", "t3.nano.search", "t3.micro.search", "t3.small.search", "t3.medium.search", "t3.large.search", "t3.xlarge.search", "t3.2xlarge.search", "or1.medium.search", "or1.large.search", "or1.xlarge.search", "or1.2xlarge.search", "or1.4xlarge.search", "or1.8xlarge.search", "or1.12xlarge.search", "or1.16xlarge.search", "ultrawarm1.medium.search", "ultrawarm1.large.search", "ultrawarm1.xlarge.search", "t2.micro.search", "t2.small.search", "t2.medium.search", "r3.large.search", "r3.xlarge.search", "r3.2xlarge.search", "r3.4xlarge.search", "r3.8xlarge.search", "i2.xlarge.search", "i2.2xlarge.search", "d2.xlarge.search", "d2.2xlarge.search", "d2.4xlarge.search", "d2.8xlarge.search", "c4.large.search", "c4.xlarge.search", "c4.2xlarge.search", "c4.4xlarge.search", "c4.8xlarge.search", "r4.large.search", "r4.xlarge.search", "r4.2xlarge.search", "r4.4xlarge.search", "r4.8xlarge.search", "r4.16xlarge.search", "i3.large.search", "i3.xlarge.search", "i3.2xlarge.search", "i3.4xlarge.search", "i3.8xlarge.search", "i3.16xlarge.search", "r6g.large.search", "r6g.xlarge.search", "r6g.2xlarge.search", "r6g.4xlarge.search", "r6g.8xlarge.search", "r6g.12xlarge.search", "m6g.large.search", "m6g.xlarge.search", "m6g.2xlarge.search", "m6g.4xlarge.search", "m6g.8xlarge.search", "m6g.12xlarge.search", "c6g.large.search", "c6g.xlarge.search", "c6g.2xlarge.search", "c6g.4xlarge.search", "c6g.8xlarge.search", "c6g.12xlarge.search", "r6gd.large.search", "r6gd.xlarge.search", "r6gd.2xlarge.search", "r6gd.4xlarge.search", "r6gd.8xlarge.search", "r6gd.12xlarge.search", "r6gd.16xlarge.search", "t4g.small.search", "t4g.medium.search"],
    #         instance_count: 1,
    #         dedicated_master_enabled: false,
    #         zone_awareness_enabled: false,
    #         zone_awareness_config: {
    #           availability_zone_count: 1
    #         },
    #         dedicated_master_type: "m3.medium.search" # One of: ["m3.medium.search", "m3.large.search", "m3.xlarge.search", "m3.2xlarge.search", "m4.large.search", "m4.xlarge.search", "m4.2xlarge.search", "m4.4xlarge.search", "m4.10xlarge.search", "m5.large.search", "m5.xlarge.search", "m5.2xlarge.search", "m5.4xlarge.search", "m5.12xlarge.search", "m5.24xlarge.search", "r5.large.search", "r5.xlarge.search", "r5.2xlarge.search", "r5.4xlarge.search", "r5.12xlarge.search", "r5.24xlarge.search", "c5.large.search", "c5.xlarge.search", "c5.2xlarge.search", "c5.4xlarge.search", "c5.9xlarge.search", "c5.18xlarge.search", "t3.nano.search", "t3.micro.search", "t3.small.search", "t3.medium.search", "t3.large.search", "t3.xlarge.search", "t3.2xlarge.search", "or1.medium.search", "or1.large.search", "or1.xlarge.search", "or1.2xlarge.search", "or1.4xlarge.search", "or1.8xlarge.search", "or1.12xlarge.search", "or1.16xlarge.search", "ultrawarm1.medium.search", "ultrawarm1.large.search", "ultrawarm1.xlarge.search", "t2.micro.search", "t2.small.search", "t2.medium.search", "r3.large.search", "r3.xlarge.search", "r3.2xlarge.search", "r3.4xlarge.search", "r3.8xlarge.search", "i2.xlarge.search", "i2.2xlarge.search", "d2.xlarge.search", "d2.2xlarge.search", "d2.4xlarge.search", "d2.8xlarge.search", "c4.large.search", "c4.xlarge.search", "c4.2xlarge.search", "c4.4xlarge.search", "c4.8xlarge.search", "r4.large.search", "r4.xlarge.search", "r4.2xlarge.search", "r4.4xlarge.search", "r4.8xlarge.search", "r4.16xlarge.search", "i3.large.search", "i3.xlarge.search", "i3.2xlarge.search", "i3.4xlarge.search", "i3.8xlarge.search", "i3.16xlarge.search", "r6g.large.search", "r6g.xlarge.search", "r6g.2xlarge.search", "r6g.4xlarge.search", "r6g.8xlarge.search", "r6g.12xlarge.search", "m6g.large.search", "m6g.xlarge.search", "m6g.2xlarge.search", "m6g.4xlarge.search", "m6g.8xlarge.search", "m6g.12xlarge.search", "c6g.large.search", "c6g.xlarge.search", "c6g.2xlarge.search", "c6g.4xlarge.search", "c6g.8xlarge.search", "c6g.12xlarge.search", "r6gd.large.search", "r6gd.xlarge.search", "r6gd.2xlarge.search", "r6gd.4xlarge.search", "r6gd.8xlarge.search", "r6gd.12xlarge.search", "r6gd.16xlarge.search", "t4g.small.search", "t4g.medium.search"],
    #         dedicated_master_count: 1,
    #         warm_enabled: false,
    #         warm_type: "ultrawarm1.medium.search" # One of: ["ultrawarm1.medium.search", "ultrawarm1.large.search", "ultrawarm1.xlarge.search"],
    #         warm_count: 1,
    #         cold_storage_options: {
    #           enabled: false, # required
    #         },
    #         multi_az_with_standby_enabled: false,
    #         node_options: [
    #           {
    #             node_type: "coordinator" # One of: ["coordinator"],
    #             node_config: {
    #               enabled: false,
    #               type: "m3.medium.search" # One of: ["m3.medium.search", "m3.large.search", "m3.xlarge.search", "m3.2xlarge.search", "m4.large.search", "m4.xlarge.search", "m4.2xlarge.search", "m4.4xlarge.search", "m4.10xlarge.search", "m5.large.search", "m5.xlarge.search", "m5.2xlarge.search", "m5.4xlarge.search", "m5.12xlarge.search", "m5.24xlarge.search", "r5.large.search", "r5.xlarge.search", "r5.2xlarge.search", "r5.4xlarge.search", "r5.12xlarge.search", "r5.24xlarge.search", "c5.large.search", "c5.xlarge.search", "c5.2xlarge.search", "c5.4xlarge.search", "c5.9xlarge.search", "c5.18xlarge.search", "t3.nano.search", "t3.micro.search", "t3.small.search", "t3.medium.search", "t3.large.search", "t3.xlarge.search", "t3.2xlarge.search", "or1.medium.search", "or1.large.search", "or1.xlarge.search", "or1.2xlarge.search", "or1.4xlarge.search", "or1.8xlarge.search", "or1.12xlarge.search", "or1.16xlarge.search", "ultrawarm1.medium.search", "ultrawarm1.large.search", "ultrawarm1.xlarge.search", "t2.micro.search", "t2.small.search", "t2.medium.search", "r3.large.search", "r3.xlarge.search", "r3.2xlarge.search", "r3.4xlarge.search", "r3.8xlarge.search", "i2.xlarge.search", "i2.2xlarge.search", "d2.xlarge.search", "d2.2xlarge.search", "d2.4xlarge.search", "d2.8xlarge.search", "c4.large.search", "c4.xlarge.search", "c4.2xlarge.search", "c4.4xlarge.search", "c4.8xlarge.search", "r4.large.search", "r4.xlarge.search", "r4.2xlarge.search", "r4.4xlarge.search", "r4.8xlarge.search", "r4.16xlarge.search", "i3.large.search", "i3.xlarge.search", "i3.2xlarge.search", "i3.4xlarge.search", "i3.8xlarge.search", "i3.16xlarge.search", "r6g.large.search", "r6g.xlarge.search", "r6g.2xlarge.search", "r6g.4xlarge.search", "r6g.8xlarge.search", "r6g.12xlarge.search", "m6g.large.search", "m6g.xlarge.search", "m6g.2xlarge.search", "m6g.4xlarge.search", "m6g.8xlarge.search", "m6g.12xlarge.search", "c6g.large.search", "c6g.xlarge.search", "c6g.2xlarge.search", "c6g.4xlarge.search", "c6g.8xlarge.search", "c6g.12xlarge.search", "r6gd.large.search", "r6gd.xlarge.search", "r6gd.2xlarge.search", "r6gd.4xlarge.search", "r6gd.8xlarge.search", "r6gd.12xlarge.search", "r6gd.16xlarge.search", "t4g.small.search", "t4g.medium.search"],
    #               count: 1
    #             }
    #           }
    #         ]
    #       },
    #       ebs_options: {
    #         ebs_enabled: false,
    #         volume_type: "standard" # One of: ["standard", "gp2", "io1", "gp3"],
    #         volume_size: 1,
    #         iops: 1,
    #         throughput: 1
    #       },
    #       access_policies: "PolicyDocument",
    #       ip_address_type: "ipv4" # One of: ["ipv4", "dualstack"],
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
    #         jwt_options: {
    #           enabled: false,
    #           subject_key: "String",
    #           roles_key: "String",
    #           public_key: "String"
    #         },
    #         iam_federation_options: {
    #           enabled: false,
    #           subject_key: "IAMFederationSubjectKey",
    #           roles_key: "IAMFederationRolesKey"
    #         },
    #         anonymous_auth_disable_date: Time.now,
    #         anonymous_auth_enabled: false
    #       },
    #       identity_center_options: {
    #         enabled_api_access: false,
    #         identity_center_instance_arn: "IdentityCenterInstanceARN",
    #         subject_key: "UserName" # One of: ["UserName", "UserId", "Email"],
    #         roles_key: "GroupName" # One of: ["GroupName", "GroupId"],
    #         identity_center_application_arn: "IdentityCenterApplicationARN",
    #         identity_store_id: "IdentityStoreId"
    #       },
    #       auto_tune_options: {
    #         state: "ENABLED" # One of: ["ENABLED", "DISABLED", "ENABLE_IN_PROGRESS", "DISABLE_IN_PROGRESS", "DISABLED_AND_ROLLBACK_SCHEDULED", "DISABLED_AND_ROLLBACK_IN_PROGRESS", "DISABLED_AND_ROLLBACK_COMPLETE", "DISABLED_AND_ROLLBACK_ERROR", "ERROR"],
    #         error_message: "String",
    #         use_off_peak_window: false
    #       },
    #       change_progress_details: {
    #         change_id: "GUID",
    #         message: "Message",
    #         config_change_status: "Pending" # One of: ["Pending", "Initializing", "Validating", "ValidationFailed", "ApplyingChanges", "Completed", "PendingUserInput", "Cancelled"],
    #         initiated_by: "CUSTOMER" # One of: ["CUSTOMER", "SERVICE"],
    #         start_time: Time.now,
    #         last_updated_time: Time.now
    #       },
    #       off_peak_window_options: {
    #         enabled: false,
    #         off_peak_window: {
    #           window_start_time: {
    #             hours: 1, # required
    #             minutes: 1, # required
    #           }
    #         }
    #       },
    #       software_update_options: {
    #         auto_software_update_enabled: false
    #       },
    #       domain_processing_status: "Creating" # One of: ["Creating", "Active", "Modifying", "UpgradingEngineVersion", "UpdatingServiceSoftware", "Isolated", "Deleting"],
    #       modifying_properties: [
    #         {
    #           name: "String",
    #           active_value: "String",
    #           pending_value: "String",
    #           value_type: "PLAIN_TEXT" # One of: ["PLAIN_TEXT", "STRINGIFIED_JSON"]
    #         }
    #       ],
    #       aiml_options: {
    #         natural_language_query_generation_options: {
    #           desired_state: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #           current_state: "NOT_ENABLED" # One of: ["NOT_ENABLED", "ENABLE_COMPLETE", "ENABLE_IN_PROGRESS", "ENABLE_FAILED", "DISABLE_COMPLETE", "DISABLE_IN_PROGRESS", "DISABLE_FAILED"]
    #         },
    #         s3_vectors_engine: {
    #           enabled: false
    #         }
    #       }
    #     },
    #     dry_run_results: {
    #       deployment_type: "DeploymentType",
    #       message: "Message"
    #     }
    #   }
    # @return [Types::DescribeDryRunProgressResponse]
    def describe_dry_run_progress(params = {}, options = {})
      request = build_request(:describe_dry_run_progress, params)
      request.send_request(options)
    end

    # <p>Lists all the inbound cross-cluster search connections for a destination (remote) Amazon
    #    OpenSearch Service domain. For more information, see <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/cross-cluster-search.html">Cross-cluster search
    #     for Amazon OpenSearch Service</a>.</p>
    # @param [Hash, Types::DescribeInboundConnectionsRequest] params
    # @option params [Array<Types::Filter>] :filters
    #   <p> A list of filters used to match properties for inbound cross-cluster connections.</p>
    # @option params [Integer] :max_results
    #   <p>An optional parameter that specifies the maximum number of results to return. You can use
    #       <code>nextToken</code> to get the next page of results.</p>
    # @option params [String] :next_token
    #   <p>If your initial <code>DescribeInboundConnections</code> operation returns a
    #       <code>nextToken</code>, you can include the returned <code>nextToken</code> in subsequent
    #       <code>DescribeInboundConnections</code> operations, which returns results in the next
    #      page.</p>
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
    #   response = client.describe_inbound_connections(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     connections: [
    #       {
    #         local_domain_info: {
    #           aws_domain_information: {
    #             owner_id: "OwnerId",
    #             domain_name: "DomainName", # required
    #             region: "Region"
    #           }
    #         },
    #         remote_domain_info: {
    #           aws_domain_information: {
    #             owner_id: "OwnerId",
    #             domain_name: "DomainName", # required
    #             region: "Region"
    #           }
    #         },
    #         connection_id: "ConnectionId",
    #         connection_status: {
    #           status_code: "PENDING_ACCEPTANCE" # One of: ["PENDING_ACCEPTANCE", "APPROVED", "PROVISIONING", "ACTIVE", "REJECTING", "REJECTED", "DELETING", "DELETED"],
    #           message: "ConnectionStatusMessage"
    #         },
    #         connection_mode: "DIRECT" # One of: ["DIRECT", "VPC_ENDPOINT"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeInboundConnectionsResponse]
    def describe_inbound_connections(params = {}, options = {})
      request = build_request(:describe_inbound_connections, params)
      request.send_request(options)
    end

    # <p>Describes the instance count, storage, and master node limits for a given OpenSearch or
    #    Elasticsearch version and instance type.</p>
    # @param [Hash, Types::DescribeInstanceTypeLimitsRequest] params
    # @option params [String] :domain_name
    #   <p>The name of the domain. Only specify if you need the limits for an existing domain.</p>
    # @option params [String] :instance_type
    #   <p>The OpenSearch Service instance type for which you need limit information.</p>
    # @option params [String] :engine_version
    #   <p>Version of OpenSearch or Elasticsearch, in the format Elasticsearch_X.Y or OpenSearch_X.Y.
    #      Defaults to the latest version of OpenSearch.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "DomainName",
    #     instance_type: "m3.medium.search" # One of: ["m3.medium.search", "m3.large.search", "m3.xlarge.search", "m3.2xlarge.search", "m4.large.search", "m4.xlarge.search", "m4.2xlarge.search", "m4.4xlarge.search", "m4.10xlarge.search", "m5.large.search", "m5.xlarge.search", "m5.2xlarge.search", "m5.4xlarge.search", "m5.12xlarge.search", "m5.24xlarge.search", "r5.large.search", "r5.xlarge.search", "r5.2xlarge.search", "r5.4xlarge.search", "r5.12xlarge.search", "r5.24xlarge.search", "c5.large.search", "c5.xlarge.search", "c5.2xlarge.search", "c5.4xlarge.search", "c5.9xlarge.search", "c5.18xlarge.search", "t3.nano.search", "t3.micro.search", "t3.small.search", "t3.medium.search", "t3.large.search", "t3.xlarge.search", "t3.2xlarge.search", "or1.medium.search", "or1.large.search", "or1.xlarge.search", "or1.2xlarge.search", "or1.4xlarge.search", "or1.8xlarge.search", "or1.12xlarge.search", "or1.16xlarge.search", "ultrawarm1.medium.search", "ultrawarm1.large.search", "ultrawarm1.xlarge.search", "t2.micro.search", "t2.small.search", "t2.medium.search", "r3.large.search", "r3.xlarge.search", "r3.2xlarge.search", "r3.4xlarge.search", "r3.8xlarge.search", "i2.xlarge.search", "i2.2xlarge.search", "d2.xlarge.search", "d2.2xlarge.search", "d2.4xlarge.search", "d2.8xlarge.search", "c4.large.search", "c4.xlarge.search", "c4.2xlarge.search", "c4.4xlarge.search", "c4.8xlarge.search", "r4.large.search", "r4.xlarge.search", "r4.2xlarge.search", "r4.4xlarge.search", "r4.8xlarge.search", "r4.16xlarge.search", "i3.large.search", "i3.xlarge.search", "i3.2xlarge.search", "i3.4xlarge.search", "i3.8xlarge.search", "i3.16xlarge.search", "r6g.large.search", "r6g.xlarge.search", "r6g.2xlarge.search", "r6g.4xlarge.search", "r6g.8xlarge.search", "r6g.12xlarge.search", "m6g.large.search", "m6g.xlarge.search", "m6g.2xlarge.search", "m6g.4xlarge.search", "m6g.8xlarge.search", "m6g.12xlarge.search", "c6g.large.search", "c6g.xlarge.search", "c6g.2xlarge.search", "c6g.4xlarge.search", "c6g.8xlarge.search", "c6g.12xlarge.search", "r6gd.large.search", "r6gd.xlarge.search", "r6gd.2xlarge.search", "r6gd.4xlarge.search", "r6gd.8xlarge.search", "r6gd.12xlarge.search", "r6gd.16xlarge.search", "t4g.small.search", "t4g.medium.search"], # required
    #     engine_version: "VersionString", # required
    #   }
    #   options = {}
    #   response = client.describe_instance_type_limits(params, options)
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
    # @return [Types::DescribeInstanceTypeLimitsResponse]
    def describe_instance_type_limits(params = {}, options = {})
      request = build_request(:describe_instance_type_limits, params)
      request.send_request(options)
    end

    # <p>Lists all the outbound cross-cluster connections for a local (source) Amazon OpenSearch
    #    Service domain. For more information, see <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/cross-cluster-search.html">Cross-cluster search
    #     for Amazon OpenSearch Service</a>.</p>
    # @param [Hash, Types::DescribeOutboundConnectionsRequest] params
    # @option params [Array<Types::Filter>] :filters
    #   <p>List of filter names and values that you can use for requests.</p>
    # @option params [Integer] :max_results
    #   <p>An optional parameter that specifies the maximum number of results to return. You can use
    #       <code>nextToken</code> to get the next page of results.</p>
    # @option params [String] :next_token
    #   <p>If your initial <code>DescribeOutboundConnections</code> operation returns a
    #       <code>nextToken</code>, you can include the returned <code>nextToken</code> in subsequent
    #       <code>DescribeOutboundConnections</code> operations, which returns results in the next
    #      page.</p>
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
    #   response = client.describe_outbound_connections(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     connections: [
    #       {
    #         local_domain_info: {
    #           aws_domain_information: {
    #             owner_id: "OwnerId",
    #             domain_name: "DomainName", # required
    #             region: "Region"
    #           }
    #         },
    #         remote_domain_info: {
    #           aws_domain_information: {
    #             owner_id: "OwnerId",
    #             domain_name: "DomainName", # required
    #             region: "Region"
    #           }
    #         },
    #         connection_id: "ConnectionId",
    #         connection_alias: "ConnectionAlias",
    #         connection_status: {
    #           status_code: "VALIDATING" # One of: ["VALIDATING", "VALIDATION_FAILED", "PENDING_ACCEPTANCE", "APPROVED", "PROVISIONING", "ACTIVE", "REJECTING", "REJECTED", "DELETING", "DELETED"],
    #           message: "ConnectionStatusMessage"
    #         },
    #         connection_mode: "DIRECT" # One of: ["DIRECT", "VPC_ENDPOINT"],
    #         connection_properties: {
    #           endpoint: "Endpoint",
    #           cross_cluster_search: {
    #             skip_unavailable: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #           }
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeOutboundConnectionsResponse]
    def describe_outbound_connections(params = {}, options = {})
      request = build_request(:describe_outbound_connections, params)
      request.send_request(options)
    end

    # <p>Describes all packages available to OpenSearch Service. For more information, see <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/custom-packages.html">Custom
    #     packages for Amazon OpenSearch Service</a>.</p>
    # @param [Hash, Types::DescribePackagesRequest] params
    # @option params [Array<Types::DescribePackagesFilter>] :filters
    #   <p>Only returns packages that match the <code>DescribePackagesFilterList</code> values.</p>
    # @option params [Integer] :max_results
    #   <p>An optional parameter that specifies the maximum number of results to return. You can use
    #      <code>nextToken</code> to get the next page of results.</p>
    # @option params [String] :next_token
    #   <p>If your initial <code>DescribePackageFilters</code> operation returns a
    #      <code>nextToken</code>, you can include the returned <code>nextToken</code> in subsequent
    #      <code>DescribePackageFilters</code> operations, which returns results in the next page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filters: [
    #       {
    #         name: "PackageID" # One of: ["PackageID", "PackageName", "PackageStatus", "PackageType", "EngineVersion", "PackageOwner"],
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
    #         package_type: "TXT-DICTIONARY" # One of: ["TXT-DICTIONARY", "ZIP-PLUGIN", "PACKAGE-LICENSE", "PACKAGE-CONFIG"],
    #         package_description: "PackageDescription",
    #         package_status: "COPYING" # One of: ["COPYING", "COPY_FAILED", "VALIDATING", "VALIDATION_FAILED", "AVAILABLE", "DELETING", "DELETED", "DELETE_FAILED"],
    #         created_at: Time.now,
    #         last_updated_at: Time.now,
    #         available_package_version: "PackageVersion",
    #         error_details: {
    #           error_type: "ErrorType",
    #           error_message: "ErrorMessage"
    #         },
    #         engine_version: "EngineVersion",
    #         available_plugin_properties: {
    #           name: "PluginName",
    #           description: "PluginDescription",
    #           version: "PluginVersion",
    #           class_name: "PluginClassName",
    #           uncompressed_size_in_bytes: 1
    #         },
    #         available_package_configuration: {
    #           license_requirement: "REQUIRED" # One of: ["REQUIRED", "OPTIONAL", "NONE"], # required
    #           license_filepath: "LicenseFilepath",
    #           configuration_requirement: "REQUIRED" # One of: ["REQUIRED", "OPTIONAL", "NONE"], # required
    #           requires_restart_for_configuration_update: false
    #         },
    #         allow_listed_user_list: ["PackageUser"],
    #         package_owner: "PackageOwner",
    #         package_vending_options: {
    #           vending_enabled: false, # required
    #         },
    #         package_encryption_options: {
    #           kms_key_identifier: "KmsKeyId",
    #           encryption_enabled: false, # required
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

    # <p>Describes the available Amazon OpenSearch Service Reserved Instance offerings for a given
    #    Region. For more information, see <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/ri.html">Reserved Instances in Amazon OpenSearch Service</a>.</p>
    # @param [Hash, Types::DescribeReservedInstanceOfferingsRequest] params
    # @option params [String] :reserved_instance_offering_id
    #   <p>The Reserved Instance identifier filter value. Use this parameter to show only the available
    #      instance types that match the specified reservation identifier.</p>
    # @option params [Integer] :max_results
    #   <p>An optional parameter that specifies the maximum number of results to return. You can use
    #       <code>nextToken</code> to get the next page of results.</p>
    # @option params [String] :next_token
    #   <p>If your initial <code>DescribeReservedInstanceOfferings</code> operation returns a
    #       <code>nextToken</code>, you can include the returned <code>nextToken</code> in subsequent
    #       <code>DescribeReservedInstanceOfferings</code> operations, which returns results in the next
    #      page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     reserved_instance_offering_id: "GUID",
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.describe_reserved_instance_offerings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     reserved_instance_offerings: [
    #       {
    #         reserved_instance_offering_id: "GUID",
    #         instance_type: "m3.medium.search" # One of: ["m3.medium.search", "m3.large.search", "m3.xlarge.search", "m3.2xlarge.search", "m4.large.search", "m4.xlarge.search", "m4.2xlarge.search", "m4.4xlarge.search", "m4.10xlarge.search", "m5.large.search", "m5.xlarge.search", "m5.2xlarge.search", "m5.4xlarge.search", "m5.12xlarge.search", "m5.24xlarge.search", "r5.large.search", "r5.xlarge.search", "r5.2xlarge.search", "r5.4xlarge.search", "r5.12xlarge.search", "r5.24xlarge.search", "c5.large.search", "c5.xlarge.search", "c5.2xlarge.search", "c5.4xlarge.search", "c5.9xlarge.search", "c5.18xlarge.search", "t3.nano.search", "t3.micro.search", "t3.small.search", "t3.medium.search", "t3.large.search", "t3.xlarge.search", "t3.2xlarge.search", "or1.medium.search", "or1.large.search", "or1.xlarge.search", "or1.2xlarge.search", "or1.4xlarge.search", "or1.8xlarge.search", "or1.12xlarge.search", "or1.16xlarge.search", "ultrawarm1.medium.search", "ultrawarm1.large.search", "ultrawarm1.xlarge.search", "t2.micro.search", "t2.small.search", "t2.medium.search", "r3.large.search", "r3.xlarge.search", "r3.2xlarge.search", "r3.4xlarge.search", "r3.8xlarge.search", "i2.xlarge.search", "i2.2xlarge.search", "d2.xlarge.search", "d2.2xlarge.search", "d2.4xlarge.search", "d2.8xlarge.search", "c4.large.search", "c4.xlarge.search", "c4.2xlarge.search", "c4.4xlarge.search", "c4.8xlarge.search", "r4.large.search", "r4.xlarge.search", "r4.2xlarge.search", "r4.4xlarge.search", "r4.8xlarge.search", "r4.16xlarge.search", "i3.large.search", "i3.xlarge.search", "i3.2xlarge.search", "i3.4xlarge.search", "i3.8xlarge.search", "i3.16xlarge.search", "r6g.large.search", "r6g.xlarge.search", "r6g.2xlarge.search", "r6g.4xlarge.search", "r6g.8xlarge.search", "r6g.12xlarge.search", "m6g.large.search", "m6g.xlarge.search", "m6g.2xlarge.search", "m6g.4xlarge.search", "m6g.8xlarge.search", "m6g.12xlarge.search", "c6g.large.search", "c6g.xlarge.search", "c6g.2xlarge.search", "c6g.4xlarge.search", "c6g.8xlarge.search", "c6g.12xlarge.search", "r6gd.large.search", "r6gd.xlarge.search", "r6gd.2xlarge.search", "r6gd.4xlarge.search", "r6gd.8xlarge.search", "r6gd.12xlarge.search", "r6gd.16xlarge.search", "t4g.small.search", "t4g.medium.search"],
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
    # @return [Types::DescribeReservedInstanceOfferingsResponse]
    def describe_reserved_instance_offerings(params = {}, options = {})
      request = build_request(:describe_reserved_instance_offerings, params)
      request.send_request(options)
    end

    # <p>Describes the Amazon OpenSearch Service instances that you have reserved in a given Region.
    #    For more information, see <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/ri.html">Reserved Instances in Amazon OpenSearch
    #     Service</a>.</p>
    # @param [Hash, Types::DescribeReservedInstancesRequest] params
    # @option params [String] :reserved_instance_id
    #   <p>The reserved instance identifier filter value. Use this parameter to show only the reservation that matches the
    #      specified reserved OpenSearch instance ID.</p>
    # @option params [Integer] :max_results
    #   <p>An optional parameter that specifies the maximum number of results to return. You can use
    #       <code>nextToken</code> to get the next page of results.</p>
    # @option params [String] :next_token
    #   <p>If your initial <code>DescribeReservedInstances</code> operation returns a
    #       <code>nextToken</code>, you can include the returned <code>nextToken</code> in subsequent
    #       <code>DescribeReservedInstances</code> operations, which returns results in the next
    #      page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     reserved_instance_id: "GUID",
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.describe_reserved_instances(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "String",
    #     reserved_instances: [
    #       {
    #         reservation_name: "ReservationToken",
    #         reserved_instance_id: "GUID",
    #         billing_subscription_id: 1,
    #         reserved_instance_offering_id: "String",
    #         instance_type: "m3.medium.search" # One of: ["m3.medium.search", "m3.large.search", "m3.xlarge.search", "m3.2xlarge.search", "m4.large.search", "m4.xlarge.search", "m4.2xlarge.search", "m4.4xlarge.search", "m4.10xlarge.search", "m5.large.search", "m5.xlarge.search", "m5.2xlarge.search", "m5.4xlarge.search", "m5.12xlarge.search", "m5.24xlarge.search", "r5.large.search", "r5.xlarge.search", "r5.2xlarge.search", "r5.4xlarge.search", "r5.12xlarge.search", "r5.24xlarge.search", "c5.large.search", "c5.xlarge.search", "c5.2xlarge.search", "c5.4xlarge.search", "c5.9xlarge.search", "c5.18xlarge.search", "t3.nano.search", "t3.micro.search", "t3.small.search", "t3.medium.search", "t3.large.search", "t3.xlarge.search", "t3.2xlarge.search", "or1.medium.search", "or1.large.search", "or1.xlarge.search", "or1.2xlarge.search", "or1.4xlarge.search", "or1.8xlarge.search", "or1.12xlarge.search", "or1.16xlarge.search", "ultrawarm1.medium.search", "ultrawarm1.large.search", "ultrawarm1.xlarge.search", "t2.micro.search", "t2.small.search", "t2.medium.search", "r3.large.search", "r3.xlarge.search", "r3.2xlarge.search", "r3.4xlarge.search", "r3.8xlarge.search", "i2.xlarge.search", "i2.2xlarge.search", "d2.xlarge.search", "d2.2xlarge.search", "d2.4xlarge.search", "d2.8xlarge.search", "c4.large.search", "c4.xlarge.search", "c4.2xlarge.search", "c4.4xlarge.search", "c4.8xlarge.search", "r4.large.search", "r4.xlarge.search", "r4.2xlarge.search", "r4.4xlarge.search", "r4.8xlarge.search", "r4.16xlarge.search", "i3.large.search", "i3.xlarge.search", "i3.2xlarge.search", "i3.4xlarge.search", "i3.8xlarge.search", "i3.16xlarge.search", "r6g.large.search", "r6g.xlarge.search", "r6g.2xlarge.search", "r6g.4xlarge.search", "r6g.8xlarge.search", "r6g.12xlarge.search", "m6g.large.search", "m6g.xlarge.search", "m6g.2xlarge.search", "m6g.4xlarge.search", "m6g.8xlarge.search", "m6g.12xlarge.search", "c6g.large.search", "c6g.xlarge.search", "c6g.2xlarge.search", "c6g.4xlarge.search", "c6g.8xlarge.search", "c6g.12xlarge.search", "r6gd.large.search", "r6gd.xlarge.search", "r6gd.2xlarge.search", "r6gd.4xlarge.search", "r6gd.8xlarge.search", "r6gd.12xlarge.search", "r6gd.16xlarge.search", "t4g.small.search", "t4g.medium.search"],
    #         start_time: Time.now,
    #         duration: 1,
    #         fixed_price: 1.0,
    #         usage_price: 1.0,
    #         currency_code: "String",
    #         instance_count: 1,
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
    # @return [Types::DescribeReservedInstancesResponse]
    def describe_reserved_instances(params = {}, options = {})
      request = build_request(:describe_reserved_instances, params)
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

    # <p>Removes a package from the specified Amazon OpenSearch Service domain. The package can't be
    #    in use with any OpenSearch index for the dissociation to succeed. The package is still available
    #    in OpenSearch Service for association later. For more information, see <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/custom-packages.html">Custom
    #     packages for Amazon OpenSearch Service</a>.</p>
    # @param [Hash, Types::DissociatePackageRequest] params
    # @option params [String] :package_id
    #   <p>Internal ID of the package to dissociate from the domain. Use
    #       <code>ListPackagesForDomain</code> to find this value.</p>
    # @option params [String] :domain_name
    #   <p>Name of the domain to dissociate the package from.</p>
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
    #       package_type: "TXT-DICTIONARY" # One of: ["TXT-DICTIONARY", "ZIP-PLUGIN", "PACKAGE-LICENSE", "PACKAGE-CONFIG"],
    #       last_updated: Time.now,
    #       domain_name: "DomainName",
    #       domain_package_status: "ASSOCIATING" # One of: ["ASSOCIATING", "ASSOCIATION_FAILED", "ACTIVE", "DISSOCIATING", "DISSOCIATION_FAILED"],
    #       package_version: "PackageVersion",
    #       prerequisite_package_id_list: ["PackageID"],
    #       reference_path: "ReferencePath",
    #       error_details: {
    #         error_type: "ErrorType",
    #         error_message: "ErrorMessage"
    #       },
    #       association_configuration: {
    #         key_store_access_option: {
    #           key_access_role_arn: "RoleArn",
    #           key_store_access_enabled: false, # required
    #         }
    #       }
    #     }
    #   }
    # @return [Types::DissociatePackageResponse]
    def dissociate_package(params = {}, options = {})
      request = build_request(:dissociate_package, params)
      request.send_request(options)
    end

    # <p>Dissociates multiple packages from a domain simulatneously.</p>
    # @param [Hash, Types::DissociatePackagesRequest] params
    # @option params [Array<String>] :package_list
    #   <p>A list of package IDs to be dissociated from a domain.</p>
    # @option params [String] :domain_name
    #   <p>The name of an OpenSearch Service domain. Domain names are unique across the domains owned
    #      by an account within an Amazon Web Services Region.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     package_list: ["PackageID"], # required
    #     domain_name: "DomainName", # required
    #   }
    #   options = {}
    #   response = client.dissociate_packages(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain_package_details_list: [
    #       {
    #         package_id: "PackageID",
    #         package_name: "PackageName",
    #         package_type: "TXT-DICTIONARY" # One of: ["TXT-DICTIONARY", "ZIP-PLUGIN", "PACKAGE-LICENSE", "PACKAGE-CONFIG"],
    #         last_updated: Time.now,
    #         domain_name: "DomainName",
    #         domain_package_status: "ASSOCIATING" # One of: ["ASSOCIATING", "ASSOCIATION_FAILED", "ACTIVE", "DISSOCIATING", "DISSOCIATION_FAILED"],
    #         package_version: "PackageVersion",
    #         prerequisite_package_id_list: ["PackageID"],
    #         reference_path: "ReferencePath",
    #         error_details: {
    #           error_type: "ErrorType",
    #           error_message: "ErrorMessage"
    #         },
    #         association_configuration: {
    #           key_store_access_option: {
    #             key_access_role_arn: "RoleArn",
    #             key_store_access_enabled: false, # required
    #           }
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::DissociatePackagesResponse]
    def dissociate_packages(params = {}, options = {})
      request = build_request(:dissociate_packages, params)
      request.send_request(options)
    end

    # <p>Retrieves the configuration and status of an existing OpenSearch application.</p>
    # @param [Hash, Types::GetApplicationRequest] params
    # @option params [String] :id
    #   <p>The unique identifier of the OpenSearch application to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "Id", # required
    #   }
    #   options = {}
    #   response = client.get_application(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "Id",
    #     arn: "ARN",
    #     name: "ApplicationName",
    #     endpoint: "String",
    #     status: "CREATING" # One of: ["CREATING", "UPDATING", "DELETING", "ACTIVE", "FAILED"],
    #     iam_identity_center_options: {
    #       enabled: false,
    #       iam_identity_center_instance_arn: "ARN",
    #       iam_role_for_identity_center_application_arn: "RoleArn",
    #       iam_identity_center_application_arn: "ARN"
    #     },
    #     data_sources: [
    #       {
    #         data_source_arn: "ARN",
    #         data_source_description: "DataSourceDescription"
    #       }
    #     ],
    #     app_configs: [
    #       {
    #         key: "opensearchDashboards.dashboardAdmin.users" # One of: ["opensearchDashboards.dashboardAdmin.users", "opensearchDashboards.dashboardAdmin.groups"],
    #         value: "AppConfigValue"
    #       }
    #     ],
    #     created_at: Time.now,
    #     last_updated_at: Time.now
    #   }
    # @return [Types::GetApplicationResponse]
    def get_application(params = {}, options = {})
      request = build_request(:get_application, params)
      request.send_request(options)
    end

    # <p>Returns a map of OpenSearch or Elasticsearch versions and the versions you can upgrade them
    #    to.</p>
    # @param [Hash, Types::GetCompatibleVersionsRequest] params
    # @option params [String] :domain_name
    #   <p>The name of an existing domain. Provide this parameter to limit the results to a single
    #      domain.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "DomainName"
    #   }
    #   options = {}
    #   response = client.get_compatible_versions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     compatible_versions: [
    #       {
    #         source_version: "VersionString",
    #         target_versions: ["VersionString"]
    #       }
    #     ]
    #   }
    # @return [Types::GetCompatibleVersionsResponse]
    def get_compatible_versions(params = {}, options = {})
      request = build_request(:get_compatible_versions, params)
      request.send_request(options)
    end

    # <p>Retrieves information about a direct query data source.</p>
    # @param [Hash, Types::GetDataSourceRequest] params
    # @option params [String] :domain_name
    #   <p>The name of the domain.</p>
    # @option params [String] :name
    #   <p>The name of the data source to get information about.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "DomainName", # required
    #     name: "DataSourceName", # required
    #   }
    #   options = {}
    #   response = client.get_data_source(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     data_source_type: {
    #       # One of:
    #       s3_glue_data_catalog: {
    #         role_arn: "RoleArn"
    #       }
    #     },
    #     name: "DataSourceName",
    #     description: "DataSourceDescription",
    #     status: "ACTIVE" # One of: ["ACTIVE", "DISABLED"]
    #   }
    # @return [Types::GetDataSourceResponse]
    def get_data_source(params = {}, options = {})
      request = build_request(:get_data_source, params)
      request.send_request(options)
    end

    # <p>
    #    Returns detailed configuration information for 
    #    a specific direct query data source in Amazon OpenSearch Service.
    #   </p>
    # @param [Hash, Types::GetDirectQueryDataSourceRequest] params
    # @option params [String] :data_source_name
    #   <p>
    #      A unique, user-defined label that identifies the data source within 
    #      your OpenSearch Service environment.
    #     </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     data_source_name: "DirectQueryDataSourceName", # required
    #   }
    #   options = {}
    #   response = client.get_direct_query_data_source(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     data_source_name: "DirectQueryDataSourceName",
    #     data_source_type: {
    #       # One of:
    #       cloud_watch_log: {
    #         role_arn: "DirectQueryDataSourceRoleArn", # required
    #       },
    #       security_lake: {
    #         role_arn: "DirectQueryDataSourceRoleArn", # required
    #       }
    #     },
    #     description: "DirectQueryDataSourceDescription",
    #     open_search_arns: ["ARN"],
    #     data_source_arn: "String"
    #   }
    # @return [Types::GetDirectQueryDataSourceResponse]
    def get_direct_query_data_source(params = {}, options = {})
      request = build_request(:get_direct_query_data_source, params)
      request.send_request(options)
    end

    # <p>The status of the maintenance action.</p>
    # @param [Hash, Types::GetDomainMaintenanceStatusRequest] params
    # @option params [String] :domain_name
    #   <p>The name of the domain.</p>
    # @option params [String] :maintenance_id
    #   <p>The request ID of the maintenance action.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "DomainName", # required
    #     maintenance_id: "RequestId", # required
    #   }
    #   options = {}
    #   response = client.get_domain_maintenance_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: "PENDING" # One of: ["PENDING", "IN_PROGRESS", "COMPLETED", "FAILED", "TIMED_OUT"],
    #     status_message: "MaintenanceStatusMessage",
    #     node_id: "NodeId",
    #     action: "REBOOT_NODE" # One of: ["REBOOT_NODE", "RESTART_SEARCH_PROCESS", "RESTART_DASHBOARD"],
    #     created_at: Time.now,
    #     updated_at: Time.now
    #   }
    # @return [Types::GetDomainMaintenanceStatusResponse]
    def get_domain_maintenance_status(params = {}, options = {})
      request = build_request(:get_domain_maintenance_status, params)
      request.send_request(options)
    end

    # <p>Returns a list of Amazon OpenSearch Service package versions, along with their creation time, commit message, and plugin properties (if the 
    #    package is a zip plugin package). For more information, see <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/custom-packages.html">Custom packages for Amazon
    #     OpenSearch Service</a>.</p>
    # @param [Hash, Types::GetPackageVersionHistoryRequest] params
    # @option params [String] :package_id
    #   <p>The unique identifier of the package.</p>
    # @option params [Integer] :max_results
    #   <p>An optional parameter that specifies the maximum number of results to return. You can use
    #       <code>nextToken</code> to get the next page of results.</p>
    # @option params [String] :next_token
    #   <p>If your initial <code>GetPackageVersionHistory</code> operation returns a
    #       <code>nextToken</code>, you can include the returned <code>nextToken</code> in subsequent
    #       <code>GetPackageVersionHistory</code> operations, which returns results in the next page.
    #     </p>
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
    #         created_at: Time.now,
    #         plugin_properties: {
    #           name: "PluginName",
    #           description: "PluginDescription",
    #           version: "PluginVersion",
    #           class_name: "PluginClassName",
    #           uncompressed_size_in_bytes: 1
    #         },
    #         package_configuration: {
    #           license_requirement: "REQUIRED" # One of: ["REQUIRED", "OPTIONAL", "NONE"], # required
    #           license_filepath: "LicenseFilepath",
    #           configuration_requirement: "REQUIRED" # One of: ["REQUIRED", "OPTIONAL", "NONE"], # required
    #           requires_restart_for_configuration_update: false
    #         }
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::GetPackageVersionHistoryResponse]
    def get_package_version_history(params = {}, options = {})
      request = build_request(:get_package_version_history, params)
      request.send_request(options)
    end

    # <p>Retrieves the complete history of the last 10 upgrades performed on an Amazon OpenSearch
    #    Service domain.</p>
    # @param [Hash, Types::GetUpgradeHistoryRequest] params
    # @option params [String] :domain_name
    #   <p>The name of an existing domain.</p>
    # @option params [Integer] :max_results
    #   <p>An optional parameter that specifies the maximum number of results to return. You can use
    #       <code>nextToken</code> to get the next page of results.</p>
    # @option params [String] :next_token
    #   <p>If your initial <code>GetUpgradeHistory</code> operation returns a <code>nextToken</code>,
    #      you can include the returned <code>nextToken</code> in subsequent <code>GetUpgradeHistory</code>
    #      operations, which returns results in the next page.</p>
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

    # <p>Returns the most recent status of the last upgrade or upgrade eligibility check performed on
    #    an Amazon OpenSearch Service domain.</p>
    # @param [Hash, Types::GetUpgradeStatusRequest] params
    # @option params [String] :domain_name
    #   <p>The domain of the domain to get upgrade status information for.</p>
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

    # <p>Lists all OpenSearch applications under your account.</p>
    # @param [Hash, Types::ListApplicationsRequest] params
    # @option params [String] :next_token
    #   <p>When <code>nextToken</code> is returned, there are more results available. The value of
    #       <code>nextToken</code> is a unique pagination token for each page. Send the request again using the
    #      returned token to retrieve the next page.</p>
    # @option params [Array<String>] :statuses
    #   <p>Filters the list of OpenSearch applications by status. Possible values: <code>CREATING</code>, <code>UPDATING</code>, <code>DELETING</code>, <code>FAILED</code>, <code>ACTIVE</code>, and <code>DELETED</code>.</p>
    # @option params [Integer] :max_results
    #   <p>An optional parameter that specifies the maximum number of results to return for a given
    #      request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     statuses: ["CREATING" # One of: ["CREATING", "UPDATING", "DELETING", "ACTIVE", "FAILED"]],
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_applications(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     application_summaries: [
    #       {
    #         id: "Id",
    #         arn: "ARN",
    #         name: "ApplicationName",
    #         endpoint: "String",
    #         status: "CREATING" # One of: ["CREATING", "UPDATING", "DELETING", "ACTIVE", "FAILED"],
    #         created_at: Time.now,
    #         last_updated_at: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListApplicationsResponse]
    def list_applications(params = {}, options = {})
      request = build_request(:list_applications, params)
      request.send_request(options)
    end

    # <p>Lists direct-query data sources for a specific domain. For more information, see 
    #    For more information, see
    #    <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/direct-query-s3.html">Working with Amazon OpenSearch Service direct queries with Amazon S3</a>.</p>
    # @param [Hash, Types::ListDataSourcesRequest] params
    # @option params [String] :domain_name
    #   <p>The name of the domain.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "DomainName", # required
    #   }
    #   options = {}
    #   response = client.list_data_sources(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     data_sources: [
    #       {
    #         data_source_type: {
    #           # One of:
    #           s3_glue_data_catalog: {
    #             role_arn: "RoleArn"
    #           }
    #         },
    #         name: "DataSourceName",
    #         description: "DataSourceDescription",
    #         status: "ACTIVE" # One of: ["ACTIVE", "DISABLED"]
    #       }
    #     ]
    #   }
    # @return [Types::ListDataSourcesResponse]
    def list_data_sources(params = {}, options = {})
      request = build_request(:list_data_sources, params)
      request.send_request(options)
    end

    # <p>
    #    Lists an inventory of all the direct query data sources that you
    #    have configured within Amazon OpenSearch Service.
    #   </p>
    # @param [Hash, Types::ListDirectQueryDataSourcesRequest] params
    # @option params [String] :next_token
    #   <p>When <code>nextToken</code> is returned, there are more results available. The value of
    #       <code>nextToken</code> is a unique pagination token for each page. Send the request again using the
    #      returned token to retrieve the next page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_direct_query_data_sources(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     direct_query_data_sources: [
    #       {
    #         data_source_name: "DirectQueryDataSourceName",
    #         data_source_type: {
    #           # One of:
    #           cloud_watch_log: {
    #             role_arn: "DirectQueryDataSourceRoleArn", # required
    #           },
    #           security_lake: {
    #             role_arn: "DirectQueryDataSourceRoleArn", # required
    #           }
    #         },
    #         description: "DirectQueryDataSourceDescription",
    #         open_search_arns: ["ARN"],
    #         data_source_arn: "String",
    #         tag_list: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           }
    #         ]
    #       }
    #     ]
    #   }
    # @return [Types::ListDirectQueryDataSourcesResponse]
    def list_direct_query_data_sources(params = {}, options = {})
      request = build_request(:list_direct_query_data_sources, params)
      request.send_request(options)
    end

    # <p>A list of maintenance actions for the domain.</p>
    # @param [Hash, Types::ListDomainMaintenancesRequest] params
    # @option params [String] :domain_name
    #   <p>The name of the domain.</p>
    # @option params [String] :action
    #   <p>The name of the action.</p>
    # @option params [String] :status
    #   <p>The status of the action.</p>
    # @option params [Integer] :max_results
    #   <p>An optional parameter that specifies the maximum number of results to return. You can use
    #      <code>nextToken</code> to get the next page of results.</p>
    # @option params [String] :next_token
    #   <p>If your initial <code>ListDomainMaintenances</code> operation returns a
    #      <code>nextToken</code>, include the returned <code>nextToken</code> in subsequent
    #      <code>ListDomainMaintenances</code> operations, which returns results in the next page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "DomainName", # required
    #     action: "REBOOT_NODE" # One of: ["REBOOT_NODE", "RESTART_SEARCH_PROCESS", "RESTART_DASHBOARD"],
    #     status: "PENDING" # One of: ["PENDING", "IN_PROGRESS", "COMPLETED", "FAILED", "TIMED_OUT"],
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_domain_maintenances(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain_maintenances: [
    #       {
    #         maintenance_id: "RequestId",
    #         domain_name: "DomainName",
    #         action: "REBOOT_NODE" # One of: ["REBOOT_NODE", "RESTART_SEARCH_PROCESS", "RESTART_DASHBOARD"],
    #         node_id: "NodeId",
    #         status: "PENDING" # One of: ["PENDING", "IN_PROGRESS", "COMPLETED", "FAILED", "TIMED_OUT"],
    #         status_message: "MaintenanceStatusMessage",
    #         created_at: Time.now,
    #         updated_at: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListDomainMaintenancesResponse]
    def list_domain_maintenances(params = {}, options = {})
      request = build_request(:list_domain_maintenances, params)
      request.send_request(options)
    end

    # <p>Returns the names of all Amazon OpenSearch Service domains owned by the current user in the
    #    active Region.</p>
    # @param [Hash, Types::ListDomainNamesRequest] params
    # @option params [String] :engine_type
    #   <p>Filters the output by domain engine type.</p>
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

    # <p>Lists all Amazon OpenSearch Service domains associated with a given package. For more
    #    information, see <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/custom-packages.html">Custom packages for Amazon
    #     OpenSearch Service</a>.</p>
    # @param [Hash, Types::ListDomainsForPackageRequest] params
    # @option params [String] :package_id
    #   <p>The unique identifier of the package for which to list associated domains.</p>
    # @option params [Integer] :max_results
    #   <p>An optional parameter that specifies the maximum number of results to return. You can use
    #       <code>nextToken</code> to get the next page of results.</p>
    # @option params [String] :next_token
    #   <p>If your initial <code>ListDomainsForPackage</code> operation returns a
    #       <code>nextToken</code>, you can include the returned <code>nextToken</code> in subsequent
    #       <code>ListDomainsForPackage</code> operations, which returns results in the next page.</p>
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
    #         package_type: "TXT-DICTIONARY" # One of: ["TXT-DICTIONARY", "ZIP-PLUGIN", "PACKAGE-LICENSE", "PACKAGE-CONFIG"],
    #         last_updated: Time.now,
    #         domain_name: "DomainName",
    #         domain_package_status: "ASSOCIATING" # One of: ["ASSOCIATING", "ASSOCIATION_FAILED", "ACTIVE", "DISSOCIATING", "DISSOCIATION_FAILED"],
    #         package_version: "PackageVersion",
    #         prerequisite_package_id_list: ["PackageID"],
    #         reference_path: "ReferencePath",
    #         error_details: {
    #           error_type: "ErrorType",
    #           error_message: "ErrorMessage"
    #         },
    #         association_configuration: {
    #           key_store_access_option: {
    #             key_access_role_arn: "RoleArn",
    #             key_store_access_enabled: false, # required
    #           }
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

    # <p>Lists all instance types and available features for a given OpenSearch or Elasticsearch
    #    version.</p>
    # @param [Hash, Types::ListInstanceTypeDetailsRequest] params
    # @option params [String] :engine_version
    #   <p>The version of OpenSearch or Elasticsearch, in the format Elasticsearch_X.Y or OpenSearch_X.Y.
    #      Defaults to the latest version of OpenSearch.</p>
    # @option params [String] :domain_name
    #   <p>The name of the domain.</p>
    # @option params [Integer] :max_results
    #   <p>An optional parameter that specifies the maximum number of results to return. You can use
    #       <code>nextToken</code> to get the next page of results.</p>
    # @option params [String] :next_token
    #   <p>If your initial <code>ListInstanceTypeDetails</code> operation returns a
    #       <code>nextToken</code>, you can include the returned <code>nextToken</code> in subsequent
    #       <code>ListInstanceTypeDetails</code> operations, which returns results in the next page.</p>
    # @option params [Boolean] :retrieve_a_zs
    #   <p>An optional parameter that specifies the Availability Zones for the domain.</p>
    # @option params [String] :instance_type
    #   <p>An optional parameter that lists information for a given instance type.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     engine_version: "VersionString", # required
    #     domain_name: "DomainName",
    #     max_results: 1,
    #     next_token: "NextToken",
    #     retrieve_a_zs: false,
    #     instance_type: "InstanceTypeString"
    #   }
    #   options = {}
    #   response = client.list_instance_type_details(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     instance_type_details: [
    #       {
    #         instance_type: "m3.medium.search" # One of: ["m3.medium.search", "m3.large.search", "m3.xlarge.search", "m3.2xlarge.search", "m4.large.search", "m4.xlarge.search", "m4.2xlarge.search", "m4.4xlarge.search", "m4.10xlarge.search", "m5.large.search", "m5.xlarge.search", "m5.2xlarge.search", "m5.4xlarge.search", "m5.12xlarge.search", "m5.24xlarge.search", "r5.large.search", "r5.xlarge.search", "r5.2xlarge.search", "r5.4xlarge.search", "r5.12xlarge.search", "r5.24xlarge.search", "c5.large.search", "c5.xlarge.search", "c5.2xlarge.search", "c5.4xlarge.search", "c5.9xlarge.search", "c5.18xlarge.search", "t3.nano.search", "t3.micro.search", "t3.small.search", "t3.medium.search", "t3.large.search", "t3.xlarge.search", "t3.2xlarge.search", "or1.medium.search", "or1.large.search", "or1.xlarge.search", "or1.2xlarge.search", "or1.4xlarge.search", "or1.8xlarge.search", "or1.12xlarge.search", "or1.16xlarge.search", "ultrawarm1.medium.search", "ultrawarm1.large.search", "ultrawarm1.xlarge.search", "t2.micro.search", "t2.small.search", "t2.medium.search", "r3.large.search", "r3.xlarge.search", "r3.2xlarge.search", "r3.4xlarge.search", "r3.8xlarge.search", "i2.xlarge.search", "i2.2xlarge.search", "d2.xlarge.search", "d2.2xlarge.search", "d2.4xlarge.search", "d2.8xlarge.search", "c4.large.search", "c4.xlarge.search", "c4.2xlarge.search", "c4.4xlarge.search", "c4.8xlarge.search", "r4.large.search", "r4.xlarge.search", "r4.2xlarge.search", "r4.4xlarge.search", "r4.8xlarge.search", "r4.16xlarge.search", "i3.large.search", "i3.xlarge.search", "i3.2xlarge.search", "i3.4xlarge.search", "i3.8xlarge.search", "i3.16xlarge.search", "r6g.large.search", "r6g.xlarge.search", "r6g.2xlarge.search", "r6g.4xlarge.search", "r6g.8xlarge.search", "r6g.12xlarge.search", "m6g.large.search", "m6g.xlarge.search", "m6g.2xlarge.search", "m6g.4xlarge.search", "m6g.8xlarge.search", "m6g.12xlarge.search", "c6g.large.search", "c6g.xlarge.search", "c6g.2xlarge.search", "c6g.4xlarge.search", "c6g.8xlarge.search", "c6g.12xlarge.search", "r6gd.large.search", "r6gd.xlarge.search", "r6gd.2xlarge.search", "r6gd.4xlarge.search", "r6gd.8xlarge.search", "r6gd.12xlarge.search", "r6gd.16xlarge.search", "t4g.small.search", "t4g.medium.search"],
    #         encryption_enabled: false,
    #         cognito_enabled: false,
    #         app_logs_enabled: false,
    #         advanced_security_enabled: false,
    #         warm_enabled: false,
    #         instance_role: ["InstanceRole"],
    #         availability_zones: ["AvailabilityZone"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListInstanceTypeDetailsResponse]
    def list_instance_type_details(params = {}, options = {})
      request = build_request(:list_instance_type_details, params)
      request.send_request(options)
    end

    # <p>Lists all packages associated with an Amazon OpenSearch Service domain. For more
    #    information, see <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/custom-packages.html">Custom packages for Amazon
    #     OpenSearch Service</a>.</p>
    # @param [Hash, Types::ListPackagesForDomainRequest] params
    # @option params [String] :domain_name
    #   <p>The name of the domain for which you want to list associated packages.</p>
    # @option params [Integer] :max_results
    #   <p>An optional parameter that specifies the maximum number of results to return. You can use
    #       <code>nextToken</code> to get the next page of results.</p>
    # @option params [String] :next_token
    #   <p>If your initial <code>ListPackagesForDomain</code> operation returns a
    #       <code>nextToken</code>, you can include the returned <code>nextToken</code> in subsequent
    #       <code>ListPackagesForDomain</code> operations, which returns results in the next page.</p>
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
    #         package_type: "TXT-DICTIONARY" # One of: ["TXT-DICTIONARY", "ZIP-PLUGIN", "PACKAGE-LICENSE", "PACKAGE-CONFIG"],
    #         last_updated: Time.now,
    #         domain_name: "DomainName",
    #         domain_package_status: "ASSOCIATING" # One of: ["ASSOCIATING", "ASSOCIATION_FAILED", "ACTIVE", "DISSOCIATING", "DISSOCIATION_FAILED"],
    #         package_version: "PackageVersion",
    #         prerequisite_package_id_list: ["PackageID"],
    #         reference_path: "ReferencePath",
    #         error_details: {
    #           error_type: "ErrorType",
    #           error_message: "ErrorMessage"
    #         },
    #         association_configuration: {
    #           key_store_access_option: {
    #             key_access_role_arn: "RoleArn",
    #             key_store_access_enabled: false, # required
    #           }
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

    # <p>Retrieves a list of configuration changes that are scheduled for a domain. These changes can
    #    be <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/service-software.html">service software
    #     updates</a> or <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/auto-tune.html#auto-tune-types">blue/green
    #      Auto-Tune enhancements</a>.</p>
    # @param [Hash, Types::ListScheduledActionsRequest] params
    # @option params [String] :domain_name
    #   <p>The name of the domain.</p>
    # @option params [Integer] :max_results
    #   <p>An optional parameter that specifies the maximum number of results to return. You can use
    #      <code>nextToken</code> to get the next page of results.</p>
    # @option params [String] :next_token
    #   <p>If your initial <code>ListScheduledActions</code> operation returns a <code>nextToken</code>, you
    #      can include the returned <code>nextToken</code> in subsequent <code>ListScheduledActions</code>
    #      operations, which returns results in the next page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "DomainName", # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_scheduled_actions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     scheduled_actions: [
    #       {
    #         id: "String", # required
    #         type: "SERVICE_SOFTWARE_UPDATE" # One of: ["SERVICE_SOFTWARE_UPDATE", "JVM_HEAP_SIZE_TUNING", "JVM_YOUNG_GEN_TUNING"], # required
    #         severity: "HIGH" # One of: ["HIGH", "MEDIUM", "LOW"], # required
    #         scheduled_time: 1, # required
    #         description: "String",
    #         scheduled_by: "CUSTOMER" # One of: ["CUSTOMER", "SYSTEM"],
    #         status: "PENDING_UPDATE" # One of: ["PENDING_UPDATE", "IN_PROGRESS", "FAILED", "COMPLETED", "NOT_ELIGIBLE", "ELIGIBLE"],
    #         mandatory: false,
    #         cancellable: false
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListScheduledActionsResponse]
    def list_scheduled_actions(params = {}, options = {})
      request = build_request(:list_scheduled_actions, params)
      request.send_request(options)
    end

    # <p>Returns all resource tags for an Amazon OpenSearch Service domain, data source, or
    #    application. For more information, see <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/managedomains-awsresourcetagging.html">Tagging
    #     Amazon OpenSearch Service resources</a>.</p>
    # @param [Hash, Types::ListTagsRequest] params
    # @option params [String] :arn
    #   <p>Amazon Resource Name (ARN) for the domain, data source, or application to view tags
    #      for.</p>
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

    # <p>Lists all versions of OpenSearch and Elasticsearch that Amazon OpenSearch Service
    #    supports.</p>
    # @param [Hash, Types::ListVersionsRequest] params
    # @option params [Integer] :max_results
    #   <p>An optional parameter that specifies the maximum number of results to return. You can use
    #       <code>nextToken</code> to get the next page of results.</p>
    # @option params [String] :next_token
    #   <p>If your initial <code>ListVersions</code> operation returns a <code>nextToken</code>, you
    #      can include the returned <code>nextToken</code> in subsequent <code>ListVersions</code>
    #      operations, which returns results in the next page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_versions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     versions: ["VersionString"],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListVersionsResponse]
    def list_versions(params = {}, options = {})
      request = build_request(:list_versions, params)
      request.send_request(options)
    end

    # <p>Retrieves information about each Amazon Web Services principal that is allowed to access a
    #    given Amazon OpenSearch Service domain through the use of an interface VPC endpoint.</p>
    # @param [Hash, Types::ListVpcEndpointAccessRequest] params
    # @option params [String] :domain_name
    #   <p>The name of the OpenSearch Service domain to retrieve access information for.</p>
    # @option params [String] :next_token
    #   <p>If your initial <code>ListVpcEndpointAccess</code> operation returns a
    #       <code>nextToken</code>, you can include the returned <code>nextToken</code> in subsequent
    #       <code>ListVpcEndpointAccess</code> operations, which returns results in the next page.</p>
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

    # <p>Retrieves all Amazon OpenSearch Service-managed VPC endpoints in the current Amazon Web Services account and Region.</p>
    # @param [Hash, Types::ListVpcEndpointsRequest] params
    # @option params [String] :next_token
    #   <p>If your initial <code>ListVpcEndpoints</code> operation returns a <code>nextToken</code>,
    #      you can include the returned <code>nextToken</code> in subsequent <code>ListVpcEndpoints</code>
    #      operations, which returns results in the next page.</p>
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

    # <p>Retrieves all Amazon OpenSearch Service-managed VPC endpoints associated with a particular
    #    domain.</p>
    # @param [Hash, Types::ListVpcEndpointsForDomainRequest] params
    # @option params [String] :domain_name
    #   <p>The name of the domain to list associated VPC endpoints for.</p>
    # @option params [String] :next_token
    #   <p>If your initial <code>ListEndpointsForDomain</code> operation returns a
    #       <code>nextToken</code>, you can include the returned <code>nextToken</code> in subsequent
    #       <code>ListEndpointsForDomain</code> operations, which returns results in the next page.</p>
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

    # <p>Allows you to purchase Amazon OpenSearch Service Reserved Instances.</p>
    # @param [Hash, Types::PurchaseReservedInstanceOfferingRequest] params
    # @option params [String] :reserved_instance_offering_id
    #   <p>The ID of the Reserved Instance offering to purchase.</p>
    # @option params [String] :reservation_name
    #   <p>A customer-specified identifier to track this reservation.</p>
    # @option params [Integer] :instance_count
    #   <p>The number of OpenSearch instances to reserve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     reserved_instance_offering_id: "GUID", # required
    #     reservation_name: "ReservationToken", # required
    #     instance_count: 1
    #   }
    #   options = {}
    #   response = client.purchase_reserved_instance_offering(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     reserved_instance_id: "GUID",
    #     reservation_name: "ReservationToken"
    #   }
    # @return [Types::PurchaseReservedInstanceOfferingResponse]
    def purchase_reserved_instance_offering(params = {}, options = {})
      request = build_request(:purchase_reserved_instance_offering, params)
      request.send_request(options)
    end

    # <p>Allows the remote Amazon OpenSearch Service domain owner to reject an inbound cross-cluster
    #    connection request.</p>
    # @param [Hash, Types::RejectInboundConnectionRequest] params
    # @option params [String] :connection_id
    #   <p>The unique identifier of the inbound connection to reject.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     connection_id: "ConnectionId", # required
    #   }
    #   options = {}
    #   response = client.reject_inbound_connection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     connection: {
    #       local_domain_info: {
    #         aws_domain_information: {
    #           owner_id: "OwnerId",
    #           domain_name: "DomainName", # required
    #           region: "Region"
    #         }
    #       },
    #       remote_domain_info: {
    #         aws_domain_information: {
    #           owner_id: "OwnerId",
    #           domain_name: "DomainName", # required
    #           region: "Region"
    #         }
    #       },
    #       connection_id: "ConnectionId",
    #       connection_status: {
    #         status_code: "PENDING_ACCEPTANCE" # One of: ["PENDING_ACCEPTANCE", "APPROVED", "PROVISIONING", "ACTIVE", "REJECTING", "REJECTED", "DELETING", "DELETED"],
    #         message: "ConnectionStatusMessage"
    #       },
    #       connection_mode: "DIRECT" # One of: ["DIRECT", "VPC_ENDPOINT"]
    #     }
    #   }
    # @return [Types::RejectInboundConnectionResponse]
    def reject_inbound_connection(params = {}, options = {})
      request = build_request(:reject_inbound_connection, params)
      request.send_request(options)
    end

    # <p>Removes the specified set of tags from an Amazon OpenSearch Service domain, data source, or
    #    application. For more information, see <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/managedomains.html#managedomains-awsresorcetagging"> Tagging Amazon OpenSearch Service resources</a>.</p>
    # @param [Hash, Types::RemoveTagsRequest] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the domain, data source, or application from which you
    #      want to delete the specified tags.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The list of tag keys to remove from the domain, data source, or application.</p>
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
    # @option params [String] :service
    #   <p>The service SP to revoke access from.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "DomainName", # required
    #     account: "AWSAccount",
    #     service: "application.opensearchservice.amazonaws.com" # One of: ["application.opensearchservice.amazonaws.com"]
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

    # <p>Starts the node maintenance process on the data node. These processes can include a node reboot, an Opensearch or Elasticsearch process restart,
    #    or a Dashboard or Kibana restart.</p>
    # @param [Hash, Types::StartDomainMaintenanceRequest] params
    # @option params [String] :domain_name
    #   <p>The name of the domain.</p>
    # @option params [String] :action
    #   <p>The name of the action.</p>
    # @option params [String] :node_id
    #   <p>The ID of the data node.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "DomainName", # required
    #     action: "REBOOT_NODE" # One of: ["REBOOT_NODE", "RESTART_SEARCH_PROCESS", "RESTART_DASHBOARD"], # required
    #     node_id: "NodeId"
    #   }
    #   options = {}
    #   response = client.start_domain_maintenance(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     maintenance_id: "RequestId"
    #   }
    # @return [Types::StartDomainMaintenanceResponse]
    def start_domain_maintenance(params = {}, options = {})
      request = build_request(:start_domain_maintenance, params)
      request.send_request(options)
    end

    # <p>Schedules a service software update for an Amazon OpenSearch Service domain. For more
    #    information, see <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/service-software.html">Service software updates in
    #     Amazon OpenSearch Service</a>.</p>
    # @param [Hash, Types::StartServiceSoftwareUpdateRequest] params
    # @option params [String] :domain_name
    #   <p>The name of the domain that you want to update to the latest service software.</p>
    # @option params [String] :schedule_at
    #   <p>When to start the service software update.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>NOW</code> - Immediately schedules the update to happen in the current hour if
    #        there's capacity available.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TIMESTAMP</code> - Lets you specify a custom date and time to apply the update. If
    #        you specify this value, you must also provide a value for <code>DesiredStartTime</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OFF_PEAK_WINDOW</code> - Marks the update to be picked up during an upcoming
    #        off-peak window. There's no guarantee that the update will happen during the next immediate
    #        window. Depending on capacity, it might happen in subsequent days.</p>
    #               </li>
    #            </ul>
    #            <p>Default: <code>NOW</code> if you don't specify a value for <code>DesiredStartTime</code>,
    #      and <code>TIMESTAMP</code> if you do.</p>
    # @option params [Integer] :desired_start_time
    #   <p>The Epoch timestamp when you want the service software update to start. You only need to
    #      specify this parameter if you set <code>ScheduleAt</code> to <code>TIMESTAMP</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "DomainName", # required
    #     schedule_at: "NOW" # One of: ["NOW", "TIMESTAMP", "OFF_PEAK_WINDOW"],
    #     desired_start_time: 1
    #   }
    #   options = {}
    #   response = client.start_service_software_update(params, options)
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
    # @return [Types::StartServiceSoftwareUpdateResponse]
    def start_service_software_update(params = {}, options = {})
      request = build_request(:start_service_software_update, params)
      request.send_request(options)
    end

    # <p>Updates the configuration and settings of an existing OpenSearch application.</p>
    # @param [Hash, Types::UpdateApplicationRequest] params
    # @option params [String] :id
    #   <p>The unique identifier for the OpenSearch application to be updated.</p>
    # @option params [Array<Types::DataSource>] :data_sources
    #   <p>The data sources to associate with the OpenSearch application.</p>
    # @option params [Array<Types::AppConfig>] :app_configs
    #   <p>The configuration settings to modify for the OpenSearch application.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "Id", # required
    #     data_sources: [
    #       {
    #         data_source_arn: "ARN",
    #         data_source_description: "DataSourceDescription"
    #       }
    #     ],
    #     app_configs: [
    #       {
    #         key: "opensearchDashboards.dashboardAdmin.users" # One of: ["opensearchDashboards.dashboardAdmin.users", "opensearchDashboards.dashboardAdmin.groups"],
    #         value: "AppConfigValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_application(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "Id",
    #     name: "ApplicationName",
    #     arn: "ARN",
    #     data_sources: [
    #       {
    #         data_source_arn: "ARN",
    #         data_source_description: "DataSourceDescription"
    #       }
    #     ],
    #     iam_identity_center_options: {
    #       enabled: false,
    #       iam_identity_center_instance_arn: "ARN",
    #       iam_role_for_identity_center_application_arn: "RoleArn",
    #       iam_identity_center_application_arn: "ARN"
    #     },
    #     app_configs: [
    #       {
    #         key: "opensearchDashboards.dashboardAdmin.users" # One of: ["opensearchDashboards.dashboardAdmin.users", "opensearchDashboards.dashboardAdmin.groups"],
    #         value: "AppConfigValue"
    #       }
    #     ],
    #     created_at: Time.now,
    #     last_updated_at: Time.now
    #   }
    # @return [Types::UpdateApplicationResponse]
    def update_application(params = {}, options = {})
      request = build_request(:update_application, params)
      request.send_request(options)
    end

    # <p>Updates a direct-query data source. For more information, see
    #    <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/direct-query-s3-creating.html">Working with Amazon OpenSearch Service data source integrations with Amazon S3</a>.</p>
    # @param [Hash, Types::UpdateDataSourceRequest] params
    # @option params [String] :domain_name
    #   <p>The name of the domain.</p>
    # @option params [String] :name
    #   <p>The name of the data source to modify.</p>
    # @option params [Types::DataSourceType] :data_source_type
    #   <p>The type of data source.</p>
    # @option params [String] :description
    #   <p>A new description of the data source.</p>
    # @option params [String] :status
    #   <p>The status of the data source update.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "DomainName", # required
    #     name: "DataSourceName", # required
    #     data_source_type: { # required
    #       # One of:
    #       s3_glue_data_catalog: {
    #         role_arn: "RoleArn"
    #       }
    #     },
    #     description: "DataSourceDescription",
    #     status: "ACTIVE" # One of: ["ACTIVE", "DISABLED"]
    #   }
    #   options = {}
    #   response = client.update_data_source(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     message: "String"
    #   }
    # @return [Types::UpdateDataSourceResponse]
    def update_data_source(params = {}, options = {})
      request = build_request(:update_data_source, params)
      request.send_request(options)
    end

    # <p>
    #    Updates the configuration or properties of an existing
    #    direct query data source in Amazon OpenSearch Service.
    #   </p>
    # @param [Hash, Types::UpdateDirectQueryDataSourceRequest] params
    # @option params [String] :data_source_name
    #   <p>
    #      A unique, user-defined label to identify the data 
    #      source within your OpenSearch Service environment.
    #     </p>
    # @option params [Types::DirectQueryDataSourceType] :data_source_type
    #   <p>
    #      The supported Amazon Web Services service that you want to use as the source for 
    #      direct queries in OpenSearch Service. 
    #     </p>
    # @option params [String] :description
    #   <p>
    #      An optional text field for providing additional context and 
    #      details about the data source.
    #     </p>
    # @option params [Array<String>] :open_search_arns
    #   <p>
    #      A list of Amazon Resource Names (ARNs) for the OpenSearch 
    #      collections that are associated with the direct query data source.
    #     </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     data_source_name: "DirectQueryDataSourceName", # required
    #     data_source_type: { # required
    #       # One of:
    #       cloud_watch_log: {
    #         role_arn: "DirectQueryDataSourceRoleArn", # required
    #       },
    #       security_lake: {
    #         role_arn: "DirectQueryDataSourceRoleArn", # required
    #       }
    #     },
    #     description: "DirectQueryDataSourceDescription",
    #     open_search_arns: ["ARN"], # required
    #   }
    #   options = {}
    #   response = client.update_direct_query_data_source(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     data_source_arn: "String"
    #   }
    # @return [Types::UpdateDirectQueryDataSourceResponse]
    def update_direct_query_data_source(params = {}, options = {})
      request = build_request(:update_direct_query_data_source, params)
      request.send_request(options)
    end

    # <p>Modifies the cluster configuration of the specified Amazon OpenSearch Service
    #    domain.</p>
    # @param [Hash, Types::UpdateDomainConfigRequest] params
    # @option params [String] :domain_name
    #   <p>The name of the domain that you're updating.</p>
    # @option params [Types::ClusterConfig] :cluster_config
    #   <p>Changes that you want to make to the cluster configuration, such as the instance type and
    #      number of EC2 instances.</p>
    # @option params [Types::EBSOptions] :ebs_options
    #   <p>The type and size of the EBS volume to attach to instances in the domain.</p>
    # @option params [Types::SnapshotOptions] :snapshot_options
    #   <p>Option to set the time, in UTC format, for the daily automated snapshot. Default value is <code>0</code> hours.
    #     </p>
    # @option params [Types::VPCOptions] :vpc_options
    #   <p>Options to specify the subnets and security groups for a VPC endpoint. For more information,
    #      see <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/vpc.html">Launching
    #       your Amazon OpenSearch Service domains using a VPC</a>.</p>
    # @option params [Types::CognitoOptions] :cognito_options
    #   <p>Key-value pairs to configure Amazon Cognito authentication for OpenSearch Dashboards.</p>
    # @option params [Hash<String, String>] :advanced_options
    #   <p>Key-value pairs to specify advanced configuration options. The following key-value pairs are
    #      supported:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>"rest.action.multi.allow_explicit_index": "true" | "false"</code> - Note the use of
    #        a string rather than a boolean. Specifies whether explicit references to indexes are allowed
    #        inside the body of HTTP requests. If you want to configure access policies for domain
    #        sub-resources, such as specific indexes and domain APIs, you must disable this property.
    #        Default is true.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"indices.fielddata.cache.size": "80" </code> - Note the use of a string rather than
    #        a boolean. Specifies the percentage of heap space allocated to field data. Default is
    #        unbounded.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"indices.query.bool.max_clause_count": "1024"</code> - Note the use of a string
    #        rather than a boolean. Specifies the maximum number of clauses allowed in a Lucene boolean
    #        query. Default is 1,024. Queries with more than the permitted number of clauses result in a
    #        <code>TooManyClauses</code> error.</p>
    #               </li>
    #            </ul>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/createupdatedomains.html#createdomain-configure-advanced-options">Advanced cluster parameters</a>.</p>
    # @option params [String] :access_policies
    #   <p>Identity and Access Management (IAM) access policy as a JSON-formatted string.</p>
    # @option params [String] :ip_address_type
    #   <p>Specify either dual stack or IPv4 as your IP address type. Dual stack allows you to share domain resources across
    #      IPv4 and IPv6 address types, and is the recommended option. 
    #      If your IP address type is currently set to dual stack, you can't change it.
    #     </p>
    # @option params [Hash<String, Types::LogPublishingOption>] :log_publishing_options
    #   <p>Options to publish OpenSearch logs to Amazon CloudWatch Logs.</p>
    # @option params [Types::EncryptionAtRestOptions] :encryption_at_rest_options
    #   <p>Encryption at rest options for the domain.</p>
    # @option params [Types::DomainEndpointOptions] :domain_endpoint_options
    #   <p>Additional options for the domain endpoint, such as whether to require HTTPS for all
    #      traffic.</p>
    # @option params [Types::NodeToNodeEncryptionOptions] :node_to_node_encryption_options
    #   <p>Node-to-node encryption options for the domain.</p>
    # @option params [Types::AdvancedSecurityOptionsInput] :advanced_security_options
    #   <p>Options for fine-grained access control.</p>
    # @option params [Types::IdentityCenterOptionsInput] :identity_center_options
    #   <p>Configuration settings for enabling and managing IAM Identity Center.</p>
    # @option params [Types::AutoTuneOptions] :auto_tune_options
    #   <p>Options for Auto-Tune.</p>
    # @option params [Boolean] :dry_run
    #   <p>This flag, when set to True, specifies whether the <code>UpdateDomain</code> request should
    #      return the results of a dry run analysis without actually applying the change. A dry run
    #      determines what type of deployment the update will cause.</p>
    # @option params [String] :dry_run_mode
    #   <p>The type of dry run to perform.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Basic</code> only returns the type of deployment (blue/green or dynamic) that the update
    #        will cause.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Verbose</code> runs an additional check to validate the changes you're making. For
    #        more information, see <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/managedomains-configuration-changes#validation-check">Validating a domain update</a>.</p>
    #               </li>
    #            </ul>
    # @option params [Types::OffPeakWindowOptions] :off_peak_window_options
    #   <p>Off-peak window options for the domain.</p>
    # @option params [Types::SoftwareUpdateOptions] :software_update_options
    #   <p>Service software update options for the domain.</p>
    # @option params [Types::AIMLOptionsInput] :aiml_options
    #   <p>Options for all machine learning features for the specified domain.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "DomainName", # required
    #     cluster_config: {
    #       instance_type: "m3.medium.search" # One of: ["m3.medium.search", "m3.large.search", "m3.xlarge.search", "m3.2xlarge.search", "m4.large.search", "m4.xlarge.search", "m4.2xlarge.search", "m4.4xlarge.search", "m4.10xlarge.search", "m5.large.search", "m5.xlarge.search", "m5.2xlarge.search", "m5.4xlarge.search", "m5.12xlarge.search", "m5.24xlarge.search", "r5.large.search", "r5.xlarge.search", "r5.2xlarge.search", "r5.4xlarge.search", "r5.12xlarge.search", "r5.24xlarge.search", "c5.large.search", "c5.xlarge.search", "c5.2xlarge.search", "c5.4xlarge.search", "c5.9xlarge.search", "c5.18xlarge.search", "t3.nano.search", "t3.micro.search", "t3.small.search", "t3.medium.search", "t3.large.search", "t3.xlarge.search", "t3.2xlarge.search", "or1.medium.search", "or1.large.search", "or1.xlarge.search", "or1.2xlarge.search", "or1.4xlarge.search", "or1.8xlarge.search", "or1.12xlarge.search", "or1.16xlarge.search", "ultrawarm1.medium.search", "ultrawarm1.large.search", "ultrawarm1.xlarge.search", "t2.micro.search", "t2.small.search", "t2.medium.search", "r3.large.search", "r3.xlarge.search", "r3.2xlarge.search", "r3.4xlarge.search", "r3.8xlarge.search", "i2.xlarge.search", "i2.2xlarge.search", "d2.xlarge.search", "d2.2xlarge.search", "d2.4xlarge.search", "d2.8xlarge.search", "c4.large.search", "c4.xlarge.search", "c4.2xlarge.search", "c4.4xlarge.search", "c4.8xlarge.search", "r4.large.search", "r4.xlarge.search", "r4.2xlarge.search", "r4.4xlarge.search", "r4.8xlarge.search", "r4.16xlarge.search", "i3.large.search", "i3.xlarge.search", "i3.2xlarge.search", "i3.4xlarge.search", "i3.8xlarge.search", "i3.16xlarge.search", "r6g.large.search", "r6g.xlarge.search", "r6g.2xlarge.search", "r6g.4xlarge.search", "r6g.8xlarge.search", "r6g.12xlarge.search", "m6g.large.search", "m6g.xlarge.search", "m6g.2xlarge.search", "m6g.4xlarge.search", "m6g.8xlarge.search", "m6g.12xlarge.search", "c6g.large.search", "c6g.xlarge.search", "c6g.2xlarge.search", "c6g.4xlarge.search", "c6g.8xlarge.search", "c6g.12xlarge.search", "r6gd.large.search", "r6gd.xlarge.search", "r6gd.2xlarge.search", "r6gd.4xlarge.search", "r6gd.8xlarge.search", "r6gd.12xlarge.search", "r6gd.16xlarge.search", "t4g.small.search", "t4g.medium.search"],
    #       instance_count: 1,
    #       dedicated_master_enabled: false,
    #       zone_awareness_enabled: false,
    #       zone_awareness_config: {
    #         availability_zone_count: 1
    #       },
    #       dedicated_master_type: "m3.medium.search" # One of: ["m3.medium.search", "m3.large.search", "m3.xlarge.search", "m3.2xlarge.search", "m4.large.search", "m4.xlarge.search", "m4.2xlarge.search", "m4.4xlarge.search", "m4.10xlarge.search", "m5.large.search", "m5.xlarge.search", "m5.2xlarge.search", "m5.4xlarge.search", "m5.12xlarge.search", "m5.24xlarge.search", "r5.large.search", "r5.xlarge.search", "r5.2xlarge.search", "r5.4xlarge.search", "r5.12xlarge.search", "r5.24xlarge.search", "c5.large.search", "c5.xlarge.search", "c5.2xlarge.search", "c5.4xlarge.search", "c5.9xlarge.search", "c5.18xlarge.search", "t3.nano.search", "t3.micro.search", "t3.small.search", "t3.medium.search", "t3.large.search", "t3.xlarge.search", "t3.2xlarge.search", "or1.medium.search", "or1.large.search", "or1.xlarge.search", "or1.2xlarge.search", "or1.4xlarge.search", "or1.8xlarge.search", "or1.12xlarge.search", "or1.16xlarge.search", "ultrawarm1.medium.search", "ultrawarm1.large.search", "ultrawarm1.xlarge.search", "t2.micro.search", "t2.small.search", "t2.medium.search", "r3.large.search", "r3.xlarge.search", "r3.2xlarge.search", "r3.4xlarge.search", "r3.8xlarge.search", "i2.xlarge.search", "i2.2xlarge.search", "d2.xlarge.search", "d2.2xlarge.search", "d2.4xlarge.search", "d2.8xlarge.search", "c4.large.search", "c4.xlarge.search", "c4.2xlarge.search", "c4.4xlarge.search", "c4.8xlarge.search", "r4.large.search", "r4.xlarge.search", "r4.2xlarge.search", "r4.4xlarge.search", "r4.8xlarge.search", "r4.16xlarge.search", "i3.large.search", "i3.xlarge.search", "i3.2xlarge.search", "i3.4xlarge.search", "i3.8xlarge.search", "i3.16xlarge.search", "r6g.large.search", "r6g.xlarge.search", "r6g.2xlarge.search", "r6g.4xlarge.search", "r6g.8xlarge.search", "r6g.12xlarge.search", "m6g.large.search", "m6g.xlarge.search", "m6g.2xlarge.search", "m6g.4xlarge.search", "m6g.8xlarge.search", "m6g.12xlarge.search", "c6g.large.search", "c6g.xlarge.search", "c6g.2xlarge.search", "c6g.4xlarge.search", "c6g.8xlarge.search", "c6g.12xlarge.search", "r6gd.large.search", "r6gd.xlarge.search", "r6gd.2xlarge.search", "r6gd.4xlarge.search", "r6gd.8xlarge.search", "r6gd.12xlarge.search", "r6gd.16xlarge.search", "t4g.small.search", "t4g.medium.search"],
    #       dedicated_master_count: 1,
    #       warm_enabled: false,
    #       warm_type: "ultrawarm1.medium.search" # One of: ["ultrawarm1.medium.search", "ultrawarm1.large.search", "ultrawarm1.xlarge.search"],
    #       warm_count: 1,
    #       cold_storage_options: {
    #         enabled: false, # required
    #       },
    #       multi_az_with_standby_enabled: false,
    #       node_options: [
    #         {
    #           node_type: "coordinator" # One of: ["coordinator"],
    #           node_config: {
    #             enabled: false,
    #             type: "m3.medium.search" # One of: ["m3.medium.search", "m3.large.search", "m3.xlarge.search", "m3.2xlarge.search", "m4.large.search", "m4.xlarge.search", "m4.2xlarge.search", "m4.4xlarge.search", "m4.10xlarge.search", "m5.large.search", "m5.xlarge.search", "m5.2xlarge.search", "m5.4xlarge.search", "m5.12xlarge.search", "m5.24xlarge.search", "r5.large.search", "r5.xlarge.search", "r5.2xlarge.search", "r5.4xlarge.search", "r5.12xlarge.search", "r5.24xlarge.search", "c5.large.search", "c5.xlarge.search", "c5.2xlarge.search", "c5.4xlarge.search", "c5.9xlarge.search", "c5.18xlarge.search", "t3.nano.search", "t3.micro.search", "t3.small.search", "t3.medium.search", "t3.large.search", "t3.xlarge.search", "t3.2xlarge.search", "or1.medium.search", "or1.large.search", "or1.xlarge.search", "or1.2xlarge.search", "or1.4xlarge.search", "or1.8xlarge.search", "or1.12xlarge.search", "or1.16xlarge.search", "ultrawarm1.medium.search", "ultrawarm1.large.search", "ultrawarm1.xlarge.search", "t2.micro.search", "t2.small.search", "t2.medium.search", "r3.large.search", "r3.xlarge.search", "r3.2xlarge.search", "r3.4xlarge.search", "r3.8xlarge.search", "i2.xlarge.search", "i2.2xlarge.search", "d2.xlarge.search", "d2.2xlarge.search", "d2.4xlarge.search", "d2.8xlarge.search", "c4.large.search", "c4.xlarge.search", "c4.2xlarge.search", "c4.4xlarge.search", "c4.8xlarge.search", "r4.large.search", "r4.xlarge.search", "r4.2xlarge.search", "r4.4xlarge.search", "r4.8xlarge.search", "r4.16xlarge.search", "i3.large.search", "i3.xlarge.search", "i3.2xlarge.search", "i3.4xlarge.search", "i3.8xlarge.search", "i3.16xlarge.search", "r6g.large.search", "r6g.xlarge.search", "r6g.2xlarge.search", "r6g.4xlarge.search", "r6g.8xlarge.search", "r6g.12xlarge.search", "m6g.large.search", "m6g.xlarge.search", "m6g.2xlarge.search", "m6g.4xlarge.search", "m6g.8xlarge.search", "m6g.12xlarge.search", "c6g.large.search", "c6g.xlarge.search", "c6g.2xlarge.search", "c6g.4xlarge.search", "c6g.8xlarge.search", "c6g.12xlarge.search", "r6gd.large.search", "r6gd.xlarge.search", "r6gd.2xlarge.search", "r6gd.4xlarge.search", "r6gd.8xlarge.search", "r6gd.12xlarge.search", "r6gd.16xlarge.search", "t4g.small.search", "t4g.medium.search"],
    #             count: 1
    #           }
    #         }
    #       ]
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
    #     ip_address_type: "ipv4" # One of: ["ipv4", "dualstack"],
    #     log_publishing_options: {
    #       "LogType" => {
    #         cloud_watch_logs_log_group_arn: "CloudWatchLogsLogGroupArn",
    #         enabled: false
    #       }
    #     },
    #     encryption_at_rest_options: {
    #       enabled: false,
    #       kms_key_id: "KmsKeyId"
    #     },
    #     domain_endpoint_options: {
    #       enforce_https: false,
    #       tls_security_policy: "Policy-Min-TLS-1-0-2019-07" # One of: ["Policy-Min-TLS-1-0-2019-07", "Policy-Min-TLS-1-2-2019-07", "Policy-Min-TLS-1-2-PFS-2023-10"],
    #       custom_endpoint_enabled: false,
    #       custom_endpoint: "DomainNameFqdn",
    #       custom_endpoint_certificate_arn: "ARN"
    #     },
    #     node_to_node_encryption_options: {
    #       enabled: false
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
    #       jwt_options: {
    #         enabled: false,
    #         subject_key: "SubjectKey",
    #         roles_key: "RolesKey",
    #         public_key: "String"
    #       },
    #       iam_federation_options: {
    #         enabled: false,
    #         subject_key: "IAMFederationSubjectKey",
    #         roles_key: "IAMFederationRolesKey"
    #       },
    #       anonymous_auth_enabled: false
    #     },
    #     identity_center_options: {
    #       enabled_api_access: false,
    #       identity_center_instance_arn: "IdentityCenterInstanceARN",
    #       subject_key: "UserName" # One of: ["UserName", "UserId", "Email"],
    #       roles_key: "GroupName" # One of: ["GroupName", "GroupId"]
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
    #       ],
    #       use_off_peak_window: false
    #     },
    #     dry_run: false,
    #     dry_run_mode: "Basic" # One of: ["Basic", "Verbose"],
    #     off_peak_window_options: {
    #       enabled: false,
    #       off_peak_window: {
    #         window_start_time: {
    #           hours: 1, # required
    #           minutes: 1, # required
    #         }
    #       }
    #     },
    #     software_update_options: {
    #       auto_software_update_enabled: false
    #     },
    #     aiml_options: {
    #       natural_language_query_generation_options: {
    #         desired_state: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #       },
    #       s3_vectors_engine: {
    #         enabled: false
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_domain_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain_config: { # required
    #       engine_version: {
    #         options: "VersionString", # required
    #         status: { # required
    #           creation_date: Time.now, # required
    #           update_date: Time.now, # required
    #           update_version: 1,
    #           state: "RequiresIndexDocuments" # One of: ["RequiresIndexDocuments", "Processing", "Active"], # required
    #           pending_deletion: false
    #         }
    #       },
    #       cluster_config: {
    #         options: { # required
    #           instance_type: "m3.medium.search" # One of: ["m3.medium.search", "m3.large.search", "m3.xlarge.search", "m3.2xlarge.search", "m4.large.search", "m4.xlarge.search", "m4.2xlarge.search", "m4.4xlarge.search", "m4.10xlarge.search", "m5.large.search", "m5.xlarge.search", "m5.2xlarge.search", "m5.4xlarge.search", "m5.12xlarge.search", "m5.24xlarge.search", "r5.large.search", "r5.xlarge.search", "r5.2xlarge.search", "r5.4xlarge.search", "r5.12xlarge.search", "r5.24xlarge.search", "c5.large.search", "c5.xlarge.search", "c5.2xlarge.search", "c5.4xlarge.search", "c5.9xlarge.search", "c5.18xlarge.search", "t3.nano.search", "t3.micro.search", "t3.small.search", "t3.medium.search", "t3.large.search", "t3.xlarge.search", "t3.2xlarge.search", "or1.medium.search", "or1.large.search", "or1.xlarge.search", "or1.2xlarge.search", "or1.4xlarge.search", "or1.8xlarge.search", "or1.12xlarge.search", "or1.16xlarge.search", "ultrawarm1.medium.search", "ultrawarm1.large.search", "ultrawarm1.xlarge.search", "t2.micro.search", "t2.small.search", "t2.medium.search", "r3.large.search", "r3.xlarge.search", "r3.2xlarge.search", "r3.4xlarge.search", "r3.8xlarge.search", "i2.xlarge.search", "i2.2xlarge.search", "d2.xlarge.search", "d2.2xlarge.search", "d2.4xlarge.search", "d2.8xlarge.search", "c4.large.search", "c4.xlarge.search", "c4.2xlarge.search", "c4.4xlarge.search", "c4.8xlarge.search", "r4.large.search", "r4.xlarge.search", "r4.2xlarge.search", "r4.4xlarge.search", "r4.8xlarge.search", "r4.16xlarge.search", "i3.large.search", "i3.xlarge.search", "i3.2xlarge.search", "i3.4xlarge.search", "i3.8xlarge.search", "i3.16xlarge.search", "r6g.large.search", "r6g.xlarge.search", "r6g.2xlarge.search", "r6g.4xlarge.search", "r6g.8xlarge.search", "r6g.12xlarge.search", "m6g.large.search", "m6g.xlarge.search", "m6g.2xlarge.search", "m6g.4xlarge.search", "m6g.8xlarge.search", "m6g.12xlarge.search", "c6g.large.search", "c6g.xlarge.search", "c6g.2xlarge.search", "c6g.4xlarge.search", "c6g.8xlarge.search", "c6g.12xlarge.search", "r6gd.large.search", "r6gd.xlarge.search", "r6gd.2xlarge.search", "r6gd.4xlarge.search", "r6gd.8xlarge.search", "r6gd.12xlarge.search", "r6gd.16xlarge.search", "t4g.small.search", "t4g.medium.search"],
    #           instance_count: 1,
    #           dedicated_master_enabled: false,
    #           zone_awareness_enabled: false,
    #           zone_awareness_config: {
    #             availability_zone_count: 1
    #           },
    #           dedicated_master_type: "m3.medium.search" # One of: ["m3.medium.search", "m3.large.search", "m3.xlarge.search", "m3.2xlarge.search", "m4.large.search", "m4.xlarge.search", "m4.2xlarge.search", "m4.4xlarge.search", "m4.10xlarge.search", "m5.large.search", "m5.xlarge.search", "m5.2xlarge.search", "m5.4xlarge.search", "m5.12xlarge.search", "m5.24xlarge.search", "r5.large.search", "r5.xlarge.search", "r5.2xlarge.search", "r5.4xlarge.search", "r5.12xlarge.search", "r5.24xlarge.search", "c5.large.search", "c5.xlarge.search", "c5.2xlarge.search", "c5.4xlarge.search", "c5.9xlarge.search", "c5.18xlarge.search", "t3.nano.search", "t3.micro.search", "t3.small.search", "t3.medium.search", "t3.large.search", "t3.xlarge.search", "t3.2xlarge.search", "or1.medium.search", "or1.large.search", "or1.xlarge.search", "or1.2xlarge.search", "or1.4xlarge.search", "or1.8xlarge.search", "or1.12xlarge.search", "or1.16xlarge.search", "ultrawarm1.medium.search", "ultrawarm1.large.search", "ultrawarm1.xlarge.search", "t2.micro.search", "t2.small.search", "t2.medium.search", "r3.large.search", "r3.xlarge.search", "r3.2xlarge.search", "r3.4xlarge.search", "r3.8xlarge.search", "i2.xlarge.search", "i2.2xlarge.search", "d2.xlarge.search", "d2.2xlarge.search", "d2.4xlarge.search", "d2.8xlarge.search", "c4.large.search", "c4.xlarge.search", "c4.2xlarge.search", "c4.4xlarge.search", "c4.8xlarge.search", "r4.large.search", "r4.xlarge.search", "r4.2xlarge.search", "r4.4xlarge.search", "r4.8xlarge.search", "r4.16xlarge.search", "i3.large.search", "i3.xlarge.search", "i3.2xlarge.search", "i3.4xlarge.search", "i3.8xlarge.search", "i3.16xlarge.search", "r6g.large.search", "r6g.xlarge.search", "r6g.2xlarge.search", "r6g.4xlarge.search", "r6g.8xlarge.search", "r6g.12xlarge.search", "m6g.large.search", "m6g.xlarge.search", "m6g.2xlarge.search", "m6g.4xlarge.search", "m6g.8xlarge.search", "m6g.12xlarge.search", "c6g.large.search", "c6g.xlarge.search", "c6g.2xlarge.search", "c6g.4xlarge.search", "c6g.8xlarge.search", "c6g.12xlarge.search", "r6gd.large.search", "r6gd.xlarge.search", "r6gd.2xlarge.search", "r6gd.4xlarge.search", "r6gd.8xlarge.search", "r6gd.12xlarge.search", "r6gd.16xlarge.search", "t4g.small.search", "t4g.medium.search"],
    #           dedicated_master_count: 1,
    #           warm_enabled: false,
    #           warm_type: "ultrawarm1.medium.search" # One of: ["ultrawarm1.medium.search", "ultrawarm1.large.search", "ultrawarm1.xlarge.search"],
    #           warm_count: 1,
    #           cold_storage_options: {
    #             enabled: false, # required
    #           },
    #           multi_az_with_standby_enabled: false,
    #           node_options: [
    #             {
    #               node_type: "coordinator" # One of: ["coordinator"],
    #               node_config: {
    #                 enabled: false,
    #                 type: "m3.medium.search" # One of: ["m3.medium.search", "m3.large.search", "m3.xlarge.search", "m3.2xlarge.search", "m4.large.search", "m4.xlarge.search", "m4.2xlarge.search", "m4.4xlarge.search", "m4.10xlarge.search", "m5.large.search", "m5.xlarge.search", "m5.2xlarge.search", "m5.4xlarge.search", "m5.12xlarge.search", "m5.24xlarge.search", "r5.large.search", "r5.xlarge.search", "r5.2xlarge.search", "r5.4xlarge.search", "r5.12xlarge.search", "r5.24xlarge.search", "c5.large.search", "c5.xlarge.search", "c5.2xlarge.search", "c5.4xlarge.search", "c5.9xlarge.search", "c5.18xlarge.search", "t3.nano.search", "t3.micro.search", "t3.small.search", "t3.medium.search", "t3.large.search", "t3.xlarge.search", "t3.2xlarge.search", "or1.medium.search", "or1.large.search", "or1.xlarge.search", "or1.2xlarge.search", "or1.4xlarge.search", "or1.8xlarge.search", "or1.12xlarge.search", "or1.16xlarge.search", "ultrawarm1.medium.search", "ultrawarm1.large.search", "ultrawarm1.xlarge.search", "t2.micro.search", "t2.small.search", "t2.medium.search", "r3.large.search", "r3.xlarge.search", "r3.2xlarge.search", "r3.4xlarge.search", "r3.8xlarge.search", "i2.xlarge.search", "i2.2xlarge.search", "d2.xlarge.search", "d2.2xlarge.search", "d2.4xlarge.search", "d2.8xlarge.search", "c4.large.search", "c4.xlarge.search", "c4.2xlarge.search", "c4.4xlarge.search", "c4.8xlarge.search", "r4.large.search", "r4.xlarge.search", "r4.2xlarge.search", "r4.4xlarge.search", "r4.8xlarge.search", "r4.16xlarge.search", "i3.large.search", "i3.xlarge.search", "i3.2xlarge.search", "i3.4xlarge.search", "i3.8xlarge.search", "i3.16xlarge.search", "r6g.large.search", "r6g.xlarge.search", "r6g.2xlarge.search", "r6g.4xlarge.search", "r6g.8xlarge.search", "r6g.12xlarge.search", "m6g.large.search", "m6g.xlarge.search", "m6g.2xlarge.search", "m6g.4xlarge.search", "m6g.8xlarge.search", "m6g.12xlarge.search", "c6g.large.search", "c6g.xlarge.search", "c6g.2xlarge.search", "c6g.4xlarge.search", "c6g.8xlarge.search", "c6g.12xlarge.search", "r6gd.large.search", "r6gd.xlarge.search", "r6gd.2xlarge.search", "r6gd.4xlarge.search", "r6gd.8xlarge.search", "r6gd.12xlarge.search", "r6gd.16xlarge.search", "t4g.small.search", "t4g.medium.search"],
    #                 count: 1
    #               }
    #             }
    #           ]
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
    #       ip_address_type: {
    #         options: "ipv4" # One of: ["ipv4", "dualstack"], # required
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
    #           jwt_options: {
    #             enabled: false,
    #             subject_key: "String",
    #             roles_key: "String",
    #             public_key: "String"
    #           },
    #           iam_federation_options: {
    #             enabled: false,
    #             subject_key: "IAMFederationSubjectKey",
    #             roles_key: "IAMFederationRolesKey"
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
    #       identity_center_options: {
    #         options: { # required
    #           enabled_api_access: false,
    #           identity_center_instance_arn: "IdentityCenterInstanceARN",
    #           subject_key: "UserName" # One of: ["UserName", "UserId", "Email"],
    #           roles_key: "GroupName" # One of: ["GroupName", "GroupId"],
    #           identity_center_application_arn: "IdentityCenterApplicationARN",
    #           identity_store_id: "IdentityStoreId"
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
    #           ],
    #           use_off_peak_window: false
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
    #         initiated_by: "CUSTOMER" # One of: ["CUSTOMER", "SERVICE"],
    #         start_time: Time.now,
    #         last_updated_time: Time.now
    #       },
    #       off_peak_window_options: {
    #         options: {
    #           enabled: false,
    #           off_peak_window: {
    #             window_start_time: {
    #               hours: 1, # required
    #               minutes: 1, # required
    #             }
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
    #       software_update_options: {
    #         options: {
    #           auto_software_update_enabled: false
    #         },
    #         status: {
    #           creation_date: Time.now, # required
    #           update_date: Time.now, # required
    #           update_version: 1,
    #           state: "RequiresIndexDocuments" # One of: ["RequiresIndexDocuments", "Processing", "Active"], # required
    #           pending_deletion: false
    #         }
    #       },
    #       modifying_properties: [
    #         {
    #           name: "String",
    #           active_value: "String",
    #           pending_value: "String",
    #           value_type: "PLAIN_TEXT" # One of: ["PLAIN_TEXT", "STRINGIFIED_JSON"]
    #         }
    #       ],
    #       aiml_options: {
    #         options: {
    #           natural_language_query_generation_options: {
    #             desired_state: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #             current_state: "NOT_ENABLED" # One of: ["NOT_ENABLED", "ENABLE_COMPLETE", "ENABLE_IN_PROGRESS", "ENABLE_FAILED", "DISABLE_COMPLETE", "DISABLE_IN_PROGRESS", "DISABLE_FAILED"]
    #           },
    #           s3_vectors_engine: {
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
    #       }
    #     },
    #     dry_run_results: {
    #       deployment_type: "DeploymentType",
    #       message: "Message"
    #     },
    #     dry_run_progress_status: {
    #       dry_run_id: "GUID", # required
    #       dry_run_status: "String", # required
    #       creation_date: "String", # required
    #       update_date: "String", # required
    #       validation_failures: [
    #         {
    #           code: "String",
    #           message: "String"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::UpdateDomainConfigResponse]
    def update_domain_config(params = {}, options = {})
      request = build_request(:update_domain_config, params)
      request.send_request(options)
    end

    # <p>Updates a package for use with Amazon OpenSearch Service domains. For more information, see
    #     <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/custom-packages.html">Custom packages for Amazon OpenSearch Service</a>.</p>
    # @param [Hash, Types::UpdatePackageRequest] params
    # @option params [String] :package_id
    #   <p>The unique identifier for the package.</p>
    # @option params [Types::PackageSource] :package_source
    #   <p>Amazon S3 bucket and key for the package.</p>
    # @option params [String] :package_description
    #   <p>A new description of the package.</p>
    # @option params [String] :commit_message
    #   <p>Commit message for the updated file, which is shown as part of
    #       <code>GetPackageVersionHistoryResponse</code>.</p>
    # @option params [Types::PackageConfiguration] :package_configuration
    #   <p>The updated configuration details for a package.</p>
    # @option params [Types::PackageEncryptionOptions] :package_encryption_options
    #   <p>Encryption options for a package.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     package_id: "PackageID", # required
    #     package_source: { # required
    #       s3_bucket_name: "S3BucketName",
    #       s3_key: "S3Key"
    #     },
    #     package_description: "PackageDescription",
    #     commit_message: "CommitMessage",
    #     package_configuration: {
    #       license_requirement: "REQUIRED" # One of: ["REQUIRED", "OPTIONAL", "NONE"], # required
    #       license_filepath: "LicenseFilepath",
    #       configuration_requirement: "REQUIRED" # One of: ["REQUIRED", "OPTIONAL", "NONE"], # required
    #       requires_restart_for_configuration_update: false
    #     },
    #     package_encryption_options: {
    #       kms_key_identifier: "KmsKeyId",
    #       encryption_enabled: false, # required
    #     }
    #   }
    #   options = {}
    #   response = client.update_package(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     package_details: {
    #       package_id: "PackageID",
    #       package_name: "PackageName",
    #       package_type: "TXT-DICTIONARY" # One of: ["TXT-DICTIONARY", "ZIP-PLUGIN", "PACKAGE-LICENSE", "PACKAGE-CONFIG"],
    #       package_description: "PackageDescription",
    #       package_status: "COPYING" # One of: ["COPYING", "COPY_FAILED", "VALIDATING", "VALIDATION_FAILED", "AVAILABLE", "DELETING", "DELETED", "DELETE_FAILED"],
    #       created_at: Time.now,
    #       last_updated_at: Time.now,
    #       available_package_version: "PackageVersion",
    #       error_details: {
    #         error_type: "ErrorType",
    #         error_message: "ErrorMessage"
    #       },
    #       engine_version: "EngineVersion",
    #       available_plugin_properties: {
    #         name: "PluginName",
    #         description: "PluginDescription",
    #         version: "PluginVersion",
    #         class_name: "PluginClassName",
    #         uncompressed_size_in_bytes: 1
    #       },
    #       available_package_configuration: {
    #         license_requirement: "REQUIRED" # One of: ["REQUIRED", "OPTIONAL", "NONE"], # required
    #         license_filepath: "LicenseFilepath",
    #         configuration_requirement: "REQUIRED" # One of: ["REQUIRED", "OPTIONAL", "NONE"], # required
    #         requires_restart_for_configuration_update: false
    #       },
    #       allow_listed_user_list: ["PackageUser"],
    #       package_owner: "PackageOwner",
    #       package_vending_options: {
    #         vending_enabled: false, # required
    #       },
    #       package_encryption_options: {
    #         kms_key_identifier: "KmsKeyId",
    #         encryption_enabled: false, # required
    #       }
    #     }
    #   }
    # @return [Types::UpdatePackageResponse]
    def update_package(params = {}, options = {})
      request = build_request(:update_package, params)
      request.send_request(options)
    end

    # <p>Updates the scope of a package. Scope of the package defines users who can view and associate a package.</p>
    # @param [Hash, Types::UpdatePackageScopeRequest] params
    # @option params [String] :package_id
    #   <p>ID of the package whose scope is being updated.</p>
    # @option params [String] :operation
    #   <p> The operation to perform on the package scope (e.g., add/remove/override users).</p>
    # @option params [Array<String>] :package_user_list
    #   <p> List of users to be added or removed from the package scope.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     package_id: "PackageID", # required
    #     operation: "ADD" # One of: ["ADD", "OVERRIDE", "REMOVE"], # required
    #     package_user_list: ["PackageUser"], # required
    #   }
    #   options = {}
    #   response = client.update_package_scope(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     package_id: "PackageID",
    #     operation: "ADD" # One of: ["ADD", "OVERRIDE", "REMOVE"],
    #     package_user_list: ["PackageUser"]
    #   }
    # @return [Types::UpdatePackageScopeResponse]
    def update_package_scope(params = {}, options = {})
      request = build_request(:update_package_scope, params)
      request.send_request(options)
    end

    # <p>Reschedules a planned domain configuration change for a later time. This change can be a
    #    scheduled <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/service-software.html">service software
    #     update</a> or a <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/auto-tune.html#auto-tune-types">blue/green
    #      Auto-Tune enhancement</a>.</p>
    # @param [Hash, Types::UpdateScheduledActionRequest] params
    # @option params [String] :domain_name
    #   <p>The name of the domain to reschedule an action for.</p>
    # @option params [String] :action_id
    #   <p>The unique identifier of the action to reschedule. To retrieve this ID, send a <a href="https://docs.aws.amazon.com/opensearch-service/latest/APIReference/API_ListScheduledActions.html">ListScheduledActions</a> request.</p>
    # @option params [String] :action_type
    #   <p>The type of action to reschedule. Can be one of <code>SERVICE_SOFTWARE_UPDATE</code>,
    #      <code>JVM_HEAP_SIZE_TUNING</code>, or <code>JVM_YOUNG_GEN_TUNING</code>. To retrieve this value, send a <a href="https://docs.aws.amazon.com/opensearch-service/latest/APIReference/API_ListScheduledActions.html">ListScheduledActions</a> request.</p>
    # @option params [String] :schedule_at
    #   <p>When to schedule the action.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>NOW</code> - Immediately schedules the update to happen in the current hour if
    #        there's capacity available.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TIMESTAMP</code> - Lets you specify a custom date and time to apply the update. If
    #        you specify this value, you must also provide a value for <code>DesiredStartTime</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OFF_PEAK_WINDOW</code> - Marks the action to be picked up during an upcoming
    #        off-peak window. There's no guarantee that the change will be implemented during the next
    #        immediate window. Depending on capacity, it might happen in subsequent days.</p>
    #               </li>
    #            </ul>
    # @option params [Integer] :desired_start_time
    #   <p>The time to implement the change, in Coordinated Universal Time (UTC). Only specify this
    #      parameter if you set <code>ScheduleAt</code> to <code>TIMESTAMP</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "DomainName", # required
    #     action_id: "String", # required
    #     action_type: "SERVICE_SOFTWARE_UPDATE" # One of: ["SERVICE_SOFTWARE_UPDATE", "JVM_HEAP_SIZE_TUNING", "JVM_YOUNG_GEN_TUNING"], # required
    #     schedule_at: "NOW" # One of: ["NOW", "TIMESTAMP", "OFF_PEAK_WINDOW"], # required
    #     desired_start_time: 1
    #   }
    #   options = {}
    #   response = client.update_scheduled_action(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     scheduled_action: {
    #       id: "String", # required
    #       type: "SERVICE_SOFTWARE_UPDATE" # One of: ["SERVICE_SOFTWARE_UPDATE", "JVM_HEAP_SIZE_TUNING", "JVM_YOUNG_GEN_TUNING"], # required
    #       severity: "HIGH" # One of: ["HIGH", "MEDIUM", "LOW"], # required
    #       scheduled_time: 1, # required
    #       description: "String",
    #       scheduled_by: "CUSTOMER" # One of: ["CUSTOMER", "SYSTEM"],
    #       status: "PENDING_UPDATE" # One of: ["PENDING_UPDATE", "IN_PROGRESS", "FAILED", "COMPLETED", "NOT_ELIGIBLE", "ELIGIBLE"],
    #       mandatory: false,
    #       cancellable: false
    #     }
    #   }
    # @return [Types::UpdateScheduledActionResponse]
    def update_scheduled_action(params = {}, options = {})
      request = build_request(:update_scheduled_action, params)
      request.send_request(options)
    end

    # <p>Modifies an Amazon OpenSearch Service-managed interface VPC endpoint.</p>
    # @param [Hash, Types::UpdateVpcEndpointRequest] params
    # @option params [String] :vpc_endpoint_id
    #   <p>The unique identifier of the endpoint.</p>
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

    # <p>Allows you to either upgrade your Amazon OpenSearch Service domain or perform an upgrade
    #    eligibility check to a compatible version of OpenSearch or Elasticsearch.</p>
    # @param [Hash, Types::UpgradeDomainRequest] params
    # @option params [String] :domain_name
    #   <p>Name of the OpenSearch Service domain that you want to upgrade.</p>
    # @option params [String] :target_version
    #   <p>OpenSearch or Elasticsearch version to which you want to upgrade, in the format
    #      Opensearch_X.Y or Elasticsearch_X.Y.</p>
    # @option params [Boolean] :perform_check_only
    #   <p>When true, indicates that an upgrade eligibility check needs to be performed. Does not
    #      actually perform the upgrade.</p>
    # @option params [Hash<String, String>] :advanced_options
    #   <p>Only supports the <code>override_main_response_version</code> parameter and not other
    #      advanced options. You can only include this option when upgrading to an OpenSearch version.
    #      Specifies whether the domain reports its version as 7.10 so that it continues to work with
    #      Elasticsearch OSS clients and plugins.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "DomainName", # required
    #     target_version: "VersionString", # required
    #     perform_check_only: false,
    #     advanced_options: {
    #       "String" => "String"
    #     }
    #   }
    #   options = {}
    #   response = client.upgrade_domain(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     upgrade_id: "String",
    #     domain_name: "DomainName",
    #     target_version: "VersionString",
    #     perform_check_only: false,
    #     advanced_options: {
    #       "String" => "String"
    #     },
    #     change_progress_details: {
    #       change_id: "GUID",
    #       message: "Message",
    #       config_change_status: "Pending" # One of: ["Pending", "Initializing", "Validating", "ValidationFailed", "ApplyingChanges", "Completed", "PendingUserInput", "Cancelled"],
    #       initiated_by: "CUSTOMER" # One of: ["CUSTOMER", "SERVICE"],
    #       start_time: Time.now,
    #       last_updated_time: Time.now
    #     }
    #   }
    # @return [Types::UpgradeDomainResponse]
    def upgrade_domain(params = {}, options = {})
      request = build_request(:upgrade_domain, params)
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
      context[:gem_name] = 'aws-sdk-opensearch'
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
