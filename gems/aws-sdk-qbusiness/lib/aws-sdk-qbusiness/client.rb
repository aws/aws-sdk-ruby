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

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:qbusiness)

module Aws::QBusiness
  # An API client for Aws::QBusiness.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::ExpertQ
    @identifier = :qbusiness

    add_plugin(::Aws::QBusiness::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::QBusiness::EndpointProvider)
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

    # <p>Adds or updates a permission policy for a Amazon Q Business application, allowing cross-account access for an ISV. This operation creates a new policy statement for the specified Amazon Q Business application. The policy statement defines the IAM actions that the ISV is allowed to perform on the Amazon Q Business application's resources.</p>
    # @param [Hash, Types::AssociatePermissionRequest] params
    # @option params [String] :application_id
    #   <p>The unique identifier of the Amazon Q Business application.</p>
    # @option params [String] :statement_id
    #   <p>A unique identifier for the policy statement.</p>
    # @option params [Array<String>] :actions
    #   <p>The list of Amazon Q Business actions that the ISV is allowed to perform.</p>
    # @option params [Array<Types::PermissionCondition>] :conditions
    #   <p>The conditions that restrict when the permission is effective. These conditions can be used to limit the permission based on specific attributes of the request.</p>
    # @option params [String] :principal
    #   <p>The Amazon Resource Name of the IAM role for the ISV that is being granted permission.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "ApplicationId", # required
    #     statement_id: "StatementId", # required
    #     actions: ["QIamAction"], # required
    #     conditions: [
    #       {
    #         condition_operator: "StringEquals" # One of: ["StringEquals"], # required
    #         condition_key: "PermissionConditionKey", # required
    #         condition_values: ["PermissionConditionValue"], # required
    #       }
    #     ],
    #     principal: "PrincipalRoleArn", # required
    #   }
    #   options = {}
    #   response = client.associate_permission(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     statement: "String"
    #   }
    # @return [Types::AssociatePermissionResponse]
    def associate_permission(params = {}, options = {})
      request = build_request(:associate_permission, params)
      request.send_request(options)
    end

    # <p>Asynchronously deletes one or more documents added using the <code>BatchPutDocument</code> API from an Amazon Q Business index.</p> <p>You can see the progress of the deletion, and any error messages related to the process, by using CloudWatch.</p>
    # @param [Hash, Types::BatchDeleteDocumentRequest] params
    # @option params [String] :application_id
    #   <p>The identifier of the Amazon Q Business application.</p>
    # @option params [String] :index_id
    #   <p>The identifier of the Amazon Q Business index that contains the documents to delete.</p>
    # @option params [Array<Types::DeleteDocument>] :documents
    #   <p>Documents deleted from the Amazon Q Business index.</p>
    # @option params [String] :data_source_sync_id
    #   <p>The identifier of the data source sync during which the documents were deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "ApplicationId", # required
    #     index_id: "IndexId", # required
    #     documents: [ # required
    #       {
    #         document_id: "DocumentId", # required
    #       }
    #     ],
    #     data_source_sync_id: "ExecutionId"
    #   }
    #   options = {}
    #   response = client.batch_delete_document(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     failed_documents: [
    #       {
    #         id: "DocumentId",
    #         error: {
    #           error_message: "ErrorMessage",
    #           error_code: "InternalError" # One of: ["InternalError", "InvalidRequest", "ResourceInactive", "ResourceNotFound"]
    #         },
    #         data_source_id: "DataSourceId"
    #       }
    #     ]
    #   }
    # @return [Types::BatchDeleteDocumentResponse]
    def batch_delete_document(params = {}, options = {})
      request = build_request(:batch_delete_document, params)
      request.send_request(options)
    end

    # <p>Adds one or more documents to an Amazon Q Business index.</p> <p>You use this API to:</p> <ul> <li> <p>ingest your structured and unstructured documents and documents stored in an Amazon S3 bucket into an Amazon Q Business index.</p> </li> <li> <p>add custom attributes to documents in an Amazon Q Business index.</p> </li> <li> <p>attach an access control list to the documents added to an Amazon Q Business index.</p> </li> </ul> <p>You can see the progress of the deletion, and any error messages related to the process, by using CloudWatch.</p>
    # @param [Hash, Types::BatchPutDocumentRequest] params
    # @option params [String] :application_id
    #   <p>The identifier of the Amazon Q Business application.</p>
    # @option params [String] :index_id
    #   <p>The identifier of the Amazon Q Business index to add the documents to. </p>
    # @option params [Array<Types::Document>] :documents
    #   <p>One or more documents to add to the index.</p> <important> <p>Ensure that the name of your document doesn't contain any confidential information. Amazon Q Business returns document names in chat responses and citations when relevant.</p> </important>
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM role with permission to access your S3 bucket.</p>
    # @option params [String] :data_source_sync_id
    #   <p>The identifier of the data source sync during which the documents were added.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "ApplicationId", # required
    #     index_id: "IndexId", # required
    #     documents: [ # required
    #       {
    #         id: "DocumentId", # required
    #         attributes: [
    #           {
    #             name: "DocumentAttributeKey", # required
    #             value: { # required
    #               # One of:
    #               string_value: "DocumentAttributeStringValue",
    #               string_list_value: ["String"],
    #               long_value: 1,
    #               date_value: Time.now
    #             }
    #           }
    #         ],
    #         content: {
    #           # One of:
    #           blob: "data",
    #           s3: {
    #             bucket: "S3BucketName", # required
    #             key: "S3ObjectKey", # required
    #           }
    #         },
    #         content_type: "PDF" # One of: ["PDF", "HTML", "MS_WORD", "PLAIN_TEXT", "PPT", "RTF", "XML", "XSLT", "MS_EXCEL", "CSV", "JSON", "MD"],
    #         title: "Title",
    #         access_configuration: {
    #           access_controls: [ # required
    #             {
    #               principals: [{ # required
    #                 # One of:
    #                 user: {
    #                   id: "UserId",
    #                   access: "ALLOW" # One of: ["ALLOW", "DENY"], # required
    #                   membership_type: "INDEX" # One of: ["INDEX", "DATASOURCE"]
    #                 },
    #                 group: {
    #                   name: "GroupName",
    #                   access: "ALLOW" # One of: ["ALLOW", "DENY"], # required
    #                   membership_type: "INDEX" # One of: ["INDEX", "DATASOURCE"]
    #                 }
    #               }],
    #               member_relation: "AND" # One of: ["AND", "OR"]
    #             }
    #           ],
    #           member_relation: "AND" # One of: ["AND", "OR"]
    #         },
    #         document_enrichment_configuration: {
    #           inline_configurations: [
    #             {
    #               condition: {
    #                 key: "DocumentAttributeKey", # required
    #                 operator: "GREATER_THAN" # One of: ["GREATER_THAN", "GREATER_THAN_OR_EQUALS", "LESS_THAN", "LESS_THAN_OR_EQUALS", "EQUALS", "NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "EXISTS", "NOT_EXISTS", "BEGINS_WITH"], # required
    #                 value: {
    #                   # One of:
    #                   string_value: "DocumentAttributeStringValue",
    #                   string_list_value: ["String"],
    #                   long_value: 1,
    #                   date_value: Time.now
    #                 }
    #               },
    #               target: {
    #                 key: "DocumentAttributeKey", # required
    #                 value: {
    #                   # One of:
    #                   string_value: "DocumentAttributeStringValue",
    #                   string_list_value: ["String"],
    #                   long_value: 1,
    #                   date_value: Time.now
    #                 },
    #                 attribute_value_operator: "DELETE" # One of: ["DELETE"]
    #               },
    #               document_content_operator: "DELETE" # One of: ["DELETE"]
    #             }
    #           ],
    #           pre_extraction_hook_configuration: {
    #             invocation_condition: {
    #               key: "DocumentAttributeKey", # required
    #               operator: "GREATER_THAN" # One of: ["GREATER_THAN", "GREATER_THAN_OR_EQUALS", "LESS_THAN", "LESS_THAN_OR_EQUALS", "EQUALS", "NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "EXISTS", "NOT_EXISTS", "BEGINS_WITH"], # required
    #               value: {
    #                 # One of:
    #                 string_value: "DocumentAttributeStringValue",
    #                 string_list_value: ["String"],
    #                 long_value: 1,
    #                 date_value: Time.now
    #               }
    #             },
    #             lambda_arn: "LambdaArn",
    #             s3_bucket_name: "S3BucketName",
    #             role_arn: "RoleArn"
    #           },
    #           post_extraction_hook_configuration: {
    #             invocation_condition: {
    #               key: "DocumentAttributeKey", # required
    #               operator: "GREATER_THAN" # One of: ["GREATER_THAN", "GREATER_THAN_OR_EQUALS", "LESS_THAN", "LESS_THAN_OR_EQUALS", "EQUALS", "NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "EXISTS", "NOT_EXISTS", "BEGINS_WITH"], # required
    #               value: {
    #                 # One of:
    #                 string_value: "DocumentAttributeStringValue",
    #                 string_list_value: ["String"],
    #                 long_value: 1,
    #                 date_value: Time.now
    #               }
    #             },
    #             lambda_arn: "LambdaArn",
    #             s3_bucket_name: "S3BucketName",
    #             role_arn: "RoleArn"
    #           }
    #         },
    #         media_extraction_configuration: {
    #           image_extraction_configuration: {
    #             image_extraction_status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #           },
    #           audio_extraction_configuration: {
    #             audio_extraction_status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #           },
    #           video_extraction_configuration: {
    #             video_extraction_status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #           }
    #         }
    #       }
    #     ],
    #     role_arn: "RoleArn",
    #     data_source_sync_id: "ExecutionId"
    #   }
    #   options = {}
    #   response = client.batch_put_document(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     failed_documents: [
    #       {
    #         id: "DocumentId",
    #         error: {
    #           error_message: "ErrorMessage",
    #           error_code: "InternalError" # One of: ["InternalError", "InvalidRequest", "ResourceInactive", "ResourceNotFound"]
    #         },
    #         data_source_id: "DataSourceId"
    #       }
    #     ]
    #   }
    # @return [Types::BatchPutDocumentResponse]
    def batch_put_document(params = {}, options = {})
      request = build_request(:batch_put_document, params)
      request.send_request(options)
    end

    # <p>Unsubscribes a user or a group from their pricing tier in an Amazon Q Business application. An unsubscribed user or group loses all Amazon Q Business feature access at the start of next month. </p>
    # @param [Hash, Types::CancelSubscriptionRequest] params
    # @option params [String] :application_id
    #   <p>The identifier of the Amazon Q Business application for which the subscription is being cancelled.</p>
    # @option params [String] :subscription_id
    #   <p>The identifier of the Amazon Q Business subscription being cancelled.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "ApplicationId", # required
    #     subscription_id: "SubscriptionId", # required
    #   }
    #   options = {}
    #   response = client.cancel_subscription(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     subscription_arn: "SubscriptionArn",
    #     current_subscription: {
    #       type: "Q_LITE" # One of: ["Q_LITE", "Q_BUSINESS"]
    #     },
    #     next_subscription: {
    #       type: "Q_LITE" # One of: ["Q_LITE", "Q_BUSINESS"]
    #     }
    #   }
    # @return [Types::CancelSubscriptionResponse]
    def cancel_subscription(params = {}, options = {})
      request = build_request(:cancel_subscription, params)
      request.send_request(options)
    end

    # <p>Starts or continues a streaming Amazon Q Business conversation.</p>
    # @param [Hash, Types::ChatInput] params
    # @option params [String] :application_id
    #   <p>The identifier of the Amazon Q Business application linked to a streaming Amazon Q Business conversation.</p>
    # @option params [String] :user_id
    #   <p>The identifier of the user attached to the chat input. </p>
    # @option params [Array<String>] :user_groups
    #   <p>The group names that a user associated with the chat input belongs to.</p>
    # @option params [String] :conversation_id
    #   <p>The identifier of the Amazon Q Business conversation.</p>
    # @option params [String] :parent_message_id
    #   <p>The identifier used to associate a user message with a AI generated response.</p>
    # @option params [String] :client_token
    #   <p>A token that you provide to identify the chat input.</p>
    # @option params [Types::ChatInputStream] :input_stream
    #   <p>The streaming input for the <code>Chat</code> API.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "ApplicationId", # required
    #     user_id: "UserId",
    #     user_groups: ["String"],
    #     conversation_id: "ConversationId",
    #     parent_message_id: "MessageId",
    #     client_token: "ClientToken",
    #     input_stream: {
    #       # One of:
    #       configuration_event: {
    #         chat_mode: "RETRIEVAL_MODE" # One of: ["RETRIEVAL_MODE", "CREATOR_MODE", "PLUGIN_MODE"],
    #         chat_mode_configuration: {
    #           # One of:
    #           plugin_configuration: {
    #             plugin_id: "PluginId", # required
    #           }
    #         },
    #         attribute_filter: {
    #           and_all_filters: [
    #             {
    #               # recursive AttributeFilter
    #             }
    #           ],
    #           or_all_filters: [
    #             {
    #               # recursive AttributeFilter
    #             }
    #           ],
    #           not_filter: {
    #             # recursive AttributeFilter
    #           },
    #           equals_to: {
    #             name: "DocumentAttributeKey", # required
    #             value: { # required
    #               # One of:
    #               string_value: "DocumentAttributeStringValue",
    #               string_list_value: ["String"],
    #               long_value: 1,
    #               date_value: Time.now
    #             }
    #           },
    #           contains_all: {
    #             name: "DocumentAttributeKey", # required
    #             value: { # required
    #               # One of:
    #               string_value: "DocumentAttributeStringValue",
    #               string_list_value: ["String"],
    #               long_value: 1,
    #               date_value: Time.now
    #             }
    #           },
    #           contains_any: {
    #             name: "DocumentAttributeKey", # required
    #             value: { # required
    #               # One of:
    #               string_value: "DocumentAttributeStringValue",
    #               string_list_value: ["String"],
    #               long_value: 1,
    #               date_value: Time.now
    #             }
    #           },
    #           greater_than: {
    #             name: "DocumentAttributeKey", # required
    #             value: { # required
    #               # One of:
    #               string_value: "DocumentAttributeStringValue",
    #               string_list_value: ["String"],
    #               long_value: 1,
    #               date_value: Time.now
    #             }
    #           },
    #           greater_than_or_equals: {
    #             name: "DocumentAttributeKey", # required
    #             value: { # required
    #               # One of:
    #               string_value: "DocumentAttributeStringValue",
    #               string_list_value: ["String"],
    #               long_value: 1,
    #               date_value: Time.now
    #             }
    #           },
    #           less_than: {
    #             name: "DocumentAttributeKey", # required
    #             value: { # required
    #               # One of:
    #               string_value: "DocumentAttributeStringValue",
    #               string_list_value: ["String"],
    #               long_value: 1,
    #               date_value: Time.now
    #             }
    #           },
    #           less_than_or_equals: {
    #             name: "DocumentAttributeKey", # required
    #             value: { # required
    #               # One of:
    #               string_value: "DocumentAttributeStringValue",
    #               string_list_value: ["String"],
    #               long_value: 1,
    #               date_value: Time.now
    #             }
    #           }
    #         }
    #       },
    #       text_event: {
    #         user_message: "UserMessage", # required
    #       },
    #       attachment_event: {
    #         attachment: {
    #           data: "data",
    #           name: "AttachmentName",
    #           copy_from: {
    #             # One of:
    #             conversation: {
    #               conversation_id: "ConversationId", # required
    #               attachment_id: "AttachmentId", # required
    #             }
    #           }
    #         }
    #       },
    #       action_execution_event: {
    #         plugin_id: "PluginId", # required
    #         payload: { # required
    #           "ActionPayloadFieldKey" => {
    #             value: ""null"", # required
    #           }
    #         },
    #         payload_field_name_separator: "ActionPayloadFieldNameSeparator", # required
    #       },
    #       end_of_input_event: {
    #       },
    #       auth_challenge_response_event: {
    #         response_map: { # required
    #           "AuthResponseKey" => "AuthResponseValue"
    #         }
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.chat(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     output_stream: {
    #       # One of:
    #       text_event: {
    #         system_message_type: "RESPONSE" # One of: ["RESPONSE", "GROUNDED_RESPONSE"],
    #         conversation_id: "ConversationId",
    #         user_message_id: "MessageId",
    #         system_message_id: "MessageId",
    #         system_message: "String"
    #       },
    #       metadata_event: {
    #         conversation_id: "ConversationId",
    #         user_message_id: "MessageId",
    #         system_message_id: "MessageId",
    #         source_attributions: [
    #           {
    #             title: "String",
    #             snippet: "String",
    #             url: "String",
    #             citation_number: 1,
    #             updated_at: Time.now,
    #             text_message_segments: [
    #               {
    #                 begin_offset: 1,
    #                 end_offset: 1,
    #                 snippet_excerpt: {
    #                   text: "SnippetExcerptText"
    #                 },
    #                 media_id: "SourceAttributionMediaId",
    #                 media_mime_type: "String",
    #                 source_details: {
    #                   # One of:
    #                   image_source_details: {
    #                     media_id: "MediaId",
    #                     media_mime_type: "String"
    #                   },
    #                   audio_source_details: {
    #                     media_id: "MediaId",
    #                     media_mime_type: "String",
    #                     start_time_milliseconds: 1,
    #                     end_time_milliseconds: 1,
    #                     audio_extraction_type: "TRANSCRIPT" # One of: ["TRANSCRIPT", "SUMMARY"]
    #                   },
    #                   video_source_details: {
    #                     media_id: "MediaId",
    #                     media_mime_type: "String",
    #                     start_time_milliseconds: 1,
    #                     end_time_milliseconds: 1,
    #                     video_extraction_type: "TRANSCRIPT" # One of: ["TRANSCRIPT", "SUMMARY"]
    #                   }
    #                 }
    #               }
    #             ],
    #             document_id: "String",
    #             index_id: "String",
    #             datasource_id: "String"
    #           }
    #         ],
    #         final_text_message: "String"
    #       },
    #       action_review_event: {
    #         conversation_id: "ConversationId",
    #         user_message_id: "MessageId",
    #         system_message_id: "MessageId",
    #         plugin_id: "PluginId",
    #         plugin_type: "SERVICE_NOW" # One of: ["SERVICE_NOW", "SALESFORCE", "JIRA", "ZENDESK", "CUSTOM", "QUICKSIGHT", "SERVICENOW_NOW_PLATFORM", "JIRA_CLOUD", "SALESFORCE_CRM", "ZENDESK_SUITE", "ATLASSIAN_CONFLUENCE", "GOOGLE_CALENDAR", "MICROSOFT_TEAMS", "MICROSOFT_EXCHANGE", "PAGERDUTY_ADVANCE", "SMARTSHEET", "ASANA"],
    #         payload: {
    #           "ActionPayloadFieldKey" => {
    #             display_name: "String",
    #             display_order: 1,
    #             display_description: "String",
    #             type: "STRING" # One of: ["STRING", "NUMBER", "ARRAY", "BOOLEAN"],
    #             value: ""null"",
    #             allowed_values: [
    #               {
    #                 value: ""null"",
    #                 display_value: ""null""
    #               }
    #             ],
    #             allowed_format: "String",
    #             array_item_json_schema: ""null"",
    #             required: false
    #           }
    #         },
    #         payload_field_name_separator: "ActionPayloadFieldNameSeparator"
    #       },
    #       failed_attachment_event: {
    #         conversation_id: "ConversationId",
    #         user_message_id: "MessageId",
    #         system_message_id: "MessageId",
    #         attachment: {
    #           name: "AttachmentName",
    #           status: "FAILED" # One of: ["FAILED", "SUCCESS"],
    #           error: {
    #             error_message: "ErrorMessage",
    #             error_code: "InternalError" # One of: ["InternalError", "InvalidRequest", "ResourceInactive", "ResourceNotFound"]
    #           },
    #           attachment_id: "AttachmentId",
    #           conversation_id: "ConversationId"
    #         }
    #       },
    #       auth_challenge_request_event: {
    #         authorization_url: "Url", # required
    #       }
    #     }
    #   }
    # @return [Types::ChatOutput]
    def chat(params = {}, options = {})
      request = build_request(:chat, params)
      request.send_request(options)
    end

    # <p>Starts or continues a non-streaming Amazon Q Business conversation.</p>
    # @param [Hash, Types::ChatSyncInput] params
    # @option params [String] :application_id
    #   <p>The identifier of the Amazon Q Business application linked to the Amazon Q Business conversation.</p>
    # @option params [String] :user_id
    #   <p>The identifier of the user attached to the chat input.</p>
    # @option params [Array<String>] :user_groups
    #   <p>The group names that a user associated with the chat input belongs to.</p>
    # @option params [String] :user_message
    #   <p>A end user message in a conversation.</p>
    # @option params [Array<Types::AttachmentInput>] :attachments
    #   <p>A list of files uploaded directly during chat. You can upload a maximum of 5 files of upto 10 MB each.</p>
    # @option params [Types::ActionExecution] :action_execution
    #   <p>A request from an end user to perform an Amazon Q Business plugin action.</p>
    # @option params [Types::AuthChallengeResponse] :auth_challenge_response
    #   <p>An authentication verification event response by a third party authentication server to Amazon Q Business.</p>
    # @option params [String] :conversation_id
    #   <p>The identifier of the Amazon Q Business conversation.</p>
    # @option params [String] :parent_message_id
    #   <p>The identifier of the previous system message in a conversation.</p>
    # @option params [Types::AttributeFilter] :attribute_filter
    #   <p>Enables filtering of Amazon Q Business web experience responses based on document attributes or metadata fields.</p>
    # @option params [String] :chat_mode
    #   <p>The <code>chatMode</code> parameter determines the chat modes available to Amazon Q Business users:</p> <ul> <li> <p> <code>RETRIEVAL_MODE</code> - If you choose this mode, Amazon Q generates responses solely from the data sources connected and indexed by the application. If an answer is not found in the data sources or there are no data sources available, Amazon Q will respond with a "<i>No Answer Found</i>" message, unless LLM knowledge has been enabled. In that case, Amazon Q will generate a response from the LLM knowledge</p> </li> <li> <p> <code>CREATOR_MODE</code> - By selecting this mode, you can choose to generate responses only from the LLM knowledge. You can also attach files and have Amazon Q generate a response based on the data in those files. If the attached files do not contain an answer for the query, Amazon Q will automatically fall back to generating a response from the LLM knowledge.</p> </li> <li> <p> <code>PLUGIN_MODE</code> - By selecting this mode, users can choose to use plugins in chat to get their responses.</p> </li> </ul> <note> <p>If none of the modes are selected, Amazon Q will only respond using the information from the attached files.</p> </note> <p>For more information, see <a href="https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/guardrails.html">Admin controls and guardrails</a>, <a href="https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/plugins.html">Plugins</a>, and <a href="https://docs.aws.amazon.com/amazonq/latest/business-use-dg/using-web-experience.html#chat-source-scope">Response sources</a>.</p>
    # @option params [Types::ChatModeConfiguration] :chat_mode_configuration
    #   <p>The chat mode configuration for an Amazon Q Business application.</p>
    # @option params [String] :client_token
    #   <p>A token that you provide to identify a chat request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "ApplicationId", # required
    #     user_id: "UserId",
    #     user_groups: ["String"],
    #     user_message: "UserMessage",
    #     attachments: [
    #       {
    #         data: "data",
    #         name: "AttachmentName",
    #         copy_from: {
    #           # One of:
    #           conversation: {
    #             conversation_id: "ConversationId", # required
    #             attachment_id: "AttachmentId", # required
    #           }
    #         }
    #       }
    #     ],
    #     action_execution: {
    #       plugin_id: "PluginId", # required
    #       payload: { # required
    #         "ActionPayloadFieldKey" => {
    #           value: ""null"", # required
    #         }
    #       },
    #       payload_field_name_separator: "ActionPayloadFieldNameSeparator", # required
    #     },
    #     auth_challenge_response: {
    #       response_map: { # required
    #         "AuthResponseKey" => "AuthResponseValue"
    #       }
    #     },
    #     conversation_id: "ConversationId",
    #     parent_message_id: "MessageId",
    #     attribute_filter: {
    #       and_all_filters: [
    #         {
    #           # recursive AttributeFilter
    #         }
    #       ],
    #       or_all_filters: [
    #         {
    #           # recursive AttributeFilter
    #         }
    #       ],
    #       not_filter: {
    #         # recursive AttributeFilter
    #       },
    #       equals_to: {
    #         name: "DocumentAttributeKey", # required
    #         value: { # required
    #           # One of:
    #           string_value: "DocumentAttributeStringValue",
    #           string_list_value: ["String"],
    #           long_value: 1,
    #           date_value: Time.now
    #         }
    #       },
    #       contains_all: {
    #         name: "DocumentAttributeKey", # required
    #         value: { # required
    #           # One of:
    #           string_value: "DocumentAttributeStringValue",
    #           string_list_value: ["String"],
    #           long_value: 1,
    #           date_value: Time.now
    #         }
    #       },
    #       contains_any: {
    #         name: "DocumentAttributeKey", # required
    #         value: { # required
    #           # One of:
    #           string_value: "DocumentAttributeStringValue",
    #           string_list_value: ["String"],
    #           long_value: 1,
    #           date_value: Time.now
    #         }
    #       },
    #       greater_than: {
    #         name: "DocumentAttributeKey", # required
    #         value: { # required
    #           # One of:
    #           string_value: "DocumentAttributeStringValue",
    #           string_list_value: ["String"],
    #           long_value: 1,
    #           date_value: Time.now
    #         }
    #       },
    #       greater_than_or_equals: {
    #         name: "DocumentAttributeKey", # required
    #         value: { # required
    #           # One of:
    #           string_value: "DocumentAttributeStringValue",
    #           string_list_value: ["String"],
    #           long_value: 1,
    #           date_value: Time.now
    #         }
    #       },
    #       less_than: {
    #         name: "DocumentAttributeKey", # required
    #         value: { # required
    #           # One of:
    #           string_value: "DocumentAttributeStringValue",
    #           string_list_value: ["String"],
    #           long_value: 1,
    #           date_value: Time.now
    #         }
    #       },
    #       less_than_or_equals: {
    #         name: "DocumentAttributeKey", # required
    #         value: { # required
    #           # One of:
    #           string_value: "DocumentAttributeStringValue",
    #           string_list_value: ["String"],
    #           long_value: 1,
    #           date_value: Time.now
    #         }
    #       }
    #     },
    #     chat_mode: "RETRIEVAL_MODE" # One of: ["RETRIEVAL_MODE", "CREATOR_MODE", "PLUGIN_MODE"],
    #     chat_mode_configuration: {
    #       # One of:
    #       plugin_configuration: {
    #         plugin_id: "PluginId", # required
    #       }
    #     },
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.chat_sync(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     conversation_id: "ConversationId",
    #     system_message: "String",
    #     system_message_id: "MessageId",
    #     user_message_id: "MessageId",
    #     action_review: {
    #       plugin_id: "PluginId",
    #       plugin_type: "SERVICE_NOW" # One of: ["SERVICE_NOW", "SALESFORCE", "JIRA", "ZENDESK", "CUSTOM", "QUICKSIGHT", "SERVICENOW_NOW_PLATFORM", "JIRA_CLOUD", "SALESFORCE_CRM", "ZENDESK_SUITE", "ATLASSIAN_CONFLUENCE", "GOOGLE_CALENDAR", "MICROSOFT_TEAMS", "MICROSOFT_EXCHANGE", "PAGERDUTY_ADVANCE", "SMARTSHEET", "ASANA"],
    #       payload: {
    #         "ActionPayloadFieldKey" => {
    #           display_name: "String",
    #           display_order: 1,
    #           display_description: "String",
    #           type: "STRING" # One of: ["STRING", "NUMBER", "ARRAY", "BOOLEAN"],
    #           value: ""null"",
    #           allowed_values: [
    #             {
    #               value: ""null"",
    #               display_value: ""null""
    #             }
    #           ],
    #           allowed_format: "String",
    #           array_item_json_schema: ""null"",
    #           required: false
    #         }
    #       },
    #       payload_field_name_separator: "ActionPayloadFieldNameSeparator"
    #     },
    #     auth_challenge_request: {
    #       authorization_url: "Url", # required
    #     },
    #     source_attributions: [
    #       {
    #         title: "String",
    #         snippet: "String",
    #         url: "String",
    #         citation_number: 1,
    #         updated_at: Time.now,
    #         text_message_segments: [
    #           {
    #             begin_offset: 1,
    #             end_offset: 1,
    #             snippet_excerpt: {
    #               text: "SnippetExcerptText"
    #             },
    #             media_id: "SourceAttributionMediaId",
    #             media_mime_type: "String",
    #             source_details: {
    #               # One of:
    #               image_source_details: {
    #                 media_id: "MediaId",
    #                 media_mime_type: "String"
    #               },
    #               audio_source_details: {
    #                 media_id: "MediaId",
    #                 media_mime_type: "String",
    #                 start_time_milliseconds: 1,
    #                 end_time_milliseconds: 1,
    #                 audio_extraction_type: "TRANSCRIPT" # One of: ["TRANSCRIPT", "SUMMARY"]
    #               },
    #               video_source_details: {
    #                 media_id: "MediaId",
    #                 media_mime_type: "String",
    #                 start_time_milliseconds: 1,
    #                 end_time_milliseconds: 1,
    #                 video_extraction_type: "TRANSCRIPT" # One of: ["TRANSCRIPT", "SUMMARY"]
    #               }
    #             }
    #           }
    #         ],
    #         document_id: "String",
    #         index_id: "String",
    #         datasource_id: "String"
    #       }
    #     ],
    #     failed_attachments: [
    #       {
    #         name: "AttachmentName",
    #         status: "FAILED" # One of: ["FAILED", "SUCCESS"],
    #         error: {
    #           error_message: "ErrorMessage",
    #           error_code: "InternalError" # One of: ["InternalError", "InvalidRequest", "ResourceInactive", "ResourceNotFound"]
    #         },
    #         attachment_id: "AttachmentId",
    #         conversation_id: "ConversationId"
    #       }
    #     ]
    #   }
    # @return [Types::ChatSyncOutput]
    def chat_sync(params = {}, options = {})
      request = build_request(:chat_sync, params)
      request.send_request(options)
    end

    # <p>Verifies if a user has access permissions for a specified document and returns the actual ACL attached to the document. Resolves user access on the document via user aliases and groups when verifying user access.</p>
    # @param [Hash, Types::CheckDocumentAccessRequest] params
    # @option params [String] :application_id
    #   <p>The unique identifier of the application. This is required to identify the specific Amazon Q Business application context for the document access check.</p>
    # @option params [String] :index_id
    #   <p>The unique identifier of the index. Used to locate the correct index within the application where the document is stored.</p>
    # @option params [String] :user_id
    #   <p>The unique identifier of the user. Used to check the access permissions for this specific user against the document's ACL.</p>
    # @option params [String] :document_id
    #   <p>The unique identifier of the document. Specifies which document's access permissions are being checked.</p>
    # @option params [String] :data_source_id
    #   <p>The unique identifier of the data source. Identifies the specific data source from which the document originates. Should not be used when a document is uploaded directly with BatchPutDocument, as no dataSourceId is available or necessary. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "ApplicationId", # required
    #     index_id: "IndexId", # required
    #     user_id: "String", # required
    #     document_id: "DocumentId", # required
    #     data_source_id: "DataSourceId"
    #   }
    #   options = {}
    #   response = client.check_document_access(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     user_groups: [
    #       {
    #         name: "GroupName",
    #         type: "INDEX" # One of: ["INDEX", "DATASOURCE"]
    #       }
    #     ],
    #     user_aliases: [
    #       {
    #         id: "String",
    #         type: "INDEX" # One of: ["INDEX", "DATASOURCE"]
    #       }
    #     ],
    #     has_access: false,
    #     document_acl: {
    #       allowlist: {
    #         member_relation: "AND" # One of: ["AND", "OR"],
    #         conditions: [
    #           {
    #             member_relation: "AND" # One of: ["AND", "OR"],
    #             users: [
    #               {
    #                 id: "String",
    #                 type: "INDEX" # One of: ["INDEX", "DATASOURCE"]
    #               }
    #             ],
    #             groups: [
    #               {
    #                 name: "GroupName",
    #                 type: "INDEX" # One of: ["INDEX", "DATASOURCE"]
    #               }
    #             ]
    #           }
    #         ]
    #       },
    #       deny_list: {
    #         member_relation: "AND" # One of: ["AND", "OR"],
    #         conditions: [
    #           {
    #             member_relation: "AND" # One of: ["AND", "OR"],
    #             users: [
    #               {
    #                 id: "String",
    #                 type: "INDEX" # One of: ["INDEX", "DATASOURCE"]
    #               }
    #             ],
    #             groups: [
    #               {
    #                 name: "GroupName",
    #                 type: "INDEX" # One of: ["INDEX", "DATASOURCE"]
    #               }
    #             ]
    #           }
    #         ]
    #       }
    #     }
    #   }
    # @return [Types::CheckDocumentAccessResponse]
    def check_document_access(params = {}, options = {})
      request = build_request(:check_document_access, params)
      request.send_request(options)
    end

    # <p>Creates a unique URL for anonymous Amazon Q Business web experience. This URL can only be used once and must be used within 5 minutes after it's generated.</p>
    # @param [Hash, Types::CreateAnonymousWebExperienceUrlRequest] params
    # @option params [String] :application_id
    #   <p>The identifier of the Amazon Q Business application environment attached to the web experience.</p>
    # @option params [String] :web_experience_id
    #   <p>The identifier of the web experience.</p>
    # @option params [Integer] :session_duration_in_minutes
    #   <p>The duration of the session associated with the unique URL for the web experience.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "ApplicationId", # required
    #     web_experience_id: "WebExperienceId", # required
    #     session_duration_in_minutes: 1
    #   }
    #   options = {}
    #   response = client.create_anonymous_web_experience_url(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     anonymous_url: "Url"
    #   }
    # @return [Types::CreateAnonymousWebExperienceUrlResponse]
    def create_anonymous_web_experience_url(params = {}, options = {})
      request = build_request(:create_anonymous_web_experience_url, params)
      request.send_request(options)
    end

    # <p>Creates an Amazon Q Business application.</p> <note> <p>There are new tiers for Amazon Q Business. Not all features in Amazon Q Business Pro are also available in Amazon Q Business Lite. For information on what's included in Amazon Q Business Lite and what's included in Amazon Q Business Pro, see <a href="https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/tiers.html#user-sub-tiers">Amazon Q Business tiers</a>. You must use the Amazon Q Business console to assign subscription tiers to users. </p> <p>An Amazon Q Apps service linked role will be created if it's absent in the Amazon Web Services account when <code>QAppsConfiguration</code> is enabled in the request. For more information, see <a href="https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/using-service-linked-roles-qapps.html"> Using service-linked roles for Q Apps</a>.</p> <p>When you create an application, Amazon Q Business may securely transmit data for processing from your selected Amazon Web Services region, but within your geography. For more information, see <a href="https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/cross-region-inference.html">Cross region inference in Amazon Q Business</a>.</p> </note>
    # @param [Hash, Types::CreateApplicationRequest] params
    # @option params [String] :display_name
    #   <p>A name for the Amazon Q Business application. </p>
    # @option params [String] :role_arn
    #   <p> The Amazon Resource Name (ARN) of an IAM role with permissions to access your Amazon CloudWatch logs and metrics. If this property is not specified, Amazon Q Business will create a <a href="https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/using-service-linked-roles.html#slr-permissions">service linked role (SLR)</a> and use it as the application's role.</p>
    # @option params [String] :identity_type
    #   <p>The authentication type being used by a Amazon Q Business application.</p>
    # @option params [String] :iam_identity_provider_arn
    #   <p>The Amazon Resource Name (ARN) of an identity provider being used by an Amazon Q Business application.</p>
    # @option params [String] :identity_center_instance_arn
    #   <p> The Amazon Resource Name (ARN) of the IAM Identity Center instance you are either creating for—or connecting to—your Amazon Q Business application.</p>
    # @option params [Array<String>] :client_ids_for_oidc
    #   <p>The OIDC client ID for a Amazon Q Business application.</p>
    # @option params [String] :description
    #   <p>A description for the Amazon Q Business application. </p>
    # @option params [Types::EncryptionConfiguration] :encryption_configuration
    #   <p>The identifier of the KMS key that is used to encrypt your data. Amazon Q Business doesn't support asymmetric keys.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of key-value pairs that identify or categorize your Amazon Q Business application. You can also use tags to help control access to the application. Tag keys and values can consist of Unicode letters, digits, white space, and any of the following symbols: _ . : / = + - @.</p>
    # @option params [String] :client_token
    #   <p>A token that you provide to identify the request to create your Amazon Q Business application.</p>
    # @option params [Types::AttachmentsConfiguration] :attachments_configuration
    #   <p>An option to allow end users to upload files directly during chat.</p>
    # @option params [Types::QAppsConfiguration] :q_apps_configuration
    #   <p>An option to allow end users to create and use Amazon Q Apps in the web experience.</p>
    # @option params [Types::PersonalizationConfiguration] :personalization_configuration
    #   <p>Configuration information about chat response personalization. For more information, see <a href="https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/personalizing-chat-responses.html">Personalizing chat responses</a> </p>
    # @option params [Types::QuickSightConfiguration] :quick_sight_configuration
    #   <p>The Amazon QuickSight configuration for an Amazon Q Business application that uses QuickSight for authentication. This configuration is required if your application uses QuickSight as the identity provider. For more information, see <a href="https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/create-quicksight-integrated-application.html">Creating an Amazon QuickSight integrated application</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     display_name: "ApplicationName", # required
    #     role_arn: "RoleArn",
    #     identity_type: "AWS_IAM_IDP_SAML" # One of: ["AWS_IAM_IDP_SAML", "AWS_IAM_IDP_OIDC", "AWS_IAM_IDC", "AWS_QUICKSIGHT_IDP", "ANONYMOUS"],
    #     iam_identity_provider_arn: "IAMIdentityProviderArn",
    #     identity_center_instance_arn: "InstanceArn",
    #     client_ids_for_oidc: ["ClientIdForOIDC"],
    #     description: "Description",
    #     encryption_configuration: {
    #       kms_key_id: "KmsKeyId"
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     client_token: "ClientToken",
    #     attachments_configuration: {
    #       attachments_control_mode: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #     },
    #     q_apps_configuration: {
    #       q_apps_control_mode: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #     },
    #     personalization_configuration: {
    #       personalization_control_mode: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #     },
    #     quick_sight_configuration: {
    #       client_namespace: "ClientNamespace", # required
    #     }
    #   }
    #   options = {}
    #   response = client.create_application(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     application_id: "ApplicationId",
    #     application_arn: "ApplicationArn"
    #   }
    # @return [Types::CreateApplicationResponse]
    def create_application(params = {}, options = {})
      request = build_request(:create_application, params)
      request.send_request(options)
    end

    # <p>Creates a new chat response configuration for an Amazon Q Business application. This operation establishes a set of parameters that define how the system generates and formats responses to user queries in chat interactions.</p>
    # @param [Hash, Types::CreateChatResponseConfigurationRequest] params
    # @option params [String] :application_id
    #   <p>The unique identifier of the Amazon Q Business application for which to create the new chat response configuration.</p>
    # @option params [String] :display_name
    #   <p>A human-readable name for the new chat response configuration, making it easier to identify and manage among multiple configurations.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier to ensure idempotency of the request. This helps prevent the same configuration from being created multiple times if retries occur.</p>
    # @option params [Hash<String, Types::ResponseConfiguration>] :response_configurations
    #   <p>A collection of response configuration settings that define how Amazon Q Business will generate and format responses to user queries in chat interactions.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of key-value pairs to apply as tags to the new chat response configuration, enabling categorization and management of resources across Amazon Web Services services.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "ApplicationId", # required
    #     display_name: "DisplayName", # required
    #     client_token: "String",
    #     response_configurations: { # required
    #       "ResponseConfigurationType" => {
    #         instruction_collection: {
    #           response_length: "Instruction",
    #           target_audience: "Instruction",
    #           perspective: "Instruction",
    #           output_style: "Instruction",
    #           identity: "Instruction",
    #           tone: "Instruction",
    #           custom_instructions: "Instruction",
    #           examples: "Instruction"
    #         }
    #       }
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_chat_response_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     chat_response_configuration_id: "ChatResponseConfigurationId", # required
    #     chat_response_configuration_arn: "ChatResponseConfigurationArn", # required
    #   }
    # @return [Types::CreateChatResponseConfigurationResponse]
    def create_chat_response_configuration(params = {}, options = {})
      request = build_request(:create_chat_response_configuration, params)
      request.send_request(options)
    end

    # <p>Creates a new data accessor for an ISV to access data from a Amazon Q Business application. The data accessor is an entity that represents the ISV's access to the Amazon Q Business application's data. It includes the IAM role ARN for the ISV, a friendly name, and a set of action configurations that define the specific actions the ISV is allowed to perform and any associated data filters. When the data accessor is created, an IAM Identity Center application is also created to manage the ISV's identity and authentication for accessing the Amazon Q Business application.</p>
    # @param [Hash, Types::CreateDataAccessorRequest] params
    # @option params [String] :application_id
    #   <p>The unique identifier of the Amazon Q Business application.</p>
    # @option params [String] :principal
    #   <p>The Amazon Resource Name (ARN) of the IAM role for the ISV that will be accessing the data.</p>
    # @option params [Array<Types::ActionConfiguration>] :action_configurations
    #   <p>A list of action configurations specifying the allowed actions and any associated filters.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier you provide to ensure idempotency of the request.</p>
    # @option params [String] :display_name
    #   <p>A friendly name for the data accessor.</p>
    # @option params [Types::DataAccessorAuthenticationDetail] :authentication_detail
    #   <p>The authentication configuration details for the data accessor. This specifies how the ISV will authenticate when accessing data through this data accessor.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags to associate with the data accessor.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "ApplicationId", # required
    #     principal: "PrincipalRoleArn", # required
    #     action_configurations: [ # required
    #       {
    #         action: "QIamAction", # required
    #         filter_configuration: {
    #           document_attribute_filter: { # required
    #             and_all_filters: [
    #               {
    #                 # recursive AttributeFilter
    #               }
    #             ],
    #             or_all_filters: [
    #               {
    #                 # recursive AttributeFilter
    #               }
    #             ],
    #             not_filter: {
    #               # recursive AttributeFilter
    #             },
    #             equals_to: {
    #               name: "DocumentAttributeKey", # required
    #               value: { # required
    #                 # One of:
    #                 string_value: "DocumentAttributeStringValue",
    #                 string_list_value: ["String"],
    #                 long_value: 1,
    #                 date_value: Time.now
    #               }
    #             },
    #             contains_all: {
    #               name: "DocumentAttributeKey", # required
    #               value: { # required
    #                 # One of:
    #                 string_value: "DocumentAttributeStringValue",
    #                 string_list_value: ["String"],
    #                 long_value: 1,
    #                 date_value: Time.now
    #               }
    #             },
    #             contains_any: {
    #               name: "DocumentAttributeKey", # required
    #               value: { # required
    #                 # One of:
    #                 string_value: "DocumentAttributeStringValue",
    #                 string_list_value: ["String"],
    #                 long_value: 1,
    #                 date_value: Time.now
    #               }
    #             },
    #             greater_than: {
    #               name: "DocumentAttributeKey", # required
    #               value: { # required
    #                 # One of:
    #                 string_value: "DocumentAttributeStringValue",
    #                 string_list_value: ["String"],
    #                 long_value: 1,
    #                 date_value: Time.now
    #               }
    #             },
    #             greater_than_or_equals: {
    #               name: "DocumentAttributeKey", # required
    #               value: { # required
    #                 # One of:
    #                 string_value: "DocumentAttributeStringValue",
    #                 string_list_value: ["String"],
    #                 long_value: 1,
    #                 date_value: Time.now
    #               }
    #             },
    #             less_than: {
    #               name: "DocumentAttributeKey", # required
    #               value: { # required
    #                 # One of:
    #                 string_value: "DocumentAttributeStringValue",
    #                 string_list_value: ["String"],
    #                 long_value: 1,
    #                 date_value: Time.now
    #               }
    #             },
    #             less_than_or_equals: {
    #               name: "DocumentAttributeKey", # required
    #               value: { # required
    #                 # One of:
    #                 string_value: "DocumentAttributeStringValue",
    #                 string_list_value: ["String"],
    #                 long_value: 1,
    #                 date_value: Time.now
    #               }
    #             }
    #           }
    #         }
    #       }
    #     ],
    #     client_token: "ClientToken",
    #     display_name: "DataAccessorName", # required
    #     authentication_detail: {
    #       authentication_type: "AWS_IAM_IDC_TTI" # One of: ["AWS_IAM_IDC_TTI", "AWS_IAM_IDC_AUTH_CODE"], # required
    #       authentication_configuration: {
    #         # One of:
    #         idc_trusted_token_issuer_configuration: {
    #           idc_trusted_token_issuer_arn: "IdcTrustedTokenIssuerArn", # required
    #         }
    #       },
    #       external_ids: ["DataAccessorExternalId"]
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_data_accessor(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     data_accessor_id: "DataAccessorId", # required
    #     idc_application_arn: "IdcApplicationArn", # required
    #     data_accessor_arn: "DataAccessorArn", # required
    #   }
    # @return [Types::CreateDataAccessorResponse]
    def create_data_accessor(params = {}, options = {})
      request = build_request(:create_data_accessor, params)
      request.send_request(options)
    end

    # <p>Creates a data source connector for an Amazon Q Business application.</p> <p> <code>CreateDataSource</code> is a synchronous operation. The operation returns 200 if the data source was successfully created. Otherwise, an exception is raised.</p>
    # @param [Hash, Types::CreateDataSourceRequest] params
    # @option params [String] :application_id
    #   <p> The identifier of the Amazon Q Business application the data source will be attached to.</p>
    # @option params [String] :index_id
    #   <p>The identifier of the index that you want to use with the data source connector.</p>
    # @option params [String] :display_name
    #   <p>A name for the data source connector.</p>
    # @option params [JSON] :configuration
    #   <p>Configuration information to connect your data source repository to Amazon Q Business. Use this parameter to provide a JSON schema with configuration information specific to your data source connector.</p> <p>Each data source has a JSON schema provided by Amazon Q Business that you must use. For example, the Amazon S3 and Web Crawler connectors require the following JSON schemas:</p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/s3-api.html">Amazon S3 JSON schema</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/web-crawler-api.html">Web Crawler JSON schema</a> </p> </li> </ul> <p>You can find configuration templates for your specific data source using the following steps:</p> <ol> <li> <p>Navigate to the <a href="https://docs.aws.amazon.com/amazonq/latest/business-use-dg/connectors-list.html">Supported connectors</a> page in the Amazon Q Business User Guide, and select the data source of your choice.</p> </li> <li> <p>Then, from your specific data source connector page, select <b>Using the API</b>. You will find the JSON schema for your data source, including parameter descriptions, in this section.</p> </li> </ol>
    # @option params [Types::DataSourceVpcConfiguration] :vpc_configuration
    #   <p>Configuration information for an Amazon VPC (Virtual Private Cloud) to connect to your data source. For more information, see <a href="https://docs.aws.amazon.com/amazonq/latest/business-use-dg/connector-vpc.html">Using Amazon VPC with Amazon Q Business connectors</a>.</p>
    # @option params [String] :description
    #   <p>A description for the data source connector.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of key-value pairs that identify or categorize the data source connector. You can also use tags to help control access to the data source connector. Tag keys and values can consist of Unicode letters, digits, white space, and any of the following symbols: _ . : / = + - @.</p>
    # @option params [String] :sync_schedule
    #   <p>Sets the frequency for Amazon Q Business to check the documents in your data source repository and update your index. If you don't set a schedule, Amazon Q Business won't periodically update the index.</p> <p>Specify a <code>cron-</code> format schedule string or an empty string to indicate that the index is updated on demand. You can't specify the <code>Schedule</code> parameter when the <code>Type</code> parameter is set to <code>CUSTOM</code>. If you do, you receive a <code>ValidationException</code> exception. </p>
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM role with permission to access the data source and required resources. This field is required for all connector types except custom connectors, where it is optional.</p>
    # @option params [String] :client_token
    #   <p>A token you provide to identify a request to create a data source connector. Multiple calls to the <code>CreateDataSource</code> API with the same client token will create only one data source connector. </p>
    # @option params [Types::DocumentEnrichmentConfiguration] :document_enrichment_configuration
    #   <p>Provides the configuration information for altering document metadata and content during the document ingestion process.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/amazonq/latest/business-use-dg/custom-document-enrichment.html">Custom document enrichment</a>.</p>
    # @option params [Types::MediaExtractionConfiguration] :media_extraction_configuration
    #   <p>The configuration for extracting information from media in documents during ingestion.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "ApplicationId", # required
    #     index_id: "IndexId", # required
    #     display_name: "DataSourceName", # required
    #     configuration: ""null"", # required
    #     vpc_configuration: {
    #       subnet_ids: ["SubnetId"], # required
    #       security_group_ids: ["SecurityGroupId"], # required
    #     },
    #     description: "Description",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     sync_schedule: "SyncSchedule",
    #     role_arn: "RoleArn",
    #     client_token: "ClientToken",
    #     document_enrichment_configuration: {
    #       inline_configurations: [
    #         {
    #           condition: {
    #             key: "DocumentAttributeKey", # required
    #             operator: "GREATER_THAN" # One of: ["GREATER_THAN", "GREATER_THAN_OR_EQUALS", "LESS_THAN", "LESS_THAN_OR_EQUALS", "EQUALS", "NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "EXISTS", "NOT_EXISTS", "BEGINS_WITH"], # required
    #             value: {
    #               # One of:
    #               string_value: "DocumentAttributeStringValue",
    #               string_list_value: ["String"],
    #               long_value: 1,
    #               date_value: Time.now
    #             }
    #           },
    #           target: {
    #             key: "DocumentAttributeKey", # required
    #             value: {
    #               # One of:
    #               string_value: "DocumentAttributeStringValue",
    #               string_list_value: ["String"],
    #               long_value: 1,
    #               date_value: Time.now
    #             },
    #             attribute_value_operator: "DELETE" # One of: ["DELETE"]
    #           },
    #           document_content_operator: "DELETE" # One of: ["DELETE"]
    #         }
    #       ],
    #       pre_extraction_hook_configuration: {
    #         invocation_condition: {
    #           key: "DocumentAttributeKey", # required
    #           operator: "GREATER_THAN" # One of: ["GREATER_THAN", "GREATER_THAN_OR_EQUALS", "LESS_THAN", "LESS_THAN_OR_EQUALS", "EQUALS", "NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "EXISTS", "NOT_EXISTS", "BEGINS_WITH"], # required
    #           value: {
    #             # One of:
    #             string_value: "DocumentAttributeStringValue",
    #             string_list_value: ["String"],
    #             long_value: 1,
    #             date_value: Time.now
    #           }
    #         },
    #         lambda_arn: "LambdaArn",
    #         s3_bucket_name: "S3BucketName",
    #         role_arn: "RoleArn"
    #       },
    #       post_extraction_hook_configuration: {
    #         invocation_condition: {
    #           key: "DocumentAttributeKey", # required
    #           operator: "GREATER_THAN" # One of: ["GREATER_THAN", "GREATER_THAN_OR_EQUALS", "LESS_THAN", "LESS_THAN_OR_EQUALS", "EQUALS", "NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "EXISTS", "NOT_EXISTS", "BEGINS_WITH"], # required
    #           value: {
    #             # One of:
    #             string_value: "DocumentAttributeStringValue",
    #             string_list_value: ["String"],
    #             long_value: 1,
    #             date_value: Time.now
    #           }
    #         },
    #         lambda_arn: "LambdaArn",
    #         s3_bucket_name: "S3BucketName",
    #         role_arn: "RoleArn"
    #       }
    #     },
    #     media_extraction_configuration: {
    #       image_extraction_configuration: {
    #         image_extraction_status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #       },
    #       audio_extraction_configuration: {
    #         audio_extraction_status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #       },
    #       video_extraction_configuration: {
    #         video_extraction_status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.create_data_source(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     data_source_id: "DataSourceId",
    #     data_source_arn: "DataSourceArn"
    #   }
    # @return [Types::CreateDataSourceResponse]
    def create_data_source(params = {}, options = {})
      request = build_request(:create_data_source, params)
      request.send_request(options)
    end

    # <p>Creates an Amazon Q Business index.</p> <p>To determine if index creation has completed, check the <code>Status</code> field returned from a call to <code>DescribeIndex</code>. The <code>Status</code> field is set to <code>ACTIVE</code> when the index is ready to use.</p> <p>Once the index is active, you can index your documents using the <a href="https://docs.aws.amazon.com/amazonq/latest/api-reference/API_BatchPutDocument.html"> <code>BatchPutDocument</code> </a> API or the <a href="https://docs.aws.amazon.com/amazonq/latest/api-reference/API_CreateDataSource.html"> <code>CreateDataSource</code> </a> API.</p>
    # @param [Hash, Types::CreateIndexRequest] params
    # @option params [String] :application_id
    #   <p>The identifier of the Amazon Q Business application using the index.</p>
    # @option params [String] :display_name
    #   <p>A name for the Amazon Q Business index.</p>
    # @option params [String] :description
    #   <p>A description for the Amazon Q Business index.</p>
    # @option params [String] :type
    #   <p>The index type that's suitable for your needs. For more information on what's included in each type of index, see <a href="https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/tiers.html#index-tiers">Amazon Q Business tiers</a>.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of key-value pairs that identify or categorize the index. You can also use tags to help control access to the index. Tag keys and values can consist of Unicode letters, digits, white space, and any of the following symbols: _ . : / = + - @.</p>
    # @option params [Types::IndexCapacityConfiguration] :capacity_configuration
    #   <p>The capacity units you want to provision for your index. You can add and remove capacity to fit your usage needs.</p>
    # @option params [String] :client_token
    #   <p>A token that you provide to identify the request to create an index. Multiple calls to the <code>CreateIndex</code> API with the same client token will create only one index.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "ApplicationId", # required
    #     display_name: "IndexName", # required
    #     description: "Description",
    #     type: "ENTERPRISE" # One of: ["ENTERPRISE", "STARTER"],
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     capacity_configuration: {
    #       units: 1
    #     },
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_index(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     index_id: "IndexId",
    #     index_arn: "IndexArn"
    #   }
    # @return [Types::CreateIndexResponse]
    def create_index(params = {}, options = {})
      request = build_request(:create_index, params)
      request.send_request(options)
    end

    # <p>Creates an Amazon Q Business plugin.</p>
    # @param [Hash, Types::CreatePluginRequest] params
    # @option params [String] :application_id
    #   <p>The identifier of the application that will contain the plugin.</p>
    # @option params [String] :display_name
    #   <p>A the name for your plugin.</p>
    # @option params [String] :type
    #   <p>The type of plugin you want to create.</p>
    # @option params [Types::PluginAuthConfiguration] :auth_configuration
    #   <p>Authentication configuration information for an Amazon Q Business plugin.</p>
    # @option params [String] :server_url
    #   <p>The source URL used for plugin configuration.</p>
    # @option params [Types::CustomPluginConfiguration] :custom_plugin_configuration
    #   <p>Contains configuration for a custom plugin.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of key-value pairs that identify or categorize the data source connector. You can also use tags to help control access to the data source connector. Tag keys and values can consist of Unicode letters, digits, white space, and any of the following symbols: _ . : / = + - @.</p>
    # @option params [String] :client_token
    #   <p>A token that you provide to identify the request to create your Amazon Q Business plugin.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "ApplicationId", # required
    #     display_name: "PluginName", # required
    #     type: "SERVICE_NOW" # One of: ["SERVICE_NOW", "SALESFORCE", "JIRA", "ZENDESK", "CUSTOM", "QUICKSIGHT", "SERVICENOW_NOW_PLATFORM", "JIRA_CLOUD", "SALESFORCE_CRM", "ZENDESK_SUITE", "ATLASSIAN_CONFLUENCE", "GOOGLE_CALENDAR", "MICROSOFT_TEAMS", "MICROSOFT_EXCHANGE", "PAGERDUTY_ADVANCE", "SMARTSHEET", "ASANA"], # required
    #     auth_configuration: { # required
    #       # One of:
    #       basic_auth_configuration: {
    #         secret_arn: "SecretArn", # required
    #         role_arn: "RoleArn", # required
    #       },
    #       o_auth2_client_credential_configuration: {
    #         secret_arn: "SecretArn", # required
    #         role_arn: "RoleArn", # required
    #         authorization_url: "Url",
    #         token_url: "Url"
    #       },
    #       no_auth_configuration: {
    #       },
    #       idc_auth_configuration: {
    #         idc_application_arn: "IdcApplicationArn", # required
    #         role_arn: "RoleArn", # required
    #       }
    #     },
    #     server_url: "Url",
    #     custom_plugin_configuration: {
    #       description: "PluginDescription", # required
    #       api_schema_type: "OPEN_API_V3" # One of: ["OPEN_API_V3"], # required
    #       api_schema: {
    #         # One of:
    #         payload: "Payload",
    #         s3: {
    #           bucket: "S3BucketName", # required
    #           key: "S3ObjectKey", # required
    #         }
    #       }
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_plugin(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     plugin_id: "PluginId",
    #     plugin_arn: "PluginArn",
    #     build_status: "READY" # One of: ["READY", "CREATE_IN_PROGRESS", "CREATE_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_FAILED", "DELETE_IN_PROGRESS", "DELETE_FAILED"]
    #   }
    # @return [Types::CreatePluginResponse]
    def create_plugin(params = {}, options = {})
      request = build_request(:create_plugin, params)
      request.send_request(options)
    end

    # <p>Adds a retriever to your Amazon Q Business application.</p>
    # @param [Hash, Types::CreateRetrieverRequest] params
    # @option params [String] :application_id
    #   <p>The identifier of your Amazon Q Business application.</p>
    # @option params [String] :type
    #   <p>The type of retriever you are using.</p>
    # @option params [String] :display_name
    #   <p>The name of your retriever.</p>
    # @option params [Types::RetrieverConfiguration] :configuration
    #   <p>Provides information on how the retriever used for your Amazon Q Business application is configured.</p>
    # @option params [String] :role_arn
    #   <p>The ARN of an IAM role used by Amazon Q Business to access the basic authentication credentials stored in a Secrets Manager secret.</p>
    # @option params [String] :client_token
    #   <p>A token that you provide to identify the request to create your Amazon Q Business application retriever.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of key-value pairs that identify or categorize the retriever. You can also use tags to help control access to the retriever. Tag keys and values can consist of Unicode letters, digits, white space, and any of the following symbols: _ . : / = + - @.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "ApplicationId", # required
    #     type: "NATIVE_INDEX" # One of: ["NATIVE_INDEX", "KENDRA_INDEX"], # required
    #     display_name: "RetrieverName", # required
    #     configuration: { # required
    #       # One of:
    #       native_index_configuration: {
    #         index_id: "IndexId", # required
    #         version: 1,
    #         boosting_override: {
    #           "DocumentAttributeKey" => {
    #             # One of:
    #             number_configuration: {
    #               boosting_level: "NONE" # One of: ["NONE", "LOW", "MEDIUM", "HIGH", "VERY_HIGH", "ONE", "TWO"], # required
    #               boosting_type: "PRIORITIZE_LARGER_VALUES" # One of: ["PRIORITIZE_LARGER_VALUES", "PRIORITIZE_SMALLER_VALUES"]
    #             },
    #             string_configuration: {
    #               boosting_level: "NONE" # One of: ["NONE", "LOW", "MEDIUM", "HIGH", "VERY_HIGH", "ONE", "TWO"], # required
    #               attribute_value_boosting: {
    #                 "String" => "LOW" # One of: ["LOW", "MEDIUM", "HIGH", "VERY_HIGH", "ONE", "TWO", "THREE", "FOUR", "FIVE"]
    #               }
    #             },
    #             date_configuration: {
    #               boosting_level: "NONE" # One of: ["NONE", "LOW", "MEDIUM", "HIGH", "VERY_HIGH", "ONE", "TWO"], # required
    #               boosting_duration_in_seconds: 1
    #             },
    #             string_list_configuration: {
    #               boosting_level: "NONE" # One of: ["NONE", "LOW", "MEDIUM", "HIGH", "VERY_HIGH", "ONE", "TWO"], # required
    #             }
    #           }
    #         }
    #       },
    #       kendra_index_configuration: {
    #         index_id: "KendraIndexId", # required
    #       }
    #     },
    #     role_arn: "RoleArn",
    #     client_token: "ClientToken",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_retriever(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     retriever_id: "RetrieverId",
    #     retriever_arn: "RetrieverArn"
    #   }
    # @return [Types::CreateRetrieverResponse]
    def create_retriever(params = {}, options = {})
      request = build_request(:create_retriever, params)
      request.send_request(options)
    end

    # <p>Subscribes an IAM Identity Center user or a group to a pricing tier for an Amazon Q Business application.</p> <p>Amazon Q Business offers two subscription tiers: <code>Q_LITE</code> and <code>Q_BUSINESS</code>. Subscription tier determines feature access for the user. For more information on subscriptions and pricing tiers, see <a href="https://aws.amazon.com/q/business/pricing/">Amazon Q Business pricing</a>.</p> <note> <p>For an example IAM role policy for assigning subscriptions, see <a href="https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/setting-up.html#permissions">Set up required permissions</a> in the Amazon Q Business User Guide.</p> </note>
    # @param [Hash, Types::CreateSubscriptionRequest] params
    # @option params [String] :application_id
    #   <p>The identifier of the Amazon Q Business application the subscription should be added to.</p>
    # @option params [Types::SubscriptionPrincipal] :principal
    #   <p>The IAM Identity Center <code>UserId</code> or <code>GroupId</code> of a user or group in the IAM Identity Center instance connected to the Amazon Q Business application.</p>
    # @option params [String] :type
    #   <p>The type of Amazon Q Business subscription you want to create.</p>
    # @option params [String] :client_token
    #   <p>A token that you provide to identify the request to create a subscription for your Amazon Q Business application.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "ApplicationId", # required
    #     principal: { # required
    #       # One of:
    #       user: "UserIdentifier",
    #       group: "GroupIdentifier"
    #     },
    #     type: "Q_LITE" # One of: ["Q_LITE", "Q_BUSINESS"], # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_subscription(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     subscription_id: "SubscriptionId",
    #     subscription_arn: "SubscriptionArn",
    #     current_subscription: {
    #       type: "Q_LITE" # One of: ["Q_LITE", "Q_BUSINESS"]
    #     },
    #     next_subscription: {
    #       type: "Q_LITE" # One of: ["Q_LITE", "Q_BUSINESS"]
    #     }
    #   }
    # @return [Types::CreateSubscriptionResponse]
    def create_subscription(params = {}, options = {})
      request = build_request(:create_subscription, params)
      request.send_request(options)
    end

    # <p>Creates a universally unique identifier (UUID) mapped to a list of local user ids within an application.</p>
    # @param [Hash, Types::CreateUserRequest] params
    # @option params [String] :application_id
    #   <p>The identifier of the application for which the user mapping will be created.</p>
    # @option params [String] :user_id
    #   <p>The user emails attached to a user mapping.</p>
    # @option params [Array<Types::UserAlias>] :user_aliases
    #   <p>The list of user aliases in the mapping.</p>
    # @option params [String] :client_token
    #   <p>A token that you provide to identify the request to create your Amazon Q Business user mapping.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "ApplicationId", # required
    #     user_id: "String", # required
    #     user_aliases: [
    #       {
    #         index_id: "IndexId",
    #         data_source_id: "DataSourceId",
    #         user_id: "String", # required
    #       }
    #     ],
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_user(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::CreateUserResponse]
    def create_user(params = {}, options = {})
      request = build_request(:create_user, params)
      request.send_request(options)
    end

    # <p>Creates an Amazon Q Business web experience.</p>
    # @param [Hash, Types::CreateWebExperienceRequest] params
    # @option params [String] :application_id
    #   <p>The identifier of the Amazon Q Business web experience.</p>
    # @option params [String] :title
    #   <p>The title for your Amazon Q Business web experience.</p>
    # @option params [String] :subtitle
    #   <p>A subtitle to personalize your Amazon Q Business web experience.</p>
    # @option params [String] :welcome_message
    #   <p>The customized welcome message for end users of an Amazon Q Business web experience.</p>
    # @option params [String] :sample_prompts_control_mode
    #   <p>Determines whether sample prompts are enabled in the web experience for an end user.</p>
    # @option params [Array<String>] :origins
    #   <p>Sets the website domain origins that are allowed to embed the Amazon Q Business web experience. The <i>domain origin</i> refers to the base URL for accessing a website including the protocol (<code>http/https</code>), the domain name, and the port number (if specified). </p> <note> <p>You must only submit a <i>base URL</i> and not a full path. For example, <code>https://docs.aws.amazon.com</code>.</p> </note>
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of the service role attached to your web experience.</p> <note> <p>The <code>roleArn</code> parameter is required when your Amazon Q Business application is created with IAM Identity Center. It is not required for SAML-based applications.</p> </note>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of key-value pairs that identify or categorize your Amazon Q Business web experience. You can also use tags to help control access to the web experience. Tag keys and values can consist of Unicode letters, digits, white space, and any of the following symbols: _ . : / = + - @.</p>
    # @option params [String] :client_token
    #   <p>A token you provide to identify a request to create an Amazon Q Business web experience. </p>
    # @option params [Types::IdentityProviderConfiguration] :identity_provider_configuration
    #   <p>Information about the identity provider (IdP) used to authenticate end users of an Amazon Q Business web experience.</p>
    # @option params [Types::BrowserExtensionConfiguration] :browser_extension_configuration
    #   <p>The browser extension configuration for an Amazon Q Business web experience.</p> <note> <p> For Amazon Q Business application using external OIDC-compliant identity providers (IdPs). The IdP administrator must add the browser extension sign-in redirect URLs to the IdP application. For more information, see <a href="https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/browser-extensions.html">Configure external OIDC identity provider for your browser extensions.</a>. </p> </note>
    # @option params [Types::CustomizationConfiguration] :customization_configuration
    #   <p>Sets the custom logo, favicon, font, and color used in the Amazon Q web experience. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "ApplicationId", # required
    #     title: "WebExperienceTitle",
    #     subtitle: "WebExperienceSubtitle",
    #     welcome_message: "WebExperienceWelcomeMessage",
    #     sample_prompts_control_mode: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #     origins: ["Origin"],
    #     role_arn: "RoleArn",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     client_token: "ClientToken",
    #     identity_provider_configuration: {
    #       # One of:
    #       saml_configuration: {
    #         authentication_url: "SamlAuthenticationUrl", # required
    #       },
    #       open_id_connect_configuration: {
    #         secrets_arn: "SecretArn", # required
    #         secrets_role: "RoleArn", # required
    #       }
    #     },
    #     browser_extension_configuration: {
    #       enabled_browser_extensions: ["BrowserExtension"], # required
    #     },
    #     customization_configuration: {
    #       custom_css_url: "CustomCSSUrl",
    #       logo_url: "LogoUrl",
    #       font_url: "FontUrl",
    #       favicon_url: "FaviconUrl"
    #     }
    #   }
    #   options = {}
    #   response = client.create_web_experience(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     web_experience_id: "WebExperienceId",
    #     web_experience_arn: "WebExperienceArn"
    #   }
    # @return [Types::CreateWebExperienceResponse]
    def create_web_experience(params = {}, options = {})
      request = build_request(:create_web_experience, params)
      request.send_request(options)
    end

    # <p>Deletes an Amazon Q Business application.</p>
    # @param [Hash, Types::DeleteApplicationRequest] params
    # @option params [String] :application_id
    #   <p>The identifier of the Amazon Q Business application.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "ApplicationId", # required
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

    # <p>Deletes an attachment associated with a specific Amazon Q Business conversation.</p>
    # @param [Hash, Types::DeleteAttachmentRequest] params
    # @option params [String] :application_id
    #   <p>The unique identifier for the Amazon Q Business application environment.</p>
    # @option params [String] :conversation_id
    #   <p>The unique identifier of the conversation.</p>
    # @option params [String] :attachment_id
    #   <p>The unique identifier for the attachment.</p>
    # @option params [String] :user_id
    #   <p>The unique identifier of the user involved in the conversation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "ApplicationId", # required
    #     conversation_id: "ConversationId", # required
    #     attachment_id: "AttachmentId", # required
    #     user_id: "UserId"
    #   }
    #   options = {}
    #   response = client.delete_attachment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteAttachmentResponse]
    def delete_attachment(params = {}, options = {})
      request = build_request(:delete_attachment, params)
      request.send_request(options)
    end

    # <p>Deletes chat controls configured for an existing Amazon Q Business application.</p>
    # @param [Hash, Types::DeleteChatControlsConfigurationRequest] params
    # @option params [String] :application_id
    #   <p>The identifier of the application the chat controls have been configured for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "ApplicationId", # required
    #   }
    #   options = {}
    #   response = client.delete_chat_controls_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteChatControlsConfigurationResponse]
    def delete_chat_controls_configuration(params = {}, options = {})
      request = build_request(:delete_chat_controls_configuration, params)
      request.send_request(options)
    end

    # <p>Deletes a specified chat response configuration from an Amazon Q Business application.</p>
    # @param [Hash, Types::DeleteChatResponseConfigurationRequest] params
    # @option params [String] :application_id
    #   <p>The unique identifier of theAmazon Q Business application from which to delete the chat response configuration.</p>
    # @option params [String] :chat_response_configuration_id
    #   <p>The unique identifier of the chat response configuration to delete from the specified application. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "ApplicationId", # required
    #     chat_response_configuration_id: "ChatResponseConfigurationId", # required
    #   }
    #   options = {}
    #   response = client.delete_chat_response_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteChatResponseConfigurationResponse]
    def delete_chat_response_configuration(params = {}, options = {})
      request = build_request(:delete_chat_response_configuration, params)
      request.send_request(options)
    end

    # <p>Deletes an Amazon Q Business web experience conversation.</p>
    # @param [Hash, Types::DeleteConversationRequest] params
    # @option params [String] :conversation_id
    #   <p>The identifier of the Amazon Q Business web experience conversation being deleted.</p>
    # @option params [String] :application_id
    #   <p>The identifier of the Amazon Q Business application associated with the conversation.</p>
    # @option params [String] :user_id
    #   <p>The identifier of the user who is deleting the conversation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     conversation_id: "ConversationId", # required
    #     application_id: "ApplicationId", # required
    #     user_id: "UserId"
    #   }
    #   options = {}
    #   response = client.delete_conversation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteConversationResponse]
    def delete_conversation(params = {}, options = {})
      request = build_request(:delete_conversation, params)
      request.send_request(options)
    end

    # <p>Deletes a specified data accessor. This operation permanently removes the data accessor and its associated IAM Identity Center application. Any access granted to the ISV through this data accessor will be revoked.</p>
    # @param [Hash, Types::DeleteDataAccessorRequest] params
    # @option params [String] :application_id
    #   <p>The unique identifier of the Amazon Q Business application.</p>
    # @option params [String] :data_accessor_id
    #   <p>The unique identifier of the data accessor to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "ApplicationId", # required
    #     data_accessor_id: "DataAccessorId", # required
    #   }
    #   options = {}
    #   response = client.delete_data_accessor(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteDataAccessorResponse]
    def delete_data_accessor(params = {}, options = {})
      request = build_request(:delete_data_accessor, params)
      request.send_request(options)
    end

    # <p>Deletes an Amazon Q Business data source connector. While the data source is being deleted, the <code>Status</code> field returned by a call to the <code>DescribeDataSource</code> API is set to <code>DELETING</code>. </p>
    # @param [Hash, Types::DeleteDataSourceRequest] params
    # @option params [String] :application_id
    #   <p>The identifier of the Amazon Q Business application used with the data source connector.</p>
    # @option params [String] :index_id
    #   <p>The identifier of the index used with the data source connector.</p>
    # @option params [String] :data_source_id
    #   <p>The identifier of the data source connector that you want to delete. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "ApplicationId", # required
    #     index_id: "IndexId", # required
    #     data_source_id: "DataSourceId", # required
    #   }
    #   options = {}
    #   response = client.delete_data_source(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteDataSourceResponse]
    def delete_data_source(params = {}, options = {})
      request = build_request(:delete_data_source, params)
      request.send_request(options)
    end

    # <p>Deletes a group so that all users and sub groups that belong to the group can no longer access documents only available to that group. For example, after deleting the group "Summer Interns", all interns who belonged to that group no longer see intern-only documents in their chat results. </p> <p>If you want to delete, update, or replace users or sub groups of a group, you need to use the <code>PutGroup</code> operation. For example, if a user in the group "Engineering" leaves the engineering team and another user takes their place, you provide an updated list of users or sub groups that belong to the "Engineering" group when calling <code>PutGroup</code>.</p>
    # @param [Hash, Types::DeleteGroupRequest] params
    # @option params [String] :application_id
    #   <p>The identifier of the application in which the group mapping belongs.</p>
    # @option params [String] :index_id
    #   <p>The identifier of the index you want to delete the group from.</p>
    # @option params [String] :group_name
    #   <p>The name of the group you want to delete.</p>
    # @option params [String] :data_source_id
    #   <p>The identifier of the data source linked to the group</p> <p>A group can be tied to multiple data sources. You can delete a group from accessing documents in a certain data source. For example, the groups "Research", "Engineering", and "Sales and Marketing" are all tied to the company's documents stored in the data sources Confluence and Salesforce. You want to delete "Research" and "Engineering" groups from Salesforce, so that these groups cannot access customer-related documents stored in Salesforce. Only "Sales and Marketing" should access documents in the Salesforce data source.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "ApplicationId", # required
    #     index_id: "IndexId", # required
    #     group_name: "GroupName", # required
    #     data_source_id: "DataSourceId"
    #   }
    #   options = {}
    #   response = client.delete_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteGroupResponse]
    def delete_group(params = {}, options = {})
      request = build_request(:delete_group, params)
      request.send_request(options)
    end

    # <p>Deletes an Amazon Q Business index.</p>
    # @param [Hash, Types::DeleteIndexRequest] params
    # @option params [String] :application_id
    #   <p>The identifier of the Amazon Q Business application the Amazon Q Business index is linked to.</p>
    # @option params [String] :index_id
    #   <p>The identifier of the Amazon Q Business index.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "ApplicationId", # required
    #     index_id: "IndexId", # required
    #   }
    #   options = {}
    #   response = client.delete_index(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteIndexResponse]
    def delete_index(params = {}, options = {})
      request = build_request(:delete_index, params)
      request.send_request(options)
    end

    # <p>Deletes an Amazon Q Business plugin.</p>
    # @param [Hash, Types::DeletePluginRequest] params
    # @option params [String] :application_id
    #   <p>The identifier the application attached to the Amazon Q Business plugin.</p>
    # @option params [String] :plugin_id
    #   <p>The identifier of the plugin being deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "ApplicationId", # required
    #     plugin_id: "PluginId", # required
    #   }
    #   options = {}
    #   response = client.delete_plugin(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeletePluginResponse]
    def delete_plugin(params = {}, options = {})
      request = build_request(:delete_plugin, params)
      request.send_request(options)
    end

    # <p>Deletes the retriever used by an Amazon Q Business application.</p>
    # @param [Hash, Types::DeleteRetrieverRequest] params
    # @option params [String] :application_id
    #   <p>The identifier of the Amazon Q Business application using the retriever.</p>
    # @option params [String] :retriever_id
    #   <p>The identifier of the retriever being deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "ApplicationId", # required
    #     retriever_id: "RetrieverId", # required
    #   }
    #   options = {}
    #   response = client.delete_retriever(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteRetrieverResponse]
    def delete_retriever(params = {}, options = {})
      request = build_request(:delete_retriever, params)
      request.send_request(options)
    end

    # <p>Deletes a user by email id.</p>
    # @param [Hash, Types::DeleteUserRequest] params
    # @option params [String] :application_id
    #   <p>The identifier of the application from which the user is being deleted.</p>
    # @option params [String] :user_id
    #   <p>The user email being deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "ApplicationId", # required
    #     user_id: "String", # required
    #   }
    #   options = {}
    #   response = client.delete_user(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteUserResponse]
    def delete_user(params = {}, options = {})
      request = build_request(:delete_user, params)
      request.send_request(options)
    end

    # <p>Deletes an Amazon Q Business web experience.</p>
    # @param [Hash, Types::DeleteWebExperienceRequest] params
    # @option params [String] :application_id
    #   <p>The identifier of the Amazon Q Business application linked to the Amazon Q Business web experience.</p>
    # @option params [String] :web_experience_id
    #   <p>The identifier of the Amazon Q Business web experience being deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "ApplicationId", # required
    #     web_experience_id: "WebExperienceId", # required
    #   }
    #   options = {}
    #   response = client.delete_web_experience(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteWebExperienceResponse]
    def delete_web_experience(params = {}, options = {})
      request = build_request(:delete_web_experience, params)
      request.send_request(options)
    end

    # <p>Removes a permission policy from a Amazon Q Business application, revoking the cross-account access that was previously granted to an ISV. This operation deletes the specified policy statement from the application's permission policy.</p>
    # @param [Hash, Types::DisassociatePermissionRequest] params
    # @option params [String] :application_id
    #   <p>The unique identifier of the Amazon Q Business application.</p>
    # @option params [String] :statement_id
    #   <p>The statement ID of the permission to remove.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "ApplicationId", # required
    #     statement_id: "String", # required
    #   }
    #   options = {}
    #   response = client.disassociate_permission(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DisassociatePermissionResponse]
    def disassociate_permission(params = {}, options = {})
      request = build_request(:disassociate_permission, params)
      request.send_request(options)
    end

    # <p>Gets information about an existing Amazon Q Business application.</p>
    # @param [Hash, Types::GetApplicationRequest] params
    # @option params [String] :application_id
    #   <p>The identifier of the Amazon Q Business application.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "ApplicationId", # required
    #   }
    #   options = {}
    #   response = client.get_application(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     display_name: "ApplicationName",
    #     application_id: "ApplicationId",
    #     application_arn: "ApplicationArn",
    #     identity_type: "AWS_IAM_IDP_SAML" # One of: ["AWS_IAM_IDP_SAML", "AWS_IAM_IDP_OIDC", "AWS_IAM_IDC", "AWS_QUICKSIGHT_IDP", "ANONYMOUS"],
    #     iam_identity_provider_arn: "IAMIdentityProviderArn",
    #     identity_center_application_arn: "IdcApplicationArn",
    #     role_arn: "RoleArn",
    #     status: "CREATING" # One of: ["CREATING", "ACTIVE", "DELETING", "FAILED", "UPDATING"],
    #     description: "Description",
    #     encryption_configuration: {
    #       kms_key_id: "KmsKeyId"
    #     },
    #     created_at: Time.now,
    #     updated_at: Time.now,
    #     error: {
    #       error_message: "ErrorMessage",
    #       error_code: "InternalError" # One of: ["InternalError", "InvalidRequest", "ResourceInactive", "ResourceNotFound"]
    #     },
    #     attachments_configuration: {
    #       attachments_control_mode: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #     },
    #     q_apps_configuration: {
    #       q_apps_control_mode: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #     },
    #     personalization_configuration: {
    #       personalization_control_mode: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #     },
    #     auto_subscription_configuration: {
    #       auto_subscribe: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #       default_subscription_type: "Q_LITE" # One of: ["Q_LITE", "Q_BUSINESS"]
    #     },
    #     client_ids_for_oidc: ["ClientIdForOIDC"],
    #     quick_sight_configuration: {
    #       client_namespace: "ClientNamespace", # required
    #     }
    #   }
    # @return [Types::GetApplicationResponse]
    def get_application(params = {}, options = {})
      request = build_request(:get_application, params)
      request.send_request(options)
    end

    # <p>Gets information about chat controls configured for an existing Amazon Q Business application.</p>
    # @param [Hash, Types::GetChatControlsConfigurationRequest] params
    # @option params [String] :application_id
    #   <p>The identifier of the application for which the chat controls are configured.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of configured chat controls to return.</p>
    # @option params [String] :next_token
    #   <p>If the <code>maxResults</code> response was incomplete because there is more data to retrieve, Amazon Q Business returns a pagination token in the response. You can use this pagination token to retrieve the next set of Amazon Q Business chat controls configured.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "ApplicationId", # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.get_chat_controls_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     response_scope: "ENTERPRISE_CONTENT_ONLY" # One of: ["ENTERPRISE_CONTENT_ONLY", "EXTENDED_KNOWLEDGE_ENABLED"],
    #     orchestration_configuration: {
    #       control: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #     },
    #     blocked_phrases: {
    #       blocked_phrases: ["BlockedPhrase"],
    #       system_message_override: "SystemMessageOverride"
    #     },
    #     topic_configurations: [
    #       {
    #         name: "TopicConfigurationName", # required
    #         description: "TopicDescription",
    #         example_chat_messages: ["ExampleChatMessage"],
    #         rules: [ # required
    #           {
    #             included_users_and_groups: {
    #               user_ids: ["String"],
    #               user_groups: ["String"]
    #             },
    #             excluded_users_and_groups: {
    #               user_ids: ["String"],
    #               user_groups: ["String"]
    #             },
    #             rule_type: "CONTENT_BLOCKER_RULE" # One of: ["CONTENT_BLOCKER_RULE", "CONTENT_RETRIEVAL_RULE"], # required
    #             rule_configuration: {
    #               # One of:
    #               content_blocker_rule: {
    #                 system_message_override: "SystemMessageOverride"
    #               },
    #               content_retrieval_rule: {
    #                 eligible_data_sources: [
    #                   {
    #                     index_id: "IndexId",
    #                     data_source_id: "DataSourceId"
    #                   }
    #                 ]
    #               }
    #             }
    #           }
    #         ]
    #       }
    #     ],
    #     creator_mode_configuration: {
    #       creator_mode_control: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #     },
    #     next_token: "NextToken",
    #     hallucination_reduction_configuration: {
    #       hallucination_reduction_control: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #     }
    #   }
    # @return [Types::GetChatControlsConfigurationResponse]
    def get_chat_controls_configuration(params = {}, options = {})
      request = build_request(:get_chat_controls_configuration, params)
      request.send_request(options)
    end

    # <p>Retrieves detailed information about a specific chat response configuration from an Amazon Q Business application. This operation returns the complete configuration settings and metadata.</p>
    # @param [Hash, Types::GetChatResponseConfigurationRequest] params
    # @option params [String] :application_id
    #   <p>The unique identifier of the Amazon Q Business application containing the chat response configuration to retrieve.</p>
    # @option params [String] :chat_response_configuration_id
    #   <p>The unique identifier of the chat response configuration to retrieve from the specified application.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "ApplicationId", # required
    #     chat_response_configuration_id: "ChatResponseConfigurationId", # required
    #   }
    #   options = {}
    #   response = client.get_chat_response_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     chat_response_configuration_id: "ChatResponseConfigurationId",
    #     chat_response_configuration_arn: "ChatResponseConfigurationArn",
    #     display_name: "DisplayName",
    #     created_at: Time.now,
    #     in_use_configuration: {
    #       response_configurations: {
    #         "ResponseConfigurationType" => {
    #           instruction_collection: {
    #             response_length: "Instruction",
    #             target_audience: "Instruction",
    #             perspective: "Instruction",
    #             output_style: "Instruction",
    #             identity: "Instruction",
    #             tone: "Instruction",
    #             custom_instructions: "Instruction",
    #             examples: "Instruction"
    #           }
    #         }
    #       },
    #       response_configuration_summary: "String",
    #       status: "CREATING" # One of: ["CREATING", "UPDATING", "FAILED", "ACTIVE"],
    #       error: {
    #         error_message: "ErrorMessage",
    #         error_code: "InternalError" # One of: ["InternalError", "InvalidRequest", "ResourceInactive", "ResourceNotFound"]
    #       },
    #       updated_at: Time.now
    #     },
    #     last_update_configuration: {
    #       response_configurations: {
    #         "ResponseConfigurationType" => {
    #           instruction_collection: {
    #             response_length: "Instruction",
    #             target_audience: "Instruction",
    #             perspective: "Instruction",
    #             output_style: "Instruction",
    #             identity: "Instruction",
    #             tone: "Instruction",
    #             custom_instructions: "Instruction",
    #             examples: "Instruction"
    #           }
    #         }
    #       },
    #       response_configuration_summary: "String",
    #       status: "CREATING" # One of: ["CREATING", "UPDATING", "FAILED", "ACTIVE"],
    #       error: {
    #         error_message: "ErrorMessage",
    #         error_code: "InternalError" # One of: ["InternalError", "InvalidRequest", "ResourceInactive", "ResourceNotFound"]
    #       },
    #       updated_at: Time.now
    #     }
    #   }
    # @return [Types::GetChatResponseConfigurationResponse]
    def get_chat_response_configuration(params = {}, options = {})
      request = build_request(:get_chat_response_configuration, params)
      request.send_request(options)
    end

    # <p>Retrieves information about a specified data accessor. This operation returns details about the data accessor, including its display name, unique identifier, Amazon Resource Name (ARN), the associated Amazon Q Business application and IAM Identity Center application, the IAM role for the ISV, the action configurations, and the timestamps for when the data accessor was created and last updated.</p>
    # @param [Hash, Types::GetDataAccessorRequest] params
    # @option params [String] :application_id
    #   <p>The unique identifier of the Amazon Q Business application.</p>
    # @option params [String] :data_accessor_id
    #   <p>The unique identifier of the data accessor to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "ApplicationId", # required
    #     data_accessor_id: "DataAccessorId", # required
    #   }
    #   options = {}
    #   response = client.get_data_accessor(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     display_name: "DataAccessorName",
    #     data_accessor_id: "DataAccessorId",
    #     data_accessor_arn: "DataAccessorArn",
    #     application_id: "ApplicationId",
    #     idc_application_arn: "IdcApplicationArn",
    #     principal: "PrincipalRoleArn",
    #     action_configurations: [
    #       {
    #         action: "QIamAction", # required
    #         filter_configuration: {
    #           document_attribute_filter: { # required
    #             and_all_filters: [
    #               {
    #                 # recursive AttributeFilter
    #               }
    #             ],
    #             or_all_filters: [
    #               {
    #                 # recursive AttributeFilter
    #               }
    #             ],
    #             not_filter: {
    #               # recursive AttributeFilter
    #             },
    #             equals_to: {
    #               name: "DocumentAttributeKey", # required
    #               value: { # required
    #                 # One of:
    #                 string_value: "DocumentAttributeStringValue",
    #                 string_list_value: ["String"],
    #                 long_value: 1,
    #                 date_value: Time.now
    #               }
    #             },
    #             contains_all: {
    #               name: "DocumentAttributeKey", # required
    #               value: { # required
    #                 # One of:
    #                 string_value: "DocumentAttributeStringValue",
    #                 string_list_value: ["String"],
    #                 long_value: 1,
    #                 date_value: Time.now
    #               }
    #             },
    #             contains_any: {
    #               name: "DocumentAttributeKey", # required
    #               value: { # required
    #                 # One of:
    #                 string_value: "DocumentAttributeStringValue",
    #                 string_list_value: ["String"],
    #                 long_value: 1,
    #                 date_value: Time.now
    #               }
    #             },
    #             greater_than: {
    #               name: "DocumentAttributeKey", # required
    #               value: { # required
    #                 # One of:
    #                 string_value: "DocumentAttributeStringValue",
    #                 string_list_value: ["String"],
    #                 long_value: 1,
    #                 date_value: Time.now
    #               }
    #             },
    #             greater_than_or_equals: {
    #               name: "DocumentAttributeKey", # required
    #               value: { # required
    #                 # One of:
    #                 string_value: "DocumentAttributeStringValue",
    #                 string_list_value: ["String"],
    #                 long_value: 1,
    #                 date_value: Time.now
    #               }
    #             },
    #             less_than: {
    #               name: "DocumentAttributeKey", # required
    #               value: { # required
    #                 # One of:
    #                 string_value: "DocumentAttributeStringValue",
    #                 string_list_value: ["String"],
    #                 long_value: 1,
    #                 date_value: Time.now
    #               }
    #             },
    #             less_than_or_equals: {
    #               name: "DocumentAttributeKey", # required
    #               value: { # required
    #                 # One of:
    #                 string_value: "DocumentAttributeStringValue",
    #                 string_list_value: ["String"],
    #                 long_value: 1,
    #                 date_value: Time.now
    #               }
    #             }
    #           }
    #         }
    #       }
    #     ],
    #     authentication_detail: {
    #       authentication_type: "AWS_IAM_IDC_TTI" # One of: ["AWS_IAM_IDC_TTI", "AWS_IAM_IDC_AUTH_CODE"], # required
    #       authentication_configuration: {
    #         # One of:
    #         idc_trusted_token_issuer_configuration: {
    #           idc_trusted_token_issuer_arn: "IdcTrustedTokenIssuerArn", # required
    #         }
    #       },
    #       external_ids: ["DataAccessorExternalId"]
    #     },
    #     created_at: Time.now,
    #     updated_at: Time.now
    #   }
    # @return [Types::GetDataAccessorResponse]
    def get_data_accessor(params = {}, options = {})
      request = build_request(:get_data_accessor, params)
      request.send_request(options)
    end

    # <p>Gets information about an existing Amazon Q Business data source connector.</p>
    # @param [Hash, Types::GetDataSourceRequest] params
    # @option params [String] :application_id
    #   <p>The identifier of the Amazon Q Business application.</p>
    # @option params [String] :index_id
    #   <p>The identfier of the index used with the data source connector.</p>
    # @option params [String] :data_source_id
    #   <p>The identifier of the data source connector.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "ApplicationId", # required
    #     index_id: "IndexId", # required
    #     data_source_id: "DataSourceId", # required
    #   }
    #   options = {}
    #   response = client.get_data_source(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     application_id: "ApplicationId",
    #     index_id: "IndexId",
    #     data_source_id: "DataSourceId",
    #     data_source_arn: "DataSourceArn",
    #     display_name: "DataSourceName",
    #     type: "String",
    #     configuration: ""null"",
    #     vpc_configuration: {
    #       subnet_ids: ["SubnetId"], # required
    #       security_group_ids: ["SecurityGroupId"], # required
    #     },
    #     created_at: Time.now,
    #     updated_at: Time.now,
    #     description: "Description",
    #     status: "PENDING_CREATION" # One of: ["PENDING_CREATION", "CREATING", "ACTIVE", "DELETING", "FAILED", "UPDATING"],
    #     sync_schedule: "SyncSchedule",
    #     role_arn: "RoleArn",
    #     error: {
    #       error_message: "ErrorMessage",
    #       error_code: "InternalError" # One of: ["InternalError", "InvalidRequest", "ResourceInactive", "ResourceNotFound"]
    #     },
    #     document_enrichment_configuration: {
    #       inline_configurations: [
    #         {
    #           condition: {
    #             key: "DocumentAttributeKey", # required
    #             operator: "GREATER_THAN" # One of: ["GREATER_THAN", "GREATER_THAN_OR_EQUALS", "LESS_THAN", "LESS_THAN_OR_EQUALS", "EQUALS", "NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "EXISTS", "NOT_EXISTS", "BEGINS_WITH"], # required
    #             value: {
    #               # One of:
    #               string_value: "DocumentAttributeStringValue",
    #               string_list_value: ["String"],
    #               long_value: 1,
    #               date_value: Time.now
    #             }
    #           },
    #           target: {
    #             key: "DocumentAttributeKey", # required
    #             value: {
    #               # One of:
    #               string_value: "DocumentAttributeStringValue",
    #               string_list_value: ["String"],
    #               long_value: 1,
    #               date_value: Time.now
    #             },
    #             attribute_value_operator: "DELETE" # One of: ["DELETE"]
    #           },
    #           document_content_operator: "DELETE" # One of: ["DELETE"]
    #         }
    #       ],
    #       pre_extraction_hook_configuration: {
    #         invocation_condition: {
    #           key: "DocumentAttributeKey", # required
    #           operator: "GREATER_THAN" # One of: ["GREATER_THAN", "GREATER_THAN_OR_EQUALS", "LESS_THAN", "LESS_THAN_OR_EQUALS", "EQUALS", "NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "EXISTS", "NOT_EXISTS", "BEGINS_WITH"], # required
    #           value: {
    #             # One of:
    #             string_value: "DocumentAttributeStringValue",
    #             string_list_value: ["String"],
    #             long_value: 1,
    #             date_value: Time.now
    #           }
    #         },
    #         lambda_arn: "LambdaArn",
    #         s3_bucket_name: "S3BucketName",
    #         role_arn: "RoleArn"
    #       },
    #       post_extraction_hook_configuration: {
    #         invocation_condition: {
    #           key: "DocumentAttributeKey", # required
    #           operator: "GREATER_THAN" # One of: ["GREATER_THAN", "GREATER_THAN_OR_EQUALS", "LESS_THAN", "LESS_THAN_OR_EQUALS", "EQUALS", "NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "EXISTS", "NOT_EXISTS", "BEGINS_WITH"], # required
    #           value: {
    #             # One of:
    #             string_value: "DocumentAttributeStringValue",
    #             string_list_value: ["String"],
    #             long_value: 1,
    #             date_value: Time.now
    #           }
    #         },
    #         lambda_arn: "LambdaArn",
    #         s3_bucket_name: "S3BucketName",
    #         role_arn: "RoleArn"
    #       }
    #     },
    #     media_extraction_configuration: {
    #       image_extraction_configuration: {
    #         image_extraction_status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #       },
    #       audio_extraction_configuration: {
    #         audio_extraction_status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #       },
    #       video_extraction_configuration: {
    #         video_extraction_status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #       }
    #     }
    #   }
    # @return [Types::GetDataSourceResponse]
    def get_data_source(params = {}, options = {})
      request = build_request(:get_data_source, params)
      request.send_request(options)
    end

    # <p>Retrieves the content of a document that was ingested into Amazon Q Business. This API validates user authorization against document ACLs before returning a pre-signed URL for secure document access. You can download or view source documents referenced in chat responses through the URL.</p>
    # @param [Hash, Types::GetDocumentContentRequest] params
    # @option params [String] :application_id
    #   <p>The unique identifier of the Amazon Q Business application containing the document. This ensures the request is scoped to the correct application environment and its associated security policies.</p>
    # @option params [String] :index_id
    #   <p>The identifier of the index where documents are indexed.</p>
    # @option params [String] :data_source_id
    #   <p>The identifier of the data source from which the document was ingested. This field is not present if the document is ingested by directly calling the BatchPutDocument API. If the document is from a file-upload data source, the datasource will be "uploaded-docs-file-stat-datasourceid".</p>
    # @option params [String] :document_id
    #   <p>The unique identifier of the document that is indexed via BatchPutDocument API or file-upload or connector sync. It is also found in chat or chatSync response.</p>
    # @option params [String] :output_format
    #   <p>Document outputFormat. Defaults to RAW if not selected.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "ApplicationId", # required
    #     index_id: "IndexId", # required
    #     data_source_id: "DataSourceId",
    #     document_id: "DocumentId", # required
    #     output_format: "RAW" # One of: ["RAW", "EXTRACTED"]
    #   }
    #   options = {}
    #   response = client.get_document_content(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     presigned_url: "String", # required
    #     mime_type: "String", # required
    #   }
    # @return [Types::GetDocumentContentResponse]
    def get_document_content(params = {}, options = {})
      request = build_request(:get_document_content, params)
      request.send_request(options)
    end

    # <p>Describes a group by group name.</p>
    # @param [Hash, Types::GetGroupRequest] params
    # @option params [String] :application_id
    #   <p>The identifier of the application id the group is attached to.</p>
    # @option params [String] :index_id
    #   <p>The identifier of the index the group is attached to.</p>
    # @option params [String] :group_name
    #   <p>The name of the group.</p>
    # @option params [String] :data_source_id
    #   <p>The identifier of the data source the group is attached to.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "ApplicationId", # required
    #     index_id: "IndexId", # required
    #     group_name: "GroupName", # required
    #     data_source_id: "DataSourceId"
    #   }
    #   options = {}
    #   response = client.get_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: {
    #       status: "FAILED" # One of: ["FAILED", "SUCCEEDED", "PROCESSING", "DELETING", "DELETED"],
    #       last_updated_at: Time.now,
    #       error_detail: {
    #         error_message: "ErrorMessage",
    #         error_code: "InternalError" # One of: ["InternalError", "InvalidRequest", "ResourceInactive", "ResourceNotFound"]
    #       }
    #     },
    #     status_history: [
    #       {
    #         status: "FAILED" # One of: ["FAILED", "SUCCEEDED", "PROCESSING", "DELETING", "DELETED"],
    #         last_updated_at: Time.now,
    #         error_detail: {
    #           error_message: "ErrorMessage",
    #           error_code: "InternalError" # One of: ["InternalError", "InvalidRequest", "ResourceInactive", "ResourceNotFound"]
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::GetGroupResponse]
    def get_group(params = {}, options = {})
      request = build_request(:get_group, params)
      request.send_request(options)
    end

    # <p>Gets information about an existing Amazon Q Business index.</p>
    # @param [Hash, Types::GetIndexRequest] params
    # @option params [String] :application_id
    #   <p>The identifier of the Amazon Q Business application connected to the index.</p>
    # @option params [String] :index_id
    #   <p>The identifier of the Amazon Q Business index you want information on.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "ApplicationId", # required
    #     index_id: "IndexId", # required
    #   }
    #   options = {}
    #   response = client.get_index(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     application_id: "ApplicationId",
    #     index_id: "IndexId",
    #     display_name: "IndexName",
    #     index_arn: "IndexArn",
    #     status: "CREATING" # One of: ["CREATING", "ACTIVE", "DELETING", "FAILED", "UPDATING"],
    #     type: "ENTERPRISE" # One of: ["ENTERPRISE", "STARTER"],
    #     description: "Description",
    #     created_at: Time.now,
    #     updated_at: Time.now,
    #     capacity_configuration: {
    #       units: 1
    #     },
    #     document_attribute_configurations: [
    #       {
    #         name: "DocumentMetadataConfigurationName",
    #         type: "STRING" # One of: ["STRING", "STRING_LIST", "NUMBER", "DATE"],
    #         search: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #       }
    #     ],
    #     error: {
    #       error_message: "ErrorMessage",
    #       error_code: "InternalError" # One of: ["InternalError", "InvalidRequest", "ResourceInactive", "ResourceNotFound"]
    #     },
    #     index_statistics: {
    #       text_document_statistics: {
    #         indexed_text_bytes: 1,
    #         indexed_text_document_count: 1
    #       }
    #     }
    #   }
    # @return [Types::GetIndexResponse]
    def get_index(params = {}, options = {})
      request = build_request(:get_index, params)
      request.send_request(options)
    end

    # <p>Returns the image bytes corresponding to a media object. If you have implemented your own application with the Chat and ChatSync APIs, and have enabled content extraction from visual data in Amazon Q Business, you use the GetMedia API operation to download the images so you can show them in your UI with responses.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/extracting-meaning-from-images.html">Extracting semantic meaning from images and visuals</a>.</p>
    # @param [Hash, Types::GetMediaRequest] params
    # @option params [String] :application_id
    #   <p>The identifier of the Amazon Q Business which contains the media object.</p>
    # @option params [String] :conversation_id
    #   <p>The identifier of the Amazon Q Business conversation.</p>
    # @option params [String] :message_id
    #   <p>The identifier of the Amazon Q Business message.</p>
    # @option params [String] :media_id
    #   <p>The identifier of the media object. You can find this in the <code>sourceAttributions</code> returned by the <code>Chat</code>, <code>ChatSync</code>, and <code>ListMessages</code> API responses.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "ApplicationId", # required
    #     conversation_id: "ConversationId", # required
    #     message_id: "MessageId", # required
    #     media_id: "MediaId", # required
    #   }
    #   options = {}
    #   response = client.get_media(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     media_bytes: "data",
    #     media_mime_type: "String"
    #   }
    # @return [Types::GetMediaResponse]
    def get_media(params = {}, options = {})
      request = build_request(:get_media, params)
      request.send_request(options)
    end

    # <p>Gets information about an existing Amazon Q Business plugin.</p>
    # @param [Hash, Types::GetPluginRequest] params
    # @option params [String] :application_id
    #   <p>The identifier of the application which contains the plugin.</p>
    # @option params [String] :plugin_id
    #   <p>The identifier of the plugin.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "ApplicationId", # required
    #     plugin_id: "PluginId", # required
    #   }
    #   options = {}
    #   response = client.get_plugin(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     application_id: "ApplicationId",
    #     plugin_id: "PluginId",
    #     display_name: "PluginName",
    #     type: "SERVICE_NOW" # One of: ["SERVICE_NOW", "SALESFORCE", "JIRA", "ZENDESK", "CUSTOM", "QUICKSIGHT", "SERVICENOW_NOW_PLATFORM", "JIRA_CLOUD", "SALESFORCE_CRM", "ZENDESK_SUITE", "ATLASSIAN_CONFLUENCE", "GOOGLE_CALENDAR", "MICROSOFT_TEAMS", "MICROSOFT_EXCHANGE", "PAGERDUTY_ADVANCE", "SMARTSHEET", "ASANA"],
    #     server_url: "Url",
    #     auth_configuration: {
    #       # One of:
    #       basic_auth_configuration: {
    #         secret_arn: "SecretArn", # required
    #         role_arn: "RoleArn", # required
    #       },
    #       o_auth2_client_credential_configuration: {
    #         secret_arn: "SecretArn", # required
    #         role_arn: "RoleArn", # required
    #         authorization_url: "Url",
    #         token_url: "Url"
    #       },
    #       no_auth_configuration: {
    #       },
    #       idc_auth_configuration: {
    #         idc_application_arn: "IdcApplicationArn", # required
    #         role_arn: "RoleArn", # required
    #       }
    #     },
    #     custom_plugin_configuration: {
    #       description: "PluginDescription", # required
    #       api_schema_type: "OPEN_API_V3" # One of: ["OPEN_API_V3"], # required
    #       api_schema: {
    #         # One of:
    #         payload: "Payload",
    #         s3: {
    #           bucket: "S3BucketName", # required
    #           key: "S3ObjectKey", # required
    #         }
    #       }
    #     },
    #     build_status: "READY" # One of: ["READY", "CREATE_IN_PROGRESS", "CREATE_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_FAILED", "DELETE_IN_PROGRESS", "DELETE_FAILED"],
    #     plugin_arn: "PluginArn",
    #     state: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #     created_at: Time.now,
    #     updated_at: Time.now
    #   }
    # @return [Types::GetPluginResponse]
    def get_plugin(params = {}, options = {})
      request = build_request(:get_plugin, params)
      request.send_request(options)
    end

    # <p>Retrieves the current permission policy for a Amazon Q Business application. The policy is returned as a JSON-formatted string and defines the IAM actions that are allowed or denied for the application's resources.</p>
    # @param [Hash, Types::GetPolicyRequest] params
    # @option params [String] :application_id
    #   <p>The unique identifier of the Amazon Q Business application.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "ApplicationId", # required
    #   }
    #   options = {}
    #   response = client.get_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy: "String"
    #   }
    # @return [Types::GetPolicyResponse]
    def get_policy(params = {}, options = {})
      request = build_request(:get_policy, params)
      request.send_request(options)
    end

    # <p>Gets information about an existing retriever used by an Amazon Q Business application.</p>
    # @param [Hash, Types::GetRetrieverRequest] params
    # @option params [String] :application_id
    #   <p>The identifier of the Amazon Q Business application using the retriever.</p>
    # @option params [String] :retriever_id
    #   <p>The identifier of the retriever.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "ApplicationId", # required
    #     retriever_id: "RetrieverId", # required
    #   }
    #   options = {}
    #   response = client.get_retriever(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     application_id: "ApplicationId",
    #     retriever_id: "RetrieverId",
    #     retriever_arn: "RetrieverArn",
    #     type: "NATIVE_INDEX" # One of: ["NATIVE_INDEX", "KENDRA_INDEX"],
    #     status: "CREATING" # One of: ["CREATING", "ACTIVE", "FAILED"],
    #     display_name: "RetrieverName",
    #     configuration: {
    #       # One of:
    #       native_index_configuration: {
    #         index_id: "IndexId", # required
    #         version: 1,
    #         boosting_override: {
    #           "DocumentAttributeKey" => {
    #             # One of:
    #             number_configuration: {
    #               boosting_level: "NONE" # One of: ["NONE", "LOW", "MEDIUM", "HIGH", "VERY_HIGH", "ONE", "TWO"], # required
    #               boosting_type: "PRIORITIZE_LARGER_VALUES" # One of: ["PRIORITIZE_LARGER_VALUES", "PRIORITIZE_SMALLER_VALUES"]
    #             },
    #             string_configuration: {
    #               boosting_level: "NONE" # One of: ["NONE", "LOW", "MEDIUM", "HIGH", "VERY_HIGH", "ONE", "TWO"], # required
    #               attribute_value_boosting: {
    #                 "String" => "LOW" # One of: ["LOW", "MEDIUM", "HIGH", "VERY_HIGH", "ONE", "TWO", "THREE", "FOUR", "FIVE"]
    #               }
    #             },
    #             date_configuration: {
    #               boosting_level: "NONE" # One of: ["NONE", "LOW", "MEDIUM", "HIGH", "VERY_HIGH", "ONE", "TWO"], # required
    #               boosting_duration_in_seconds: 1
    #             },
    #             string_list_configuration: {
    #               boosting_level: "NONE" # One of: ["NONE", "LOW", "MEDIUM", "HIGH", "VERY_HIGH", "ONE", "TWO"], # required
    #             }
    #           }
    #         }
    #       },
    #       kendra_index_configuration: {
    #         index_id: "KendraIndexId", # required
    #       }
    #     },
    #     role_arn: "RoleArn",
    #     created_at: Time.now,
    #     updated_at: Time.now
    #   }
    # @return [Types::GetRetrieverResponse]
    def get_retriever(params = {}, options = {})
      request = build_request(:get_retriever, params)
      request.send_request(options)
    end

    # <p>Describes the universally unique identifier (UUID) associated with a local user in a data source.</p>
    # @param [Hash, Types::GetUserRequest] params
    # @option params [String] :application_id
    #   <p>The identifier of the application connected to the user.</p>
    # @option params [String] :user_id
    #   <p>The user email address attached to the user.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "ApplicationId", # required
    #     user_id: "String", # required
    #   }
    #   options = {}
    #   response = client.get_user(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     user_aliases: [
    #       {
    #         index_id: "IndexId",
    #         data_source_id: "DataSourceId",
    #         user_id: "String", # required
    #       }
    #     ]
    #   }
    # @return [Types::GetUserResponse]
    def get_user(params = {}, options = {})
      request = build_request(:get_user, params)
      request.send_request(options)
    end

    # <p>Gets information about an existing Amazon Q Business web experience.</p>
    # @param [Hash, Types::GetWebExperienceRequest] params
    # @option params [String] :application_id
    #   <p>The identifier of the Amazon Q Business application linked to the web experience.</p>
    # @option params [String] :web_experience_id
    #   <p>The identifier of the Amazon Q Business web experience. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "ApplicationId", # required
    #     web_experience_id: "WebExperienceId", # required
    #   }
    #   options = {}
    #   response = client.get_web_experience(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     application_id: "ApplicationId",
    #     web_experience_id: "WebExperienceId",
    #     web_experience_arn: "WebExperienceArn",
    #     default_endpoint: "Url",
    #     status: "CREATING" # One of: ["CREATING", "ACTIVE", "DELETING", "FAILED", "PENDING_AUTH_CONFIG"],
    #     created_at: Time.now,
    #     updated_at: Time.now,
    #     title: "WebExperienceTitle",
    #     subtitle: "WebExperienceSubtitle",
    #     welcome_message: "WebExperienceWelcomeMessage",
    #     sample_prompts_control_mode: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #     origins: ["Origin"],
    #     role_arn: "RoleArn",
    #     identity_provider_configuration: {
    #       # One of:
    #       saml_configuration: {
    #         authentication_url: "SamlAuthenticationUrl", # required
    #       },
    #       open_id_connect_configuration: {
    #         secrets_arn: "SecretArn", # required
    #         secrets_role: "RoleArn", # required
    #       }
    #     },
    #     authentication_configuration: {
    #       # One of:
    #       saml_configuration: {
    #         metadata_xml: "SamlMetadataXML", # required
    #         role_arn: "RoleArn", # required
    #         user_id_attribute: "SamlAttribute", # required
    #         user_group_attribute: "SamlAttribute"
    #       }
    #     },
    #     error: {
    #       error_message: "ErrorMessage",
    #       error_code: "InternalError" # One of: ["InternalError", "InvalidRequest", "ResourceInactive", "ResourceNotFound"]
    #     },
    #     browser_extension_configuration: {
    #       enabled_browser_extensions: ["BrowserExtension"], # required
    #     },
    #     customization_configuration: {
    #       custom_css_url: "CustomCSSUrl",
    #       logo_url: "LogoUrl",
    #       font_url: "FontUrl",
    #       favicon_url: "FaviconUrl"
    #     }
    #   }
    # @return [Types::GetWebExperienceResponse]
    def get_web_experience(params = {}, options = {})
      request = build_request(:get_web_experience, params)
      request.send_request(options)
    end

    # <p>Lists Amazon Q Business applications.</p> <note> <p>Amazon Q Business applications may securely transmit data for processing across Amazon Web Services Regions within your geography. For more information, see <a href="https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/cross-region-inference.html">Cross region inference in Amazon Q Business</a>.</p> </note>
    # @param [Hash, Types::ListApplicationsRequest] params
    # @option params [String] :next_token
    #   <p>If the <code>maxResults</code> response was incomplete because there is more data to retrieve, Amazon Q Business returns a pagination token in the response. You can use this pagination token to retrieve the next set of Amazon Q Business applications.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of Amazon Q Business applications to return.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_applications(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     applications: [
    #       {
    #         display_name: "ApplicationName",
    #         application_id: "ApplicationId",
    #         created_at: Time.now,
    #         updated_at: Time.now,
    #         status: "CREATING" # One of: ["CREATING", "ACTIVE", "DELETING", "FAILED", "UPDATING"],
    #         identity_type: "AWS_IAM_IDP_SAML" # One of: ["AWS_IAM_IDP_SAML", "AWS_IAM_IDP_OIDC", "AWS_IAM_IDC", "AWS_QUICKSIGHT_IDP", "ANONYMOUS"],
    #         quick_sight_configuration: {
    #           client_namespace: "ClientNamespace", # required
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::ListApplicationsResponse]
    def list_applications(params = {}, options = {})
      request = build_request(:list_applications, params)
      request.send_request(options)
    end

    # <p>Gets a list of attachments associated with an Amazon Q Business web experience or a list of attachements associated with a specific Amazon Q Business conversation.</p>
    # @param [Hash, Types::ListAttachmentsRequest] params
    # @option params [String] :application_id
    #   <p>The unique identifier for the Amazon Q Business application.</p>
    # @option params [String] :conversation_id
    #   <p>The unique identifier of the Amazon Q Business web experience conversation.</p>
    # @option params [String] :user_id
    #   <p>The unique identifier of the user involved in the Amazon Q Business web experience conversation.</p>
    # @option params [String] :next_token
    #   <p>If the number of attachments returned exceeds <code>maxResults</code>, Amazon Q Business returns a next token as a pagination token to retrieve the next set of attachments.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of attachements to return.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "ApplicationId", # required
    #     conversation_id: "ConversationId",
    #     user_id: "UserId",
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_attachments(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     attachments: [
    #       {
    #         attachment_id: "AttachmentId",
    #         conversation_id: "ConversationId",
    #         name: "AttachmentName",
    #         copy_from: {
    #           # One of:
    #           conversation: {
    #             conversation_id: "ConversationId", # required
    #             attachment_id: "AttachmentId", # required
    #           }
    #         },
    #         file_type: "String",
    #         file_size: 1,
    #         md5chksum: "String",
    #         created_at: Time.now,
    #         status: "FAILED" # One of: ["FAILED", "SUCCESS"],
    #         error: {
    #           error_message: "ErrorMessage",
    #           error_code: "InternalError" # One of: ["InternalError", "InvalidRequest", "ResourceInactive", "ResourceNotFound"]
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListAttachmentsResponse]
    def list_attachments(params = {}, options = {})
      request = build_request(:list_attachments, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of all chat response configurations available in a specified Amazon Q Business application. This operation returns summary information about each configuration to help administrators manage and select appropriate response settings.</p>
    # @param [Hash, Types::ListChatResponseConfigurationsRequest] params
    # @option params [String] :application_id
    #   <p>The unique identifier of the Amazon Q Business application for which to list available chat response configurations.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of chat response configurations to return in a single response. This parameter helps control pagination of results when many configurations exist.</p>
    # @option params [String] :next_token
    #   <p>A pagination token used to retrieve the next set of results when the number of configurations exceeds the specified <code>maxResults</code> value.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "ApplicationId", # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_chat_response_configurations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     chat_response_configurations: [
    #       {
    #         chat_response_configuration_id: "ChatResponseConfigurationId", # required
    #         chat_response_configuration_arn: "ChatResponseConfigurationArn", # required
    #         display_name: "DisplayName", # required
    #         response_configuration_summary: "ResponseConfigurationSummary",
    #         status: "CREATING" # One of: ["CREATING", "UPDATING", "FAILED", "ACTIVE"], # required
    #         created_at: Time.now,
    #         updated_at: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListChatResponseConfigurationsResponse]
    def list_chat_response_configurations(params = {}, options = {})
      request = build_request(:list_chat_response_configurations, params)
      request.send_request(options)
    end

    # <p>Lists one or more Amazon Q Business conversations.</p>
    # @param [Hash, Types::ListConversationsRequest] params
    # @option params [String] :application_id
    #   <p>The identifier of the Amazon Q Business application.</p>
    # @option params [String] :user_id
    #   <p>The identifier of the user involved in the Amazon Q Business web experience conversation. </p>
    # @option params [String] :next_token
    #   <p>If the <code>maxResults</code> response was incomplete because there is more data to retrieve, Amazon Q Business returns a pagination token in the response. You can use this pagination token to retrieve the next set of Amazon Q Business conversations.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of Amazon Q Business conversations to return.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "ApplicationId", # required
    #     user_id: "UserId",
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_conversations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     conversations: [
    #       {
    #         conversation_id: "ConversationId",
    #         title: "ConversationTitle",
    #         start_time: Time.now
    #       }
    #     ]
    #   }
    # @return [Types::ListConversationsResponse]
    def list_conversations(params = {}, options = {})
      request = build_request(:list_conversations, params)
      request.send_request(options)
    end

    # <p>Lists the data accessors for a Amazon Q Business application. This operation returns a paginated list of data accessor summaries, including the friendly name, unique identifier, ARN, associated IAM role, and creation/update timestamps for each data accessor.</p>
    # @param [Hash, Types::ListDataAccessorsRequest] params
    # @option params [String] :application_id
    #   <p>The unique identifier of the Amazon Q Business application.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. (You received this token from a previous call.)</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "ApplicationId", # required
    #     next_token: "NextToken1500",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_data_accessors(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     data_accessors: [
    #       {
    #         display_name: "DataAccessorName",
    #         data_accessor_id: "DataAccessorId",
    #         data_accessor_arn: "DataAccessorArn",
    #         idc_application_arn: "IdcApplicationArn",
    #         principal: "PrincipalRoleArn",
    #         authentication_detail: {
    #           authentication_type: "AWS_IAM_IDC_TTI" # One of: ["AWS_IAM_IDC_TTI", "AWS_IAM_IDC_AUTH_CODE"], # required
    #           authentication_configuration: {
    #             # One of:
    #             idc_trusted_token_issuer_configuration: {
    #               idc_trusted_token_issuer_arn: "IdcTrustedTokenIssuerArn", # required
    #             }
    #           },
    #           external_ids: ["DataAccessorExternalId"]
    #         },
    #         created_at: Time.now,
    #         updated_at: Time.now
    #       }
    #     ],
    #     next_token: "NextToken1500"
    #   }
    # @return [Types::ListDataAccessorsResponse]
    def list_data_accessors(params = {}, options = {})
      request = build_request(:list_data_accessors, params)
      request.send_request(options)
    end

    # <p>Get information about an Amazon Q Business data source connector synchronization.</p>
    # @param [Hash, Types::ListDataSourceSyncJobsRequest] params
    # @option params [String] :data_source_id
    #   <p> The identifier of the data source connector.</p>
    # @option params [String] :application_id
    #   <p>The identifier of the Amazon Q Business application connected to the data source.</p>
    # @option params [String] :index_id
    #   <p>The identifier of the index used with the Amazon Q Business data source connector.</p>
    # @option params [String] :next_token
    #   <p>If the <code>maxResults</code> response was incpmplete because there is more data to retriever, Amazon Q Business returns a pagination token in the response. You can use this pagination token to retrieve the next set of responses.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of synchronization jobs to return in the response.</p>
    # @option params [Time] :start_time
    #   <p> The start time of the data source connector sync. </p>
    # @option params [Time] :end_time
    #   <p> The end time of the data source connector sync.</p>
    # @option params [String] :status_filter
    #   <p>Only returns synchronization jobs with the <code>Status</code> field equal to the specified status.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     data_source_id: "DataSourceId", # required
    #     application_id: "ApplicationId", # required
    #     index_id: "IndexId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     status_filter: "FAILED" # One of: ["FAILED", "SUCCEEDED", "SYNCING", "INCOMPLETE", "STOPPING", "ABORTED", "SYNCING_INDEXING"]
    #   }
    #   options = {}
    #   response = client.list_data_source_sync_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     history: [
    #       {
    #         execution_id: "ExecutionId",
    #         start_time: Time.now,
    #         end_time: Time.now,
    #         status: "FAILED" # One of: ["FAILED", "SUCCEEDED", "SYNCING", "INCOMPLETE", "STOPPING", "ABORTED", "SYNCING_INDEXING"],
    #         error: {
    #           error_message: "ErrorMessage",
    #           error_code: "InternalError" # One of: ["InternalError", "InvalidRequest", "ResourceInactive", "ResourceNotFound"]
    #         },
    #         data_source_error_code: "String",
    #         metrics: {
    #           documents_added: "MetricValue",
    #           documents_modified: "MetricValue",
    #           documents_deleted: "MetricValue",
    #           documents_failed: "MetricValue",
    #           documents_scanned: "MetricValue"
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListDataSourceSyncJobsResponse]
    def list_data_source_sync_jobs(params = {}, options = {})
      request = build_request(:list_data_source_sync_jobs, params)
      request.send_request(options)
    end

    # <p>Lists the Amazon Q Business data source connectors that you have created.</p>
    # @param [Hash, Types::ListDataSourcesRequest] params
    # @option params [String] :application_id
    #   <p>The identifier of the Amazon Q Business application linked to the data source connectors.</p>
    # @option params [String] :index_id
    #   <p>The identifier of the index used with one or more data source connectors.</p>
    # @option params [String] :next_token
    #   <p>If the <code>maxResults</code> response was incomplete because there is more data to retrieve, Amazon Q Business returns a pagination token in the response. You can use this pagination token to retrieve the next set of Amazon Q Business data source connectors.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of data source connectors to return.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "ApplicationId", # required
    #     index_id: "IndexId", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_data_sources(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     data_sources: [
    #       {
    #         display_name: "DataSourceName",
    #         data_source_id: "DataSourceId",
    #         type: "String",
    #         created_at: Time.now,
    #         updated_at: Time.now,
    #         status: "PENDING_CREATION" # One of: ["PENDING_CREATION", "CREATING", "ACTIVE", "DELETING", "FAILED", "UPDATING"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListDataSourcesResponse]
    def list_data_sources(params = {}, options = {})
      request = build_request(:list_data_sources, params)
      request.send_request(options)
    end

    # <p>A list of documents attached to an index.</p>
    # @param [Hash, Types::ListDocumentsRequest] params
    # @option params [String] :application_id
    #   <p>The identifier of the application id the documents are attached to.</p>
    # @option params [String] :index_id
    #   <p>The identifier of the index the documents are attached to.</p>
    # @option params [Array<String>] :data_source_ids
    #   <p>The identifier of the data sources the documents are attached to.</p>
    # @option params [String] :next_token
    #   <p>If the <code>maxResults</code> response was incomplete because there is more data to retrieve, Amazon Q Business returns a pagination token in the response. You can use this pagination token to retrieve the next set of documents.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of documents to return.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "ApplicationId", # required
    #     index_id: "IndexId", # required
    #     data_source_ids: ["DataSourceId"],
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_documents(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     document_detail_list: [
    #       {
    #         document_id: "DocumentId",
    #         status: "RECEIVED" # One of: ["RECEIVED", "PROCESSING", "INDEXED", "UPDATED", "FAILED", "DELETING", "DELETED", "DOCUMENT_FAILED_TO_INDEX"],
    #         error: {
    #           error_message: "ErrorMessage",
    #           error_code: "InternalError" # One of: ["InternalError", "InvalidRequest", "ResourceInactive", "ResourceNotFound"]
    #         },
    #         created_at: Time.now,
    #         updated_at: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListDocumentsResponse]
    def list_documents(params = {}, options = {})
      request = build_request(:list_documents, params)
      request.send_request(options)
    end

    # <p>Provides a list of groups that are mapped to users.</p>
    # @param [Hash, Types::ListGroupsRequest] params
    # @option params [String] :application_id
    #   <p>The identifier of the application for getting a list of groups mapped to users.</p>
    # @option params [String] :index_id
    #   <p>The identifier of the index for getting a list of groups mapped to users.</p>
    # @option params [Time] :updated_earlier_than
    #   <p>The timestamp identifier used for the latest <code>PUT</code> or <code>DELETE</code> action for mapping users to their groups.</p>
    # @option params [String] :data_source_id
    #   <p>The identifier of the data source for getting a list of groups mapped to users.</p>
    # @option params [String] :next_token
    #   <p>If the previous response was incomplete (because there is more data to retrieve), Amazon Q Business returns a pagination token in the response. You can use this pagination token to retrieve the next set of groups that are mapped to users.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of returned groups that are mapped to users.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "ApplicationId", # required
    #     index_id: "IndexId", # required
    #     updated_earlier_than: Time.now, # required
    #     data_source_id: "DataSourceId",
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_groups(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     items: [
    #       {
    #         group_name: "GroupName"
    #       }
    #     ]
    #   }
    # @return [Types::ListGroupsResponse]
    def list_groups(params = {}, options = {})
      request = build_request(:list_groups, params)
      request.send_request(options)
    end

    # <p>Lists the Amazon Q Business indices you have created.</p>
    # @param [Hash, Types::ListIndicesRequest] params
    # @option params [String] :application_id
    #   <p>The identifier of the Amazon Q Business application connected to the index.</p>
    # @option params [String] :next_token
    #   <p>If the maxResults response was incomplete because there is more data to retrieve, Amazon Q Business returns a pagination token in the response. You can use this pagination token to retrieve the next set of Amazon Q Business indices.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of indices to return.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "ApplicationId", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_indices(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     indices: [
    #       {
    #         display_name: "IndexName",
    #         index_id: "IndexId",
    #         created_at: Time.now,
    #         updated_at: Time.now,
    #         status: "CREATING" # One of: ["CREATING", "ACTIVE", "DELETING", "FAILED", "UPDATING"]
    #       }
    #     ]
    #   }
    # @return [Types::ListIndicesResponse]
    def list_indices(params = {}, options = {})
      request = build_request(:list_indices, params)
      request.send_request(options)
    end

    # <p>Gets a list of messages associated with an Amazon Q Business web experience.</p>
    # @param [Hash, Types::ListMessagesRequest] params
    # @option params [String] :conversation_id
    #   <p>The identifier of the Amazon Q Business web experience conversation.</p>
    # @option params [String] :application_id
    #   <p>The identifier for the Amazon Q Business application.</p>
    # @option params [String] :user_id
    #   <p>The identifier of the user involved in the Amazon Q Business web experience conversation.</p>
    # @option params [String] :next_token
    #   <p>If the number of messages returned exceeds <code>maxResults</code>, Amazon Q Business returns a next token as a pagination token to retrieve the next set of messages.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of messages to return.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     conversation_id: "ConversationId", # required
    #     application_id: "ApplicationId", # required
    #     user_id: "UserId",
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_messages(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     messages: [
    #       {
    #         message_id: "String",
    #         body: "MessageBody",
    #         time: Time.now,
    #         type: "USER" # One of: ["USER", "SYSTEM"],
    #         attachments: [
    #           {
    #             name: "AttachmentName",
    #             status: "FAILED" # One of: ["FAILED", "SUCCESS"],
    #             error: {
    #               error_message: "ErrorMessage",
    #               error_code: "InternalError" # One of: ["InternalError", "InvalidRequest", "ResourceInactive", "ResourceNotFound"]
    #             },
    #             attachment_id: "AttachmentId",
    #             conversation_id: "ConversationId"
    #           }
    #         ],
    #         source_attribution: [
    #           {
    #             title: "String",
    #             snippet: "String",
    #             url: "String",
    #             citation_number: 1,
    #             updated_at: Time.now,
    #             text_message_segments: [
    #               {
    #                 begin_offset: 1,
    #                 end_offset: 1,
    #                 snippet_excerpt: {
    #                   text: "SnippetExcerptText"
    #                 },
    #                 media_id: "SourceAttributionMediaId",
    #                 media_mime_type: "String",
    #                 source_details: {
    #                   # One of:
    #                   image_source_details: {
    #                     media_id: "MediaId",
    #                     media_mime_type: "String"
    #                   },
    #                   audio_source_details: {
    #                     media_id: "MediaId",
    #                     media_mime_type: "String",
    #                     start_time_milliseconds: 1,
    #                     end_time_milliseconds: 1,
    #                     audio_extraction_type: "TRANSCRIPT" # One of: ["TRANSCRIPT", "SUMMARY"]
    #                   },
    #                   video_source_details: {
    #                     media_id: "MediaId",
    #                     media_mime_type: "String",
    #                     start_time_milliseconds: 1,
    #                     end_time_milliseconds: 1,
    #                     video_extraction_type: "TRANSCRIPT" # One of: ["TRANSCRIPT", "SUMMARY"]
    #                   }
    #                 }
    #               }
    #             ],
    #             document_id: "String",
    #             index_id: "String",
    #             datasource_id: "String"
    #           }
    #         ],
    #         action_review: {
    #           plugin_id: "PluginId",
    #           plugin_type: "SERVICE_NOW" # One of: ["SERVICE_NOW", "SALESFORCE", "JIRA", "ZENDESK", "CUSTOM", "QUICKSIGHT", "SERVICENOW_NOW_PLATFORM", "JIRA_CLOUD", "SALESFORCE_CRM", "ZENDESK_SUITE", "ATLASSIAN_CONFLUENCE", "GOOGLE_CALENDAR", "MICROSOFT_TEAMS", "MICROSOFT_EXCHANGE", "PAGERDUTY_ADVANCE", "SMARTSHEET", "ASANA"],
    #           payload: {
    #             "ActionPayloadFieldKey" => {
    #               display_name: "String",
    #               display_order: 1,
    #               display_description: "String",
    #               type: "STRING" # One of: ["STRING", "NUMBER", "ARRAY", "BOOLEAN"],
    #               value: ""null"",
    #               allowed_values: [
    #                 {
    #                   value: ""null"",
    #                   display_value: ""null""
    #                 }
    #               ],
    #               allowed_format: "String",
    #               array_item_json_schema: ""null"",
    #               required: false
    #             }
    #           },
    #           payload_field_name_separator: "ActionPayloadFieldNameSeparator"
    #         },
    #         action_execution: {
    #           plugin_id: "PluginId", # required
    #           payload: { # required
    #             "ActionPayloadFieldKey" => {
    #               value: ""null"", # required
    #             }
    #           },
    #           payload_field_name_separator: "ActionPayloadFieldNameSeparator", # required
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListMessagesResponse]
    def list_messages(params = {}, options = {})
      request = build_request(:list_messages, params)
      request.send_request(options)
    end

    # <p>Lists configured Amazon Q Business actions for a specific plugin in an Amazon Q Business application.</p>
    # @param [Hash, Types::ListPluginActionsRequest] params
    # @option params [String] :application_id
    #   <p>The identifier of the Amazon Q Business application the plugin is attached to.</p>
    # @option params [String] :plugin_id
    #   <p>The identifier of the Amazon Q Business plugin.</p>
    # @option params [String] :next_token
    #   <p>If the number of plugin actions returned exceeds <code>maxResults</code>, Amazon Q Business returns a next token as a pagination token to retrieve the next set of plugin actions.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of plugin actions to return.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "ApplicationId", # required
    #     plugin_id: "PluginId", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_plugin_actions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     items: [
    #       {
    #         action_identifier: "String",
    #         display_name: "String",
    #         instruction_example: "String",
    #         description: "String"
    #       }
    #     ]
    #   }
    # @return [Types::ListPluginActionsResponse]
    def list_plugin_actions(params = {}, options = {})
      request = build_request(:list_plugin_actions, params)
      request.send_request(options)
    end

    # <p>Lists configured Amazon Q Business actions for any plugin type—both built-in and custom.</p>
    # @param [Hash, Types::ListPluginTypeActionsRequest] params
    # @option params [String] :plugin_type
    #   <p>The type of the plugin.</p>
    # @option params [String] :next_token
    #   <p>If the number of plugins returned exceeds <code>maxResults</code>, Amazon Q Business returns a next token as a pagination token to retrieve the next set of plugins.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of plugins to return.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     plugin_type: "SERVICE_NOW" # One of: ["SERVICE_NOW", "SALESFORCE", "JIRA", "ZENDESK", "CUSTOM", "QUICKSIGHT", "SERVICENOW_NOW_PLATFORM", "JIRA_CLOUD", "SALESFORCE_CRM", "ZENDESK_SUITE", "ATLASSIAN_CONFLUENCE", "GOOGLE_CALENDAR", "MICROSOFT_TEAMS", "MICROSOFT_EXCHANGE", "PAGERDUTY_ADVANCE", "SMARTSHEET", "ASANA"], # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_plugin_type_actions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     items: [
    #       {
    #         action_identifier: "String",
    #         display_name: "String",
    #         instruction_example: "String",
    #         description: "String"
    #       }
    #     ]
    #   }
    # @return [Types::ListPluginTypeActionsResponse]
    def list_plugin_type_actions(params = {}, options = {})
      request = build_request(:list_plugin_type_actions, params)
      request.send_request(options)
    end

    # <p>Lists metadata for all Amazon Q Business plugin types.</p>
    # @param [Hash, Types::ListPluginTypeMetadataRequest] params
    # @option params [String] :next_token
    #   <p>If the metadata returned exceeds <code>maxResults</code>, Amazon Q Business returns a next token as a pagination token to retrieve the next set of metadata.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of plugin metadata items to return.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_plugin_type_metadata(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     items: [
    #       {
    #         type: "SERVICE_NOW" # One of: ["SERVICE_NOW", "SALESFORCE", "JIRA", "ZENDESK", "CUSTOM", "QUICKSIGHT", "SERVICENOW_NOW_PLATFORM", "JIRA_CLOUD", "SALESFORCE_CRM", "ZENDESK_SUITE", "ATLASSIAN_CONFLUENCE", "GOOGLE_CALENDAR", "MICROSOFT_TEAMS", "MICROSOFT_EXCHANGE", "PAGERDUTY_ADVANCE", "SMARTSHEET", "ASANA"],
    #         category: "Customer relationship management (CRM)" # One of: ["Customer relationship management (CRM)", "Project management", "Communication", "Productivity", "Ticketing and incident management"],
    #         description: "String"
    #       }
    #     ]
    #   }
    # @return [Types::ListPluginTypeMetadataResponse]
    def list_plugin_type_metadata(params = {}, options = {})
      request = build_request(:list_plugin_type_metadata, params)
      request.send_request(options)
    end

    # <p>Lists configured Amazon Q Business plugins.</p>
    # @param [Hash, Types::ListPluginsRequest] params
    # @option params [String] :application_id
    #   <p>The identifier of the application the plugin is attached to.</p>
    # @option params [String] :next_token
    #   <p>If the <code>maxResults</code> response was incomplete because there is more data to retrieve, Amazon Q Business returns a pagination token in the response. You can use this pagination token to retrieve the next set of plugins.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of documents to return.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "ApplicationId", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_plugins(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     plugins: [
    #       {
    #         plugin_id: "PluginId",
    #         display_name: "PluginName",
    #         type: "SERVICE_NOW" # One of: ["SERVICE_NOW", "SALESFORCE", "JIRA", "ZENDESK", "CUSTOM", "QUICKSIGHT", "SERVICENOW_NOW_PLATFORM", "JIRA_CLOUD", "SALESFORCE_CRM", "ZENDESK_SUITE", "ATLASSIAN_CONFLUENCE", "GOOGLE_CALENDAR", "MICROSOFT_TEAMS", "MICROSOFT_EXCHANGE", "PAGERDUTY_ADVANCE", "SMARTSHEET", "ASANA"],
    #         server_url: "Url",
    #         state: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #         build_status: "READY" # One of: ["READY", "CREATE_IN_PROGRESS", "CREATE_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_FAILED", "DELETE_IN_PROGRESS", "DELETE_FAILED"],
    #         created_at: Time.now,
    #         updated_at: Time.now
    #       }
    #     ]
    #   }
    # @return [Types::ListPluginsResponse]
    def list_plugins(params = {}, options = {})
      request = build_request(:list_plugins, params)
      request.send_request(options)
    end

    # <p>Lists the retriever used by an Amazon Q Business application.</p>
    # @param [Hash, Types::ListRetrieversRequest] params
    # @option params [String] :application_id
    #   <p>The identifier of the Amazon Q Business application using the retriever.</p>
    # @option params [String] :next_token
    #   <p>If the number of retrievers returned exceeds <code>maxResults</code>, Amazon Q Business returns a next token as a pagination token to retrieve the next set of retrievers.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of retrievers returned.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "ApplicationId", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_retrievers(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     retrievers: [
    #       {
    #         application_id: "ApplicationId",
    #         retriever_id: "RetrieverId",
    #         type: "NATIVE_INDEX" # One of: ["NATIVE_INDEX", "KENDRA_INDEX"],
    #         status: "CREATING" # One of: ["CREATING", "ACTIVE", "FAILED"],
    #         display_name: "RetrieverName"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListRetrieversResponse]
    def list_retrievers(params = {}, options = {})
      request = build_request(:list_retrievers, params)
      request.send_request(options)
    end

    # <p> Lists all subscriptions created in an Amazon Q Business application. </p>
    # @param [Hash, Types::ListSubscriptionsRequest] params
    # @option params [String] :application_id
    #   <p>The identifier of the Amazon Q Business application linked to the subscription.</p>
    # @option params [String] :next_token
    #   <p>If the <code>maxResults</code> response was incomplete because there is more data to retrieve, Amazon Q Business returns a pagination token in the response. You can use this pagination token to retrieve the next set of Amazon Q Business subscriptions.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of Amazon Q Business subscriptions to return.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "ApplicationId", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_subscriptions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     subscriptions: [
    #       {
    #         subscription_id: "SubscriptionId",
    #         subscription_arn: "SubscriptionArn",
    #         principal: {
    #           # One of:
    #           user: "UserIdentifier",
    #           group: "GroupIdentifier"
    #         },
    #         current_subscription: {
    #           type: "Q_LITE" # One of: ["Q_LITE", "Q_BUSINESS"]
    #         },
    #         next_subscription: {
    #           type: "Q_LITE" # One of: ["Q_LITE", "Q_BUSINESS"]
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::ListSubscriptionsResponse]
    def list_subscriptions(params = {}, options = {})
      request = build_request(:list_subscriptions, params)
      request.send_request(options)
    end

    # <p>Gets a list of tags associated with a specified resource. Amazon Q Business applications and data sources can have tags associated with them.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Q Business application or data source to get a list of tags for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "AmazonResourceName", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    # @return [Types::ListTagsForResourceResponse]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Lists one or more Amazon Q Business Web Experiences.</p>
    # @param [Hash, Types::ListWebExperiencesRequest] params
    # @option params [String] :application_id
    #   <p>The identifier of the Amazon Q Business application linked to the listed web experiences.</p>
    # @option params [String] :next_token
    #   <p>If the <code>maxResults</code> response was incomplete because there is more data to retrieve, Amazon Q Business returns a pagination token in the response. You can use this pagination token to retrieve the next set of Amazon Q Business conversations.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of Amazon Q Business Web Experiences to return.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "ApplicationId", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_web_experiences(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     web_experiences: [
    #       {
    #         web_experience_id: "WebExperienceId",
    #         created_at: Time.now,
    #         updated_at: Time.now,
    #         default_endpoint: "Url",
    #         status: "CREATING" # One of: ["CREATING", "ACTIVE", "DELETING", "FAILED", "PENDING_AUTH_CONFIG"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListWebExperiencesResponse]
    def list_web_experiences(params = {}, options = {})
      request = build_request(:list_web_experiences, params)
      request.send_request(options)
    end

    # <p>Enables your end user to provide feedback on their Amazon Q Business generated chat responses.</p>
    # @param [Hash, Types::PutFeedbackRequest] params
    # @option params [String] :application_id
    #   <p>The identifier of the application associated with the feedback.</p>
    # @option params [String] :user_id
    #   <p>The identifier of the user giving the feedback.</p>
    # @option params [String] :conversation_id
    #   <p>The identifier of the conversation the feedback is attached to.</p>
    # @option params [String] :message_id
    #   <p>The identifier of the chat message that the feedback was given for.</p>
    # @option params [Time] :message_copied_at
    #   <p>The timestamp for when the feedback was recorded.</p>
    # @option params [Types::MessageUsefulnessFeedback] :message_usefulness
    #   <p>The feedback usefulness value given by the user to the chat message.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "ApplicationId", # required
    #     user_id: "UserId",
    #     conversation_id: "ConversationId", # required
    #     message_id: "SystemMessageId", # required
    #     message_copied_at: Time.now,
    #     message_usefulness: {
    #       usefulness: "USEFUL" # One of: ["USEFUL", "NOT_USEFUL"], # required
    #       reason: "NOT_FACTUALLY_CORRECT" # One of: ["NOT_FACTUALLY_CORRECT", "HARMFUL_OR_UNSAFE", "INCORRECT_OR_MISSING_SOURCES", "NOT_HELPFUL", "FACTUALLY_CORRECT", "COMPLETE", "RELEVANT_SOURCES", "HELPFUL", "NOT_BASED_ON_DOCUMENTS", "NOT_COMPLETE", "NOT_CONCISE", "OTHER"],
    #       comment: "MessageUsefulnessComment",
    #       submitted_at: Time.now, # required
    #     }
    #   }
    #   options = {}
    #   response = client.put_feedback(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def put_feedback(params = {}, options = {})
      request = build_request(:put_feedback, params)
      request.send_request(options)
    end

    # <p>Create, or updates, a mapping of users—who have access to a document—to groups.</p> <p>You can also map sub groups to groups. For example, the group "Company Intellectual Property Teams" includes sub groups "Research" and "Engineering". These sub groups include their own list of users or people who work in these teams. Only users who work in research and engineering, and therefore belong in the intellectual property group, can see top-secret company documents in their Amazon Q Business chat results.</p> <p>There are two options for creating groups, either passing group members inline or using an S3 file via the S3PathForGroupMembers field. For inline groups, there is a limit of 1000 members per group and for provided S3 files there is a limit of 100 thousand members. When creating a group using an S3 file, you provide both an S3 file and a <code>RoleArn</code> for Amazon Q Buisness to access the file.</p>
    # @param [Hash, Types::PutGroupRequest] params
    # @option params [String] :application_id
    #   <p>The identifier of the application in which the user and group mapping belongs.</p>
    # @option params [String] :index_id
    #   <p>The identifier of the index in which you want to map users to their groups.</p>
    # @option params [String] :group_name
    #   <p>The list that contains your users or sub groups that belong the same group. For example, the group "Company" includes the user "CEO" and the sub groups "Research", "Engineering", and "Sales and Marketing".</p>
    # @option params [String] :data_source_id
    #   <p>The identifier of the data source for which you want to map users to their groups. This is useful if a group is tied to multiple data sources, but you only want the group to access documents of a certain data source. For example, the groups "Research", "Engineering", and "Sales and Marketing" are all tied to the company's documents stored in the data sources Confluence and Salesforce. However, "Sales and Marketing" team only needs access to customer-related documents stored in Salesforce.</p>
    # @option params [String] :type
    #   <p>The type of the group.</p>
    # @option params [Types::GroupMembers] :group_members
    #   <p>A list of users or sub groups that belong to a group. This is for generating Amazon Q Business chat results only from document a user has access to.</p>
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM role that has access to the S3 file that contains your list of users that belong to a group.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "ApplicationId", # required
    #     index_id: "IndexId", # required
    #     group_name: "GroupName", # required
    #     data_source_id: "DataSourceId",
    #     type: "INDEX" # One of: ["INDEX", "DATASOURCE"], # required
    #     group_members: { # required
    #       member_groups: [
    #         {
    #           group_name: "GroupName", # required
    #           type: "INDEX" # One of: ["INDEX", "DATASOURCE"]
    #         }
    #       ],
    #       member_users: [
    #         {
    #           user_id: "DataSourceUserId", # required
    #           type: "INDEX" # One of: ["INDEX", "DATASOURCE"]
    #         }
    #       ],
    #       s3_path_for_group_members: {
    #         bucket: "S3BucketName", # required
    #         key: "S3ObjectKey", # required
    #       }
    #     },
    #     role_arn: "RoleArn"
    #   }
    #   options = {}
    #   response = client.put_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::PutGroupResponse]
    def put_group(params = {}, options = {})
      request = build_request(:put_group, params)
      request.send_request(options)
    end

    # <p>Searches for relevant content in a Amazon Q Business application based on a query. This operation takes a search query text, the Amazon Q Business application identifier, and optional filters (such as content source and maximum results) as input. It returns a list of relevant content items, where each item includes the content text, the unique document identifier, the document title, the document URI, any relevant document attributes, and score attributes indicating the confidence level of the relevance.</p>
    # @param [Hash, Types::SearchRelevantContentRequest] params
    # @option params [String] :application_id
    #   <p>The unique identifier of the Amazon Q Business application to search.</p>
    # @option params [String] :query_text
    #   <p>The text to search for.</p>
    # @option params [Types::ContentSource] :content_source
    #   <p>The source of content to search in.</p>
    # @option params [Types::AttributeFilter] :attribute_filter
    #   <p>Enables filtering of responses based on document attributes or metadata fields.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. (You received this token from a previous call.)</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "ApplicationId", # required
    #     query_text: "QueryText", # required
    #     content_source: { # required
    #       # One of:
    #       retriever: {
    #         retriever_id: "RetrieverId", # required
    #       }
    #     },
    #     attribute_filter: {
    #       and_all_filters: [
    #         {
    #           # recursive AttributeFilter
    #         }
    #       ],
    #       or_all_filters: [
    #         {
    #           # recursive AttributeFilter
    #         }
    #       ],
    #       not_filter: {
    #         # recursive AttributeFilter
    #       },
    #       equals_to: {
    #         name: "DocumentAttributeKey", # required
    #         value: { # required
    #           # One of:
    #           string_value: "DocumentAttributeStringValue",
    #           string_list_value: ["String"],
    #           long_value: 1,
    #           date_value: Time.now
    #         }
    #       },
    #       contains_all: {
    #         name: "DocumentAttributeKey", # required
    #         value: { # required
    #           # One of:
    #           string_value: "DocumentAttributeStringValue",
    #           string_list_value: ["String"],
    #           long_value: 1,
    #           date_value: Time.now
    #         }
    #       },
    #       contains_any: {
    #         name: "DocumentAttributeKey", # required
    #         value: { # required
    #           # One of:
    #           string_value: "DocumentAttributeStringValue",
    #           string_list_value: ["String"],
    #           long_value: 1,
    #           date_value: Time.now
    #         }
    #       },
    #       greater_than: {
    #         name: "DocumentAttributeKey", # required
    #         value: { # required
    #           # One of:
    #           string_value: "DocumentAttributeStringValue",
    #           string_list_value: ["String"],
    #           long_value: 1,
    #           date_value: Time.now
    #         }
    #       },
    #       greater_than_or_equals: {
    #         name: "DocumentAttributeKey", # required
    #         value: { # required
    #           # One of:
    #           string_value: "DocumentAttributeStringValue",
    #           string_list_value: ["String"],
    #           long_value: 1,
    #           date_value: Time.now
    #         }
    #       },
    #       less_than: {
    #         name: "DocumentAttributeKey", # required
    #         value: { # required
    #           # One of:
    #           string_value: "DocumentAttributeStringValue",
    #           string_list_value: ["String"],
    #           long_value: 1,
    #           date_value: Time.now
    #         }
    #       },
    #       less_than_or_equals: {
    #         name: "DocumentAttributeKey", # required
    #         value: { # required
    #           # One of:
    #           string_value: "DocumentAttributeStringValue",
    #           string_list_value: ["String"],
    #           long_value: 1,
    #           date_value: Time.now
    #         }
    #       }
    #     },
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.search_relevant_content(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     relevant_content: [
    #       {
    #         content: "String",
    #         document_id: "DocumentId",
    #         document_title: "Title",
    #         document_uri: "Url",
    #         document_attributes: [
    #           {
    #             name: "DocumentAttributeKey", # required
    #             value: { # required
    #               # One of:
    #               string_value: "DocumentAttributeStringValue",
    #               string_list_value: ["String"],
    #               long_value: 1,
    #               date_value: Time.now
    #             }
    #           }
    #         ],
    #         score_attributes: {
    #           score_confidence: "VERY_HIGH" # One of: ["VERY_HIGH", "HIGH", "MEDIUM", "LOW", "NOT_AVAILABLE"]
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::SearchRelevantContentResponse]
    def search_relevant_content(params = {}, options = {})
      request = build_request(:search_relevant_content, params)
      request.send_request(options)
    end

    # <p>Starts a data source connector synchronization job. If a synchronization job is already in progress, Amazon Q Business returns a <code>ConflictException</code>.</p>
    # @param [Hash, Types::StartDataSourceSyncJobRequest] params
    # @option params [String] :data_source_id
    #   <p> The identifier of the data source connector. </p>
    # @option params [String] :application_id
    #   <p>The identifier of Amazon Q Business application the data source is connected to.</p>
    # @option params [String] :index_id
    #   <p>The identifier of the index used with the data source connector.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     data_source_id: "DataSourceId", # required
    #     application_id: "ApplicationId", # required
    #     index_id: "IndexId", # required
    #   }
    #   options = {}
    #   response = client.start_data_source_sync_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     execution_id: "ExecutionId"
    #   }
    # @return [Types::StartDataSourceSyncJobResponse]
    def start_data_source_sync_job(params = {}, options = {})
      request = build_request(:start_data_source_sync_job, params)
      request.send_request(options)
    end

    # <p>Stops an Amazon Q Business data source connector synchronization job already in progress.</p>
    # @param [Hash, Types::StopDataSourceSyncJobRequest] params
    # @option params [String] :data_source_id
    #   <p> The identifier of the data source connector. </p>
    # @option params [String] :application_id
    #   <p>The identifier of the Amazon Q Business application that the data source is connected to.</p>
    # @option params [String] :index_id
    #   <p>The identifier of the index used with the Amazon Q Business data source connector.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     data_source_id: "DataSourceId", # required
    #     application_id: "ApplicationId", # required
    #     index_id: "IndexId", # required
    #   }
    #   options = {}
    #   response = client.stop_data_source_sync_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::StopDataSourceSyncJobResponse]
    def stop_data_source_sync_job(params = {}, options = {})
      request = build_request(:stop_data_source_sync_job, params)
      request.send_request(options)
    end

    # <p>Adds the specified tag to the specified Amazon Q Business application or data source resource. If the tag already exists, the existing value is replaced with the new value.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Q Business application or data source to tag.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of tag keys to add to the Amazon Q Business application or data source. If a tag already exists, the existing value is replaced with the new value.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "AmazonResourceName", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.tag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::TagResourceResponse]
    def tag_resource(params = {}, options = {})
      request = build_request(:tag_resource, params)
      request.send_request(options)
    end

    # <p>Removes a tag from an Amazon Q Business application or a data source.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Q Business application, or data source to remove the tag from.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>A list of tag keys to remove from the Amazon Q Business application or data source. If a tag key does not exist on the resource, it is ignored.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "AmazonResourceName", # required
    #     tag_keys: ["TagKey"], # required
    #   }
    #   options = {}
    #   response = client.untag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UntagResourceResponse]
    def untag_resource(params = {}, options = {})
      request = build_request(:untag_resource, params)
      request.send_request(options)
    end

    # <p>Updates an existing Amazon Q Business application.</p> <note> <p>Amazon Q Business applications may securely transmit data for processing across Amazon Web Services Regions within your geography. For more information, see <a href="https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/cross-region-inference.html">Cross region inference in Amazon Q Business</a>.</p> </note> <note> <p>An Amazon Q Apps service-linked role will be created if it's absent in the Amazon Web Services account when <code>QAppsConfiguration</code> is enabled in the request. For more information, see <a href="https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/using-service-linked-roles-qapps.html">Using service-linked roles for Q Apps</a>. </p> </note>
    # @param [Hash, Types::UpdateApplicationRequest] params
    # @option params [String] :application_id
    #   <p>The identifier of the Amazon Q Business application.</p>
    # @option params [String] :identity_center_instance_arn
    #   <p> The Amazon Resource Name (ARN) of the IAM Identity Center instance you are either creating for—or connecting to—your Amazon Q Business application.</p>
    # @option params [String] :display_name
    #   <p>A name for the Amazon Q Business application.</p>
    # @option params [String] :description
    #   <p>A description for the Amazon Q Business application.</p>
    # @option params [String] :role_arn
    #   <p>An Amazon Web Services Identity and Access Management (IAM) role that gives Amazon Q Business permission to access Amazon CloudWatch logs and metrics.</p>
    # @option params [Types::AttachmentsConfiguration] :attachments_configuration
    #   <p>An option to allow end users to upload files directly during chat.</p>
    # @option params [Types::QAppsConfiguration] :q_apps_configuration
    #   <p>An option to allow end users to create and use Amazon Q Apps in the web experience.</p>
    # @option params [Types::PersonalizationConfiguration] :personalization_configuration
    #   <p>Configuration information about chat response personalization. For more information, see <a href="https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/personalizing-chat-responses.html">Personalizing chat responses</a>.</p>
    # @option params [Types::AutoSubscriptionConfiguration] :auto_subscription_configuration
    #   <p>An option to enable updating the default subscription type assigned to an Amazon Q Business application using IAM identity federation for user management.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "ApplicationId", # required
    #     identity_center_instance_arn: "InstanceArn",
    #     display_name: "ApplicationName",
    #     description: "Description",
    #     role_arn: "RoleArn",
    #     attachments_configuration: {
    #       attachments_control_mode: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #     },
    #     q_apps_configuration: {
    #       q_apps_control_mode: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #     },
    #     personalization_configuration: {
    #       personalization_control_mode: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #     },
    #     auto_subscription_configuration: {
    #       auto_subscribe: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #       default_subscription_type: "Q_LITE" # One of: ["Q_LITE", "Q_BUSINESS"]
    #     }
    #   }
    #   options = {}
    #   response = client.update_application(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateApplicationResponse]
    def update_application(params = {}, options = {})
      request = build_request(:update_application, params)
      request.send_request(options)
    end

    # <p>Updates a set of chat controls configured for an existing Amazon Q Business application.</p>
    # @param [Hash, Types::UpdateChatControlsConfigurationRequest] params
    # @option params [String] :application_id
    #   <p>The identifier of the application for which the chat controls are configured.</p>
    # @option params [String] :client_token
    #   <p>A token that you provide to identify the request to update a Amazon Q Business application chat configuration.</p>
    # @option params [String] :response_scope
    #   <p>The response scope configured for your application. This determines whether your application uses its retrieval augmented generation (RAG) system to generate answers only from your enterprise data, or also uses the large language models (LLM) knowledge to respons to end user questions in chat.</p>
    # @option params [Types::OrchestrationConfiguration] :orchestration_configuration
    #   <p> The chat response orchestration settings for your application.</p>
    # @option params [Types::BlockedPhrasesConfigurationUpdate] :blocked_phrases_configuration_update
    #   <p>The phrases blocked from chat by your chat control configuration.</p>
    # @option params [Array<Types::TopicConfiguration>] :topic_configurations_to_create_or_update
    #   <p>The configured topic specific chat controls you want to update.</p>
    # @option params [Array<Types::TopicConfiguration>] :topic_configurations_to_delete
    #   <p>The configured topic specific chat controls you want to delete.</p>
    # @option params [Types::CreatorModeConfiguration] :creator_mode_configuration
    #   <p>The configuration details for <code>CREATOR_MODE</code>.</p>
    # @option params [Types::HallucinationReductionConfiguration] :hallucination_reduction_configuration
    #   <p> The hallucination reduction settings for your application.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "ApplicationId", # required
    #     client_token: "ClientToken",
    #     response_scope: "ENTERPRISE_CONTENT_ONLY" # One of: ["ENTERPRISE_CONTENT_ONLY", "EXTENDED_KNOWLEDGE_ENABLED"],
    #     orchestration_configuration: {
    #       control: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #     },
    #     blocked_phrases_configuration_update: {
    #       blocked_phrases_to_create_or_update: ["BlockedPhrase"],
    #       blocked_phrases_to_delete: ["BlockedPhrase"],
    #       system_message_override: "SystemMessageOverride"
    #     },
    #     topic_configurations_to_create_or_update: [
    #       {
    #         name: "TopicConfigurationName", # required
    #         description: "TopicDescription",
    #         example_chat_messages: ["ExampleChatMessage"],
    #         rules: [ # required
    #           {
    #             included_users_and_groups: {
    #               user_ids: ["String"],
    #               user_groups: ["String"]
    #             },
    #             excluded_users_and_groups: {
    #               user_ids: ["String"],
    #               user_groups: ["String"]
    #             },
    #             rule_type: "CONTENT_BLOCKER_RULE" # One of: ["CONTENT_BLOCKER_RULE", "CONTENT_RETRIEVAL_RULE"], # required
    #             rule_configuration: {
    #               # One of:
    #               content_blocker_rule: {
    #                 system_message_override: "SystemMessageOverride"
    #               },
    #               content_retrieval_rule: {
    #                 eligible_data_sources: [
    #                   {
    #                     index_id: "IndexId",
    #                     data_source_id: "DataSourceId"
    #                   }
    #                 ]
    #               }
    #             }
    #           }
    #         ]
    #       }
    #     ],
    #     topic_configurations_to_delete: [
    #       {
    #         name: "TopicConfigurationName", # required
    #         description: "TopicDescription",
    #         example_chat_messages: ["ExampleChatMessage"],
    #         rules: [ # required
    #           {
    #             included_users_and_groups: {
    #               user_ids: ["String"],
    #               user_groups: ["String"]
    #             },
    #             excluded_users_and_groups: {
    #               user_ids: ["String"],
    #               user_groups: ["String"]
    #             },
    #             rule_type: "CONTENT_BLOCKER_RULE" # One of: ["CONTENT_BLOCKER_RULE", "CONTENT_RETRIEVAL_RULE"], # required
    #             rule_configuration: {
    #               # One of:
    #               content_blocker_rule: {
    #                 system_message_override: "SystemMessageOverride"
    #               },
    #               content_retrieval_rule: {
    #                 eligible_data_sources: [
    #                   {
    #                     index_id: "IndexId",
    #                     data_source_id: "DataSourceId"
    #                   }
    #                 ]
    #               }
    #             }
    #           }
    #         ]
    #       }
    #     ],
    #     creator_mode_configuration: {
    #       creator_mode_control: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #     },
    #     hallucination_reduction_configuration: {
    #       hallucination_reduction_control: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #     }
    #   }
    #   options = {}
    #   response = client.update_chat_controls_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateChatControlsConfigurationResponse]
    def update_chat_controls_configuration(params = {}, options = {})
      request = build_request(:update_chat_controls_configuration, params)
      request.send_request(options)
    end

    # <p>Updates an existing chat response configuration in an Amazon Q Business application. This operation allows administrators to modify configuration settings, display name, and response parameters to refine how the system generates responses.</p>
    # @param [Hash, Types::UpdateChatResponseConfigurationRequest] params
    # @option params [String] :application_id
    #   <p>The unique identifier of the Amazon Q Business application containing the chat response configuration to update.</p>
    # @option params [String] :chat_response_configuration_id
    #   <p>The unique identifier of the chat response configuration to update within the specified application.</p>
    # @option params [String] :display_name
    #   <p>The new human-readable name to assign to the chat response configuration, making it easier to identify among multiple configurations.</p>
    # @option params [Hash<String, Types::ResponseConfiguration>] :response_configurations
    #   <p>The updated collection of response configuration settings that define how Amazon Q Business generates and formats responses to user queries.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier to ensure idempotency of the request. This helps prevent the same update from being processed multiple times if retries occur.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "ApplicationId", # required
    #     chat_response_configuration_id: "ChatResponseConfigurationId", # required
    #     display_name: "DisplayName",
    #     response_configurations: { # required
    #       "ResponseConfigurationType" => {
    #         instruction_collection: {
    #           response_length: "Instruction",
    #           target_audience: "Instruction",
    #           perspective: "Instruction",
    #           output_style: "Instruction",
    #           identity: "Instruction",
    #           tone: "Instruction",
    #           custom_instructions: "Instruction",
    #           examples: "Instruction"
    #         }
    #       }
    #     },
    #     client_token: "String"
    #   }
    #   options = {}
    #   response = client.update_chat_response_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateChatResponseConfigurationResponse]
    def update_chat_response_configuration(params = {}, options = {})
      request = build_request(:update_chat_response_configuration, params)
      request.send_request(options)
    end

    # <p>Updates an existing data accessor. This operation allows modifying the action configurations (the allowed actions and associated filters) and the display name of the data accessor. It does not allow changing the IAM role associated with the data accessor or other core properties of the data accessor.</p>
    # @param [Hash, Types::UpdateDataAccessorRequest] params
    # @option params [String] :application_id
    #   <p>The unique identifier of the Amazon Q Business application.</p>
    # @option params [String] :data_accessor_id
    #   <p>The unique identifier of the data accessor to update.</p>
    # @option params [Array<Types::ActionConfiguration>] :action_configurations
    #   <p>The updated list of action configurations specifying the allowed actions and any associated filters.</p>
    # @option params [Types::DataAccessorAuthenticationDetail] :authentication_detail
    #   <p>The updated authentication configuration details for the data accessor. This specifies how the ISV will authenticate when accessing data through this data accessor.</p>
    # @option params [String] :display_name
    #   <p>The updated friendly name for the data accessor.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "ApplicationId", # required
    #     data_accessor_id: "DataAccessorId", # required
    #     action_configurations: [ # required
    #       {
    #         action: "QIamAction", # required
    #         filter_configuration: {
    #           document_attribute_filter: { # required
    #             and_all_filters: [
    #               {
    #                 # recursive AttributeFilter
    #               }
    #             ],
    #             or_all_filters: [
    #               {
    #                 # recursive AttributeFilter
    #               }
    #             ],
    #             not_filter: {
    #               # recursive AttributeFilter
    #             },
    #             equals_to: {
    #               name: "DocumentAttributeKey", # required
    #               value: { # required
    #                 # One of:
    #                 string_value: "DocumentAttributeStringValue",
    #                 string_list_value: ["String"],
    #                 long_value: 1,
    #                 date_value: Time.now
    #               }
    #             },
    #             contains_all: {
    #               name: "DocumentAttributeKey", # required
    #               value: { # required
    #                 # One of:
    #                 string_value: "DocumentAttributeStringValue",
    #                 string_list_value: ["String"],
    #                 long_value: 1,
    #                 date_value: Time.now
    #               }
    #             },
    #             contains_any: {
    #               name: "DocumentAttributeKey", # required
    #               value: { # required
    #                 # One of:
    #                 string_value: "DocumentAttributeStringValue",
    #                 string_list_value: ["String"],
    #                 long_value: 1,
    #                 date_value: Time.now
    #               }
    #             },
    #             greater_than: {
    #               name: "DocumentAttributeKey", # required
    #               value: { # required
    #                 # One of:
    #                 string_value: "DocumentAttributeStringValue",
    #                 string_list_value: ["String"],
    #                 long_value: 1,
    #                 date_value: Time.now
    #               }
    #             },
    #             greater_than_or_equals: {
    #               name: "DocumentAttributeKey", # required
    #               value: { # required
    #                 # One of:
    #                 string_value: "DocumentAttributeStringValue",
    #                 string_list_value: ["String"],
    #                 long_value: 1,
    #                 date_value: Time.now
    #               }
    #             },
    #             less_than: {
    #               name: "DocumentAttributeKey", # required
    #               value: { # required
    #                 # One of:
    #                 string_value: "DocumentAttributeStringValue",
    #                 string_list_value: ["String"],
    #                 long_value: 1,
    #                 date_value: Time.now
    #               }
    #             },
    #             less_than_or_equals: {
    #               name: "DocumentAttributeKey", # required
    #               value: { # required
    #                 # One of:
    #                 string_value: "DocumentAttributeStringValue",
    #                 string_list_value: ["String"],
    #                 long_value: 1,
    #                 date_value: Time.now
    #               }
    #             }
    #           }
    #         }
    #       }
    #     ],
    #     authentication_detail: {
    #       authentication_type: "AWS_IAM_IDC_TTI" # One of: ["AWS_IAM_IDC_TTI", "AWS_IAM_IDC_AUTH_CODE"], # required
    #       authentication_configuration: {
    #         # One of:
    #         idc_trusted_token_issuer_configuration: {
    #           idc_trusted_token_issuer_arn: "IdcTrustedTokenIssuerArn", # required
    #         }
    #       },
    #       external_ids: ["DataAccessorExternalId"]
    #     },
    #     display_name: "DataAccessorName"
    #   }
    #   options = {}
    #   response = client.update_data_accessor(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateDataAccessorResponse]
    def update_data_accessor(params = {}, options = {})
      request = build_request(:update_data_accessor, params)
      request.send_request(options)
    end

    # <p>Updates an existing Amazon Q Business data source connector.</p>
    # @param [Hash, Types::UpdateDataSourceRequest] params
    # @option params [String] :application_id
    #   <p> The identifier of the Amazon Q Business application the data source is attached to.</p>
    # @option params [String] :index_id
    #   <p>The identifier of the index attached to the data source connector.</p>
    # @option params [String] :data_source_id
    #   <p>The identifier of the data source connector.</p>
    # @option params [String] :display_name
    #   <p>A name of the data source connector.</p>
    # @option params [JSON] :configuration
    #   <p>Provides the configuration information for an Amazon Q Business data source.</p>
    # @option params [Types::DataSourceVpcConfiguration] :vpc_configuration
    #   <p>Provides configuration information needed to connect to an Amazon VPC (Virtual Private Cloud).</p>
    # @option params [String] :description
    #   <p>The description of the data source connector.</p>
    # @option params [String] :sync_schedule
    #   <p>The chosen update frequency for your data source.</p>
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM role with permission to access the data source and required resources.</p>
    # @option params [Types::DocumentEnrichmentConfiguration] :document_enrichment_configuration
    #   <p>Provides the configuration information for altering document metadata and content during the document ingestion process.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/amazonq/latest/business-use-dg/custom-document-enrichment.html">Custom document enrichment</a>.</p>
    # @option params [Types::MediaExtractionConfiguration] :media_extraction_configuration
    #   <p>The configuration for extracting information from media in documents for your data source.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "ApplicationId", # required
    #     index_id: "IndexId", # required
    #     data_source_id: "DataSourceId", # required
    #     display_name: "DataSourceName",
    #     configuration: ""null"",
    #     vpc_configuration: {
    #       subnet_ids: ["SubnetId"], # required
    #       security_group_ids: ["SecurityGroupId"], # required
    #     },
    #     description: "Description",
    #     sync_schedule: "SyncSchedule",
    #     role_arn: "RoleArn",
    #     document_enrichment_configuration: {
    #       inline_configurations: [
    #         {
    #           condition: {
    #             key: "DocumentAttributeKey", # required
    #             operator: "GREATER_THAN" # One of: ["GREATER_THAN", "GREATER_THAN_OR_EQUALS", "LESS_THAN", "LESS_THAN_OR_EQUALS", "EQUALS", "NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "EXISTS", "NOT_EXISTS", "BEGINS_WITH"], # required
    #             value: {
    #               # One of:
    #               string_value: "DocumentAttributeStringValue",
    #               string_list_value: ["String"],
    #               long_value: 1,
    #               date_value: Time.now
    #             }
    #           },
    #           target: {
    #             key: "DocumentAttributeKey", # required
    #             value: {
    #               # One of:
    #               string_value: "DocumentAttributeStringValue",
    #               string_list_value: ["String"],
    #               long_value: 1,
    #               date_value: Time.now
    #             },
    #             attribute_value_operator: "DELETE" # One of: ["DELETE"]
    #           },
    #           document_content_operator: "DELETE" # One of: ["DELETE"]
    #         }
    #       ],
    #       pre_extraction_hook_configuration: {
    #         invocation_condition: {
    #           key: "DocumentAttributeKey", # required
    #           operator: "GREATER_THAN" # One of: ["GREATER_THAN", "GREATER_THAN_OR_EQUALS", "LESS_THAN", "LESS_THAN_OR_EQUALS", "EQUALS", "NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "EXISTS", "NOT_EXISTS", "BEGINS_WITH"], # required
    #           value: {
    #             # One of:
    #             string_value: "DocumentAttributeStringValue",
    #             string_list_value: ["String"],
    #             long_value: 1,
    #             date_value: Time.now
    #           }
    #         },
    #         lambda_arn: "LambdaArn",
    #         s3_bucket_name: "S3BucketName",
    #         role_arn: "RoleArn"
    #       },
    #       post_extraction_hook_configuration: {
    #         invocation_condition: {
    #           key: "DocumentAttributeKey", # required
    #           operator: "GREATER_THAN" # One of: ["GREATER_THAN", "GREATER_THAN_OR_EQUALS", "LESS_THAN", "LESS_THAN_OR_EQUALS", "EQUALS", "NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "EXISTS", "NOT_EXISTS", "BEGINS_WITH"], # required
    #           value: {
    #             # One of:
    #             string_value: "DocumentAttributeStringValue",
    #             string_list_value: ["String"],
    #             long_value: 1,
    #             date_value: Time.now
    #           }
    #         },
    #         lambda_arn: "LambdaArn",
    #         s3_bucket_name: "S3BucketName",
    #         role_arn: "RoleArn"
    #       }
    #     },
    #     media_extraction_configuration: {
    #       image_extraction_configuration: {
    #         image_extraction_status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #       },
    #       audio_extraction_configuration: {
    #         audio_extraction_status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #       },
    #       video_extraction_configuration: {
    #         video_extraction_status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_data_source(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateDataSourceResponse]
    def update_data_source(params = {}, options = {})
      request = build_request(:update_data_source, params)
      request.send_request(options)
    end

    # <p>Updates an Amazon Q Business index.</p>
    # @param [Hash, Types::UpdateIndexRequest] params
    # @option params [String] :application_id
    #   <p>The identifier of the Amazon Q Business application connected to the index.</p>
    # @option params [String] :index_id
    #   <p>The identifier of the Amazon Q Business index.</p>
    # @option params [String] :display_name
    #   <p>The name of the Amazon Q Business index.</p>
    # @option params [String] :description
    #   <p>The description of the Amazon Q Business index.</p>
    # @option params [Types::IndexCapacityConfiguration] :capacity_configuration
    #   <p>The storage capacity units you want to provision for your Amazon Q Business index. You can add and remove capacity to fit your usage needs.</p>
    # @option params [Array<Types::DocumentAttributeConfiguration>] :document_attribute_configurations
    #   <p>Configuration information for document metadata or fields. Document metadata are fields or attributes associated with your documents. For example, the company department name associated with each document. For more information, see <a href="https://docs.aws.amazon.com/amazonq/latest/business-use-dg/doc-attributes-types.html#doc-attributes">Understanding document attributes</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "ApplicationId", # required
    #     index_id: "IndexId", # required
    #     display_name: "ApplicationName",
    #     description: "Description",
    #     capacity_configuration: {
    #       units: 1
    #     },
    #     document_attribute_configurations: [
    #       {
    #         name: "DocumentMetadataConfigurationName",
    #         type: "STRING" # One of: ["STRING", "STRING_LIST", "NUMBER", "DATE"],
    #         search: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_index(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateIndexResponse]
    def update_index(params = {}, options = {})
      request = build_request(:update_index, params)
      request.send_request(options)
    end

    # <p>Updates an Amazon Q Business plugin.</p>
    # @param [Hash, Types::UpdatePluginRequest] params
    # @option params [String] :application_id
    #   <p>The identifier of the application the plugin is attached to.</p>
    # @option params [String] :plugin_id
    #   <p>The identifier of the plugin.</p>
    # @option params [String] :display_name
    #   <p>The name of the plugin.</p>
    # @option params [String] :state
    #   <p>The status of the plugin. </p>
    # @option params [String] :server_url
    #   <p>The source URL used for plugin configuration.</p>
    # @option params [Types::CustomPluginConfiguration] :custom_plugin_configuration
    #   <p>The configuration for a custom plugin.</p>
    # @option params [Types::PluginAuthConfiguration] :auth_configuration
    #   <p>The authentication configuration the plugin is using.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "ApplicationId", # required
    #     plugin_id: "PluginId", # required
    #     display_name: "PluginName",
    #     state: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #     server_url: "Url",
    #     custom_plugin_configuration: {
    #       description: "PluginDescription", # required
    #       api_schema_type: "OPEN_API_V3" # One of: ["OPEN_API_V3"], # required
    #       api_schema: {
    #         # One of:
    #         payload: "Payload",
    #         s3: {
    #           bucket: "S3BucketName", # required
    #           key: "S3ObjectKey", # required
    #         }
    #       }
    #     },
    #     auth_configuration: {
    #       # One of:
    #       basic_auth_configuration: {
    #         secret_arn: "SecretArn", # required
    #         role_arn: "RoleArn", # required
    #       },
    #       o_auth2_client_credential_configuration: {
    #         secret_arn: "SecretArn", # required
    #         role_arn: "RoleArn", # required
    #         authorization_url: "Url",
    #         token_url: "Url"
    #       },
    #       no_auth_configuration: {
    #       },
    #       idc_auth_configuration: {
    #         idc_application_arn: "IdcApplicationArn", # required
    #         role_arn: "RoleArn", # required
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_plugin(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdatePluginResponse]
    def update_plugin(params = {}, options = {})
      request = build_request(:update_plugin, params)
      request.send_request(options)
    end

    # <p>Updates the retriever used for your Amazon Q Business application.</p>
    # @param [Hash, Types::UpdateRetrieverRequest] params
    # @option params [String] :application_id
    #   <p>The identifier of your Amazon Q Business application.</p>
    # @option params [String] :retriever_id
    #   <p>The identifier of your retriever.</p>
    # @option params [Types::RetrieverConfiguration] :configuration
    #   <p>Provides information on how the retriever used for your Amazon Q Business application is configured.</p>
    # @option params [String] :display_name
    #   <p>The name of your retriever.</p>
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM role with permission to access the retriever and required resources. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "ApplicationId", # required
    #     retriever_id: "RetrieverId", # required
    #     configuration: {
    #       # One of:
    #       native_index_configuration: {
    #         index_id: "IndexId", # required
    #         version: 1,
    #         boosting_override: {
    #           "DocumentAttributeKey" => {
    #             # One of:
    #             number_configuration: {
    #               boosting_level: "NONE" # One of: ["NONE", "LOW", "MEDIUM", "HIGH", "VERY_HIGH", "ONE", "TWO"], # required
    #               boosting_type: "PRIORITIZE_LARGER_VALUES" # One of: ["PRIORITIZE_LARGER_VALUES", "PRIORITIZE_SMALLER_VALUES"]
    #             },
    #             string_configuration: {
    #               boosting_level: "NONE" # One of: ["NONE", "LOW", "MEDIUM", "HIGH", "VERY_HIGH", "ONE", "TWO"], # required
    #               attribute_value_boosting: {
    #                 "String" => "LOW" # One of: ["LOW", "MEDIUM", "HIGH", "VERY_HIGH", "ONE", "TWO", "THREE", "FOUR", "FIVE"]
    #               }
    #             },
    #             date_configuration: {
    #               boosting_level: "NONE" # One of: ["NONE", "LOW", "MEDIUM", "HIGH", "VERY_HIGH", "ONE", "TWO"], # required
    #               boosting_duration_in_seconds: 1
    #             },
    #             string_list_configuration: {
    #               boosting_level: "NONE" # One of: ["NONE", "LOW", "MEDIUM", "HIGH", "VERY_HIGH", "ONE", "TWO"], # required
    #             }
    #           }
    #         }
    #       },
    #       kendra_index_configuration: {
    #         index_id: "KendraIndexId", # required
    #       }
    #     },
    #     display_name: "RetrieverName",
    #     role_arn: "RoleArn"
    #   }
    #   options = {}
    #   response = client.update_retriever(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateRetrieverResponse]
    def update_retriever(params = {}, options = {})
      request = build_request(:update_retriever, params)
      request.send_request(options)
    end

    # <p>Updates the pricing tier for an Amazon Q Business subscription. Upgrades are instant. Downgrades apply at the start of the next month. Subscription tier determines feature access for the user. For more information on subscriptions and pricing tiers, see <a href="https://aws.amazon.com/q/business/pricing/">Amazon Q Business pricing</a>.</p>
    # @param [Hash, Types::UpdateSubscriptionRequest] params
    # @option params [String] :application_id
    #   <p>The identifier of the Amazon Q Business application where the subscription update should take effect.</p>
    # @option params [String] :subscription_id
    #   <p>The identifier of the Amazon Q Business subscription to be updated.</p>
    # @option params [String] :type
    #   <p>The type of the Amazon Q Business subscription to be updated.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "ApplicationId", # required
    #     subscription_id: "SubscriptionId", # required
    #     type: "Q_LITE" # One of: ["Q_LITE", "Q_BUSINESS"], # required
    #   }
    #   options = {}
    #   response = client.update_subscription(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     subscription_arn: "SubscriptionArn",
    #     current_subscription: {
    #       type: "Q_LITE" # One of: ["Q_LITE", "Q_BUSINESS"]
    #     },
    #     next_subscription: {
    #       type: "Q_LITE" # One of: ["Q_LITE", "Q_BUSINESS"]
    #     }
    #   }
    # @return [Types::UpdateSubscriptionResponse]
    def update_subscription(params = {}, options = {})
      request = build_request(:update_subscription, params)
      request.send_request(options)
    end

    # <p>Updates a information associated with a user id.</p>
    # @param [Hash, Types::UpdateUserRequest] params
    # @option params [String] :application_id
    #   <p>The identifier of the application the user is attached to.</p>
    # @option params [String] :user_id
    #   <p>The email id attached to the user.</p>
    # @option params [Array<Types::UserAlias>] :user_aliases_to_update
    #   <p>The user aliases attached to the user id that are to be updated.</p>
    # @option params [Array<Types::UserAlias>] :user_aliases_to_delete
    #   <p>The user aliases attached to the user id that are to be deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "ApplicationId", # required
    #     user_id: "String", # required
    #     user_aliases_to_update: [
    #       {
    #         index_id: "IndexId",
    #         data_source_id: "DataSourceId",
    #         user_id: "String", # required
    #       }
    #     ],
    #     user_aliases_to_delete: [
    #       {
    #         index_id: "IndexId",
    #         data_source_id: "DataSourceId",
    #         user_id: "String", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_user(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     user_aliases_added: [
    #       {
    #         index_id: "IndexId",
    #         data_source_id: "DataSourceId",
    #         user_id: "String", # required
    #       }
    #     ],
    #     user_aliases_updated: [
    #       {
    #         index_id: "IndexId",
    #         data_source_id: "DataSourceId",
    #         user_id: "String", # required
    #       }
    #     ],
    #     user_aliases_deleted: [
    #       {
    #         index_id: "IndexId",
    #         data_source_id: "DataSourceId",
    #         user_id: "String", # required
    #       }
    #     ]
    #   }
    # @return [Types::UpdateUserResponse]
    def update_user(params = {}, options = {})
      request = build_request(:update_user, params)
      request.send_request(options)
    end

    # <p>Updates an Amazon Q Business web experience. </p>
    # @param [Hash, Types::UpdateWebExperienceRequest] params
    # @option params [String] :application_id
    #   <p>The identifier of the Amazon Q Business application attached to the web experience.</p>
    # @option params [String] :web_experience_id
    #   <p>The identifier of the Amazon Q Business web experience.</p>
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of the role with permission to access the Amazon Q Business web experience and required resources.</p>
    # @option params [Types::WebExperienceAuthConfiguration] :authentication_configuration
    #   <p>The authentication configuration of the Amazon Q Business web experience.</p>
    # @option params [String] :title
    #   <p>The title of the Amazon Q Business web experience.</p>
    # @option params [String] :subtitle
    #   <p>The subtitle of the Amazon Q Business web experience.</p>
    # @option params [String] :welcome_message
    #   <p>A customized welcome message for an end user in an Amazon Q Business web experience.</p>
    # @option params [String] :sample_prompts_control_mode
    #   <p>Determines whether sample prompts are enabled in the web experience for an end user.</p>
    # @option params [Types::IdentityProviderConfiguration] :identity_provider_configuration
    #   <p>Information about the identity provider (IdP) used to authenticate end users of an Amazon Q Business web experience.</p>
    # @option params [Array<String>] :origins
    #   <p>Updates the website domain origins that are allowed to embed the Amazon Q Business web experience. The <i>domain origin</i> refers to the <i>base URL</i> for accessing a website including the protocol (<code>http/https</code>), the domain name, and the port number (if specified).</p> <note> <ul> <li> <p>Any values except <code>null</code> submitted as part of this update will replace all previous values.</p> </li> <li> <p>You must only submit a <i>base URL</i> and not a full path. For example, <code>https://docs.aws.amazon.com</code>.</p> </li> </ul> </note>
    # @option params [Types::BrowserExtensionConfiguration] :browser_extension_configuration
    #   <p>The browser extension configuration for an Amazon Q Business web experience.</p> <note> <p> For Amazon Q Business application using external OIDC-compliant identity providers (IdPs). The IdP administrator must add the browser extension sign-in redirect URLs to the IdP application. For more information, see <a href="https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/browser-extensions.html">Configure external OIDC identity provider for your browser extensions.</a>. </p> </note>
    # @option params [Types::CustomizationConfiguration] :customization_configuration
    #   <p>Updates the custom logo, favicon, font, and color used in the Amazon Q web experience. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "ApplicationId", # required
    #     web_experience_id: "WebExperienceId", # required
    #     role_arn: "RoleArn",
    #     authentication_configuration: {
    #       # One of:
    #       saml_configuration: {
    #         metadata_xml: "SamlMetadataXML", # required
    #         role_arn: "RoleArn", # required
    #         user_id_attribute: "SamlAttribute", # required
    #         user_group_attribute: "SamlAttribute"
    #       }
    #     },
    #     title: "WebExperienceTitle",
    #     subtitle: "WebExperienceSubtitle",
    #     welcome_message: "WebExperienceWelcomeMessage",
    #     sample_prompts_control_mode: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #     identity_provider_configuration: {
    #       # One of:
    #       saml_configuration: {
    #         authentication_url: "SamlAuthenticationUrl", # required
    #       },
    #       open_id_connect_configuration: {
    #         secrets_arn: "SecretArn", # required
    #         secrets_role: "RoleArn", # required
    #       }
    #     },
    #     origins: ["Origin"],
    #     browser_extension_configuration: {
    #       enabled_browser_extensions: ["BrowserExtension"], # required
    #     },
    #     customization_configuration: {
    #       custom_css_url: "CustomCSSUrl",
    #       logo_url: "LogoUrl",
    #       font_url: "FontUrl",
    #       favicon_url: "FaviconUrl"
    #     }
    #   }
    #   options = {}
    #   response = client.update_web_experience(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateWebExperienceResponse]
    def update_web_experience(params = {}, options = {})
      request = build_request(:update_web_experience, params)
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
      context[:gem_name] = 'aws-sdk-qbusiness'
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
