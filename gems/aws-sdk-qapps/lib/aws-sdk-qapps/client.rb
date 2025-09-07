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

module Aws::QApps
  # An API client for Aws::QApps.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::QAppsService

    add_plugin(::Aws::QApps::Plugins::Endpoint)
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
    # @option options [Aws::QApps::EndpointProvider] :endpoint_provider
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

    # <p>Associates a rating or review for a library item with the user submitting the request.
    #       This increments the rating count for the specified library item.</p>
    # @param [Hash, Types::AssociateLibraryItemReviewInput] params
    # @option params [String] :instance_id
    #   <p>The unique identifier for the Amazon Q Business application environment instance.</p>
    # @option params [String] :library_item_id
    #   <p>The unique identifier of the library item to associate the review with.</p>
    # @example Increase the rating counter by 1 for the related app for this user
    #   # Example operation for associate_library_item_review
    #   params = {
    #     instance_id: "0b95c9c4-89cc-4aa8-9aae-aa91cbec699f",
    #     library_item_id: "cb9ecf72-8563-450d-9db9-994f98297316"
    #   }
    #   options = {}
    #   response = client.associate_library_item_review(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     library_item_id: "UUID", # required
    #   }
    #   options = {}
    #   response = client.associate_library_item_review(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def associate_library_item_review(params = {}, options = {})
      request = build_request(:associate_library_item_review, params)
      request.send_request(options)
    end

    # <p>This operation creates a link between the user's identity calling the operation and a
    #       specific Q App. This is useful to mark the Q App as a <i>favorite</i> for the
    #       user if the user doesn't own the Amazon Q App so they can still run it and see it in their
    #       inventory of Q Apps.</p>
    # @param [Hash, Types::AssociateQAppWithUserInput] params
    # @option params [String] :instance_id
    #   <p>The unique identifier of the Amazon Q Business application environment instance.</p>
    # @option params [String] :app_id
    #   <p>The ID of the Amazon Q App to associate with the user.</p>
    # @example Links an Amazon Q App to the invoker's list of apps
    #   # Example operation for associate_q_app_with_user
    #   params = {
    #     app_id: "393e77fb-0a30-4f47-ad30-75d71aeaed8a",
    #     instance_id: "0b95c9c4-89cc-4aa8-9aae-aa91cbec699f"
    #   }
    #   options = {}
    #   response = client.associate_q_app_with_user(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     app_id: "UUID", # required
    #   }
    #   options = {}
    #   response = client.associate_q_app_with_user(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def associate_q_app_with_user(params = {}, options = {})
      request = build_request(:associate_q_app_with_user, params)
      request.send_request(options)
    end

    # <p>Creates Categories for the Amazon Q Business application environment instance. Web experience users use
    #       Categories to tag and filter library items. For more information, see <a href="https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/qapps-custom-labels.html">Custom
    #         labels for Amazon Q Apps</a>.</p>
    # @param [Hash, Types::BatchCreateCategoryInput] params
    # @option params [String] :instance_id
    #   <p>The unique identifier of the Amazon Q Business application environment instance.</p>
    # @option params [Array<Types::BatchCreateCategoryInputCategory>] :categories
    #   <p>The list of category objects to be created</p>
    # @example Creates the categories for the library
    #   # Example operation for batch_create_category
    #   params = {
    #     instance_id: "0b95c9c4-89cc-4aa8-9aae-aa91cbec699f",
    #     categories: [
    #       {
    #         id: "549abfe0-f5c4-45a2-bb9b-c05987a49c6d",
    #         title: "HR"
    #       },
    #       {
    #         id: "18cbebaa-196a-4aa5-a840-88d548e07f8f",
    #         title: "Marketing"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.batch_create_category(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     categories: [ # required
    #       {
    #         id: "UUID",
    #         title: "String", # required
    #         color: "String"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.batch_create_category(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def batch_create_category(params = {}, options = {})
      request = build_request(:batch_create_category, params)
      request.send_request(options)
    end

    # <p>Deletes Categories for the Amazon Q Business application environment instance. Web experience users use
    #       Categories to tag and filter library items. For more information, see <a href="https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/qapps-custom-labels.html">Custom
    #         labels for Amazon Q Apps</a>.</p>
    # @param [Hash, Types::BatchDeleteCategoryInput] params
    # @option params [String] :instance_id
    #   <p>The unique identifier of the Amazon Q Business application environment instance.</p>
    # @option params [Array<String>] :categories
    #   <p>The list of IDs of the categories to be deleted.</p>
    # @example Deletes the categories in the library
    #   # Example operation for batch_delete_category
    #   params = {
    #     instance_id: "0b95c9c4-89cc-4aa8-9aae-aa91cbec699f",
    #     categories: [
    #       "9c871ed4-1c41-4065-aefe-321cd4b61cf8"
    #     ]
    #   }
    #   options = {}
    #   response = client.batch_delete_category(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     categories: ["UUID"], # required
    #   }
    #   options = {}
    #   response = client.batch_delete_category(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def batch_delete_category(params = {}, options = {})
      request = build_request(:batch_delete_category, params)
      request.send_request(options)
    end

    # <p>Updates Categories for the Amazon Q Business application environment instance. Web experience users use
    #       Categories to tag and filter library items. For more information, see <a href="https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/qapps-custom-labels.html">Custom
    #         labels for Amazon Q Apps</a>.</p>
    # @param [Hash, Types::BatchUpdateCategoryInput] params
    # @option params [String] :instance_id
    #   <p>The unique identifier of the Amazon Q Business application environment instance.</p>
    # @option params [Array<Types::CategoryInput>] :categories
    #   <p>The list of categories to be updated with their new values.</p>
    # @example Updates the categories in the library
    #   # Example operation for batch_update_category
    #   params = {
    #     instance_id: "0b95c9c4-89cc-4aa8-9aae-aa91cbec699f",
    #     categories: [
    #       {
    #         id: "549abfe0-f5c4-45a2-bb9b-c05987a49c6d",
    #         title: "HR Management"
    #       },
    #       {
    #         id: "18cbebaa-196a-4aa5-a840-88d548e07f8f",
    #         title: "Sales"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.batch_update_category(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     categories: [ # required
    #       {
    #         id: "UUID", # required
    #         title: "String", # required
    #         color: "String"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.batch_update_category(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def batch_update_category(params = {}, options = {})
      request = build_request(:batch_update_category, params)
      request.send_request(options)
    end

    # <p>Creates a new library item for an Amazon Q App, allowing it to be discovered and used by
    #       other allowed users. </p>
    # @param [Hash, Types::CreateLibraryItemInput] params
    # @option params [String] :instance_id
    #   <p>The unique identifier of the Amazon Q Business application environment instance.</p>
    # @option params [String] :app_id
    #   <p>The unique identifier of the Amazon Q App to publish to the library.</p>
    # @option params [Integer] :app_version
    #   <p>The version of the Amazon Q App to publish to the library.</p>
    # @option params [Array<String>] :categories
    #   <p>The categories to associate with the library item for easier discovery.</p>
    # @example Create a Library Item
    #   # Example operation for create_library_item
    #   params = {
    #     instance_id: "0b95c9c4-89cc-4aa8-9aae-aa91cbec699f",
    #     app_id: "7a11f34b-42d4-4bc8-b668-ae4a788dae1e",
    #     app_version: 6,
    #     categories: [
    #       "9c871ed4-1c41-4065-aefe-321cd4b61cf8"
    #     ]
    #   }
    #   options = {}
    #   response = client.create_library_item(params, options)
    #   response.to_h #=>
    #   {
    #     library_item_id: "cb9ecf72-8563-450d-9db9-994f98297316",
    #     status: "PUBLISHED",
    #     created_at: Time.parse("2024-05-21T23:17:27.350Z"),
    #     created_by: "a841e300-40c1-7062-fa34-5b46dadbbaac",
    #     updated_at: Time.parse("2024-05-21T23:17:27.350Z"),
    #     updated_by: "a841e300-40c1-7062-fa34-5b46dadbbaac",
    #     is_verified: false,
    #     rating_count: 0
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     app_id: "UUID", # required
    #     app_version: 1, # required
    #     categories: ["UUID"], # required
    #   }
    #   options = {}
    #   response = client.create_library_item(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     library_item_id: "UUID", # required
    #     status: "String", # required
    #     created_at: Time.now, # required
    #     created_by: "String", # required
    #     updated_at: Time.now,
    #     updated_by: "String",
    #     rating_count: 1, # required
    #     is_verified: false
    #   }
    # @return [Types::CreateLibraryItemOutput]
    def create_library_item(params = {}, options = {})
      request = build_request(:create_library_item, params)
      request.send_request(options)
    end

    # <p>Creates a presigned URL for an S3 POST operation to upload a file. You can use this URL to
    #       set a default file for a <code>FileUploadCard</code> in a Q App definition or to provide a
    #       file for a single Q App run. The <code>scope</code> parameter determines how the file will be
    #       used, either at the app definition level or the app session level.</p>
    # @param [Hash, Types::CreatePresignedUrlInput] params
    # @option params [String] :instance_id
    #   <p>The unique identifier of the Amazon Q Business application environment instance.</p>
    # @option params [String] :card_id
    #   <p>The unique identifier of the card the file is associated with.</p>
    # @option params [String] :app_id
    #   <p>The unique identifier of the Q App the file is associated with.</p>
    # @option params [String] :file_contents_sha256
    #   <p>The Base64-encoded SHA-256 digest of the contents of the file to be uploaded.</p>
    # @option params [String] :file_name
    #   <p>The name of the file to be uploaded.</p>
    # @option params [String] :scope
    #   <p>Whether the file is associated with a Q App definition or a specific Q App
    #         session.</p>
    # @option params [String] :session_id
    #   <p>The unique identifier of the Q App session the file is associated with, if
    #         applicable.</p>
    # @example Upload a file to a specific session
    #   # Example operation for create_presigned_url
    #   params = {
    #     instance_id: "0b95c9c4-89cc-4aa8-9aae-aa91cbec699f",
    #     file_contents_sha256: "wXY7GD8m4fmHhdtuQyBdXzNQpdCseVwBcOBIlzfm+kg=",
    #     file_name: "myFile.txt",
    #     card_id: "82f69028-22a9-4bea-8727-0eabf58e9fed",
    #     app_id: "4263767c-d889-4cb2-a8f6-8b649bc66af0",
    #     scope: SESSION,
    #     session_id: "4f0e5b87-9d38-41cd-9eb4-ebce2f2917cc"
    #   }
    #   options = {}
    #   response = client.create_presigned_url(params, options)
    #   response.to_h #=>
    #   {
    #     file_id: "412aa1b4-341c-45af-936d-da52f8a1a3b4",
    #     presigned_url: "https://qapps-uploaded-files-us-east-1-c819fab7cf78c9205158297913deb9e0.s3.us-east-1.amazonaws.com/",
    #     presigned_url_fields: {
    #       "x-amz-server-side-encryption" => "aws:kms",
    #       "x-amz-server-side-encryption-aws-kms-key-id" => "0a6a474b-f2ca-46ea-9e72-deea9077d92f",
    #       "x-amz-server-side-encryption-context" => "eyJBUFBMSUNBVElPTl9JRCI6IjAxMjM0NTY3ODkwMSJ9",
    #       "x-amz-checksum-sha256" => "wXY7GD8m4fmHhdtuQyBdXzNQpdCseVwBcOBIlzfm+kg="
    #     },
    #     presigned_url_expiration: Time.parse("2024-09-14T00:11:54.232Z")
    #   }
    # @example Upload a file into a application
    #   # Example operation for create_presigned_url
    #   params = {
    #     instance_id: "0b95c9c4-89cc-4aa8-9aae-aa91cbec699f",
    #     file_contents_sha256: "wXY7GD8m4fmHhdtuQyBdXzNQpdCseVwBcOBIlzfm+kg=",
    #     file_name: "anApplicationFile.txt",
    #     app_id: "4263767c-d889-4cb2-a8f6-8b649bc66af0",
    #     card_id: "7a11f34b-42d4-4bc8-b668-ae4a788dae1e",
    #     scope: APPLICATION
    #   }
    #   options = {}
    #   response = client.create_presigned_url(params, options)
    #   response.to_h #=>
    #   {
    #     file_id: "412aa1b4-341c-45af-936d-da52f8a1a3b4",
    #     presigned_url: "https://qapps-uploaded-files-us-east-1-c819fab7cf78c9205158297913deb9e0.s3.us-east-1.amazonaws.com/",
    #     presigned_url_fields: {
    #       "x-amz-server-side-encryption" => "aws:kms",
    #       "x-amz-server-side-encryption-aws-kms-key-id" => "0a6a474b-f2ca-46ea-9e72-deea9077d92f",
    #       "x-amz-server-side-encryption-context" => "eyJBUFBMSUNBVElPTl9JRCI6IjAxMjM0NTY3ODkwMSJ9",
    #       "x-amz-checksum-sha256" => "wXY7GD8m4fmHhdtuQyBdXzNQpdCseVwBcOBIlzfm+kg="
    #     },
    #     presigned_url_expiration: Time.parse("2024-09-14T00:11:54.232Z")
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     card_id: "UUID", # required
    #     app_id: "UUID", # required
    #     file_contents_sha256: "String", # required
    #     file_name: "Filename", # required
    #     scope: "APPLICATION" # One of: ["APPLICATION", "SESSION"], # required
    #     session_id: "UUID"
    #   }
    #   options = {}
    #   response = client.create_presigned_url(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     file_id: "String", # required
    #     presigned_url: "String", # required
    #     presigned_url_fields: { # required
    #       "String" => "String"
    #     },
    #     presigned_url_expiration: Time.now, # required
    #   }
    # @return [Types::CreatePresignedUrlOutput]
    def create_presigned_url(params = {}, options = {})
      request = build_request(:create_presigned_url, params)
      request.send_request(options)
    end

    # <p>Creates a new Amazon Q App based on the provided definition. The Q App definition specifies
    #       the cards and flow of the Q App. This operation also calculates the dependencies between the
    #       cards by inspecting the references in the prompts. </p>
    # @param [Hash, Types::CreateQAppInput] params
    # @option params [String] :instance_id
    #   <p>The unique identifier of the Amazon Q Business application environment instance.</p>
    # @option params [String] :title
    #   <p>The title of the new Q App.</p>
    # @option params [String] :description
    #   <p>The description of the new Q App.</p>
    # @option params [Types::AppDefinitionInput] :app_definition
    #   <p>The definition of the new Q App, specifying the cards and flow.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Optional tags to associate with the new Q App.</p>
    # @example A basic application with 1 text input card and 1 output card
    #   # Example operation for create_q_app
    #   params = {
    #     instance_id: "0b95c9c4-89cc-4aa8-9aae-aa91cbec699f",
    #     title: "Color Palette Generator",
    #     app_definition: {
    #       cards: [
    #         {
    #     "textInput" => {
    #       "type" => text-input,
    #       "title" => Color Base,
    #       "id" => 4cf94d96-8819-45c2-98cc-58c56b35c72f
    #     }
    #   },
    #         {
    #     "qQuery" => {
    #       "type" => q-query,
    #       "title" => Recommended Palette,
    #       "id" => 18870b94-1e63-40e0-8c12-669c90ac5acc,
    #       "prompt" => Recommend me a list of colors that go well with @4cf94d96-8819-45c2-98cc-58c56b35c72f
    #     }
    #   }
    #       ],
    #       initial_prompt: "Create an app that recommend a list of colors based on input."
    #     }
    #   }
    #   options = {}
    #   response = client.create_q_app(params, options)
    #   response.to_h #=>
    #   {
    #     app_id: "7212ff04-de7b-4831-bd80-45d6975ba1b0",
    #     app_arn: "arn:aws:qapps:us-west-2:123456789012:app/7212ff04-de7b-4831-bd80-45d6975ba1b0",
    #     title: "Color Palette Generator",
    #     initial_prompt: "Create an app that recommend a list of colors based on input.",
    #     app_version: 1,
    #     status: DRAFT,
    #     created_at: Time.parse("2024-05-14T00:11:54.232Z"),
    #     created_by: "a841e300-40c1-7062-fa34-5b46dadbbaac",
    #     updated_at: Time.parse("2024-05-14T00:13:26.168Z"),
    #     updated_by: "a841e300-40c1-7062-fa34-5b46dadbbaac",
    #     required_capabilities: [
    #       CreatorMode
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     title: "Title", # required
    #     description: "Description",
    #     app_definition: { # required
    #       cards: [{ # required
    #         # One of:
    #         text_input: {
    #           title: "Title", # required
    #           id: "UUID", # required
    #           type: "text-input" # One of: ["text-input", "q-query", "file-upload", "q-plugin", "form-input"], # required
    #           placeholder: "Placeholder",
    #           default_value: "Default"
    #         },
    #         q_query: {
    #           title: "Title", # required
    #           id: "UUID", # required
    #           type: "text-input" # One of: ["text-input", "q-query", "file-upload", "q-plugin", "form-input"], # required
    #           prompt: "Prompt", # required
    #           output_source: "approved-sources" # One of: ["approved-sources", "llm"],
    #           attribute_filter: {
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
    #                 string_list_value: ["PlatoString"],
    #                 long_value: 1,
    #                 date_value: Time.now
    #               }
    #             },
    #             contains_all: {
    #               name: "DocumentAttributeKey", # required
    #               value: { # required
    #                 # One of:
    #                 string_value: "DocumentAttributeStringValue",
    #                 string_list_value: ["PlatoString"],
    #                 long_value: 1,
    #                 date_value: Time.now
    #               }
    #             },
    #             contains_any: {
    #               name: "DocumentAttributeKey", # required
    #               value: { # required
    #                 # One of:
    #                 string_value: "DocumentAttributeStringValue",
    #                 string_list_value: ["PlatoString"],
    #                 long_value: 1,
    #                 date_value: Time.now
    #               }
    #             },
    #             greater_than: {
    #               name: "DocumentAttributeKey", # required
    #               value: { # required
    #                 # One of:
    #                 string_value: "DocumentAttributeStringValue",
    #                 string_list_value: ["PlatoString"],
    #                 long_value: 1,
    #                 date_value: Time.now
    #               }
    #             },
    #             greater_than_or_equals: {
    #               name: "DocumentAttributeKey", # required
    #               value: { # required
    #                 # One of:
    #                 string_value: "DocumentAttributeStringValue",
    #                 string_list_value: ["PlatoString"],
    #                 long_value: 1,
    #                 date_value: Time.now
    #               }
    #             },
    #             less_than: {
    #               name: "DocumentAttributeKey", # required
    #               value: { # required
    #                 # One of:
    #                 string_value: "DocumentAttributeStringValue",
    #                 string_list_value: ["PlatoString"],
    #                 long_value: 1,
    #                 date_value: Time.now
    #               }
    #             },
    #             less_than_or_equals: {
    #               name: "DocumentAttributeKey", # required
    #               value: { # required
    #                 # One of:
    #                 string_value: "DocumentAttributeStringValue",
    #                 string_list_value: ["PlatoString"],
    #                 long_value: 1,
    #                 date_value: Time.now
    #               }
    #             }
    #           }
    #         },
    #         q_plugin: {
    #           title: "Title", # required
    #           id: "UUID", # required
    #           type: "text-input" # One of: ["text-input", "q-query", "file-upload", "q-plugin", "form-input"], # required
    #           prompt: "Prompt", # required
    #           plugin_id: "PluginId", # required
    #           action_identifier: "ActionIdentifier"
    #         },
    #         file_upload: {
    #           title: "Title", # required
    #           id: "UUID", # required
    #           type: "text-input" # One of: ["text-input", "q-query", "file-upload", "q-plugin", "form-input"], # required
    #           filename: "Filename",
    #           file_id: "UUID",
    #           allow_override: false
    #         },
    #         form_input: {
    #           title: "Title", # required
    #           id: "UUID", # required
    #           type: "text-input" # One of: ["text-input", "q-query", "file-upload", "q-plugin", "form-input"], # required
    #           metadata: { # required
    #             schema: ""null"", # required
    #           },
    #           compute_mode: "append" # One of: ["append", "replace"]
    #         }
    #       }],
    #       initial_prompt: "InitialPrompt"
    #     },
    #     tags: {
    #       "String" => "String"
    #     }
    #   }
    #   options = {}
    #   response = client.create_q_app(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     app_id: "UUID", # required
    #     app_arn: "AppArn", # required
    #     title: "Title", # required
    #     description: "Description",
    #     initial_prompt: "InitialPrompt",
    #     app_version: 1, # required
    #     status: "PUBLISHED" # One of: ["PUBLISHED", "DRAFT", "DELETED"], # required
    #     created_at: Time.now, # required
    #     created_by: "String", # required
    #     updated_at: Time.now, # required
    #     updated_by: "String", # required
    #     required_capabilities: ["FileUpload" # One of: ["FileUpload", "CreatorMode", "RetrievalMode", "PluginMode"]]
    #   }
    # @return [Types::CreateQAppOutput]
    def create_q_app(params = {}, options = {})
      request = build_request(:create_q_app, params)
      request.send_request(options)
    end

    # <p>Deletes a library item for an Amazon Q App, removing it from the library so it can no longer
    #       be discovered or used by other users.</p>
    # @param [Hash, Types::DeleteLibraryItemInput] params
    # @option params [String] :instance_id
    #   <p>The unique identifier of the Amazon Q Business application environment instance.</p>
    # @option params [String] :library_item_id
    #   <p>The unique identifier of the library item to delete.</p>
    # @example Delete a library item
    #   # Example operation for delete_library_item
    #   params = {
    #     instance_id: "3642ba81-344c-42fd-a480-9119a5a5f26b",
    #     library_item_id: "72088fd4-78b6-43da-bfb8-8621323c3cfb"
    #   }
    #   options = {}
    #   response = client.delete_library_item(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     library_item_id: "UUID", # required
    #   }
    #   options = {}
    #   response = client.delete_library_item(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_library_item(params = {}, options = {})
      request = build_request(:delete_library_item, params)
      request.send_request(options)
    end

    # <p>Deletes an Amazon Q App owned by the user. If the Q App was previously published to the
    #       library, it is also removed from the library.</p>
    # @param [Hash, Types::DeleteQAppInput] params
    # @option params [String] :instance_id
    #   <p>The unique identifier of the Amazon Q Business application environment instance.</p>
    # @option params [String] :app_id
    #   <p>The unique identifier of the Q App to delete.</p>
    # @example Delete an Amazon Q App
    #   # Example operation for delete_q_app
    #   params = {
    #     app_id: "393e77fb-0a30-4f47-ad30-75d71aeaed8a",
    #     instance_id: "0b95c9c4-89cc-4aa8-9aae-aa91cbec699f"
    #   }
    #   options = {}
    #   response = client.delete_q_app(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     app_id: "UUID", # required
    #   }
    #   options = {}
    #   response = client.delete_q_app(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_q_app(params = {}, options = {})
      request = build_request(:delete_q_app, params)
      request.send_request(options)
    end

    # <p> Describes read permissions for a Amazon Q App in Amazon Q Business application environment instance.</p>
    # @param [Hash, Types::DescribeQAppPermissionsInput] params
    # @option params [String] :instance_id
    #   <p>The unique identifier of the Amazon Q Business application environment instance.</p>
    # @option params [String] :app_id
    #   <p>The unique identifier of the Amazon Q App for which to retrieve permissions.</p>
    # @example Describe permissions for the app
    #   # Example operation for describe_q_app_permissions
    #   params = {
    #     instance_id: "01793661-ad73-4c7d-8eaa-1c95a10151c2",
    #     app_id: "fe0acf86-49e5-4def-a0c2-40ce0cafee14"
    #   }
    #   options = {}
    #   response = client.describe_q_app_permissions(params, options)
    #   response.to_h #=>
    #   {
    #     resource_arn: "arn:aws:qapps:us-west-2:111111111111:application/01793661-ad73-4c7d-8eaa-1c95a10151c2/qapp/fe0acf86-49e5-4def-a0c2-40ce0cafee14",
    #     app_id: "fe0acf86-49e5-4def-a0c2-40ce0cafee14",
    #     permissions: [
    #       {
    #         action: write,
    #         principal: {
    #           user_id: "f8f15330-b091-708b-d46e-adb0d914b699",
    #           email: "user1@example.com"
    #         }
    #       },
    #       {
    #         action: read,
    #         principal: {
    #           user_id: "c81133d0-10d1-70eb-aaa3-d427ea6fc0f3",
    #           email: "user2@example.com"
    #         }
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     app_id: "UUID", # required
    #   }
    #   options = {}
    #   response = client.describe_q_app_permissions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_arn: "String",
    #     app_id: "String",
    #     permissions: [
    #       {
    #         action: "read" # One of: ["read", "write"], # required
    #         principal: { # required
    #           user_id: "String",
    #           user_type: "owner" # One of: ["owner", "user"],
    #           email: "String"
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::DescribeQAppPermissionsOutput]
    def describe_q_app_permissions(params = {}, options = {})
      request = build_request(:describe_q_app_permissions, params)
      request.send_request(options)
    end

    # <p>Removes a rating or review previously submitted by the user for a library item.</p>
    # @param [Hash, Types::DisassociateLibraryItemReviewInput] params
    # @option params [String] :instance_id
    #   <p>The unique identifier of the Amazon Q Business application environment instance.</p>
    # @option params [String] :library_item_id
    #   <p>The unique identifier of the library item to remove the review from.</p>
    # @example Decrease the rating counter by 1 for the related app for this user
    #   # Example operation for disassociate_library_item_review
    #   params = {
    #     instance_id: "0b95c9c4-89cc-4aa8-9aae-aa91cbec699f",
    #     library_item_id: "cb9ecf72-8563-450d-9db9-994f98297316"
    #   }
    #   options = {}
    #   response = client.disassociate_library_item_review(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     library_item_id: "UUID", # required
    #   }
    #   options = {}
    #   response = client.disassociate_library_item_review(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def disassociate_library_item_review(params = {}, options = {})
      request = build_request(:disassociate_library_item_review, params)
      request.send_request(options)
    end

    # <p>Disassociates a Q App from a user removing the user's access to run the Q App.</p>
    # @param [Hash, Types::DisassociateQAppFromUserInput] params
    # @option params [String] :instance_id
    #   <p>The unique identifier of the Amazon Q Business application environment instance.</p>
    # @option params [String] :app_id
    #   <p>The unique identifier of the Q App to disassociate from the user.</p>
    # @example Unlinks an Amazon Q App from the invoker's list of apps
    #   # Example operation for disassociate_q_app_from_user
    #   params = {
    #     app_id: "393e77fb-0a30-4f47-ad30-75d71aeaed8a",
    #     instance_id: "0b95c9c4-89cc-4aa8-9aae-aa91cbec699f"
    #   }
    #   options = {}
    #   response = client.disassociate_q_app_from_user(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     app_id: "UUID", # required
    #   }
    #   options = {}
    #   response = client.disassociate_q_app_from_user(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def disassociate_q_app_from_user(params = {}, options = {})
      request = build_request(:disassociate_q_app_from_user, params)
      request.send_request(options)
    end

    # <p>Exports the collected data of a Q App data collection session.</p>
    # @param [Hash, Types::ExportQAppSessionDataInput] params
    # @option params [String] :instance_id
    #   <p>The unique identifier of the Amazon Q Business application environment instance.</p>
    # @option params [String] :session_id
    #   <p>The unique identifier of the Q App data collection session.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     session_id: "UUID", # required
    #   }
    #   options = {}
    #   response = client.export_q_app_session_data(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     csv_file_link: "String", # required
    #     expires_at: Time.now, # required
    #     session_arn: "String", # required
    #   }
    # @return [Types::ExportQAppSessionDataOutput]
    def export_q_app_session_data(params = {}, options = {})
      request = build_request(:export_q_app_session_data, params)
      request.send_request(options)
    end

    # <p>Retrieves details about a library item for an Amazon Q App, including its metadata,
    #       categories, ratings, and usage statistics.</p>
    # @param [Hash, Types::GetLibraryItemInput] params
    # @option params [String] :instance_id
    #   <p>The unique identifier of the Amazon Q Business application environment instance.</p>
    # @option params [String] :library_item_id
    #   <p>The unique identifier of the library item to retrieve.</p>
    # @option params [String] :app_id
    #   <p>The unique identifier of the Amazon Q App associated with the library item.</p>
    # @example Retrieve a library item
    #   # Example operation for get_library_item
    #   params = {
    #     instance_id: "0b95c9c4-89cc-4aa8-9aae-aa91cbec699f",
    #     library_item_id: "18cbebaa-196a-4aa5-a840-88d548e07f8f"
    #   }
    #   options = {}
    #   response = client.get_library_item(params, options)
    #   response.to_h #=>
    #   {
    #     library_item_id: "18cbebaa-196a-4aa5-a840-88d548e07f8f",
    #     app_id: "0b95c9c4-89cc-4aa8-9aae-aa91cbec699f",
    #     app_version: 1,
    #     categories: [
    #       {
    #         id: "9c871ed4-1c41-4065-aefe-321cd4b61cf8",
    #         title: "HR"
    #       },
    #       {
    #         id: "fdc4b483-c4e2-44c9-b4b2-6c850bbdb579",
    #         title: "General"
    #       },
    #       {
    #         id: "c1c4e374-118c-446f-81fb-cba6225d88da",
    #         title: "IT"
    #       }
    #     ],
    #     status: "PUBLISHED",
    #     rating_count: 0,
    #     is_verified: false,
    #     is_rated_by_user: false,
    #     created_by: "a841e300-40c1-7062-fa34-5b46dadbbaac",
    #     created_at: Time.parse("2024-05-08T16:09:56.080Z"),
    #     updated_by: "a841e300-40c1-7062-fa34-5b46dadbbaac",
    #     updated_at: Time.parse("2024-05-08T16:09:56.080Z"),
    #     user_count: 1
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     library_item_id: "UUID", # required
    #     app_id: "UUID"
    #   }
    #   options = {}
    #   response = client.get_library_item(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     library_item_id: "UUID", # required
    #     app_id: "UUID", # required
    #     app_version: 1, # required
    #     categories: [ # required
    #       {
    #         id: "UUID", # required
    #         title: "String", # required
    #         color: "String",
    #         app_count: 1
    #       }
    #     ],
    #     status: "String", # required
    #     created_at: Time.now, # required
    #     created_by: "String", # required
    #     updated_at: Time.now,
    #     updated_by: "String",
    #     rating_count: 1, # required
    #     is_rated_by_user: false,
    #     user_count: 1,
    #     is_verified: false
    #   }
    # @return [Types::GetLibraryItemOutput]
    def get_library_item(params = {}, options = {})
      request = build_request(:get_library_item, params)
      request.send_request(options)
    end

    # <p>Retrieves the full details of an Q App, including its definition specifying the cards and
    #       flow.</p>
    # @param [Hash, Types::GetQAppInput] params
    # @option params [String] :instance_id
    #   <p>The unique identifier of the Amazon Q Business application environment instance.</p>
    # @option params [String] :app_id
    #   <p>The unique identifier of the Q App to retrieve.</p>
    # @option params [Integer] :app_version
    #   <p>The version of the Q App.</p>
    # @example A basic application with 1 text input card and 1 output card
    #   # Example operation for get_q_app
    #   params = {
    #     instance_id: "0b95c9c4-89cc-4aa8-9aae-aa91cbec699f",
    #     app_id: "3d110749-efc3-427c-87e8-15e966e5c168"
    #   }
    #   options = {}
    #   response = client.get_q_app(params, options)
    #   response.to_h #=>
    #   {
    #     app_id: "7212ff04-de7b-4831-bd80-45d6975ba1b0",
    #     app_arn: "arn:aws:qapps:us-west-2:123456789012:app/7212ff04-de7b-4831-bd80-45d6975ba1b0",
    #     title: "Color Palette Generator",
    #     app_version: 1,
    #     status: DRAFT,
    #     app_definition: {
    #       app_definition_version: "1",
    #       cards: [
    #         {
    #     "textInput" => {
    #       "title" => Color Base,
    #       "id" => 4cf94d96-8819-45c2-98cc-58c56b35c72f,
    #       "type" => text-input,
    #       "dependencies" => []
    #     }
    #   },
    #         {
    #     "qQuery" => {
    #       "title" => Recommended Palette,
    #       "id" => 18870b94-1e63-40e0-8c12-669c90ac5acc,
    #       "type" => q-query,
    #       "prompt" => Recommend me a list of colors that go well with @91e4513d-6981-454a-9329-329c9302eef4 ,
    #       "outputSource" => llm,
    #       "dependencies" => [91e4513d-6981-454a-9329-329c9302eef4]
    #     }
    #   }
    #       ]
    #     },
    #     created_at: Time.parse("2024-05-14T00:11:54.232Z"),
    #     created_by: "a841e300-40c1-7062-fa34-5b46dadbbaac",
    #     updated_at: Time.parse("2024-05-14T00:13:26.168Z"),
    #     updated_by: "a841e300-40c1-7062-fa34-5b46dadbbaac"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     app_id: "UUID", # required
    #     app_version: 1
    #   }
    #   options = {}
    #   response = client.get_q_app(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     app_id: "UUID", # required
    #     app_arn: "AppArn", # required
    #     title: "Title", # required
    #     description: "Description",
    #     initial_prompt: "InitialPrompt",
    #     app_version: 1, # required
    #     status: "PUBLISHED" # One of: ["PUBLISHED", "DRAFT", "DELETED"], # required
    #     created_at: Time.now, # required
    #     created_by: "String", # required
    #     updated_at: Time.now, # required
    #     updated_by: "String", # required
    #     required_capabilities: ["FileUpload" # One of: ["FileUpload", "CreatorMode", "RetrievalMode", "PluginMode"]],
    #     app_definition: { # required
    #       app_definition_version: "String", # required
    #       cards: [{ # required
    #         # One of:
    #         text_input: {
    #           id: "UUID", # required
    #           title: "Title", # required
    #           dependencies: ["String"], # required
    #           type: "text-input" # One of: ["text-input", "q-query", "file-upload", "q-plugin", "form-input"], # required
    #           placeholder: "Placeholder",
    #           default_value: "Default"
    #         },
    #         q_query: {
    #           id: "UUID", # required
    #           title: "Title", # required
    #           dependencies: ["String"], # required
    #           type: "text-input" # One of: ["text-input", "q-query", "file-upload", "q-plugin", "form-input"], # required
    #           prompt: "Prompt", # required
    #           output_source: "approved-sources" # One of: ["approved-sources", "llm"], # required
    #           attribute_filter: {
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
    #                 string_list_value: ["PlatoString"],
    #                 long_value: 1,
    #                 date_value: Time.now
    #               }
    #             },
    #             contains_all: {
    #               name: "DocumentAttributeKey", # required
    #               value: { # required
    #                 # One of:
    #                 string_value: "DocumentAttributeStringValue",
    #                 string_list_value: ["PlatoString"],
    #                 long_value: 1,
    #                 date_value: Time.now
    #               }
    #             },
    #             contains_any: {
    #               name: "DocumentAttributeKey", # required
    #               value: { # required
    #                 # One of:
    #                 string_value: "DocumentAttributeStringValue",
    #                 string_list_value: ["PlatoString"],
    #                 long_value: 1,
    #                 date_value: Time.now
    #               }
    #             },
    #             greater_than: {
    #               name: "DocumentAttributeKey", # required
    #               value: { # required
    #                 # One of:
    #                 string_value: "DocumentAttributeStringValue",
    #                 string_list_value: ["PlatoString"],
    #                 long_value: 1,
    #                 date_value: Time.now
    #               }
    #             },
    #             greater_than_or_equals: {
    #               name: "DocumentAttributeKey", # required
    #               value: { # required
    #                 # One of:
    #                 string_value: "DocumentAttributeStringValue",
    #                 string_list_value: ["PlatoString"],
    #                 long_value: 1,
    #                 date_value: Time.now
    #               }
    #             },
    #             less_than: {
    #               name: "DocumentAttributeKey", # required
    #               value: { # required
    #                 # One of:
    #                 string_value: "DocumentAttributeStringValue",
    #                 string_list_value: ["PlatoString"],
    #                 long_value: 1,
    #                 date_value: Time.now
    #               }
    #             },
    #             less_than_or_equals: {
    #               name: "DocumentAttributeKey", # required
    #               value: { # required
    #                 # One of:
    #                 string_value: "DocumentAttributeStringValue",
    #                 string_list_value: ["PlatoString"],
    #                 long_value: 1,
    #                 date_value: Time.now
    #               }
    #             }
    #           },
    #           memory_references: ["String"]
    #         },
    #         q_plugin: {
    #           id: "UUID", # required
    #           title: "Title", # required
    #           dependencies: ["String"], # required
    #           type: "text-input" # One of: ["text-input", "q-query", "file-upload", "q-plugin", "form-input"], # required
    #           prompt: "Prompt", # required
    #           plugin_type: "SERVICE_NOW" # One of: ["SERVICE_NOW", "SALESFORCE", "JIRA", "ZENDESK", "CUSTOM", "ASANA", "ATLASSIAN_CONFLUENCE", "GOOGLE_CALENDAR", "JIRA_CLOUD", "MICROSOFT_EXCHANGE", "MICROSOFT_TEAMS", "PAGERDUTY_ADVANCE", "SALESFORCE_CRM", "SERVICENOW_NOW_PLATFORM", "SMARTSHEET", "ZENDESK_SUITE"], # required
    #           plugin_id: "String", # required
    #           action_identifier: "ActionIdentifier"
    #         },
    #         file_upload: {
    #           id: "UUID", # required
    #           title: "Title", # required
    #           dependencies: ["String"], # required
    #           type: "text-input" # One of: ["text-input", "q-query", "file-upload", "q-plugin", "form-input"], # required
    #           filename: "String",
    #           file_id: "String",
    #           allow_override: false
    #         },
    #         form_input: {
    #           id: "UUID", # required
    #           title: "Title", # required
    #           dependencies: ["String"], # required
    #           type: "text-input" # One of: ["text-input", "q-query", "file-upload", "q-plugin", "form-input"], # required
    #           metadata: { # required
    #             schema: ""null"", # required
    #           },
    #           compute_mode: "append" # One of: ["append", "replace"]
    #         }
    #       }],
    #       can_edit: false
    #     }
    #   }
    # @return [Types::GetQAppOutput]
    def get_q_app(params = {}, options = {})
      request = build_request(:get_q_app, params)
      request.send_request(options)
    end

    # <p>Retrieves the current state and results for an active session of an Amazon Q App.</p>
    # @param [Hash, Types::GetQAppSessionInput] params
    # @option params [String] :instance_id
    #   <p>The unique identifier of the Amazon Q Business application environment instance.</p>
    # @option params [String] :session_id
    #   <p>The unique identifier of the Q App session to retrieve.</p>
    # @example Retrieves an existing session for an Amazon Q App
    #   # Example operation for get_q_app_session
    #   params = {
    #     instance_id: "288ae830-1df2-4871-b6c0-4314d74dadef",
    #     session_id: "1fca878e-64c5-4dc4-b1d9-c93effed4e82"
    #   }
    #   options = {}
    #   response = client.get_q_app_session(params, options)
    #   response.to_h #=>
    #   {
    #     session_id: "1fca878e-64c5-4dc4-b1d9-c93effed4e82",
    #     session_arn: "arn:aws:qapps:us-west-2:0123456789012:application/a929ecd6-5765-4ec7-bd3e-2ca90098b18e/qapp/65e7dce7-226a-47f9-b689-22850becef89/session/1fca878e-64c5-4dc4-b1d9-c93effed4e82",
    #     status: COMPLETED,
    #     card_status: {
    #       "6fb5b404-3b7b-48a4-8a8b-56406922a606" => {
    #         current_state: COMPLETED,
    #         current_value: "",
    #         submissions: [
    #           {
    #             value: {
    #     "d52030f9-6c4b-47a9-a946-377f632c77cc" => red,
    #     "18cee4cb-253e-4f87-9154-849fbb98e482" => user1
    #   },
    #             submission_id: "f47ac10b-58cc-4372-a567-0e02b2c3d479",
    #             timestamp: Time.parse("2023-06-15T14:30:45Z")
    #           }
    #         ]
    #       },
    #       "1e6caeac-b481-45ff-a082-8b9a4a0b72e8" => {
    #         current_state: COMPLETED,
    #         current_value: "Based on the responses, the most popular color is red, with 1 vote from the user \"user1\"."
    #       }
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     session_id: "UUID", # required
    #   }
    #   options = {}
    #   response = client.get_q_app_session(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     session_id: "String", # required
    #     session_arn: "String", # required
    #     session_name: "SessionName",
    #     app_version: 1,
    #     latest_published_app_version: 1,
    #     status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "WAITING", "COMPLETED", "ERROR"], # required
    #     card_status: { # required
    #       "UUID" => {
    #         current_state: "IN_PROGRESS" # One of: ["IN_PROGRESS", "WAITING", "COMPLETED", "ERROR"], # required
    #         current_value: "String", # required
    #         submissions: [
    #           {
    #             value: ""null"",
    #             submission_id: "UUID",
    #             timestamp: Time.now
    #           }
    #         ]
    #       }
    #     },
    #     user_is_host: false
    #   }
    # @return [Types::GetQAppSessionOutput]
    def get_q_app_session(params = {}, options = {})
      request = build_request(:get_q_app_session, params)
      request.send_request(options)
    end

    # <p>Retrieves the current configuration of a Q App session.</p>
    # @param [Hash, Types::GetQAppSessionMetadataInput] params
    # @option params [String] :instance_id
    #   <p>The unique identifier of the Amazon Q Business application environment instance.</p>
    # @option params [String] :session_id
    #   <p>The unique identifier of the Q App session.</p>
    # @example Retrieves an existing session metadata for an Amazon Q App
    #   # Example operation for get_q_app_session_metadata
    #   params = {
    #     instance_id: "0b95c9c4-89cc-4aa8-9aae-aa91cbec699f",
    #     session_id: "56ae47c3-10bc-4c2c-8b27-9b9fe23b3edb"
    #   }
    #   options = {}
    #   response = client.get_q_app_session_metadata(params, options)
    #   response.to_h #=>
    #   {
    #     session_id: "56ae47c3-10bc-4c2c-8b27-9b9fe23b3edb",
    #     session_arn: "arn:aws:qapps:us-west-2:0123456789012:application/cbea8329-41c0-4566-a112-19250921a220/qapp/387ccac9-4717-489f-841f-729b7d7de355/session/56ae47c3-10bc-4c2c-8b27-9b9fe23b3edb",
    #     session_name: "Trip itinerary collection session",
    #     sharing_configuration: {
    #       enabled: true,
    #       accept_responses: true,
    #       reveal_cards: false
    #     },
    #     session_owner: true
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     session_id: "UUID", # required
    #   }
    #   options = {}
    #   response = client.get_q_app_session_metadata(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     session_id: "UUID", # required
    #     session_arn: "String", # required
    #     session_name: "SessionName",
    #     sharing_configuration: { # required
    #       enabled: false, # required
    #       accept_responses: false,
    #       reveal_cards: false
    #     },
    #     session_owner: false
    #   }
    # @return [Types::GetQAppSessionMetadataOutput]
    def get_q_app_session_metadata(params = {}, options = {})
      request = build_request(:get_q_app_session_metadata, params)
      request.send_request(options)
    end

    # <p>Uploads a file that can then be used either as a default in a <code>FileUploadCard</code>
    #       from Q App definition or as a file that is used inside a single Q App run. The purpose of
    #       the document is determined by a scope parameter that indicates whether it is at the app
    #       definition level or at the app session level.</p>
    # @param [Hash, Types::ImportDocumentInput] params
    # @option params [String] :instance_id
    #   <p>The unique identifier of the Amazon Q Business application environment instance.</p>
    # @option params [String] :card_id
    #   <p>The unique identifier of the card the file is associated with.</p>
    # @option params [String] :app_id
    #   <p>The unique identifier of the Q App the file is associated with.</p>
    # @option params [String] :file_contents_base64
    #   <p>The base64-encoded contents of the file to upload.</p>
    # @option params [String] :file_name
    #   <p>The name of the file being uploaded.</p>
    # @option params [String] :scope
    #   <p>Whether the file is associated with a Q App definition or a specific Q App
    #         session.</p>
    # @option params [String] :session_id
    #   <p>The unique identifier of the Q App session the file is associated with, if
    #         applicable.</p>
    # @example Upload a file to a specific session
    #   # Example operation for import_document
    #   params = {
    #     instance_id: "0b95c9c4-89cc-4aa8-9aae-aa91cbec699f",
    #     file_contents_base64: "data:text/plain;base64,SomeFileEncodedInBase64",
    #     file_name: "myFile.txt",
    #     card_id: "82f69028-22a9-4bea-8727-0eabf58e9fed",
    #     app_id: "4263767c-d889-4cb2-a8f6-8b649bc66af0",
    #     scope: SESSION,
    #     session_id: "4f0e5b87-9d38-41cd-9eb4-ebce2f2917cc"
    #   }
    #   options = {}
    #   response = client.import_document(params, options)
    #   response.to_h #=>
    #   {
    #     file_id: "412aa1b4-341c-45af-936d-da52f8a1a3b4"
    #   }
    # @example Upload a file into a application
    #   # Example operation for import_document
    #   params = {
    #     instance_id: "0b95c9c4-89cc-4aa8-9aae-aa91cbec699f",
    #     file_contents_base64: "data:text/plain;base64,SomeFileEncodedInBase64",
    #     file_name: "anApplicationFile.txt",
    #     app_id: "4263767c-d889-4cb2-a8f6-8b649bc66af0",
    #     card_id: "7a11f34b-42d4-4bc8-b668-ae4a788dae1e",
    #     scope: APPLICATION
    #   }
    #   options = {}
    #   response = client.import_document(params, options)
    #   response.to_h #=>
    #   {
    #     file_id: "bc1a0cc9-076a-4e82-9a6c-f4d2d8a22489"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     card_id: "UUID", # required
    #     app_id: "UUID", # required
    #     file_contents_base64: "String", # required
    #     file_name: "Filename", # required
    #     scope: "APPLICATION" # One of: ["APPLICATION", "SESSION"], # required
    #     session_id: "UUID"
    #   }
    #   options = {}
    #   response = client.import_document(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     file_id: "String"
    #   }
    # @return [Types::ImportDocumentOutput]
    def import_document(params = {}, options = {})
      request = build_request(:import_document, params)
      request.send_request(options)
    end

    # <p>Lists the categories of a Amazon Q Business application environment instance. For more information, see
    #         <a href="https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/qapps-custom-labels.html">Custom labels for Amazon Q Apps</a>.</p>
    # @param [Hash, Types::ListCategoriesInput] params
    # @option params [String] :instance_id
    #   <p>The unique identifier of the Amazon Q Business application environment instance.</p>
    # @example List categories available for the library items in this instance
    #   # Example operation for list_categories
    #   params = {
    #     instance_id: "0b95c9c4-89cc-4aa8-9aae-aa91cbec699f"
    #   }
    #   options = {}
    #   response = client.list_categories(params, options)
    #   response.to_h #=>
    #   {
    #     categories: [
    #       {
    #         id: "549abfe0-f5c4-45a2-bb9b-c05987a49c6d",
    #         title: "HR",
    #         color: "#FF6600",
    #         app_count: 10
    #       },
    #       {
    #         id: "18cbebaa-196a-4aa5-a840-88d548e07f8f",
    #         title: "Marketing",
    #         color: "#FFFF00",
    #         app_count: 11
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #   }
    #   options = {}
    #   response = client.list_categories(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     categories: [
    #       {
    #         id: "UUID", # required
    #         title: "String", # required
    #         color: "String",
    #         app_count: 1
    #       }
    #     ]
    #   }
    # @return [Types::ListCategoriesOutput]
    def list_categories(params = {}, options = {})
      request = build_request(:list_categories, params)
      request.send_request(options)
    end

    # <p>Lists the library items for Amazon Q Apps that are published and available for users in your
    #         Amazon Web Services account.</p>
    # @param [Hash, Types::ListLibraryItemsInput] params
    # @option params [String] :instance_id
    #   <p>The unique identifier of the Amazon Q Business application environment instance.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of library items to return in the response.</p>
    # @option params [String] :next_token
    #   <p>The token to request the next page of results.</p>
    # @option params [String] :category_id
    #   <p>Optional category to filter the library items by.</p>
    # @example List at most 3 library items for this instance
    #   # Example operation for list_library_items
    #   params = {
    #     instance_id: "0b95c9c4-89cc-4aa8-9aae-aa91cbec699f",
    #     limit: 3
    #   }
    #   options = {}
    #   response = client.list_library_items(params, options)
    #   response.to_h #=>
    #   {
    #     library_items: [
    #       {
    #         library_item_id: "cb9ecf72-8563-450d-9db9-994f98297316",
    #         app_id: "7a11f34b-42d4-4bc8-b668-ae4a788dae1e",
    #         app_version: 6,
    #         categories: [
    #           {
    #             id: "9c871ed4-1c41-4065-aefe-321cd4b61cf8",
    #             title: "HR"
    #           },
    #           {
    #             id: "c1c4e374-118c-446f-81fb-cba6225d88da",
    #             title: "IT"
    #           }
    #         ],
    #         status: "PUBLISHED",
    #         rating_count: 3,
    #         is_rated_by_user: true,
    #         is_verified: false,
    #         created_by: "a841e300-40c1-7062-fa34-5b46dadbbaac",
    #         created_at: Time.parse("2024-05-21T23:17:27.350Z"),
    #         updated_by: "a841e300-40c1-7062-fa34-5b46dadbbaac",
    #         updated_at: Time.parse("2024-05-21T23:17:27.350Z"),
    #         user_count: 5
    #       },
    #       {
    #         library_item_id: "18cbebaa-196a-4aa5-a840-88d548e07f8f",
    #         app_id: "201272ac-d474-4a97-991c-5520dae04026",
    #         app_version: 1,
    #         categories: [
    #           {
    #             id: "fdc4b483-c4e2-44c9-b4b2-6c850bbdb579",
    #             title: "General"
    #           }
    #         ],
    #         status: "PUBLISHED",
    #         rating_count: 5,
    #         is_rated_by_user: false,
    #         is_verified: false,
    #         created_by: "a841e300-40c1-7062-fa34-5b46dadbbaac",
    #         created_at: Time.parse("2024-05-08T16:09:56.080Z"),
    #         updated_by: "a841e300-40c1-7062-fa34-5b46dadbbaac",
    #         updated_at: Time.parse("2024-05-08T16:09:56.080Z"),
    #         user_count: 8
    #       },
    #       {
    #         library_item_id: "549abfe0-f5c4-45a2-bb9b-c05987a49c6d",
    #         app_id: "1802f57f-079a-4b5b-839a-79bbe2e21b3c",
    #         app_version: 1,
    #         categories: [
    #           {
    #             id: "fdc4b483-c4e2-44c9-b4b2-6c850bbdb579",
    #             title: "General"
    #           }
    #         ],
    #         status: "PUBLISHED",
    #         rating_count: 8,
    #         is_rated_by_user: false,
    #         is_verified: false,
    #         created_by: "a841e300-40c1-7062-fa34-5b46dadbbaac",
    #         created_at: Time.parse("2024-05-07T22:57:59.327Z"),
    #         updated_by: "a841e300-40c1-7062-fa34-5b46dadbbaac",
    #         updated_at: Time.parse("2024-05-07T22:57:59.327Z"),
    #         user_count: 12
    #       }
    #     ],
    #     next_token: "YW5vdGhlclRva2VuIQ=="
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     limit: 1,
    #     next_token: "PaginationToken",
    #     category_id: "UUID"
    #   }
    #   options = {}
    #   response = client.list_library_items(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     library_items: [
    #       {
    #         library_item_id: "UUID", # required
    #         app_id: "UUID", # required
    #         app_version: 1, # required
    #         categories: [ # required
    #           {
    #             id: "UUID", # required
    #             title: "String", # required
    #             color: "String",
    #             app_count: 1
    #           }
    #         ],
    #         status: "String", # required
    #         created_at: Time.now, # required
    #         created_by: "String", # required
    #         updated_at: Time.now,
    #         updated_by: "String",
    #         rating_count: 1, # required
    #         is_rated_by_user: false,
    #         user_count: 1,
    #         is_verified: false
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListLibraryItemsOutput]
    def list_library_items(params = {}, options = {})
      request = build_request(:list_library_items, params)
      request.send_request(options)
    end

    # <p>Lists the collected data of a Q App data collection session.</p>
    # @param [Hash, Types::ListQAppSessionDataInput] params
    # @option params [String] :instance_id
    #   <p>The unique identifier of the Amazon Q Business application environment instance.</p>
    # @option params [String] :session_id
    #   <p>The unique identifier of the Q App data collection session.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     session_id: "UUID", # required
    #   }
    #   options = {}
    #   response = client.list_q_app_session_data(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     session_id: "UUID", # required
    #     session_arn: "String", # required
    #     session_data: [
    #       {
    #         card_id: "UUID", # required
    #         value: ""null"",
    #         user: { # required
    #           user_id: "UserId"
    #         },
    #         submission_id: "UUID",
    #         timestamp: Time.now
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListQAppSessionDataOutput]
    def list_q_app_session_data(params = {}, options = {})
      request = build_request(:list_q_app_session_data, params)
      request.send_request(options)
    end

    # <p>Lists the Amazon Q Apps owned by or associated with the user either because they created it
    #       or because they used it from the library in the past. The user identity is extracted from the
    #       credentials used to invoke this operation..</p>
    # @param [Hash, Types::ListQAppsInput] params
    # @option params [String] :instance_id
    #   <p>The unique identifier of the Amazon Q Business application environment instance.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of Q Apps to return in the response.</p>
    # @option params [String] :next_token
    #   <p>The token to request the next page of results.</p>
    # @example List at most 3 Amazon Q Apps in an Q Business application
    #   # Example operation for list_q_apps
    #   params = {
    #     instance_id: "0b95c9c4-89cc-4aa8-9aae-aa91cbec699f",
    #     limit: 3
    #   }
    #   options = {}
    #   response = client.list_q_apps(params, options)
    #   response.to_h #=>
    #   {
    #     apps: [
    #       {
    #         app_id: "7b9fe303-18bb-4643-952c-bfcf9f4c427f",
    #         app_arn: "arn:aws:qapps:us-west-2:..../7b9fe303-18bb-4643-952c-bfcf9f4c427f",
    #         title: "App 1",
    #         description: "Description 1",
    #         created_at: Time.parse("2024-05-21T04:09:10.401Z"),
    #         status: "DRAFT",
    #         is_verified: false
    #       },
    #       {
    #         app_id: "dd178fd6-ad3d-49b3-a32d-e915cf423e37",
    #         app_arn: "arn:aws:qapps:us-west-2:..../dd178fd6-ad3d-49b3-a32d-e915cf423e37",
    #         title: "App 2",
    #         description: "Description 2",
    #         created_at: Time.parse("2024-05-21T04:09:10.401Z"),
    #         status: "PUBLISHED",
    #         is_verified: true
    #       },
    #       {
    #         app_id: "3274b744-1a13-4aad-953f-eda2e4149e6e",
    #         app_arn: "arn:aws:qapps:us-west-2:..../3274b744-1a13-4aad-953f-eda2e4149e6e",
    #         title: "App 3",
    #         description: "Description 3",
    #         created_at: Time.parse("2024-05-21T04:09:10.401Z"),
    #         status: "DRAFT",
    #         is_verified: false
    #       }
    #     ],
    #     next_token: "bXlzdGVyaW91c1BhZ2luYXRpb25Ub2tlbg=="
    #   }
    # @example Retrieve the next page of Amazon Q Apps
    #   # Example operation for list_q_apps
    #   params = {
    #     instance_id: "0b95c9c4-89cc-4aa8-9aae-aa91cbec699f",
    #     limit: 3,
    #     next_token: "bXlzdGVyaW91c1BhZ2luYXRpb25Ub2tlbg=="
    #   }
    #   options = {}
    #   response = client.list_q_apps(params, options)
    #   response.to_h #=>
    #   {
    #     apps: [
    #       {
    #         app_id: "bec8ee64-2635-41e8-aace-e1e418f4f295",
    #         app_arn: "arn:aws:qapps:us-west-2:..../bec8ee64-2635-41e8-aace-e1e418f4f295",
    #         title: "App 4",
    #         description: "Description 4",
    #         created_at: Time.parse("2024-05-21T04:09:10.401Z"),
    #         status: "PUBLISHED",
    #         is_verified: true
    #       },
    #       {
    #         app_id: "c380a45d-bd77-45b0-a0e5-8a266c1d8bc4",
    #         app_arn: "arn:aws:qapps:us-west-2:..../c380a45d-bd77-45b0-a0e5-8a266c1d8bc4",
    #         title: "App 5",
    #         description: "Description 5",
    #         created_at: Time.parse("2024-05-21T04:09:10.401Z"),
    #         status: "PUBLISHED",
    #         is_verified: false
    #       },
    #       {
    #         app_id: "afc4ee80-9722-4396-85a6-7aeaff52c177",
    #         app_arn: "arn:aws:qapps:us-west-2:..../afc4ee80-9722-4396-85a6-7aeaff52c177",
    #         title: "App 6",
    #         description: "Description 6",
    #         created_at: Time.parse("2024-05-21T04:09:10.401Z"),
    #         status: "PUBLISHED",
    #         is_verified: false
    #       }
    #     ],
    #     next_token: "YW5vdGhlclRva2VuIQ=="
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     limit: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.list_q_apps(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     apps: [ # required
    #       {
    #         app_id: "UUID", # required
    #         app_arn: "AppArn", # required
    #         title: "Title", # required
    #         description: "Description",
    #         created_at: Time.now, # required
    #         can_edit: false,
    #         status: "String",
    #         is_verified: false
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListQAppsOutput]
    def list_q_apps(params = {}, options = {})
      request = build_request(:list_q_apps, params)
      request.send_request(options)
    end

    # <p>Lists the tags associated with an Amazon Q Apps resource.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource whose tags should be listed.</p>
    # @example A call to list tags for a resource
    #   # Example operation for list_tags_for_resource
    #   params = {
    #     resource_arn: "arn:aws:qapps:us-west-2:123456789012:application/3642ba81-344c-42fd-a480-9119a5a5f26b/qapp/7212ff04-de7b-4831-bd80-45d6975ba1b0"
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    #   response.to_h #=>
    #   {
    #     tags: {
    #       "department" => "HR"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "AmazonResourceName", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::ListTagsForResourceResponse]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Generates an Amazon Q App definition based on either a conversation or a problem statement
    #       provided as input.The resulting app definition can be used to call <code>CreateQApp</code>.
    #       This API doesn't create Amazon Q Apps directly.</p>
    # @param [Hash, Types::PredictQAppInput] params
    # @option params [String] :instance_id
    #   <p>The unique identifier of the Amazon Q Business application environment instance.</p>
    # @option params [Types::PredictQAppInputOptions] :options
    #   <p>The input to generate the Q App definition from, either a conversation or problem
    #         statement.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     options: {
    #       # One of:
    #       conversation: [
    #         {
    #           body: "String", # required
    #           type: "USER" # One of: ["USER", "SYSTEM"], # required
    #         }
    #       ],
    #       problem_statement: "String"
    #     }
    #   }
    #   options = {}
    #   response = client.predict_q_app(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     app: { # required
    #       title: "Title", # required
    #       description: "Description",
    #       app_definition: { # required
    #         cards: [{ # required
    #           # One of:
    #           text_input: {
    #             title: "Title", # required
    #             id: "UUID", # required
    #             type: "text-input" # One of: ["text-input", "q-query", "file-upload", "q-plugin", "form-input"], # required
    #             placeholder: "Placeholder",
    #             default_value: "Default"
    #           },
    #           q_query: {
    #             title: "Title", # required
    #             id: "UUID", # required
    #             type: "text-input" # One of: ["text-input", "q-query", "file-upload", "q-plugin", "form-input"], # required
    #             prompt: "Prompt", # required
    #             output_source: "approved-sources" # One of: ["approved-sources", "llm"],
    #             attribute_filter: {
    #               and_all_filters: [
    #                 {
    #                   # recursive AttributeFilter
    #                 }
    #               ],
    #               or_all_filters: [
    #                 {
    #                   # recursive AttributeFilter
    #                 }
    #               ],
    #               not_filter: {
    #                 # recursive AttributeFilter
    #               },
    #               equals_to: {
    #                 name: "DocumentAttributeKey", # required
    #                 value: { # required
    #                   # One of:
    #                   string_value: "DocumentAttributeStringValue",
    #                   string_list_value: ["PlatoString"],
    #                   long_value: 1,
    #                   date_value: Time.now
    #                 }
    #               },
    #               contains_all: {
    #                 name: "DocumentAttributeKey", # required
    #                 value: { # required
    #                   # One of:
    #                   string_value: "DocumentAttributeStringValue",
    #                   string_list_value: ["PlatoString"],
    #                   long_value: 1,
    #                   date_value: Time.now
    #                 }
    #               },
    #               contains_any: {
    #                 name: "DocumentAttributeKey", # required
    #                 value: { # required
    #                   # One of:
    #                   string_value: "DocumentAttributeStringValue",
    #                   string_list_value: ["PlatoString"],
    #                   long_value: 1,
    #                   date_value: Time.now
    #                 }
    #               },
    #               greater_than: {
    #                 name: "DocumentAttributeKey", # required
    #                 value: { # required
    #                   # One of:
    #                   string_value: "DocumentAttributeStringValue",
    #                   string_list_value: ["PlatoString"],
    #                   long_value: 1,
    #                   date_value: Time.now
    #                 }
    #               },
    #               greater_than_or_equals: {
    #                 name: "DocumentAttributeKey", # required
    #                 value: { # required
    #                   # One of:
    #                   string_value: "DocumentAttributeStringValue",
    #                   string_list_value: ["PlatoString"],
    #                   long_value: 1,
    #                   date_value: Time.now
    #                 }
    #               },
    #               less_than: {
    #                 name: "DocumentAttributeKey", # required
    #                 value: { # required
    #                   # One of:
    #                   string_value: "DocumentAttributeStringValue",
    #                   string_list_value: ["PlatoString"],
    #                   long_value: 1,
    #                   date_value: Time.now
    #                 }
    #               },
    #               less_than_or_equals: {
    #                 name: "DocumentAttributeKey", # required
    #                 value: { # required
    #                   # One of:
    #                   string_value: "DocumentAttributeStringValue",
    #                   string_list_value: ["PlatoString"],
    #                   long_value: 1,
    #                   date_value: Time.now
    #                 }
    #               }
    #             }
    #           },
    #           q_plugin: {
    #             title: "Title", # required
    #             id: "UUID", # required
    #             type: "text-input" # One of: ["text-input", "q-query", "file-upload", "q-plugin", "form-input"], # required
    #             prompt: "Prompt", # required
    #             plugin_id: "PluginId", # required
    #             action_identifier: "ActionIdentifier"
    #           },
    #           file_upload: {
    #             title: "Title", # required
    #             id: "UUID", # required
    #             type: "text-input" # One of: ["text-input", "q-query", "file-upload", "q-plugin", "form-input"], # required
    #             filename: "Filename",
    #             file_id: "UUID",
    #             allow_override: false
    #           },
    #           form_input: {
    #             title: "Title", # required
    #             id: "UUID", # required
    #             type: "text-input" # One of: ["text-input", "q-query", "file-upload", "q-plugin", "form-input"], # required
    #             metadata: { # required
    #               schema: ""null"", # required
    #             },
    #             compute_mode: "append" # One of: ["append", "replace"]
    #           }
    #         }],
    #         initial_prompt: "InitialPrompt"
    #       }
    #     },
    #     problem_statement: "String", # required
    #   }
    # @return [Types::PredictQAppOutput]
    def predict_q_app(params = {}, options = {})
      request = build_request(:predict_q_app, params)
      request.send_request(options)
    end

    # <p>Starts a new session for an Amazon Q App, allowing inputs to be provided and the app to be
    #       run.</p>
    #          <note>
    #             <p>Each Q App session will be condensed into a single conversation in the web
    #         experience.</p>
    #          </note>
    # @param [Hash, Types::StartQAppSessionInput] params
    # @option params [String] :instance_id
    #   <p>The unique identifier of the Amazon Q Business application environment instance.</p>
    # @option params [String] :app_id
    #   <p>The unique identifier of the Q App to start a session for.</p>
    # @option params [Integer] :app_version
    #   <p>The version of the Q App to use for the session.</p>
    # @option params [Array<Types::CardValue>] :initial_values
    #   <p>Optional initial input values to provide for the Q App session.</p>
    # @option params [String] :session_id
    #   <p>The unique identifier of the a Q App session.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Optional tags to associate with the new Q App session.</p>
    # @example Start a session for an Amazon Q App using version 1, passing in initial values for one card
    #   # Example operation for start_q_app_session
    #   params = {
    #     instance_id: "4cc5e4c2-d2a2-4188-a114-9ca125b4aedc",
    #     app_id: "65e7dce7-226a-47f9-b689-22850becef89",
    #     app_version: 1,
    #     initial_values: [
    #       {
    #         card_id: "6fb5b404-3b7b-48a4-8a8b-56406922a606",
    #         value: "What is the circumference of Earth?"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.start_q_app_session(params, options)
    #   response.to_h #=>
    #   {
    #     session_id: "1fca878e-64c5-4dc4-b1d9-c93effed4e82",
    #     session_arn: "arn:aws:qapps:us-west-2:0123456789012:application/a929ecd6-5765-4ec7-bd3e-2ca90098b18e/qapp/65e7dce7-226a-47f9-b689-22850becef89/session/1fca878e-64c5-4dc4-b1d9-c93effed4e82"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     app_id: "UUID", # required
    #     app_version: 1, # required
    #     initial_values: [
    #       {
    #         card_id: "UUID", # required
    #         value: "String", # required
    #         submission_mutation: {
    #           submission_id: "UUID", # required
    #           mutation_type: "edit" # One of: ["edit", "delete", "add"], # required
    #         }
    #       }
    #     ],
    #     session_id: "String",
    #     tags: {
    #       "String" => "String"
    #     }
    #   }
    #   options = {}
    #   response = client.start_q_app_session(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     session_id: "String", # required
    #     session_arn: "String", # required
    #   }
    # @return [Types::StartQAppSessionOutput]
    def start_q_app_session(params = {}, options = {})
      request = build_request(:start_q_app_session, params)
      request.send_request(options)
    end

    # <p>Stops an active session for an Amazon Q App.This deletes all data related to the session and
    #       makes it invalid for future uses. The results of the session will be persisted as part of the
    #       conversation.</p>
    # @param [Hash, Types::StopQAppSessionInput] params
    # @option params [String] :instance_id
    #   <p>The unique identifier of the Amazon Q Business application environment instance.</p>
    # @option params [String] :session_id
    #   <p>The unique identifier of the Q App session to stop.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     session_id: "UUID", # required
    #   }
    #   options = {}
    #   response = client.stop_q_app_session(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def stop_q_app_session(params = {}, options = {})
      request = build_request(:stop_q_app_session, params)
      request.send_request(options)
    end

    # <p>Associates tags with an Amazon Q Apps resource.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to tag.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to associate with the resource.</p>
    # @example A call to tag a resource
    #   # Example operation for tag_resource
    #   params = {
    #     resource_arn: "arn:aws:qapps:us-west-2:123456789012:application/3642ba81-344c-42fd-a480-9119a5a5f26b/qapp/7212ff04-de7b-4831-bd80-45d6975ba1b0",
    #     tags: {
    #       "department" => "HR"
    #     }
    #   }
    #   options = {}
    #   response = client.tag_resource(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "AmazonResourceName", # required
    #     tags: { # required
    #       "TagKey" => "TagValue"
    #     }
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

    # <p>Disassociates tags from an Amazon Q Apps resource.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to disassociate the tag from.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The keys of the tags to disassociate from the resource.</p>
    # @example A call to untag a resource
    #   # Example operation for untag_resource
    #   params = {
    #     resource_arn: "arn:aws:qapps:us-west-2:123456789012:application/3642ba81-344c-42fd-a480-9119a5a5f26b/qapp/7212ff04-de7b-4831-bd80-45d6975ba1b0",
    #     tag_keys: [
    #       "department"
    #     ]
    #   }
    #   options = {}
    #   response = client.untag_resource(params, options)
    #   response.to_h #=>
    #   {}
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

    # <p>Updates the library item for an Amazon Q App.</p>
    # @param [Hash, Types::UpdateLibraryItemInput] params
    # @option params [String] :instance_id
    #   <p>The unique identifier of the Amazon Q Business application environment instance.</p>
    # @option params [String] :library_item_id
    #   <p>The unique identifier of the library item to update.</p>
    # @option params [String] :status
    #   <p>The new status to set for the library item, such as "Published" or "Hidden".</p>
    # @option params [Array<String>] :categories
    #   <p>The new categories to associate with the library item.</p>
    # @example Sets the status of a library item to DISABLED
    #   # Example operation for update_library_item
    #   params = {
    #     instance_id: "0b95c9c4-89cc-4aa8-9aae-aa91cbec699f",
    #     library_item_id: "cb9ecf72-8563-450d-9db9-994f98297316",
    #     status: DISABLED
    #   }
    #   options = {}
    #   response = client.update_library_item(params, options)
    #   response.to_h #=>
    #   {
    #     library_item_id: "cb9ecf72-8563-450d-9db9-994f98297316",
    #     app_id: "7a11f34b-42d4-4bc8-b668-ae4a788dae1e",
    #     app_version: 6,
    #     categories: [
    #       {
    #         id: "9c871ed4-1c41-4065-aefe-321cd4b61cf8",
    #         title: "HR"
    #       },
    #       {
    #         id: "fdc4b483-c4e2-44c9-b4b2-6c850bbdb579",
    #         title: "General"
    #       },
    #       {
    #         id: "c1c4e374-118c-446f-81fb-cba6225d88da",
    #         title: "IT"
    #       }
    #     ],
    #     status: "DISABLED",
    #     is_verified: false,
    #     created_at: Time.parse("2024-05-21T23:17:27.350Z"),
    #     created_by: "a841e300-40c1-7062-fa34-5b46dadbbaac",
    #     updated_at: Time.parse("2024-05-28T19:43:48.577Z"),
    #     updated_by: "a841e300-40c1-7062-fa34-5b46dadbbaac",
    #     rating_count: 24
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     library_item_id: "UUID", # required
    #     status: "PUBLISHED" # One of: ["PUBLISHED", "DISABLED"],
    #     categories: ["UUID"]
    #   }
    #   options = {}
    #   response = client.update_library_item(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     library_item_id: "UUID", # required
    #     app_id: "UUID", # required
    #     app_version: 1, # required
    #     categories: [ # required
    #       {
    #         id: "UUID", # required
    #         title: "String", # required
    #         color: "String",
    #         app_count: 1
    #       }
    #     ],
    #     status: "String", # required
    #     created_at: Time.now, # required
    #     created_by: "String", # required
    #     updated_at: Time.now,
    #     updated_by: "String",
    #     rating_count: 1, # required
    #     is_rated_by_user: false,
    #     user_count: 1,
    #     is_verified: false
    #   }
    # @return [Types::UpdateLibraryItemOutput]
    def update_library_item(params = {}, options = {})
      request = build_request(:update_library_item, params)
      request.send_request(options)
    end

    # <p>Updates the verification status of a library item for an Amazon Q App.</p>
    # @param [Hash, Types::UpdateLibraryItemMetadataInput] params
    # @option params [String] :instance_id
    #   <p>The unique identifier of the Amazon Q Business application environment instance.</p>
    # @option params [String] :library_item_id
    #   <p>The unique identifier of the updated library item.</p>
    # @option params [Boolean] :is_verified
    #   <p>The verification status of the library item</p>
    # @example Update a library item to be verified
    #   # Example operation for update_library_item_metadata
    #   params = {
    #     instance_id: "0b95c9c4-89cc-4aa8-9aae-aa91cbec699f",
    #     library_item_id: "cb9ecf72-8563-450d-9db9-994f98297316",
    #     is_verified: true
    #   }
    #   options = {}
    #   response = client.update_library_item_metadata(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     library_item_id: "UUID", # required
    #     is_verified: false
    #   }
    #   options = {}
    #   response = client.update_library_item_metadata(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_library_item_metadata(params = {}, options = {})
      request = build_request(:update_library_item_metadata, params)
      request.send_request(options)
    end

    # <p>Updates an existing Amazon Q App, allowing modifications to its title, description, and
    #       definition.</p>
    # @param [Hash, Types::UpdateQAppInput] params
    # @option params [String] :instance_id
    #   <p>The unique identifier of the Amazon Q Business application environment instance.</p>
    # @option params [String] :app_id
    #   <p>The unique identifier of the Q App to update.</p>
    # @option params [String] :title
    #   <p>The new title for the Q App.</p>
    # @option params [String] :description
    #   <p>The new description for the Q App.</p>
    # @option params [Types::AppDefinitionInput] :app_definition
    #   <p>The new definition specifying the cards and flow for the Q App.</p>
    # @example Updating the title of an app
    #   # Example operation for update_q_app
    #   params = {
    #     instance_id: "0b95c9c4-89cc-4aa8-9aae-aa91cbec699f",
    #     app_id: "7212ff04-de7b-4831-bd80-45d6975ba1b0",
    #     title: "This is the new title"
    #   }
    #   options = {}
    #   response = client.update_q_app(params, options)
    #   response.to_h #=>
    #   {
    #     app_id: "7212ff04-de7b-4831-bd80-45d6975ba1b0",
    #     app_arn: "arn:aws:qapps:us-west-2:123456789012:app/7212ff04-de7b-4831-bd80-45d6975ba1b0",
    #     title: "This is the new title",
    #     app_version: 2,
    #     status: DRAFT,
    #     created_at: Time.parse("2024-05-14T00:11:54.232Z"),
    #     created_by: "a841e300-40c1-7062-fa34-5b46dadbbaac",
    #     updated_at: Time.parse("2024-05-17T23:15:08.571Z"),
    #     updated_by: "a841e300-40c1-7062-fa34-5b46dadbbaac",
    #     required_capabilities: [
    #       CreatorMode
    #     ]
    #   }
    # @example Updating the app so it has a single q-query card
    #   # Example operation for update_q_app
    #   params = {
    #     instance_id: "0b95c9c4-89cc-4aa8-9aae-aa91cbec699f",
    #     app_id: "7212ff04-de7b-4831-bd80-45d6975ba1b0",
    #     app_definition: {
    #       cards: [
    #         {
    #     "qQuery" => {
    #       "type" => q-query,
    #       "title" => Trip Ideas,
    #       "id" => 18870b94-1e63-40e0-8c12-669c90ac5acc,
    #       "prompt" => Recommend me an itinerary for a trip
    #     }
    #   }
    #       ]
    #     }
    #   }
    #   options = {}
    #   response = client.update_q_app(params, options)
    #   response.to_h #=>
    #   {
    #     app_id: "7212ff04-de7b-4831-bd80-45d6975ba1b0",
    #     app_arn: "arn:aws:qapps:us-west-2:123456789012:app/7212ff04-de7b-4831-bd80-45d6975ba1b0",
    #     title: "Previous Title Stays the Same",
    #     app_version: 99,
    #     status: DRAFT,
    #     created_at: Time.parse("2024-05-14T00:11:54.232Z"),
    #     created_by: "a841e300-40c1-7062-fa34-5b46dadbbaac",
    #     updated_at: Time.parse("2024-05-17T23:15:08.571Z"),
    #     updated_by: "a841e300-40c1-7062-fa34-5b46dadbbaac",
    #     required_capabilities: [
    #       CreatorMode
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     app_id: "UUID", # required
    #     title: "Title",
    #     description: "Description",
    #     app_definition: {
    #       cards: [{ # required
    #         # One of:
    #         text_input: {
    #           title: "Title", # required
    #           id: "UUID", # required
    #           type: "text-input" # One of: ["text-input", "q-query", "file-upload", "q-plugin", "form-input"], # required
    #           placeholder: "Placeholder",
    #           default_value: "Default"
    #         },
    #         q_query: {
    #           title: "Title", # required
    #           id: "UUID", # required
    #           type: "text-input" # One of: ["text-input", "q-query", "file-upload", "q-plugin", "form-input"], # required
    #           prompt: "Prompt", # required
    #           output_source: "approved-sources" # One of: ["approved-sources", "llm"],
    #           attribute_filter: {
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
    #                 string_list_value: ["PlatoString"],
    #                 long_value: 1,
    #                 date_value: Time.now
    #               }
    #             },
    #             contains_all: {
    #               name: "DocumentAttributeKey", # required
    #               value: { # required
    #                 # One of:
    #                 string_value: "DocumentAttributeStringValue",
    #                 string_list_value: ["PlatoString"],
    #                 long_value: 1,
    #                 date_value: Time.now
    #               }
    #             },
    #             contains_any: {
    #               name: "DocumentAttributeKey", # required
    #               value: { # required
    #                 # One of:
    #                 string_value: "DocumentAttributeStringValue",
    #                 string_list_value: ["PlatoString"],
    #                 long_value: 1,
    #                 date_value: Time.now
    #               }
    #             },
    #             greater_than: {
    #               name: "DocumentAttributeKey", # required
    #               value: { # required
    #                 # One of:
    #                 string_value: "DocumentAttributeStringValue",
    #                 string_list_value: ["PlatoString"],
    #                 long_value: 1,
    #                 date_value: Time.now
    #               }
    #             },
    #             greater_than_or_equals: {
    #               name: "DocumentAttributeKey", # required
    #               value: { # required
    #                 # One of:
    #                 string_value: "DocumentAttributeStringValue",
    #                 string_list_value: ["PlatoString"],
    #                 long_value: 1,
    #                 date_value: Time.now
    #               }
    #             },
    #             less_than: {
    #               name: "DocumentAttributeKey", # required
    #               value: { # required
    #                 # One of:
    #                 string_value: "DocumentAttributeStringValue",
    #                 string_list_value: ["PlatoString"],
    #                 long_value: 1,
    #                 date_value: Time.now
    #               }
    #             },
    #             less_than_or_equals: {
    #               name: "DocumentAttributeKey", # required
    #               value: { # required
    #                 # One of:
    #                 string_value: "DocumentAttributeStringValue",
    #                 string_list_value: ["PlatoString"],
    #                 long_value: 1,
    #                 date_value: Time.now
    #               }
    #             }
    #           }
    #         },
    #         q_plugin: {
    #           title: "Title", # required
    #           id: "UUID", # required
    #           type: "text-input" # One of: ["text-input", "q-query", "file-upload", "q-plugin", "form-input"], # required
    #           prompt: "Prompt", # required
    #           plugin_id: "PluginId", # required
    #           action_identifier: "ActionIdentifier"
    #         },
    #         file_upload: {
    #           title: "Title", # required
    #           id: "UUID", # required
    #           type: "text-input" # One of: ["text-input", "q-query", "file-upload", "q-plugin", "form-input"], # required
    #           filename: "Filename",
    #           file_id: "UUID",
    #           allow_override: false
    #         },
    #         form_input: {
    #           title: "Title", # required
    #           id: "UUID", # required
    #           type: "text-input" # One of: ["text-input", "q-query", "file-upload", "q-plugin", "form-input"], # required
    #           metadata: { # required
    #             schema: ""null"", # required
    #           },
    #           compute_mode: "append" # One of: ["append", "replace"]
    #         }
    #       }],
    #       initial_prompt: "InitialPrompt"
    #     }
    #   }
    #   options = {}
    #   response = client.update_q_app(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     app_id: "UUID", # required
    #     app_arn: "AppArn", # required
    #     title: "Title", # required
    #     description: "Description",
    #     initial_prompt: "InitialPrompt",
    #     app_version: 1, # required
    #     status: "PUBLISHED" # One of: ["PUBLISHED", "DRAFT", "DELETED"], # required
    #     created_at: Time.now, # required
    #     created_by: "String", # required
    #     updated_at: Time.now, # required
    #     updated_by: "String", # required
    #     required_capabilities: ["FileUpload" # One of: ["FileUpload", "CreatorMode", "RetrievalMode", "PluginMode"]]
    #   }
    # @return [Types::UpdateQAppOutput]
    def update_q_app(params = {}, options = {})
      request = build_request(:update_q_app, params)
      request.send_request(options)
    end

    # <p>Updates read permissions for a Amazon Q App in Amazon Q Business application environment instance.</p>
    # @param [Hash, Types::UpdateQAppPermissionsInput] params
    # @option params [String] :instance_id
    #   <p>The unique identifier of the Amazon Q Business application environment instance.</p>
    # @option params [String] :app_id
    #   <p>The unique identifier of the Amazon Q App for which permissions are being updated.</p>
    # @option params [Array<Types::PermissionInput>] :grant_permissions
    #   <p>The list of permissions to grant for the Amazon Q App.</p>
    # @option params [Array<Types::PermissionInput>] :revoke_permissions
    #   <p>The list of permissions to revoke for the Amazon Q App.</p>
    # @example Grant permissions for the app
    #   # Example operation for update_q_app_permissions
    #   params = {
    #     instance_id: "01793661-ad73-4c7d-8eaa-1c95a10151c2",
    #     app_id: "fe0acf86-49e5-4def-a0c2-40ce0cafee14",
    #     grant_permissions: [
    #       {
    #         action: read,
    #         principal: "user2@example.com"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_q_app_permissions(params, options)
    #   response.to_h #=>
    #   {
    #     resource_arn: "arn:aws:qapps:us-west-2:111111111111:application/01793661-ad73-4c7d-8eaa-1c95a10151c2/qapp/fe0acf86-49e5-4def-a0c2-40ce0cafee14",
    #     app_id: "fe0acf86-49e5-4def-a0c2-40ce0cafee14",
    #     permissions: [
    #       {
    #         action: write,
    #         principal: {
    #           user_id: "f8f15330-b091-708b-d46e-adb0d914b699",
    #           email: "user1@example.com"
    #         }
    #       },
    #       {
    #         action: read,
    #         principal: {
    #           user_id: "c81133d0-10d1-70eb-aaa3-d427ea6fc0f3",
    #           email: "user2@example.com"
    #         }
    #       }
    #     ]
    #   }
    # @example Revoke permissions for the app
    #   # Example operation for update_q_app_permissions
    #   params = {
    #     instance_id: "01793661-ad73-4c7d-8eaa-1c95a10151c2",
    #     app_id: "fe0acf86-49e5-4def-a0c2-40ce0cafee14",
    #     revoke_permissions: [
    #       {
    #         action: read,
    #         principal: "user2@example.com"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_q_app_permissions(params, options)
    #   response.to_h #=>
    #   {
    #     resource_arn: "arn:aws:qapps:us-west-2:111111111111:application/01793661-ad73-4c7d-8eaa-1c95a10151c2/qapp/fe0acf86-49e5-4def-a0c2-40ce0cafee14",
    #     app_id: "fe0acf86-49e5-4def-a0c2-40ce0cafee14",
    #     permissions: [
    #       {
    #         action: write,
    #         principal: {
    #           user_id: "f8f15330-b091-708b-d46e-adb0d914b699",
    #           email: "user1@example.com"
    #         }
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     app_id: "UUID", # required
    #     grant_permissions: [
    #       {
    #         action: "read" # One of: ["read", "write"], # required
    #         principal: "String", # required
    #       }
    #     ],
    #     revoke_permissions: [
    #       {
    #         action: "read" # One of: ["read", "write"], # required
    #         principal: "String", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_q_app_permissions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_arn: "String",
    #     app_id: "String",
    #     permissions: [
    #       {
    #         action: "read" # One of: ["read", "write"], # required
    #         principal: { # required
    #           user_id: "String",
    #           user_type: "owner" # One of: ["owner", "user"],
    #           email: "String"
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::UpdateQAppPermissionsOutput]
    def update_q_app_permissions(params = {}, options = {})
      request = build_request(:update_q_app_permissions, params)
      request.send_request(options)
    end

    # <p>Updates the session for a given Q App <code>sessionId</code>. This is only valid when at
    #       least one card of the session is in the <code>WAITING</code> state. Data for each
    #         <code>WAITING</code> card can be provided as input. If inputs are not provided, the call
    #       will be accepted but session will not move forward. Inputs for cards that are not in the
    #         <code>WAITING</code> status will be ignored.</p>
    # @param [Hash, Types::UpdateQAppSessionInput] params
    # @option params [String] :instance_id
    #   <p>The unique identifier of the Amazon Q Business application environment instance.</p>
    # @option params [String] :session_id
    #   <p>The unique identifier of the Q App session to provide input for.</p>
    # @option params [Array<Types::CardValue>] :values
    #   <p>The input values to provide for the current state of the Q App session.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     session_id: "UUID", # required
    #     values: [
    #       {
    #         card_id: "UUID", # required
    #         value: "String", # required
    #         submission_mutation: {
    #           submission_id: "UUID", # required
    #           mutation_type: "edit" # One of: ["edit", "delete", "add"], # required
    #         }
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_q_app_session(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     session_id: "String", # required
    #     session_arn: "String", # required
    #   }
    # @return [Types::UpdateQAppSessionOutput]
    def update_q_app_session(params = {}, options = {})
      request = build_request(:update_q_app_session, params)
      request.send_request(options)
    end

    # <p>Updates the configuration metadata of a session for a given Q App
    #       <code>sessionId</code>.</p>
    # @param [Hash, Types::UpdateQAppSessionMetadataInput] params
    # @option params [String] :instance_id
    #   <p>The unique identifier of the Amazon Q Business application environment instance.</p>
    # @option params [String] :session_id
    #   <p>The unique identifier of the Q App session to update configuration for.</p>
    # @option params [String] :session_name
    #   <p>The new name for the Q App session.</p>
    # @option params [Types::SessionSharingConfiguration] :sharing_configuration
    #   <p>The new sharing configuration for the Q App data collection session.</p>
    # @example Updates an existing session metadata for an Amazon Q App
    #   # Example operation for update_q_app_session_metadata
    #   params = {
    #     instance_id: "0b95c9c4-89cc-4aa8-9aae-aa91cbec699f",
    #     session_id: "56ae47c3-10bc-4c2c-8b27-9b9fe23b3edb",
    #     session_name: "Trip itinerary collection session",
    #     sharing_configuration: {
    #       enabled: true,
    #       accept_responses: true,
    #       reveal_cards: false
    #     }
    #   }
    #   options = {}
    #   response = client.update_q_app_session_metadata(params, options)
    #   response.to_h #=>
    #   {
    #     session_id: "56ae47c3-10bc-4c2c-8b27-9b9fe23b3edb",
    #     session_arn: "arn:aws:qapps:us-west-2:0123456789012:application/cbea8329-41c0-4566-a112-19250921a220/qapp/387ccac9-4717-489f-841f-729b7d7de355/session/56ae47c3-10bc-4c2c-8b27-9b9fe23b3edb",
    #     session_name: "Trip itinerary collection session",
    #     sharing_configuration: {
    #       enabled: true,
    #       accept_responses: true,
    #       reveal_cards: false
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     session_id: "UUID", # required
    #     session_name: "SessionName",
    #     sharing_configuration: { # required
    #       enabled: false, # required
    #       accept_responses: false,
    #       reveal_cards: false
    #     }
    #   }
    #   options = {}
    #   response = client.update_q_app_session_metadata(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     session_id: "UUID", # required
    #     session_arn: "String", # required
    #     session_name: "SessionName",
    #     sharing_configuration: { # required
    #       enabled: false, # required
    #       accept_responses: false,
    #       reveal_cards: false
    #     }
    #   }
    # @return [Types::UpdateQAppSessionMetadataOutput]
    def update_q_app_session_metadata(params = {}, options = {})
      request = build_request(:update_q_app_session_metadata, params)
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
      context[:gem_name] = 'aws-sdk-qapps'
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
