# frozen_string_literal: true

# This is generated code!

require_relative 'plugins/endpoint'
require 'smithy-client/plugins/checksum_required'
require 'smithy-client/plugins/content_length'
require 'smithy-client/plugins/default_params'
require 'smithy-client/plugins/host_prefix'
require 'smithy-client/plugins/idempotency_token'
require 'smithy-client/plugins/logging'
require 'smithy-client/plugins/transport'
require 'smithy-client/plugins/pageable_response'
require 'smithy-client/plugins/param_converter'
require 'smithy-client/plugins/param_validator'
require 'smithy-client/plugins/protocol'
require 'smithy-client/plugins/raise_response_errors'
require 'smithy-client/plugins/request_compression'
require 'smithy-client/plugins/resolve_auth'
require 'smithy-client/plugins/response_target'
require 'smithy-client/plugins/sign_requests'
require 'smithy-client/plugins/transfer_encoding'
require 'aws-sdk-core/plugins/global_configuration'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/invocation_id'
require 'aws-sdk-core/plugins/recursion_detection'
require 'aws-sdk-core/plugins/retry_errors'
require 'aws-sdk-core/plugins/stub_responses'
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/sigv4'
require 'aws-sdk-core/rest_json'

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:lakeformation)

module Aws::LakeFormation
  # An API client for Aws::LakeFormation.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AWSLakeFormation
    @identifier = :lakeformation

    add_plugin(::Aws::LakeFormation::Plugins::Endpoint)
    add_plugin(Smithy::Client::Plugins::ChecksumRequired)
    add_plugin(Smithy::Client::Plugins::ContentLength)
    add_plugin(Smithy::Client::Plugins::DefaultParams)
    add_plugin(Smithy::Client::Plugins::HostPrefix)
    add_plugin(Smithy::Client::Plugins::IdempotencyToken)
    add_plugin(Smithy::Client::Plugins::Logging)
    add_plugin(Smithy::Client::Plugins::Transport)
    add_plugin(Smithy::Client::Plugins::PageableResponse)
    add_plugin(Smithy::Client::Plugins::ParamConverter)
    add_plugin(Smithy::Client::Plugins::ParamValidator)
    add_plugin(Smithy::Client::Plugins::Protocol)
    add_plugin(Smithy::Client::Plugins::RaiseResponseErrors)
    add_plugin(Smithy::Client::Plugins::RequestCompression)
    add_plugin(Smithy::Client::Plugins::ResolveAuth)
    add_plugin(Smithy::Client::Plugins::ResponseTarget)
    add_plugin(Smithy::Client::Plugins::SignRequests)
    add_plugin(Smithy::Client::Plugins::TransferEncoding)
    add_plugin(Aws::Core::Plugins::GlobalConfiguration)
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
    add_plugin(Aws::Core::Plugins::InvocationId)
    add_plugin(Aws::Core::Plugins::RecursionDetection)
    add_plugin(Aws::Core::Plugins::RetryErrors)
    add_plugin(Aws::Core::Plugins::StubResponses)
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
    # @option options [Numeric] :connect_timeout
    #  The number of seconds to wait when opening a connection before timing out.
    #  Defaults to `nil`, which uses the transport's default; the default
    #  Net::HTTP transport uses 60 seconds.
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::LakeFormation::EndpointProvider)
    #  An object that provides an endpoint to use for the request.
    # @option options [URI::HTTP, String] :http_proxy
    #  A proxy to send requests through. Formatted like 'http://proxy.com:123'.
    # @option options [Boolean] :http_wire_trace
    #  When `true`, HTTP wire trace output is sent to the configured logger.
    # @option options [Smithy::Client::LogFormatter] :log_formatter (Aws::Log::Formatter.default)
    #  The log formatter used by the logger.
    # @option options [Symbol] :log_level (:info)
    #  The log level to send messages to the logger at.
    # @option options [Logger] :logger
    #  The Logger instance to send log messages to. If this option is not set, logging is disabled.
    # @option options [Integer] :max_attempts (3)
    #  The maximum number attempts that will be made for a single request, including
    #  the initial attempt.
    # @option options [String] :profile (default)
    #  Used when loading credentials from the shared config file and credentials file
    #  at ~/.aws/config and ~/.aws/credentials, respectively.  When not specified, 'default' is used.
    # @option options [Symbol, Object] :protocol
    #  The protocol used for request serialization and response deserialization. Defaults to the service default protocol. May be a Symbol naming a supported protocol, or a custom object implementing the protocol interface.
    #  Supported protocols: +:rest_json+ (defaults to +:rest_json+).
    # @option options [Boolean] :raise_response_errors (true)
    #  When `true`, response errors are raised. When `false`, the error is placed on the
    #  output in the {Smithy::Client::Response#error error accessor}.
    # @option options [Numeric] :read_timeout
    #  The number of seconds to wait for data to be read before timing out.
    #  Defaults to `nil`, which uses the transport's default; the default
    #  Net::HTTP transport uses 60 seconds.
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
    # @option options [String] :retry_mode (standard)
    #  Specifies which retry algorithm to use. Values are:
    #  
    #  * `standard` - A standardized set of retry rules across the AWS SDKs.
    #    This includes support for retry quotas, which limit the number of
    #    unsuccessful retries a client can make. This is the default
    #    value if no retry mode is provided.
    #  
    #  * `adaptive` - A retry mode that includes all the functionality of
    #    `standard` mode along with automatic client side throttling.
    # @option options [Object] :retry_strategy
    #  The retry strategy used by the client. If not provided, a default strategy is built
    #  based on `:retry_mode` — either `Standard` or `Adaptive`.
    #  
    #  A custom strategy must respond to:
    #  * `#acquire_initial_retry_token` - returns a token
    #  * `#refresh_retry_token(token, error_info)` - returns a token or nil
    #  * `#record_success(token)` - records a successful request
    #  * `#request_bookkeeping(error_info = nil)` - updates internal state
    # @option options [String] :sdk_ua_app_id
    #  A unique and opaque application ID that is appended to the User-Agent header as app/sdk_ua_app_id.
    #  It should have a maximum length of 50. This variable is sourced from environment variable
    #  `AWS_SDK_UA_APP_ID` or the shared config profile attribute `sdk_ua_app_id`.
    # @option options [String] :secret_access_key
    # @option options [String] :session_token
    # @option options [String] :ssl_ca_bundle
    #  The path to a CA certificate bundle file in PEM format used to verify peer
    #  certificates. Defaults to `nil`, which uses the transport's default trust store.
    # @option options [String] :ssl_ca_directory
    #  The path to a directory of CA certificates in PEM format used to verify peer
    #  certificates. Defaults to `nil`, which uses the transport's default trust store.
    # @option options [OpenSSL::X509::Store] :ssl_ca_store
    #  An in-memory TLS trust store used to verify peer certificates. Defaults to `nil`,
    #  which uses the transport's default trust store.
    # @option options [Boolean] :ssl_verify_peer (true)
    #  When `true` (default), the peer's TLS certificate is verified. Disable only
    #  for debugging, as it is insecure.
    # @option options [Boolean] :stub_responses
    #  When `true`, the client will return stubbed responses instead of networking requests.
    #  By default fake responses are generated and returned. You can specify the response data
    #  to return or errors to raise by calling {Smithy::Client::Stubs#stub_responses}.
    # @option options [Smithy::Client::NetHTTP::Transport] :transport
    #  The transport used to send requests. Defaults to an HTTP/1.1 transport based on
    #  Net::HTTP ({Smithy::Client::NetHTTP::Transport}), constructed with the resolved
    #  common client transport options. Supply a custom object responding to
    #  `#transmit(request)` (returning a stream) to swap the transport, or a
    #  directly-constructed `NetHTTP::Transport` to set Net::HTTP-specific knobs. A
    #  caller-supplied transport instance is used as-is.
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

    # <p>Attaches one or more LF-tags to an existing resource.</p>
    # @param [Hash, Types::AddLFTagsToResourceRequest] params
    # @option params [String] :catalog_id
    #   <p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>
    # @option params [Types::Resource] :resource
    #   <p>The database, table, or column resource to which to attach an LF-tag.</p>
    # @option params [Array<Types::LFTagPair>] :lf_tags
    #   <p>The LF-tags to attach to the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog_id: "CatalogIdString",
    #     resource: { # required
    #       catalog: {
    #         id: "CatalogIdString"
    #       },
    #       database: {
    #         catalog_id: "CatalogIdString",
    #         name: "NameString", # required
    #       },
    #       table: {
    #         catalog_id: "CatalogIdString",
    #         database_name: "NameString", # required
    #         name: "NameString",
    #         table_wildcard: {
    #         }
    #       },
    #       table_with_columns: {
    #         catalog_id: "CatalogIdString",
    #         database_name: "NameString", # required
    #         name: "NameString", # required
    #         column_names: ["NameString"],
    #         column_wildcard: {
    #           excluded_column_names: ["NameString"]
    #         }
    #       },
    #       data_location: {
    #         catalog_id: "CatalogIdString",
    #         resource_arn: "ResourceArnString", # required
    #       },
    #       data_cells_filter: {
    #         table_catalog_id: "CatalogIdString",
    #         database_name: "NameString",
    #         table_name: "NameString",
    #         name: "NameString"
    #       },
    #       lf_tag: {
    #         catalog_id: "CatalogIdString",
    #         tag_key: "NameString", # required
    #         tag_values: ["LFTagValue"], # required
    #       },
    #       lf_tag_policy: {
    #         catalog_id: "CatalogIdString",
    #         resource_type: "DATABASE" # One of: ["DATABASE", "TABLE"], # required
    #         expression: [
    #           {
    #             tag_key: "LFTagKey", # required
    #             tag_values: ["LFTagValue"], # required
    #           }
    #         ],
    #         expression_name: "NameString"
    #       },
    #       lf_tag_expression: {
    #         catalog_id: "CatalogIdString",
    #         name: "NameString", # required
    #       }
    #     },
    #     lf_tags: [ # required
    #       {
    #         catalog_id: "CatalogIdString",
    #         tag_key: "LFTagKey", # required
    #         tag_values: ["LFTagValue"], # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.add_lf_tags_to_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     failures: [
    #       {
    #         lf_tag: {
    #           catalog_id: "CatalogIdString",
    #           tag_key: "LFTagKey", # required
    #           tag_values: ["LFTagValue"], # required
    #         },
    #         error: {
    #           error_code: "NameString",
    #           error_message: "DescriptionString"
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::AddLFTagsToResourceResponse]
    def add_lf_tags_to_resource(params = {}, options = {})
      request = build_request(:add_lf_tags_to_resource, params)
      request.send_request(options)
    end

    # <p>Allows a caller to assume an IAM role decorated as the SAML user specified in the SAML assertion included in the request. This decoration allows Lake Formation to enforce access policies against the SAML users and groups.  This API operation requires SAML federation setup in the caller’s account as it can only be called with valid SAML assertions.
    #       Lake Formation does not scope down the permission of the assumed role.  All permissions attached to the role via the SAML federation setup will be included in the role session.
    #     </p>
    #          <p>
    #       This decorated role is expected to access data in Amazon S3 by getting temporary access from Lake Formation which is authorized via the virtual API <code>GetDataAccess</code>.  Therefore, all SAML roles that can be assumed via <code>AssumeDecoratedRoleWithSAML</code> must at a minimum include <code>lakeformation:GetDataAccess</code> in their role policies.  A typical IAM policy attached to such a role would look as follows:
    #     </p>
    # @param [Hash, Types::AssumeDecoratedRoleWithSAMLRequest] params
    # @option params [String] :saml_assertion
    #   <p>A SAML assertion consisting of an assertion statement for the user who needs temporary credentials. This must match the SAML assertion that was issued to IAM. This must be Base64 encoded.</p>
    # @option params [String] :role_arn
    #   <p>The role that represents an IAM principal whose scope down policy allows it to call credential vending APIs such as <code>GetTemporaryTableCredentials</code>. The caller must also have iam:PassRole permission on this role.  </p>
    # @option params [String] :principal_arn
    #   <p>The Amazon Resource Name (ARN) of the SAML provider in IAM that describes the IdP.</p>
    # @option params [Integer] :duration_seconds
    #   <p>The time period, between 900 and 43,200 seconds, for the timeout of the temporary credentials.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     saml_assertion: "SAMLAssertionString", # required
    #     role_arn: "IAMRoleArn", # required
    #     principal_arn: "IAMSAMLProviderArn", # required
    #     duration_seconds: 1
    #   }
    #   options = {}
    #   response = client.assume_decorated_role_with_saml(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     access_key_id: "AccessKeyIdString",
    #     secret_access_key: "SecretAccessKeyString",
    #     session_token: "SessionTokenString",
    #     expiration: Time.now
    #   }
    # @return [Types::AssumeDecoratedRoleWithSAMLResponse]
    def assume_decorated_role_with_saml(params = {}, options = {})
      request = build_request(:assume_decorated_role_with_saml, params)
      request.send_request(options)
    end

    # <p>Batch operation to grant permissions to the principal.</p>
    # @param [Hash, Types::BatchGrantPermissionsRequest] params
    # @option params [String] :catalog_id
    #   <p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>
    # @option params [Array<Types::BatchPermissionsRequestEntry>] :entries
    #   <p>A list of up to 20 entries for resource permissions to be granted by batch operation to the principal.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog_id: "CatalogIdString",
    #     entries: [ # required
    #       {
    #         id: "Identifier", # required
    #         principal: {
    #           data_lake_principal_identifier: "DataLakePrincipalString"
    #         },
    #         resource: {
    #           catalog: {
    #             id: "CatalogIdString"
    #           },
    #           database: {
    #             catalog_id: "CatalogIdString",
    #             name: "NameString", # required
    #           },
    #           table: {
    #             catalog_id: "CatalogIdString",
    #             database_name: "NameString", # required
    #             name: "NameString",
    #             table_wildcard: {
    #             }
    #           },
    #           table_with_columns: {
    #             catalog_id: "CatalogIdString",
    #             database_name: "NameString", # required
    #             name: "NameString", # required
    #             column_names: ["NameString"],
    #             column_wildcard: {
    #               excluded_column_names: ["NameString"]
    #             }
    #           },
    #           data_location: {
    #             catalog_id: "CatalogIdString",
    #             resource_arn: "ResourceArnString", # required
    #           },
    #           data_cells_filter: {
    #             table_catalog_id: "CatalogIdString",
    #             database_name: "NameString",
    #             table_name: "NameString",
    #             name: "NameString"
    #           },
    #           lf_tag: {
    #             catalog_id: "CatalogIdString",
    #             tag_key: "NameString", # required
    #             tag_values: ["LFTagValue"], # required
    #           },
    #           lf_tag_policy: {
    #             catalog_id: "CatalogIdString",
    #             resource_type: "DATABASE" # One of: ["DATABASE", "TABLE"], # required
    #             expression: [
    #               {
    #                 tag_key: "LFTagKey", # required
    #                 tag_values: ["LFTagValue"], # required
    #               }
    #             ],
    #             expression_name: "NameString"
    #           },
    #           lf_tag_expression: {
    #             catalog_id: "CatalogIdString",
    #             name: "NameString", # required
    #           }
    #         },
    #         permissions: ["ALL" # One of: ["ALL", "SELECT", "ALTER", "DROP", "DELETE", "INSERT", "DESCRIBE", "CREATE_DATABASE", "CREATE_TABLE", "DATA_LOCATION_ACCESS", "CREATE_LF_TAG", "ASSOCIATE", "GRANT_WITH_LF_TAG_EXPRESSION", "CREATE_LF_TAG_EXPRESSION", "CREATE_CATALOG", "SUPER_USER"]],
    #         condition: {
    #           expression: "ExpressionString"
    #         },
    #         permissions_with_grant_option: ["ALL" # One of: ["ALL", "SELECT", "ALTER", "DROP", "DELETE", "INSERT", "DESCRIBE", "CREATE_DATABASE", "CREATE_TABLE", "DATA_LOCATION_ACCESS", "CREATE_LF_TAG", "ASSOCIATE", "GRANT_WITH_LF_TAG_EXPRESSION", "CREATE_LF_TAG_EXPRESSION", "CREATE_CATALOG", "SUPER_USER"]]
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.batch_grant_permissions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     failures: [
    #       {
    #         request_entry: {
    #           id: "Identifier", # required
    #           principal: {
    #             data_lake_principal_identifier: "DataLakePrincipalString"
    #           },
    #           resource: {
    #             catalog: {
    #               id: "CatalogIdString"
    #             },
    #             database: {
    #               catalog_id: "CatalogIdString",
    #               name: "NameString", # required
    #             },
    #             table: {
    #               catalog_id: "CatalogIdString",
    #               database_name: "NameString", # required
    #               name: "NameString",
    #               table_wildcard: {
    #               }
    #             },
    #             table_with_columns: {
    #               catalog_id: "CatalogIdString",
    #               database_name: "NameString", # required
    #               name: "NameString", # required
    #               column_names: ["NameString"],
    #               column_wildcard: {
    #                 excluded_column_names: ["NameString"]
    #               }
    #             },
    #             data_location: {
    #               catalog_id: "CatalogIdString",
    #               resource_arn: "ResourceArnString", # required
    #             },
    #             data_cells_filter: {
    #               table_catalog_id: "CatalogIdString",
    #               database_name: "NameString",
    #               table_name: "NameString",
    #               name: "NameString"
    #             },
    #             lf_tag: {
    #               catalog_id: "CatalogIdString",
    #               tag_key: "NameString", # required
    #               tag_values: ["LFTagValue"], # required
    #             },
    #             lf_tag_policy: {
    #               catalog_id: "CatalogIdString",
    #               resource_type: "DATABASE" # One of: ["DATABASE", "TABLE"], # required
    #               expression: [
    #                 {
    #                   tag_key: "LFTagKey", # required
    #                   tag_values: ["LFTagValue"], # required
    #                 }
    #               ],
    #               expression_name: "NameString"
    #             },
    #             lf_tag_expression: {
    #               catalog_id: "CatalogIdString",
    #               name: "NameString", # required
    #             }
    #           },
    #           permissions: ["ALL" # One of: ["ALL", "SELECT", "ALTER", "DROP", "DELETE", "INSERT", "DESCRIBE", "CREATE_DATABASE", "CREATE_TABLE", "DATA_LOCATION_ACCESS", "CREATE_LF_TAG", "ASSOCIATE", "GRANT_WITH_LF_TAG_EXPRESSION", "CREATE_LF_TAG_EXPRESSION", "CREATE_CATALOG", "SUPER_USER"]],
    #           condition: {
    #             expression: "ExpressionString"
    #           },
    #           permissions_with_grant_option: ["ALL" # One of: ["ALL", "SELECT", "ALTER", "DROP", "DELETE", "INSERT", "DESCRIBE", "CREATE_DATABASE", "CREATE_TABLE", "DATA_LOCATION_ACCESS", "CREATE_LF_TAG", "ASSOCIATE", "GRANT_WITH_LF_TAG_EXPRESSION", "CREATE_LF_TAG_EXPRESSION", "CREATE_CATALOG", "SUPER_USER"]]
    #         },
    #         error: {
    #           error_code: "NameString",
    #           error_message: "DescriptionString"
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::BatchGrantPermissionsResponse]
    def batch_grant_permissions(params = {}, options = {})
      request = build_request(:batch_grant_permissions, params)
      request.send_request(options)
    end

    # <p>Batch operation to revoke permissions from the principal.</p>
    # @param [Hash, Types::BatchRevokePermissionsRequest] params
    # @option params [String] :catalog_id
    #   <p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>
    # @option params [Array<Types::BatchPermissionsRequestEntry>] :entries
    #   <p>A list of up to 20 entries for resource permissions to be revoked by batch operation to the principal.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog_id: "CatalogIdString",
    #     entries: [ # required
    #       {
    #         id: "Identifier", # required
    #         principal: {
    #           data_lake_principal_identifier: "DataLakePrincipalString"
    #         },
    #         resource: {
    #           catalog: {
    #             id: "CatalogIdString"
    #           },
    #           database: {
    #             catalog_id: "CatalogIdString",
    #             name: "NameString", # required
    #           },
    #           table: {
    #             catalog_id: "CatalogIdString",
    #             database_name: "NameString", # required
    #             name: "NameString",
    #             table_wildcard: {
    #             }
    #           },
    #           table_with_columns: {
    #             catalog_id: "CatalogIdString",
    #             database_name: "NameString", # required
    #             name: "NameString", # required
    #             column_names: ["NameString"],
    #             column_wildcard: {
    #               excluded_column_names: ["NameString"]
    #             }
    #           },
    #           data_location: {
    #             catalog_id: "CatalogIdString",
    #             resource_arn: "ResourceArnString", # required
    #           },
    #           data_cells_filter: {
    #             table_catalog_id: "CatalogIdString",
    #             database_name: "NameString",
    #             table_name: "NameString",
    #             name: "NameString"
    #           },
    #           lf_tag: {
    #             catalog_id: "CatalogIdString",
    #             tag_key: "NameString", # required
    #             tag_values: ["LFTagValue"], # required
    #           },
    #           lf_tag_policy: {
    #             catalog_id: "CatalogIdString",
    #             resource_type: "DATABASE" # One of: ["DATABASE", "TABLE"], # required
    #             expression: [
    #               {
    #                 tag_key: "LFTagKey", # required
    #                 tag_values: ["LFTagValue"], # required
    #               }
    #             ],
    #             expression_name: "NameString"
    #           },
    #           lf_tag_expression: {
    #             catalog_id: "CatalogIdString",
    #             name: "NameString", # required
    #           }
    #         },
    #         permissions: ["ALL" # One of: ["ALL", "SELECT", "ALTER", "DROP", "DELETE", "INSERT", "DESCRIBE", "CREATE_DATABASE", "CREATE_TABLE", "DATA_LOCATION_ACCESS", "CREATE_LF_TAG", "ASSOCIATE", "GRANT_WITH_LF_TAG_EXPRESSION", "CREATE_LF_TAG_EXPRESSION", "CREATE_CATALOG", "SUPER_USER"]],
    #         condition: {
    #           expression: "ExpressionString"
    #         },
    #         permissions_with_grant_option: ["ALL" # One of: ["ALL", "SELECT", "ALTER", "DROP", "DELETE", "INSERT", "DESCRIBE", "CREATE_DATABASE", "CREATE_TABLE", "DATA_LOCATION_ACCESS", "CREATE_LF_TAG", "ASSOCIATE", "GRANT_WITH_LF_TAG_EXPRESSION", "CREATE_LF_TAG_EXPRESSION", "CREATE_CATALOG", "SUPER_USER"]]
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.batch_revoke_permissions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     failures: [
    #       {
    #         request_entry: {
    #           id: "Identifier", # required
    #           principal: {
    #             data_lake_principal_identifier: "DataLakePrincipalString"
    #           },
    #           resource: {
    #             catalog: {
    #               id: "CatalogIdString"
    #             },
    #             database: {
    #               catalog_id: "CatalogIdString",
    #               name: "NameString", # required
    #             },
    #             table: {
    #               catalog_id: "CatalogIdString",
    #               database_name: "NameString", # required
    #               name: "NameString",
    #               table_wildcard: {
    #               }
    #             },
    #             table_with_columns: {
    #               catalog_id: "CatalogIdString",
    #               database_name: "NameString", # required
    #               name: "NameString", # required
    #               column_names: ["NameString"],
    #               column_wildcard: {
    #                 excluded_column_names: ["NameString"]
    #               }
    #             },
    #             data_location: {
    #               catalog_id: "CatalogIdString",
    #               resource_arn: "ResourceArnString", # required
    #             },
    #             data_cells_filter: {
    #               table_catalog_id: "CatalogIdString",
    #               database_name: "NameString",
    #               table_name: "NameString",
    #               name: "NameString"
    #             },
    #             lf_tag: {
    #               catalog_id: "CatalogIdString",
    #               tag_key: "NameString", # required
    #               tag_values: ["LFTagValue"], # required
    #             },
    #             lf_tag_policy: {
    #               catalog_id: "CatalogIdString",
    #               resource_type: "DATABASE" # One of: ["DATABASE", "TABLE"], # required
    #               expression: [
    #                 {
    #                   tag_key: "LFTagKey", # required
    #                   tag_values: ["LFTagValue"], # required
    #                 }
    #               ],
    #               expression_name: "NameString"
    #             },
    #             lf_tag_expression: {
    #               catalog_id: "CatalogIdString",
    #               name: "NameString", # required
    #             }
    #           },
    #           permissions: ["ALL" # One of: ["ALL", "SELECT", "ALTER", "DROP", "DELETE", "INSERT", "DESCRIBE", "CREATE_DATABASE", "CREATE_TABLE", "DATA_LOCATION_ACCESS", "CREATE_LF_TAG", "ASSOCIATE", "GRANT_WITH_LF_TAG_EXPRESSION", "CREATE_LF_TAG_EXPRESSION", "CREATE_CATALOG", "SUPER_USER"]],
    #           condition: {
    #             expression: "ExpressionString"
    #           },
    #           permissions_with_grant_option: ["ALL" # One of: ["ALL", "SELECT", "ALTER", "DROP", "DELETE", "INSERT", "DESCRIBE", "CREATE_DATABASE", "CREATE_TABLE", "DATA_LOCATION_ACCESS", "CREATE_LF_TAG", "ASSOCIATE", "GRANT_WITH_LF_TAG_EXPRESSION", "CREATE_LF_TAG_EXPRESSION", "CREATE_CATALOG", "SUPER_USER"]]
    #         },
    #         error: {
    #           error_code: "NameString",
    #           error_message: "DescriptionString"
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::BatchRevokePermissionsResponse]
    def batch_revoke_permissions(params = {}, options = {})
      request = build_request(:batch_revoke_permissions, params)
      request.send_request(options)
    end

    # <p>Attempts to cancel the specified transaction. Returns an exception if the transaction was previously committed.</p>
    # @param [Hash, Types::CancelTransactionRequest] params
    # @option params [String] :transaction_id
    #   <p>The transaction to cancel.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     transaction_id: "TransactionIdString", # required
    #   }
    #   options = {}
    #   response = client.cancel_transaction(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::CancelTransactionResponse]
    def cancel_transaction(params = {}, options = {})
      request = build_request(:cancel_transaction, params)
      request.send_request(options)
    end

    # <p>Attempts to commit the specified transaction. Returns an exception if the transaction was previously aborted. This API action is idempotent if called multiple times for the same transaction.</p>
    # @param [Hash, Types::CommitTransactionRequest] params
    # @option params [String] :transaction_id
    #   <p>The transaction to commit.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     transaction_id: "TransactionIdString", # required
    #   }
    #   options = {}
    #   response = client.commit_transaction(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     transaction_status: "ACTIVE" # One of: ["ACTIVE", "COMMITTED", "ABORTED", "COMMIT_IN_PROGRESS"]
    #   }
    # @return [Types::CommitTransactionResponse]
    def commit_transaction(params = {}, options = {})
      request = build_request(:commit_transaction, params)
      request.send_request(options)
    end

    # <p>Creates a data cell filter to allow one to grant access to certain columns on certain rows.</p>
    # @param [Hash, Types::CreateDataCellsFilterRequest] params
    # @option params [Types::DataCellsFilter] :table_data
    #   <p>A <code>DataCellsFilter</code> structure containing information about the data cells filter.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     table_data: { # required
    #       table_catalog_id: "CatalogIdString", # required
    #       database_name: "NameString", # required
    #       table_name: "NameString", # required
    #       name: "NameString", # required
    #       row_filter: {
    #         filter_expression: "PredicateString",
    #         all_rows_wildcard: {
    #         }
    #       },
    #       column_names: ["NameString"],
    #       column_wildcard: {
    #         excluded_column_names: ["NameString"]
    #       },
    #       version_id: "VersionString"
    #     }
    #   }
    #   options = {}
    #   response = client.create_data_cells_filter(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::CreateDataCellsFilterResponse]
    def create_data_cells_filter(params = {}, options = {})
      request = build_request(:create_data_cells_filter, params)
      request.send_request(options)
    end

    # <p>Creates an LF-tag with the specified name and values.</p>
    # @param [Hash, Types::CreateLFTagRequest] params
    # @option params [String] :catalog_id
    #   <p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>
    # @option params [String] :tag_key
    #   <p>The key-name for the LF-tag.</p>
    # @option params [Array<String>] :tag_values
    #   <p>A list of possible values an attribute can take.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog_id: "CatalogIdString",
    #     tag_key: "LFTagKey", # required
    #     tag_values: ["LFTagValue"], # required
    #   }
    #   options = {}
    #   response = client.create_lf_tag(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::CreateLFTagResponse]
    def create_lf_tag(params = {}, options = {})
      request = build_request(:create_lf_tag, params)
      request.send_request(options)
    end

    # <p>Creates a new LF-Tag expression with the provided name, description, catalog ID, and
    #       expression body. This call fails if a LF-Tag expression with the same name already exists in
    #       the caller’s account or if the underlying LF-Tags don't exist. To call this API operation,
    #       caller needs the following Lake Formation permissions:</p>
    #          <p>
    #             <code>CREATE_LF_TAG_EXPRESSION</code> on the root catalog resource.</p>
    #          <p>
    #             <code>GRANT_WITH_LF_TAG_EXPRESSION</code> on all underlying LF-Tag key:value pairs
    #       included in the expression. </p>
    # @param [Hash, Types::CreateLFTagExpressionRequest] params
    # @option params [String] :name
    #   <p>A name for the expression.</p>
    # @option params [String] :description
    #   <p>A description with information about the LF-Tag expression.</p>
    # @option params [String] :catalog_id
    #   <p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>
    # @option params [Array<Types::LFTag>] :expression
    #   <p>A list of LF-Tag conditions (key-value pairs).</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "NameString", # required
    #     description: "DescriptionString",
    #     catalog_id: "CatalogIdString",
    #     expression: [ # required
    #       {
    #         tag_key: "LFTagKey", # required
    #         tag_values: ["LFTagValue"], # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_lf_tag_expression(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::CreateLFTagExpressionResponse]
    def create_lf_tag_expression(params = {}, options = {})
      request = build_request(:create_lf_tag_expression, params)
      request.send_request(options)
    end

    # <p>Creates an IAM Identity Center connection with Lake Formation to allow IAM Identity Center users and groups to access Data Catalog resources.</p>
    # @param [Hash, Types::CreateLakeFormationIdentityCenterConfigurationRequest] params
    # @option params [String] :catalog_id
    #   <p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the
    #            persistent metadata store. It contains database definitions, table definitions, view
    #            definitions, and other control information to manage your Lake Formation
    #            environment.</p>
    # @option params [String] :instance_arn
    #   <p>The ARN of the IAM Identity Center instance for which the operation will be executed.
    #            For more information about ARNs, see Amazon Resource Names (ARNs) and Amazon Web Services Service
    #            Namespaces in the Amazon Web Services General Reference.</p>
    # @option params [Types::ExternalFilteringConfiguration] :external_filtering
    #   <p>A list of the account IDs of Amazon Web Services accounts of third-party applications
    #            that are allowed to access data managed by Lake Formation.</p>
    # @option params [Array<Types::DataLakePrincipal>] :share_recipients
    #   <p>A list of Amazon Web Services account IDs and/or Amazon Web Services organization/organizational unit ARNs
    #            that are allowed to access data managed by Lake Formation. </p>
    #            <p>If the <code>ShareRecipients</code> list includes valid values, a resource share is created with the principals you want to have access to the resources.</p>
    #            <p>If the <code>ShareRecipients</code> value is null or the list is empty, no resource share is created.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog_id: "CatalogIdString",
    #     instance_arn: "IdentityCenterInstanceArn",
    #     external_filtering: {
    #       status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #       authorized_targets: ["ScopeTarget"], # required
    #     },
    #     share_recipients: [
    #       {
    #         data_lake_principal_identifier: "DataLakePrincipalString"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_lake_formation_identity_center_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     application_arn: "ApplicationArn"
    #   }
    # @return [Types::CreateLakeFormationIdentityCenterConfigurationResponse]
    def create_lake_formation_identity_center_configuration(params = {}, options = {})
      request = build_request(:create_lake_formation_identity_center_configuration, params)
      request.send_request(options)
    end

    # <p>Enforce Lake Formation permissions for the given databases, tables, and principals.</p>
    # @param [Hash, Types::CreateLakeFormationOptInRequest] params
    # @option params [Types::DataLakePrincipal] :principal
    #   <p>The Lake Formation principal. Supported principals are IAM users
    #         or IAM roles.</p>
    # @option params [Types::Resource] :resource
    #   <p>A structure for the resource.</p>
    # @option params [Types::Condition] :condition
    #   <p>A Lake Formation condition, which applies to permissions and opt-ins that contain an expression.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     principal: { # required
    #       data_lake_principal_identifier: "DataLakePrincipalString"
    #     },
    #     resource: { # required
    #       catalog: {
    #         id: "CatalogIdString"
    #       },
    #       database: {
    #         catalog_id: "CatalogIdString",
    #         name: "NameString", # required
    #       },
    #       table: {
    #         catalog_id: "CatalogIdString",
    #         database_name: "NameString", # required
    #         name: "NameString",
    #         table_wildcard: {
    #         }
    #       },
    #       table_with_columns: {
    #         catalog_id: "CatalogIdString",
    #         database_name: "NameString", # required
    #         name: "NameString", # required
    #         column_names: ["NameString"],
    #         column_wildcard: {
    #           excluded_column_names: ["NameString"]
    #         }
    #       },
    #       data_location: {
    #         catalog_id: "CatalogIdString",
    #         resource_arn: "ResourceArnString", # required
    #       },
    #       data_cells_filter: {
    #         table_catalog_id: "CatalogIdString",
    #         database_name: "NameString",
    #         table_name: "NameString",
    #         name: "NameString"
    #       },
    #       lf_tag: {
    #         catalog_id: "CatalogIdString",
    #         tag_key: "NameString", # required
    #         tag_values: ["LFTagValue"], # required
    #       },
    #       lf_tag_policy: {
    #         catalog_id: "CatalogIdString",
    #         resource_type: "DATABASE" # One of: ["DATABASE", "TABLE"], # required
    #         expression: [
    #           {
    #             tag_key: "LFTagKey", # required
    #             tag_values: ["LFTagValue"], # required
    #           }
    #         ],
    #         expression_name: "NameString"
    #       },
    #       lf_tag_expression: {
    #         catalog_id: "CatalogIdString",
    #         name: "NameString", # required
    #       }
    #     },
    #     condition: {
    #       expression: "ExpressionString"
    #     }
    #   }
    #   options = {}
    #   response = client.create_lake_formation_opt_in(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::CreateLakeFormationOptInResponse]
    def create_lake_formation_opt_in(params = {}, options = {})
      request = build_request(:create_lake_formation_opt_in, params)
      request.send_request(options)
    end

    # <p>Deletes a data cell filter.</p>
    # @param [Hash, Types::DeleteDataCellsFilterRequest] params
    # @option params [String] :table_catalog_id
    #   <p>The ID of the catalog to which the table belongs.</p>
    # @option params [String] :database_name
    #   <p>A database in the Glue Data Catalog.</p>
    # @option params [String] :table_name
    #   <p>A table in the database.</p>
    # @option params [String] :name
    #   <p>The name given by the user to the data filter cell.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     table_catalog_id: "CatalogIdString",
    #     database_name: "NameString",
    #     table_name: "NameString",
    #     name: "NameString"
    #   }
    #   options = {}
    #   response = client.delete_data_cells_filter(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteDataCellsFilterResponse]
    def delete_data_cells_filter(params = {}, options = {})
      request = build_request(:delete_data_cells_filter, params)
      request.send_request(options)
    end

    # <p>Deletes the specified LF-tag given a key name. If the input parameter tag key was not found, then the operation will throw an exception. When you delete an LF-tag, the <code>LFTagPolicy</code> attached to the LF-tag becomes invalid. If the deleted LF-tag was still assigned to any resource, the tag policy attach to the deleted LF-tag will no longer be applied to the resource.</p>
    # @param [Hash, Types::DeleteLFTagRequest] params
    # @option params [String] :catalog_id
    #   <p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>
    # @option params [String] :tag_key
    #   <p>The key-name for the LF-tag to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog_id: "CatalogIdString",
    #     tag_key: "LFTagKey", # required
    #   }
    #   options = {}
    #   response = client.delete_lf_tag(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteLFTagResponse]
    def delete_lf_tag(params = {}, options = {})
      request = build_request(:delete_lf_tag, params)
      request.send_request(options)
    end

    # <p>Deletes the LF-Tag expression. The caller must be a data lake admin or have <code>DROP</code> permissions on the LF-Tag expression.
    #       Deleting a LF-Tag expression will also delete all <code>LFTagPolicy</code> permissions referencing the LF-Tag expression.</p>
    # @param [Hash, Types::DeleteLFTagExpressionRequest] params
    # @option params [String] :name
    #   <p>The name for the LF-Tag expression.</p>
    # @option params [String] :catalog_id
    #   <p>The identifier for the Data Catalog. By default, the account ID in which the LF-Tag expression is saved. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "NameString", # required
    #     catalog_id: "CatalogIdString"
    #   }
    #   options = {}
    #   response = client.delete_lf_tag_expression(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteLFTagExpressionResponse]
    def delete_lf_tag_expression(params = {}, options = {})
      request = build_request(:delete_lf_tag_expression, params)
      request.send_request(options)
    end

    # <p>Deletes an IAM Identity Center connection with Lake Formation.</p>
    # @param [Hash, Types::DeleteLakeFormationIdentityCenterConfigurationRequest] params
    # @option params [String] :catalog_id
    #   <p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the
    #            persistent metadata store. It contains database definitions, table definitions, view
    #            definition, and other control information to manage your Lake Formation environment.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog_id: "CatalogIdString"
    #   }
    #   options = {}
    #   response = client.delete_lake_formation_identity_center_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteLakeFormationIdentityCenterConfigurationResponse]
    def delete_lake_formation_identity_center_configuration(params = {}, options = {})
      request = build_request(:delete_lake_formation_identity_center_configuration, params)
      request.send_request(options)
    end

    # <p>Remove the Lake Formation permissions enforcement of the given databases, tables, and principals.</p>
    # @param [Hash, Types::DeleteLakeFormationOptInRequest] params
    # @option params [Types::DataLakePrincipal] :principal
    #   <p>The Lake Formation principal. Supported principals are IAM users
    #         or IAM roles.</p>
    # @option params [Types::Resource] :resource
    #   <p>A structure for the resource.</p>
    # @option params [Types::Condition] :condition
    #   <p>A Lake Formation condition, which applies to permissions and opt-ins that contain an expression.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     principal: { # required
    #       data_lake_principal_identifier: "DataLakePrincipalString"
    #     },
    #     resource: { # required
    #       catalog: {
    #         id: "CatalogIdString"
    #       },
    #       database: {
    #         catalog_id: "CatalogIdString",
    #         name: "NameString", # required
    #       },
    #       table: {
    #         catalog_id: "CatalogIdString",
    #         database_name: "NameString", # required
    #         name: "NameString",
    #         table_wildcard: {
    #         }
    #       },
    #       table_with_columns: {
    #         catalog_id: "CatalogIdString",
    #         database_name: "NameString", # required
    #         name: "NameString", # required
    #         column_names: ["NameString"],
    #         column_wildcard: {
    #           excluded_column_names: ["NameString"]
    #         }
    #       },
    #       data_location: {
    #         catalog_id: "CatalogIdString",
    #         resource_arn: "ResourceArnString", # required
    #       },
    #       data_cells_filter: {
    #         table_catalog_id: "CatalogIdString",
    #         database_name: "NameString",
    #         table_name: "NameString",
    #         name: "NameString"
    #       },
    #       lf_tag: {
    #         catalog_id: "CatalogIdString",
    #         tag_key: "NameString", # required
    #         tag_values: ["LFTagValue"], # required
    #       },
    #       lf_tag_policy: {
    #         catalog_id: "CatalogIdString",
    #         resource_type: "DATABASE" # One of: ["DATABASE", "TABLE"], # required
    #         expression: [
    #           {
    #             tag_key: "LFTagKey", # required
    #             tag_values: ["LFTagValue"], # required
    #           }
    #         ],
    #         expression_name: "NameString"
    #       },
    #       lf_tag_expression: {
    #         catalog_id: "CatalogIdString",
    #         name: "NameString", # required
    #       }
    #     },
    #     condition: {
    #       expression: "ExpressionString"
    #     }
    #   }
    #   options = {}
    #   response = client.delete_lake_formation_opt_in(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteLakeFormationOptInResponse]
    def delete_lake_formation_opt_in(params = {}, options = {})
      request = build_request(:delete_lake_formation_opt_in, params)
      request.send_request(options)
    end

    # <p>For a specific governed table, provides a list of Amazon S3 objects that will be written during the current transaction and that can be automatically deleted
    #       if the transaction is canceled. Without this call, no Amazon S3 objects are automatically deleted when a transaction cancels.
    #     </p>
    #          <p>
    #       The Glue ETL library function <code>write_dynamic_frame.from_catalog()</code> includes an option to automatically 
    #       call <code>DeleteObjectsOnCancel</code> before writes. For more information, see 
    #       <a href="https://docs.aws.amazon.com/lake-formation/latest/dg/transactions-data-operations.html#rolling-back-writes">Rolling Back Amazon S3 Writes</a>.
    #     </p>
    # @param [Hash, Types::DeleteObjectsOnCancelRequest] params
    # @option params [String] :catalog_id
    #   <p>The Glue data catalog that contains the governed table. Defaults to the current account ID.</p>
    # @option params [String] :database_name
    #   <p>The database that contains the governed table.</p>
    # @option params [String] :table_name
    #   <p>The name of the governed table.</p>
    # @option params [String] :transaction_id
    #   <p>ID of the transaction that the writes occur in.</p>
    # @option params [Array<Types::VirtualObject>] :objects
    #   <p>A list of VirtualObject structures, which indicates the Amazon S3 objects to be deleted if the transaction cancels.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog_id: "CatalogIdString",
    #     database_name: "NameString", # required
    #     table_name: "NameString", # required
    #     transaction_id: "TransactionIdString", # required
    #     objects: [ # required
    #       {
    #         uri: "URI", # required
    #         e_tag: "ETagString"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.delete_objects_on_cancel(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteObjectsOnCancelResponse]
    def delete_objects_on_cancel(params = {}, options = {})
      request = build_request(:delete_objects_on_cancel, params)
      request.send_request(options)
    end

    # <p>Deregisters the resource as managed by the Data Catalog.</p>
    #          <p>When you deregister a path, Lake Formation removes the path from the inline policy attached to your service-linked role.</p>
    # @param [Hash, Types::DeregisterResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource that you want to deregister.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArnString", # required
    #   }
    #   options = {}
    #   response = client.deregister_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeregisterResourceResponse]
    def deregister_resource(params = {}, options = {})
      request = build_request(:deregister_resource, params)
      request.send_request(options)
    end

    # <p>Retrieves the instance ARN and application ARN for the connection.</p>
    # @param [Hash, Types::DescribeLakeFormationIdentityCenterConfigurationRequest] params
    # @option params [String] :catalog_id
    #   <p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog_id: "CatalogIdString"
    #   }
    #   options = {}
    #   response = client.describe_lake_formation_identity_center_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     catalog_id: "CatalogIdString",
    #     instance_arn: "IdentityCenterInstanceArn",
    #     application_arn: "ApplicationArn",
    #     external_filtering: {
    #       status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #       authorized_targets: ["ScopeTarget"], # required
    #     },
    #     share_recipients: [
    #       {
    #         data_lake_principal_identifier: "DataLakePrincipalString"
    #       }
    #     ],
    #     resource_share: "RAMResourceShareArn"
    #   }
    # @return [Types::DescribeLakeFormationIdentityCenterConfigurationResponse]
    def describe_lake_formation_identity_center_configuration(params = {}, options = {})
      request = build_request(:describe_lake_formation_identity_center_configuration, params)
      request.send_request(options)
    end

    # <p>Retrieves the current data access role for the given resource registered in Lake Formation.</p>
    # @param [Hash, Types::DescribeResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The resource ARN.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArnString", # required
    #   }
    #   options = {}
    #   response = client.describe_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_info: {
    #       resource_arn: "ResourceArnString",
    #       role_arn: "IAMRoleArn",
    #       last_modified: Time.now,
    #       with_federation: false,
    #       hybrid_access_enabled: false,
    #       with_privileged_access: false
    #     }
    #   }
    # @return [Types::DescribeResourceResponse]
    def describe_resource(params = {}, options = {})
      request = build_request(:describe_resource, params)
      request.send_request(options)
    end

    # <p>Returns the details of a single transaction.</p>
    # @param [Hash, Types::DescribeTransactionRequest] params
    # @option params [String] :transaction_id
    #   <p>The transaction for which to return status.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     transaction_id: "TransactionIdString", # required
    #   }
    #   options = {}
    #   response = client.describe_transaction(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     transaction_description: {
    #       transaction_id: "TransactionIdString",
    #       transaction_status: "ACTIVE" # One of: ["ACTIVE", "COMMITTED", "ABORTED", "COMMIT_IN_PROGRESS"],
    #       transaction_start_time: Time.now,
    #       transaction_end_time: Time.now
    #     }
    #   }
    # @return [Types::DescribeTransactionResponse]
    def describe_transaction(params = {}, options = {})
      request = build_request(:describe_transaction, params)
      request.send_request(options)
    end

    # <p>Indicates to the service that the specified transaction is still active and should not be treated as idle and aborted.</p>
    #          <p>Write transactions that remain idle for a long period are automatically aborted unless explicitly extended.</p>
    # @param [Hash, Types::ExtendTransactionRequest] params
    # @option params [String] :transaction_id
    #   <p>The transaction to extend.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     transaction_id: "TransactionIdString"
    #   }
    #   options = {}
    #   response = client.extend_transaction(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::ExtendTransactionResponse]
    def extend_transaction(params = {}, options = {})
      request = build_request(:extend_transaction, params)
      request.send_request(options)
    end

    # <p>Returns a data cells filter.</p>
    # @param [Hash, Types::GetDataCellsFilterRequest] params
    # @option params [String] :table_catalog_id
    #   <p>The ID of the catalog to which the table belongs.</p>
    # @option params [String] :database_name
    #   <p>A database in the Glue Data Catalog.</p>
    # @option params [String] :table_name
    #   <p>A table in the database.</p>
    # @option params [String] :name
    #   <p>The name given by the user to the data filter cell.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     table_catalog_id: "CatalogIdString", # required
    #     database_name: "NameString", # required
    #     table_name: "NameString", # required
    #     name: "NameString", # required
    #   }
    #   options = {}
    #   response = client.get_data_cells_filter(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     data_cells_filter: {
    #       table_catalog_id: "CatalogIdString", # required
    #       database_name: "NameString", # required
    #       table_name: "NameString", # required
    #       name: "NameString", # required
    #       row_filter: {
    #         filter_expression: "PredicateString",
    #         all_rows_wildcard: {
    #         }
    #       },
    #       column_names: ["NameString"],
    #       column_wildcard: {
    #         excluded_column_names: ["NameString"]
    #       },
    #       version_id: "VersionString"
    #     }
    #   }
    # @return [Types::GetDataCellsFilterResponse]
    def get_data_cells_filter(params = {}, options = {})
      request = build_request(:get_data_cells_filter, params)
      request.send_request(options)
    end

    # <p>Returns the identity of the invoking principal.</p>
    # @param [Hash, Types::GetDataLakePrincipalRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_data_lake_principal(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     identity: "IdentityString"
    #   }
    # @return [Types::GetDataLakePrincipalResponse]
    def get_data_lake_principal(params = {}, options = {})
      request = build_request(:get_data_lake_principal, params)
      request.send_request(options)
    end

    # <p>Retrieves the list of the data lake administrators of a Lake Formation-managed data lake. </p>
    # @param [Hash, Types::GetDataLakeSettingsRequest] params
    # @option params [String] :catalog_id
    #   <p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog_id: "CatalogIdString"
    #   }
    #   options = {}
    #   response = client.get_data_lake_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     data_lake_settings: {
    #       data_lake_admins: [
    #         {
    #           data_lake_principal_identifier: "DataLakePrincipalString"
    #         }
    #       ],
    #       read_only_admins: [
    #         {
    #           data_lake_principal_identifier: "DataLakePrincipalString"
    #         }
    #       ],
    #       create_database_default_permissions: [
    #         {
    #           principal: {
    #             data_lake_principal_identifier: "DataLakePrincipalString"
    #           },
    #           permissions: ["ALL" # One of: ["ALL", "SELECT", "ALTER", "DROP", "DELETE", "INSERT", "DESCRIBE", "CREATE_DATABASE", "CREATE_TABLE", "DATA_LOCATION_ACCESS", "CREATE_LF_TAG", "ASSOCIATE", "GRANT_WITH_LF_TAG_EXPRESSION", "CREATE_LF_TAG_EXPRESSION", "CREATE_CATALOG", "SUPER_USER"]]
    #         }
    #       ],
    #       create_table_default_permissions: [
    #         {
    #           principal: {
    #             data_lake_principal_identifier: "DataLakePrincipalString"
    #           },
    #           permissions: ["ALL" # One of: ["ALL", "SELECT", "ALTER", "DROP", "DELETE", "INSERT", "DESCRIBE", "CREATE_DATABASE", "CREATE_TABLE", "DATA_LOCATION_ACCESS", "CREATE_LF_TAG", "ASSOCIATE", "GRANT_WITH_LF_TAG_EXPRESSION", "CREATE_LF_TAG_EXPRESSION", "CREATE_CATALOG", "SUPER_USER"]]
    #         }
    #       ],
    #       parameters: {
    #         "KeyString" => "ParametersMapValue"
    #       },
    #       trusted_resource_owners: ["CatalogIdString"],
    #       allow_external_data_filtering: false,
    #       allow_full_table_external_data_access: false,
    #       external_data_filtering_allow_list: [
    #         {
    #           data_lake_principal_identifier: "DataLakePrincipalString"
    #         }
    #       ],
    #       authorized_session_tag_value_list: ["NameString"]
    #     }
    #   }
    # @return [Types::GetDataLakeSettingsResponse]
    def get_data_lake_settings(params = {}, options = {})
      request = build_request(:get_data_lake_settings, params)
      request.send_request(options)
    end

    # <p>Returns the Lake Formation permissions for a specified table or database resource located
    #       at a path in Amazon S3. <code>GetEffectivePermissionsForPath</code> will not return databases and tables if the catalog is encrypted.</p>
    # @param [Hash, Types::GetEffectivePermissionsForPathRequest] params
    # @option params [String] :catalog_id
    #   <p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource for which you want to get permissions.</p>
    # @option params [String] :next_token
    #   <p>A continuation token, if this is not the first call to retrieve this list.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog_id: "CatalogIdString",
    #     resource_arn: "ResourceArnString", # required
    #     next_token: "Token",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.get_effective_permissions_for_path(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     permissions: [
    #       {
    #         principal: {
    #           data_lake_principal_identifier: "DataLakePrincipalString"
    #         },
    #         resource: {
    #           catalog: {
    #             id: "CatalogIdString"
    #           },
    #           database: {
    #             catalog_id: "CatalogIdString",
    #             name: "NameString", # required
    #           },
    #           table: {
    #             catalog_id: "CatalogIdString",
    #             database_name: "NameString", # required
    #             name: "NameString",
    #             table_wildcard: {
    #             }
    #           },
    #           table_with_columns: {
    #             catalog_id: "CatalogIdString",
    #             database_name: "NameString", # required
    #             name: "NameString", # required
    #             column_names: ["NameString"],
    #             column_wildcard: {
    #               excluded_column_names: ["NameString"]
    #             }
    #           },
    #           data_location: {
    #             catalog_id: "CatalogIdString",
    #             resource_arn: "ResourceArnString", # required
    #           },
    #           data_cells_filter: {
    #             table_catalog_id: "CatalogIdString",
    #             database_name: "NameString",
    #             table_name: "NameString",
    #             name: "NameString"
    #           },
    #           lf_tag: {
    #             catalog_id: "CatalogIdString",
    #             tag_key: "NameString", # required
    #             tag_values: ["LFTagValue"], # required
    #           },
    #           lf_tag_policy: {
    #             catalog_id: "CatalogIdString",
    #             resource_type: "DATABASE" # One of: ["DATABASE", "TABLE"], # required
    #             expression: [
    #               {
    #                 tag_key: "LFTagKey", # required
    #                 tag_values: ["LFTagValue"], # required
    #               }
    #             ],
    #             expression_name: "NameString"
    #           },
    #           lf_tag_expression: {
    #             catalog_id: "CatalogIdString",
    #             name: "NameString", # required
    #           }
    #         },
    #         condition: {
    #           expression: "ExpressionString"
    #         },
    #         permissions: ["ALL" # One of: ["ALL", "SELECT", "ALTER", "DROP", "DELETE", "INSERT", "DESCRIBE", "CREATE_DATABASE", "CREATE_TABLE", "DATA_LOCATION_ACCESS", "CREATE_LF_TAG", "ASSOCIATE", "GRANT_WITH_LF_TAG_EXPRESSION", "CREATE_LF_TAG_EXPRESSION", "CREATE_CATALOG", "SUPER_USER"]],
    #         permissions_with_grant_option: ["ALL" # One of: ["ALL", "SELECT", "ALTER", "DROP", "DELETE", "INSERT", "DESCRIBE", "CREATE_DATABASE", "CREATE_TABLE", "DATA_LOCATION_ACCESS", "CREATE_LF_TAG", "ASSOCIATE", "GRANT_WITH_LF_TAG_EXPRESSION", "CREATE_LF_TAG_EXPRESSION", "CREATE_CATALOG", "SUPER_USER"]],
    #         additional_details: {
    #           resource_share: ["RAMResourceShareArn"]
    #         },
    #         last_updated: Time.now,
    #         last_updated_by: "NameString"
    #       }
    #     ],
    #     next_token: "Token"
    #   }
    # @return [Types::GetEffectivePermissionsForPathResponse]
    def get_effective_permissions_for_path(params = {}, options = {})
      request = build_request(:get_effective_permissions_for_path, params)
      request.send_request(options)
    end

    # <p>Returns an LF-tag definition.</p>
    # @param [Hash, Types::GetLFTagRequest] params
    # @option params [String] :catalog_id
    #   <p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>
    # @option params [String] :tag_key
    #   <p>The key-name for the LF-tag.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog_id: "CatalogIdString",
    #     tag_key: "LFTagKey", # required
    #   }
    #   options = {}
    #   response = client.get_lf_tag(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     catalog_id: "CatalogIdString",
    #     tag_key: "LFTagKey",
    #     tag_values: ["LFTagValue"]
    #   }
    # @return [Types::GetLFTagResponse]
    def get_lf_tag(params = {}, options = {})
      request = build_request(:get_lf_tag, params)
      request.send_request(options)
    end

    # <p>Returns the details about the LF-Tag expression. The caller must be a data lake admin or must have <code>DESCRIBE</code> permission on the LF-Tag expression resource.
    #      </p>
    # @param [Hash, Types::GetLFTagExpressionRequest] params
    # @option params [String] :name
    #   <p>The name for the LF-Tag expression</p>
    # @option params [String] :catalog_id
    #   <p>The identifier for the Data Catalog. By default, the account ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "NameString", # required
    #     catalog_id: "CatalogIdString"
    #   }
    #   options = {}
    #   response = client.get_lf_tag_expression(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "NameString",
    #     description: "DescriptionString",
    #     catalog_id: "CatalogIdString",
    #     expression: [
    #       {
    #         tag_key: "LFTagKey", # required
    #         tag_values: ["LFTagValue"], # required
    #       }
    #     ]
    #   }
    # @return [Types::GetLFTagExpressionResponse]
    def get_lf_tag_expression(params = {}, options = {})
      request = build_request(:get_lf_tag_expression, params)
      request.send_request(options)
    end

    # <p>Returns the state of a query previously submitted. Clients are expected to poll <code>GetQueryState</code> to monitor the current state of the planning before retrieving the work units. A query state is only visible to the principal that made the initial call to <code>StartQueryPlanning</code>.</p>
    # @param [Hash, Types::GetQueryStateRequest] params
    # @option params [String] :query_id
    #   <p>The ID of the plan query operation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     query_id: "GetQueryStateRequestQueryIdString", # required
    #   }
    #   options = {}
    #   response = client.get_query_state(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     error: "ErrorMessageString",
    #     state: "PENDING" # One of: ["PENDING", "WORKUNITS_AVAILABLE", "ERROR", "FINISHED", "EXPIRED"], # required
    #   }
    # @return [Types::GetQueryStateResponse]
    def get_query_state(params = {}, options = {})
      request = build_request(:get_query_state, params)
      request.send_request(options)
    end

    # <p>Retrieves statistics on the planning and execution of a query.</p>
    # @param [Hash, Types::GetQueryStatisticsRequest] params
    # @option params [String] :query_id
    #   <p>The ID of the plan query operation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     query_id: "GetQueryStatisticsRequestQueryIdString", # required
    #   }
    #   options = {}
    #   response = client.get_query_statistics(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     execution_statistics: {
    #       average_execution_time_millis: 1,
    #       data_scanned_bytes: 1,
    #       work_units_executed_count: 1
    #     },
    #     planning_statistics: {
    #       estimated_data_to_scan_bytes: 1,
    #       planning_time_millis: 1,
    #       queue_time_millis: 1,
    #       work_units_generated_count: 1
    #     },
    #     query_submission_time: Time.now
    #   }
    # @return [Types::GetQueryStatisticsResponse]
    def get_query_statistics(params = {}, options = {})
      request = build_request(:get_query_statistics, params)
      request.send_request(options)
    end

    # <p>Returns the LF-tags applied to a resource.</p>
    # @param [Hash, Types::GetResourceLFTagsRequest] params
    # @option params [String] :catalog_id
    #   <p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>
    # @option params [Types::Resource] :resource
    #   <p>The database, table, or column resource for which you want to return LF-tags.</p>
    # @option params [Boolean] :show_assigned_lf_tags
    #   <p>Indicates whether to show the assigned LF-tags.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog_id: "CatalogIdString",
    #     resource: { # required
    #       catalog: {
    #         id: "CatalogIdString"
    #       },
    #       database: {
    #         catalog_id: "CatalogIdString",
    #         name: "NameString", # required
    #       },
    #       table: {
    #         catalog_id: "CatalogIdString",
    #         database_name: "NameString", # required
    #         name: "NameString",
    #         table_wildcard: {
    #         }
    #       },
    #       table_with_columns: {
    #         catalog_id: "CatalogIdString",
    #         database_name: "NameString", # required
    #         name: "NameString", # required
    #         column_names: ["NameString"],
    #         column_wildcard: {
    #           excluded_column_names: ["NameString"]
    #         }
    #       },
    #       data_location: {
    #         catalog_id: "CatalogIdString",
    #         resource_arn: "ResourceArnString", # required
    #       },
    #       data_cells_filter: {
    #         table_catalog_id: "CatalogIdString",
    #         database_name: "NameString",
    #         table_name: "NameString",
    #         name: "NameString"
    #       },
    #       lf_tag: {
    #         catalog_id: "CatalogIdString",
    #         tag_key: "NameString", # required
    #         tag_values: ["LFTagValue"], # required
    #       },
    #       lf_tag_policy: {
    #         catalog_id: "CatalogIdString",
    #         resource_type: "DATABASE" # One of: ["DATABASE", "TABLE"], # required
    #         expression: [
    #           {
    #             tag_key: "LFTagKey", # required
    #             tag_values: ["LFTagValue"], # required
    #           }
    #         ],
    #         expression_name: "NameString"
    #       },
    #       lf_tag_expression: {
    #         catalog_id: "CatalogIdString",
    #         name: "NameString", # required
    #       }
    #     },
    #     show_assigned_lf_tags: false
    #   }
    #   options = {}
    #   response = client.get_resource_lf_tags(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     lf_tag_on_database: [
    #       {
    #         catalog_id: "CatalogIdString",
    #         tag_key: "LFTagKey", # required
    #         tag_values: ["LFTagValue"], # required
    #       }
    #     ],
    #     lf_tags_on_table: [
    #       {
    #         catalog_id: "CatalogIdString",
    #         tag_key: "LFTagKey", # required
    #         tag_values: ["LFTagValue"], # required
    #       }
    #     ],
    #     lf_tags_on_columns: [
    #       {
    #         name: "NameString",
    #         lf_tags: [
    #           {
    #             catalog_id: "CatalogIdString",
    #             tag_key: "LFTagKey", # required
    #             tag_values: ["LFTagValue"], # required
    #           }
    #         ]
    #       }
    #     ]
    #   }
    # @return [Types::GetResourceLFTagsResponse]
    def get_resource_lf_tags(params = {}, options = {})
      request = build_request(:get_resource_lf_tags, params)
      request.send_request(options)
    end

    # <p>Returns the set of Amazon S3 objects that make up the specified governed table. A transaction ID or timestamp can be specified for time-travel queries.</p>
    # @param [Hash, Types::GetTableObjectsRequest] params
    # @option params [String] :catalog_id
    #   <p>The catalog containing the governed table. Defaults to the caller’s account.</p>
    # @option params [String] :database_name
    #   <p>The database containing the governed table.</p>
    # @option params [String] :table_name
    #   <p>The governed table for which to retrieve objects.</p>
    # @option params [String] :transaction_id
    #   <p>The transaction ID at which to read the governed table contents. If this transaction has aborted, an error is returned. If not set, defaults to the most recent committed transaction. Cannot be specified along with <code>QueryAsOfTime</code>.</p>
    # @option params [Time] :query_as_of_time
    #   <p>The time as of when to read the governed table contents. If not set, the most recent transaction commit time is used. Cannot be specified along with <code>TransactionId</code>.</p>
    # @option params [String] :partition_predicate
    #   <p>A predicate to filter the objects returned based on the partition keys defined in the governed table.</p>
    #            <ul>
    #               <li>
    #                  <p>The comparison operators supported are: =, >, <, >=, <=</p>
    #               </li>
    #               <li>
    #                  <p>The logical operators supported are: AND</p>
    #               </li>
    #               <li>
    #                  <p>The data types supported are integer, long, date(yyyy-MM-dd), timestamp(yyyy-MM-dd HH:mm:ssXXX or yyyy-MM-dd HH:mm:ss"), string and decimal.</p>
    #               </li>
    #            </ul>
    # @option params [Integer] :max_results
    #   <p>Specifies how many values to return in a page.</p>
    # @option params [String] :next_token
    #   <p>A continuation token if this is not the first call to retrieve these objects.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog_id: "CatalogIdString",
    #     database_name: "NameString", # required
    #     table_name: "NameString", # required
    #     transaction_id: "TransactionIdString",
    #     query_as_of_time: Time.now,
    #     partition_predicate: "PredicateString",
    #     max_results: 1,
    #     next_token: "TokenString"
    #   }
    #   options = {}
    #   response = client.get_table_objects(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     objects: [
    #       {
    #         partition_values: ["PartitionValueString"],
    #         objects: [
    #           {
    #             uri: "URI",
    #             e_tag: "ETagString",
    #             size: 1
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "TokenString"
    #   }
    # @return [Types::GetTableObjectsResponse]
    def get_table_objects(params = {}, options = {})
      request = build_request(:get_table_objects, params)
      request.send_request(options)
    end

    # <p>This API is identical to <code>GetTemporaryTableCredentials</code> except that this is used when the target Data Catalog resource is of type Partition.  Lake Formation restricts the permission of the vended credentials with the same scope down policy which restricts access to a single Amazon S3 prefix.</p>
    # @param [Hash, Types::GetTemporaryGluePartitionCredentialsRequest] params
    # @option params [String] :table_arn
    #   <p>The ARN of the partitions' table.</p>
    # @option params [Types::PartitionValueList] :partition
    #   <p>A list of partition values identifying a single partition.</p>
    # @option params [Array<String>] :permissions
    #   <p>Filters the request based on the user having been granted a list of specified permissions on the requested resource(s).</p>
    # @option params [Integer] :duration_seconds
    #   <p>The time period, between 900 and 21,600 seconds, for the timeout of the temporary credentials.</p>
    # @option params [Types::AuditContext] :audit_context
    #   <p>A structure representing context to access a resource (column names, query ID, etc).</p>
    # @option params [Array<String>] :supported_permission_types
    #   <p>A list of supported permission types for the partition. Valid values are <code>COLUMN_PERMISSION</code> and <code>CELL_FILTER_PERMISSION</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     table_arn: "ResourceArnString", # required
    #     partition: { # required
    #       values: ["ValueString"], # required
    #     },
    #     permissions: ["ALL" # One of: ["ALL", "SELECT", "ALTER", "DROP", "DELETE", "INSERT", "DESCRIBE", "CREATE_DATABASE", "CREATE_TABLE", "DATA_LOCATION_ACCESS", "CREATE_LF_TAG", "ASSOCIATE", "GRANT_WITH_LF_TAG_EXPRESSION", "CREATE_LF_TAG_EXPRESSION", "CREATE_CATALOG", "SUPER_USER"]],
    #     duration_seconds: 1,
    #     audit_context: {
    #       additional_audit_context: "AuditContextString"
    #     },
    #     supported_permission_types: ["COLUMN_PERMISSION" # One of: ["COLUMN_PERMISSION", "CELL_FILTER_PERMISSION", "NESTED_PERMISSION", "NESTED_CELL_PERMISSION"]]
    #   }
    #   options = {}
    #   response = client.get_temporary_glue_partition_credentials(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     access_key_id: "AccessKeyIdString",
    #     secret_access_key: "SecretAccessKeyString",
    #     session_token: "SessionTokenString",
    #     expiration: Time.now
    #   }
    # @return [Types::GetTemporaryGluePartitionCredentialsResponse]
    def get_temporary_glue_partition_credentials(params = {}, options = {})
      request = build_request(:get_temporary_glue_partition_credentials, params)
      request.send_request(options)
    end

    # <p>Allows a caller in a secure environment to assume a role with permission to access Amazon S3. In order to vend such credentials, Lake Formation assumes the role associated with a registered location, for example an Amazon S3 bucket, with a scope down policy which restricts the access to a single prefix.</p>
    #          <p>To call this API, the role that the service assumes must have <code>lakeformation:GetDataAccess</code> permission on the resource.</p>
    # @param [Hash, Types::GetTemporaryGlueTableCredentialsRequest] params
    # @option params [String] :table_arn
    #   <p>The ARN identifying a table in the Data Catalog for the temporary credentials request.</p>
    # @option params [Array<String>] :permissions
    #   <p>Filters the request based on the user having been granted a list of specified permissions on the requested resource(s).</p>
    # @option params [Integer] :duration_seconds
    #   <p>The time period, between 900 and 21,600 seconds, for the timeout of the temporary credentials.</p>
    # @option params [Types::AuditContext] :audit_context
    #   <p>A structure representing context to access a resource (column names, query ID, etc).</p>
    # @option params [Array<String>] :supported_permission_types
    #   <p>A list of supported permission types for the table. Valid values are <code>COLUMN_PERMISSION</code> and <code>CELL_FILTER_PERMISSION</code>.</p>
    # @option params [String] :s3_path
    #   <p>The Amazon S3 path for the table.</p>
    # @option params [Types::QuerySessionContext] :query_session_context
    #   <p>A structure used as a protocol between query engines and Lake Formation or Glue. Contains both a Lake Formation generated authorization identifier and information from the request's authorization context.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     table_arn: "ResourceArnString", # required
    #     permissions: ["ALL" # One of: ["ALL", "SELECT", "ALTER", "DROP", "DELETE", "INSERT", "DESCRIBE", "CREATE_DATABASE", "CREATE_TABLE", "DATA_LOCATION_ACCESS", "CREATE_LF_TAG", "ASSOCIATE", "GRANT_WITH_LF_TAG_EXPRESSION", "CREATE_LF_TAG_EXPRESSION", "CREATE_CATALOG", "SUPER_USER"]],
    #     duration_seconds: 1,
    #     audit_context: {
    #       additional_audit_context: "AuditContextString"
    #     },
    #     supported_permission_types: ["COLUMN_PERMISSION" # One of: ["COLUMN_PERMISSION", "CELL_FILTER_PERMISSION", "NESTED_PERMISSION", "NESTED_CELL_PERMISSION"]],
    #     s3_path: "PathString",
    #     query_session_context: {
    #       query_id: "HashString",
    #       query_start_time: Time.now,
    #       cluster_id: "NullableString",
    #       query_authorization_id: "HashString",
    #       additional_context: {
    #         "ContextKey" => "ContextValue"
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.get_temporary_glue_table_credentials(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     access_key_id: "AccessKeyIdString",
    #     secret_access_key: "SecretAccessKeyString",
    #     session_token: "SessionTokenString",
    #     expiration: Time.now,
    #     vended_s3_path: ["PathString"]
    #   }
    # @return [Types::GetTemporaryGlueTableCredentialsResponse]
    def get_temporary_glue_table_credentials(params = {}, options = {})
      request = build_request(:get_temporary_glue_table_credentials, params)
      request.send_request(options)
    end

    # <p>Returns the work units resulting from the query. Work units can be executed in any order and in parallel. </p>
    # @param [Hash, Types::GetWorkUnitResultsRequest] params
    # @option params [String] :query_id
    #   <p>The ID of the plan query operation for which to get results.</p>
    # @option params [Integer] :work_unit_id
    #   <p>The work unit ID for which to get results. Value generated by enumerating <code>WorkUnitIdMin</code> to <code>WorkUnitIdMax</code> (inclusive) from the <code>WorkUnitRange</code> in the output of <code>GetWorkUnits</code>.</p>
    # @option params [String] :work_unit_token
    #   <p>A work token used to query the execution service. Token output from <code>GetWorkUnits</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     query_id: "GetWorkUnitResultsRequestQueryIdString", # required
    #     work_unit_id: 1, # required
    #     work_unit_token: "SyntheticGetWorkUnitResultsRequestWorkUnitTokenString", # required
    #   }
    #   options = {}
    #   response = client.get_work_unit_results(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     result_stream: File.read("source_file")
    #   }
    # @return [Types::GetWorkUnitResultsResponse]
    def get_work_unit_results(params = {}, options = {})
      request = build_request(:get_work_unit_results, params)
      request.send_request(options)
    end

    # <p>Retrieves the work units generated by the <code>StartQueryPlanning</code> operation.</p>
    # @param [Hash, Types::GetWorkUnitsRequest] params
    # @option params [String] :next_token
    #   <p>A continuation token, if this is a continuation call.</p>
    # @option params [Integer] :page_size
    #   <p>The size of each page to get in the Amazon Web Services service call. This does not affect the number of items returned in the command's output. Setting a smaller page size results in more calls to the Amazon Web Services service, retrieving fewer items in each call. This can help prevent the Amazon Web Services service calls from timing out.</p>
    # @option params [String] :query_id
    #   <p>The ID of the plan query operation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "Token",
    #     page_size: 1,
    #     query_id: "GetWorkUnitsRequestQueryIdString", # required
    #   }
    #   options = {}
    #   response = client.get_work_units(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "Token",
    #     query_id: "QueryIdString", # required
    #     work_unit_ranges: [ # required
    #       {
    #         work_unit_id_max: 1, # required
    #         work_unit_id_min: 1, # required
    #         work_unit_token: "WorkUnitTokenString", # required
    #       }
    #     ]
    #   }
    # @return [Types::GetWorkUnitsResponse]
    def get_work_units(params = {}, options = {})
      request = build_request(:get_work_units, params)
      request.send_request(options)
    end

    # <p>Grants permissions to the principal to access metadata in the Data Catalog and data organized in underlying data storage such as Amazon S3.</p>
    #          <p>For information about permissions, see <a href="https://docs.aws.amazon.com/lake-formation/latest/dg/security-data-access.html">Security and Access Control to Metadata and Data</a>.</p>
    # @param [Hash, Types::GrantPermissionsRequest] params
    # @option params [String] :catalog_id
    #   <p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>
    # @option params [Types::DataLakePrincipal] :principal
    #   <p>The principal to be granted the permissions on the resource. Supported principals are IAM users or IAM roles, and they are defined by their principal type and their ARN.</p>
    #            <p>Note that if you define a resource with a particular ARN, then later delete, and recreate a resource with that same ARN, the resource maintains the permissions already granted. </p>
    # @option params [Types::Resource] :resource
    #   <p>The resource to which permissions are to be granted. Resources in Lake Formation are the Data Catalog, databases, and tables.</p>
    # @option params [Array<String>] :permissions
    #   <p>The permissions granted to the principal on the resource. Lake Formation defines privileges to grant and revoke access to metadata in the Data Catalog and data organized in underlying data storage such as Amazon S3. Lake Formation requires that each principal be authorized to perform a specific task on Lake Formation resources. </p>
    # @option params [Types::Condition] :condition
    #   <p>A Lake Formation condition, which applies to permissions and opt-ins that contain an expression.</p>
    # @option params [Array<String>] :permissions_with_grant_option
    #   <p>Indicates a list of the granted permissions that the principal may pass to other users. These permissions may only be a subset of the permissions granted in the <code>Privileges</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog_id: "CatalogIdString",
    #     principal: { # required
    #       data_lake_principal_identifier: "DataLakePrincipalString"
    #     },
    #     resource: { # required
    #       catalog: {
    #         id: "CatalogIdString"
    #       },
    #       database: {
    #         catalog_id: "CatalogIdString",
    #         name: "NameString", # required
    #       },
    #       table: {
    #         catalog_id: "CatalogIdString",
    #         database_name: "NameString", # required
    #         name: "NameString",
    #         table_wildcard: {
    #         }
    #       },
    #       table_with_columns: {
    #         catalog_id: "CatalogIdString",
    #         database_name: "NameString", # required
    #         name: "NameString", # required
    #         column_names: ["NameString"],
    #         column_wildcard: {
    #           excluded_column_names: ["NameString"]
    #         }
    #       },
    #       data_location: {
    #         catalog_id: "CatalogIdString",
    #         resource_arn: "ResourceArnString", # required
    #       },
    #       data_cells_filter: {
    #         table_catalog_id: "CatalogIdString",
    #         database_name: "NameString",
    #         table_name: "NameString",
    #         name: "NameString"
    #       },
    #       lf_tag: {
    #         catalog_id: "CatalogIdString",
    #         tag_key: "NameString", # required
    #         tag_values: ["LFTagValue"], # required
    #       },
    #       lf_tag_policy: {
    #         catalog_id: "CatalogIdString",
    #         resource_type: "DATABASE" # One of: ["DATABASE", "TABLE"], # required
    #         expression: [
    #           {
    #             tag_key: "LFTagKey", # required
    #             tag_values: ["LFTagValue"], # required
    #           }
    #         ],
    #         expression_name: "NameString"
    #       },
    #       lf_tag_expression: {
    #         catalog_id: "CatalogIdString",
    #         name: "NameString", # required
    #       }
    #     },
    #     permissions: ["ALL" # One of: ["ALL", "SELECT", "ALTER", "DROP", "DELETE", "INSERT", "DESCRIBE", "CREATE_DATABASE", "CREATE_TABLE", "DATA_LOCATION_ACCESS", "CREATE_LF_TAG", "ASSOCIATE", "GRANT_WITH_LF_TAG_EXPRESSION", "CREATE_LF_TAG_EXPRESSION", "CREATE_CATALOG", "SUPER_USER"]], # required
    #     condition: {
    #       expression: "ExpressionString"
    #     },
    #     permissions_with_grant_option: ["ALL" # One of: ["ALL", "SELECT", "ALTER", "DROP", "DELETE", "INSERT", "DESCRIBE", "CREATE_DATABASE", "CREATE_TABLE", "DATA_LOCATION_ACCESS", "CREATE_LF_TAG", "ASSOCIATE", "GRANT_WITH_LF_TAG_EXPRESSION", "CREATE_LF_TAG_EXPRESSION", "CREATE_CATALOG", "SUPER_USER"]]
    #   }
    #   options = {}
    #   response = client.grant_permissions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::GrantPermissionsResponse]
    def grant_permissions(params = {}, options = {})
      request = build_request(:grant_permissions, params)
      request.send_request(options)
    end

    # <p>Lists all the data cell filters on a table.</p>
    # @param [Hash, Types::ListDataCellsFilterRequest] params
    # @option params [Types::TableResource] :table
    #   <p>A table in the Glue Data Catalog.</p>
    # @option params [String] :next_token
    #   <p>A continuation token, if this is a continuation call.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum size of the response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     table: {
    #       catalog_id: "CatalogIdString",
    #       database_name: "NameString", # required
    #       name: "NameString",
    #       table_wildcard: {
    #       }
    #     },
    #     next_token: "Token",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_data_cells_filter(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     data_cells_filters: [
    #       {
    #         table_catalog_id: "CatalogIdString", # required
    #         database_name: "NameString", # required
    #         table_name: "NameString", # required
    #         name: "NameString", # required
    #         row_filter: {
    #           filter_expression: "PredicateString",
    #           all_rows_wildcard: {
    #           }
    #         },
    #         column_names: ["NameString"],
    #         column_wildcard: {
    #           excluded_column_names: ["NameString"]
    #         },
    #         version_id: "VersionString"
    #       }
    #     ],
    #     next_token: "Token"
    #   }
    # @return [Types::ListDataCellsFilterResponse]
    def list_data_cells_filter(params = {}, options = {})
      request = build_request(:list_data_cells_filter, params)
      request.send_request(options)
    end

    # <p>Returns the LF-Tag expressions in caller’s account filtered based on caller's permissions. Data Lake and read only admins implicitly can see all tag expressions in their account, else caller needs DESCRIBE permissions on tag expression.</p>
    # @param [Hash, Types::ListLFTagExpressionsRequest] params
    # @option params [String] :catalog_id
    #   <p>The identifier for the Data Catalog. By default, the account ID. </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return.</p>
    # @option params [String] :next_token
    #   <p>A continuation token, if this is not the first call to retrieve this list.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog_id: "CatalogIdString",
    #     max_results: 1,
    #     next_token: "Token"
    #   }
    #   options = {}
    #   response = client.list_lf_tag_expressions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     lf_tag_expressions: [
    #       {
    #         name: "NameString",
    #         description: "DescriptionString",
    #         catalog_id: "CatalogIdString",
    #         expression: [
    #           {
    #             tag_key: "LFTagKey", # required
    #             tag_values: ["LFTagValue"], # required
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "Token"
    #   }
    # @return [Types::ListLFTagExpressionsResponse]
    def list_lf_tag_expressions(params = {}, options = {})
      request = build_request(:list_lf_tag_expressions, params)
      request.send_request(options)
    end

    # <p>Lists LF-tags that the requester has permission to view. </p>
    # @param [Hash, Types::ListLFTagsRequest] params
    # @option params [String] :catalog_id
    #   <p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>
    # @option params [String] :resource_share_type
    #   <p>If resource share type is <code>ALL</code>, returns both in-account LF-tags and shared LF-tags that the requester has permission to view. If resource share type is <code>FOREIGN</code>, returns all share LF-tags that the requester can view. If no resource share type is passed, lists LF-tags in the given catalog ID that the requester has permission to view.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return.</p>
    # @option params [String] :next_token
    #   <p>A continuation token, if this is not the first call to retrieve this list.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog_id: "CatalogIdString",
    #     resource_share_type: "FOREIGN" # One of: ["FOREIGN", "ALL"],
    #     max_results: 1,
    #     next_token: "Token"
    #   }
    #   options = {}
    #   response = client.list_lf_tags(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     lf_tags: [
    #       {
    #         catalog_id: "CatalogIdString",
    #         tag_key: "LFTagKey", # required
    #         tag_values: ["LFTagValue"], # required
    #       }
    #     ],
    #     next_token: "Token"
    #   }
    # @return [Types::ListLFTagsResponse]
    def list_lf_tags(params = {}, options = {})
      request = build_request(:list_lf_tags, params)
      request.send_request(options)
    end

    # <p>Retrieve the current list of resources and principals that are opt in to enforce Lake Formation permissions.</p>
    # @param [Hash, Types::ListLakeFormationOptInsRequest] params
    # @option params [Types::DataLakePrincipal] :principal
    #   <p>The Lake Formation principal. Supported principals are IAM users
    #         or IAM roles.</p>
    # @option params [Types::Resource] :resource
    #   <p>A structure for the resource.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return.</p>
    # @option params [String] :next_token
    #   <p>A continuation token, if this is not the first call to retrieve this list.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     principal: {
    #       data_lake_principal_identifier: "DataLakePrincipalString"
    #     },
    #     resource: {
    #       catalog: {
    #         id: "CatalogIdString"
    #       },
    #       database: {
    #         catalog_id: "CatalogIdString",
    #         name: "NameString", # required
    #       },
    #       table: {
    #         catalog_id: "CatalogIdString",
    #         database_name: "NameString", # required
    #         name: "NameString",
    #         table_wildcard: {
    #         }
    #       },
    #       table_with_columns: {
    #         catalog_id: "CatalogIdString",
    #         database_name: "NameString", # required
    #         name: "NameString", # required
    #         column_names: ["NameString"],
    #         column_wildcard: {
    #           excluded_column_names: ["NameString"]
    #         }
    #       },
    #       data_location: {
    #         catalog_id: "CatalogIdString",
    #         resource_arn: "ResourceArnString", # required
    #       },
    #       data_cells_filter: {
    #         table_catalog_id: "CatalogIdString",
    #         database_name: "NameString",
    #         table_name: "NameString",
    #         name: "NameString"
    #       },
    #       lf_tag: {
    #         catalog_id: "CatalogIdString",
    #         tag_key: "NameString", # required
    #         tag_values: ["LFTagValue"], # required
    #       },
    #       lf_tag_policy: {
    #         catalog_id: "CatalogIdString",
    #         resource_type: "DATABASE" # One of: ["DATABASE", "TABLE"], # required
    #         expression: [
    #           {
    #             tag_key: "LFTagKey", # required
    #             tag_values: ["LFTagValue"], # required
    #           }
    #         ],
    #         expression_name: "NameString"
    #       },
    #       lf_tag_expression: {
    #         catalog_id: "CatalogIdString",
    #         name: "NameString", # required
    #       }
    #     },
    #     max_results: 1,
    #     next_token: "Token"
    #   }
    #   options = {}
    #   response = client.list_lake_formation_opt_ins(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     lake_formation_opt_ins_info_list: [
    #       {
    #         resource: {
    #           catalog: {
    #             id: "CatalogIdString"
    #           },
    #           database: {
    #             catalog_id: "CatalogIdString",
    #             name: "NameString", # required
    #           },
    #           table: {
    #             catalog_id: "CatalogIdString",
    #             database_name: "NameString", # required
    #             name: "NameString",
    #             table_wildcard: {
    #             }
    #           },
    #           table_with_columns: {
    #             catalog_id: "CatalogIdString",
    #             database_name: "NameString", # required
    #             name: "NameString", # required
    #             column_names: ["NameString"],
    #             column_wildcard: {
    #               excluded_column_names: ["NameString"]
    #             }
    #           },
    #           data_location: {
    #             catalog_id: "CatalogIdString",
    #             resource_arn: "ResourceArnString", # required
    #           },
    #           data_cells_filter: {
    #             table_catalog_id: "CatalogIdString",
    #             database_name: "NameString",
    #             table_name: "NameString",
    #             name: "NameString"
    #           },
    #           lf_tag: {
    #             catalog_id: "CatalogIdString",
    #             tag_key: "NameString", # required
    #             tag_values: ["LFTagValue"], # required
    #           },
    #           lf_tag_policy: {
    #             catalog_id: "CatalogIdString",
    #             resource_type: "DATABASE" # One of: ["DATABASE", "TABLE"], # required
    #             expression: [
    #               {
    #                 tag_key: "LFTagKey", # required
    #                 tag_values: ["LFTagValue"], # required
    #               }
    #             ],
    #             expression_name: "NameString"
    #           },
    #           lf_tag_expression: {
    #             catalog_id: "CatalogIdString",
    #             name: "NameString", # required
    #           }
    #         },
    #         principal: {
    #           data_lake_principal_identifier: "DataLakePrincipalString"
    #         },
    #         condition: {
    #           expression: "ExpressionString"
    #         },
    #         last_modified: Time.now,
    #         last_updated_by: "NameString"
    #       }
    #     ],
    #     next_token: "Token"
    #   }
    # @return [Types::ListLakeFormationOptInsResponse]
    def list_lake_formation_opt_ins(params = {}, options = {})
      request = build_request(:list_lake_formation_opt_ins, params)
      request.send_request(options)
    end

    # <p>Returns a list of the principal permissions on the resource, filtered by the permissions of the caller. For example, if you are granted an ALTER permission, you are able to see only the principal permissions for ALTER.</p>
    #          <p>This operation returns only those permissions that have been explicitly granted.</p>
    #          <p>For information about permissions, see <a href="https://docs.aws.amazon.com/lake-formation/latest/dg/security-data-access.html">Security and Access Control to Metadata and Data</a>.</p>
    # @param [Hash, Types::ListPermissionsRequest] params
    # @option params [String] :catalog_id
    #   <p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>
    # @option params [Types::DataLakePrincipal] :principal
    #   <p>Specifies a principal to filter the permissions returned.</p>
    # @option params [String] :resource_type
    #   <p>Specifies a resource type to filter the permissions returned.</p>
    # @option params [Types::Resource] :resource
    #   <p>A resource where you will get a list of the principal permissions.</p>
    #            <p>This operation does not support getting privileges on a table with columns. Instead, call this operation on the table, and the operation returns the table and the table w columns.</p>
    # @option params [String] :next_token
    #   <p>A continuation token, if this is not the first call to retrieve this list.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return.</p>
    # @option params [String] :include_related
    #   <p>Indicates that related permissions should be included in the results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog_id: "CatalogIdString",
    #     principal: {
    #       data_lake_principal_identifier: "DataLakePrincipalString"
    #     },
    #     resource_type: "CATALOG" # One of: ["CATALOG", "DATABASE", "TABLE", "DATA_LOCATION", "LF_TAG", "LF_TAG_POLICY", "LF_TAG_POLICY_DATABASE", "LF_TAG_POLICY_TABLE", "LF_NAMED_TAG_EXPRESSION"],
    #     resource: {
    #       catalog: {
    #         id: "CatalogIdString"
    #       },
    #       database: {
    #         catalog_id: "CatalogIdString",
    #         name: "NameString", # required
    #       },
    #       table: {
    #         catalog_id: "CatalogIdString",
    #         database_name: "NameString", # required
    #         name: "NameString",
    #         table_wildcard: {
    #         }
    #       },
    #       table_with_columns: {
    #         catalog_id: "CatalogIdString",
    #         database_name: "NameString", # required
    #         name: "NameString", # required
    #         column_names: ["NameString"],
    #         column_wildcard: {
    #           excluded_column_names: ["NameString"]
    #         }
    #       },
    #       data_location: {
    #         catalog_id: "CatalogIdString",
    #         resource_arn: "ResourceArnString", # required
    #       },
    #       data_cells_filter: {
    #         table_catalog_id: "CatalogIdString",
    #         database_name: "NameString",
    #         table_name: "NameString",
    #         name: "NameString"
    #       },
    #       lf_tag: {
    #         catalog_id: "CatalogIdString",
    #         tag_key: "NameString", # required
    #         tag_values: ["LFTagValue"], # required
    #       },
    #       lf_tag_policy: {
    #         catalog_id: "CatalogIdString",
    #         resource_type: "DATABASE" # One of: ["DATABASE", "TABLE"], # required
    #         expression: [
    #           {
    #             tag_key: "LFTagKey", # required
    #             tag_values: ["LFTagValue"], # required
    #           }
    #         ],
    #         expression_name: "NameString"
    #       },
    #       lf_tag_expression: {
    #         catalog_id: "CatalogIdString",
    #         name: "NameString", # required
    #       }
    #     },
    #     next_token: "Token",
    #     max_results: 1,
    #     include_related: "TrueFalseString"
    #   }
    #   options = {}
    #   response = client.list_permissions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     principal_resource_permissions: [
    #       {
    #         principal: {
    #           data_lake_principal_identifier: "DataLakePrincipalString"
    #         },
    #         resource: {
    #           catalog: {
    #             id: "CatalogIdString"
    #           },
    #           database: {
    #             catalog_id: "CatalogIdString",
    #             name: "NameString", # required
    #           },
    #           table: {
    #             catalog_id: "CatalogIdString",
    #             database_name: "NameString", # required
    #             name: "NameString",
    #             table_wildcard: {
    #             }
    #           },
    #           table_with_columns: {
    #             catalog_id: "CatalogIdString",
    #             database_name: "NameString", # required
    #             name: "NameString", # required
    #             column_names: ["NameString"],
    #             column_wildcard: {
    #               excluded_column_names: ["NameString"]
    #             }
    #           },
    #           data_location: {
    #             catalog_id: "CatalogIdString",
    #             resource_arn: "ResourceArnString", # required
    #           },
    #           data_cells_filter: {
    #             table_catalog_id: "CatalogIdString",
    #             database_name: "NameString",
    #             table_name: "NameString",
    #             name: "NameString"
    #           },
    #           lf_tag: {
    #             catalog_id: "CatalogIdString",
    #             tag_key: "NameString", # required
    #             tag_values: ["LFTagValue"], # required
    #           },
    #           lf_tag_policy: {
    #             catalog_id: "CatalogIdString",
    #             resource_type: "DATABASE" # One of: ["DATABASE", "TABLE"], # required
    #             expression: [
    #               {
    #                 tag_key: "LFTagKey", # required
    #                 tag_values: ["LFTagValue"], # required
    #               }
    #             ],
    #             expression_name: "NameString"
    #           },
    #           lf_tag_expression: {
    #             catalog_id: "CatalogIdString",
    #             name: "NameString", # required
    #           }
    #         },
    #         condition: {
    #           expression: "ExpressionString"
    #         },
    #         permissions: ["ALL" # One of: ["ALL", "SELECT", "ALTER", "DROP", "DELETE", "INSERT", "DESCRIBE", "CREATE_DATABASE", "CREATE_TABLE", "DATA_LOCATION_ACCESS", "CREATE_LF_TAG", "ASSOCIATE", "GRANT_WITH_LF_TAG_EXPRESSION", "CREATE_LF_TAG_EXPRESSION", "CREATE_CATALOG", "SUPER_USER"]],
    #         permissions_with_grant_option: ["ALL" # One of: ["ALL", "SELECT", "ALTER", "DROP", "DELETE", "INSERT", "DESCRIBE", "CREATE_DATABASE", "CREATE_TABLE", "DATA_LOCATION_ACCESS", "CREATE_LF_TAG", "ASSOCIATE", "GRANT_WITH_LF_TAG_EXPRESSION", "CREATE_LF_TAG_EXPRESSION", "CREATE_CATALOG", "SUPER_USER"]],
    #         additional_details: {
    #           resource_share: ["RAMResourceShareArn"]
    #         },
    #         last_updated: Time.now,
    #         last_updated_by: "NameString"
    #       }
    #     ],
    #     next_token: "Token"
    #   }
    # @return [Types::ListPermissionsResponse]
    def list_permissions(params = {}, options = {})
      request = build_request(:list_permissions, params)
      request.send_request(options)
    end

    # <p>Lists the resources registered to be managed by the Data Catalog.</p>
    # @param [Hash, Types::ListResourcesRequest] params
    # @option params [Array<Types::FilterCondition>] :filter_condition_list
    #   <p>Any applicable row-level and/or column-level filtering conditions for the resources.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of resource results.</p>
    # @option params [String] :next_token
    #   <p>A continuation token, if this is not the first call to retrieve these resources.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filter_condition_list: [
    #       {
    #         field: "RESOURCE_ARN" # One of: ["RESOURCE_ARN", "ROLE_ARN", "LAST_MODIFIED"],
    #         comparison_operator: "EQ" # One of: ["EQ", "NE", "LE", "LT", "GE", "GT", "CONTAINS", "NOT_CONTAINS", "BEGINS_WITH", "IN", "BETWEEN"],
    #         string_value_list: ["StringValue"]
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: "Token"
    #   }
    #   options = {}
    #   response = client.list_resources(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_info_list: [
    #       {
    #         resource_arn: "ResourceArnString",
    #         role_arn: "IAMRoleArn",
    #         last_modified: Time.now,
    #         with_federation: false,
    #         hybrid_access_enabled: false,
    #         with_privileged_access: false
    #       }
    #     ],
    #     next_token: "Token"
    #   }
    # @return [Types::ListResourcesResponse]
    def list_resources(params = {}, options = {})
      request = build_request(:list_resources, params)
      request.send_request(options)
    end

    # <p>Returns the configuration of all storage optimizers associated with a specified table.</p>
    # @param [Hash, Types::ListTableStorageOptimizersRequest] params
    # @option params [String] :catalog_id
    #   <p>The Catalog ID of the table.</p>
    # @option params [String] :database_name
    #   <p>Name of the database where the table is present.</p>
    # @option params [String] :table_name
    #   <p>Name of the table.</p>
    # @option params [String] :storage_optimizer_type
    #   <p>The specific type of storage optimizers to list. The supported value is <code>compaction</code>.</p>
    # @option params [Integer] :max_results
    #   <p>The number of storage optimizers to return on each call.</p>
    # @option params [String] :next_token
    #   <p>A continuation token, if this is a continuation call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog_id: "CatalogIdString",
    #     database_name: "NameString", # required
    #     table_name: "NameString", # required
    #     storage_optimizer_type: "COMPACTION" # One of: ["COMPACTION", "GARBAGE_COLLECTION", "ALL"],
    #     max_results: 1,
    #     next_token: "Token"
    #   }
    #   options = {}
    #   response = client.list_table_storage_optimizers(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     storage_optimizer_list: [
    #       {
    #         storage_optimizer_type: "COMPACTION" # One of: ["COMPACTION", "GARBAGE_COLLECTION", "ALL"],
    #         config: {
    #           "StorageOptimizerConfigKey" => "StorageOptimizerConfigValue"
    #         },
    #         error_message: "MessageString",
    #         warnings: "MessageString",
    #         last_run_details: "MessageString"
    #       }
    #     ],
    #     next_token: "Token"
    #   }
    # @return [Types::ListTableStorageOptimizersResponse]
    def list_table_storage_optimizers(params = {}, options = {})
      request = build_request(:list_table_storage_optimizers, params)
      request.send_request(options)
    end

    # <p>Returns metadata about transactions and their status. To prevent the response from growing indefinitely, only uncommitted transactions and those available for time-travel queries are returned.</p>
    #          <p>This operation can help you identify uncommitted transactions or to get information about transactions.</p>
    # @param [Hash, Types::ListTransactionsRequest] params
    # @option params [String] :catalog_id
    #   <p>The catalog for which to list transactions. Defaults to the account ID of the caller.</p>
    # @option params [String] :status_filter
    #   <p> A filter indicating the status of transactions to return. Options are ALL | COMPLETED | COMMITTED | ABORTED | ACTIVE. The default is <code>ALL</code>.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of transactions to return in a single call.</p>
    # @option params [String] :next_token
    #   <p>A continuation token if this is not the first call to retrieve transactions.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog_id: "CatalogIdString",
    #     status_filter: "ALL" # One of: ["ALL", "COMPLETED", "ACTIVE", "COMMITTED", "ABORTED"],
    #     max_results: 1,
    #     next_token: "TokenString"
    #   }
    #   options = {}
    #   response = client.list_transactions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     transactions: [
    #       {
    #         transaction_id: "TransactionIdString",
    #         transaction_status: "ACTIVE" # One of: ["ACTIVE", "COMMITTED", "ABORTED", "COMMIT_IN_PROGRESS"],
    #         transaction_start_time: Time.now,
    #         transaction_end_time: Time.now
    #       }
    #     ],
    #     next_token: "TokenString"
    #   }
    # @return [Types::ListTransactionsResponse]
    def list_transactions(params = {}, options = {})
      request = build_request(:list_transactions, params)
      request.send_request(options)
    end

    # <p>Sets the list of data lake administrators who have admin privileges on all resources managed by Lake Formation. For more information on admin privileges, see <a href="https://docs.aws.amazon.com/lake-formation/latest/dg/lake-formation-permissions.html">Granting Lake Formation Permissions</a>.</p>
    #          <p>This API replaces the current list of data lake admins with the new list being passed. To add an admin, fetch the current list and add the new admin to that list and pass that list in this API.</p>
    # @param [Hash, Types::PutDataLakeSettingsRequest] params
    # @option params [String] :catalog_id
    #   <p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>
    # @option params [Types::DataLakeSettings] :data_lake_settings
    #   <p>A structure representing a list of Lake Formation principals designated as data lake administrators.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog_id: "CatalogIdString",
    #     data_lake_settings: { # required
    #       data_lake_admins: [
    #         {
    #           data_lake_principal_identifier: "DataLakePrincipalString"
    #         }
    #       ],
    #       read_only_admins: [
    #         {
    #           data_lake_principal_identifier: "DataLakePrincipalString"
    #         }
    #       ],
    #       create_database_default_permissions: [
    #         {
    #           principal: {
    #             data_lake_principal_identifier: "DataLakePrincipalString"
    #           },
    #           permissions: ["ALL" # One of: ["ALL", "SELECT", "ALTER", "DROP", "DELETE", "INSERT", "DESCRIBE", "CREATE_DATABASE", "CREATE_TABLE", "DATA_LOCATION_ACCESS", "CREATE_LF_TAG", "ASSOCIATE", "GRANT_WITH_LF_TAG_EXPRESSION", "CREATE_LF_TAG_EXPRESSION", "CREATE_CATALOG", "SUPER_USER"]]
    #         }
    #       ],
    #       create_table_default_permissions: [
    #         {
    #           principal: {
    #             data_lake_principal_identifier: "DataLakePrincipalString"
    #           },
    #           permissions: ["ALL" # One of: ["ALL", "SELECT", "ALTER", "DROP", "DELETE", "INSERT", "DESCRIBE", "CREATE_DATABASE", "CREATE_TABLE", "DATA_LOCATION_ACCESS", "CREATE_LF_TAG", "ASSOCIATE", "GRANT_WITH_LF_TAG_EXPRESSION", "CREATE_LF_TAG_EXPRESSION", "CREATE_CATALOG", "SUPER_USER"]]
    #         }
    #       ],
    #       parameters: {
    #         "KeyString" => "ParametersMapValue"
    #       },
    #       trusted_resource_owners: ["CatalogIdString"],
    #       allow_external_data_filtering: false,
    #       allow_full_table_external_data_access: false,
    #       external_data_filtering_allow_list: [
    #         {
    #           data_lake_principal_identifier: "DataLakePrincipalString"
    #         }
    #       ],
    #       authorized_session_tag_value_list: ["NameString"]
    #     }
    #   }
    #   options = {}
    #   response = client.put_data_lake_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::PutDataLakeSettingsResponse]
    def put_data_lake_settings(params = {}, options = {})
      request = build_request(:put_data_lake_settings, params)
      request.send_request(options)
    end

    # <p>Registers the resource as managed by the Data Catalog.</p>
    #          <p>To add or update data, Lake Formation needs read/write access to the chosen data location. Choose a role that you know has permission to do this, or choose the AWSServiceRoleForLakeFormationDataAccess service-linked role. When you register the first Amazon S3 path, the service-linked role and a new inline policy are created on your behalf. Lake Formation adds the first path to the inline policy and attaches it to the service-linked role. When you register subsequent paths, Lake Formation adds the path to the existing policy.</p>
    #          <p>The following request registers a new location and gives Lake Formation permission to use the service-linked role to access that location.</p>
    #          <p>
    #             <code>ResourceArn = arn:aws:s3:::my-bucket/
    # UseServiceLinkedRole = true</code>
    #          </p>
    #          <p>If <code>UseServiceLinkedRole</code> is not set to true, you must provide or set the <code>RoleArn</code>:</p>
    #          <p>
    #             <code>arn:aws:iam::12345:role/my-data-access-role</code>
    #          </p>
    # @param [Hash, Types::RegisterResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource that you want to register.</p>
    # @option params [Boolean] :use_service_linked_role
    #   <p>Designates an Identity and Access Management (IAM) service-linked role by registering this role with the Data Catalog. A service-linked role is a unique type of IAM role that is linked directly to Lake Formation.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/lake-formation/latest/dg/service-linked-roles.html">Using Service-Linked Roles for Lake Formation</a>.</p>
    # @option params [String] :role_arn
    #   <p>The identifier for the role that registers the resource.</p>
    # @option params [Boolean] :with_federation
    #   <p>Whether or not the resource is a federated resource.</p>
    # @option params [Boolean] :hybrid_access_enabled
    #   <p>
    #       Specifies whether the data access of tables pointing to the location can be managed by both Lake Formation permissions as well as Amazon S3 bucket policies.
    #     </p>
    # @option params [Boolean] :with_privileged_access
    #   <p>Grants the calling principal the permissions to perform all supported Lake Formation operations on the registered data location. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArnString", # required
    #     use_service_linked_role: false,
    #     role_arn: "IAMRoleArn",
    #     with_federation: false,
    #     hybrid_access_enabled: false,
    #     with_privileged_access: false
    #   }
    #   options = {}
    #   response = client.register_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::RegisterResourceResponse]
    def register_resource(params = {}, options = {})
      request = build_request(:register_resource, params)
      request.send_request(options)
    end

    # <p>Removes an LF-tag from the resource. Only database, table, or tableWithColumns resource are allowed. To tag columns, use the column inclusion list in <code>tableWithColumns</code> to specify column input.</p>
    # @param [Hash, Types::RemoveLFTagsFromResourceRequest] params
    # @option params [String] :catalog_id
    #   <p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>
    # @option params [Types::Resource] :resource
    #   <p>The database, table, or column resource where you want to remove an LF-tag.</p>
    # @option params [Array<Types::LFTagPair>] :lf_tags
    #   <p>The LF-tags to be removed from the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog_id: "CatalogIdString",
    #     resource: { # required
    #       catalog: {
    #         id: "CatalogIdString"
    #       },
    #       database: {
    #         catalog_id: "CatalogIdString",
    #         name: "NameString", # required
    #       },
    #       table: {
    #         catalog_id: "CatalogIdString",
    #         database_name: "NameString", # required
    #         name: "NameString",
    #         table_wildcard: {
    #         }
    #       },
    #       table_with_columns: {
    #         catalog_id: "CatalogIdString",
    #         database_name: "NameString", # required
    #         name: "NameString", # required
    #         column_names: ["NameString"],
    #         column_wildcard: {
    #           excluded_column_names: ["NameString"]
    #         }
    #       },
    #       data_location: {
    #         catalog_id: "CatalogIdString",
    #         resource_arn: "ResourceArnString", # required
    #       },
    #       data_cells_filter: {
    #         table_catalog_id: "CatalogIdString",
    #         database_name: "NameString",
    #         table_name: "NameString",
    #         name: "NameString"
    #       },
    #       lf_tag: {
    #         catalog_id: "CatalogIdString",
    #         tag_key: "NameString", # required
    #         tag_values: ["LFTagValue"], # required
    #       },
    #       lf_tag_policy: {
    #         catalog_id: "CatalogIdString",
    #         resource_type: "DATABASE" # One of: ["DATABASE", "TABLE"], # required
    #         expression: [
    #           {
    #             tag_key: "LFTagKey", # required
    #             tag_values: ["LFTagValue"], # required
    #           }
    #         ],
    #         expression_name: "NameString"
    #       },
    #       lf_tag_expression: {
    #         catalog_id: "CatalogIdString",
    #         name: "NameString", # required
    #       }
    #     },
    #     lf_tags: [ # required
    #       {
    #         catalog_id: "CatalogIdString",
    #         tag_key: "LFTagKey", # required
    #         tag_values: ["LFTagValue"], # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.remove_lf_tags_from_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     failures: [
    #       {
    #         lf_tag: {
    #           catalog_id: "CatalogIdString",
    #           tag_key: "LFTagKey", # required
    #           tag_values: ["LFTagValue"], # required
    #         },
    #         error: {
    #           error_code: "NameString",
    #           error_message: "DescriptionString"
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::RemoveLFTagsFromResourceResponse]
    def remove_lf_tags_from_resource(params = {}, options = {})
      request = build_request(:remove_lf_tags_from_resource, params)
      request.send_request(options)
    end

    # <p>Revokes permissions to the principal to access metadata in the Data Catalog and data organized in underlying data storage such as Amazon S3.</p>
    # @param [Hash, Types::RevokePermissionsRequest] params
    # @option params [String] :catalog_id
    #   <p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>
    # @option params [Types::DataLakePrincipal] :principal
    #   <p>The principal to be revoked permissions on the resource.</p>
    # @option params [Types::Resource] :resource
    #   <p>The resource to which permissions are to be revoked.</p>
    # @option params [Array<String>] :permissions
    #   <p>The permissions revoked to the principal on the resource. For information about permissions, see <a href="https://docs.aws.amazon.com/lake-formation/latest/dg/security-data-access.html">Security
    #         and Access Control to Metadata and Data</a>.</p>
    # @option params [Types::Condition] :condition
    #   <p>A Lake Formation condition, which applies to permissions and opt-ins that contain an expression.</p>
    # @option params [Array<String>] :permissions_with_grant_option
    #   <p>Indicates a list of permissions for which to revoke the grant option allowing the principal to pass permissions to other principals.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog_id: "CatalogIdString",
    #     principal: { # required
    #       data_lake_principal_identifier: "DataLakePrincipalString"
    #     },
    #     resource: { # required
    #       catalog: {
    #         id: "CatalogIdString"
    #       },
    #       database: {
    #         catalog_id: "CatalogIdString",
    #         name: "NameString", # required
    #       },
    #       table: {
    #         catalog_id: "CatalogIdString",
    #         database_name: "NameString", # required
    #         name: "NameString",
    #         table_wildcard: {
    #         }
    #       },
    #       table_with_columns: {
    #         catalog_id: "CatalogIdString",
    #         database_name: "NameString", # required
    #         name: "NameString", # required
    #         column_names: ["NameString"],
    #         column_wildcard: {
    #           excluded_column_names: ["NameString"]
    #         }
    #       },
    #       data_location: {
    #         catalog_id: "CatalogIdString",
    #         resource_arn: "ResourceArnString", # required
    #       },
    #       data_cells_filter: {
    #         table_catalog_id: "CatalogIdString",
    #         database_name: "NameString",
    #         table_name: "NameString",
    #         name: "NameString"
    #       },
    #       lf_tag: {
    #         catalog_id: "CatalogIdString",
    #         tag_key: "NameString", # required
    #         tag_values: ["LFTagValue"], # required
    #       },
    #       lf_tag_policy: {
    #         catalog_id: "CatalogIdString",
    #         resource_type: "DATABASE" # One of: ["DATABASE", "TABLE"], # required
    #         expression: [
    #           {
    #             tag_key: "LFTagKey", # required
    #             tag_values: ["LFTagValue"], # required
    #           }
    #         ],
    #         expression_name: "NameString"
    #       },
    #       lf_tag_expression: {
    #         catalog_id: "CatalogIdString",
    #         name: "NameString", # required
    #       }
    #     },
    #     permissions: ["ALL" # One of: ["ALL", "SELECT", "ALTER", "DROP", "DELETE", "INSERT", "DESCRIBE", "CREATE_DATABASE", "CREATE_TABLE", "DATA_LOCATION_ACCESS", "CREATE_LF_TAG", "ASSOCIATE", "GRANT_WITH_LF_TAG_EXPRESSION", "CREATE_LF_TAG_EXPRESSION", "CREATE_CATALOG", "SUPER_USER"]], # required
    #     condition: {
    #       expression: "ExpressionString"
    #     },
    #     permissions_with_grant_option: ["ALL" # One of: ["ALL", "SELECT", "ALTER", "DROP", "DELETE", "INSERT", "DESCRIBE", "CREATE_DATABASE", "CREATE_TABLE", "DATA_LOCATION_ACCESS", "CREATE_LF_TAG", "ASSOCIATE", "GRANT_WITH_LF_TAG_EXPRESSION", "CREATE_LF_TAG_EXPRESSION", "CREATE_CATALOG", "SUPER_USER"]]
    #   }
    #   options = {}
    #   response = client.revoke_permissions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::RevokePermissionsResponse]
    def revoke_permissions(params = {}, options = {})
      request = build_request(:revoke_permissions, params)
      request.send_request(options)
    end

    # <p>This operation allows a search on <code>DATABASE</code> resources by <code>TagCondition</code>. This operation is used by admins who want to grant user permissions on certain <code>TagConditions</code>. Before making a grant, the admin can use <code>SearchDatabasesByTags</code> to find all resources where the given <code>TagConditions</code> are valid to verify whether the returned resources can be shared.</p>
    # @param [Hash, Types::SearchDatabasesByLFTagsRequest] params
    # @option params [String] :next_token
    #   <p>A continuation token, if this is not the first call to retrieve this list.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return.</p>
    # @option params [String] :catalog_id
    #   <p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>
    # @option params [Array<Types::LFTag>] :expression
    #   <p>A list of conditions (<code>LFTag</code> structures) to search for in database resources.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "Token",
    #     max_results: 1,
    #     catalog_id: "CatalogIdString",
    #     expression: [ # required
    #       {
    #         tag_key: "LFTagKey", # required
    #         tag_values: ["LFTagValue"], # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.search_databases_by_lf_tags(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "Token",
    #     database_list: [
    #       {
    #         database: {
    #           catalog_id: "CatalogIdString",
    #           name: "NameString", # required
    #         },
    #         lf_tags: [
    #           {
    #             catalog_id: "CatalogIdString",
    #             tag_key: "LFTagKey", # required
    #             tag_values: ["LFTagValue"], # required
    #           }
    #         ]
    #       }
    #     ]
    #   }
    # @return [Types::SearchDatabasesByLFTagsResponse]
    def search_databases_by_lf_tags(params = {}, options = {})
      request = build_request(:search_databases_by_lf_tags, params)
      request.send_request(options)
    end

    # <p>This operation allows a search on <code>TABLE</code> resources by <code>LFTag</code>s. This will be used by admins who want to grant user permissions on certain LF-tags. Before making a grant, the admin can use <code>SearchTablesByLFTags</code> to find all resources where the given <code>LFTag</code>s are valid to verify whether the returned resources can be shared.</p>
    # @param [Hash, Types::SearchTablesByLFTagsRequest] params
    # @option params [String] :next_token
    #   <p>A continuation token, if this is not the first call to retrieve this list.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return.</p>
    # @option params [String] :catalog_id
    #   <p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>
    # @option params [Array<Types::LFTag>] :expression
    #   <p>A list of conditions (<code>LFTag</code> structures) to search for in table resources.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "Token",
    #     max_results: 1,
    #     catalog_id: "CatalogIdString",
    #     expression: [ # required
    #       {
    #         tag_key: "LFTagKey", # required
    #         tag_values: ["LFTagValue"], # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.search_tables_by_lf_tags(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "Token",
    #     table_list: [
    #       {
    #         table: {
    #           catalog_id: "CatalogIdString",
    #           database_name: "NameString", # required
    #           name: "NameString",
    #           table_wildcard: {
    #           }
    #         },
    #         lf_tag_on_database: [
    #           {
    #             catalog_id: "CatalogIdString",
    #             tag_key: "LFTagKey", # required
    #             tag_values: ["LFTagValue"], # required
    #           }
    #         ],
    #         lf_tags_on_table: [
    #           {
    #             catalog_id: "CatalogIdString",
    #             tag_key: "LFTagKey", # required
    #             tag_values: ["LFTagValue"], # required
    #           }
    #         ],
    #         lf_tags_on_columns: [
    #           {
    #             name: "NameString",
    #             lf_tags: [
    #               {
    #                 catalog_id: "CatalogIdString",
    #                 tag_key: "LFTagKey", # required
    #                 tag_values: ["LFTagValue"], # required
    #               }
    #             ]
    #           }
    #         ]
    #       }
    #     ]
    #   }
    # @return [Types::SearchTablesByLFTagsResponse]
    def search_tables_by_lf_tags(params = {}, options = {})
      request = build_request(:search_tables_by_lf_tags, params)
      request.send_request(options)
    end

    # <p>Submits a request to process a query statement.</p>
    #          <p>This operation generates work units that can be retrieved with the <code>GetWorkUnits</code> operation as soon as the query state is WORKUNITS_AVAILABLE or FINISHED.</p>
    # @param [Hash, Types::StartQueryPlanningRequest] params
    # @option params [Types::QueryPlanningContext] :query_planning_context
    #   <p>A structure containing information about the query plan.</p>
    # @option params [String] :query_string
    #   <p>A PartiQL query statement used as an input to the planner service.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     query_planning_context: { # required
    #       catalog_id: "CatalogIdString",
    #       database_name: "QueryPlanningContextDatabaseNameString", # required
    #       query_as_of_time: Time.now,
    #       query_parameters: {
    #         "String" => "String"
    #       },
    #       transaction_id: "TransactionIdString"
    #     },
    #     query_string: "SyntheticStartQueryPlanningRequestQueryString", # required
    #   }
    #   options = {}
    #   response = client.start_query_planning(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     query_id: "QueryIdString", # required
    #   }
    # @return [Types::StartQueryPlanningResponse]
    def start_query_planning(params = {}, options = {})
      request = build_request(:start_query_planning, params)
      request.send_request(options)
    end

    # <p>Starts a new transaction and returns its transaction ID. Transaction IDs are opaque objects that you can use to identify a transaction.</p>
    # @param [Hash, Types::StartTransactionRequest] params
    # @option params [String] :transaction_type
    #   <p>Indicates whether this transaction should be read only or read and write. Writes made using a read-only transaction ID will be rejected. Read-only transactions do not need to be committed. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     transaction_type: "READ_AND_WRITE" # One of: ["READ_AND_WRITE", "READ_ONLY"]
    #   }
    #   options = {}
    #   response = client.start_transaction(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     transaction_id: "TransactionIdString"
    #   }
    # @return [Types::StartTransactionResponse]
    def start_transaction(params = {}, options = {})
      request = build_request(:start_transaction, params)
      request.send_request(options)
    end

    # <p>Updates a data cell filter.</p>
    # @param [Hash, Types::UpdateDataCellsFilterRequest] params
    # @option params [Types::DataCellsFilter] :table_data
    #   <p>A <code>DataCellsFilter</code> structure containing information about the data cells filter.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     table_data: { # required
    #       table_catalog_id: "CatalogIdString", # required
    #       database_name: "NameString", # required
    #       table_name: "NameString", # required
    #       name: "NameString", # required
    #       row_filter: {
    #         filter_expression: "PredicateString",
    #         all_rows_wildcard: {
    #         }
    #       },
    #       column_names: ["NameString"],
    #       column_wildcard: {
    #         excluded_column_names: ["NameString"]
    #       },
    #       version_id: "VersionString"
    #     }
    #   }
    #   options = {}
    #   response = client.update_data_cells_filter(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateDataCellsFilterResponse]
    def update_data_cells_filter(params = {}, options = {})
      request = build_request(:update_data_cells_filter, params)
      request.send_request(options)
    end

    # <p>Updates the list of possible values for the specified LF-tag key. If the LF-tag does not exist, the operation throws an EntityNotFoundException. The values in the delete key values will be deleted from list of possible values. If any value in the delete key values is attached to a resource, then API errors out with a 400 Exception - "Update not allowed". Untag the attribute before deleting the LF-tag key's value. </p>
    # @param [Hash, Types::UpdateLFTagRequest] params
    # @option params [String] :catalog_id
    #   <p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>
    # @option params [String] :tag_key
    #   <p>The key-name for the LF-tag for which to add or delete values.</p>
    # @option params [Array<String>] :tag_values_to_delete
    #   <p>A list of LF-tag values to delete from the LF-tag.</p>
    # @option params [Array<String>] :tag_values_to_add
    #   <p>A list of LF-tag values to add from the LF-tag.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog_id: "CatalogIdString",
    #     tag_key: "LFTagKey", # required
    #     tag_values_to_delete: ["LFTagValue"],
    #     tag_values_to_add: ["LFTagValue"]
    #   }
    #   options = {}
    #   response = client.update_lf_tag(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateLFTagResponse]
    def update_lf_tag(params = {}, options = {})
      request = build_request(:update_lf_tag, params)
      request.send_request(options)
    end

    # <p>Updates the name of the LF-Tag expression to the new description and expression body provided.
    #       Updating a LF-Tag expression immediately changes the permission boundaries of all existing <code>LFTagPolicy</code> permission grants that reference the given LF-Tag expression.</p>
    # @param [Hash, Types::UpdateLFTagExpressionRequest] params
    # @option params [String] :name
    #   <p>The name for the LF-Tag expression.</p>
    # @option params [String] :description
    #   <p>The description with information about the saved LF-Tag expression.</p>
    # @option params [String] :catalog_id
    #   <p>The identifier for the Data Catalog. By default, the account ID. </p>
    # @option params [Array<Types::LFTag>] :expression
    #   <p>The LF-Tag expression body composed of one more LF-Tag key-value pairs.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "NameString", # required
    #     description: "DescriptionString",
    #     catalog_id: "CatalogIdString",
    #     expression: [ # required
    #       {
    #         tag_key: "LFTagKey", # required
    #         tag_values: ["LFTagValue"], # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_lf_tag_expression(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateLFTagExpressionResponse]
    def update_lf_tag_expression(params = {}, options = {})
      request = build_request(:update_lf_tag_expression, params)
      request.send_request(options)
    end

    # <p>Updates the IAM Identity Center connection parameters.</p>
    # @param [Hash, Types::UpdateLakeFormationIdentityCenterConfigurationRequest] params
    # @option params [String] :catalog_id
    #   <p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the
    #            persistent metadata store. It contains database definitions, table definitions, view
    #            definitions, and other control information to manage your Lake Formation
    #            environment.</p>
    # @option params [Array<Types::DataLakePrincipal>] :share_recipients
    #   <p>A list of Amazon Web Services account IDs or Amazon Web Services organization/organizational unit ARNs that
    #            are allowed to access to access data managed by Lake Formation. </p>
    #            <p>If the <code>ShareRecipients</code> list includes valid values, then the resource share is updated with the principals you want to have access to the resources.</p>
    #            <p>If the <code>ShareRecipients</code> value is null, both the list of share recipients and
    #            the resource share remain unchanged.</p>
    #            <p>If the <code>ShareRecipients</code> value is an empty list, then the existing share
    #            recipients list will be cleared, and the resource share will be deleted.</p>
    # @option params [String] :application_status
    #   <p>Allows to enable or disable the IAM Identity Center connection.</p>
    # @option params [Types::ExternalFilteringConfiguration] :external_filtering
    #   <p>A list of the account IDs of Amazon Web Services accounts of third-party applications
    #            that are allowed to access data managed by Lake Formation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog_id: "CatalogIdString",
    #     share_recipients: [
    #       {
    #         data_lake_principal_identifier: "DataLakePrincipalString"
    #       }
    #     ],
    #     application_status: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #     external_filtering: {
    #       status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #       authorized_targets: ["ScopeTarget"], # required
    #     }
    #   }
    #   options = {}
    #   response = client.update_lake_formation_identity_center_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateLakeFormationIdentityCenterConfigurationResponse]
    def update_lake_formation_identity_center_configuration(params = {}, options = {})
      request = build_request(:update_lake_formation_identity_center_configuration, params)
      request.send_request(options)
    end

    # <p>Updates the data access role used for vending access to the given (registered) resource in Lake Formation. </p>
    # @param [Hash, Types::UpdateResourceRequest] params
    # @option params [String] :role_arn
    #   <p>The new role to use for the given resource registered in Lake Formation.</p>
    # @option params [String] :resource_arn
    #   <p>The resource ARN.</p>
    # @option params [Boolean] :with_federation
    #   <p>Whether or not the resource is a federated resource.</p>
    # @option params [Boolean] :hybrid_access_enabled
    #   <p>
    #         Specifies whether the data access of tables pointing to the location can be managed by both Lake Formation permissions as well as Amazon S3 bucket policies.
    #       </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     role_arn: "IAMRoleArn", # required
    #     resource_arn: "ResourceArnString", # required
    #     with_federation: false,
    #     hybrid_access_enabled: false
    #   }
    #   options = {}
    #   response = client.update_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateResourceResponse]
    def update_resource(params = {}, options = {})
      request = build_request(:update_resource, params)
      request.send_request(options)
    end

    # <p>Updates the manifest of Amazon S3 objects that make up the specified governed table.</p>
    # @param [Hash, Types::UpdateTableObjectsRequest] params
    # @option params [String] :catalog_id
    #   <p>The catalog containing the governed table to update. Defaults to the caller’s account ID.</p>
    # @option params [String] :database_name
    #   <p>The database containing the governed table to update.</p>
    # @option params [String] :table_name
    #   <p>The governed table to update.</p>
    # @option params [String] :transaction_id
    #   <p>The transaction at which to do the write.</p>
    # @option params [Array<Types::WriteOperation>] :write_operations
    #   <p>A list of <code>WriteOperation</code> objects that define an object to add to or delete from the manifest for a governed table.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog_id: "CatalogIdString",
    #     database_name: "NameString", # required
    #     table_name: "NameString", # required
    #     transaction_id: "TransactionIdString",
    #     write_operations: [ # required
    #       {
    #         add_object: {
    #           uri: "URI", # required
    #           e_tag: "ETagString", # required
    #           size: 1, # required
    #           partition_values: ["PartitionValueString"]
    #         },
    #         delete_object: {
    #           uri: "URI", # required
    #           e_tag: "ETagString",
    #           partition_values: ["PartitionValueString"]
    #         }
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_table_objects(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateTableObjectsResponse]
    def update_table_objects(params = {}, options = {})
      request = build_request(:update_table_objects, params)
      request.send_request(options)
    end

    # <p>Updates the configuration of the storage optimizers for a table.</p>
    # @param [Hash, Types::UpdateTableStorageOptimizerRequest] params
    # @option params [String] :catalog_id
    #   <p>The Catalog ID of the table.</p>
    # @option params [String] :database_name
    #   <p>Name of the database where the table is present.</p>
    # @option params [String] :table_name
    #   <p>Name of the table for which to enable the storage optimizer.</p>
    # @option params [Hash<String, Hash<String, String>>] :storage_optimizer_config
    #   <p>Name of the configuration for the storage optimizer.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog_id: "CatalogIdString",
    #     database_name: "NameString", # required
    #     table_name: "NameString", # required
    #     storage_optimizer_config: { # required
    #       "OptimizerType" => {
    #         "StorageOptimizerConfigKey" => "StorageOptimizerConfigValue"
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_table_storage_optimizer(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     result: "Result"
    #   }
    # @return [Types::UpdateTableStorageOptimizerResponse]
    def update_table_storage_optimizer(params = {}, options = {})
      request = build_request(:update_table_storage_optimizer, params)
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
      context[:gem_name] = 'aws-sdk-lakeformation'
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

      # @api private
      def protocols
        {
          rest_json: Aws::Core::RestJson
        }
      end
    end
  end
end
