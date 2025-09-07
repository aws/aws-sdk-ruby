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
require 'smithy-client/plugins/stub_responses'
require 'aws-sdk-core/plugins/sigv4'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/rest_json_protocol'

module Aws::DataExchange
  # An API client for Aws::DataExchange.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::DataExchange

    add_plugin(::Aws::DataExchange::Plugins::Endpoint)
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
    add_plugin(Smithy::Client::Plugins::StubResponses)
    add_plugin(Aws::Core::Plugins::SigV4)
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
    add_plugin(Aws::Core::Plugins::RestJsonProtocol)

    # @param options [Hash] Client options
    # @option options [String] :access_key_id
    # @option options [String] :account_id
    # @option options [Boolean] :adaptive_retry_wait_to_fill (true)
    #  When true, the request will sleep until there is sufficient client side capacity to retry
    #  the request. When false, the request will raise a `CapacityNotAvailableError` and will
    #  not retry instead of sleeping.
    # @option options [#resolve(context)] :auth_resolver (AuthResolver.new)
    #  An object that resolves authentication schemes for request signing
    # @option options [Boolean] :convert_params (true)
    #  When `true`, request parameters are coerced into the required types.
    # @option options [#identity] :credentials
    #  The credentials provider used to resolve credentials. Any object that responds to `#identity`
    #  and returns a {Aws::Core::Credentials}.
    # @option options [Boolean] :disable_host_prefix_injection
    #  When `true`, the SDK will not prepend the modeled host prefix to the endpoint.
    # @option options [Boolean] :disable_request_compression
    #  When `true`, the request body will not be compressed for supported operations.
    # @option options [String] :endpoint
    #  Custom Endpoint
    # @option options [Aws::DataExchange::EndpointProvider] :endpoint_provider
    #  The endpoint provider used to resolve endpoints. Any object that responds to `#resolve(parameters)`.
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
    #  TODO
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
    # @option options [Boolean] :use_dual_stack_endpoint
    #  TODO
    # @option options [Boolean] :use_fips_endpoint
    #  TODO
    # @option options [Boolean] :validate_params (true)
    #  When `true`, request parameters are validated before sending the request.
    def initialize(*options)
      super
    end

    # <p>This operation accepts a data grant.</p>
    # @param [Hash, Types::AcceptDataGrantRequest] params
    # @option params [String] :data_grant_arn
    #   <p>The Amazon Resource Name (ARN) of the data grant to accept.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     data_grant_arn: "DataGrantArn", # required
    #   }
    #   options = {}
    #   response = client.accept_data_grant(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "DataGrantName", # required
    #     sender_principal: "SenderPrincipal",
    #     receiver_principal: "ReceiverPrincipal", # required
    #     description: "DataGrantDescription",
    #     acceptance_state: "DataGrantAcceptanceState", # required
    #     accepted_at: Time.now,
    #     ends_at: Time.now,
    #     grant_distribution_scope: "GrantDistributionScope", # required
    #     data_set_id: "Id", # required
    #     id: "Id", # required
    #     arn: "Arn", # required
    #     created_at: Time.now, # required
    #     updated_at: Time.now, # required
    #   }
    # @return [Types::AcceptDataGrantResponse]
    def accept_data_grant(params = {}, options = {})
      request = build_request(:accept_data_grant, params)
      request.send_request(options)
    end

    # <p>This operation cancels a job. Jobs can be cancelled only when they are in the WAITING
    #          state.</p>
    # @param [Hash, Types::CancelJobInput] params
    # @option params [String] :job_id
    #   <p>The unique identifier for a job.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_id: "Id", # required
    #   }
    #   options = {}
    #   response = client.cancel_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def cancel_job(params = {}, options = {})
      request = build_request(:cancel_job, params)
      request.send_request(options)
    end

    # <p>This operation creates a data grant.</p>
    # @param [Hash, Types::CreateDataGrantRequest] params
    # @option params [String] :name
    #   <p>The name of the data grant.</p>
    # @option params [String] :grant_distribution_scope
    #   <p>The distribution scope of the data grant.</p>
    # @option params [String] :receiver_principal
    #   <p>The Amazon Web Services account ID of the data grant receiver.</p>
    # @option params [String] :source_data_set_id
    #   <p>The ID of the data set used to create the data grant.</p>
    # @option params [Time] :ends_at
    #   <p>The timestamp of when access to the associated data set ends.</p>
    # @option params [String] :description
    #   <p>The description of the data grant.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to add to the data grant. A tag is a key-value pair.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "DataGrantName", # required
    #     grant_distribution_scope: "GrantDistributionScope", # required
    #     receiver_principal: "ReceiverPrincipal", # required
    #     source_data_set_id: "Id", # required
    #     ends_at: Time.now,
    #     description: "Description",
    #     tags: {
    #       "__string" => "__string"
    #     }
    #   }
    #   options = {}
    #   response = client.create_data_grant(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "DataGrantName", # required
    #     sender_principal: "SenderPrincipal", # required
    #     receiver_principal: "ReceiverPrincipal", # required
    #     description: "DataGrantDescription",
    #     acceptance_state: "DataGrantAcceptanceState", # required
    #     accepted_at: Time.now,
    #     ends_at: Time.now,
    #     grant_distribution_scope: "GrantDistributionScope", # required
    #     data_set_id: "Id", # required
    #     source_data_set_id: "Id", # required
    #     id: "Id", # required
    #     arn: "Arn", # required
    #     created_at: Time.now, # required
    #     updated_at: Time.now, # required
    #     tags: {
    #       "__string" => "__string"
    #     }
    #   }
    # @return [Types::CreateDataGrantResponse]
    def create_data_grant(params = {}, options = {})
      request = build_request(:create_data_grant, params)
      request.send_request(options)
    end

    # <p>This operation creates a data set.</p>
    # @param [Hash, Types::CreateDataSetInput] params
    # @option params [String] :asset_type
    #   <p>The type of asset that is added to a data set.</p>
    # @option params [String] :description
    #   <p>A description for the data set. This value can be up to 16,348 characters long.</p>
    # @option params [String] :name
    #   <p>The name of the data set.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A data set tag is an optional label that you can assign to a data set when you create
    #            it. Each tag consists of a key and an optional value, both of which you define. When you
    #            use tagging, you can also use tag-based access control in IAM policies to control access to
    #            these data sets and revisions.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     asset_type: "AssetType", # required
    #     description: "Description", # required
    #     name: "Name", # required
    #     tags: {
    #       "__string" => "__string"
    #     }
    #   }
    #   options = {}
    #   response = client.create_data_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "Arn",
    #     asset_type: "AssetType",
    #     created_at: Time.now,
    #     description: "Description",
    #     id: "Id",
    #     name: "Name",
    #     origin: "Origin",
    #     origin_details: {
    #       product_id: "__string",
    #       data_grant_id: "__string"
    #     },
    #     source_id: "Id",
    #     tags: {
    #       "__string" => "__string"
    #     },
    #     updated_at: Time.now
    #   }
    # @return [Types::CreateDataSetOutput]
    def create_data_set(params = {}, options = {})
      request = build_request(:create_data_set, params)
      request.send_request(options)
    end

    # <p>This operation creates an event action.</p>
    # @param [Hash, Types::CreateEventActionInput] params
    # @option params [Types::Action] :action
    #   <p>What occurs after a certain event.</p>
    # @option params [Types::Event] :event
    #   <p>What occurs to start an action.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Key-value pairs that you can associate with the event action.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     action: { # required
    #       export_revision_to_s3: {
    #         encryption: {
    #           kms_key_arn: "__string",
    #           type: "ServerSideEncryptionTypes", # required
    #         },
    #         revision_destination: { # required
    #           bucket: "__string", # required
    #           key_pattern: "__string"
    #         }
    #       }
    #     },
    #     event: { # required
    #       revision_published: {
    #         data_set_id: "Id", # required
    #       }
    #     },
    #     tags: {
    #       "__string" => "__string"
    #     }
    #   }
    #   options = {}
    #   response = client.create_event_action(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     action: {
    #       export_revision_to_s3: {
    #         encryption: {
    #           kms_key_arn: "__string",
    #           type: "ServerSideEncryptionTypes", # required
    #         },
    #         revision_destination: { # required
    #           bucket: "__string", # required
    #           key_pattern: "__string"
    #         }
    #       }
    #     },
    #     arn: "Arn",
    #     created_at: Time.now,
    #     event: {
    #       revision_published: {
    #         data_set_id: "Id", # required
    #       }
    #     },
    #     id: "Id",
    #     tags: {
    #       "__string" => "__string"
    #     },
    #     updated_at: Time.now
    #   }
    # @return [Types::CreateEventActionOutput]
    def create_event_action(params = {}, options = {})
      request = build_request(:create_event_action, params)
      request.send_request(options)
    end

    # <p>This operation creates a job.</p>
    # @param [Hash, Types::CreateJobInput] params
    # @option params [Types::RequestDetails] :details
    #   <p>The details for the CreateJob request.</p>
    # @option params [String] :type
    #   <p>The type of job to be created.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     details: { # required
    #       export_asset_to_signed_url: {
    #         asset_id: "Id", # required
    #         data_set_id: "Id", # required
    #         revision_id: "Id", # required
    #       },
    #       export_assets_to_s3: {
    #         asset_destinations: [ # required
    #           {
    #             asset_id: "Id", # required
    #             bucket: "__string", # required
    #             key: "__string"
    #           }
    #         ],
    #         data_set_id: "Id", # required
    #         encryption: {
    #           kms_key_arn: "__string",
    #           type: "ServerSideEncryptionTypes", # required
    #         },
    #         revision_id: "Id", # required
    #       },
    #       export_revisions_to_s3: {
    #         data_set_id: "Id", # required
    #         encryption: {
    #           kms_key_arn: "__string",
    #           type: "ServerSideEncryptionTypes", # required
    #         },
    #         revision_destinations: [ # required
    #           {
    #             bucket: "__string", # required
    #             key_pattern: "__string",
    #             revision_id: "Id", # required
    #           }
    #         ]
    #       },
    #       import_asset_from_signed_url: {
    #         asset_name: "AssetName", # required
    #         data_set_id: "Id", # required
    #         md5_hash: "__stringMin24Max24PatternAZaZ094AZaZ092AZaZ093", # required
    #         revision_id: "Id", # required
    #       },
    #       import_assets_from_s3: {
    #         asset_sources: [ # required
    #           {
    #             bucket: "__string", # required
    #             key: "__string", # required
    #           }
    #         ],
    #         data_set_id: "Id", # required
    #         revision_id: "Id", # required
    #       },
    #       import_assets_from_redshift_data_shares: {
    #         asset_sources: [ # required
    #           {
    #             data_share_arn: "__string", # required
    #           }
    #         ],
    #         data_set_id: "Id", # required
    #         revision_id: "Id", # required
    #       },
    #       import_asset_from_api_gateway_api: {
    #         api_description: "ApiDescription",
    #         api_id: "__string", # required
    #         api_key: "__string",
    #         api_name: "__string", # required
    #         api_specification_md5_hash: "__stringMin24Max24PatternAZaZ094AZaZ092AZaZ093", # required
    #         data_set_id: "Id", # required
    #         protocol_type: "ProtocolType", # required
    #         revision_id: "Id", # required
    #         stage: "__string", # required
    #       },
    #       create_s3_data_access_from_s3_bucket: {
    #         asset_source: { # required
    #           bucket: "__string", # required
    #           key_prefixes: ["__string"],
    #           keys: ["__string"],
    #           kms_keys_to_grant: [
    #             {
    #               kms_key_arn: "KmsKeyArn", # required
    #             }
    #           ]
    #         },
    #         data_set_id: "Id", # required
    #         revision_id: "Id", # required
    #       },
    #       import_assets_from_lake_formation_tag_policy: {
    #         catalog_id: "AwsAccountId", # required
    #         database: {
    #           expression: [ # required
    #             {
    #               tag_key: "String", # required
    #               tag_values: ["String"], # required
    #             }
    #           ],
    #           permissions: ["DatabaseLFTagPolicyPermission"], # required
    #         },
    #         table: {
    #           expression: [ # required
    #             {
    #               tag_key: "String", # required
    #               tag_values: ["String"], # required
    #             }
    #           ],
    #           permissions: ["TableTagPolicyLFPermission"], # required
    #         },
    #         role_arn: "RoleArn", # required
    #         data_set_id: "Id", # required
    #         revision_id: "Id", # required
    #       }
    #     },
    #     type: "Type", # required
    #   }
    #   options = {}
    #   response = client.create_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "Arn",
    #     created_at: Time.now,
    #     details: {
    #       export_asset_to_signed_url: {
    #         asset_id: "Id", # required
    #         data_set_id: "Id", # required
    #         revision_id: "Id", # required
    #         signed_url: "__string",
    #         signed_url_expires_at: Time.now
    #       },
    #       export_assets_to_s3: {
    #         asset_destinations: [ # required
    #           {
    #             asset_id: "Id", # required
    #             bucket: "__string", # required
    #             key: "__string"
    #           }
    #         ],
    #         data_set_id: "Id", # required
    #         encryption: {
    #           kms_key_arn: "__string",
    #           type: "ServerSideEncryptionTypes", # required
    #         },
    #         revision_id: "Id", # required
    #       },
    #       export_revisions_to_s3: {
    #         data_set_id: "Id", # required
    #         encryption: {
    #           kms_key_arn: "__string",
    #           type: "ServerSideEncryptionTypes", # required
    #         },
    #         revision_destinations: [ # required
    #           {
    #             bucket: "__string", # required
    #             key_pattern: "__string",
    #             revision_id: "Id", # required
    #           }
    #         ],
    #         event_action_arn: "__string"
    #       },
    #       import_asset_from_signed_url: {
    #         asset_name: "AssetName", # required
    #         data_set_id: "Id", # required
    #         md5_hash: "__stringMin24Max24PatternAZaZ094AZaZ092AZaZ093",
    #         revision_id: "Id", # required
    #         signed_url: "__string",
    #         signed_url_expires_at: Time.now
    #       },
    #       import_assets_from_s3: {
    #         asset_sources: [ # required
    #           {
    #             bucket: "__string", # required
    #             key: "__string", # required
    #           }
    #         ],
    #         data_set_id: "Id", # required
    #         revision_id: "Id", # required
    #       },
    #       import_assets_from_redshift_data_shares: {
    #         asset_sources: [ # required
    #           {
    #             data_share_arn: "__string", # required
    #           }
    #         ],
    #         data_set_id: "Id", # required
    #         revision_id: "Id", # required
    #       },
    #       import_asset_from_api_gateway_api: {
    #         api_description: "ApiDescription",
    #         api_id: "__string", # required
    #         api_key: "__string",
    #         api_name: "__string", # required
    #         api_specification_md5_hash: "__stringMin24Max24PatternAZaZ094AZaZ092AZaZ093", # required
    #         api_specification_upload_url: "__string", # required
    #         api_specification_upload_url_expires_at: Time.now, # required
    #         data_set_id: "Id", # required
    #         protocol_type: "ProtocolType", # required
    #         revision_id: "Id", # required
    #         stage: "__string", # required
    #       },
    #       create_s3_data_access_from_s3_bucket: {
    #         asset_source: { # required
    #           bucket: "__string", # required
    #           key_prefixes: ["__string"],
    #           keys: ["__string"],
    #           kms_keys_to_grant: [
    #             {
    #               kms_key_arn: "KmsKeyArn", # required
    #             }
    #           ]
    #         },
    #         data_set_id: "Id", # required
    #         revision_id: "Id", # required
    #       },
    #       import_assets_from_lake_formation_tag_policy: {
    #         catalog_id: "AwsAccountId", # required
    #         database: {
    #           expression: [ # required
    #             {
    #               tag_key: "String", # required
    #               tag_values: ["String"], # required
    #             }
    #           ],
    #           permissions: ["DatabaseLFTagPolicyPermission"], # required
    #         },
    #         table: {
    #           expression: [ # required
    #             {
    #               tag_key: "String", # required
    #               tag_values: ["String"], # required
    #             }
    #           ],
    #           permissions: ["TableTagPolicyLFPermission"], # required
    #         },
    #         role_arn: "RoleArn", # required
    #         data_set_id: "Id", # required
    #         revision_id: "Id", # required
    #       }
    #     },
    #     errors: [
    #       {
    #         code: "Code", # required
    #         details: {
    #           import_asset_from_signed_url_job_error_details: {
    #             asset_name: "AssetName", # required
    #           },
    #           import_assets_from_s3_job_error_details: [
    #             {
    #               bucket: "__string", # required
    #               key: "__string", # required
    #             }
    #           ]
    #         },
    #         limit_name: "JobErrorLimitName",
    #         limit_value: 1.0,
    #         message: "__string", # required
    #         resource_id: "__string",
    #         resource_type: "JobErrorResourceTypes"
    #       }
    #     ],
    #     id: "Id",
    #     state: "State",
    #     type: "Type",
    #     updated_at: Time.now
    #   }
    # @return [Types::CreateJobOutput]
    def create_job(params = {}, options = {})
      request = build_request(:create_job, params)
      request.send_request(options)
    end

    # <p>This operation creates a revision for a data set.</p>
    # @param [Hash, Types::CreateRevisionInput] params
    # @option params [String] :comment
    #   <p>An optional comment about the revision.</p>
    # @option params [String] :data_set_id
    #   <p>The unique identifier for a data set.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A revision tag is an optional label that you can assign to a revision when you create
    #            it. Each tag consists of a key and an optional value, both of which you define. When you
    #            use tagging, you can also use tag-based access control in IAM policies to control access to
    #            these data sets and revisions.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     comment: "__stringMin0Max16384",
    #     data_set_id: "Id", # required
    #     tags: {
    #       "__string" => "__string"
    #     }
    #   }
    #   options = {}
    #   response = client.create_revision(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "Arn",
    #     comment: "__stringMin0Max16384",
    #     created_at: Time.now,
    #     data_set_id: "Id",
    #     finalized: false,
    #     id: "Id",
    #     source_id: "Id",
    #     tags: {
    #       "__string" => "__string"
    #     },
    #     updated_at: Time.now,
    #     revocation_comment: "__stringMin10Max512",
    #     revoked: false,
    #     revoked_at: Time.now
    #   }
    # @return [Types::CreateRevisionOutput]
    def create_revision(params = {}, options = {})
      request = build_request(:create_revision, params)
      request.send_request(options)
    end

    # <p>This operation deletes an asset.</p>
    # @param [Hash, Types::DeleteAssetInput] params
    # @option params [String] :asset_id
    #   <p>The unique identifier for an asset.</p>
    # @option params [String] :data_set_id
    #   <p>The unique identifier for a data set.</p>
    # @option params [String] :revision_id
    #   <p>The unique identifier for a revision.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     asset_id: "Id", # required
    #     data_set_id: "Id", # required
    #     revision_id: "Id", # required
    #   }
    #   options = {}
    #   response = client.delete_asset(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_asset(params = {}, options = {})
      request = build_request(:delete_asset, params)
      request.send_request(options)
    end

    # <p>This operation deletes a data grant.</p>
    # @param [Hash, Types::DeleteDataGrantRequest] params
    # @option params [String] :data_grant_id
    #   <p>The ID of the data grant to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     data_grant_id: "DataGrantId", # required
    #   }
    #   options = {}
    #   response = client.delete_data_grant(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_data_grant(params = {}, options = {})
      request = build_request(:delete_data_grant, params)
      request.send_request(options)
    end

    # <p>This operation deletes a data set.</p>
    # @param [Hash, Types::DeleteDataSetInput] params
    # @option params [String] :data_set_id
    #   <p>The unique identifier for a data set.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     data_set_id: "Id", # required
    #   }
    #   options = {}
    #   response = client.delete_data_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_data_set(params = {}, options = {})
      request = build_request(:delete_data_set, params)
      request.send_request(options)
    end

    # <p>This operation deletes the event action.</p>
    # @param [Hash, Types::DeleteEventActionInput] params
    # @option params [String] :event_action_id
    #   <p>The unique identifier for the event action.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     event_action_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.delete_event_action(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_event_action(params = {}, options = {})
      request = build_request(:delete_event_action, params)
      request.send_request(options)
    end

    # <p>This operation deletes a revision.</p>
    # @param [Hash, Types::DeleteRevisionInput] params
    # @option params [String] :data_set_id
    #   <p>The unique identifier for a data set.</p>
    # @option params [String] :revision_id
    #   <p>The unique identifier for a revision.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     data_set_id: "Id", # required
    #     revision_id: "Id", # required
    #   }
    #   options = {}
    #   response = client.delete_revision(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_revision(params = {}, options = {})
      request = build_request(:delete_revision, params)
      request.send_request(options)
    end

    # <p>This operation returns information about an asset.</p>
    # @param [Hash, Types::GetAssetInput] params
    # @option params [String] :asset_id
    #   <p>The unique identifier for an asset.</p>
    # @option params [String] :data_set_id
    #   <p>The unique identifier for a data set.</p>
    # @option params [String] :revision_id
    #   <p>The unique identifier for a revision.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     asset_id: "Id", # required
    #     data_set_id: "Id", # required
    #     revision_id: "Id", # required
    #   }
    #   options = {}
    #   response = client.get_asset(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "Arn",
    #     asset_details: {
    #       s3_snapshot_asset: {
    #         size: 1.0, # required
    #       },
    #       redshift_data_share_asset: {
    #         arn: "__string", # required
    #       },
    #       api_gateway_api_asset: {
    #         api_description: "ApiDescription",
    #         api_endpoint: "__string",
    #         api_id: "__string",
    #         api_key: "__string",
    #         api_name: "__string",
    #         api_specification_download_url: "__string",
    #         api_specification_download_url_expires_at: Time.now,
    #         protocol_type: "ProtocolType",
    #         stage: "__string"
    #       },
    #       s3_data_access_asset: {
    #         bucket: "__string", # required
    #         key_prefixes: ["__string"],
    #         keys: ["__string"],
    #         s3_access_point_alias: "__string",
    #         s3_access_point_arn: "__string",
    #         kms_keys_to_grant: [
    #           {
    #             kms_key_arn: "KmsKeyArn", # required
    #           }
    #         ]
    #       },
    #       lake_formation_data_permission_asset: {
    #         lake_formation_data_permission_details: { # required
    #           lf_tag_policy: {
    #             catalog_id: "AwsAccountId", # required
    #             resource_type: "LFResourceType", # required
    #             resource_details: { # required
    #               database: {
    #                 expression: [ # required
    #                   {
    #                     tag_key: "String", # required
    #                     tag_values: ["String"], # required
    #                   }
    #                 ]
    #               },
    #               table: {
    #                 expression: [ # required
    #                   {
    #                     tag_key: "String", # required
    #                     tag_values: ["String"], # required
    #                   }
    #                 ]
    #               }
    #             }
    #           }
    #         },
    #         lake_formation_data_permission_type: "LakeFormationDataPermissionType", # required
    #         permissions: ["LFPermission"], # required
    #         role_arn: "RoleArn"
    #       }
    #     },
    #     asset_type: "AssetType",
    #     created_at: Time.now,
    #     data_set_id: "Id",
    #     id: "Id",
    #     name: "AssetName",
    #     revision_id: "Id",
    #     source_id: "Id",
    #     updated_at: Time.now
    #   }
    # @return [Types::GetAssetOutput]
    def get_asset(params = {}, options = {})
      request = build_request(:get_asset, params)
      request.send_request(options)
    end

    # <p>This operation returns information about a data grant.</p>
    # @param [Hash, Types::GetDataGrantRequest] params
    # @option params [String] :data_grant_id
    #   <p>The ID of the data grant.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     data_grant_id: "DataGrantId", # required
    #   }
    #   options = {}
    #   response = client.get_data_grant(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "DataGrantName", # required
    #     sender_principal: "SenderPrincipal", # required
    #     receiver_principal: "ReceiverPrincipal", # required
    #     description: "DataGrantDescription",
    #     acceptance_state: "DataGrantAcceptanceState", # required
    #     accepted_at: Time.now,
    #     ends_at: Time.now,
    #     grant_distribution_scope: "GrantDistributionScope", # required
    #     data_set_id: "Id", # required
    #     source_data_set_id: "Id", # required
    #     id: "Id", # required
    #     arn: "Arn", # required
    #     created_at: Time.now, # required
    #     updated_at: Time.now, # required
    #     tags: {
    #       "__string" => "__string"
    #     }
    #   }
    # @return [Types::GetDataGrantResponse]
    def get_data_grant(params = {}, options = {})
      request = build_request(:get_data_grant, params)
      request.send_request(options)
    end

    # <p>This operation returns information about a data set.</p>
    # @param [Hash, Types::GetDataSetInput] params
    # @option params [String] :data_set_id
    #   <p>The unique identifier for a data set.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     data_set_id: "Id", # required
    #   }
    #   options = {}
    #   response = client.get_data_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "Arn",
    #     asset_type: "AssetType",
    #     created_at: Time.now,
    #     description: "Description",
    #     id: "Id",
    #     name: "Name",
    #     origin: "Origin",
    #     origin_details: {
    #       product_id: "__string",
    #       data_grant_id: "__string"
    #     },
    #     source_id: "Id",
    #     tags: {
    #       "__string" => "__string"
    #     },
    #     updated_at: Time.now
    #   }
    # @return [Types::GetDataSetOutput]
    def get_data_set(params = {}, options = {})
      request = build_request(:get_data_set, params)
      request.send_request(options)
    end

    # <p>This operation retrieves information about an event action.</p>
    # @param [Hash, Types::GetEventActionInput] params
    # @option params [String] :event_action_id
    #   <p>The unique identifier for the event action.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     event_action_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.get_event_action(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     action: {
    #       export_revision_to_s3: {
    #         encryption: {
    #           kms_key_arn: "__string",
    #           type: "ServerSideEncryptionTypes", # required
    #         },
    #         revision_destination: { # required
    #           bucket: "__string", # required
    #           key_pattern: "__string"
    #         }
    #       }
    #     },
    #     arn: "Arn",
    #     created_at: Time.now,
    #     event: {
    #       revision_published: {
    #         data_set_id: "Id", # required
    #       }
    #     },
    #     id: "Id",
    #     tags: {
    #       "__string" => "__string"
    #     },
    #     updated_at: Time.now
    #   }
    # @return [Types::GetEventActionOutput]
    def get_event_action(params = {}, options = {})
      request = build_request(:get_event_action, params)
      request.send_request(options)
    end

    # <p>This operation returns information about a job.</p>
    # @param [Hash, Types::GetJobInput] params
    # @option params [String] :job_id
    #   <p>The unique identifier for a job.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_id: "Id", # required
    #   }
    #   options = {}
    #   response = client.get_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "Arn",
    #     created_at: Time.now,
    #     details: {
    #       export_asset_to_signed_url: {
    #         asset_id: "Id", # required
    #         data_set_id: "Id", # required
    #         revision_id: "Id", # required
    #         signed_url: "__string",
    #         signed_url_expires_at: Time.now
    #       },
    #       export_assets_to_s3: {
    #         asset_destinations: [ # required
    #           {
    #             asset_id: "Id", # required
    #             bucket: "__string", # required
    #             key: "__string"
    #           }
    #         ],
    #         data_set_id: "Id", # required
    #         encryption: {
    #           kms_key_arn: "__string",
    #           type: "ServerSideEncryptionTypes", # required
    #         },
    #         revision_id: "Id", # required
    #       },
    #       export_revisions_to_s3: {
    #         data_set_id: "Id", # required
    #         encryption: {
    #           kms_key_arn: "__string",
    #           type: "ServerSideEncryptionTypes", # required
    #         },
    #         revision_destinations: [ # required
    #           {
    #             bucket: "__string", # required
    #             key_pattern: "__string",
    #             revision_id: "Id", # required
    #           }
    #         ],
    #         event_action_arn: "__string"
    #       },
    #       import_asset_from_signed_url: {
    #         asset_name: "AssetName", # required
    #         data_set_id: "Id", # required
    #         md5_hash: "__stringMin24Max24PatternAZaZ094AZaZ092AZaZ093",
    #         revision_id: "Id", # required
    #         signed_url: "__string",
    #         signed_url_expires_at: Time.now
    #       },
    #       import_assets_from_s3: {
    #         asset_sources: [ # required
    #           {
    #             bucket: "__string", # required
    #             key: "__string", # required
    #           }
    #         ],
    #         data_set_id: "Id", # required
    #         revision_id: "Id", # required
    #       },
    #       import_assets_from_redshift_data_shares: {
    #         asset_sources: [ # required
    #           {
    #             data_share_arn: "__string", # required
    #           }
    #         ],
    #         data_set_id: "Id", # required
    #         revision_id: "Id", # required
    #       },
    #       import_asset_from_api_gateway_api: {
    #         api_description: "ApiDescription",
    #         api_id: "__string", # required
    #         api_key: "__string",
    #         api_name: "__string", # required
    #         api_specification_md5_hash: "__stringMin24Max24PatternAZaZ094AZaZ092AZaZ093", # required
    #         api_specification_upload_url: "__string", # required
    #         api_specification_upload_url_expires_at: Time.now, # required
    #         data_set_id: "Id", # required
    #         protocol_type: "ProtocolType", # required
    #         revision_id: "Id", # required
    #         stage: "__string", # required
    #       },
    #       create_s3_data_access_from_s3_bucket: {
    #         asset_source: { # required
    #           bucket: "__string", # required
    #           key_prefixes: ["__string"],
    #           keys: ["__string"],
    #           kms_keys_to_grant: [
    #             {
    #               kms_key_arn: "KmsKeyArn", # required
    #             }
    #           ]
    #         },
    #         data_set_id: "Id", # required
    #         revision_id: "Id", # required
    #       },
    #       import_assets_from_lake_formation_tag_policy: {
    #         catalog_id: "AwsAccountId", # required
    #         database: {
    #           expression: [ # required
    #             {
    #               tag_key: "String", # required
    #               tag_values: ["String"], # required
    #             }
    #           ],
    #           permissions: ["DatabaseLFTagPolicyPermission"], # required
    #         },
    #         table: {
    #           expression: [ # required
    #             {
    #               tag_key: "String", # required
    #               tag_values: ["String"], # required
    #             }
    #           ],
    #           permissions: ["TableTagPolicyLFPermission"], # required
    #         },
    #         role_arn: "RoleArn", # required
    #         data_set_id: "Id", # required
    #         revision_id: "Id", # required
    #       }
    #     },
    #     errors: [
    #       {
    #         code: "Code", # required
    #         details: {
    #           import_asset_from_signed_url_job_error_details: {
    #             asset_name: "AssetName", # required
    #           },
    #           import_assets_from_s3_job_error_details: [
    #             {
    #               bucket: "__string", # required
    #               key: "__string", # required
    #             }
    #           ]
    #         },
    #         limit_name: "JobErrorLimitName",
    #         limit_value: 1.0,
    #         message: "__string", # required
    #         resource_id: "__string",
    #         resource_type: "JobErrorResourceTypes"
    #       }
    #     ],
    #     id: "Id",
    #     state: "State",
    #     type: "Type",
    #     updated_at: Time.now
    #   }
    # @return [Types::GetJobOutput]
    def get_job(params = {}, options = {})
      request = build_request(:get_job, params)
      request.send_request(options)
    end

    # <p>This operation returns information about a received data grant.</p>
    # @param [Hash, Types::GetReceivedDataGrantRequest] params
    # @option params [String] :data_grant_arn
    #   <p>The Amazon Resource Name (ARN) of the data grant.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     data_grant_arn: "DataGrantArn", # required
    #   }
    #   options = {}
    #   response = client.get_received_data_grant(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "DataGrantName", # required
    #     sender_principal: "SenderPrincipal",
    #     receiver_principal: "ReceiverPrincipal", # required
    #     description: "DataGrantDescription",
    #     acceptance_state: "DataGrantAcceptanceState", # required
    #     accepted_at: Time.now,
    #     ends_at: Time.now,
    #     grant_distribution_scope: "GrantDistributionScope", # required
    #     data_set_id: "Id", # required
    #     id: "Id", # required
    #     arn: "Arn", # required
    #     created_at: Time.now, # required
    #     updated_at: Time.now, # required
    #   }
    # @return [Types::GetReceivedDataGrantResponse]
    def get_received_data_grant(params = {}, options = {})
      request = build_request(:get_received_data_grant, params)
      request.send_request(options)
    end

    # <p>This operation returns information about a revision.</p>
    # @param [Hash, Types::GetRevisionInput] params
    # @option params [String] :data_set_id
    #   <p>The unique identifier for a data set.</p>
    # @option params [String] :revision_id
    #   <p>The unique identifier for a revision.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     data_set_id: "Id", # required
    #     revision_id: "Id", # required
    #   }
    #   options = {}
    #   response = client.get_revision(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "Arn",
    #     comment: "__stringMin0Max16384",
    #     created_at: Time.now,
    #     data_set_id: "Id",
    #     finalized: false,
    #     id: "Id",
    #     source_id: "Id",
    #     tags: {
    #       "__string" => "__string"
    #     },
    #     updated_at: Time.now,
    #     revocation_comment: "__stringMin10Max512",
    #     revoked: false,
    #     revoked_at: Time.now
    #   }
    # @return [Types::GetRevisionOutput]
    def get_revision(params = {}, options = {})
      request = build_request(:get_revision, params)
      request.send_request(options)
    end

    # <p>This operation returns information about all data grants.</p>
    # @param [Hash, Types::ListDataGrantsRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be included in the next page.</p>
    # @option params [String] :next_token
    #   <p>The pagination token used to retrieve the next page of results for this
    #            operation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "__string"
    #   }
    #   options = {}
    #   response = client.list_data_grants(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     data_grant_summaries: [
    #       {
    #         name: "DataGrantName", # required
    #         sender_principal: "SenderPrincipal", # required
    #         receiver_principal: "ReceiverPrincipal", # required
    #         acceptance_state: "DataGrantAcceptanceState", # required
    #         accepted_at: Time.now,
    #         ends_at: Time.now,
    #         data_set_id: "Id", # required
    #         source_data_set_id: "Id", # required
    #         id: "Id", # required
    #         arn: "Arn", # required
    #         created_at: Time.now, # required
    #         updated_at: Time.now, # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListDataGrantsResponse]
    def list_data_grants(params = {}, options = {})
      request = build_request(:list_data_grants, params)
      request.send_request(options)
    end

    # <p>This operation lists a data set's revisions sorted by CreatedAt in descending
    #          order.</p>
    # @param [Hash, Types::ListDataSetRevisionsInput] params
    # @option params [String] :data_set_id
    #   <p>The unique identifier for a data set.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results returned by a single call.</p>
    # @option params [String] :next_token
    #   <p>The token value retrieved from a previous call to access the next page of
    #            results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     data_set_id: "Id", # required
    #     max_results: 1,
    #     next_token: "__string"
    #   }
    #   options = {}
    #   response = client.list_data_set_revisions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     revisions: [
    #       {
    #         arn: "Arn", # required
    #         comment: "__stringMin0Max16384",
    #         created_at: Time.now, # required
    #         data_set_id: "Id", # required
    #         finalized: false,
    #         id: "Id", # required
    #         source_id: "Id",
    #         updated_at: Time.now, # required
    #         revocation_comment: "__stringMin10Max512",
    #         revoked: false,
    #         revoked_at: Time.now
    #       }
    #     ]
    #   }
    # @return [Types::ListDataSetRevisionsOutput]
    def list_data_set_revisions(params = {}, options = {})
      request = build_request(:list_data_set_revisions, params)
      request.send_request(options)
    end

    # <p>This operation lists your data sets. When listing by origin OWNED, results are sorted by
    #          CreatedAt in descending order. When listing by origin ENTITLED, there is no order.</p>
    # @param [Hash, Types::ListDataSetsInput] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results returned by a single call.</p>
    # @option params [String] :next_token
    #   <p>The token value retrieved from a previous call to access the next page of
    #            results.</p>
    # @option params [String] :origin
    #   <p>A property that defines the data set as OWNED by the account (for providers) or ENTITLED
    #            to the account (for subscribers).</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "__string",
    #     origin: "__string"
    #   }
    #   options = {}
    #   response = client.list_data_sets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     data_sets: [
    #       {
    #         arn: "Arn", # required
    #         asset_type: "AssetType", # required
    #         created_at: Time.now, # required
    #         description: "Description", # required
    #         id: "Id", # required
    #         name: "Name", # required
    #         origin: "Origin", # required
    #         origin_details: {
    #           product_id: "__string",
    #           data_grant_id: "__string"
    #         },
    #         source_id: "Id",
    #         updated_at: Time.now, # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListDataSetsOutput]
    def list_data_sets(params = {}, options = {})
      request = build_request(:list_data_sets, params)
      request.send_request(options)
    end

    # <p>This operation lists your event actions.</p>
    # @param [Hash, Types::ListEventActionsInput] params
    # @option params [String] :event_source_id
    #   <p>The unique identifier for the event source.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results returned by a single call.</p>
    # @option params [String] :next_token
    #   <p>The token value retrieved from a previous call to access the next page of
    #            results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     event_source_id: "__string",
    #     max_results: 1,
    #     next_token: "__string"
    #   }
    #   options = {}
    #   response = client.list_event_actions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     event_actions: [
    #       {
    #         action: { # required
    #           export_revision_to_s3: {
    #             encryption: {
    #               kms_key_arn: "__string",
    #               type: "ServerSideEncryptionTypes", # required
    #             },
    #             revision_destination: { # required
    #               bucket: "__string", # required
    #               key_pattern: "__string"
    #             }
    #           }
    #         },
    #         arn: "Arn", # required
    #         created_at: Time.now, # required
    #         event: { # required
    #           revision_published: {
    #             data_set_id: "Id", # required
    #           }
    #         },
    #         id: "Id", # required
    #         updated_at: Time.now, # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListEventActionsOutput]
    def list_event_actions(params = {}, options = {})
      request = build_request(:list_event_actions, params)
      request.send_request(options)
    end

    # <p>This operation lists your jobs sorted by CreatedAt in descending order.</p>
    # @param [Hash, Types::ListJobsInput] params
    # @option params [String] :data_set_id
    #   <p>The unique identifier for a data set.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results returned by a single call.</p>
    # @option params [String] :next_token
    #   <p>The token value retrieved from a previous call to access the next page of
    #            results.</p>
    # @option params [String] :revision_id
    #   <p>The unique identifier for a revision.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     data_set_id: "__string",
    #     max_results: 1,
    #     next_token: "__string",
    #     revision_id: "__string"
    #   }
    #   options = {}
    #   response = client.list_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     jobs: [
    #       {
    #         arn: "Arn", # required
    #         created_at: Time.now, # required
    #         details: { # required
    #           export_asset_to_signed_url: {
    #             asset_id: "Id", # required
    #             data_set_id: "Id", # required
    #             revision_id: "Id", # required
    #             signed_url: "__string",
    #             signed_url_expires_at: Time.now
    #           },
    #           export_assets_to_s3: {
    #             asset_destinations: [ # required
    #               {
    #                 asset_id: "Id", # required
    #                 bucket: "__string", # required
    #                 key: "__string"
    #               }
    #             ],
    #             data_set_id: "Id", # required
    #             encryption: {
    #               kms_key_arn: "__string",
    #               type: "ServerSideEncryptionTypes", # required
    #             },
    #             revision_id: "Id", # required
    #           },
    #           export_revisions_to_s3: {
    #             data_set_id: "Id", # required
    #             encryption: {
    #               kms_key_arn: "__string",
    #               type: "ServerSideEncryptionTypes", # required
    #             },
    #             revision_destinations: [ # required
    #               {
    #                 bucket: "__string", # required
    #                 key_pattern: "__string",
    #                 revision_id: "Id", # required
    #               }
    #             ],
    #             event_action_arn: "__string"
    #           },
    #           import_asset_from_signed_url: {
    #             asset_name: "AssetName", # required
    #             data_set_id: "Id", # required
    #             md5_hash: "__stringMin24Max24PatternAZaZ094AZaZ092AZaZ093",
    #             revision_id: "Id", # required
    #             signed_url: "__string",
    #             signed_url_expires_at: Time.now
    #           },
    #           import_assets_from_s3: {
    #             asset_sources: [ # required
    #               {
    #                 bucket: "__string", # required
    #                 key: "__string", # required
    #               }
    #             ],
    #             data_set_id: "Id", # required
    #             revision_id: "Id", # required
    #           },
    #           import_assets_from_redshift_data_shares: {
    #             asset_sources: [ # required
    #               {
    #                 data_share_arn: "__string", # required
    #               }
    #             ],
    #             data_set_id: "Id", # required
    #             revision_id: "Id", # required
    #           },
    #           import_asset_from_api_gateway_api: {
    #             api_description: "ApiDescription",
    #             api_id: "__string", # required
    #             api_key: "__string",
    #             api_name: "__string", # required
    #             api_specification_md5_hash: "__stringMin24Max24PatternAZaZ094AZaZ092AZaZ093", # required
    #             api_specification_upload_url: "__string", # required
    #             api_specification_upload_url_expires_at: Time.now, # required
    #             data_set_id: "Id", # required
    #             protocol_type: "ProtocolType", # required
    #             revision_id: "Id", # required
    #             stage: "__string", # required
    #           },
    #           create_s3_data_access_from_s3_bucket: {
    #             asset_source: { # required
    #               bucket: "__string", # required
    #               key_prefixes: ["__string"],
    #               keys: ["__string"],
    #               kms_keys_to_grant: [
    #                 {
    #                   kms_key_arn: "KmsKeyArn", # required
    #                 }
    #               ]
    #             },
    #             data_set_id: "Id", # required
    #             revision_id: "Id", # required
    #           },
    #           import_assets_from_lake_formation_tag_policy: {
    #             catalog_id: "AwsAccountId", # required
    #             database: {
    #               expression: [ # required
    #                 {
    #                   tag_key: "String", # required
    #                   tag_values: ["String"], # required
    #                 }
    #               ],
    #               permissions: ["DatabaseLFTagPolicyPermission"], # required
    #             },
    #             table: {
    #               expression: [ # required
    #                 {
    #                   tag_key: "String", # required
    #                   tag_values: ["String"], # required
    #                 }
    #               ],
    #               permissions: ["TableTagPolicyLFPermission"], # required
    #             },
    #             role_arn: "RoleArn", # required
    #             data_set_id: "Id", # required
    #             revision_id: "Id", # required
    #           }
    #         },
    #         errors: [
    #           {
    #             code: "Code", # required
    #             details: {
    #               import_asset_from_signed_url_job_error_details: {
    #                 asset_name: "AssetName", # required
    #               },
    #               import_assets_from_s3_job_error_details: [
    #                 {
    #                   bucket: "__string", # required
    #                   key: "__string", # required
    #                 }
    #               ]
    #             },
    #             limit_name: "JobErrorLimitName",
    #             limit_value: 1.0,
    #             message: "__string", # required
    #             resource_id: "__string",
    #             resource_type: "JobErrorResourceTypes"
    #           }
    #         ],
    #         id: "Id", # required
    #         state: "State", # required
    #         type: "Type", # required
    #         updated_at: Time.now, # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListJobsOutput]
    def list_jobs(params = {}, options = {})
      request = build_request(:list_jobs, params)
      request.send_request(options)
    end

    # <p>This operation returns information about all received data grants.</p>
    # @param [Hash, Types::ListReceivedDataGrantsRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be included in the next page.</p>
    # @option params [String] :next_token
    #   <p>The pagination token used to retrieve the next page of results for this
    #            operation.</p>
    # @option params [Array<String>] :acceptance_state
    #   <p>The acceptance state of the data grants to list.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "__string",
    #     acceptance_state: ["AcceptanceStateFilterValue"]
    #   }
    #   options = {}
    #   response = client.list_received_data_grants(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     data_grant_summaries: [
    #       {
    #         name: "DataGrantName", # required
    #         sender_principal: "SenderPrincipal", # required
    #         receiver_principal: "ReceiverPrincipal", # required
    #         acceptance_state: "DataGrantAcceptanceState", # required
    #         accepted_at: Time.now,
    #         ends_at: Time.now,
    #         data_set_id: "Id", # required
    #         id: "Id", # required
    #         arn: "Arn", # required
    #         created_at: Time.now, # required
    #         updated_at: Time.now, # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListReceivedDataGrantsResponse]
    def list_received_data_grants(params = {}, options = {})
      request = build_request(:list_received_data_grants, params)
      request.send_request(options)
    end

    # <p>This operation lists a revision's assets sorted alphabetically in descending
    #          order.</p>
    # @param [Hash, Types::ListRevisionAssetsInput] params
    # @option params [String] :data_set_id
    #   <p>The unique identifier for a data set.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results returned by a single call.</p>
    # @option params [String] :next_token
    #   <p>The token value retrieved from a previous call to access the next page of
    #            results.</p>
    # @option params [String] :revision_id
    #   <p>The unique identifier for a revision.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     data_set_id: "Id", # required
    #     max_results: 1,
    #     next_token: "__string",
    #     revision_id: "Id", # required
    #   }
    #   options = {}
    #   response = client.list_revision_assets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     assets: [
    #       {
    #         arn: "Arn", # required
    #         asset_details: { # required
    #           s3_snapshot_asset: {
    #             size: 1.0, # required
    #           },
    #           redshift_data_share_asset: {
    #             arn: "__string", # required
    #           },
    #           api_gateway_api_asset: {
    #             api_description: "ApiDescription",
    #             api_endpoint: "__string",
    #             api_id: "__string",
    #             api_key: "__string",
    #             api_name: "__string",
    #             api_specification_download_url: "__string",
    #             api_specification_download_url_expires_at: Time.now,
    #             protocol_type: "ProtocolType",
    #             stage: "__string"
    #           },
    #           s3_data_access_asset: {
    #             bucket: "__string", # required
    #             key_prefixes: ["__string"],
    #             keys: ["__string"],
    #             s3_access_point_alias: "__string",
    #             s3_access_point_arn: "__string",
    #             kms_keys_to_grant: [
    #               {
    #                 kms_key_arn: "KmsKeyArn", # required
    #               }
    #             ]
    #           },
    #           lake_formation_data_permission_asset: {
    #             lake_formation_data_permission_details: { # required
    #               lf_tag_policy: {
    #                 catalog_id: "AwsAccountId", # required
    #                 resource_type: "LFResourceType", # required
    #                 resource_details: { # required
    #                   database: {
    #                     expression: [ # required
    #                       {
    #                         tag_key: "String", # required
    #                         tag_values: ["String"], # required
    #                       }
    #                     ]
    #                   },
    #                   table: {
    #                     expression: [ # required
    #                       {
    #                         tag_key: "String", # required
    #                         tag_values: ["String"], # required
    #                       }
    #                     ]
    #                   }
    #                 }
    #               }
    #             },
    #             lake_formation_data_permission_type: "LakeFormationDataPermissionType", # required
    #             permissions: ["LFPermission"], # required
    #             role_arn: "RoleArn"
    #           }
    #         },
    #         asset_type: "AssetType", # required
    #         created_at: Time.now, # required
    #         data_set_id: "Id", # required
    #         id: "Id", # required
    #         name: "AssetName", # required
    #         revision_id: "Id", # required
    #         source_id: "Id",
    #         updated_at: Time.now, # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListRevisionAssetsOutput]
    def list_revision_assets(params = {}, options = {})
      request = build_request(:list_revision_assets, params)
      request.send_request(options)
    end

    # <p>This operation lists the tags on the resource.</p>
    # @param [Hash, Types::ListTagsForResourceInput] params
    # @option params [String] :resource_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies an AWS resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "__string", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: {
    #       "__string" => "__string"
    #     }
    #   }
    # @return [Types::ListTagsForResourceOutput]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>This operation revokes subscribers' access to a revision.</p>
    # @param [Hash, Types::RevokeRevisionInput] params
    # @option params [String] :data_set_id
    #   <p>The unique identifier for a data set.</p>
    # @option params [String] :revision_id
    #   <p>The unique identifier for a revision.</p>
    # @option params [String] :revocation_comment
    #   <p>A required comment to inform subscribers of the reason their access to the revision was
    #            revoked.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     data_set_id: "Id", # required
    #     revision_id: "Id", # required
    #     revocation_comment: "__stringMin10Max512", # required
    #   }
    #   options = {}
    #   response = client.revoke_revision(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "Arn",
    #     comment: "__stringMin0Max16384",
    #     created_at: Time.now,
    #     data_set_id: "Id",
    #     finalized: false,
    #     id: "Id",
    #     source_id: "Id",
    #     updated_at: Time.now,
    #     revocation_comment: "__stringMin10Max512",
    #     revoked: false,
    #     revoked_at: Time.now
    #   }
    # @return [Types::RevokeRevisionOutput]
    def revoke_revision(params = {}, options = {})
      request = build_request(:revoke_revision, params)
      request.send_request(options)
    end

    # <p>This operation invokes an API Gateway API asset. The request is proxied to the
    #          provider’s API Gateway API.</p>
    # @param [Hash, Types::SendApiAssetInput] params
    # @option params [String] :body
    #   <p>The request body.</p>
    # @option params [Hash<String, String>] :query_string_parameters
    #   <p>Attach query string parameters to the end of the URI (for example,
    #            /v1/examplePath?exampleParam=exampleValue).</p>
    # @option params [String] :asset_id
    #   <p>Asset ID value for the API request.</p>
    # @option params [String] :data_set_id
    #   <p>Data set ID value for the API request.</p>
    # @option params [Hash<String, String>] :request_headers
    #   <p>Any header value prefixed with x-amzn-dataexchange-header- will have that stripped
    #            before sending the Asset API request. Use this when you want to override a header that AWS
    #            Data Exchange uses. Alternatively, you can use the header without a prefix to the HTTP
    #            request.</p>
    # @option params [String] :method
    #   <p>HTTP method value for the API request. Alternatively, you can use the appropriate verb
    #            in your request.</p>
    # @option params [String] :path
    #   <p>URI path value for the API request. Alternatively, you can set the URI path directly by
    #            invoking /v1/{pathValue}.</p>
    # @option params [String] :revision_id
    #   <p>Revision ID value for the API request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     body: "__string",
    #     query_string_parameters: {
    #       "__string" => "__string"
    #     },
    #     asset_id: "__string", # required
    #     data_set_id: "__string", # required
    #     request_headers: {
    #       "__string" => "__string"
    #     },
    #     method: "__string",
    #     path: "__string",
    #     revision_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.send_api_asset(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     body: "__string",
    #     response_headers: {
    #       "__string" => "__string"
    #     }
    #   }
    # @return [Types::SendApiAssetOutput]
    def send_api_asset(params = {}, options = {})
      request = build_request(:send_api_asset, params)
      request.send_request(options)
    end

    # <p>The type of event associated with the data set.</p>
    # @param [Hash, Types::SendDataSetNotificationRequest] params
    # @option params [Types::ScopeDetails] :scope
    #   <p>Affected
    #            scope of this notification such as the underlying resources affected by the notification
    #            event.</p>
    # @option params [String] :client_token
    #   <p>Idempotency
    #            key for the notification, this key allows us to deduplicate notifications that are sent in
    #            quick succession erroneously.</p>
    # @option params [String] :comment
    #   <p>Free-form
    #            text field for providers to add information about their notifications.</p>
    # @option params [String] :data_set_id
    #   <p>Affected
    #            data set of the notification.</p>
    # @option params [Types::NotificationDetails] :details
    #   <p>Extra
    #            details specific to this notification type.</p>
    # @option params [String] :type
    #   <p>The
    #            type of the notification. Describing the kind of event the notification is alerting you
    #            to.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     scope: {
    #       lake_formation_tag_policies: [
    #         {
    #           database: "__string",
    #           table: "__string"
    #         }
    #       ],
    #       redshift_data_shares: [
    #         {
    #           arn: "__string", # required
    #           database: "__string", # required
    #           function: "__string",
    #           table: "__string",
    #           schema: "__string",
    #           view: "__string"
    #         }
    #       ],
    #       s3_data_accesses: [
    #         {
    #           key_prefixes: ["__string"],
    #           keys: ["__string"]
    #         }
    #       ]
    #     },
    #     client_token: "ClientToken",
    #     comment: "__stringMin0Max4096",
    #     data_set_id: "Id", # required
    #     details: {
    #       data_update: {
    #         data_updated_at: Time.now
    #       },
    #       deprecation: {
    #         deprecation_at: Time.now, # required
    #       },
    #       schema_change: {
    #         changes: [
    #           {
    #             name: "__string", # required
    #             type: "SchemaChangeType", # required
    #             description: "__string"
    #           }
    #         ],
    #         schema_change_at: Time.now, # required
    #       }
    #     },
    #     type: "NotificationType", # required
    #   }
    #   options = {}
    #   response = client.send_data_set_notification(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::SendDataSetNotificationResponse]
    def send_data_set_notification(params = {}, options = {})
      request = build_request(:send_data_set_notification, params)
      request.send_request(options)
    end

    # <p>This operation starts a job.</p>
    # @param [Hash, Types::StartJobInput] params
    # @option params [String] :job_id
    #   <p>The unique identifier for a job.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_id: "Id", # required
    #   }
    #   options = {}
    #   response = client.start_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::StartJobOutput]
    def start_job(params = {}, options = {})
      request = build_request(:start_job, params)
      request.send_request(options)
    end

    # <p>This operation tags a resource.</p>
    # @param [Hash, Types::TagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies an AWS resource.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A label that consists of a customer-defined key and an optional value.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "__string", # required
    #     tags: { # required
    #       "__string" => "__string"
    #     }
    #   }
    #   options = {}
    #   response = client.tag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def tag_resource(params = {}, options = {})
      request = build_request(:tag_resource, params)
      request.send_request(options)
    end

    # <p>This operation removes one or more tags from a resource.</p>
    # @param [Hash, Types::UntagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies an AWS resource.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The key tags.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "__string", # required
    #     tag_keys: ["__string"], # required
    #   }
    #   options = {}
    #   response = client.untag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def untag_resource(params = {}, options = {})
      request = build_request(:untag_resource, params)
      request.send_request(options)
    end

    # <p>This operation updates an asset.</p>
    # @param [Hash, Types::UpdateAssetInput] params
    # @option params [String] :asset_id
    #   <p>The unique identifier for an asset.</p>
    # @option params [String] :data_set_id
    #   <p>The unique identifier for a data set.</p>
    # @option params [String] :name
    #   <p>The name of the asset. When importing from Amazon S3, the Amazon S3 object key is used
    #            as the asset name. When exporting to Amazon S3, the asset name is used as default target
    #            Amazon S3 object key. When importing from Amazon API Gateway API, the API name is used as
    #            the asset name. When importing from Amazon Redshift, the datashare name is used as the
    #            asset name. When importing from AWS Lake Formation, the static values of "Database(s)
    #            included in the LF-tag policy" or "Table(s) included in LF-tag policy" are used as the
    #            name.</p>
    # @option params [String] :revision_id
    #   <p>The unique identifier for a revision.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     asset_id: "Id", # required
    #     data_set_id: "Id", # required
    #     name: "AssetName", # required
    #     revision_id: "Id", # required
    #   }
    #   options = {}
    #   response = client.update_asset(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "Arn",
    #     asset_details: {
    #       s3_snapshot_asset: {
    #         size: 1.0, # required
    #       },
    #       redshift_data_share_asset: {
    #         arn: "__string", # required
    #       },
    #       api_gateway_api_asset: {
    #         api_description: "ApiDescription",
    #         api_endpoint: "__string",
    #         api_id: "__string",
    #         api_key: "__string",
    #         api_name: "__string",
    #         api_specification_download_url: "__string",
    #         api_specification_download_url_expires_at: Time.now,
    #         protocol_type: "ProtocolType",
    #         stage: "__string"
    #       },
    #       s3_data_access_asset: {
    #         bucket: "__string", # required
    #         key_prefixes: ["__string"],
    #         keys: ["__string"],
    #         s3_access_point_alias: "__string",
    #         s3_access_point_arn: "__string",
    #         kms_keys_to_grant: [
    #           {
    #             kms_key_arn: "KmsKeyArn", # required
    #           }
    #         ]
    #       },
    #       lake_formation_data_permission_asset: {
    #         lake_formation_data_permission_details: { # required
    #           lf_tag_policy: {
    #             catalog_id: "AwsAccountId", # required
    #             resource_type: "LFResourceType", # required
    #             resource_details: { # required
    #               database: {
    #                 expression: [ # required
    #                   {
    #                     tag_key: "String", # required
    #                     tag_values: ["String"], # required
    #                   }
    #                 ]
    #               },
    #               table: {
    #                 expression: [ # required
    #                   {
    #                     tag_key: "String", # required
    #                     tag_values: ["String"], # required
    #                   }
    #                 ]
    #               }
    #             }
    #           }
    #         },
    #         lake_formation_data_permission_type: "LakeFormationDataPermissionType", # required
    #         permissions: ["LFPermission"], # required
    #         role_arn: "RoleArn"
    #       }
    #     },
    #     asset_type: "AssetType",
    #     created_at: Time.now,
    #     data_set_id: "Id",
    #     id: "Id",
    #     name: "AssetName",
    #     revision_id: "Id",
    #     source_id: "Id",
    #     updated_at: Time.now
    #   }
    # @return [Types::UpdateAssetOutput]
    def update_asset(params = {}, options = {})
      request = build_request(:update_asset, params)
      request.send_request(options)
    end

    # <p>This operation updates a data set.</p>
    # @param [Hash, Types::UpdateDataSetInput] params
    # @option params [String] :data_set_id
    #   <p>The unique identifier for a data set.</p>
    # @option params [String] :description
    #   <p>The description for the data set.</p>
    # @option params [String] :name
    #   <p>The name of the data set.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     data_set_id: "Id", # required
    #     description: "Description",
    #     name: "Name"
    #   }
    #   options = {}
    #   response = client.update_data_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "Arn",
    #     asset_type: "AssetType",
    #     created_at: Time.now,
    #     description: "Description",
    #     id: "Id",
    #     name: "Name",
    #     origin: "Origin",
    #     origin_details: {
    #       product_id: "__string",
    #       data_grant_id: "__string"
    #     },
    #     source_id: "Id",
    #     updated_at: Time.now
    #   }
    # @return [Types::UpdateDataSetOutput]
    def update_data_set(params = {}, options = {})
      request = build_request(:update_data_set, params)
      request.send_request(options)
    end

    # <p>This operation updates the event action.</p>
    # @param [Hash, Types::UpdateEventActionInput] params
    # @option params [Types::Action] :action
    #   <p>What occurs after a certain event.</p>
    # @option params [String] :event_action_id
    #   <p>The unique identifier for the event action.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     action: {
    #       export_revision_to_s3: {
    #         encryption: {
    #           kms_key_arn: "__string",
    #           type: "ServerSideEncryptionTypes", # required
    #         },
    #         revision_destination: { # required
    #           bucket: "__string", # required
    #           key_pattern: "__string"
    #         }
    #       }
    #     },
    #     event_action_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.update_event_action(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     action: {
    #       export_revision_to_s3: {
    #         encryption: {
    #           kms_key_arn: "__string",
    #           type: "ServerSideEncryptionTypes", # required
    #         },
    #         revision_destination: { # required
    #           bucket: "__string", # required
    #           key_pattern: "__string"
    #         }
    #       }
    #     },
    #     arn: "Arn",
    #     created_at: Time.now,
    #     event: {
    #       revision_published: {
    #         data_set_id: "Id", # required
    #       }
    #     },
    #     id: "Id",
    #     updated_at: Time.now
    #   }
    # @return [Types::UpdateEventActionOutput]
    def update_event_action(params = {}, options = {})
      request = build_request(:update_event_action, params)
      request.send_request(options)
    end

    # <p>This operation updates a revision.</p>
    # @param [Hash, Types::UpdateRevisionInput] params
    # @option params [String] :comment
    #   <p>An optional comment about the revision.</p>
    # @option params [String] :data_set_id
    #   <p>The unique identifier for a data set.</p>
    # @option params [Boolean] :finalized
    #   <p>Finalizing a revision tells AWS Data Exchange that your changes to the assets in the
    #            revision are complete. After it's in this read-only state, you can publish the revision to
    #            your products.</p>
    # @option params [String] :revision_id
    #   <p>The unique identifier for a revision.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     comment: "__stringMin0Max16384",
    #     data_set_id: "Id", # required
    #     finalized: false,
    #     revision_id: "Id", # required
    #   }
    #   options = {}
    #   response = client.update_revision(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "Arn",
    #     comment: "__stringMin0Max16384",
    #     created_at: Time.now,
    #     data_set_id: "Id",
    #     finalized: false,
    #     id: "Id",
    #     source_id: "Id",
    #     updated_at: Time.now,
    #     revocation_comment: "__stringMin10Max512",
    #     revoked: false,
    #     revoked_at: Time.now
    #   }
    # @return [Types::UpdateRevisionOutput]
    def update_revision(params = {}, options = {})
      request = build_request(:update_revision, params)
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
      context[:gem_name] = 'aws-sdk-dataexchange'
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
