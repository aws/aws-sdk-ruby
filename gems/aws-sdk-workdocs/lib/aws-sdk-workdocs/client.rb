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

module Aws::WorkDocs
  # An API client for Aws::WorkDocs.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AWSGorillaBoyService

    add_plugin(::Aws::WorkDocs::Plugins::Endpoint)
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
    # @option options [#identity] :credentials_provider
    #  The credentials provider used to resolve credentials. Any object that responds to `#identity`
    #  and returns a {Aws::Core::Credentials}.
    # @option options [Boolean] :disable_host_prefix_injection
    #  When `true`, the SDK will not prepend the modeled host prefix to the endpoint.
    # @option options [Boolean] :disable_request_compression
    #  When `true`, the request body will not be compressed for supported operations.
    # @option options [String] :endpoint
    #  Custom Endpoint
    # @option options [Aws::WorkDocs::EndpointProvider] :endpoint_provider
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

    # <p>Aborts the upload of the specified document version that was previously initiated
    #             by <a>InitiateDocumentVersionUpload</a>. The client should make this call
    #             only when it no longer intends to upload the document version, or fails to do
    #             so.</p>
    # @param [Hash, Types::AbortDocumentVersionUploadRequest] params
    # @option params [String] :authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using Amazon Web Services administrator credentials to access the API.</p>
    # @option params [String] :document_id
    #   <p>The ID of the document.</p>
    # @option params [String] :version_id
    #   <p>The ID of the version.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     authentication_token: "AuthenticationHeaderType",
    #     document_id: "ResourceIdType", # required
    #     version_id: "DocumentVersionIdType", # required
    #   }
    #   options = {}
    #   response = client.abort_document_version_upload(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def abort_document_version_upload(params = {}, options = {})
      request = build_request(:abort_document_version_upload, params)
      request.send_request(options)
    end

    # <p>Activates the specified user. Only active users can access Amazon
    #             WorkDocs.</p>
    # @param [Hash, Types::ActivateUserRequest] params
    # @option params [String] :user_id
    #   <p>The ID of the user.</p>
    # @option params [String] :authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using Amazon Web Services administrator credentials to access the API.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_id: "IdType", # required
    #     authentication_token: "AuthenticationHeaderType"
    #   }
    #   options = {}
    #   response = client.activate_user(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     user: {
    #       id: "IdType",
    #       username: "UsernameType",
    #       email_address: "EmailAddressType",
    #       given_name: "UserAttributeValueType",
    #       surname: "UserAttributeValueType",
    #       organization_id: "IdType",
    #       root_folder_id: "ResourceIdType",
    #       recycle_bin_folder_id: "ResourceIdType",
    #       status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE", "PENDING"],
    #       type: "USER" # One of: ["USER", "ADMIN", "POWERUSER", "MINIMALUSER", "WORKSPACESUSER"],
    #       created_timestamp: Time.now,
    #       modified_timestamp: Time.now,
    #       time_zone_id: "TimeZoneIdType",
    #       locale: "en" # One of: ["en", "fr", "ko", "de", "es", "ja", "ru", "zh_CN", "zh_TW", "pt_BR", "default"],
    #       storage: {
    #         storage_utilized_in_bytes: 1,
    #         storage_rule: {
    #           storage_allocated_in_bytes: 1,
    #           storage_type: "UNLIMITED" # One of: ["UNLIMITED", "QUOTA"]
    #         }
    #       }
    #     }
    #   }
    # @return [Types::ActivateUserResponse]
    def activate_user(params = {}, options = {})
      request = build_request(:activate_user, params)
      request.send_request(options)
    end

    # <p>Creates a set of permissions for the specified folder or document. The resource
    #             permissions are overwritten if the principals already have different
    #             permissions.</p>
    # @param [Hash, Types::AddResourcePermissionsRequest] params
    # @option params [String] :authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using Amazon Web Services administrator credentials to access the API.</p>
    # @option params [String] :resource_id
    #   <p>The ID of the resource.</p>
    # @option params [Array<Types::SharePrincipal>] :principals
    #   <p>The users, groups, or organization being granted permission.</p>
    # @option params [Types::NotificationOptions] :notification_options
    #   <p>The notification options.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     authentication_token: "AuthenticationHeaderType",
    #     resource_id: "ResourceIdType", # required
    #     principals: [ # required
    #       {
    #         id: "IdType", # required
    #         type: "USER" # One of: ["USER", "GROUP", "INVITE", "ANONYMOUS", "ORGANIZATION"], # required
    #         role: "VIEWER" # One of: ["VIEWER", "CONTRIBUTOR", "OWNER", "COOWNER"], # required
    #       }
    #     ],
    #     notification_options: {
    #       send_email: false,
    #       email_message: "MessageType"
    #     }
    #   }
    #   options = {}
    #   response = client.add_resource_permissions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     share_results: [
    #       {
    #         principal_id: "IdType",
    #         invitee_principal_id: "IdType",
    #         role: "VIEWER" # One of: ["VIEWER", "CONTRIBUTOR", "OWNER", "COOWNER"],
    #         status: "SUCCESS" # One of: ["SUCCESS", "FAILURE"],
    #         share_id: "ResourceIdType",
    #         status_message: "MessageType"
    #       }
    #     ]
    #   }
    # @return [Types::AddResourcePermissionsResponse]
    def add_resource_permissions(params = {}, options = {})
      request = build_request(:add_resource_permissions, params)
      request.send_request(options)
    end

    # <p>Adds a new comment to the specified document version.</p>
    # @param [Hash, Types::CreateCommentRequest] params
    # @option params [String] :authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using Amazon Web Services administrator credentials to access the API.</p>
    # @option params [String] :document_id
    #   <p>The ID of the document.</p>
    # @option params [String] :version_id
    #   <p>The ID of the document version.</p>
    # @option params [String] :parent_id
    #   <p>The ID of the parent comment.</p>
    # @option params [String] :thread_id
    #   <p>The ID of the root comment in the thread.</p>
    # @option params [String] :text
    #   <p>The text of the comment.</p>
    # @option params [String] :visibility
    #   <p>The visibility of the comment. Options are either PRIVATE, where the comment is
    #               visible only to the comment author and document owner and co-owners, or PUBLIC, where
    #               the comment is visible to document owners, co-owners, and contributors.</p>
    # @option params [Boolean] :notify_collaborators
    #   <p>Set this parameter to TRUE to send an email out to the document collaborators after
    #               the comment is created.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     authentication_token: "AuthenticationHeaderType",
    #     document_id: "ResourceIdType", # required
    #     version_id: "DocumentVersionIdType", # required
    #     parent_id: "CommentIdType",
    #     thread_id: "CommentIdType",
    #     text: "CommentTextType", # required
    #     visibility: "PUBLIC" # One of: ["PUBLIC", "PRIVATE"],
    #     notify_collaborators: false
    #   }
    #   options = {}
    #   response = client.create_comment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     comment: {
    #       comment_id: "CommentIdType", # required
    #       parent_id: "CommentIdType",
    #       thread_id: "CommentIdType",
    #       text: "CommentTextType",
    #       contributor: {
    #         id: "IdType",
    #         username: "UsernameType",
    #         email_address: "EmailAddressType",
    #         given_name: "UserAttributeValueType",
    #         surname: "UserAttributeValueType",
    #         organization_id: "IdType",
    #         root_folder_id: "ResourceIdType",
    #         recycle_bin_folder_id: "ResourceIdType",
    #         status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE", "PENDING"],
    #         type: "USER" # One of: ["USER", "ADMIN", "POWERUSER", "MINIMALUSER", "WORKSPACESUSER"],
    #         created_timestamp: Time.now,
    #         modified_timestamp: Time.now,
    #         time_zone_id: "TimeZoneIdType",
    #         locale: "en" # One of: ["en", "fr", "ko", "de", "es", "ja", "ru", "zh_CN", "zh_TW", "pt_BR", "default"],
    #         storage: {
    #           storage_utilized_in_bytes: 1,
    #           storage_rule: {
    #             storage_allocated_in_bytes: 1,
    #             storage_type: "UNLIMITED" # One of: ["UNLIMITED", "QUOTA"]
    #           }
    #         }
    #       },
    #       created_timestamp: Time.now,
    #       status: "DRAFT" # One of: ["DRAFT", "PUBLISHED", "DELETED"],
    #       visibility: "PUBLIC" # One of: ["PUBLIC", "PRIVATE"],
    #       recipient_id: "IdType"
    #     }
    #   }
    # @return [Types::CreateCommentResponse]
    def create_comment(params = {}, options = {})
      request = build_request(:create_comment, params)
      request.send_request(options)
    end

    # <p>Adds one or more custom properties to the specified resource (a folder, document,
    #             or version).</p>
    # @param [Hash, Types::CreateCustomMetadataRequest] params
    # @option params [String] :authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using Amazon Web Services administrator credentials to access the API.</p>
    # @option params [String] :resource_id
    #   <p>The ID of the resource.</p>
    # @option params [String] :version_id
    #   <p>The ID of the version, if the custom metadata is being added to a document
    #               version.</p>
    # @option params [Hash<String, String>] :custom_metadata
    #   <p>Custom metadata in the form of name-value pairs.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     authentication_token: "AuthenticationHeaderType",
    #     resource_id: "ResourceIdType", # required
    #     version_id: "DocumentVersionIdType",
    #     custom_metadata: { # required
    #       "CustomMetadataKeyType" => "CustomMetadataValueType"
    #     }
    #   }
    #   options = {}
    #   response = client.create_custom_metadata(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::CreateCustomMetadataResponse]
    def create_custom_metadata(params = {}, options = {})
      request = build_request(:create_custom_metadata, params)
      request.send_request(options)
    end

    # <p>Creates a folder with the specified name and parent folder.</p>
    # @param [Hash, Types::CreateFolderRequest] params
    # @option params [String] :authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using Amazon Web Services administrator credentials to access the API.</p>
    # @option params [String] :name
    #   <p>The name of the new folder.</p>
    # @option params [String] :parent_folder_id
    #   <p>The ID of the parent folder.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     authentication_token: "AuthenticationHeaderType",
    #     name: "ResourceNameType",
    #     parent_folder_id: "ResourceIdType", # required
    #   }
    #   options = {}
    #   response = client.create_folder(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     metadata: {
    #       id: "ResourceIdType",
    #       name: "ResourceNameType",
    #       creator_id: "IdType",
    #       parent_folder_id: "ResourceIdType",
    #       created_timestamp: Time.now,
    #       modified_timestamp: Time.now,
    #       resource_state: "ACTIVE" # One of: ["ACTIVE", "RESTORING", "RECYCLING", "RECYCLED"],
    #       signature: "HashType",
    #       labels: ["SharedLabel"],
    #       size: 1,
    #       latest_version_size: 1
    #     }
    #   }
    # @return [Types::CreateFolderResponse]
    def create_folder(params = {}, options = {})
      request = build_request(:create_folder, params)
      request.send_request(options)
    end

    # <p>Adds the specified list of labels to the given resource (a document or
    #             folder)</p>
    # @param [Hash, Types::CreateLabelsRequest] params
    # @option params [String] :resource_id
    #   <p>The ID of the resource.</p>
    # @option params [Array<String>] :labels
    #   <p>List of labels to add to the resource.</p>
    # @option params [String] :authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using Amazon Web Services administrator credentials to access the API.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_id: "ResourceIdType", # required
    #     labels: ["SharedLabel"], # required
    #     authentication_token: "AuthenticationHeaderType"
    #   }
    #   options = {}
    #   response = client.create_labels(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::CreateLabelsResponse]
    def create_labels(params = {}, options = {})
      request = build_request(:create_labels, params)
      request.send_request(options)
    end

    # <p>Configure Amazon WorkDocs to use Amazon SNS notifications. The endpoint receives a
    #             confirmation message, and must confirm the subscription.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/workdocs/latest/developerguide/manage-notifications.html">Setting up notifications for an IAM user or role</a> in the <i>Amazon WorkDocs Developer
    #             Guide</i>.</p>
    # @param [Hash, Types::CreateNotificationSubscriptionRequest] params
    # @option params [String] :organization_id
    #   <p>The ID of the organization.</p>
    # @option params [String] :endpoint
    #   <p>The endpoint to receive the notifications. If the protocol is HTTPS, the endpoint
    #               is a URL that begins with <code>https</code>.</p>
    # @option params [String] :protocol
    #   <p>The protocol to use. The supported value is https, which delivers JSON-encoded
    #               messages using HTTPS POST.</p>
    # @option params [String] :subscription_type
    #   <p>The notification type.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     organization_id: "IdType", # required
    #     endpoint: "SubscriptionEndPointType", # required
    #     protocol: "HTTPS" # One of: ["HTTPS", "SQS"], # required
    #     subscription_type: "ALL" # One of: ["ALL"], # required
    #   }
    #   options = {}
    #   response = client.create_notification_subscription(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     subscription: {
    #       subscription_id: "IdType",
    #       end_point: "SubscriptionEndPointType",
    #       protocol: "HTTPS" # One of: ["HTTPS", "SQS"]
    #     }
    #   }
    # @return [Types::CreateNotificationSubscriptionResponse]
    def create_notification_subscription(params = {}, options = {})
      request = build_request(:create_notification_subscription, params)
      request.send_request(options)
    end

    # <p>Creates a user in a Simple AD or Microsoft AD directory. The status of a newly
    #             created user is "ACTIVE". New users can access Amazon WorkDocs.</p>
    # @param [Hash, Types::CreateUserRequest] params
    # @option params [String] :organization_id
    #   <p>The ID of the organization.</p>
    # @option params [String] :username
    #   <p>The login name of the user.</p>
    # @option params [String] :email_address
    #   <p>The email address of the user.</p>
    # @option params [String] :given_name
    #   <p>The given name of the user.</p>
    # @option params [String] :surname
    #   <p>The surname of the user.</p>
    # @option params [String] :password
    #   <p>The password of the user.</p>
    # @option params [String] :time_zone_id
    #   <p>The time zone ID of the user.</p>
    # @option params [Types::StorageRuleType] :storage_rule
    #   <p>The amount of storage for the user.</p>
    # @option params [String] :authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using Amazon Web Services administrator credentials to access the API.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     organization_id: "IdType",
    #     username: "UsernameType", # required
    #     email_address: "EmailAddressType",
    #     given_name: "UserAttributeValueType", # required
    #     surname: "UserAttributeValueType", # required
    #     password: "PasswordType", # required
    #     time_zone_id: "TimeZoneIdType",
    #     storage_rule: {
    #       storage_allocated_in_bytes: 1,
    #       storage_type: "UNLIMITED" # One of: ["UNLIMITED", "QUOTA"]
    #     },
    #     authentication_token: "AuthenticationHeaderType"
    #   }
    #   options = {}
    #   response = client.create_user(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     user: {
    #       id: "IdType",
    #       username: "UsernameType",
    #       email_address: "EmailAddressType",
    #       given_name: "UserAttributeValueType",
    #       surname: "UserAttributeValueType",
    #       organization_id: "IdType",
    #       root_folder_id: "ResourceIdType",
    #       recycle_bin_folder_id: "ResourceIdType",
    #       status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE", "PENDING"],
    #       type: "USER" # One of: ["USER", "ADMIN", "POWERUSER", "MINIMALUSER", "WORKSPACESUSER"],
    #       created_timestamp: Time.now,
    #       modified_timestamp: Time.now,
    #       time_zone_id: "TimeZoneIdType",
    #       locale: "en" # One of: ["en", "fr", "ko", "de", "es", "ja", "ru", "zh_CN", "zh_TW", "pt_BR", "default"],
    #       storage: {
    #         storage_utilized_in_bytes: 1,
    #         storage_rule: {
    #           storage_allocated_in_bytes: 1,
    #           storage_type: "UNLIMITED" # One of: ["UNLIMITED", "QUOTA"]
    #         }
    #       }
    #     }
    #   }
    # @return [Types::CreateUserResponse]
    def create_user(params = {}, options = {})
      request = build_request(:create_user, params)
      request.send_request(options)
    end

    # <p>Deactivates the specified user, which revokes the user's access to Amazon
    #             WorkDocs.</p>
    # @param [Hash, Types::DeactivateUserRequest] params
    # @option params [String] :user_id
    #   <p>The ID of the user.</p>
    # @option params [String] :authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using Amazon Web Services administrator credentials to access the API.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_id: "IdType", # required
    #     authentication_token: "AuthenticationHeaderType"
    #   }
    #   options = {}
    #   response = client.deactivate_user(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def deactivate_user(params = {}, options = {})
      request = build_request(:deactivate_user, params)
      request.send_request(options)
    end

    # <p>Deletes the specified comment from the document version.</p>
    # @param [Hash, Types::DeleteCommentRequest] params
    # @option params [String] :authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using Amazon Web Services administrator credentials to access the API.</p>
    # @option params [String] :document_id
    #   <p>The ID of the document.</p>
    # @option params [String] :version_id
    #   <p>The ID of the document version.</p>
    # @option params [String] :comment_id
    #   <p>The ID of the comment.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     authentication_token: "AuthenticationHeaderType",
    #     document_id: "ResourceIdType", # required
    #     version_id: "DocumentVersionIdType", # required
    #     comment_id: "CommentIdType", # required
    #   }
    #   options = {}
    #   response = client.delete_comment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_comment(params = {}, options = {})
      request = build_request(:delete_comment, params)
      request.send_request(options)
    end

    # <p>Deletes custom metadata from the specified resource.</p>
    # @param [Hash, Types::DeleteCustomMetadataRequest] params
    # @option params [String] :authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using Amazon Web Services administrator credentials to access the API.</p>
    # @option params [String] :resource_id
    #   <p>The ID of the resource, either a document or folder.</p>
    # @option params [String] :version_id
    #   <p>The ID of the version, if the custom metadata is being deleted from a document
    #               version.</p>
    # @option params [Array<String>] :keys
    #   <p>List of properties to remove.</p>
    # @option params [Boolean] :delete_all
    #   <p>Flag to indicate removal of all custom metadata properties from the specified
    #               resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     authentication_token: "AuthenticationHeaderType",
    #     resource_id: "ResourceIdType", # required
    #     version_id: "DocumentVersionIdType",
    #     keys: ["CustomMetadataKeyType"],
    #     delete_all: false
    #   }
    #   options = {}
    #   response = client.delete_custom_metadata(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteCustomMetadataResponse]
    def delete_custom_metadata(params = {}, options = {})
      request = build_request(:delete_custom_metadata, params)
      request.send_request(options)
    end

    # <p>Permanently deletes the specified document and its associated metadata.</p>
    # @param [Hash, Types::DeleteDocumentRequest] params
    # @option params [String] :authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using Amazon Web Services administrator credentials to access the API.</p>
    # @option params [String] :document_id
    #   <p>The ID of the document.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     authentication_token: "AuthenticationHeaderType",
    #     document_id: "ResourceIdType", # required
    #   }
    #   options = {}
    #   response = client.delete_document(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_document(params = {}, options = {})
      request = build_request(:delete_document, params)
      request.send_request(options)
    end

    # <p>Deletes a specific version of a document.</p>
    # @param [Hash, Types::DeleteDocumentVersionRequest] params
    # @option params [String] :authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using Amazon Web Services administrator credentials to access the API.</p>
    # @option params [String] :document_id
    #   <p>The ID of the document associated with the version being deleted.</p>
    # @option params [String] :version_id
    #   <p>The ID of the version being deleted.</p>
    # @option params [Boolean] :delete_prior_versions
    #   <p>Deletes all versions of a document prior to the current version.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     authentication_token: "AuthenticationHeaderType",
    #     document_id: "ResourceIdType", # required
    #     version_id: "DocumentVersionIdType", # required
    #     delete_prior_versions: false, # required
    #   }
    #   options = {}
    #   response = client.delete_document_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_document_version(params = {}, options = {})
      request = build_request(:delete_document_version, params)
      request.send_request(options)
    end

    # <p>Permanently deletes the specified folder and its contents.</p>
    # @param [Hash, Types::DeleteFolderRequest] params
    # @option params [String] :authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using Amazon Web Services administrator credentials to access the API.</p>
    # @option params [String] :folder_id
    #   <p>The ID of the folder.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     authentication_token: "AuthenticationHeaderType",
    #     folder_id: "ResourceIdType", # required
    #   }
    #   options = {}
    #   response = client.delete_folder(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_folder(params = {}, options = {})
      request = build_request(:delete_folder, params)
      request.send_request(options)
    end

    # <p>Deletes the contents of the specified folder.</p>
    # @param [Hash, Types::DeleteFolderContentsRequest] params
    # @option params [String] :authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using Amazon Web Services administrator credentials to access the API.</p>
    # @option params [String] :folder_id
    #   <p>The ID of the folder.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     authentication_token: "AuthenticationHeaderType",
    #     folder_id: "ResourceIdType", # required
    #   }
    #   options = {}
    #   response = client.delete_folder_contents(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_folder_contents(params = {}, options = {})
      request = build_request(:delete_folder_contents, params)
      request.send_request(options)
    end

    # <p>Deletes the specified list of labels from a resource.</p>
    # @param [Hash, Types::DeleteLabelsRequest] params
    # @option params [String] :resource_id
    #   <p>The ID of the resource.</p>
    # @option params [String] :authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using Amazon Web Services administrator credentials to access the API.</p>
    # @option params [Array<String>] :labels
    #   <p>List of labels to delete from the resource.</p>
    # @option params [Boolean] :delete_all
    #   <p>Flag to request removal of all labels from the specified resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_id: "ResourceIdType", # required
    #     authentication_token: "AuthenticationHeaderType",
    #     labels: ["SharedLabel"],
    #     delete_all: false
    #   }
    #   options = {}
    #   response = client.delete_labels(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteLabelsResponse]
    def delete_labels(params = {}, options = {})
      request = build_request(:delete_labels, params)
      request.send_request(options)
    end

    # <p>Deletes the specified subscription from the specified organization.</p>
    # @param [Hash, Types::DeleteNotificationSubscriptionRequest] params
    # @option params [String] :subscription_id
    #   <p>The ID of the subscription.</p>
    # @option params [String] :organization_id
    #   <p>The ID of the organization.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     subscription_id: "IdType", # required
    #     organization_id: "IdType", # required
    #   }
    #   options = {}
    #   response = client.delete_notification_subscription(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_notification_subscription(params = {}, options = {})
      request = build_request(:delete_notification_subscription, params)
      request.send_request(options)
    end

    # <p>Deletes the specified user from a Simple AD or Microsoft AD directory.</p>
    #          <important>
    #             <p>Deleting a user immediately and permanently deletes all content in that user's folder structure. Site retention policies do NOT apply to this type of deletion.</p>
    #          </important>
    # @param [Hash, Types::DeleteUserRequest] params
    # @option params [String] :authentication_token
    #   <p>Amazon WorkDocs authentication token. Do not set this field when using
    #               administrative API actions, as in accessing the API using Amazon Web Services credentials.</p>
    # @option params [String] :user_id
    #   <p>The ID of the user.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     authentication_token: "AuthenticationHeaderType",
    #     user_id: "IdType", # required
    #   }
    #   options = {}
    #   response = client.delete_user(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_user(params = {}, options = {})
      request = build_request(:delete_user, params)
      request.send_request(options)
    end

    # <p>Describes the user activities in a specified time period.</p>
    # @param [Hash, Types::DescribeActivitiesRequest] params
    # @option params [String] :authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using Amazon Web Services administrator credentials to access the API.</p>
    # @option params [Time] :start_time
    #   <p>The timestamp that determines the starting time of the activities. The response
    #               includes the activities performed after the specified timestamp.</p>
    # @option params [Time] :end_time
    #   <p>The timestamp that determines the end time of the activities. The response includes
    #               the activities performed before the specified timestamp.</p>
    # @option params [String] :organization_id
    #   <p>The ID of the organization. This is a mandatory parameter when using administrative
    #               API (SigV4) requests.</p>
    # @option params [String] :activity_types
    #   <p>Specifies which activity types to include in the response. If this field is left
    #               empty, all activity types are returned.</p>
    # @option params [String] :resource_id
    #   <p>The document or folder ID for which to describe activity types.</p>
    # @option params [String] :user_id
    #   <p>The ID of the user who performed the action. The response includes activities
    #               pertaining to this user. This is an optional parameter and is only applicable for
    #               administrative API (SigV4) requests.</p>
    # @option params [Boolean] :include_indirect_activities
    #   <p>Includes indirect activities. An indirect activity results from a direct activity
    #               performed on a parent resource. For example, sharing a parent folder (the direct
    #               activity) shares all of the subfolders and documents within the parent folder (the
    #               indirect activity).</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of items to return.</p>
    # @option params [String] :marker
    #   <p>The marker for the next set of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     authentication_token: "AuthenticationHeaderType",
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     organization_id: "IdType",
    #     activity_types: "ActivityNamesFilterType",
    #     resource_id: "IdType",
    #     user_id: "IdType",
    #     include_indirect_activities: false,
    #     limit: 1,
    #     marker: "SearchMarkerType"
    #   }
    #   options = {}
    #   response = client.describe_activities(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     user_activities: [
    #       {
    #         type: "DOCUMENT_CHECKED_IN" # One of: ["DOCUMENT_CHECKED_IN", "DOCUMENT_CHECKED_OUT", "DOCUMENT_RENAMED", "DOCUMENT_VERSION_UPLOADED", "DOCUMENT_VERSION_DELETED", "DOCUMENT_VERSION_VIEWED", "DOCUMENT_VERSION_DOWNLOADED", "DOCUMENT_RECYCLED", "DOCUMENT_RESTORED", "DOCUMENT_REVERTED", "DOCUMENT_SHARED", "DOCUMENT_UNSHARED", "DOCUMENT_SHARE_PERMISSION_CHANGED", "DOCUMENT_SHAREABLE_LINK_CREATED", "DOCUMENT_SHAREABLE_LINK_REMOVED", "DOCUMENT_SHAREABLE_LINK_PERMISSION_CHANGED", "DOCUMENT_MOVED", "DOCUMENT_COMMENT_ADDED", "DOCUMENT_COMMENT_DELETED", "DOCUMENT_ANNOTATION_ADDED", "DOCUMENT_ANNOTATION_DELETED", "FOLDER_CREATED", "FOLDER_DELETED", "FOLDER_RENAMED", "FOLDER_RECYCLED", "FOLDER_RESTORED", "FOLDER_SHARED", "FOLDER_UNSHARED", "FOLDER_SHARE_PERMISSION_CHANGED", "FOLDER_SHAREABLE_LINK_CREATED", "FOLDER_SHAREABLE_LINK_REMOVED", "FOLDER_SHAREABLE_LINK_PERMISSION_CHANGED", "FOLDER_MOVED"],
    #         time_stamp: Time.now,
    #         is_indirect_activity: false,
    #         organization_id: "IdType",
    #         initiator: {
    #           id: "IdType",
    #           username: "UsernameType",
    #           given_name: "UserAttributeValueType",
    #           surname: "UserAttributeValueType",
    #           email_address: "EmailAddressType"
    #         },
    #         participants: {
    #           users: [
    #             {
    #               id: "IdType",
    #               username: "UsernameType",
    #               given_name: "UserAttributeValueType",
    #               surname: "UserAttributeValueType",
    #               email_address: "EmailAddressType"
    #             }
    #           ],
    #           groups: [
    #             {
    #               id: "IdType",
    #               name: "GroupNameType"
    #             }
    #           ]
    #         },
    #         resource_metadata: {
    #           type: "FOLDER" # One of: ["FOLDER", "DOCUMENT"],
    #           name: "ResourceNameType",
    #           original_name: "ResourceNameType",
    #           id: "ResourceIdType",
    #           version_id: "DocumentVersionIdType",
    #           owner: {
    #             id: "IdType",
    #             username: "UsernameType",
    #             given_name: "UserAttributeValueType",
    #             surname: "UserAttributeValueType",
    #             email_address: "EmailAddressType"
    #           },
    #           parent_id: "ResourceIdType"
    #         },
    #         original_parent: {
    #           type: "FOLDER" # One of: ["FOLDER", "DOCUMENT"],
    #           name: "ResourceNameType",
    #           original_name: "ResourceNameType",
    #           id: "ResourceIdType",
    #           version_id: "DocumentVersionIdType",
    #           owner: {
    #             id: "IdType",
    #             username: "UsernameType",
    #             given_name: "UserAttributeValueType",
    #             surname: "UserAttributeValueType",
    #             email_address: "EmailAddressType"
    #           },
    #           parent_id: "ResourceIdType"
    #         },
    #         comment_metadata: {
    #           comment_id: "CommentIdType",
    #           contributor: {
    #             id: "IdType",
    #             username: "UsernameType",
    #             email_address: "EmailAddressType",
    #             given_name: "UserAttributeValueType",
    #             surname: "UserAttributeValueType",
    #             organization_id: "IdType",
    #             root_folder_id: "ResourceIdType",
    #             recycle_bin_folder_id: "ResourceIdType",
    #             status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE", "PENDING"],
    #             type: "USER" # One of: ["USER", "ADMIN", "POWERUSER", "MINIMALUSER", "WORKSPACESUSER"],
    #             created_timestamp: Time.now,
    #             modified_timestamp: Time.now,
    #             time_zone_id: "TimeZoneIdType",
    #             locale: "en" # One of: ["en", "fr", "ko", "de", "es", "ja", "ru", "zh_CN", "zh_TW", "pt_BR", "default"],
    #             storage: {
    #               storage_utilized_in_bytes: 1,
    #               storage_rule: {
    #                 storage_allocated_in_bytes: 1,
    #                 storage_type: "UNLIMITED" # One of: ["UNLIMITED", "QUOTA"]
    #               }
    #             }
    #           },
    #           created_timestamp: Time.now,
    #           comment_status: "DRAFT" # One of: ["DRAFT", "PUBLISHED", "DELETED"],
    #           recipient_id: "IdType",
    #           contributor_id: "IdType"
    #         }
    #       }
    #     ],
    #     marker: "SearchMarkerType"
    #   }
    # @return [Types::DescribeActivitiesResponse]
    def describe_activities(params = {}, options = {})
      request = build_request(:describe_activities, params)
      request.send_request(options)
    end

    # <p>List all the comments for the specified document version.</p>
    # @param [Hash, Types::DescribeCommentsRequest] params
    # @option params [String] :authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using Amazon Web Services administrator credentials to access the API.</p>
    # @option params [String] :document_id
    #   <p>The ID of the document.</p>
    # @option params [String] :version_id
    #   <p>The ID of the document version.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of items to return.</p>
    # @option params [String] :marker
    #   <p>The marker for the next set of results. This marker was received from a previous
    #               call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     authentication_token: "AuthenticationHeaderType",
    #     document_id: "ResourceIdType", # required
    #     version_id: "DocumentVersionIdType", # required
    #     limit: 1,
    #     marker: "MarkerType"
    #   }
    #   options = {}
    #   response = client.describe_comments(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     comments: [
    #       {
    #         comment_id: "CommentIdType", # required
    #         parent_id: "CommentIdType",
    #         thread_id: "CommentIdType",
    #         text: "CommentTextType",
    #         contributor: {
    #           id: "IdType",
    #           username: "UsernameType",
    #           email_address: "EmailAddressType",
    #           given_name: "UserAttributeValueType",
    #           surname: "UserAttributeValueType",
    #           organization_id: "IdType",
    #           root_folder_id: "ResourceIdType",
    #           recycle_bin_folder_id: "ResourceIdType",
    #           status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE", "PENDING"],
    #           type: "USER" # One of: ["USER", "ADMIN", "POWERUSER", "MINIMALUSER", "WORKSPACESUSER"],
    #           created_timestamp: Time.now,
    #           modified_timestamp: Time.now,
    #           time_zone_id: "TimeZoneIdType",
    #           locale: "en" # One of: ["en", "fr", "ko", "de", "es", "ja", "ru", "zh_CN", "zh_TW", "pt_BR", "default"],
    #           storage: {
    #             storage_utilized_in_bytes: 1,
    #             storage_rule: {
    #               storage_allocated_in_bytes: 1,
    #               storage_type: "UNLIMITED" # One of: ["UNLIMITED", "QUOTA"]
    #             }
    #           }
    #         },
    #         created_timestamp: Time.now,
    #         status: "DRAFT" # One of: ["DRAFT", "PUBLISHED", "DELETED"],
    #         visibility: "PUBLIC" # One of: ["PUBLIC", "PRIVATE"],
    #         recipient_id: "IdType"
    #       }
    #     ],
    #     marker: "MarkerType"
    #   }
    # @return [Types::DescribeCommentsResponse]
    def describe_comments(params = {}, options = {})
      request = build_request(:describe_comments, params)
      request.send_request(options)
    end

    # <p>Retrieves the document versions for the specified document.</p>
    #          <p>By default, only active versions are returned.</p>
    # @param [Hash, Types::DescribeDocumentVersionsRequest] params
    # @option params [String] :authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using Amazon Web Services administrator credentials to access the API.</p>
    # @option params [String] :document_id
    #   <p>The ID of the document.</p>
    # @option params [String] :marker
    #   <p>The marker for the next set of results. (You received this marker from a previous
    #               call.)</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of versions to return with this call.</p>
    # @option params [String] :include
    #   <p>A comma-separated list of values. Specify "INITIALIZED" to include incomplete
    #               versions.</p>
    # @option params [String] :fields
    #   <p>Specify "SOURCE" to include initialized versions and a URL for the source
    #               document.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     authentication_token: "AuthenticationHeaderType",
    #     document_id: "ResourceIdType", # required
    #     marker: "PageMarkerType",
    #     limit: 1,
    #     include: "FieldNamesType",
    #     fields: "FieldNamesType"
    #   }
    #   options = {}
    #   response = client.describe_document_versions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     document_versions: [
    #       {
    #         id: "DocumentVersionIdType",
    #         name: "ResourceNameType",
    #         content_type: "DocumentContentType",
    #         size: 1,
    #         signature: "HashType",
    #         status: "INITIALIZED" # One of: ["INITIALIZED", "ACTIVE"],
    #         created_timestamp: Time.now,
    #         modified_timestamp: Time.now,
    #         content_created_timestamp: Time.now,
    #         content_modified_timestamp: Time.now,
    #         creator_id: "IdType",
    #         thumbnail: {
    #           "DocumentThumbnailType" => "UrlType"
    #         },
    #         source: {
    #           "DocumentSourceType" => "UrlType"
    #         }
    #       }
    #     ],
    #     marker: "PageMarkerType"
    #   }
    # @return [Types::DescribeDocumentVersionsResponse]
    def describe_document_versions(params = {}, options = {})
      request = build_request(:describe_document_versions, params)
      request.send_request(options)
    end

    # <p>Describes the contents of the specified folder, including its documents and
    #             subfolders.</p>
    #          <p>By default, Amazon WorkDocs returns the first 100 active document and folder
    #             metadata items. If there are more results, the response includes a marker that you can
    #             use to request the next set of results. You can also request initialized
    #             documents.</p>
    # @param [Hash, Types::DescribeFolderContentsRequest] params
    # @option params [String] :authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using Amazon Web Services administrator credentials to access the API.</p>
    # @option params [String] :folder_id
    #   <p>The ID of the folder.</p>
    # @option params [String] :sort
    #   <p>The sorting criteria.</p>
    # @option params [String] :order
    #   <p>The order for the contents of the folder.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of items to return with this call.</p>
    # @option params [String] :marker
    #   <p>The marker for the next set of results. This marker was received from a previous
    #               call.</p>
    # @option params [String] :type
    #   <p>The type of items.</p>
    # @option params [String] :include
    #   <p>The contents to include. Specify "INITIALIZED" to include initialized
    #               documents.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     authentication_token: "AuthenticationHeaderType",
    #     folder_id: "ResourceIdType", # required
    #     sort: "DATE" # One of: ["DATE", "NAME"],
    #     order: "ASCENDING" # One of: ["ASCENDING", "DESCENDING"],
    #     limit: 1,
    #     marker: "PageMarkerType",
    #     type: "ALL" # One of: ["ALL", "DOCUMENT", "FOLDER"],
    #     include: "FieldNamesType"
    #   }
    #   options = {}
    #   response = client.describe_folder_contents(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     folders: [
    #       {
    #         id: "ResourceIdType",
    #         name: "ResourceNameType",
    #         creator_id: "IdType",
    #         parent_folder_id: "ResourceIdType",
    #         created_timestamp: Time.now,
    #         modified_timestamp: Time.now,
    #         resource_state: "ACTIVE" # One of: ["ACTIVE", "RESTORING", "RECYCLING", "RECYCLED"],
    #         signature: "HashType",
    #         labels: ["SharedLabel"],
    #         size: 1,
    #         latest_version_size: 1
    #       }
    #     ],
    #     documents: [
    #       {
    #         id: "ResourceIdType",
    #         creator_id: "IdType",
    #         parent_folder_id: "ResourceIdType",
    #         created_timestamp: Time.now,
    #         modified_timestamp: Time.now,
    #         latest_version_metadata: {
    #           id: "DocumentVersionIdType",
    #           name: "ResourceNameType",
    #           content_type: "DocumentContentType",
    #           size: 1,
    #           signature: "HashType",
    #           status: "INITIALIZED" # One of: ["INITIALIZED", "ACTIVE"],
    #           created_timestamp: Time.now,
    #           modified_timestamp: Time.now,
    #           content_created_timestamp: Time.now,
    #           content_modified_timestamp: Time.now,
    #           creator_id: "IdType",
    #           thumbnail: {
    #             "DocumentThumbnailType" => "UrlType"
    #           },
    #           source: {
    #             "DocumentSourceType" => "UrlType"
    #           }
    #         },
    #         resource_state: "ACTIVE" # One of: ["ACTIVE", "RESTORING", "RECYCLING", "RECYCLED"],
    #         labels: ["SharedLabel"]
    #       }
    #     ],
    #     marker: "PageMarkerType"
    #   }
    # @return [Types::DescribeFolderContentsResponse]
    def describe_folder_contents(params = {}, options = {})
      request = build_request(:describe_folder_contents, params)
      request.send_request(options)
    end

    # <p>Describes the groups specified by the query. Groups are defined by the underlying
    #             Active Directory.</p>
    # @param [Hash, Types::DescribeGroupsRequest] params
    # @option params [String] :authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using Amazon Web Services administrator credentials to access the API.</p>
    # @option params [String] :search_query
    #   <p>A query to describe groups by group name.</p>
    # @option params [String] :organization_id
    #   <p>The ID of the organization.</p>
    # @option params [String] :marker
    #   <p>The marker for the next set of results. (You received this marker from a previous
    #               call.)</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of items to return with this call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     authentication_token: "AuthenticationHeaderType",
    #     search_query: "SearchQueryType", # required
    #     organization_id: "IdType",
    #     marker: "MarkerType",
    #     limit: 1
    #   }
    #   options = {}
    #   response = client.describe_groups(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     groups: [
    #       {
    #         id: "IdType",
    #         name: "GroupNameType"
    #       }
    #     ],
    #     marker: "MarkerType"
    #   }
    # @return [Types::DescribeGroupsResponse]
    def describe_groups(params = {}, options = {})
      request = build_request(:describe_groups, params)
      request.send_request(options)
    end

    # <p>Lists the specified notification subscriptions.</p>
    # @param [Hash, Types::DescribeNotificationSubscriptionsRequest] params
    # @option params [String] :organization_id
    #   <p>The ID of the organization.</p>
    # @option params [String] :marker
    #   <p>The marker for the next set of results. (You received this marker from a previous
    #               call.)</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of items to return with this call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     organization_id: "IdType", # required
    #     marker: "PageMarkerType",
    #     limit: 1
    #   }
    #   options = {}
    #   response = client.describe_notification_subscriptions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     subscriptions: [
    #       {
    #         subscription_id: "IdType",
    #         end_point: "SubscriptionEndPointType",
    #         protocol: "HTTPS" # One of: ["HTTPS", "SQS"]
    #       }
    #     ],
    #     marker: "PageMarkerType"
    #   }
    # @return [Types::DescribeNotificationSubscriptionsResponse]
    def describe_notification_subscriptions(params = {}, options = {})
      request = build_request(:describe_notification_subscriptions, params)
      request.send_request(options)
    end

    # <p>Describes the permissions of a specified resource.</p>
    # @param [Hash, Types::DescribeResourcePermissionsRequest] params
    # @option params [String] :authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using Amazon Web Services administrator credentials to access the API.</p>
    # @option params [String] :resource_id
    #   <p>The ID of the resource.</p>
    # @option params [String] :principal_id
    #   <p>The ID of the principal to filter permissions by.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of items to return with this call.</p>
    # @option params [String] :marker
    #   <p>The marker for the next set of results. (You received this marker from a previous
    #               call)</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     authentication_token: "AuthenticationHeaderType",
    #     resource_id: "ResourceIdType", # required
    #     principal_id: "IdType",
    #     limit: 1,
    #     marker: "PageMarkerType"
    #   }
    #   options = {}
    #   response = client.describe_resource_permissions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     principals: [
    #       {
    #         id: "IdType",
    #         type: "USER" # One of: ["USER", "GROUP", "INVITE", "ANONYMOUS", "ORGANIZATION"],
    #         roles: [
    #           {
    #             role: "VIEWER" # One of: ["VIEWER", "CONTRIBUTOR", "OWNER", "COOWNER"],
    #             type: "DIRECT" # One of: ["DIRECT", "INHERITED"]
    #           }
    #         ]
    #       }
    #     ],
    #     marker: "PageMarkerType"
    #   }
    # @return [Types::DescribeResourcePermissionsResponse]
    def describe_resource_permissions(params = {}, options = {})
      request = build_request(:describe_resource_permissions, params)
      request.send_request(options)
    end

    # <p>Describes the current user's special folders; the <code>RootFolder</code> and the
    #                 <code>RecycleBin</code>. <code>RootFolder</code> is the root of user's files and
    #             folders and <code>RecycleBin</code> is the root of recycled items. This is not a valid
    #             action for SigV4 (administrative API) clients.</p>
    #          <p>This action requires an authentication token. To get an authentication token,
    #             register an application with Amazon WorkDocs. For more information, see <a href="https://docs.aws.amazon.com/workdocs/latest/developerguide/wd-auth-user.html">Authentication and Access
    #                 Control for User Applications</a> in the
    #             <i>Amazon
    #             WorkDocs Developer Guide</i>.</p>
    # @param [Hash, Types::DescribeRootFoldersRequest] params
    # @option params [String] :authentication_token
    #   <p>Amazon WorkDocs authentication token.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of items to return.</p>
    # @option params [String] :marker
    #   <p>The marker for the next set of results. (You received this marker from a previous
    #               call.)</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     authentication_token: "AuthenticationHeaderType", # required
    #     limit: 1,
    #     marker: "PageMarkerType"
    #   }
    #   options = {}
    #   response = client.describe_root_folders(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     folders: [
    #       {
    #         id: "ResourceIdType",
    #         name: "ResourceNameType",
    #         creator_id: "IdType",
    #         parent_folder_id: "ResourceIdType",
    #         created_timestamp: Time.now,
    #         modified_timestamp: Time.now,
    #         resource_state: "ACTIVE" # One of: ["ACTIVE", "RESTORING", "RECYCLING", "RECYCLED"],
    #         signature: "HashType",
    #         labels: ["SharedLabel"],
    #         size: 1,
    #         latest_version_size: 1
    #       }
    #     ],
    #     marker: "PageMarkerType"
    #   }
    # @return [Types::DescribeRootFoldersResponse]
    def describe_root_folders(params = {}, options = {})
      request = build_request(:describe_root_folders, params)
      request.send_request(options)
    end

    # <p>Describes the specified users. You can describe all users or filter the results
    #             (for example, by status or organization).</p>
    #          <p>By default, Amazon WorkDocs returns the first 24 active or pending users. If there
    #             are more results, the response includes a marker that you can use to request the next
    #             set of results.</p>
    # @param [Hash, Types::DescribeUsersRequest] params
    # @option params [String] :authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using Amazon Web Services administrator credentials to access the API.</p>
    # @option params [String] :organization_id
    #   <p>The ID of the organization.</p>
    # @option params [String] :user_ids
    #   <p>The IDs of the users.</p>
    # @option params [String] :query
    #   <p>A query to filter users by user name. Remember the following about the <code>Userids</code> and <code>Query</code> parameters:</p>
    #            <ul>
    #               <li>
    #                  <p>If you don't use either parameter, the API returns a paginated list of all users on the site.</p>
    #               </li>
    #               <li>
    #                  <p>If you use both parameters, the API ignores the <code>Query</code> parameter.</p>
    #               </li>
    #               <li>
    #                  <p>The <code>Userid</code> parameter only returns user names that match a corresponding user ID.</p>
    #               </li>
    #               <li>
    #                  <p>The <code>Query</code> parameter runs a "prefix" search for users by the <code>GivenName</code>, <code>SurName</code>, or <code>UserName</code> fields included in a 
    #                   <a href="https://docs.aws.amazon.com/workdocs/latest/APIReference/API_CreateUser.html">CreateUser</a> API call. For example, querying on 
    #                   <code>Ma</code> returns Márcia Oliveira, María García, and Mateo Jackson. If you use multiple characters, the API only returns data that matches all characters. For example, querying on <code>Ma J</code> only 
    #                   returns Mateo Jackson.</p>
    #               </li>
    #            </ul>
    # @option params [String] :include
    #   <p>The state of the users. Specify "ALL" to include inactive users.</p>
    # @option params [String] :order
    #   <p>The order for the results.</p>
    # @option params [String] :sort
    #   <p>The sorting criteria.</p>
    # @option params [String] :marker
    #   <p>The marker for the next set of results. (You received this marker from a previous
    #               call.)</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of items to return.</p>
    # @option params [String] :fields
    #   <p>A comma-separated list of values. Specify "STORAGE_METADATA" to include the user
    #               storage quota and utilization information.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     authentication_token: "AuthenticationHeaderType",
    #     organization_id: "IdType",
    #     user_ids: "UserIdsType",
    #     query: "SearchQueryType",
    #     include: "ALL" # One of: ["ALL", "ACTIVE_PENDING"],
    #     order: "ASCENDING" # One of: ["ASCENDING", "DESCENDING"],
    #     sort: "USER_NAME" # One of: ["USER_NAME", "FULL_NAME", "STORAGE_LIMIT", "USER_STATUS", "STORAGE_USED"],
    #     marker: "PageMarkerType",
    #     limit: 1,
    #     fields: "FieldNamesType"
    #   }
    #   options = {}
    #   response = client.describe_users(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     users: [
    #       {
    #         id: "IdType",
    #         username: "UsernameType",
    #         email_address: "EmailAddressType",
    #         given_name: "UserAttributeValueType",
    #         surname: "UserAttributeValueType",
    #         organization_id: "IdType",
    #         root_folder_id: "ResourceIdType",
    #         recycle_bin_folder_id: "ResourceIdType",
    #         status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE", "PENDING"],
    #         type: "USER" # One of: ["USER", "ADMIN", "POWERUSER", "MINIMALUSER", "WORKSPACESUSER"],
    #         created_timestamp: Time.now,
    #         modified_timestamp: Time.now,
    #         time_zone_id: "TimeZoneIdType",
    #         locale: "en" # One of: ["en", "fr", "ko", "de", "es", "ja", "ru", "zh_CN", "zh_TW", "pt_BR", "default"],
    #         storage: {
    #           storage_utilized_in_bytes: 1,
    #           storage_rule: {
    #             storage_allocated_in_bytes: 1,
    #             storage_type: "UNLIMITED" # One of: ["UNLIMITED", "QUOTA"]
    #           }
    #         }
    #       }
    #     ],
    #     total_number_of_users: 1,
    #     marker: "PageMarkerType"
    #   }
    # @return [Types::DescribeUsersResponse]
    def describe_users(params = {}, options = {})
      request = build_request(:describe_users, params)
      request.send_request(options)
    end

    # <p>Retrieves details of the current user for whom the authentication token was
    #             generated. This is not a valid action for SigV4 (administrative API) clients.</p>
    #          <p>This action requires an authentication token. To get an authentication token,
    #             register an application with Amazon WorkDocs. For more information, see <a href="https://docs.aws.amazon.com/workdocs/latest/developerguide/wd-auth-user.html">Authentication and Access
    #                 Control for User Applications</a> in the
    #             <i>Amazon
    #                 WorkDocs Developer Guide</i>.</p>
    # @param [Hash, Types::GetCurrentUserRequest] params
    # @option params [String] :authentication_token
    #   <p>Amazon WorkDocs authentication token.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     authentication_token: "AuthenticationHeaderType", # required
    #   }
    #   options = {}
    #   response = client.get_current_user(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     user: {
    #       id: "IdType",
    #       username: "UsernameType",
    #       email_address: "EmailAddressType",
    #       given_name: "UserAttributeValueType",
    #       surname: "UserAttributeValueType",
    #       organization_id: "IdType",
    #       root_folder_id: "ResourceIdType",
    #       recycle_bin_folder_id: "ResourceIdType",
    #       status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE", "PENDING"],
    #       type: "USER" # One of: ["USER", "ADMIN", "POWERUSER", "MINIMALUSER", "WORKSPACESUSER"],
    #       created_timestamp: Time.now,
    #       modified_timestamp: Time.now,
    #       time_zone_id: "TimeZoneIdType",
    #       locale: "en" # One of: ["en", "fr", "ko", "de", "es", "ja", "ru", "zh_CN", "zh_TW", "pt_BR", "default"],
    #       storage: {
    #         storage_utilized_in_bytes: 1,
    #         storage_rule: {
    #           storage_allocated_in_bytes: 1,
    #           storage_type: "UNLIMITED" # One of: ["UNLIMITED", "QUOTA"]
    #         }
    #       }
    #     }
    #   }
    # @return [Types::GetCurrentUserResponse]
    def get_current_user(params = {}, options = {})
      request = build_request(:get_current_user, params)
      request.send_request(options)
    end

    # <p>Retrieves details of a document.</p>
    # @param [Hash, Types::GetDocumentRequest] params
    # @option params [String] :authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using Amazon Web Services administrator credentials to access the API.</p>
    # @option params [String] :document_id
    #   <p>The ID of the document.</p>
    # @option params [Boolean] :include_custom_metadata
    #   <p>Set this to <code>TRUE</code> to include custom metadata in the response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     authentication_token: "AuthenticationHeaderType",
    #     document_id: "ResourceIdType", # required
    #     include_custom_metadata: false
    #   }
    #   options = {}
    #   response = client.get_document(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     metadata: {
    #       id: "ResourceIdType",
    #       creator_id: "IdType",
    #       parent_folder_id: "ResourceIdType",
    #       created_timestamp: Time.now,
    #       modified_timestamp: Time.now,
    #       latest_version_metadata: {
    #         id: "DocumentVersionIdType",
    #         name: "ResourceNameType",
    #         content_type: "DocumentContentType",
    #         size: 1,
    #         signature: "HashType",
    #         status: "INITIALIZED" # One of: ["INITIALIZED", "ACTIVE"],
    #         created_timestamp: Time.now,
    #         modified_timestamp: Time.now,
    #         content_created_timestamp: Time.now,
    #         content_modified_timestamp: Time.now,
    #         creator_id: "IdType",
    #         thumbnail: {
    #           "DocumentThumbnailType" => "UrlType"
    #         },
    #         source: {
    #           "DocumentSourceType" => "UrlType"
    #         }
    #       },
    #       resource_state: "ACTIVE" # One of: ["ACTIVE", "RESTORING", "RECYCLING", "RECYCLED"],
    #       labels: ["SharedLabel"]
    #     },
    #     custom_metadata: {
    #       "CustomMetadataKeyType" => "CustomMetadataValueType"
    #     }
    #   }
    # @return [Types::GetDocumentResponse]
    def get_document(params = {}, options = {})
      request = build_request(:get_document, params)
      request.send_request(options)
    end

    # <p>Retrieves the path information (the hierarchy from the root folder) for the
    #             requested document.</p>
    #          <p>By default, Amazon WorkDocs returns a maximum of 100 levels upwards from the
    #             requested document and only includes the IDs of the parent folders in the path. You can
    #             limit the maximum number of levels. You can also request the names of the parent
    #             folders.</p>
    # @param [Hash, Types::GetDocumentPathRequest] params
    # @option params [String] :authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using Amazon Web Services administrator credentials to access the API.</p>
    # @option params [String] :document_id
    #   <p>The ID of the document.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of levels in the hierarchy to return.</p>
    # @option params [String] :fields
    #   <p>A comma-separated list of values. Specify <code>NAME</code> to include the names of
    #               the parent folders.</p>
    # @option params [String] :marker
    #   <p>This value is not supported.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     authentication_token: "AuthenticationHeaderType",
    #     document_id: "IdType", # required
    #     limit: 1,
    #     fields: "FieldNamesType",
    #     marker: "PageMarkerType"
    #   }
    #   options = {}
    #   response = client.get_document_path(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     path: {
    #       components: [
    #         {
    #           id: "IdType",
    #           name: "ResourceNameType"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::GetDocumentPathResponse]
    def get_document_path(params = {}, options = {})
      request = build_request(:get_document_path, params)
      request.send_request(options)
    end

    # <p>Retrieves version metadata for the specified document.</p>
    # @param [Hash, Types::GetDocumentVersionRequest] params
    # @option params [String] :authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using Amazon Web Services administrator credentials to access the API.</p>
    # @option params [String] :document_id
    #   <p>The ID of the document.</p>
    # @option params [String] :version_id
    #   <p>The version ID of the document.</p>
    # @option params [String] :fields
    #   <p>A comma-separated list of values. Specify "SOURCE" to include a URL for the source
    #               document.</p>
    # @option params [Boolean] :include_custom_metadata
    #   <p>Set this to TRUE to include custom metadata in the response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     authentication_token: "AuthenticationHeaderType",
    #     document_id: "ResourceIdType", # required
    #     version_id: "DocumentVersionIdType", # required
    #     fields: "FieldNamesType",
    #     include_custom_metadata: false
    #   }
    #   options = {}
    #   response = client.get_document_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     metadata: {
    #       id: "DocumentVersionIdType",
    #       name: "ResourceNameType",
    #       content_type: "DocumentContentType",
    #       size: 1,
    #       signature: "HashType",
    #       status: "INITIALIZED" # One of: ["INITIALIZED", "ACTIVE"],
    #       created_timestamp: Time.now,
    #       modified_timestamp: Time.now,
    #       content_created_timestamp: Time.now,
    #       content_modified_timestamp: Time.now,
    #       creator_id: "IdType",
    #       thumbnail: {
    #         "DocumentThumbnailType" => "UrlType"
    #       },
    #       source: {
    #         "DocumentSourceType" => "UrlType"
    #       }
    #     },
    #     custom_metadata: {
    #       "CustomMetadataKeyType" => "CustomMetadataValueType"
    #     }
    #   }
    # @return [Types::GetDocumentVersionResponse]
    def get_document_version(params = {}, options = {})
      request = build_request(:get_document_version, params)
      request.send_request(options)
    end

    # <p>Retrieves the metadata of the specified folder.</p>
    # @param [Hash, Types::GetFolderRequest] params
    # @option params [String] :authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using Amazon Web Services administrator credentials to access the API.</p>
    # @option params [String] :folder_id
    #   <p>The ID of the folder.</p>
    # @option params [Boolean] :include_custom_metadata
    #   <p>Set to TRUE to include custom metadata in the response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     authentication_token: "AuthenticationHeaderType",
    #     folder_id: "ResourceIdType", # required
    #     include_custom_metadata: false
    #   }
    #   options = {}
    #   response = client.get_folder(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     metadata: {
    #       id: "ResourceIdType",
    #       name: "ResourceNameType",
    #       creator_id: "IdType",
    #       parent_folder_id: "ResourceIdType",
    #       created_timestamp: Time.now,
    #       modified_timestamp: Time.now,
    #       resource_state: "ACTIVE" # One of: ["ACTIVE", "RESTORING", "RECYCLING", "RECYCLED"],
    #       signature: "HashType",
    #       labels: ["SharedLabel"],
    #       size: 1,
    #       latest_version_size: 1
    #     },
    #     custom_metadata: {
    #       "CustomMetadataKeyType" => "CustomMetadataValueType"
    #     }
    #   }
    # @return [Types::GetFolderResponse]
    def get_folder(params = {}, options = {})
      request = build_request(:get_folder, params)
      request.send_request(options)
    end

    # <p>Retrieves the path information (the hierarchy from the root folder) for the
    #             specified folder.</p>
    #          <p>By default, Amazon WorkDocs returns a maximum of 100 levels upwards from the
    #             requested folder and only includes the IDs of the parent folders in the path. You can
    #             limit the maximum number of levels. You can also request the parent folder
    #             names.</p>
    # @param [Hash, Types::GetFolderPathRequest] params
    # @option params [String] :authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using Amazon Web Services administrator credentials to access the API.</p>
    # @option params [String] :folder_id
    #   <p>The ID of the folder.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of levels in the hierarchy to return.</p>
    # @option params [String] :fields
    #   <p>A comma-separated list of values. Specify "NAME" to include the names of the parent
    #               folders.</p>
    # @option params [String] :marker
    #   <p>This value is not supported.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     authentication_token: "AuthenticationHeaderType",
    #     folder_id: "IdType", # required
    #     limit: 1,
    #     fields: "FieldNamesType",
    #     marker: "PageMarkerType"
    #   }
    #   options = {}
    #   response = client.get_folder_path(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     path: {
    #       components: [
    #         {
    #           id: "IdType",
    #           name: "ResourceNameType"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::GetFolderPathResponse]
    def get_folder_path(params = {}, options = {})
      request = build_request(:get_folder_path, params)
      request.send_request(options)
    end

    # <p>Retrieves a collection of resources, including folders and documents. The only
    #             <code>CollectionType</code> supported is <code>SHARED_WITH_ME</code>.</p>
    # @param [Hash, Types::GetResourcesRequest] params
    # @option params [String] :authentication_token
    #   <p>The Amazon WorkDocs authentication token. Not required when using Amazon Web Services administrator credentials to access the API.</p>
    # @option params [String] :user_id
    #   <p>The user ID for the resource collection. This is a required field for accessing the
    #               API operation using IAM credentials.</p>
    # @option params [String] :collection_type
    #   <p>The collection type.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of resources to return.</p>
    # @option params [String] :marker
    #   <p>The marker for the next set of results. This marker was received from a previous call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     authentication_token: "AuthenticationHeaderType",
    #     user_id: "IdType",
    #     collection_type: "SHARED_WITH_ME" # One of: ["SHARED_WITH_ME"],
    #     limit: 1,
    #     marker: "PageMarkerType"
    #   }
    #   options = {}
    #   response = client.get_resources(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     folders: [
    #       {
    #         id: "ResourceIdType",
    #         name: "ResourceNameType",
    #         creator_id: "IdType",
    #         parent_folder_id: "ResourceIdType",
    #         created_timestamp: Time.now,
    #         modified_timestamp: Time.now,
    #         resource_state: "ACTIVE" # One of: ["ACTIVE", "RESTORING", "RECYCLING", "RECYCLED"],
    #         signature: "HashType",
    #         labels: ["SharedLabel"],
    #         size: 1,
    #         latest_version_size: 1
    #       }
    #     ],
    #     documents: [
    #       {
    #         id: "ResourceIdType",
    #         creator_id: "IdType",
    #         parent_folder_id: "ResourceIdType",
    #         created_timestamp: Time.now,
    #         modified_timestamp: Time.now,
    #         latest_version_metadata: {
    #           id: "DocumentVersionIdType",
    #           name: "ResourceNameType",
    #           content_type: "DocumentContentType",
    #           size: 1,
    #           signature: "HashType",
    #           status: "INITIALIZED" # One of: ["INITIALIZED", "ACTIVE"],
    #           created_timestamp: Time.now,
    #           modified_timestamp: Time.now,
    #           content_created_timestamp: Time.now,
    #           content_modified_timestamp: Time.now,
    #           creator_id: "IdType",
    #           thumbnail: {
    #             "DocumentThumbnailType" => "UrlType"
    #           },
    #           source: {
    #             "DocumentSourceType" => "UrlType"
    #           }
    #         },
    #         resource_state: "ACTIVE" # One of: ["ACTIVE", "RESTORING", "RECYCLING", "RECYCLED"],
    #         labels: ["SharedLabel"]
    #       }
    #     ],
    #     marker: "PageMarkerType"
    #   }
    # @return [Types::GetResourcesResponse]
    def get_resources(params = {}, options = {})
      request = build_request(:get_resources, params)
      request.send_request(options)
    end

    # <p>Creates a new document object and version object.</p>
    #          <p>The client specifies the parent folder ID and name of the document to upload. The
    #             ID is optionally specified when creating a new version of an existing document. This is
    #             the first step to upload a document. Next, upload the document to the URL returned from
    #             the call, and then call <a>UpdateDocumentVersion</a>.</p>
    #          <p>To cancel the document upload, call <a>AbortDocumentVersionUpload</a>.</p>
    # @param [Hash, Types::InitiateDocumentVersionUploadRequest] params
    # @option params [String] :authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using Amazon Web Services administrator credentials to access the API.</p>
    # @option params [String] :id
    #   <p>The ID of the document.</p>
    # @option params [String] :name
    #   <p>The name of the document.</p>
    # @option params [Time] :content_created_timestamp
    #   <p>The timestamp when the content of the document was originally created.</p>
    # @option params [Time] :content_modified_timestamp
    #   <p>The timestamp when the content of the document was modified.</p>
    # @option params [String] :content_type
    #   <p>The content type of the document.</p>
    # @option params [Integer] :document_size_in_bytes
    #   <p>The size of the document, in bytes.</p>
    # @option params [String] :parent_folder_id
    #   <p>The ID of the parent folder.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     authentication_token: "AuthenticationHeaderType",
    #     id: "ResourceIdType",
    #     name: "ResourceNameType",
    #     content_created_timestamp: Time.now,
    #     content_modified_timestamp: Time.now,
    #     content_type: "DocumentContentType",
    #     document_size_in_bytes: 1,
    #     parent_folder_id: "ResourceIdType"
    #   }
    #   options = {}
    #   response = client.initiate_document_version_upload(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     metadata: {
    #       id: "ResourceIdType",
    #       creator_id: "IdType",
    #       parent_folder_id: "ResourceIdType",
    #       created_timestamp: Time.now,
    #       modified_timestamp: Time.now,
    #       latest_version_metadata: {
    #         id: "DocumentVersionIdType",
    #         name: "ResourceNameType",
    #         content_type: "DocumentContentType",
    #         size: 1,
    #         signature: "HashType",
    #         status: "INITIALIZED" # One of: ["INITIALIZED", "ACTIVE"],
    #         created_timestamp: Time.now,
    #         modified_timestamp: Time.now,
    #         content_created_timestamp: Time.now,
    #         content_modified_timestamp: Time.now,
    #         creator_id: "IdType",
    #         thumbnail: {
    #           "DocumentThumbnailType" => "UrlType"
    #         },
    #         source: {
    #           "DocumentSourceType" => "UrlType"
    #         }
    #       },
    #       resource_state: "ACTIVE" # One of: ["ACTIVE", "RESTORING", "RECYCLING", "RECYCLED"],
    #       labels: ["SharedLabel"]
    #     },
    #     upload_metadata: {
    #       upload_url: "UrlType",
    #       signed_headers: {
    #         "HeaderNameType" => "HeaderValueType"
    #       }
    #     }
    #   }
    # @return [Types::InitiateDocumentVersionUploadResponse]
    def initiate_document_version_upload(params = {}, options = {})
      request = build_request(:initiate_document_version_upload, params)
      request.send_request(options)
    end

    # <p>Removes all the permissions from the specified resource.</p>
    # @param [Hash, Types::RemoveAllResourcePermissionsRequest] params
    # @option params [String] :authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using Amazon Web Services administrator credentials to access the API.</p>
    # @option params [String] :resource_id
    #   <p>The ID of the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     authentication_token: "AuthenticationHeaderType",
    #     resource_id: "ResourceIdType", # required
    #   }
    #   options = {}
    #   response = client.remove_all_resource_permissions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def remove_all_resource_permissions(params = {}, options = {})
      request = build_request(:remove_all_resource_permissions, params)
      request.send_request(options)
    end

    # <p>Removes the permission for the specified principal from the specified
    #             resource.</p>
    # @param [Hash, Types::RemoveResourcePermissionRequest] params
    # @option params [String] :authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using Amazon Web Services administrator credentials to access the API.</p>
    # @option params [String] :resource_id
    #   <p>The ID of the resource.</p>
    # @option params [String] :principal_id
    #   <p>The principal ID of the resource.</p>
    # @option params [String] :principal_type
    #   <p>The principal type of the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     authentication_token: "AuthenticationHeaderType",
    #     resource_id: "ResourceIdType", # required
    #     principal_id: "IdType", # required
    #     principal_type: "USER" # One of: ["USER", "GROUP", "INVITE", "ANONYMOUS", "ORGANIZATION"]
    #   }
    #   options = {}
    #   response = client.remove_resource_permission(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def remove_resource_permission(params = {}, options = {})
      request = build_request(:remove_resource_permission, params)
      request.send_request(options)
    end

    # <p>Recovers a deleted version of an Amazon WorkDocs document.</p>
    # @param [Hash, Types::RestoreDocumentVersionsRequest] params
    # @option params [String] :authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using Amazon Web Services administrator credentials to access the API.</p>
    # @option params [String] :document_id
    #   <p>The ID of the document.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     authentication_token: "AuthenticationHeaderType",
    #     document_id: "ResourceIdType", # required
    #   }
    #   options = {}
    #   response = client.restore_document_versions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def restore_document_versions(params = {}, options = {})
      request = build_request(:restore_document_versions, params)
      request.send_request(options)
    end

    # <p>Searches metadata and the content of folders, documents, document versions, and comments.</p>
    # @param [Hash, Types::SearchResourcesRequest] params
    # @option params [String] :authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using Amazon Web Services administrator credentials to access the API.</p>
    # @option params [String] :query_text
    #   <p>The String to search for. Searches across different text fields based on request parameters. Use double quotes around the query string for exact phrase matches.</p>
    # @option params [Array<String>] :query_scopes
    #   <p>Filter based on the text field type. A Folder has only a name and no content. A Comment has only content and no name. A Document or Document Version has a name and content</p>
    # @option params [String] :organization_id
    #   <p>Filters based on the resource owner OrgId. This is a mandatory parameter when using Admin SigV4 credentials.</p>
    # @option params [Array<String>] :additional_response_fields
    #   <p>A list of attributes to include in the response. Used to request fields that are not normally
    #               returned in a standard response.</p>
    # @option params [Types::Filters] :filters
    #   <p>Filters results based on entity metadata.</p>
    # @option params [Array<Types::SearchSortResult>] :order_by
    #   <p>Order by results in one or more categories.</p>
    # @option params [Integer] :limit
    #   <p>Max results count per page.</p>
    # @option params [String] :marker
    #   <p>The marker for the next set of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     authentication_token: "AuthenticationHeaderType",
    #     query_text: "SearchQueryType",
    #     query_scopes: ["NAME" # One of: ["NAME", "CONTENT"]],
    #     organization_id: "IdType",
    #     additional_response_fields: ["WEBURL" # One of: ["WEBURL"]],
    #     filters: {
    #       text_locales: ["AR" # One of: ["AR", "BG", "BN", "DA", "DE", "CS", "EL", "EN", "ES", "FA", "FI", "FR", "HI", "HU", "ID", "IT", "JA", "KO", "LT", "LV", "NL", "NO", "PT", "RO", "RU", "SV", "SW", "TH", "TR", "ZH", "DEFAULT"]],
    #       content_categories: ["IMAGE" # One of: ["IMAGE", "DOCUMENT", "PDF", "SPREADSHEET", "PRESENTATION", "AUDIO", "VIDEO", "SOURCE_CODE", "OTHER"]],
    #       resource_types: ["FOLDER" # One of: ["FOLDER", "DOCUMENT", "COMMENT", "DOCUMENT_VERSION"]],
    #       labels: ["SearchLabel"],
    #       principals: [
    #         {
    #           id: "IdType", # required
    #           roles: ["VIEWER" # One of: ["VIEWER", "CONTRIBUTOR", "OWNER", "COOWNER"]]
    #         }
    #       ],
    #       ancestor_ids: ["SearchAncestorId"],
    #       search_collection_types: ["OWNED" # One of: ["OWNED", "SHARED_WITH_ME"]],
    #       size_range: {
    #         start_value: 1,
    #         end_value: 1
    #       },
    #       created_range: {
    #         start_value: Time.now,
    #         end_value: Time.now
    #       },
    #       modified_range: {
    #         start_value: Time.now,
    #         end_value: Time.now
    #       }
    #     },
    #     order_by: [
    #       {
    #         field: "RELEVANCE" # One of: ["RELEVANCE", "NAME", "SIZE", "CREATED_TIMESTAMP", "MODIFIED_TIMESTAMP"],
    #         order: "ASC" # One of: ["ASC", "DESC"]
    #       }
    #     ],
    #     limit: 1,
    #     marker: "NextMarkerType"
    #   }
    #   options = {}
    #   response = client.search_resources(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         resource_type: "DOCUMENT" # One of: ["DOCUMENT", "FOLDER", "COMMENT", "DOCUMENT_VERSION"],
    #         web_url: "ResponseItemWebUrl",
    #         document_metadata: {
    #           id: "ResourceIdType",
    #           creator_id: "IdType",
    #           parent_folder_id: "ResourceIdType",
    #           created_timestamp: Time.now,
    #           modified_timestamp: Time.now,
    #           latest_version_metadata: {
    #             id: "DocumentVersionIdType",
    #             name: "ResourceNameType",
    #             content_type: "DocumentContentType",
    #             size: 1,
    #             signature: "HashType",
    #             status: "INITIALIZED" # One of: ["INITIALIZED", "ACTIVE"],
    #             created_timestamp: Time.now,
    #             modified_timestamp: Time.now,
    #             content_created_timestamp: Time.now,
    #             content_modified_timestamp: Time.now,
    #             creator_id: "IdType",
    #             thumbnail: {
    #               "DocumentThumbnailType" => "UrlType"
    #             },
    #             source: {
    #               "DocumentSourceType" => "UrlType"
    #             }
    #           },
    #           resource_state: "ACTIVE" # One of: ["ACTIVE", "RESTORING", "RECYCLING", "RECYCLED"],
    #           labels: ["SharedLabel"]
    #         },
    #         folder_metadata: {
    #           id: "ResourceIdType",
    #           name: "ResourceNameType",
    #           creator_id: "IdType",
    #           parent_folder_id: "ResourceIdType",
    #           created_timestamp: Time.now,
    #           modified_timestamp: Time.now,
    #           resource_state: "ACTIVE" # One of: ["ACTIVE", "RESTORING", "RECYCLING", "RECYCLED"],
    #           signature: "HashType",
    #           labels: ["SharedLabel"],
    #           size: 1,
    #           latest_version_size: 1
    #         },
    #         comment_metadata: {
    #           comment_id: "CommentIdType",
    #           contributor: {
    #             id: "IdType",
    #             username: "UsernameType",
    #             email_address: "EmailAddressType",
    #             given_name: "UserAttributeValueType",
    #             surname: "UserAttributeValueType",
    #             organization_id: "IdType",
    #             root_folder_id: "ResourceIdType",
    #             recycle_bin_folder_id: "ResourceIdType",
    #             status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE", "PENDING"],
    #             type: "USER" # One of: ["USER", "ADMIN", "POWERUSER", "MINIMALUSER", "WORKSPACESUSER"],
    #             created_timestamp: Time.now,
    #             modified_timestamp: Time.now,
    #             time_zone_id: "TimeZoneIdType",
    #             locale: "en" # One of: ["en", "fr", "ko", "de", "es", "ja", "ru", "zh_CN", "zh_TW", "pt_BR", "default"],
    #             storage: {
    #               storage_utilized_in_bytes: 1,
    #               storage_rule: {
    #                 storage_allocated_in_bytes: 1,
    #                 storage_type: "UNLIMITED" # One of: ["UNLIMITED", "QUOTA"]
    #               }
    #             }
    #           },
    #           created_timestamp: Time.now,
    #           comment_status: "DRAFT" # One of: ["DRAFT", "PUBLISHED", "DELETED"],
    #           recipient_id: "IdType",
    #           contributor_id: "IdType"
    #         },
    #         document_version_metadata: {
    #           id: "DocumentVersionIdType",
    #           name: "ResourceNameType",
    #           content_type: "DocumentContentType",
    #           size: 1,
    #           signature: "HashType",
    #           status: "INITIALIZED" # One of: ["INITIALIZED", "ACTIVE"],
    #           created_timestamp: Time.now,
    #           modified_timestamp: Time.now,
    #           content_created_timestamp: Time.now,
    #           content_modified_timestamp: Time.now,
    #           creator_id: "IdType",
    #           thumbnail: {
    #             "DocumentThumbnailType" => "UrlType"
    #           },
    #           source: {
    #             "DocumentSourceType" => "UrlType"
    #           }
    #         }
    #       }
    #     ],
    #     marker: "NextMarkerType"
    #   }
    # @return [Types::SearchResourcesResponse]
    def search_resources(params = {}, options = {})
      request = build_request(:search_resources, params)
      request.send_request(options)
    end

    # <p>Updates the specified attributes of a document. The user must have access to both
    #             the document and its parent folder, if applicable.</p>
    # @param [Hash, Types::UpdateDocumentRequest] params
    # @option params [String] :authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using Amazon Web Services administrator credentials to access the API.</p>
    # @option params [String] :document_id
    #   <p>The ID of the document.</p>
    # @option params [String] :name
    #   <p>The name of the document.</p>
    # @option params [String] :parent_folder_id
    #   <p>The ID of the parent folder.</p>
    # @option params [String] :resource_state
    #   <p>The resource state of the document. Only ACTIVE and RECYCLED are
    #               supported.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     authentication_token: "AuthenticationHeaderType",
    #     document_id: "ResourceIdType", # required
    #     name: "ResourceNameType",
    #     parent_folder_id: "ResourceIdType",
    #     resource_state: "ACTIVE" # One of: ["ACTIVE", "RESTORING", "RECYCLING", "RECYCLED"]
    #   }
    #   options = {}
    #   response = client.update_document(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_document(params = {}, options = {})
      request = build_request(:update_document, params)
      request.send_request(options)
    end

    # <p>Changes the status of the document version to ACTIVE. </p>
    #          <p>Amazon WorkDocs also sets its document container to ACTIVE. This is the last step
    #             in a document upload, after the client uploads the document to an S3-presigned URL
    #             returned by <a>InitiateDocumentVersionUpload</a>. </p>
    # @param [Hash, Types::UpdateDocumentVersionRequest] params
    # @option params [String] :authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using Amazon Web Services administrator credentials to access the API.</p>
    # @option params [String] :document_id
    #   <p>The ID of the document.</p>
    # @option params [String] :version_id
    #   <p>The version ID of the document.</p>
    # @option params [String] :version_status
    #   <p>The status of the version.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     authentication_token: "AuthenticationHeaderType",
    #     document_id: "ResourceIdType", # required
    #     version_id: "DocumentVersionIdType", # required
    #     version_status: "ACTIVE" # One of: ["ACTIVE"]
    #   }
    #   options = {}
    #   response = client.update_document_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_document_version(params = {}, options = {})
      request = build_request(:update_document_version, params)
      request.send_request(options)
    end

    # <p>Updates the specified attributes of the specified folder. The user must have access
    #             to both the folder and its parent folder, if applicable.</p>
    # @param [Hash, Types::UpdateFolderRequest] params
    # @option params [String] :authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using Amazon Web Services administrator credentials to access the API.</p>
    # @option params [String] :folder_id
    #   <p>The ID of the folder.</p>
    # @option params [String] :name
    #   <p>The name of the folder.</p>
    # @option params [String] :parent_folder_id
    #   <p>The ID of the parent folder.</p>
    # @option params [String] :resource_state
    #   <p>The resource state of the folder. Only ACTIVE and RECYCLED are accepted values from
    #               the API.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     authentication_token: "AuthenticationHeaderType",
    #     folder_id: "ResourceIdType", # required
    #     name: "ResourceNameType",
    #     parent_folder_id: "ResourceIdType",
    #     resource_state: "ACTIVE" # One of: ["ACTIVE", "RESTORING", "RECYCLING", "RECYCLED"]
    #   }
    #   options = {}
    #   response = client.update_folder(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_folder(params = {}, options = {})
      request = build_request(:update_folder, params)
      request.send_request(options)
    end

    # <p>Updates the specified attributes of the specified user, and grants or revokes
    #             administrative privileges to the Amazon WorkDocs site.</p>
    # @param [Hash, Types::UpdateUserRequest] params
    # @option params [String] :authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using Amazon Web Services administrator credentials to access the API.</p>
    # @option params [String] :user_id
    #   <p>The ID of the user.</p>
    # @option params [String] :given_name
    #   <p>The given name of the user.</p>
    # @option params [String] :surname
    #   <p>The surname of the user.</p>
    # @option params [String] :type
    #   <p>The type of the user.</p>
    # @option params [Types::StorageRuleType] :storage_rule
    #   <p>The amount of storage for the user.</p>
    # @option params [String] :time_zone_id
    #   <p>The time zone ID of the user.</p>
    # @option params [String] :locale
    #   <p>The locale of the user.</p>
    # @option params [String] :grant_poweruser_privileges
    #   <p>Boolean value to determine whether the user is granted Power user privileges.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     authentication_token: "AuthenticationHeaderType",
    #     user_id: "IdType", # required
    #     given_name: "UserAttributeValueType",
    #     surname: "UserAttributeValueType",
    #     type: "USER" # One of: ["USER", "ADMIN", "POWERUSER", "MINIMALUSER", "WORKSPACESUSER"],
    #     storage_rule: {
    #       storage_allocated_in_bytes: 1,
    #       storage_type: "UNLIMITED" # One of: ["UNLIMITED", "QUOTA"]
    #     },
    #     time_zone_id: "TimeZoneIdType",
    #     locale: "en" # One of: ["en", "fr", "ko", "de", "es", "ja", "ru", "zh_CN", "zh_TW", "pt_BR", "default"],
    #     grant_poweruser_privileges: "TRUE" # One of: ["TRUE", "FALSE"]
    #   }
    #   options = {}
    #   response = client.update_user(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     user: {
    #       id: "IdType",
    #       username: "UsernameType",
    #       email_address: "EmailAddressType",
    #       given_name: "UserAttributeValueType",
    #       surname: "UserAttributeValueType",
    #       organization_id: "IdType",
    #       root_folder_id: "ResourceIdType",
    #       recycle_bin_folder_id: "ResourceIdType",
    #       status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE", "PENDING"],
    #       type: "USER" # One of: ["USER", "ADMIN", "POWERUSER", "MINIMALUSER", "WORKSPACESUSER"],
    #       created_timestamp: Time.now,
    #       modified_timestamp: Time.now,
    #       time_zone_id: "TimeZoneIdType",
    #       locale: "en" # One of: ["en", "fr", "ko", "de", "es", "ja", "ru", "zh_CN", "zh_TW", "pt_BR", "default"],
    #       storage: {
    #         storage_utilized_in_bytes: 1,
    #         storage_rule: {
    #           storage_allocated_in_bytes: 1,
    #           storage_type: "UNLIMITED" # One of: ["UNLIMITED", "QUOTA"]
    #         }
    #       }
    #     }
    #   }
    # @return [Types::UpdateUserResponse]
    def update_user(params = {}, options = {})
      request = build_request(:update_user, params)
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
      context[:gem_name] = 'aws-sdk-workdocs'
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
