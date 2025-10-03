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
require 'aws-sdk-core/plugins/sigv4'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/json_rpc_protocol'

module Aws::AppStream
  # An API client for Aws::AppStream.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::PhotonAdminProxyService

    add_plugin(::Aws::AppStream::Plugins::Endpoint)
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
    add_plugin(Aws::Core::Plugins::SigV4)
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
    add_plugin(Aws::Core::Plugins::JsonRpcProtocol)

    # @param options [Hash] Client options
    # @option options [String] :access_key_id
    # @option options [String] :account_id
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
    #  Custom Endpoint
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::AppStream::EndpointProvider)
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

    # <p>Associates the specified app block builder with the specified app block.</p>
    # @param [Hash, Types::AssociateAppBlockBuilderAppBlockRequest] params
    # @option params [String] :app_block_arn
    #   <p>The ARN of the app block.</p>
    # @option params [String] :app_block_builder_name
    #   <p>The name of the app block builder.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_block_arn: "Arn", # required
    #     app_block_builder_name: "Name", # required
    #   }
    #   options = {}
    #   response = client.associate_app_block_builder_app_block(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     app_block_builder_app_block_association: {
    #       app_block_arn: "Arn", # required
    #       app_block_builder_name: "Name", # required
    #     }
    #   }
    # @return [Types::AssociateAppBlockBuilderAppBlockResult]
    def associate_app_block_builder_app_block(params = {}, options = {})
      request = build_request(:associate_app_block_builder_app_block, params)
      request.send_request(options)
    end

    # <p>Associates the specified application with the specified fleet. This is only supported for Elastic fleets.</p>
    # @param [Hash, Types::AssociateApplicationFleetRequest] params
    # @option params [String] :fleet_name
    #   <p>The name of the fleet.</p>
    # @option params [String] :application_arn
    #   <p>The ARN of the application.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     fleet_name: "Name", # required
    #     application_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.associate_application_fleet(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     application_fleet_association: {
    #       fleet_name: "String", # required
    #       application_arn: "Arn", # required
    #     }
    #   }
    # @return [Types::AssociateApplicationFleetResult]
    def associate_application_fleet(params = {}, options = {})
      request = build_request(:associate_application_fleet, params)
      request.send_request(options)
    end

    # <p>Associates an application to entitle.</p>
    # @param [Hash, Types::AssociateApplicationToEntitlementRequest] params
    # @option params [String] :stack_name
    #   <p>The name of the stack.</p>
    # @option params [String] :entitlement_name
    #   <p>The name of the entitlement.</p>
    # @option params [String] :application_identifier
    #   <p>The identifier of the application.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     stack_name: "Name", # required
    #     entitlement_name: "Name", # required
    #     application_identifier: "String", # required
    #   }
    #   options = {}
    #   response = client.associate_application_to_entitlement(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::AssociateApplicationToEntitlementResult]
    def associate_application_to_entitlement(params = {}, options = {})
      request = build_request(:associate_application_to_entitlement, params)
      request.send_request(options)
    end

    # <p>Associates the specified fleet with the specified stack.</p>
    # @param [Hash, Types::AssociateFleetRequest] params
    # @option params [String] :fleet_name
    #   <p>The name of the fleet. </p>
    # @option params [String] :stack_name
    #   <p>The name of the stack.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     fleet_name: "String", # required
    #     stack_name: "String", # required
    #   }
    #   options = {}
    #   response = client.associate_fleet(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::AssociateFleetResult]
    def associate_fleet(params = {}, options = {})
      request = build_request(:associate_fleet, params)
      request.send_request(options)
    end

    # <p>Associates the specified users with the specified stacks. Users in a user pool cannot be assigned to stacks with fleets that are joined to an Active Directory domain.</p>
    # @param [Hash, Types::BatchAssociateUserStackRequest] params
    # @option params [Array<Types::UserStackAssociation>] :user_stack_associations
    #   <p>The list of UserStackAssociation objects.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_stack_associations: [ # required
    #       {
    #         stack_name: "String", # required
    #         user_name: "Username", # required
    #         authentication_type: "API" # One of: ["API", "SAML", "USERPOOL", "AWS_AD"], # required
    #         send_email_notification: false
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.batch_associate_user_stack(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     errors: [
    #       {
    #         user_stack_association: {
    #           stack_name: "String", # required
    #           user_name: "Username", # required
    #           authentication_type: "API" # One of: ["API", "SAML", "USERPOOL", "AWS_AD"], # required
    #           send_email_notification: false
    #         },
    #         error_code: "STACK_NOT_FOUND" # One of: ["STACK_NOT_FOUND", "USER_NAME_NOT_FOUND", "DIRECTORY_NOT_FOUND", "INTERNAL_ERROR"],
    #         error_message: "String"
    #       }
    #     ]
    #   }
    # @return [Types::BatchAssociateUserStackResult]
    def batch_associate_user_stack(params = {}, options = {})
      request = build_request(:batch_associate_user_stack, params)
      request.send_request(options)
    end

    # <p>Disassociates the specified users from the specified stacks.</p>
    # @param [Hash, Types::BatchDisassociateUserStackRequest] params
    # @option params [Array<Types::UserStackAssociation>] :user_stack_associations
    #   <p>The list of UserStackAssociation objects.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_stack_associations: [ # required
    #       {
    #         stack_name: "String", # required
    #         user_name: "Username", # required
    #         authentication_type: "API" # One of: ["API", "SAML", "USERPOOL", "AWS_AD"], # required
    #         send_email_notification: false
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.batch_disassociate_user_stack(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     errors: [
    #       {
    #         user_stack_association: {
    #           stack_name: "String", # required
    #           user_name: "Username", # required
    #           authentication_type: "API" # One of: ["API", "SAML", "USERPOOL", "AWS_AD"], # required
    #           send_email_notification: false
    #         },
    #         error_code: "STACK_NOT_FOUND" # One of: ["STACK_NOT_FOUND", "USER_NAME_NOT_FOUND", "DIRECTORY_NOT_FOUND", "INTERNAL_ERROR"],
    #         error_message: "String"
    #       }
    #     ]
    #   }
    # @return [Types::BatchDisassociateUserStackResult]
    def batch_disassociate_user_stack(params = {}, options = {})
      request = build_request(:batch_disassociate_user_stack, params)
      request.send_request(options)
    end

    # <p>Copies the image within the same region or to a new region within the same AWS account. Note that any tags you added to the image will not be copied.</p>
    # @param [Hash, Types::CopyImageRequest] params
    # @option params [String] :source_image_name
    #   <p>The name of the image to copy.</p>
    # @option params [String] :destination_image_name
    #   <p>The name that the image will have when it is copied to the destination.</p>
    # @option params [String] :destination_region
    #   <p>The destination region to which the image will be copied. This parameter is required, even if you are copying an image within the same region.</p>
    # @option params [String] :destination_image_description
    #   <p>The description that the image will have when it is copied to the destination.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     source_image_name: "Name", # required
    #     destination_image_name: "Name", # required
    #     destination_region: "RegionName", # required
    #     destination_image_description: "Description"
    #   }
    #   options = {}
    #   response = client.copy_image(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     destination_image_name: "Name"
    #   }
    # @return [Types::CopyImageResponse]
    def copy_image(params = {}, options = {})
      request = build_request(:copy_image, params)
      request.send_request(options)
    end

    # <p>Creates an app block.</p>
    #          <p>App blocks are an Amazon AppStream 2.0 resource that stores the details about the
    #             virtual hard disk in an S3 bucket. It also stores the setup script with details about
    #             how to mount the virtual hard disk. The virtual hard disk includes the application
    #             binaries and other files necessary to launch your applications. Multiple applications
    #             can be assigned to a single app block.</p>
    #          <p>This is only supported for Elastic fleets.</p>
    # @param [Hash, Types::CreateAppBlockRequest] params
    # @option params [String] :name
    #   <p>The name of the app block.</p>
    # @option params [String] :description
    #   <p>The description of the app block.</p>
    # @option params [String] :display_name
    #   <p>The display name of the app block. This is not displayed to the user.</p>
    # @option params [Types::S3Location] :source_s3_location
    #   <p>The source S3 location of the app block.</p>
    # @option params [Types::ScriptDetails] :setup_script_details
    #   <p>The setup script details of the app block. This must be provided for the
    #                   <code>CUSTOM</code> PackagingType.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags assigned to the app block.</p>
    # @option params [Types::ScriptDetails] :post_setup_script_details
    #   <p>The post setup script details of the app block. This can only be provided for the
    #                   <code>APPSTREAM2</code> PackagingType.</p>
    # @option params [String] :packaging_type
    #   <p>The packaging type of the app block.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "Name", # required
    #     description: "Description",
    #     display_name: "DisplayName",
    #     source_s3_location: { # required
    #       s3_bucket: "S3Bucket", # required
    #       s3_key: "S3Key"
    #     },
    #     setup_script_details: {
    #       script_s3_location: { # required
    #         s3_bucket: "S3Bucket", # required
    #         s3_key: "S3Key"
    #       },
    #       executable_path: "String", # required
    #       executable_parameters: "String",
    #       timeout_in_seconds: 1, # required
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     post_setup_script_details: {
    #       script_s3_location: { # required
    #         s3_bucket: "S3Bucket", # required
    #         s3_key: "S3Key"
    #       },
    #       executable_path: "String", # required
    #       executable_parameters: "String",
    #       timeout_in_seconds: 1, # required
    #     },
    #     packaging_type: "CUSTOM" # One of: ["CUSTOM", "APPSTREAM2"]
    #   }
    #   options = {}
    #   response = client.create_app_block(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     app_block: {
    #       name: "String", # required
    #       arn: "Arn", # required
    #       description: "String",
    #       display_name: "String",
    #       source_s3_location: {
    #         s3_bucket: "S3Bucket", # required
    #         s3_key: "S3Key"
    #       },
    #       setup_script_details: {
    #         script_s3_location: { # required
    #           s3_bucket: "S3Bucket", # required
    #           s3_key: "S3Key"
    #         },
    #         executable_path: "String", # required
    #         executable_parameters: "String",
    #         timeout_in_seconds: 1, # required
    #       },
    #       created_time: Time.now,
    #       post_setup_script_details: {
    #         script_s3_location: { # required
    #           s3_bucket: "S3Bucket", # required
    #           s3_key: "S3Key"
    #         },
    #         executable_path: "String", # required
    #         executable_parameters: "String",
    #         timeout_in_seconds: 1, # required
    #       },
    #       packaging_type: "CUSTOM" # One of: ["CUSTOM", "APPSTREAM2"],
    #       state: "INACTIVE" # One of: ["INACTIVE", "ACTIVE"],
    #       app_block_errors: [
    #         {
    #           error_code: "String",
    #           error_message: "String"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::CreateAppBlockResult]
    def create_app_block(params = {}, options = {})
      request = build_request(:create_app_block, params)
      request.send_request(options)
    end

    # <p>Creates an app block builder.</p>
    # @param [Hash, Types::CreateAppBlockBuilderRequest] params
    # @option params [String] :name
    #   <p>The unique name for the app block builder.</p>
    # @option params [String] :description
    #   <p>The description of the app block builder.</p>
    # @option params [String] :display_name
    #   <p>The display name of the app block builder.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to associate with the app block builder. A tag is a key-value pair, and the
    #               value is optional. For example, Environment=Test. If you do not specify a value,
    #               Environment=. </p>
    #            <p>If you do not specify a value, the value is set to an empty string.</p>
    #            <p>Generally allowed characters are: letters, numbers, and spaces representable in UTF-8, and the following special characters: </p>
    #            <p>_ . : / = + \ - @</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/appstream2/latest/developerguide/tagging-basic.html">Tagging Your Resources</a> in the <i>Amazon AppStream 2.0 Administration Guide</i>.</p>
    # @option params [String] :platform
    #   <p>The platform of the app block builder.</p>
    #            <p>
    #               <code>WINDOWS_SERVER_2019</code> is the only valid value.</p>
    # @option params [String] :instance_type
    #   <p>The instance type to use when launching the app block builder. The following instance
    #               types are available:</p>
    #            <ul>
    #               <li>
    #                  <p>stream.standard.small</p>
    #               </li>
    #               <li>
    #                  <p>stream.standard.medium</p>
    #               </li>
    #               <li>
    #                  <p>stream.standard.large</p>
    #               </li>
    #               <li>
    #                  <p>stream.standard.xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.standard.2xlarge</p>
    #               </li>
    #            </ul>
    # @option params [Types::VpcConfig] :vpc_config
    #   <p>The VPC configuration for the app block builder.</p>
    #            <p>App block builders require that you specify at least two subnets in different availability
    #               zones.</p>
    # @option params [Boolean] :enable_default_internet_access
    #   <p>Enables or disables default internet access for the app block builder.</p>
    # @option params [String] :iam_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role to apply to the app block builder. To
    #               assume a role, the app block builder calls the AWS Security Token Service (STS)
    #                   <code>AssumeRole</code> API operation and passes the ARN of the role to use. The
    #               operation creates a new session with temporary credentials. AppStream 2.0 retrieves the
    #               temporary credentials and creates the <b>appstream_machine_role</b> credential profile on the instance.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/appstream2/latest/developerguide/using-iam-roles-to-grant-permissions-to-applications-scripts-streaming-instances.html">Using an IAM Role to Grant Permissions to Applications and Scripts Running on AppStream 2.0 Streaming Instances</a> in the <i>Amazon AppStream 2.0 Administration Guide</i>.</p>
    # @option params [Array<Types::AccessEndpoint>] :access_endpoints
    #   <p>The list of interface VPC endpoint (interface endpoint) objects. Administrators can connect to the app block builder only through the specified endpoints.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "Name", # required
    #     description: "Description",
    #     display_name: "DisplayName",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     platform: "WINDOWS_SERVER_2019" # One of: ["WINDOWS_SERVER_2019"], # required
    #     instance_type: "String", # required
    #     vpc_config: { # required
    #       subnet_ids: ["String"],
    #       security_group_ids: ["String"]
    #     },
    #     enable_default_internet_access: false,
    #     iam_role_arn: "Arn",
    #     access_endpoints: [
    #       {
    #         endpoint_type: "STREAMING" # One of: ["STREAMING"], # required
    #         vpce_id: "String"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_app_block_builder(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     app_block_builder: {
    #       arn: "Arn", # required
    #       name: "String", # required
    #       display_name: "String",
    #       description: "String",
    #       platform: "WINDOWS_SERVER_2019" # One of: ["WINDOWS_SERVER_2019"], # required
    #       instance_type: "String", # required
    #       enable_default_internet_access: false,
    #       iam_role_arn: "Arn",
    #       vpc_config: { # required
    #         subnet_ids: ["String"],
    #         security_group_ids: ["String"]
    #       },
    #       state: "STARTING" # One of: ["STARTING", "RUNNING", "STOPPING", "STOPPED"], # required
    #       created_time: Time.now,
    #       app_block_builder_errors: [
    #         {
    #           error_code: "IAM_SERVICE_ROLE_MISSING_ENI_DESCRIBE_ACTION" # One of: ["IAM_SERVICE_ROLE_MISSING_ENI_DESCRIBE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_CREATE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_DELETE_ACTION", "NETWORK_INTERFACE_LIMIT_EXCEEDED", "INTERNAL_SERVICE_ERROR", "IAM_SERVICE_ROLE_IS_MISSING", "MACHINE_ROLE_IS_MISSING", "STS_DISABLED_IN_REGION", "SUBNET_HAS_INSUFFICIENT_IP_ADDRESSES", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SUBNET_ACTION", "SUBNET_NOT_FOUND", "IMAGE_NOT_FOUND", "INVALID_SUBNET_CONFIGURATION", "SECURITY_GROUPS_NOT_FOUND", "IGW_NOT_ATTACHED", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SECURITY_GROUPS_ACTION", "FLEET_STOPPED", "FLEET_INSTANCE_PROVISIONING_FAILURE", "DOMAIN_JOIN_ERROR_FILE_NOT_FOUND", "DOMAIN_JOIN_ERROR_ACCESS_DENIED", "DOMAIN_JOIN_ERROR_LOGON_FAILURE", "DOMAIN_JOIN_ERROR_INVALID_PARAMETER", "DOMAIN_JOIN_ERROR_MORE_DATA", "DOMAIN_JOIN_ERROR_NO_SUCH_DOMAIN", "DOMAIN_JOIN_ERROR_NOT_SUPPORTED", "DOMAIN_JOIN_NERR_INVALID_WORKGROUP_NAME", "DOMAIN_JOIN_NERR_WORKSTATION_NOT_STARTED", "DOMAIN_JOIN_ERROR_DS_MACHINE_ACCOUNT_QUOTA_EXCEEDED", "DOMAIN_JOIN_NERR_PASSWORD_EXPIRED", "DOMAIN_JOIN_INTERNAL_SERVICE_ERROR"],
    #           error_message: "String",
    #           error_timestamp: Time.now
    #         }
    #       ],
    #       state_change_reason: {
    #         code: "INTERNAL_ERROR" # One of: ["INTERNAL_ERROR"],
    #         message: "String"
    #       },
    #       access_endpoints: [
    #         {
    #           endpoint_type: "STREAMING" # One of: ["STREAMING"], # required
    #           vpce_id: "String"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::CreateAppBlockBuilderResult]
    def create_app_block_builder(params = {}, options = {})
      request = build_request(:create_app_block_builder, params)
      request.send_request(options)
    end

    # <p>Creates a URL to start a create app block builder streaming session.</p>
    # @param [Hash, Types::CreateAppBlockBuilderStreamingURLRequest] params
    # @option params [String] :app_block_builder_name
    #   <p>The name of the app block builder.</p>
    # @option params [Integer] :validity
    #   <p>The time that the streaming URL will be valid, in seconds. 
    #               Specify a value between 1 and 604800 seconds. The default is 3600 seconds.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_block_builder_name: "Name", # required
    #     validity: 1
    #   }
    #   options = {}
    #   response = client.create_app_block_builder_streaming_url(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     streaming_url: "String",
    #     expires: Time.now
    #   }
    # @return [Types::CreateAppBlockBuilderStreamingURLResult]
    def create_app_block_builder_streaming_url(params = {}, options = {})
      request = build_request(:create_app_block_builder_streaming_url, params)
      request.send_request(options)
    end

    # <p>Creates an application.</p>
    #          <p>Applications are an Amazon AppStream 2.0 resource that stores the details about how to
    #             launch applications on Elastic fleet streaming instances. An application consists of the
    #             launch details, icon, and display name. Applications are associated with an app block
    #             that contains the application binaries and other files. The applications assigned to an
    #             Elastic fleet are the applications users can launch. </p>
    #          <p>This is only supported for Elastic fleets.</p>
    # @param [Hash, Types::CreateApplicationRequest] params
    # @option params [String] :name
    #   <p>The name of the application. This name is visible to users when display name is not specified.</p>
    # @option params [String] :display_name
    #   <p>The display name of the application. This name is visible to users in the application catalog.</p>
    # @option params [String] :description
    #   <p>The description of the application.</p>
    # @option params [Types::S3Location] :icon_s3_location
    #   <p>The location in S3 of the application icon.</p>
    # @option params [String] :launch_path
    #   <p>The launch path of the application.</p>
    # @option params [String] :working_directory
    #   <p>The working directory of the application.</p>
    # @option params [String] :launch_parameters
    #   <p>The launch parameters of the application.</p>
    # @option params [Array<String>] :platforms
    #   <p>The platforms the application supports. WINDOWS_SERVER_2019 and AMAZON_LINUX2 are supported for Elastic fleets.</p>
    # @option params [Array<String>] :instance_families
    #   <p>The instance families the application supports. Valid values are GENERAL_PURPOSE and GRAPHICS_G4.</p>
    # @option params [String] :app_block_arn
    #   <p>The app block ARN to which the application should be associated</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags assigned to the application.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "Name", # required
    #     display_name: "DisplayName",
    #     description: "Description",
    #     icon_s3_location: { # required
    #       s3_bucket: "S3Bucket", # required
    #       s3_key: "S3Key"
    #     },
    #     launch_path: "String", # required
    #     working_directory: "String",
    #     launch_parameters: "String",
    #     platforms: ["WINDOWS" # One of: ["WINDOWS", "WINDOWS_SERVER_2016", "WINDOWS_SERVER_2019", "WINDOWS_SERVER_2022", "AMAZON_LINUX2", "RHEL8", "ROCKY_LINUX8"]], # required
    #     instance_families: ["String"], # required
    #     app_block_arn: "Arn", # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_application(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     application: {
    #       name: "String",
    #       display_name: "String",
    #       icon_url: "String",
    #       launch_path: "String",
    #       launch_parameters: "String",
    #       enabled: false,
    #       metadata: {
    #         "String" => "String"
    #       },
    #       working_directory: "String",
    #       description: "String",
    #       arn: "Arn",
    #       app_block_arn: "Arn",
    #       icon_s3_location: {
    #         s3_bucket: "S3Bucket", # required
    #         s3_key: "S3Key"
    #       },
    #       platforms: ["WINDOWS" # One of: ["WINDOWS", "WINDOWS_SERVER_2016", "WINDOWS_SERVER_2019", "WINDOWS_SERVER_2022", "AMAZON_LINUX2", "RHEL8", "ROCKY_LINUX8"]],
    #       instance_families: ["String"],
    #       created_time: Time.now
    #     }
    #   }
    # @return [Types::CreateApplicationResult]
    def create_application(params = {}, options = {})
      request = build_request(:create_application, params)
      request.send_request(options)
    end

    # <p>Creates a Directory Config object in AppStream 2.0. This object includes the configuration information required to join fleets and image builders to Microsoft Active Directory domains.</p>
    # @param [Hash, Types::CreateDirectoryConfigRequest] params
    # @option params [String] :directory_name
    #   <p>The fully qualified name of the directory (for example, corp.example.com).</p>
    # @option params [Array<String>] :organizational_unit_distinguished_names
    #   <p>The distinguished names of the organizational units for computer accounts.</p>
    # @option params [Types::ServiceAccountCredentials] :service_account_credentials
    #   <p>The credentials for the service account used by the fleet or image builder to connect to the directory.</p>
    # @option params [Types::CertificateBasedAuthProperties] :certificate_based_auth_properties
    #   <p>The certificate-based authentication properties used to authenticate SAML 2.0 Identity
    #               Provider (IdP) user identities to Active Directory domain-joined streaming instances.
    #               Fallback is turned on by default when certificate-based authentication is <b>Enabled</b> . Fallback allows users to log in using their AD
    #               domain password if certificate-based authentication is unsuccessful, or to unlock a
    #               desktop lock screen. <b>Enabled_no_directory_login_fallback</b> enables certificate-based
    #               authentication, but does not allow users to log in using their AD domain password. Users
    #               will be disconnected to re-authenticate using certificates.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_name: "DirectoryName", # required
    #     organizational_unit_distinguished_names: ["OrganizationalUnitDistinguishedName"], # required
    #     service_account_credentials: {
    #       account_name: "AccountName", # required
    #       account_password: "AccountPassword", # required
    #     },
    #     certificate_based_auth_properties: {
    #       status: "DISABLED" # One of: ["DISABLED", "ENABLED", "ENABLED_NO_DIRECTORY_LOGIN_FALLBACK"],
    #       certificate_authority_arn: "Arn"
    #     }
    #   }
    #   options = {}
    #   response = client.create_directory_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     directory_config: {
    #       directory_name: "DirectoryName", # required
    #       organizational_unit_distinguished_names: ["OrganizationalUnitDistinguishedName"],
    #       service_account_credentials: {
    #         account_name: "AccountName", # required
    #         account_password: "AccountPassword", # required
    #       },
    #       created_time: Time.now,
    #       certificate_based_auth_properties: {
    #         status: "DISABLED" # One of: ["DISABLED", "ENABLED", "ENABLED_NO_DIRECTORY_LOGIN_FALLBACK"],
    #         certificate_authority_arn: "Arn"
    #       }
    #     }
    #   }
    # @return [Types::CreateDirectoryConfigResult]
    def create_directory_config(params = {}, options = {})
      request = build_request(:create_directory_config, params)
      request.send_request(options)
    end

    # <p>Creates a new entitlement. Entitlements control access to specific applications within
    #             a stack, based on user attributes. Entitlements apply to SAML 2.0 federated user
    #             identities. Amazon AppStream 2.0 user pool and streaming URL users are entitled to all
    #             applications in a stack. Entitlements don't apply to the desktop stream view
    #             application, or to applications managed by a dynamic app provider using the Dynamic
    #             Application Framework.</p>
    # @param [Hash, Types::CreateEntitlementRequest] params
    # @option params [String] :name
    #   <p>The name of the entitlement.</p>
    # @option params [String] :stack_name
    #   <p>The name of the stack with which the entitlement is associated.</p>
    # @option params [String] :description
    #   <p>The description of the entitlement.</p>
    # @option params [String] :app_visibility
    #   <p>Specifies whether all or selected apps are entitled.</p>
    # @option params [Array<Types::EntitlementAttribute>] :attributes
    #   <p>The attributes of the entitlement.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "Name", # required
    #     stack_name: "Name", # required
    #     description: "Description",
    #     app_visibility: "ALL" # One of: ["ALL", "ASSOCIATED"], # required
    #     attributes: [ # required
    #       {
    #         name: "String", # required
    #         value: "String", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_entitlement(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     entitlement: {
    #       name: "Name", # required
    #       stack_name: "Name", # required
    #       description: "Description",
    #       app_visibility: "ALL" # One of: ["ALL", "ASSOCIATED"], # required
    #       attributes: [ # required
    #         {
    #           name: "String", # required
    #           value: "String", # required
    #         }
    #       ],
    #       created_time: Time.now,
    #       last_modified_time: Time.now
    #     }
    #   }
    # @return [Types::CreateEntitlementResult]
    def create_entitlement(params = {}, options = {})
      request = build_request(:create_entitlement, params)
      request.send_request(options)
    end

    # <p>Creates a fleet. A fleet consists of streaming instances that your users access for their applications and desktops.</p>
    # @param [Hash, Types::CreateFleetRequest] params
    # @option params [String] :name
    #   <p>A unique name for the fleet.</p>
    # @option params [String] :image_name
    #   <p>The name of the image used to create the fleet.</p>
    # @option params [String] :image_arn
    #   <p>The ARN of the public, private, or shared image to use.</p>
    # @option params [String] :instance_type
    #   <p>The instance type to use when launching fleet instances. The following instance types are available:</p>
    #            <ul>
    #               <li>
    #                  <p>stream.standard.small</p>
    #               </li>
    #               <li>
    #                  <p>stream.standard.medium</p>
    #               </li>
    #               <li>
    #                  <p>stream.standard.large</p>
    #               </li>
    #               <li>
    #                  <p>stream.standard.xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.standard.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.compute.large</p>
    #               </li>
    #               <li>
    #                  <p>stream.compute.xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.compute.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.compute.4xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.compute.8xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.large</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.4xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.8xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.z1d.large</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.z1d.xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.z1d.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.z1d.3xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.z1d.6xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.z1d.12xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-design.large</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-design.xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-design.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-design.4xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-desktop.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g4dn.xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g4dn.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g4dn.4xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g4dn.8xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g4dn.12xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g4dn.16xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g5.xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g5.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g5.4xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g5.8xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g5.12xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g5.16xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g5.24xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-pro.4xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-pro.8xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-pro.16xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g6.xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g6.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g6.4xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g6.8xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g6.16xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g6.12xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g6.24xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.gr6.4xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.gr6.8xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g6f.large</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g6f.xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g6f.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g6f.4xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.gr6f.4xlarge</p>
    #               </li>
    #            </ul>
    #            <p>The following instance types are available for Elastic fleets:</p>
    #            <ul>
    #               <li>
    #                  <p>stream.standard.small</p>
    #               </li>
    #               <li>
    #                  <p>stream.standard.medium</p>
    #               </li>
    #               <li>
    #                  <p>stream.standard.large</p>
    #               </li>
    #               <li>
    #                  <p>stream.standard.xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.standard.2xlarge</p>
    #               </li>
    #            </ul>
    # @option params [String] :fleet_type
    #   <p>The fleet type.</p>
    #            <dl>
    #               <dt>ALWAYS_ON</dt>
    #               <dd>
    #                  <p>Provides users with instant-on access to their apps.
    #                           You are charged for all running instances in your fleet, even if no users are streaming apps.</p>
    #               </dd>
    #               <dt>ON_DEMAND</dt>
    #               <dd>
    #                  <p>Provide users with access to applications after they connect, which takes one to two minutes.
    #                           You are charged for instance streaming when users are connected and a
    #                           small hourly fee for instances that are not streaming apps.</p>
    #               </dd>
    #            </dl>
    # @option params [Types::ComputeCapacity] :compute_capacity
    #   <p>The desired capacity for the fleet. This is not allowed for Elastic fleets. For Elastic fleets, specify MaxConcurrentSessions instead.</p>
    # @option params [Types::VpcConfig] :vpc_config
    #   <p>The VPC configuration for the fleet. This is required for Elastic fleets, but not required for other fleet types. Elastic fleets require that you specify at least two subnets in different availability zones.</p>
    # @option params [Integer] :max_user_duration_in_seconds
    #   <p>The maximum amount of time that a streaming session can remain active, in seconds. If users are still connected to a streaming instance five minutes before this limit is reached, they are prompted to save any open documents before being disconnected. After this time elapses, the instance is terminated and replaced by a new instance.</p>
    #            <p>Specify a value between 600 and 432000.</p>
    # @option params [Integer] :disconnect_timeout_in_seconds
    #   <p>The amount of time that a streaming session remains active after users disconnect. If users try to reconnect to the streaming session after a disconnection or network interruption within this time interval, they are connected to their previous session. Otherwise, they are connected to a new session with a new streaming instance. </p>
    #            <p>Specify a value between 60 and 36000.</p>
    # @option params [String] :description
    #   <p>The description to display.</p>
    # @option params [String] :display_name
    #   <p>The fleet name to display.</p>
    # @option params [Boolean] :enable_default_internet_access
    #   <p>Enables or disables default internet access for the fleet.</p>
    # @option params [Types::DomainJoinInfo] :domain_join_info
    #   <p>The name of the directory and organizational unit (OU) to use to join the fleet to a Microsoft Active Directory domain. This is not allowed for Elastic fleets. </p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to associate with the fleet. A tag is a key-value pair, and the value is optional. For example, Environment=Test. If you do not specify a value, Environment=. </p>
    #            <p>If you do not specify a value, the value is set to an empty string.</p>
    #            <p>Generally allowed characters are: letters, numbers, and spaces representable in UTF-8, and the following special characters: </p>
    #            <p>_ . : / = + \ - @</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/appstream2/latest/developerguide/tagging-basic.html">Tagging Your Resources</a> in the <i>Amazon AppStream 2.0 Administration Guide</i>.</p>
    # @option params [Integer] :idle_disconnect_timeout_in_seconds
    #   <p>The amount of time that users can be idle (inactive) before they are disconnected
    #               from their streaming session and the <code>DisconnectTimeoutInSeconds</code> time
    #               interval begins. Users are notified before they are disconnected due to inactivity. If
    #               they try to reconnect to the streaming session before the time interval specified in
    #               <code>DisconnectTimeoutInSeconds</code> elapses, they are connected to their
    #               previous session. Users are considered idle when they stop providing keyboard or mouse
    #               input during their streaming session. File uploads and downloads, audio in, audio out,
    #               and pixels changing do not qualify as user activity. If users continue to be idle after
    #               the time interval in <code>IdleDisconnectTimeoutInSeconds</code> elapses, they are
    #               disconnected.</p>
    #            <p>To prevent users from being disconnected due to inactivity, specify a value of 0. Otherwise, specify a value between 60 and 36000. The default value is 0.</p>
    #            <note>
    #               <p>If you enable this feature, we recommend that you specify a value that corresponds exactly to a whole number of minutes (for example, 60, 120, and 180). If you don't do this, the value is rounded to the nearest minute. For example, if you specify a value of 70, users are disconnected after 1 minute of inactivity. If you specify a value that is at the midpoint between two different minutes, the value is rounded up. For example, if you specify a value of 90, users are disconnected after 2 minutes of inactivity. </p>
    #            </note>
    # @option params [String] :iam_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role to apply to the fleet. To assume a role, a fleet instance calls the AWS Security Token Service (STS) <code>AssumeRole</code> API operation and passes the ARN of the role to use. The operation creates a new session with temporary credentials. AppStream 2.0 retrieves the temporary credentials and creates the <b>appstream_machine_role</b> credential profile on the instance.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/appstream2/latest/developerguide/using-iam-roles-to-grant-permissions-to-applications-scripts-streaming-instances.html">Using an IAM Role to Grant Permissions to Applications and Scripts Running on AppStream 2.0 Streaming Instances</a> in the <i>Amazon AppStream 2.0 Administration Guide</i>.</p>
    # @option params [String] :stream_view
    #   <p>The AppStream 2.0 view that is displayed to your users when they stream from the fleet. When <code>APP</code> is specified, only the windows of applications opened by users display. When <code>DESKTOP</code> is specified, the standard desktop that is provided by the operating system displays.</p>
    #            <p>The default value is <code>APP</code>.</p>
    # @option params [String] :platform
    #   <p>The fleet platform. WINDOWS_SERVER_2019 and AMAZON_LINUX2 are supported for Elastic
    #               fleets. </p>
    # @option params [Integer] :max_concurrent_sessions
    #   <p>The maximum concurrent sessions of the Elastic fleet. This is required for Elastic
    #               fleets, and not allowed for other fleet types.</p>
    # @option params [Array<String>] :usb_device_filter_strings
    #   <p>The USB device filter strings that specify which USB devices a user can redirect to the fleet streaming session, when using the Windows native client. This is allowed but not required for Elastic fleets.</p>
    # @option params [Types::S3Location] :session_script_s3_location
    #   <p>The S3 location of the session scripts configuration zip file. This only applies to Elastic fleets.</p>
    # @option params [Integer] :max_sessions_per_instance
    #   <p>The maximum number of user sessions on an instance. This only applies to multi-session fleets.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "Name", # required
    #     image_name: "Name",
    #     image_arn: "Arn",
    #     instance_type: "String", # required
    #     fleet_type: "ALWAYS_ON" # One of: ["ALWAYS_ON", "ON_DEMAND", "ELASTIC"],
    #     compute_capacity: {
    #       desired_instances: 1,
    #       desired_sessions: 1
    #     },
    #     vpc_config: {
    #       subnet_ids: ["String"],
    #       security_group_ids: ["String"]
    #     },
    #     max_user_duration_in_seconds: 1,
    #     disconnect_timeout_in_seconds: 1,
    #     description: "Description",
    #     display_name: "DisplayName",
    #     enable_default_internet_access: false,
    #     domain_join_info: {
    #       directory_name: "DirectoryName",
    #       organizational_unit_distinguished_name: "OrganizationalUnitDistinguishedName"
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     idle_disconnect_timeout_in_seconds: 1,
    #     iam_role_arn: "Arn",
    #     stream_view: "APP" # One of: ["APP", "DESKTOP"],
    #     platform: "WINDOWS" # One of: ["WINDOWS", "WINDOWS_SERVER_2016", "WINDOWS_SERVER_2019", "WINDOWS_SERVER_2022", "AMAZON_LINUX2", "RHEL8", "ROCKY_LINUX8"],
    #     max_concurrent_sessions: 1,
    #     usb_device_filter_strings: ["UsbDeviceFilterString"],
    #     session_script_s3_location: {
    #       s3_bucket: "S3Bucket", # required
    #       s3_key: "S3Key"
    #     },
    #     max_sessions_per_instance: 1
    #   }
    #   options = {}
    #   response = client.create_fleet(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     fleet: {
    #       arn: "Arn", # required
    #       name: "String", # required
    #       display_name: "String",
    #       description: "String",
    #       image_name: "String",
    #       image_arn: "Arn",
    #       instance_type: "String", # required
    #       fleet_type: "ALWAYS_ON" # One of: ["ALWAYS_ON", "ON_DEMAND", "ELASTIC"],
    #       compute_capacity_status: { # required
    #         desired: 1, # required
    #         running: 1,
    #         in_use: 1,
    #         available: 1,
    #         desired_user_sessions: 1,
    #         available_user_sessions: 1,
    #         active_user_sessions: 1,
    #         actual_user_sessions: 1
    #       },
    #       max_user_duration_in_seconds: 1,
    #       disconnect_timeout_in_seconds: 1,
    #       state: "STARTING" # One of: ["STARTING", "RUNNING", "STOPPING", "STOPPED"], # required
    #       vpc_config: {
    #         subnet_ids: ["String"],
    #         security_group_ids: ["String"]
    #       },
    #       created_time: Time.now,
    #       fleet_errors: [
    #         {
    #           error_code: "IAM_SERVICE_ROLE_MISSING_ENI_DESCRIBE_ACTION" # One of: ["IAM_SERVICE_ROLE_MISSING_ENI_DESCRIBE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_CREATE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_DELETE_ACTION", "NETWORK_INTERFACE_LIMIT_EXCEEDED", "INTERNAL_SERVICE_ERROR", "IAM_SERVICE_ROLE_IS_MISSING", "MACHINE_ROLE_IS_MISSING", "STS_DISABLED_IN_REGION", "SUBNET_HAS_INSUFFICIENT_IP_ADDRESSES", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SUBNET_ACTION", "SUBNET_NOT_FOUND", "IMAGE_NOT_FOUND", "INVALID_SUBNET_CONFIGURATION", "SECURITY_GROUPS_NOT_FOUND", "IGW_NOT_ATTACHED", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SECURITY_GROUPS_ACTION", "FLEET_STOPPED", "FLEET_INSTANCE_PROVISIONING_FAILURE", "DOMAIN_JOIN_ERROR_FILE_NOT_FOUND", "DOMAIN_JOIN_ERROR_ACCESS_DENIED", "DOMAIN_JOIN_ERROR_LOGON_FAILURE", "DOMAIN_JOIN_ERROR_INVALID_PARAMETER", "DOMAIN_JOIN_ERROR_MORE_DATA", "DOMAIN_JOIN_ERROR_NO_SUCH_DOMAIN", "DOMAIN_JOIN_ERROR_NOT_SUPPORTED", "DOMAIN_JOIN_NERR_INVALID_WORKGROUP_NAME", "DOMAIN_JOIN_NERR_WORKSTATION_NOT_STARTED", "DOMAIN_JOIN_ERROR_DS_MACHINE_ACCOUNT_QUOTA_EXCEEDED", "DOMAIN_JOIN_NERR_PASSWORD_EXPIRED", "DOMAIN_JOIN_INTERNAL_SERVICE_ERROR"],
    #           error_message: "String"
    #         }
    #       ],
    #       enable_default_internet_access: false,
    #       domain_join_info: {
    #         directory_name: "DirectoryName",
    #         organizational_unit_distinguished_name: "OrganizationalUnitDistinguishedName"
    #       },
    #       idle_disconnect_timeout_in_seconds: 1,
    #       iam_role_arn: "Arn",
    #       stream_view: "APP" # One of: ["APP", "DESKTOP"],
    #       platform: "WINDOWS" # One of: ["WINDOWS", "WINDOWS_SERVER_2016", "WINDOWS_SERVER_2019", "WINDOWS_SERVER_2022", "AMAZON_LINUX2", "RHEL8", "ROCKY_LINUX8"],
    #       max_concurrent_sessions: 1,
    #       usb_device_filter_strings: ["UsbDeviceFilterString"],
    #       session_script_s3_location: {
    #         s3_bucket: "S3Bucket", # required
    #         s3_key: "S3Key"
    #       },
    #       max_sessions_per_instance: 1
    #     }
    #   }
    # @return [Types::CreateFleetResult]
    def create_fleet(params = {}, options = {})
      request = build_request(:create_fleet, params)
      request.send_request(options)
    end

    # <p>Creates an image builder. An image builder is a virtual machine that is used to create an image.</p>
    #          <p>The initial state of the builder is <code>PENDING</code>. When it is ready, the state is <code>RUNNING</code>.</p>
    # @param [Hash, Types::CreateImageBuilderRequest] params
    # @option params [String] :name
    #   <p>A unique name for the image builder.</p>
    # @option params [String] :image_name
    #   <p>The name of the image used to create the image builder.</p>
    # @option params [String] :image_arn
    #   <p>The ARN of the public, private, or shared image to use.</p>
    # @option params [String] :instance_type
    #   <p>The instance type to use when launching the image builder. The following instance types are available:</p>
    #            <ul>
    #               <li>
    #                  <p>stream.standard.small</p>
    #               </li>
    #               <li>
    #                  <p>stream.standard.medium</p>
    #               </li>
    #               <li>
    #                  <p>stream.standard.large</p>
    #               </li>
    #               <li>
    #                  <p>stream.compute.large</p>
    #               </li>
    #               <li>
    #                  <p>stream.compute.xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.compute.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.compute.4xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.compute.8xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.large</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.4xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.8xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.z1d.large</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.z1d.xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.z1d.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.z1d.3xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.z1d.6xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.z1d.12xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-design.large</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-design.xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-design.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-design.4xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-desktop.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g4dn.xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g4dn.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g4dn.4xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g4dn.8xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g4dn.12xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g4dn.16xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-pro.4xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-pro.8xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-pro.16xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g5.xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g5.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g5.4xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g5.8xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g5.16xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g5.12xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g5.24xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g6.xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g6.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g6.4xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g6.8xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g6.16xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g6.12xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g6.24xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.gr6.4xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.gr6.8xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g6f.large</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g6f.xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g6f.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g6f.4xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.gr6f.4xlarge</p>
    #               </li>
    #            </ul>
    # @option params [String] :description
    #   <p>The description to display.</p>
    # @option params [String] :display_name
    #   <p>The image builder name to display.</p>
    # @option params [Types::VpcConfig] :vpc_config
    #   <p>The VPC configuration for the image builder. You can specify only one subnet.</p>
    # @option params [String] :iam_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role to apply to the image builder. To assume a role, the image builder calls the AWS Security Token Service (STS) <code>AssumeRole</code> API operation and passes the ARN of the role to use. The operation creates a new session with temporary credentials. AppStream 2.0 retrieves the temporary credentials and creates the <b>appstream_machine_role</b> credential profile on the instance.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/appstream2/latest/developerguide/using-iam-roles-to-grant-permissions-to-applications-scripts-streaming-instances.html">Using an IAM Role to Grant Permissions to Applications and Scripts Running on AppStream 2.0 Streaming Instances</a> in the <i>Amazon AppStream 2.0 Administration Guide</i>.</p>
    # @option params [Boolean] :enable_default_internet_access
    #   <p>Enables or disables default internet access for the image builder.</p>
    # @option params [Types::DomainJoinInfo] :domain_join_info
    #   <p>The name of the directory and organizational unit (OU) to use to join the image builder to a Microsoft Active Directory domain. </p>
    # @option params [String] :appstream_agent_version
    #   <p>The version of the AppStream 2.0 agent to use for this image builder. To use the latest version of the AppStream 2.0 agent, specify [LATEST]. </p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to associate with the image builder. A tag is a key-value pair, and the value is optional. For example, Environment=Test. If you do not specify a value, Environment=. </p>
    #            <p>Generally allowed characters are: letters, numbers, and spaces representable in UTF-8, and the following special characters: </p>
    #            <p>_ . : / = + \ - @</p>
    #            <p>If you do not specify a value, the value is set to an empty string.</p>
    #            <p>For more information about tags, see <a href="https://docs.aws.amazon.com/appstream2/latest/developerguide/tagging-basic.html">Tagging Your Resources</a> in the <i>Amazon AppStream 2.0 Administration Guide</i>.</p>
    # @option params [Array<Types::AccessEndpoint>] :access_endpoints
    #   <p>The list of interface VPC endpoint (interface endpoint) objects. Administrators can connect to the image builder only through the specified endpoints.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "Name", # required
    #     image_name: "String",
    #     image_arn: "Arn",
    #     instance_type: "String", # required
    #     description: "Description",
    #     display_name: "DisplayName",
    #     vpc_config: {
    #       subnet_ids: ["String"],
    #       security_group_ids: ["String"]
    #     },
    #     iam_role_arn: "Arn",
    #     enable_default_internet_access: false,
    #     domain_join_info: {
    #       directory_name: "DirectoryName",
    #       organizational_unit_distinguished_name: "OrganizationalUnitDistinguishedName"
    #     },
    #     appstream_agent_version: "AppstreamAgentVersion",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     access_endpoints: [
    #       {
    #         endpoint_type: "STREAMING" # One of: ["STREAMING"], # required
    #         vpce_id: "String"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_image_builder(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     image_builder: {
    #       name: "String", # required
    #       arn: "Arn",
    #       image_arn: "Arn",
    #       description: "String",
    #       display_name: "String",
    #       vpc_config: {
    #         subnet_ids: ["String"],
    #         security_group_ids: ["String"]
    #       },
    #       instance_type: "String",
    #       platform: "WINDOWS" # One of: ["WINDOWS", "WINDOWS_SERVER_2016", "WINDOWS_SERVER_2019", "WINDOWS_SERVER_2022", "AMAZON_LINUX2", "RHEL8", "ROCKY_LINUX8"],
    #       iam_role_arn: "Arn",
    #       state: "PENDING" # One of: ["PENDING", "UPDATING_AGENT", "RUNNING", "STOPPING", "STOPPED", "REBOOTING", "SNAPSHOTTING", "DELETING", "FAILED", "UPDATING", "PENDING_QUALIFICATION"],
    #       state_change_reason: {
    #         code: "INTERNAL_ERROR" # One of: ["INTERNAL_ERROR", "IMAGE_UNAVAILABLE"],
    #         message: "String"
    #       },
    #       created_time: Time.now,
    #       enable_default_internet_access: false,
    #       domain_join_info: {
    #         directory_name: "DirectoryName",
    #         organizational_unit_distinguished_name: "OrganizationalUnitDistinguishedName"
    #       },
    #       network_access_configuration: {
    #         eni_private_ip_address: "String",
    #         eni_id: "String"
    #       },
    #       image_builder_errors: [
    #         {
    #           error_code: "IAM_SERVICE_ROLE_MISSING_ENI_DESCRIBE_ACTION" # One of: ["IAM_SERVICE_ROLE_MISSING_ENI_DESCRIBE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_CREATE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_DELETE_ACTION", "NETWORK_INTERFACE_LIMIT_EXCEEDED", "INTERNAL_SERVICE_ERROR", "IAM_SERVICE_ROLE_IS_MISSING", "MACHINE_ROLE_IS_MISSING", "STS_DISABLED_IN_REGION", "SUBNET_HAS_INSUFFICIENT_IP_ADDRESSES", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SUBNET_ACTION", "SUBNET_NOT_FOUND", "IMAGE_NOT_FOUND", "INVALID_SUBNET_CONFIGURATION", "SECURITY_GROUPS_NOT_FOUND", "IGW_NOT_ATTACHED", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SECURITY_GROUPS_ACTION", "FLEET_STOPPED", "FLEET_INSTANCE_PROVISIONING_FAILURE", "DOMAIN_JOIN_ERROR_FILE_NOT_FOUND", "DOMAIN_JOIN_ERROR_ACCESS_DENIED", "DOMAIN_JOIN_ERROR_LOGON_FAILURE", "DOMAIN_JOIN_ERROR_INVALID_PARAMETER", "DOMAIN_JOIN_ERROR_MORE_DATA", "DOMAIN_JOIN_ERROR_NO_SUCH_DOMAIN", "DOMAIN_JOIN_ERROR_NOT_SUPPORTED", "DOMAIN_JOIN_NERR_INVALID_WORKGROUP_NAME", "DOMAIN_JOIN_NERR_WORKSTATION_NOT_STARTED", "DOMAIN_JOIN_ERROR_DS_MACHINE_ACCOUNT_QUOTA_EXCEEDED", "DOMAIN_JOIN_NERR_PASSWORD_EXPIRED", "DOMAIN_JOIN_INTERNAL_SERVICE_ERROR"],
    #           error_message: "String",
    #           error_timestamp: Time.now
    #         }
    #       ],
    #       appstream_agent_version: "AppstreamAgentVersion",
    #       access_endpoints: [
    #         {
    #           endpoint_type: "STREAMING" # One of: ["STREAMING"], # required
    #           vpce_id: "String"
    #         }
    #       ],
    #       latest_appstream_agent_version: "TRUE" # One of: ["TRUE", "FALSE"]
    #     }
    #   }
    # @return [Types::CreateImageBuilderResult]
    def create_image_builder(params = {}, options = {})
      request = build_request(:create_image_builder, params)
      request.send_request(options)
    end

    # <p>Creates a URL to start an image builder streaming session.</p>
    # @param [Hash, Types::CreateImageBuilderStreamingURLRequest] params
    # @option params [String] :name
    #   <p>The name of the image builder.</p>
    # @option params [Integer] :validity
    #   <p>The time that the streaming URL will be valid, in seconds. 
    #               Specify a value between 1 and 604800 seconds. The default is 3600 seconds.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "String", # required
    #     validity: 1
    #   }
    #   options = {}
    #   response = client.create_image_builder_streaming_url(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     streaming_url: "String",
    #     expires: Time.now
    #   }
    # @return [Types::CreateImageBuilderStreamingURLResult]
    def create_image_builder_streaming_url(params = {}, options = {})
      request = build_request(:create_image_builder_streaming_url, params)
      request.send_request(options)
    end

    # <p>Creates a stack to start streaming applications to users. A stack consists of an associated fleet, user access policies, and storage configurations. </p>
    # @param [Hash, Types::CreateStackRequest] params
    # @option params [String] :name
    #   <p>The name of the stack.</p>
    # @option params [String] :description
    #   <p>The description to display.</p>
    # @option params [String] :display_name
    #   <p>The stack name to display.</p>
    # @option params [Array<Types::StorageConnector>] :storage_connectors
    #   <p>The storage connectors to enable.</p>
    # @option params [String] :redirect_url
    #   <p>The URL that users are redirected to after their streaming session ends.</p>
    # @option params [String] :feedback_url
    #   <p>The URL that users are redirected to after they click the Send Feedback link. If no URL is specified, no Send Feedback link is displayed.</p>
    # @option params [Array<Types::UserSetting>] :user_settings
    #   <p>The actions that are enabled or disabled for users during their streaming sessions. By default, these actions are enabled. </p>
    # @option params [Types::ApplicationSettings] :application_settings
    #   <p>The persistent application settings for users of a stack. When these settings are enabled, changes that users make to applications and Windows settings are automatically saved after each session and applied to the next session.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to associate with the stack. A tag is a key-value pair, and the value is optional. For example, Environment=Test. If you do not specify a value, Environment=. </p>
    #            <p>If you do not specify a value, the value is set to an empty string.</p>
    #            <p>Generally allowed characters are: letters, numbers, and spaces representable in UTF-8, and the following special characters: </p>
    #            <p>_ . : / = + \ - @</p>
    #            <p>For more information about tags, see <a href="https://docs.aws.amazon.com/appstream2/latest/developerguide/tagging-basic.html">Tagging Your Resources</a> in the <i>Amazon AppStream 2.0 Administration Guide</i>.</p>
    # @option params [Array<Types::AccessEndpoint>] :access_endpoints
    #   <p>The list of interface VPC endpoint (interface endpoint) objects. Users of the stack can connect to AppStream 2.0 only through the specified endpoints.</p>
    # @option params [Array<String>] :embed_host_domains
    #   <p>The domains where AppStream 2.0 streaming sessions can be embedded in an iframe. You must approve the domains that you want to host embedded AppStream 2.0 streaming sessions. </p>
    # @option params [Types::StreamingExperienceSettings] :streaming_experience_settings
    #   <p>The streaming protocol you want your stack to prefer. This can be UDP or TCP. Currently, UDP is only supported in the Windows native client.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "Name", # required
    #     description: "Description",
    #     display_name: "DisplayName",
    #     storage_connectors: [
    #       {
    #         connector_type: "HOMEFOLDERS" # One of: ["HOMEFOLDERS", "GOOGLE_DRIVE", "ONE_DRIVE"], # required
    #         resource_identifier: "ResourceIdentifier",
    #         domains: ["Domain"],
    #         domains_require_admin_consent: ["Domain"]
    #       }
    #     ],
    #     redirect_url: "RedirectURL",
    #     feedback_url: "FeedbackURL",
    #     user_settings: [
    #       {
    #         action: "CLIPBOARD_COPY_FROM_LOCAL_DEVICE" # One of: ["CLIPBOARD_COPY_FROM_LOCAL_DEVICE", "CLIPBOARD_COPY_TO_LOCAL_DEVICE", "FILE_UPLOAD", "FILE_DOWNLOAD", "PRINTING_TO_LOCAL_DEVICE", "DOMAIN_PASSWORD_SIGNIN", "DOMAIN_SMART_CARD_SIGNIN", "AUTO_TIME_ZONE_REDIRECTION"], # required
    #         permission: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #         maximum_length: 1
    #       }
    #     ],
    #     application_settings: {
    #       enabled: false, # required
    #       settings_group: "SettingsGroup"
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     access_endpoints: [
    #       {
    #         endpoint_type: "STREAMING" # One of: ["STREAMING"], # required
    #         vpce_id: "String"
    #       }
    #     ],
    #     embed_host_domains: ["EmbedHostDomain"],
    #     streaming_experience_settings: {
    #       preferred_protocol: "TCP" # One of: ["TCP", "UDP"]
    #     }
    #   }
    #   options = {}
    #   response = client.create_stack(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     stack: {
    #       arn: "Arn",
    #       name: "String", # required
    #       description: "String",
    #       display_name: "String",
    #       created_time: Time.now,
    #       storage_connectors: [
    #         {
    #           connector_type: "HOMEFOLDERS" # One of: ["HOMEFOLDERS", "GOOGLE_DRIVE", "ONE_DRIVE"], # required
    #           resource_identifier: "ResourceIdentifier",
    #           domains: ["Domain"],
    #           domains_require_admin_consent: ["Domain"]
    #         }
    #       ],
    #       redirect_url: "RedirectURL",
    #       feedback_url: "FeedbackURL",
    #       stack_errors: [
    #         {
    #           error_code: "STORAGE_CONNECTOR_ERROR" # One of: ["STORAGE_CONNECTOR_ERROR", "INTERNAL_SERVICE_ERROR"],
    #           error_message: "String"
    #         }
    #       ],
    #       user_settings: [
    #         {
    #           action: "CLIPBOARD_COPY_FROM_LOCAL_DEVICE" # One of: ["CLIPBOARD_COPY_FROM_LOCAL_DEVICE", "CLIPBOARD_COPY_TO_LOCAL_DEVICE", "FILE_UPLOAD", "FILE_DOWNLOAD", "PRINTING_TO_LOCAL_DEVICE", "DOMAIN_PASSWORD_SIGNIN", "DOMAIN_SMART_CARD_SIGNIN", "AUTO_TIME_ZONE_REDIRECTION"], # required
    #           permission: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #           maximum_length: 1
    #         }
    #       ],
    #       application_settings: {
    #         enabled: false,
    #         settings_group: "SettingsGroup",
    #         s3_bucket_name: "String"
    #       },
    #       access_endpoints: [
    #         {
    #           endpoint_type: "STREAMING" # One of: ["STREAMING"], # required
    #           vpce_id: "String"
    #         }
    #       ],
    #       embed_host_domains: ["EmbedHostDomain"],
    #       streaming_experience_settings: {
    #         preferred_protocol: "TCP" # One of: ["TCP", "UDP"]
    #       }
    #     }
    #   }
    # @return [Types::CreateStackResult]
    def create_stack(params = {}, options = {})
      request = build_request(:create_stack, params)
      request.send_request(options)
    end

    # <p>Creates a temporary URL to start an AppStream 2.0 streaming session for the specified user. A streaming URL enables application streaming to be tested without user setup. </p>
    # @param [Hash, Types::CreateStreamingURLRequest] params
    # @option params [String] :stack_name
    #   <p>The name of the stack.</p>
    # @option params [String] :fleet_name
    #   <p>The name of the fleet.</p>
    # @option params [String] :user_id
    #   <p>The identifier of the user.</p>
    # @option params [String] :application_id
    #   <p>The name of the application to launch after the session starts. This is the name that you specified
    #               as <b>Name</b> in the Image Assistant. If your fleet is enabled for the <b>Desktop</b> stream view, you can also choose to launch directly to the operating system desktop. To do so, specify <b>Desktop</b>.</p>
    # @option params [Integer] :validity
    #   <p>The time that the streaming URL will be valid, in seconds.
    #               Specify a value between 1 and 604800 seconds. The default is 60 seconds.</p>
    # @option params [String] :session_context
    #   <p>The session context. For more information, see <a href="https://docs.aws.amazon.com/appstream2/latest/developerguide/managing-stacks-fleets.html#managing-stacks-fleets-parameters">Session Context</a> in the <i>Amazon AppStream 2.0 Administration Guide</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     stack_name: "String", # required
    #     fleet_name: "String", # required
    #     user_id: "StreamingUrlUserId", # required
    #     application_id: "String",
    #     validity: 1,
    #     session_context: "String"
    #   }
    #   options = {}
    #   response = client.create_streaming_url(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     streaming_url: "String",
    #     expires: Time.now
    #   }
    # @return [Types::CreateStreamingURLResult]
    def create_streaming_url(params = {}, options = {})
      request = build_request(:create_streaming_url, params)
      request.send_request(options)
    end

    # <p>Creates custom branding that customizes the appearance of the streaming application catalog page.</p>
    # @param [Hash, Types::CreateThemeForStackRequest] params
    # @option params [String] :stack_name
    #   <p>The name of the stack for the theme.</p>
    # @option params [Array<Types::ThemeFooterLink>] :footer_links
    #   <p>The links that are displayed in the footer of the streaming application catalog page. These links are helpful resources for users, such as the organization's IT support and product marketing sites.</p>
    # @option params [String] :title_text
    #   <p>The title that is displayed at the top of the browser tab during users' application streaming sessions.</p>
    # @option params [String] :theme_styling
    #   <p>The color theme that is applied to website links, text, and buttons. These colors are also applied as accents in the background for the streaming application catalog page.</p>
    # @option params [Types::S3Location] :organization_logo_s3_location
    #   <p>The organization logo that appears on the streaming application catalog page.</p>
    # @option params [Types::S3Location] :favicon_s3_location
    #   <p>The S3 location of the favicon. The favicon enables users to recognize their application streaming site in a browser full of tabs or bookmarks. It is displayed at the top of the browser tab for the application streaming site during users' streaming sessions.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     stack_name: "Name", # required
    #     footer_links: [
    #       {
    #         display_name: "ThemeFooterLinkDisplayName",
    #         footer_link_url: "ThemeFooterLinkURL"
    #       }
    #     ],
    #     title_text: "ThemeTitleText", # required
    #     theme_styling: "LIGHT_BLUE" # One of: ["LIGHT_BLUE", "BLUE", "PINK", "RED"], # required
    #     organization_logo_s3_location: { # required
    #       s3_bucket: "S3Bucket", # required
    #       s3_key: "S3Key"
    #     },
    #     favicon_s3_location: { # required
    #       s3_bucket: "S3Bucket", # required
    #       s3_key: "S3Key"
    #     }
    #   }
    #   options = {}
    #   response = client.create_theme_for_stack(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     theme: {
    #       stack_name: "Name",
    #       state: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #       theme_title_text: "ThemeTitleText",
    #       theme_styling: "LIGHT_BLUE" # One of: ["LIGHT_BLUE", "BLUE", "PINK", "RED"],
    #       theme_footer_links: [
    #         {
    #           display_name: "ThemeFooterLinkDisplayName",
    #           footer_link_url: "ThemeFooterLinkURL"
    #         }
    #       ],
    #       theme_organization_logo_url: "String",
    #       theme_favicon_url: "String",
    #       created_time: Time.now
    #     }
    #   }
    # @return [Types::CreateThemeForStackResult]
    def create_theme_for_stack(params = {}, options = {})
      request = build_request(:create_theme_for_stack, params)
      request.send_request(options)
    end

    # <p>Creates a new image with the latest Windows operating system updates, driver updates, and AppStream 2.0 agent software.</p>
    #          <p>For more information, see the "Update an Image by Using
    #             Managed AppStream 2.0 Image Updates" section in <a href="https://docs.aws.amazon.com/appstream2/latest/developerguide/administer-images.html">Administer Your AppStream 2.0 Images</a>, in the <i>Amazon AppStream 2.0 Administration Guide</i>.</p>
    # @param [Hash, Types::CreateUpdatedImageRequest] params
    # @option params [String] :existing_image_name
    #   <p>The name of the image to update.</p>
    # @option params [String] :new_image_name
    #   <p>The name of the new image. The name must be unique within the AWS account and Region.</p>
    # @option params [String] :new_image_description
    #   <p>The description to display for the new image.</p>
    # @option params [String] :new_image_display_name
    #   <p>The name to display for the new image.</p>
    # @option params [Hash<String, String>] :new_image_tags
    #   <p>The tags to associate with the new image. A tag is a key-value pair, and the value is optional. For example, Environment=Test. If you do not specify a value, Environment=. </p>
    #            <p>Generally allowed characters are: letters, numbers, and spaces representable in UTF-8, and the following special characters: </p>
    #            <p>_ . : / = + \ - @</p>
    #            <p>If you do not specify a value, the value is set to an empty string.</p>
    #            <p>For more information about tags, see <a href="https://docs.aws.amazon.com/appstream2/latest/developerguide/tagging-basic.html">Tagging Your Resources</a> in the <i>Amazon AppStream 2.0 Administration Guide</i>.</p>
    # @option params [Boolean] :dry_run
    #   <p>Indicates whether to display the status of image update availability before AppStream 2.0 initiates the process of creating a new updated image. If this value is set to <code>true</code>, AppStream 2.0 displays whether image updates are available. If this value is set to <code>false</code>, AppStream 2.0 initiates the process of creating a new updated image without displaying whether image updates are available.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     existing_image_name: "Name", # required
    #     new_image_name: "Name", # required
    #     new_image_description: "Description",
    #     new_image_display_name: "DisplayName",
    #     new_image_tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     dry_run: false
    #   }
    #   options = {}
    #   response = client.create_updated_image(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     image: {
    #       name: "String", # required
    #       arn: "Arn",
    #       base_image_arn: "Arn",
    #       display_name: "String",
    #       state: "PENDING" # One of: ["PENDING", "AVAILABLE", "FAILED", "COPYING", "DELETING", "CREATING", "IMPORTING"],
    #       visibility: "PUBLIC" # One of: ["PUBLIC", "PRIVATE", "SHARED"],
    #       image_builder_supported: false,
    #       image_builder_name: "String",
    #       platform: "WINDOWS" # One of: ["WINDOWS", "WINDOWS_SERVER_2016", "WINDOWS_SERVER_2019", "WINDOWS_SERVER_2022", "AMAZON_LINUX2", "RHEL8", "ROCKY_LINUX8"],
    #       description: "String",
    #       state_change_reason: {
    #         code: "INTERNAL_ERROR" # One of: ["INTERNAL_ERROR", "IMAGE_BUILDER_NOT_AVAILABLE", "IMAGE_COPY_FAILURE"],
    #         message: "String"
    #       },
    #       applications: [
    #         {
    #           name: "String",
    #           display_name: "String",
    #           icon_url: "String",
    #           launch_path: "String",
    #           launch_parameters: "String",
    #           enabled: false,
    #           metadata: {
    #             "String" => "String"
    #           },
    #           working_directory: "String",
    #           description: "String",
    #           arn: "Arn",
    #           app_block_arn: "Arn",
    #           icon_s3_location: {
    #             s3_bucket: "S3Bucket", # required
    #             s3_key: "S3Key"
    #           },
    #           platforms: ["WINDOWS" # One of: ["WINDOWS", "WINDOWS_SERVER_2016", "WINDOWS_SERVER_2019", "WINDOWS_SERVER_2022", "AMAZON_LINUX2", "RHEL8", "ROCKY_LINUX8"]],
    #           instance_families: ["String"],
    #           created_time: Time.now
    #         }
    #       ],
    #       created_time: Time.now,
    #       public_base_image_released_date: Time.now,
    #       appstream_agent_version: "AppstreamAgentVersion",
    #       image_permissions: {
    #         allow_fleet: false,
    #         allow_image_builder: false
    #       },
    #       image_errors: [
    #         {
    #           error_code: "IAM_SERVICE_ROLE_MISSING_ENI_DESCRIBE_ACTION" # One of: ["IAM_SERVICE_ROLE_MISSING_ENI_DESCRIBE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_CREATE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_DELETE_ACTION", "NETWORK_INTERFACE_LIMIT_EXCEEDED", "INTERNAL_SERVICE_ERROR", "IAM_SERVICE_ROLE_IS_MISSING", "MACHINE_ROLE_IS_MISSING", "STS_DISABLED_IN_REGION", "SUBNET_HAS_INSUFFICIENT_IP_ADDRESSES", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SUBNET_ACTION", "SUBNET_NOT_FOUND", "IMAGE_NOT_FOUND", "INVALID_SUBNET_CONFIGURATION", "SECURITY_GROUPS_NOT_FOUND", "IGW_NOT_ATTACHED", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SECURITY_GROUPS_ACTION", "FLEET_STOPPED", "FLEET_INSTANCE_PROVISIONING_FAILURE", "DOMAIN_JOIN_ERROR_FILE_NOT_FOUND", "DOMAIN_JOIN_ERROR_ACCESS_DENIED", "DOMAIN_JOIN_ERROR_LOGON_FAILURE", "DOMAIN_JOIN_ERROR_INVALID_PARAMETER", "DOMAIN_JOIN_ERROR_MORE_DATA", "DOMAIN_JOIN_ERROR_NO_SUCH_DOMAIN", "DOMAIN_JOIN_ERROR_NOT_SUPPORTED", "DOMAIN_JOIN_NERR_INVALID_WORKGROUP_NAME", "DOMAIN_JOIN_NERR_WORKSTATION_NOT_STARTED", "DOMAIN_JOIN_ERROR_DS_MACHINE_ACCOUNT_QUOTA_EXCEEDED", "DOMAIN_JOIN_NERR_PASSWORD_EXPIRED", "DOMAIN_JOIN_INTERNAL_SERVICE_ERROR"],
    #           error_message: "String",
    #           error_timestamp: Time.now
    #         }
    #       ],
    #       latest_appstream_agent_version: "TRUE" # One of: ["TRUE", "FALSE"],
    #       supported_instance_families: ["String"],
    #       dynamic_app_providers_enabled: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #       image_shared_with_others: "TRUE" # One of: ["TRUE", "FALSE"]
    #     },
    #     can_update_image: false
    #   }
    # @return [Types::CreateUpdatedImageResult]
    def create_updated_image(params = {}, options = {})
      request = build_request(:create_updated_image, params)
      request.send_request(options)
    end

    # <p>Creates a usage report subscription. Usage reports are generated daily.</p>
    # @param [Hash, Types::CreateUsageReportSubscriptionRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.create_usage_report_subscription(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     s3_bucket_name: "String",
    #     schedule: "DAILY" # One of: ["DAILY"]
    #   }
    # @return [Types::CreateUsageReportSubscriptionResult]
    def create_usage_report_subscription(params = {}, options = {})
      request = build_request(:create_usage_report_subscription, params)
      request.send_request(options)
    end

    # <p>Creates a new user in the user pool.</p>
    # @param [Hash, Types::CreateUserRequest] params
    # @option params [String] :user_name
    #   <p>The email address of the user.</p>
    #            <note>
    #               <p>Users' email addresses are case-sensitive. During login, if they specify an email address that doesn't use the same capitalization as the email address specified when their user pool account was created, a "user does not exist" error message displays.</p>
    #            </note>
    # @option params [String] :message_action
    #   <p>The action to take for the welcome email that is sent to a user after the user is created in the user pool. If you specify SUPPRESS, no email is sent. If you specify RESEND, do not specify the first name or last name of the user. If the value is null, the email is sent. </p>
    #            <note>
    #               <p>The temporary password in the welcome email is valid for only 7 days. If users don’t set their passwords within 7 days, you must send them a new welcome email.</p>
    #            </note>
    # @option params [String] :first_name
    #   <p>The first name, or given name, of the user.</p>
    # @option params [String] :last_name
    #   <p>The last name, or surname, of the user.</p>
    # @option params [String] :authentication_type
    #   <p>The authentication type for the user. You must specify USERPOOL. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_name: "Username", # required
    #     message_action: "SUPPRESS" # One of: ["SUPPRESS", "RESEND"],
    #     first_name: "UserAttributeValue",
    #     last_name: "UserAttributeValue",
    #     authentication_type: "API" # One of: ["API", "SAML", "USERPOOL", "AWS_AD"], # required
    #   }
    #   options = {}
    #   response = client.create_user(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::CreateUserResult]
    def create_user(params = {}, options = {})
      request = build_request(:create_user, params)
      request.send_request(options)
    end

    # <p>Deletes an app block.</p>
    # @param [Hash, Types::DeleteAppBlockRequest] params
    # @option params [String] :name
    #   <p>The name of the app block.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "Name", # required
    #   }
    #   options = {}
    #   response = client.delete_app_block(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteAppBlockResult]
    def delete_app_block(params = {}, options = {})
      request = build_request(:delete_app_block, params)
      request.send_request(options)
    end

    # <p>Deletes an app block builder.</p>
    #          <p>An app block builder can only be deleted when it has no association with an app
    #             block.</p>
    # @param [Hash, Types::DeleteAppBlockBuilderRequest] params
    # @option params [String] :name
    #   <p>The name of the app block builder.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "Name", # required
    #   }
    #   options = {}
    #   response = client.delete_app_block_builder(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteAppBlockBuilderResult]
    def delete_app_block_builder(params = {}, options = {})
      request = build_request(:delete_app_block_builder, params)
      request.send_request(options)
    end

    # <p>Deletes an application.</p>
    # @param [Hash, Types::DeleteApplicationRequest] params
    # @option params [String] :name
    #   <p>The name of the application.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "Name", # required
    #   }
    #   options = {}
    #   response = client.delete_application(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteApplicationResult]
    def delete_application(params = {}, options = {})
      request = build_request(:delete_application, params)
      request.send_request(options)
    end

    # <p>Deletes the specified Directory Config object from AppStream 2.0. This object includes the information required to join streaming instances to an Active Directory domain.</p>
    # @param [Hash, Types::DeleteDirectoryConfigRequest] params
    # @option params [String] :directory_name
    #   <p>The name of the directory configuration.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_name: "DirectoryName", # required
    #   }
    #   options = {}
    #   response = client.delete_directory_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteDirectoryConfigResult]
    def delete_directory_config(params = {}, options = {})
      request = build_request(:delete_directory_config, params)
      request.send_request(options)
    end

    # <p>Deletes the specified entitlement.</p>
    # @param [Hash, Types::DeleteEntitlementRequest] params
    # @option params [String] :name
    #   <p>The name of the entitlement.</p>
    # @option params [String] :stack_name
    #   <p>The name of the stack with which the entitlement is associated.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "Name", # required
    #     stack_name: "Name", # required
    #   }
    #   options = {}
    #   response = client.delete_entitlement(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteEntitlementResult]
    def delete_entitlement(params = {}, options = {})
      request = build_request(:delete_entitlement, params)
      request.send_request(options)
    end

    # <p>Deletes the specified fleet.</p>
    # @param [Hash, Types::DeleteFleetRequest] params
    # @option params [String] :name
    #   <p>The name of the fleet.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "String", # required
    #   }
    #   options = {}
    #   response = client.delete_fleet(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteFleetResult]
    def delete_fleet(params = {}, options = {})
      request = build_request(:delete_fleet, params)
      request.send_request(options)
    end

    # <p>Deletes the specified image. You cannot delete an image when it is in use.  
    #             After you delete an image, you cannot provision new capacity using the image.</p>
    # @param [Hash, Types::DeleteImageRequest] params
    # @option params [String] :name
    #   <p>The name of the image.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "Name", # required
    #   }
    #   options = {}
    #   response = client.delete_image(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     image: {
    #       name: "String", # required
    #       arn: "Arn",
    #       base_image_arn: "Arn",
    #       display_name: "String",
    #       state: "PENDING" # One of: ["PENDING", "AVAILABLE", "FAILED", "COPYING", "DELETING", "CREATING", "IMPORTING"],
    #       visibility: "PUBLIC" # One of: ["PUBLIC", "PRIVATE", "SHARED"],
    #       image_builder_supported: false,
    #       image_builder_name: "String",
    #       platform: "WINDOWS" # One of: ["WINDOWS", "WINDOWS_SERVER_2016", "WINDOWS_SERVER_2019", "WINDOWS_SERVER_2022", "AMAZON_LINUX2", "RHEL8", "ROCKY_LINUX8"],
    #       description: "String",
    #       state_change_reason: {
    #         code: "INTERNAL_ERROR" # One of: ["INTERNAL_ERROR", "IMAGE_BUILDER_NOT_AVAILABLE", "IMAGE_COPY_FAILURE"],
    #         message: "String"
    #       },
    #       applications: [
    #         {
    #           name: "String",
    #           display_name: "String",
    #           icon_url: "String",
    #           launch_path: "String",
    #           launch_parameters: "String",
    #           enabled: false,
    #           metadata: {
    #             "String" => "String"
    #           },
    #           working_directory: "String",
    #           description: "String",
    #           arn: "Arn",
    #           app_block_arn: "Arn",
    #           icon_s3_location: {
    #             s3_bucket: "S3Bucket", # required
    #             s3_key: "S3Key"
    #           },
    #           platforms: ["WINDOWS" # One of: ["WINDOWS", "WINDOWS_SERVER_2016", "WINDOWS_SERVER_2019", "WINDOWS_SERVER_2022", "AMAZON_LINUX2", "RHEL8", "ROCKY_LINUX8"]],
    #           instance_families: ["String"],
    #           created_time: Time.now
    #         }
    #       ],
    #       created_time: Time.now,
    #       public_base_image_released_date: Time.now,
    #       appstream_agent_version: "AppstreamAgentVersion",
    #       image_permissions: {
    #         allow_fleet: false,
    #         allow_image_builder: false
    #       },
    #       image_errors: [
    #         {
    #           error_code: "IAM_SERVICE_ROLE_MISSING_ENI_DESCRIBE_ACTION" # One of: ["IAM_SERVICE_ROLE_MISSING_ENI_DESCRIBE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_CREATE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_DELETE_ACTION", "NETWORK_INTERFACE_LIMIT_EXCEEDED", "INTERNAL_SERVICE_ERROR", "IAM_SERVICE_ROLE_IS_MISSING", "MACHINE_ROLE_IS_MISSING", "STS_DISABLED_IN_REGION", "SUBNET_HAS_INSUFFICIENT_IP_ADDRESSES", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SUBNET_ACTION", "SUBNET_NOT_FOUND", "IMAGE_NOT_FOUND", "INVALID_SUBNET_CONFIGURATION", "SECURITY_GROUPS_NOT_FOUND", "IGW_NOT_ATTACHED", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SECURITY_GROUPS_ACTION", "FLEET_STOPPED", "FLEET_INSTANCE_PROVISIONING_FAILURE", "DOMAIN_JOIN_ERROR_FILE_NOT_FOUND", "DOMAIN_JOIN_ERROR_ACCESS_DENIED", "DOMAIN_JOIN_ERROR_LOGON_FAILURE", "DOMAIN_JOIN_ERROR_INVALID_PARAMETER", "DOMAIN_JOIN_ERROR_MORE_DATA", "DOMAIN_JOIN_ERROR_NO_SUCH_DOMAIN", "DOMAIN_JOIN_ERROR_NOT_SUPPORTED", "DOMAIN_JOIN_NERR_INVALID_WORKGROUP_NAME", "DOMAIN_JOIN_NERR_WORKSTATION_NOT_STARTED", "DOMAIN_JOIN_ERROR_DS_MACHINE_ACCOUNT_QUOTA_EXCEEDED", "DOMAIN_JOIN_NERR_PASSWORD_EXPIRED", "DOMAIN_JOIN_INTERNAL_SERVICE_ERROR"],
    #           error_message: "String",
    #           error_timestamp: Time.now
    #         }
    #       ],
    #       latest_appstream_agent_version: "TRUE" # One of: ["TRUE", "FALSE"],
    #       supported_instance_families: ["String"],
    #       dynamic_app_providers_enabled: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #       image_shared_with_others: "TRUE" # One of: ["TRUE", "FALSE"]
    #     }
    #   }
    # @return [Types::DeleteImageResult]
    def delete_image(params = {}, options = {})
      request = build_request(:delete_image, params)
      request.send_request(options)
    end

    # <p>Deletes the specified image builder and releases the capacity.</p>
    # @param [Hash, Types::DeleteImageBuilderRequest] params
    # @option params [String] :name
    #   <p>The name of the image builder.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "Name", # required
    #   }
    #   options = {}
    #   response = client.delete_image_builder(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     image_builder: {
    #       name: "String", # required
    #       arn: "Arn",
    #       image_arn: "Arn",
    #       description: "String",
    #       display_name: "String",
    #       vpc_config: {
    #         subnet_ids: ["String"],
    #         security_group_ids: ["String"]
    #       },
    #       instance_type: "String",
    #       platform: "WINDOWS" # One of: ["WINDOWS", "WINDOWS_SERVER_2016", "WINDOWS_SERVER_2019", "WINDOWS_SERVER_2022", "AMAZON_LINUX2", "RHEL8", "ROCKY_LINUX8"],
    #       iam_role_arn: "Arn",
    #       state: "PENDING" # One of: ["PENDING", "UPDATING_AGENT", "RUNNING", "STOPPING", "STOPPED", "REBOOTING", "SNAPSHOTTING", "DELETING", "FAILED", "UPDATING", "PENDING_QUALIFICATION"],
    #       state_change_reason: {
    #         code: "INTERNAL_ERROR" # One of: ["INTERNAL_ERROR", "IMAGE_UNAVAILABLE"],
    #         message: "String"
    #       },
    #       created_time: Time.now,
    #       enable_default_internet_access: false,
    #       domain_join_info: {
    #         directory_name: "DirectoryName",
    #         organizational_unit_distinguished_name: "OrganizationalUnitDistinguishedName"
    #       },
    #       network_access_configuration: {
    #         eni_private_ip_address: "String",
    #         eni_id: "String"
    #       },
    #       image_builder_errors: [
    #         {
    #           error_code: "IAM_SERVICE_ROLE_MISSING_ENI_DESCRIBE_ACTION" # One of: ["IAM_SERVICE_ROLE_MISSING_ENI_DESCRIBE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_CREATE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_DELETE_ACTION", "NETWORK_INTERFACE_LIMIT_EXCEEDED", "INTERNAL_SERVICE_ERROR", "IAM_SERVICE_ROLE_IS_MISSING", "MACHINE_ROLE_IS_MISSING", "STS_DISABLED_IN_REGION", "SUBNET_HAS_INSUFFICIENT_IP_ADDRESSES", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SUBNET_ACTION", "SUBNET_NOT_FOUND", "IMAGE_NOT_FOUND", "INVALID_SUBNET_CONFIGURATION", "SECURITY_GROUPS_NOT_FOUND", "IGW_NOT_ATTACHED", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SECURITY_GROUPS_ACTION", "FLEET_STOPPED", "FLEET_INSTANCE_PROVISIONING_FAILURE", "DOMAIN_JOIN_ERROR_FILE_NOT_FOUND", "DOMAIN_JOIN_ERROR_ACCESS_DENIED", "DOMAIN_JOIN_ERROR_LOGON_FAILURE", "DOMAIN_JOIN_ERROR_INVALID_PARAMETER", "DOMAIN_JOIN_ERROR_MORE_DATA", "DOMAIN_JOIN_ERROR_NO_SUCH_DOMAIN", "DOMAIN_JOIN_ERROR_NOT_SUPPORTED", "DOMAIN_JOIN_NERR_INVALID_WORKGROUP_NAME", "DOMAIN_JOIN_NERR_WORKSTATION_NOT_STARTED", "DOMAIN_JOIN_ERROR_DS_MACHINE_ACCOUNT_QUOTA_EXCEEDED", "DOMAIN_JOIN_NERR_PASSWORD_EXPIRED", "DOMAIN_JOIN_INTERNAL_SERVICE_ERROR"],
    #           error_message: "String",
    #           error_timestamp: Time.now
    #         }
    #       ],
    #       appstream_agent_version: "AppstreamAgentVersion",
    #       access_endpoints: [
    #         {
    #           endpoint_type: "STREAMING" # One of: ["STREAMING"], # required
    #           vpce_id: "String"
    #         }
    #       ],
    #       latest_appstream_agent_version: "TRUE" # One of: ["TRUE", "FALSE"]
    #     }
    #   }
    # @return [Types::DeleteImageBuilderResult]
    def delete_image_builder(params = {}, options = {})
      request = build_request(:delete_image_builder, params)
      request.send_request(options)
    end

    # <p>Deletes permissions for the specified private image. After you delete permissions for an image, AWS accounts to which you previously granted these permissions can no longer use the image.</p>
    # @param [Hash, Types::DeleteImagePermissionsRequest] params
    # @option params [String] :name
    #   <p>The name of the private image.</p>
    # @option params [String] :shared_account_id
    #   <p>The 12-digit identifier of the AWS account for which to delete image permissions.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "Name", # required
    #     shared_account_id: "AwsAccountId", # required
    #   }
    #   options = {}
    #   response = client.delete_image_permissions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteImagePermissionsResult]
    def delete_image_permissions(params = {}, options = {})
      request = build_request(:delete_image_permissions, params)
      request.send_request(options)
    end

    # <p>Deletes the specified stack. After the stack is deleted, the application streaming environment provided by the stack is no longer available to users. Also, any reservations made for application streaming sessions for the stack are released.</p>
    # @param [Hash, Types::DeleteStackRequest] params
    # @option params [String] :name
    #   <p>The name of the stack.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "String", # required
    #   }
    #   options = {}
    #   response = client.delete_stack(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteStackResult]
    def delete_stack(params = {}, options = {})
      request = build_request(:delete_stack, params)
      request.send_request(options)
    end

    # <p>Deletes custom branding that customizes the appearance of the streaming application catalog page.</p>
    # @param [Hash, Types::DeleteThemeForStackRequest] params
    # @option params [String] :stack_name
    #   <p>The name of the stack for the theme.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     stack_name: "Name", # required
    #   }
    #   options = {}
    #   response = client.delete_theme_for_stack(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteThemeForStackResult]
    def delete_theme_for_stack(params = {}, options = {})
      request = build_request(:delete_theme_for_stack, params)
      request.send_request(options)
    end

    # <p>Disables usage report generation.</p>
    # @param [Hash, Types::DeleteUsageReportSubscriptionRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.delete_usage_report_subscription(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteUsageReportSubscriptionResult]
    def delete_usage_report_subscription(params = {}, options = {})
      request = build_request(:delete_usage_report_subscription, params)
      request.send_request(options)
    end

    # <p>Deletes a user from the user pool.</p>
    # @param [Hash, Types::DeleteUserRequest] params
    # @option params [String] :user_name
    #   <p>The email address of the user.</p>
    #            <note>
    #               <p>Users' email addresses are case-sensitive.</p>
    #            </note>
    # @option params [String] :authentication_type
    #   <p>The authentication type for the user. You must specify USERPOOL.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_name: "Username", # required
    #     authentication_type: "API" # One of: ["API", "SAML", "USERPOOL", "AWS_AD"], # required
    #   }
    #   options = {}
    #   response = client.delete_user(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteUserResult]
    def delete_user(params = {}, options = {})
      request = build_request(:delete_user, params)
      request.send_request(options)
    end

    # <p>Retrieves a list that describes one or more app block builder associations.</p>
    # @param [Hash, Types::DescribeAppBlockBuilderAppBlockAssociationsRequest] params
    # @option params [String] :app_block_arn
    #   <p>The ARN of the app block.</p>
    # @option params [String] :app_block_builder_name
    #   <p>The name of the app block builder.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum size of each page of results.</p>
    # @option params [String] :next_token
    #   <p>The pagination token used to retrieve the next page of results for this
    #               operation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_block_arn: "Arn",
    #     app_block_builder_name: "Name",
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.describe_app_block_builder_app_block_associations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     app_block_builder_app_block_associations: [
    #       {
    #         app_block_arn: "Arn", # required
    #         app_block_builder_name: "Name", # required
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::DescribeAppBlockBuilderAppBlockAssociationsResult]
    def describe_app_block_builder_app_block_associations(params = {}, options = {})
      request = build_request(:describe_app_block_builder_app_block_associations, params)
      request.send_request(options)
    end

    # <p>Retrieves a list that describes one or more app block builders.</p>
    # @param [Hash, Types::DescribeAppBlockBuildersRequest] params
    # @option params [Array<String>] :names
    #   <p>The names of the app block builders.</p>
    # @option params [String] :next_token
    #   <p>The pagination token used to retrieve the next page of results for this
    #               operation.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum size of each page of results. The maximum value is 25.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     names: ["String"],
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.describe_app_block_builders(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     app_block_builders: [
    #       {
    #         arn: "Arn", # required
    #         name: "String", # required
    #         display_name: "String",
    #         description: "String",
    #         platform: "WINDOWS_SERVER_2019" # One of: ["WINDOWS_SERVER_2019"], # required
    #         instance_type: "String", # required
    #         enable_default_internet_access: false,
    #         iam_role_arn: "Arn",
    #         vpc_config: { # required
    #           subnet_ids: ["String"],
    #           security_group_ids: ["String"]
    #         },
    #         state: "STARTING" # One of: ["STARTING", "RUNNING", "STOPPING", "STOPPED"], # required
    #         created_time: Time.now,
    #         app_block_builder_errors: [
    #           {
    #             error_code: "IAM_SERVICE_ROLE_MISSING_ENI_DESCRIBE_ACTION" # One of: ["IAM_SERVICE_ROLE_MISSING_ENI_DESCRIBE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_CREATE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_DELETE_ACTION", "NETWORK_INTERFACE_LIMIT_EXCEEDED", "INTERNAL_SERVICE_ERROR", "IAM_SERVICE_ROLE_IS_MISSING", "MACHINE_ROLE_IS_MISSING", "STS_DISABLED_IN_REGION", "SUBNET_HAS_INSUFFICIENT_IP_ADDRESSES", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SUBNET_ACTION", "SUBNET_NOT_FOUND", "IMAGE_NOT_FOUND", "INVALID_SUBNET_CONFIGURATION", "SECURITY_GROUPS_NOT_FOUND", "IGW_NOT_ATTACHED", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SECURITY_GROUPS_ACTION", "FLEET_STOPPED", "FLEET_INSTANCE_PROVISIONING_FAILURE", "DOMAIN_JOIN_ERROR_FILE_NOT_FOUND", "DOMAIN_JOIN_ERROR_ACCESS_DENIED", "DOMAIN_JOIN_ERROR_LOGON_FAILURE", "DOMAIN_JOIN_ERROR_INVALID_PARAMETER", "DOMAIN_JOIN_ERROR_MORE_DATA", "DOMAIN_JOIN_ERROR_NO_SUCH_DOMAIN", "DOMAIN_JOIN_ERROR_NOT_SUPPORTED", "DOMAIN_JOIN_NERR_INVALID_WORKGROUP_NAME", "DOMAIN_JOIN_NERR_WORKSTATION_NOT_STARTED", "DOMAIN_JOIN_ERROR_DS_MACHINE_ACCOUNT_QUOTA_EXCEEDED", "DOMAIN_JOIN_NERR_PASSWORD_EXPIRED", "DOMAIN_JOIN_INTERNAL_SERVICE_ERROR"],
    #             error_message: "String",
    #             error_timestamp: Time.now
    #           }
    #         ],
    #         state_change_reason: {
    #           code: "INTERNAL_ERROR" # One of: ["INTERNAL_ERROR"],
    #           message: "String"
    #         },
    #         access_endpoints: [
    #           {
    #             endpoint_type: "STREAMING" # One of: ["STREAMING"], # required
    #             vpce_id: "String"
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::DescribeAppBlockBuildersResult]
    def describe_app_block_builders(params = {}, options = {})
      request = build_request(:describe_app_block_builders, params)
      request.send_request(options)
    end

    # <p>Retrieves a list that describes one or more app blocks.</p>
    # @param [Hash, Types::DescribeAppBlocksRequest] params
    # @option params [Array<String>] :arns
    #   <p>The ARNs of the app blocks.</p>
    # @option params [String] :next_token
    #   <p>The pagination token used to retrieve the next page of results for this
    #               operation.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum size of each page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arns: ["Arn"],
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.describe_app_blocks(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     app_blocks: [
    #       {
    #         name: "String", # required
    #         arn: "Arn", # required
    #         description: "String",
    #         display_name: "String",
    #         source_s3_location: {
    #           s3_bucket: "S3Bucket", # required
    #           s3_key: "S3Key"
    #         },
    #         setup_script_details: {
    #           script_s3_location: { # required
    #             s3_bucket: "S3Bucket", # required
    #             s3_key: "S3Key"
    #           },
    #           executable_path: "String", # required
    #           executable_parameters: "String",
    #           timeout_in_seconds: 1, # required
    #         },
    #         created_time: Time.now,
    #         post_setup_script_details: {
    #           script_s3_location: { # required
    #             s3_bucket: "S3Bucket", # required
    #             s3_key: "S3Key"
    #           },
    #           executable_path: "String", # required
    #           executable_parameters: "String",
    #           timeout_in_seconds: 1, # required
    #         },
    #         packaging_type: "CUSTOM" # One of: ["CUSTOM", "APPSTREAM2"],
    #         state: "INACTIVE" # One of: ["INACTIVE", "ACTIVE"],
    #         app_block_errors: [
    #           {
    #             error_code: "String",
    #             error_message: "String"
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::DescribeAppBlocksResult]
    def describe_app_blocks(params = {}, options = {})
      request = build_request(:describe_app_blocks, params)
      request.send_request(options)
    end

    # <p>Retrieves a list that describes one or more application fleet associations. Either ApplicationArn or FleetName must be specified.</p>
    # @param [Hash, Types::DescribeApplicationFleetAssociationsRequest] params
    # @option params [String] :fleet_name
    #   <p>The name of the fleet.</p>
    # @option params [String] :application_arn
    #   <p>The ARN of the application.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum size of each page of results.</p>
    # @option params [String] :next_token
    #   <p>The pagination token used to retrieve the next page of results for this
    #               operation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     fleet_name: "Name",
    #     application_arn: "Arn",
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.describe_application_fleet_associations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     application_fleet_associations: [
    #       {
    #         fleet_name: "String", # required
    #         application_arn: "Arn", # required
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::DescribeApplicationFleetAssociationsResult]
    def describe_application_fleet_associations(params = {}, options = {})
      request = build_request(:describe_application_fleet_associations, params)
      request.send_request(options)
    end

    # <p>Retrieves a list that describes one or more applications.</p>
    # @param [Hash, Types::DescribeApplicationsRequest] params
    # @option params [Array<String>] :arns
    #   <p>The ARNs for the applications.</p>
    # @option params [String] :next_token
    #   <p>The pagination token used to retrieve the next page of results for this
    #               operation.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum size of each page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arns: ["Arn"],
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.describe_applications(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     applications: [
    #       {
    #         name: "String",
    #         display_name: "String",
    #         icon_url: "String",
    #         launch_path: "String",
    #         launch_parameters: "String",
    #         enabled: false,
    #         metadata: {
    #           "String" => "String"
    #         },
    #         working_directory: "String",
    #         description: "String",
    #         arn: "Arn",
    #         app_block_arn: "Arn",
    #         icon_s3_location: {
    #           s3_bucket: "S3Bucket", # required
    #           s3_key: "S3Key"
    #         },
    #         platforms: ["WINDOWS" # One of: ["WINDOWS", "WINDOWS_SERVER_2016", "WINDOWS_SERVER_2019", "WINDOWS_SERVER_2022", "AMAZON_LINUX2", "RHEL8", "ROCKY_LINUX8"]],
    #         instance_families: ["String"],
    #         created_time: Time.now
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::DescribeApplicationsResult]
    def describe_applications(params = {}, options = {})
      request = build_request(:describe_applications, params)
      request.send_request(options)
    end

    # <p>Retrieves a list that describes one or more specified Directory Config objects for AppStream 2.0, if the names for these objects are provided. Otherwise, all Directory Config objects in the account are described. These objects include the configuration information required to join fleets and image builders to Microsoft Active Directory domains. 
    #         </p>
    #          <p>Although the response syntax in this topic includes the account password, this password is not returned in the actual response.</p>
    # @param [Hash, Types::DescribeDirectoryConfigsRequest] params
    # @option params [Array<String>] :directory_names
    #   <p>The directory names.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum size of each page of results.</p>
    # @option params [String] :next_token
    #   <p>The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_names: ["DirectoryName"],
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.describe_directory_configs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     directory_configs: [
    #       {
    #         directory_name: "DirectoryName", # required
    #         organizational_unit_distinguished_names: ["OrganizationalUnitDistinguishedName"],
    #         service_account_credentials: {
    #           account_name: "AccountName", # required
    #           account_password: "AccountPassword", # required
    #         },
    #         created_time: Time.now,
    #         certificate_based_auth_properties: {
    #           status: "DISABLED" # One of: ["DISABLED", "ENABLED", "ENABLED_NO_DIRECTORY_LOGIN_FALLBACK"],
    #           certificate_authority_arn: "Arn"
    #         }
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::DescribeDirectoryConfigsResult]
    def describe_directory_configs(params = {}, options = {})
      request = build_request(:describe_directory_configs, params)
      request.send_request(options)
    end

    # <p>Retrieves a list that describes one of more entitlements.</p>
    # @param [Hash, Types::DescribeEntitlementsRequest] params
    # @option params [String] :name
    #   <p>The name of the entitlement.</p>
    # @option params [String] :stack_name
    #   <p>The name of the stack with which the entitlement is associated.</p>
    # @option params [String] :next_token
    #   <p>The pagination token used to retrieve the next page of results for this operation.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum size of each page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "Name",
    #     stack_name: "Name", # required
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.describe_entitlements(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     entitlements: [
    #       {
    #         name: "Name", # required
    #         stack_name: "Name", # required
    #         description: "Description",
    #         app_visibility: "ALL" # One of: ["ALL", "ASSOCIATED"], # required
    #         attributes: [ # required
    #           {
    #             name: "String", # required
    #             value: "String", # required
    #           }
    #         ],
    #         created_time: Time.now,
    #         last_modified_time: Time.now
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::DescribeEntitlementsResult]
    def describe_entitlements(params = {}, options = {})
      request = build_request(:describe_entitlements, params)
      request.send_request(options)
    end

    # <p>Retrieves a list that describes one or more specified fleets, if the fleet names are provided. Otherwise, all fleets in the account are described.</p>
    # @param [Hash, Types::DescribeFleetsRequest] params
    # @option params [Array<String>] :names
    #   <p>The names of the fleets to describe.</p>
    # @option params [String] :next_token
    #   <p>The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     names: ["String"],
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.describe_fleets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     fleets: [
    #       {
    #         arn: "Arn", # required
    #         name: "String", # required
    #         display_name: "String",
    #         description: "String",
    #         image_name: "String",
    #         image_arn: "Arn",
    #         instance_type: "String", # required
    #         fleet_type: "ALWAYS_ON" # One of: ["ALWAYS_ON", "ON_DEMAND", "ELASTIC"],
    #         compute_capacity_status: { # required
    #           desired: 1, # required
    #           running: 1,
    #           in_use: 1,
    #           available: 1,
    #           desired_user_sessions: 1,
    #           available_user_sessions: 1,
    #           active_user_sessions: 1,
    #           actual_user_sessions: 1
    #         },
    #         max_user_duration_in_seconds: 1,
    #         disconnect_timeout_in_seconds: 1,
    #         state: "STARTING" # One of: ["STARTING", "RUNNING", "STOPPING", "STOPPED"], # required
    #         vpc_config: {
    #           subnet_ids: ["String"],
    #           security_group_ids: ["String"]
    #         },
    #         created_time: Time.now,
    #         fleet_errors: [
    #           {
    #             error_code: "IAM_SERVICE_ROLE_MISSING_ENI_DESCRIBE_ACTION" # One of: ["IAM_SERVICE_ROLE_MISSING_ENI_DESCRIBE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_CREATE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_DELETE_ACTION", "NETWORK_INTERFACE_LIMIT_EXCEEDED", "INTERNAL_SERVICE_ERROR", "IAM_SERVICE_ROLE_IS_MISSING", "MACHINE_ROLE_IS_MISSING", "STS_DISABLED_IN_REGION", "SUBNET_HAS_INSUFFICIENT_IP_ADDRESSES", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SUBNET_ACTION", "SUBNET_NOT_FOUND", "IMAGE_NOT_FOUND", "INVALID_SUBNET_CONFIGURATION", "SECURITY_GROUPS_NOT_FOUND", "IGW_NOT_ATTACHED", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SECURITY_GROUPS_ACTION", "FLEET_STOPPED", "FLEET_INSTANCE_PROVISIONING_FAILURE", "DOMAIN_JOIN_ERROR_FILE_NOT_FOUND", "DOMAIN_JOIN_ERROR_ACCESS_DENIED", "DOMAIN_JOIN_ERROR_LOGON_FAILURE", "DOMAIN_JOIN_ERROR_INVALID_PARAMETER", "DOMAIN_JOIN_ERROR_MORE_DATA", "DOMAIN_JOIN_ERROR_NO_SUCH_DOMAIN", "DOMAIN_JOIN_ERROR_NOT_SUPPORTED", "DOMAIN_JOIN_NERR_INVALID_WORKGROUP_NAME", "DOMAIN_JOIN_NERR_WORKSTATION_NOT_STARTED", "DOMAIN_JOIN_ERROR_DS_MACHINE_ACCOUNT_QUOTA_EXCEEDED", "DOMAIN_JOIN_NERR_PASSWORD_EXPIRED", "DOMAIN_JOIN_INTERNAL_SERVICE_ERROR"],
    #             error_message: "String"
    #           }
    #         ],
    #         enable_default_internet_access: false,
    #         domain_join_info: {
    #           directory_name: "DirectoryName",
    #           organizational_unit_distinguished_name: "OrganizationalUnitDistinguishedName"
    #         },
    #         idle_disconnect_timeout_in_seconds: 1,
    #         iam_role_arn: "Arn",
    #         stream_view: "APP" # One of: ["APP", "DESKTOP"],
    #         platform: "WINDOWS" # One of: ["WINDOWS", "WINDOWS_SERVER_2016", "WINDOWS_SERVER_2019", "WINDOWS_SERVER_2022", "AMAZON_LINUX2", "RHEL8", "ROCKY_LINUX8"],
    #         max_concurrent_sessions: 1,
    #         usb_device_filter_strings: ["UsbDeviceFilterString"],
    #         session_script_s3_location: {
    #           s3_bucket: "S3Bucket", # required
    #           s3_key: "S3Key"
    #         },
    #         max_sessions_per_instance: 1
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::DescribeFleetsResult]
    def describe_fleets(params = {}, options = {})
      request = build_request(:describe_fleets, params)
      request.send_request(options)
    end

    # <p>Retrieves a list that describes one or more specified image builders, if the image builder names are provided. Otherwise, all image builders in the account are described.</p>
    # @param [Hash, Types::DescribeImageBuildersRequest] params
    # @option params [Array<String>] :names
    #   <p>The names of the image builders to describe.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum size of each page of results.</p>
    # @option params [String] :next_token
    #   <p>The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     names: ["String"],
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.describe_image_builders(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     image_builders: [
    #       {
    #         name: "String", # required
    #         arn: "Arn",
    #         image_arn: "Arn",
    #         description: "String",
    #         display_name: "String",
    #         vpc_config: {
    #           subnet_ids: ["String"],
    #           security_group_ids: ["String"]
    #         },
    #         instance_type: "String",
    #         platform: "WINDOWS" # One of: ["WINDOWS", "WINDOWS_SERVER_2016", "WINDOWS_SERVER_2019", "WINDOWS_SERVER_2022", "AMAZON_LINUX2", "RHEL8", "ROCKY_LINUX8"],
    #         iam_role_arn: "Arn",
    #         state: "PENDING" # One of: ["PENDING", "UPDATING_AGENT", "RUNNING", "STOPPING", "STOPPED", "REBOOTING", "SNAPSHOTTING", "DELETING", "FAILED", "UPDATING", "PENDING_QUALIFICATION"],
    #         state_change_reason: {
    #           code: "INTERNAL_ERROR" # One of: ["INTERNAL_ERROR", "IMAGE_UNAVAILABLE"],
    #           message: "String"
    #         },
    #         created_time: Time.now,
    #         enable_default_internet_access: false,
    #         domain_join_info: {
    #           directory_name: "DirectoryName",
    #           organizational_unit_distinguished_name: "OrganizationalUnitDistinguishedName"
    #         },
    #         network_access_configuration: {
    #           eni_private_ip_address: "String",
    #           eni_id: "String"
    #         },
    #         image_builder_errors: [
    #           {
    #             error_code: "IAM_SERVICE_ROLE_MISSING_ENI_DESCRIBE_ACTION" # One of: ["IAM_SERVICE_ROLE_MISSING_ENI_DESCRIBE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_CREATE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_DELETE_ACTION", "NETWORK_INTERFACE_LIMIT_EXCEEDED", "INTERNAL_SERVICE_ERROR", "IAM_SERVICE_ROLE_IS_MISSING", "MACHINE_ROLE_IS_MISSING", "STS_DISABLED_IN_REGION", "SUBNET_HAS_INSUFFICIENT_IP_ADDRESSES", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SUBNET_ACTION", "SUBNET_NOT_FOUND", "IMAGE_NOT_FOUND", "INVALID_SUBNET_CONFIGURATION", "SECURITY_GROUPS_NOT_FOUND", "IGW_NOT_ATTACHED", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SECURITY_GROUPS_ACTION", "FLEET_STOPPED", "FLEET_INSTANCE_PROVISIONING_FAILURE", "DOMAIN_JOIN_ERROR_FILE_NOT_FOUND", "DOMAIN_JOIN_ERROR_ACCESS_DENIED", "DOMAIN_JOIN_ERROR_LOGON_FAILURE", "DOMAIN_JOIN_ERROR_INVALID_PARAMETER", "DOMAIN_JOIN_ERROR_MORE_DATA", "DOMAIN_JOIN_ERROR_NO_SUCH_DOMAIN", "DOMAIN_JOIN_ERROR_NOT_SUPPORTED", "DOMAIN_JOIN_NERR_INVALID_WORKGROUP_NAME", "DOMAIN_JOIN_NERR_WORKSTATION_NOT_STARTED", "DOMAIN_JOIN_ERROR_DS_MACHINE_ACCOUNT_QUOTA_EXCEEDED", "DOMAIN_JOIN_NERR_PASSWORD_EXPIRED", "DOMAIN_JOIN_INTERNAL_SERVICE_ERROR"],
    #             error_message: "String",
    #             error_timestamp: Time.now
    #           }
    #         ],
    #         appstream_agent_version: "AppstreamAgentVersion",
    #         access_endpoints: [
    #           {
    #             endpoint_type: "STREAMING" # One of: ["STREAMING"], # required
    #             vpce_id: "String"
    #           }
    #         ],
    #         latest_appstream_agent_version: "TRUE" # One of: ["TRUE", "FALSE"]
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::DescribeImageBuildersResult]
    def describe_image_builders(params = {}, options = {})
      request = build_request(:describe_image_builders, params)
      request.send_request(options)
    end

    # <p>Retrieves a list that describes the permissions for shared AWS account IDs on a private image that you own. </p>
    # @param [Hash, Types::DescribeImagePermissionsRequest] params
    # @option params [String] :name
    #   <p>The name of the private image for which to describe permissions. The image must be one that you own. </p>
    # @option params [Integer] :max_results
    #   <p>The maximum size of each page of results.</p>
    # @option params [Array<String>] :shared_aws_account_ids
    #   <p>The 12-digit identifier of one or more AWS accounts with which the image is shared.</p>
    # @option params [String] :next_token
    #   <p>The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "Name", # required
    #     max_results: 1,
    #     shared_aws_account_ids: ["AwsAccountId"],
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.describe_image_permissions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "Name",
    #     shared_image_permissions_list: [
    #       {
    #         shared_account_id: "AwsAccountId", # required
    #         image_permissions: { # required
    #           allow_fleet: false,
    #           allow_image_builder: false
    #         }
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::DescribeImagePermissionsResult]
    def describe_image_permissions(params = {}, options = {})
      request = build_request(:describe_image_permissions, params)
      request.send_request(options)
    end

    # <p>Retrieves a list that describes one or more specified images, if the image names or image ARNs are provided. Otherwise, all images in the account are described.</p>
    # @param [Hash, Types::DescribeImagesRequest] params
    # @option params [Array<String>] :names
    #   <p>The names of the public or private images to describe.</p>
    # @option params [Array<String>] :arns
    #   <p>The ARNs of the public, private, and shared images to describe.</p>
    # @option params [String] :type
    #   <p>The type of image (public, private, or shared) to describe. </p>
    # @option params [String] :next_token
    #   <p>The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum size of each page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     names: ["String"],
    #     arns: ["Arn"],
    #     type: "PUBLIC" # One of: ["PUBLIC", "PRIVATE", "SHARED"],
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.describe_images(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     images: [
    #       {
    #         name: "String", # required
    #         arn: "Arn",
    #         base_image_arn: "Arn",
    #         display_name: "String",
    #         state: "PENDING" # One of: ["PENDING", "AVAILABLE", "FAILED", "COPYING", "DELETING", "CREATING", "IMPORTING"],
    #         visibility: "PUBLIC" # One of: ["PUBLIC", "PRIVATE", "SHARED"],
    #         image_builder_supported: false,
    #         image_builder_name: "String",
    #         platform: "WINDOWS" # One of: ["WINDOWS", "WINDOWS_SERVER_2016", "WINDOWS_SERVER_2019", "WINDOWS_SERVER_2022", "AMAZON_LINUX2", "RHEL8", "ROCKY_LINUX8"],
    #         description: "String",
    #         state_change_reason: {
    #           code: "INTERNAL_ERROR" # One of: ["INTERNAL_ERROR", "IMAGE_BUILDER_NOT_AVAILABLE", "IMAGE_COPY_FAILURE"],
    #           message: "String"
    #         },
    #         applications: [
    #           {
    #             name: "String",
    #             display_name: "String",
    #             icon_url: "String",
    #             launch_path: "String",
    #             launch_parameters: "String",
    #             enabled: false,
    #             metadata: {
    #               "String" => "String"
    #             },
    #             working_directory: "String",
    #             description: "String",
    #             arn: "Arn",
    #             app_block_arn: "Arn",
    #             icon_s3_location: {
    #               s3_bucket: "S3Bucket", # required
    #               s3_key: "S3Key"
    #             },
    #             platforms: ["WINDOWS" # One of: ["WINDOWS", "WINDOWS_SERVER_2016", "WINDOWS_SERVER_2019", "WINDOWS_SERVER_2022", "AMAZON_LINUX2", "RHEL8", "ROCKY_LINUX8"]],
    #             instance_families: ["String"],
    #             created_time: Time.now
    #           }
    #         ],
    #         created_time: Time.now,
    #         public_base_image_released_date: Time.now,
    #         appstream_agent_version: "AppstreamAgentVersion",
    #         image_permissions: {
    #           allow_fleet: false,
    #           allow_image_builder: false
    #         },
    #         image_errors: [
    #           {
    #             error_code: "IAM_SERVICE_ROLE_MISSING_ENI_DESCRIBE_ACTION" # One of: ["IAM_SERVICE_ROLE_MISSING_ENI_DESCRIBE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_CREATE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_DELETE_ACTION", "NETWORK_INTERFACE_LIMIT_EXCEEDED", "INTERNAL_SERVICE_ERROR", "IAM_SERVICE_ROLE_IS_MISSING", "MACHINE_ROLE_IS_MISSING", "STS_DISABLED_IN_REGION", "SUBNET_HAS_INSUFFICIENT_IP_ADDRESSES", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SUBNET_ACTION", "SUBNET_NOT_FOUND", "IMAGE_NOT_FOUND", "INVALID_SUBNET_CONFIGURATION", "SECURITY_GROUPS_NOT_FOUND", "IGW_NOT_ATTACHED", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SECURITY_GROUPS_ACTION", "FLEET_STOPPED", "FLEET_INSTANCE_PROVISIONING_FAILURE", "DOMAIN_JOIN_ERROR_FILE_NOT_FOUND", "DOMAIN_JOIN_ERROR_ACCESS_DENIED", "DOMAIN_JOIN_ERROR_LOGON_FAILURE", "DOMAIN_JOIN_ERROR_INVALID_PARAMETER", "DOMAIN_JOIN_ERROR_MORE_DATA", "DOMAIN_JOIN_ERROR_NO_SUCH_DOMAIN", "DOMAIN_JOIN_ERROR_NOT_SUPPORTED", "DOMAIN_JOIN_NERR_INVALID_WORKGROUP_NAME", "DOMAIN_JOIN_NERR_WORKSTATION_NOT_STARTED", "DOMAIN_JOIN_ERROR_DS_MACHINE_ACCOUNT_QUOTA_EXCEEDED", "DOMAIN_JOIN_NERR_PASSWORD_EXPIRED", "DOMAIN_JOIN_INTERNAL_SERVICE_ERROR"],
    #             error_message: "String",
    #             error_timestamp: Time.now
    #           }
    #         ],
    #         latest_appstream_agent_version: "TRUE" # One of: ["TRUE", "FALSE"],
    #         supported_instance_families: ["String"],
    #         dynamic_app_providers_enabled: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #         image_shared_with_others: "TRUE" # One of: ["TRUE", "FALSE"]
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::DescribeImagesResult]
    def describe_images(params = {}, options = {})
      request = build_request(:describe_images, params)
      request.send_request(options)
    end

    # <p>Retrieves a list that describes the streaming sessions for a specified stack and fleet. If a UserId is provided for the stack and fleet,
    #             only streaming sessions for that user are described. If an authentication type is not provided, 
    #             the default is to authenticate users using a streaming URL.</p>
    # @param [Hash, Types::DescribeSessionsRequest] params
    # @option params [String] :stack_name
    #   <p>The name of the stack. This value is case-sensitive.</p>
    # @option params [String] :fleet_name
    #   <p>The name of the fleet. This value is case-sensitive.</p>
    # @option params [String] :user_id
    #   <p>The user identifier (ID). If you specify a user ID, you must also specify the authentication type.</p>
    # @option params [String] :next_token
    #   <p>The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.</p>
    # @option params [Integer] :limit
    #   <p>The size of each page of results. The default value is 20 and the maximum value is 50.</p>
    # @option params [String] :authentication_type
    #   <p>The authentication method. Specify <code>API</code> for a user
    #               authenticated using a streaming URL or <code>SAML</code> for a SAML federated user. 
    #               The default is to authenticate users using a streaming URL.</p>
    # @option params [String] :instance_id
    #   <p>The identifier for the instance hosting the session.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     stack_name: "Name", # required
    #     fleet_name: "Name", # required
    #     user_id: "UserId",
    #     next_token: "String",
    #     limit: 1,
    #     authentication_type: "API" # One of: ["API", "SAML", "USERPOOL", "AWS_AD"],
    #     instance_id: "String"
    #   }
    #   options = {}
    #   response = client.describe_sessions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     sessions: [
    #       {
    #         id: "String", # required
    #         user_id: "UserId", # required
    #         stack_name: "String", # required
    #         fleet_name: "String", # required
    #         state: "ACTIVE" # One of: ["ACTIVE", "PENDING", "EXPIRED"], # required
    #         connection_state: "CONNECTED" # One of: ["CONNECTED", "NOT_CONNECTED"],
    #         start_time: Time.now,
    #         max_expiration_time: Time.now,
    #         authentication_type: "API" # One of: ["API", "SAML", "USERPOOL", "AWS_AD"],
    #         network_access_configuration: {
    #           eni_private_ip_address: "String",
    #           eni_id: "String"
    #         },
    #         instance_id: "String"
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::DescribeSessionsResult]
    def describe_sessions(params = {}, options = {})
      request = build_request(:describe_sessions, params)
      request.send_request(options)
    end

    # <p>Retrieves a list that describes one or more specified stacks, if the stack names are provided. Otherwise, all stacks in the account are described.</p>
    # @param [Hash, Types::DescribeStacksRequest] params
    # @option params [Array<String>] :names
    #   <p>The names of the stacks to describe.</p>
    # @option params [String] :next_token
    #   <p>The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     names: ["String"],
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.describe_stacks(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     stacks: [
    #       {
    #         arn: "Arn",
    #         name: "String", # required
    #         description: "String",
    #         display_name: "String",
    #         created_time: Time.now,
    #         storage_connectors: [
    #           {
    #             connector_type: "HOMEFOLDERS" # One of: ["HOMEFOLDERS", "GOOGLE_DRIVE", "ONE_DRIVE"], # required
    #             resource_identifier: "ResourceIdentifier",
    #             domains: ["Domain"],
    #             domains_require_admin_consent: ["Domain"]
    #           }
    #         ],
    #         redirect_url: "RedirectURL",
    #         feedback_url: "FeedbackURL",
    #         stack_errors: [
    #           {
    #             error_code: "STORAGE_CONNECTOR_ERROR" # One of: ["STORAGE_CONNECTOR_ERROR", "INTERNAL_SERVICE_ERROR"],
    #             error_message: "String"
    #           }
    #         ],
    #         user_settings: [
    #           {
    #             action: "CLIPBOARD_COPY_FROM_LOCAL_DEVICE" # One of: ["CLIPBOARD_COPY_FROM_LOCAL_DEVICE", "CLIPBOARD_COPY_TO_LOCAL_DEVICE", "FILE_UPLOAD", "FILE_DOWNLOAD", "PRINTING_TO_LOCAL_DEVICE", "DOMAIN_PASSWORD_SIGNIN", "DOMAIN_SMART_CARD_SIGNIN", "AUTO_TIME_ZONE_REDIRECTION"], # required
    #             permission: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #             maximum_length: 1
    #           }
    #         ],
    #         application_settings: {
    #           enabled: false,
    #           settings_group: "SettingsGroup",
    #           s3_bucket_name: "String"
    #         },
    #         access_endpoints: [
    #           {
    #             endpoint_type: "STREAMING" # One of: ["STREAMING"], # required
    #             vpce_id: "String"
    #           }
    #         ],
    #         embed_host_domains: ["EmbedHostDomain"],
    #         streaming_experience_settings: {
    #           preferred_protocol: "TCP" # One of: ["TCP", "UDP"]
    #         }
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::DescribeStacksResult]
    def describe_stacks(params = {}, options = {})
      request = build_request(:describe_stacks, params)
      request.send_request(options)
    end

    # <p>Retrieves a list that describes the theme for a specified stack. A theme is custom branding that customizes the appearance of the streaming application catalog page.</p>
    # @param [Hash, Types::DescribeThemeForStackRequest] params
    # @option params [String] :stack_name
    #   <p>The name of the stack for the theme.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     stack_name: "Name", # required
    #   }
    #   options = {}
    #   response = client.describe_theme_for_stack(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     theme: {
    #       stack_name: "Name",
    #       state: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #       theme_title_text: "ThemeTitleText",
    #       theme_styling: "LIGHT_BLUE" # One of: ["LIGHT_BLUE", "BLUE", "PINK", "RED"],
    #       theme_footer_links: [
    #         {
    #           display_name: "ThemeFooterLinkDisplayName",
    #           footer_link_url: "ThemeFooterLinkURL"
    #         }
    #       ],
    #       theme_organization_logo_url: "String",
    #       theme_favicon_url: "String",
    #       created_time: Time.now
    #     }
    #   }
    # @return [Types::DescribeThemeForStackResult]
    def describe_theme_for_stack(params = {}, options = {})
      request = build_request(:describe_theme_for_stack, params)
      request.send_request(options)
    end

    # <p>Retrieves a list that describes one or more usage report subscriptions.</p>
    # @param [Hash, Types::DescribeUsageReportSubscriptionsRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum size of each page of results.</p>
    # @option params [String] :next_token
    #   <p>The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.describe_usage_report_subscriptions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     usage_report_subscriptions: [
    #       {
    #         s3_bucket_name: "String",
    #         schedule: "DAILY" # One of: ["DAILY"],
    #         last_generated_report_date: Time.now,
    #         subscription_errors: [
    #           {
    #             error_code: "RESOURCE_NOT_FOUND" # One of: ["RESOURCE_NOT_FOUND", "ACCESS_DENIED", "INTERNAL_SERVICE_ERROR"],
    #             error_message: "String"
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::DescribeUsageReportSubscriptionsResult]
    def describe_usage_report_subscriptions(params = {}, options = {})
      request = build_request(:describe_usage_report_subscriptions, params)
      request.send_request(options)
    end

    # <p>Retrieves a list that describes the UserStackAssociation objects. You must specify either or both of the following:</p>
    #          <ul>
    #             <li>
    #                <p>The stack name</p>
    #             </li>
    #             <li>
    #                <p>The user name (email address of the user associated with the stack) and the authentication type for the user</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::DescribeUserStackAssociationsRequest] params
    # @option params [String] :stack_name
    #   <p>The name of the stack that is associated with the user.</p>
    # @option params [String] :user_name
    #   <p>The email address of the user who is associated with the stack.</p>
    #            <note>
    #               <p>Users' email addresses are case-sensitive.</p>
    #            </note>
    # @option params [String] :authentication_type
    #   <p>The authentication type for the user who is associated with the stack. You must specify USERPOOL.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum size of each page of results.</p>
    # @option params [String] :next_token
    #   <p>The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     stack_name: "String",
    #     user_name: "Username",
    #     authentication_type: "API" # One of: ["API", "SAML", "USERPOOL", "AWS_AD"],
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.describe_user_stack_associations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     user_stack_associations: [
    #       {
    #         stack_name: "String", # required
    #         user_name: "Username", # required
    #         authentication_type: "API" # One of: ["API", "SAML", "USERPOOL", "AWS_AD"], # required
    #         send_email_notification: false
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::DescribeUserStackAssociationsResult]
    def describe_user_stack_associations(params = {}, options = {})
      request = build_request(:describe_user_stack_associations, params)
      request.send_request(options)
    end

    # <p>Retrieves a list that describes one or more specified users in the user pool.</p>
    # @param [Hash, Types::DescribeUsersRequest] params
    # @option params [String] :authentication_type
    #   <p>The authentication type for the users in the user pool to describe. You must specify USERPOOL.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum size of each page of results.</p>
    # @option params [String] :next_token
    #   <p>The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     authentication_type: "API" # One of: ["API", "SAML", "USERPOOL", "AWS_AD"], # required
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.describe_users(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     users: [
    #       {
    #         arn: "Arn",
    #         user_name: "Username",
    #         enabled: false,
    #         status: "String",
    #         first_name: "UserAttributeValue",
    #         last_name: "UserAttributeValue",
    #         created_time: Time.now,
    #         authentication_type: "API" # One of: ["API", "SAML", "USERPOOL", "AWS_AD"], # required
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::DescribeUsersResult]
    def describe_users(params = {}, options = {})
      request = build_request(:describe_users, params)
      request.send_request(options)
    end

    # <p>Disables the specified user in the user pool. Users can't sign in to AppStream 2.0 until they are re-enabled. This action does not delete the user. </p>
    # @param [Hash, Types::DisableUserRequest] params
    # @option params [String] :user_name
    #   <p>The email address of the user.</p>
    #            <note>
    #               <p>Users' email addresses are case-sensitive.</p>
    #            </note>
    # @option params [String] :authentication_type
    #   <p>The authentication type for the user. You must specify USERPOOL.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_name: "Username", # required
    #     authentication_type: "API" # One of: ["API", "SAML", "USERPOOL", "AWS_AD"], # required
    #   }
    #   options = {}
    #   response = client.disable_user(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DisableUserResult]
    def disable_user(params = {}, options = {})
      request = build_request(:disable_user, params)
      request.send_request(options)
    end

    # <p>Disassociates a specified app block builder from a specified app block.</p>
    # @param [Hash, Types::DisassociateAppBlockBuilderAppBlockRequest] params
    # @option params [String] :app_block_arn
    #   <p>The ARN of the app block.</p>
    # @option params [String] :app_block_builder_name
    #   <p>The name of the app block builder.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_block_arn: "Arn", # required
    #     app_block_builder_name: "Name", # required
    #   }
    #   options = {}
    #   response = client.disassociate_app_block_builder_app_block(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DisassociateAppBlockBuilderAppBlockResult]
    def disassociate_app_block_builder_app_block(params = {}, options = {})
      request = build_request(:disassociate_app_block_builder_app_block, params)
      request.send_request(options)
    end

    # <p>Disassociates the specified application from the fleet.</p>
    # @param [Hash, Types::DisassociateApplicationFleetRequest] params
    # @option params [String] :fleet_name
    #   <p>The name of the fleet.</p>
    # @option params [String] :application_arn
    #   <p>The ARN of the application.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     fleet_name: "Name", # required
    #     application_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.disassociate_application_fleet(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DisassociateApplicationFleetResult]
    def disassociate_application_fleet(params = {}, options = {})
      request = build_request(:disassociate_application_fleet, params)
      request.send_request(options)
    end

    # <p>Deletes the specified application from the specified entitlement.</p>
    # @param [Hash, Types::DisassociateApplicationFromEntitlementRequest] params
    # @option params [String] :stack_name
    #   <p>The name of the stack with which the entitlement is associated.</p>
    # @option params [String] :entitlement_name
    #   <p>The name of the entitlement.</p>
    # @option params [String] :application_identifier
    #   <p>The identifier of the application to remove from the entitlement.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     stack_name: "Name", # required
    #     entitlement_name: "Name", # required
    #     application_identifier: "String", # required
    #   }
    #   options = {}
    #   response = client.disassociate_application_from_entitlement(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DisassociateApplicationFromEntitlementResult]
    def disassociate_application_from_entitlement(params = {}, options = {})
      request = build_request(:disassociate_application_from_entitlement, params)
      request.send_request(options)
    end

    # <p>Disassociates the specified fleet from the specified stack.</p>
    # @param [Hash, Types::DisassociateFleetRequest] params
    # @option params [String] :fleet_name
    #   <p>The name of the fleet.</p>
    # @option params [String] :stack_name
    #   <p>The name of the stack.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     fleet_name: "String", # required
    #     stack_name: "String", # required
    #   }
    #   options = {}
    #   response = client.disassociate_fleet(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DisassociateFleetResult]
    def disassociate_fleet(params = {}, options = {})
      request = build_request(:disassociate_fleet, params)
      request.send_request(options)
    end

    # <p>Enables a user in the user pool. After being enabled, users can sign in to AppStream 2.0 and open applications from the stacks to which they are assigned.</p>
    # @param [Hash, Types::EnableUserRequest] params
    # @option params [String] :user_name
    #   <p>The email address of the user.</p>
    #            <note>
    #               <p>Users' email addresses are case-sensitive. During login, if they specify an email address that doesn't use the same capitalization as the email address specified when their user pool account was created, a "user does not exist" error message displays. </p>
    #            </note>
    # @option params [String] :authentication_type
    #   <p>The authentication type for the user. You must specify USERPOOL.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_name: "Username", # required
    #     authentication_type: "API" # One of: ["API", "SAML", "USERPOOL", "AWS_AD"], # required
    #   }
    #   options = {}
    #   response = client.enable_user(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::EnableUserResult]
    def enable_user(params = {}, options = {})
      request = build_request(:enable_user, params)
      request.send_request(options)
    end

    # <p>Immediately stops the specified streaming session.</p>
    # @param [Hash, Types::ExpireSessionRequest] params
    # @option params [String] :session_id
    #   <p>The identifier of the streaming session.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     session_id: "String", # required
    #   }
    #   options = {}
    #   response = client.expire_session(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::ExpireSessionResult]
    def expire_session(params = {}, options = {})
      request = build_request(:expire_session, params)
      request.send_request(options)
    end

    # <p>Retrieves the name of the fleet that is associated with the specified stack.</p>
    # @param [Hash, Types::ListAssociatedFleetsRequest] params
    # @option params [String] :stack_name
    #   <p>The name of the stack.</p>
    # @option params [String] :next_token
    #   <p>The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     stack_name: "String", # required
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_associated_fleets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     names: ["String"],
    #     next_token: "String"
    #   }
    # @return [Types::ListAssociatedFleetsResult]
    def list_associated_fleets(params = {}, options = {})
      request = build_request(:list_associated_fleets, params)
      request.send_request(options)
    end

    # <p>Retrieves the name of the stack with which the specified fleet is associated.</p>
    # @param [Hash, Types::ListAssociatedStacksRequest] params
    # @option params [String] :fleet_name
    #   <p>The name of the fleet.</p>
    # @option params [String] :next_token
    #   <p>The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     fleet_name: "String", # required
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_associated_stacks(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     names: ["String"],
    #     next_token: "String"
    #   }
    # @return [Types::ListAssociatedStacksResult]
    def list_associated_stacks(params = {}, options = {})
      request = build_request(:list_associated_stacks, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of entitled applications.</p>
    # @param [Hash, Types::ListEntitledApplicationsRequest] params
    # @option params [String] :stack_name
    #   <p>The name of the stack with which the entitlement is associated.</p>
    # @option params [String] :entitlement_name
    #   <p>The name of the entitlement.</p>
    # @option params [String] :next_token
    #   <p>The pagination token used to retrieve the next page of results for this operation.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum size of each page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     stack_name: "Name", # required
    #     entitlement_name: "Name", # required
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_entitled_applications(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     entitled_applications: [
    #       {
    #         application_identifier: "String", # required
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListEntitledApplicationsResult]
    def list_entitled_applications(params = {}, options = {})
      request = build_request(:list_entitled_applications, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of all tags for the specified AppStream 2.0 resource. You can tag AppStream 2.0 image builders, images, fleets, and stacks.</p>
    #          <p>For more information about tags, see <a href="https://docs.aws.amazon.com/appstream2/latest/developerguide/tagging-basic.html">Tagging Your Resources</a> in the <i>Amazon AppStream 2.0 Administration Guide</i>.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
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

    # <p>Starts an app block builder.</p>
    #          <p>An app block builder can only be started when it's associated with an app
    #             block.</p>
    #          <p>Starting an app block builder starts a new instance, which is equivalent to an elastic
    #             fleet instance with application builder assistance functionality.</p>
    # @param [Hash, Types::StartAppBlockBuilderRequest] params
    # @option params [String] :name
    #   <p>The name of the app block builder.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "Name", # required
    #   }
    #   options = {}
    #   response = client.start_app_block_builder(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     app_block_builder: {
    #       arn: "Arn", # required
    #       name: "String", # required
    #       display_name: "String",
    #       description: "String",
    #       platform: "WINDOWS_SERVER_2019" # One of: ["WINDOWS_SERVER_2019"], # required
    #       instance_type: "String", # required
    #       enable_default_internet_access: false,
    #       iam_role_arn: "Arn",
    #       vpc_config: { # required
    #         subnet_ids: ["String"],
    #         security_group_ids: ["String"]
    #       },
    #       state: "STARTING" # One of: ["STARTING", "RUNNING", "STOPPING", "STOPPED"], # required
    #       created_time: Time.now,
    #       app_block_builder_errors: [
    #         {
    #           error_code: "IAM_SERVICE_ROLE_MISSING_ENI_DESCRIBE_ACTION" # One of: ["IAM_SERVICE_ROLE_MISSING_ENI_DESCRIBE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_CREATE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_DELETE_ACTION", "NETWORK_INTERFACE_LIMIT_EXCEEDED", "INTERNAL_SERVICE_ERROR", "IAM_SERVICE_ROLE_IS_MISSING", "MACHINE_ROLE_IS_MISSING", "STS_DISABLED_IN_REGION", "SUBNET_HAS_INSUFFICIENT_IP_ADDRESSES", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SUBNET_ACTION", "SUBNET_NOT_FOUND", "IMAGE_NOT_FOUND", "INVALID_SUBNET_CONFIGURATION", "SECURITY_GROUPS_NOT_FOUND", "IGW_NOT_ATTACHED", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SECURITY_GROUPS_ACTION", "FLEET_STOPPED", "FLEET_INSTANCE_PROVISIONING_FAILURE", "DOMAIN_JOIN_ERROR_FILE_NOT_FOUND", "DOMAIN_JOIN_ERROR_ACCESS_DENIED", "DOMAIN_JOIN_ERROR_LOGON_FAILURE", "DOMAIN_JOIN_ERROR_INVALID_PARAMETER", "DOMAIN_JOIN_ERROR_MORE_DATA", "DOMAIN_JOIN_ERROR_NO_SUCH_DOMAIN", "DOMAIN_JOIN_ERROR_NOT_SUPPORTED", "DOMAIN_JOIN_NERR_INVALID_WORKGROUP_NAME", "DOMAIN_JOIN_NERR_WORKSTATION_NOT_STARTED", "DOMAIN_JOIN_ERROR_DS_MACHINE_ACCOUNT_QUOTA_EXCEEDED", "DOMAIN_JOIN_NERR_PASSWORD_EXPIRED", "DOMAIN_JOIN_INTERNAL_SERVICE_ERROR"],
    #           error_message: "String",
    #           error_timestamp: Time.now
    #         }
    #       ],
    #       state_change_reason: {
    #         code: "INTERNAL_ERROR" # One of: ["INTERNAL_ERROR"],
    #         message: "String"
    #       },
    #       access_endpoints: [
    #         {
    #           endpoint_type: "STREAMING" # One of: ["STREAMING"], # required
    #           vpce_id: "String"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::StartAppBlockBuilderResult]
    def start_app_block_builder(params = {}, options = {})
      request = build_request(:start_app_block_builder, params)
      request.send_request(options)
    end

    # <p>Starts the specified fleet.</p>
    # @param [Hash, Types::StartFleetRequest] params
    # @option params [String] :name
    #   <p>The name of the fleet.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "String", # required
    #   }
    #   options = {}
    #   response = client.start_fleet(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::StartFleetResult]
    def start_fleet(params = {}, options = {})
      request = build_request(:start_fleet, params)
      request.send_request(options)
    end

    # <p>Starts the specified image builder.</p>
    # @param [Hash, Types::StartImageBuilderRequest] params
    # @option params [String] :name
    #   <p>The name of the image builder.</p>
    # @option params [String] :appstream_agent_version
    #   <p>The version of the AppStream 2.0 agent to use for this image builder. To use the latest version of the AppStream 2.0 agent, specify [LATEST]. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "String", # required
    #     appstream_agent_version: "AppstreamAgentVersion"
    #   }
    #   options = {}
    #   response = client.start_image_builder(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     image_builder: {
    #       name: "String", # required
    #       arn: "Arn",
    #       image_arn: "Arn",
    #       description: "String",
    #       display_name: "String",
    #       vpc_config: {
    #         subnet_ids: ["String"],
    #         security_group_ids: ["String"]
    #       },
    #       instance_type: "String",
    #       platform: "WINDOWS" # One of: ["WINDOWS", "WINDOWS_SERVER_2016", "WINDOWS_SERVER_2019", "WINDOWS_SERVER_2022", "AMAZON_LINUX2", "RHEL8", "ROCKY_LINUX8"],
    #       iam_role_arn: "Arn",
    #       state: "PENDING" # One of: ["PENDING", "UPDATING_AGENT", "RUNNING", "STOPPING", "STOPPED", "REBOOTING", "SNAPSHOTTING", "DELETING", "FAILED", "UPDATING", "PENDING_QUALIFICATION"],
    #       state_change_reason: {
    #         code: "INTERNAL_ERROR" # One of: ["INTERNAL_ERROR", "IMAGE_UNAVAILABLE"],
    #         message: "String"
    #       },
    #       created_time: Time.now,
    #       enable_default_internet_access: false,
    #       domain_join_info: {
    #         directory_name: "DirectoryName",
    #         organizational_unit_distinguished_name: "OrganizationalUnitDistinguishedName"
    #       },
    #       network_access_configuration: {
    #         eni_private_ip_address: "String",
    #         eni_id: "String"
    #       },
    #       image_builder_errors: [
    #         {
    #           error_code: "IAM_SERVICE_ROLE_MISSING_ENI_DESCRIBE_ACTION" # One of: ["IAM_SERVICE_ROLE_MISSING_ENI_DESCRIBE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_CREATE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_DELETE_ACTION", "NETWORK_INTERFACE_LIMIT_EXCEEDED", "INTERNAL_SERVICE_ERROR", "IAM_SERVICE_ROLE_IS_MISSING", "MACHINE_ROLE_IS_MISSING", "STS_DISABLED_IN_REGION", "SUBNET_HAS_INSUFFICIENT_IP_ADDRESSES", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SUBNET_ACTION", "SUBNET_NOT_FOUND", "IMAGE_NOT_FOUND", "INVALID_SUBNET_CONFIGURATION", "SECURITY_GROUPS_NOT_FOUND", "IGW_NOT_ATTACHED", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SECURITY_GROUPS_ACTION", "FLEET_STOPPED", "FLEET_INSTANCE_PROVISIONING_FAILURE", "DOMAIN_JOIN_ERROR_FILE_NOT_FOUND", "DOMAIN_JOIN_ERROR_ACCESS_DENIED", "DOMAIN_JOIN_ERROR_LOGON_FAILURE", "DOMAIN_JOIN_ERROR_INVALID_PARAMETER", "DOMAIN_JOIN_ERROR_MORE_DATA", "DOMAIN_JOIN_ERROR_NO_SUCH_DOMAIN", "DOMAIN_JOIN_ERROR_NOT_SUPPORTED", "DOMAIN_JOIN_NERR_INVALID_WORKGROUP_NAME", "DOMAIN_JOIN_NERR_WORKSTATION_NOT_STARTED", "DOMAIN_JOIN_ERROR_DS_MACHINE_ACCOUNT_QUOTA_EXCEEDED", "DOMAIN_JOIN_NERR_PASSWORD_EXPIRED", "DOMAIN_JOIN_INTERNAL_SERVICE_ERROR"],
    #           error_message: "String",
    #           error_timestamp: Time.now
    #         }
    #       ],
    #       appstream_agent_version: "AppstreamAgentVersion",
    #       access_endpoints: [
    #         {
    #           endpoint_type: "STREAMING" # One of: ["STREAMING"], # required
    #           vpce_id: "String"
    #         }
    #       ],
    #       latest_appstream_agent_version: "TRUE" # One of: ["TRUE", "FALSE"]
    #     }
    #   }
    # @return [Types::StartImageBuilderResult]
    def start_image_builder(params = {}, options = {})
      request = build_request(:start_image_builder, params)
      request.send_request(options)
    end

    # <p>Stops an app block builder.</p>
    #          <p>Stopping an app block builder terminates the instance, and the instance state is not
    #             persisted.</p>
    # @param [Hash, Types::StopAppBlockBuilderRequest] params
    # @option params [String] :name
    #   <p>The name of the app block builder.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "Name", # required
    #   }
    #   options = {}
    #   response = client.stop_app_block_builder(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     app_block_builder: {
    #       arn: "Arn", # required
    #       name: "String", # required
    #       display_name: "String",
    #       description: "String",
    #       platform: "WINDOWS_SERVER_2019" # One of: ["WINDOWS_SERVER_2019"], # required
    #       instance_type: "String", # required
    #       enable_default_internet_access: false,
    #       iam_role_arn: "Arn",
    #       vpc_config: { # required
    #         subnet_ids: ["String"],
    #         security_group_ids: ["String"]
    #       },
    #       state: "STARTING" # One of: ["STARTING", "RUNNING", "STOPPING", "STOPPED"], # required
    #       created_time: Time.now,
    #       app_block_builder_errors: [
    #         {
    #           error_code: "IAM_SERVICE_ROLE_MISSING_ENI_DESCRIBE_ACTION" # One of: ["IAM_SERVICE_ROLE_MISSING_ENI_DESCRIBE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_CREATE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_DELETE_ACTION", "NETWORK_INTERFACE_LIMIT_EXCEEDED", "INTERNAL_SERVICE_ERROR", "IAM_SERVICE_ROLE_IS_MISSING", "MACHINE_ROLE_IS_MISSING", "STS_DISABLED_IN_REGION", "SUBNET_HAS_INSUFFICIENT_IP_ADDRESSES", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SUBNET_ACTION", "SUBNET_NOT_FOUND", "IMAGE_NOT_FOUND", "INVALID_SUBNET_CONFIGURATION", "SECURITY_GROUPS_NOT_FOUND", "IGW_NOT_ATTACHED", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SECURITY_GROUPS_ACTION", "FLEET_STOPPED", "FLEET_INSTANCE_PROVISIONING_FAILURE", "DOMAIN_JOIN_ERROR_FILE_NOT_FOUND", "DOMAIN_JOIN_ERROR_ACCESS_DENIED", "DOMAIN_JOIN_ERROR_LOGON_FAILURE", "DOMAIN_JOIN_ERROR_INVALID_PARAMETER", "DOMAIN_JOIN_ERROR_MORE_DATA", "DOMAIN_JOIN_ERROR_NO_SUCH_DOMAIN", "DOMAIN_JOIN_ERROR_NOT_SUPPORTED", "DOMAIN_JOIN_NERR_INVALID_WORKGROUP_NAME", "DOMAIN_JOIN_NERR_WORKSTATION_NOT_STARTED", "DOMAIN_JOIN_ERROR_DS_MACHINE_ACCOUNT_QUOTA_EXCEEDED", "DOMAIN_JOIN_NERR_PASSWORD_EXPIRED", "DOMAIN_JOIN_INTERNAL_SERVICE_ERROR"],
    #           error_message: "String",
    #           error_timestamp: Time.now
    #         }
    #       ],
    #       state_change_reason: {
    #         code: "INTERNAL_ERROR" # One of: ["INTERNAL_ERROR"],
    #         message: "String"
    #       },
    #       access_endpoints: [
    #         {
    #           endpoint_type: "STREAMING" # One of: ["STREAMING"], # required
    #           vpce_id: "String"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::StopAppBlockBuilderResult]
    def stop_app_block_builder(params = {}, options = {})
      request = build_request(:stop_app_block_builder, params)
      request.send_request(options)
    end

    # <p>Stops the specified fleet.</p>
    # @param [Hash, Types::StopFleetRequest] params
    # @option params [String] :name
    #   <p>The name of the fleet.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "String", # required
    #   }
    #   options = {}
    #   response = client.stop_fleet(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::StopFleetResult]
    def stop_fleet(params = {}, options = {})
      request = build_request(:stop_fleet, params)
      request.send_request(options)
    end

    # <p>Stops the specified image builder.</p>
    # @param [Hash, Types::StopImageBuilderRequest] params
    # @option params [String] :name
    #   <p>The name of the image builder.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "String", # required
    #   }
    #   options = {}
    #   response = client.stop_image_builder(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     image_builder: {
    #       name: "String", # required
    #       arn: "Arn",
    #       image_arn: "Arn",
    #       description: "String",
    #       display_name: "String",
    #       vpc_config: {
    #         subnet_ids: ["String"],
    #         security_group_ids: ["String"]
    #       },
    #       instance_type: "String",
    #       platform: "WINDOWS" # One of: ["WINDOWS", "WINDOWS_SERVER_2016", "WINDOWS_SERVER_2019", "WINDOWS_SERVER_2022", "AMAZON_LINUX2", "RHEL8", "ROCKY_LINUX8"],
    #       iam_role_arn: "Arn",
    #       state: "PENDING" # One of: ["PENDING", "UPDATING_AGENT", "RUNNING", "STOPPING", "STOPPED", "REBOOTING", "SNAPSHOTTING", "DELETING", "FAILED", "UPDATING", "PENDING_QUALIFICATION"],
    #       state_change_reason: {
    #         code: "INTERNAL_ERROR" # One of: ["INTERNAL_ERROR", "IMAGE_UNAVAILABLE"],
    #         message: "String"
    #       },
    #       created_time: Time.now,
    #       enable_default_internet_access: false,
    #       domain_join_info: {
    #         directory_name: "DirectoryName",
    #         organizational_unit_distinguished_name: "OrganizationalUnitDistinguishedName"
    #       },
    #       network_access_configuration: {
    #         eni_private_ip_address: "String",
    #         eni_id: "String"
    #       },
    #       image_builder_errors: [
    #         {
    #           error_code: "IAM_SERVICE_ROLE_MISSING_ENI_DESCRIBE_ACTION" # One of: ["IAM_SERVICE_ROLE_MISSING_ENI_DESCRIBE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_CREATE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_DELETE_ACTION", "NETWORK_INTERFACE_LIMIT_EXCEEDED", "INTERNAL_SERVICE_ERROR", "IAM_SERVICE_ROLE_IS_MISSING", "MACHINE_ROLE_IS_MISSING", "STS_DISABLED_IN_REGION", "SUBNET_HAS_INSUFFICIENT_IP_ADDRESSES", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SUBNET_ACTION", "SUBNET_NOT_FOUND", "IMAGE_NOT_FOUND", "INVALID_SUBNET_CONFIGURATION", "SECURITY_GROUPS_NOT_FOUND", "IGW_NOT_ATTACHED", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SECURITY_GROUPS_ACTION", "FLEET_STOPPED", "FLEET_INSTANCE_PROVISIONING_FAILURE", "DOMAIN_JOIN_ERROR_FILE_NOT_FOUND", "DOMAIN_JOIN_ERROR_ACCESS_DENIED", "DOMAIN_JOIN_ERROR_LOGON_FAILURE", "DOMAIN_JOIN_ERROR_INVALID_PARAMETER", "DOMAIN_JOIN_ERROR_MORE_DATA", "DOMAIN_JOIN_ERROR_NO_SUCH_DOMAIN", "DOMAIN_JOIN_ERROR_NOT_SUPPORTED", "DOMAIN_JOIN_NERR_INVALID_WORKGROUP_NAME", "DOMAIN_JOIN_NERR_WORKSTATION_NOT_STARTED", "DOMAIN_JOIN_ERROR_DS_MACHINE_ACCOUNT_QUOTA_EXCEEDED", "DOMAIN_JOIN_NERR_PASSWORD_EXPIRED", "DOMAIN_JOIN_INTERNAL_SERVICE_ERROR"],
    #           error_message: "String",
    #           error_timestamp: Time.now
    #         }
    #       ],
    #       appstream_agent_version: "AppstreamAgentVersion",
    #       access_endpoints: [
    #         {
    #           endpoint_type: "STREAMING" # One of: ["STREAMING"], # required
    #           vpce_id: "String"
    #         }
    #       ],
    #       latest_appstream_agent_version: "TRUE" # One of: ["TRUE", "FALSE"]
    #     }
    #   }
    # @return [Types::StopImageBuilderResult]
    def stop_image_builder(params = {}, options = {})
      request = build_request(:stop_image_builder, params)
      request.send_request(options)
    end

    # <p>Adds or overwrites one or more tags for the specified AppStream 2.0 resource. You can tag AppStream 2.0 image builders, images, fleets, and stacks.</p>
    #          <p>Each tag consists of a key and an optional value. If a resource already has a tag with the same key, 
    #                 this operation updates its value.</p>
    #          <p>To list the current tags for your resources, use <a>ListTagsForResource</a>.
    #                 To disassociate tags from your resources, use <a>UntagResource</a>.</p>
    #          <p>For more information about tags, see <a href="https://docs.aws.amazon.com/appstream2/latest/developerguide/tagging-basic.html">Tagging Your Resources</a> in the <i>Amazon AppStream 2.0 Administration Guide</i>.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to associate. A tag is a key-value pair, and the value is optional. For example, Environment=Test. If you do not specify a value, Environment=. </p>
    #            <p>If you do not specify a value, the value is set to an empty string.</p>
    #            <p>Generally allowed characters are: letters, numbers, and spaces representable in UTF-8, and the following special characters: </p>
    #            <p>_ . : / = + \ - @</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
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

    # <p>Disassociates one or more specified tags from the specified AppStream 2.0 resource.</p>
    #          <p>To list the current tags for your resources, use <a>ListTagsForResource</a>.</p>
    #          <p>For more information about tags, see <a href="https://docs.aws.amazon.com/appstream2/latest/developerguide/tagging-basic.html">Tagging Your Resources</a> in the <i>Amazon AppStream 2.0 Administration Guide</i>.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The tag keys for the tags to disassociate.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
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

    # <p>Updates an app block builder.</p>
    #          <p>If the app block builder is in the <code>STARTING</code> or <code>STOPPING</code>
    #             state, you can't update it. If the app block builder is in the <code>RUNNING</code>
    #             state, you can only update the DisplayName and Description. If the app block builder is
    #             in the <code>STOPPED</code> state, you can update any attribute except the Name.</p>
    # @param [Hash, Types::UpdateAppBlockBuilderRequest] params
    # @option params [String] :name
    #   <p>The unique name for the app block builder.</p>
    # @option params [String] :description
    #   <p>The description of the app block builder.</p>
    # @option params [String] :display_name
    #   <p>The display name of the app block builder.</p>
    # @option params [String] :platform
    #   <p>The platform of the app block builder.</p>
    #            <p>
    #               <code>WINDOWS_SERVER_2019</code> is the only valid value.</p>
    # @option params [String] :instance_type
    #   <p>The instance type to use when launching the app block builder. The following instance
    #                   types are available:</p>
    #            <ul>
    #               <li>
    #                  <p>stream.standard.small</p>
    #               </li>
    #               <li>
    #                  <p>stream.standard.medium</p>
    #               </li>
    #               <li>
    #                  <p>stream.standard.large</p>
    #               </li>
    #               <li>
    #                  <p>stream.standard.xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.standard.2xlarge</p>
    #               </li>
    #            </ul>
    # @option params [Types::VpcConfig] :vpc_config
    #   <p>The VPC configuration for the app block builder.</p>
    #            <p>App block builders require that you specify at least two subnets in different availability
    #               zones.</p>
    # @option params [Boolean] :enable_default_internet_access
    #   <p>Enables or disables default internet access for the app block builder.</p>
    # @option params [String] :iam_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role to apply to the app block builder. To
    #               assume a role, the app block builder calls the AWS Security Token Service (STS)
    #               <code>AssumeRole</code> API operation and passes the ARN of the role to use. The
    #               operation creates a new session with temporary credentials. AppStream 2.0 retrieves the
    #               temporary credentials and creates the <b>appstream_machine_role</b> credential profile on the instance.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/appstream2/latest/developerguide/using-iam-roles-to-grant-permissions-to-applications-scripts-streaming-instances.html">Using an IAM Role to Grant Permissions to Applications and Scripts Running on AppStream 2.0 Streaming Instances</a> in the <i>Amazon AppStream 2.0 Administration Guide</i>.</p>
    # @option params [Array<Types::AccessEndpoint>] :access_endpoints
    #   <p>The list of interface VPC endpoint (interface endpoint) objects. Administrators can connect to the app block builder only through the specified endpoints.</p>
    # @option params [Array<String>] :attributes_to_delete
    #   <p>The attributes to delete from the app block builder.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "Name", # required
    #     description: "Description",
    #     display_name: "DisplayName",
    #     platform: "WINDOWS" # One of: ["WINDOWS", "WINDOWS_SERVER_2016", "WINDOWS_SERVER_2019", "WINDOWS_SERVER_2022", "AMAZON_LINUX2", "RHEL8", "ROCKY_LINUX8"],
    #     instance_type: "String",
    #     vpc_config: {
    #       subnet_ids: ["String"],
    #       security_group_ids: ["String"]
    #     },
    #     enable_default_internet_access: false,
    #     iam_role_arn: "Arn",
    #     access_endpoints: [
    #       {
    #         endpoint_type: "STREAMING" # One of: ["STREAMING"], # required
    #         vpce_id: "String"
    #       }
    #     ],
    #     attributes_to_delete: ["IAM_ROLE_ARN" # One of: ["IAM_ROLE_ARN", "ACCESS_ENDPOINTS", "VPC_CONFIGURATION_SECURITY_GROUP_IDS"]]
    #   }
    #   options = {}
    #   response = client.update_app_block_builder(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     app_block_builder: {
    #       arn: "Arn", # required
    #       name: "String", # required
    #       display_name: "String",
    #       description: "String",
    #       platform: "WINDOWS_SERVER_2019" # One of: ["WINDOWS_SERVER_2019"], # required
    #       instance_type: "String", # required
    #       enable_default_internet_access: false,
    #       iam_role_arn: "Arn",
    #       vpc_config: { # required
    #         subnet_ids: ["String"],
    #         security_group_ids: ["String"]
    #       },
    #       state: "STARTING" # One of: ["STARTING", "RUNNING", "STOPPING", "STOPPED"], # required
    #       created_time: Time.now,
    #       app_block_builder_errors: [
    #         {
    #           error_code: "IAM_SERVICE_ROLE_MISSING_ENI_DESCRIBE_ACTION" # One of: ["IAM_SERVICE_ROLE_MISSING_ENI_DESCRIBE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_CREATE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_DELETE_ACTION", "NETWORK_INTERFACE_LIMIT_EXCEEDED", "INTERNAL_SERVICE_ERROR", "IAM_SERVICE_ROLE_IS_MISSING", "MACHINE_ROLE_IS_MISSING", "STS_DISABLED_IN_REGION", "SUBNET_HAS_INSUFFICIENT_IP_ADDRESSES", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SUBNET_ACTION", "SUBNET_NOT_FOUND", "IMAGE_NOT_FOUND", "INVALID_SUBNET_CONFIGURATION", "SECURITY_GROUPS_NOT_FOUND", "IGW_NOT_ATTACHED", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SECURITY_GROUPS_ACTION", "FLEET_STOPPED", "FLEET_INSTANCE_PROVISIONING_FAILURE", "DOMAIN_JOIN_ERROR_FILE_NOT_FOUND", "DOMAIN_JOIN_ERROR_ACCESS_DENIED", "DOMAIN_JOIN_ERROR_LOGON_FAILURE", "DOMAIN_JOIN_ERROR_INVALID_PARAMETER", "DOMAIN_JOIN_ERROR_MORE_DATA", "DOMAIN_JOIN_ERROR_NO_SUCH_DOMAIN", "DOMAIN_JOIN_ERROR_NOT_SUPPORTED", "DOMAIN_JOIN_NERR_INVALID_WORKGROUP_NAME", "DOMAIN_JOIN_NERR_WORKSTATION_NOT_STARTED", "DOMAIN_JOIN_ERROR_DS_MACHINE_ACCOUNT_QUOTA_EXCEEDED", "DOMAIN_JOIN_NERR_PASSWORD_EXPIRED", "DOMAIN_JOIN_INTERNAL_SERVICE_ERROR"],
    #           error_message: "String",
    #           error_timestamp: Time.now
    #         }
    #       ],
    #       state_change_reason: {
    #         code: "INTERNAL_ERROR" # One of: ["INTERNAL_ERROR"],
    #         message: "String"
    #       },
    #       access_endpoints: [
    #         {
    #           endpoint_type: "STREAMING" # One of: ["STREAMING"], # required
    #           vpce_id: "String"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::UpdateAppBlockBuilderResult]
    def update_app_block_builder(params = {}, options = {})
      request = build_request(:update_app_block_builder, params)
      request.send_request(options)
    end

    # <p>Updates the specified application.</p>
    # @param [Hash, Types::UpdateApplicationRequest] params
    # @option params [String] :name
    #   <p>The name of the application. This name is visible to users when display name is not specified.</p>
    # @option params [String] :display_name
    #   <p>The display name of the application. This name is visible to users in the application catalog.</p>
    # @option params [String] :description
    #   <p>The description of the application.</p>
    # @option params [Types::S3Location] :icon_s3_location
    #   <p>The icon S3 location of the application.</p>
    # @option params [String] :launch_path
    #   <p>The launch path of the application.</p>
    # @option params [String] :working_directory
    #   <p>The working directory of the application.</p>
    # @option params [String] :launch_parameters
    #   <p>The launch parameters of the application.</p>
    # @option params [String] :app_block_arn
    #   <p>The ARN of the app block.</p>
    # @option params [Array<String>] :attributes_to_delete
    #   <p>The attributes to delete for an application.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "Name", # required
    #     display_name: "DisplayName",
    #     description: "Description",
    #     icon_s3_location: {
    #       s3_bucket: "S3Bucket", # required
    #       s3_key: "S3Key"
    #     },
    #     launch_path: "String",
    #     working_directory: "String",
    #     launch_parameters: "String",
    #     app_block_arn: "Arn",
    #     attributes_to_delete: ["LAUNCH_PARAMETERS" # One of: ["LAUNCH_PARAMETERS", "WORKING_DIRECTORY"]]
    #   }
    #   options = {}
    #   response = client.update_application(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     application: {
    #       name: "String",
    #       display_name: "String",
    #       icon_url: "String",
    #       launch_path: "String",
    #       launch_parameters: "String",
    #       enabled: false,
    #       metadata: {
    #         "String" => "String"
    #       },
    #       working_directory: "String",
    #       description: "String",
    #       arn: "Arn",
    #       app_block_arn: "Arn",
    #       icon_s3_location: {
    #         s3_bucket: "S3Bucket", # required
    #         s3_key: "S3Key"
    #       },
    #       platforms: ["WINDOWS" # One of: ["WINDOWS", "WINDOWS_SERVER_2016", "WINDOWS_SERVER_2019", "WINDOWS_SERVER_2022", "AMAZON_LINUX2", "RHEL8", "ROCKY_LINUX8"]],
    #       instance_families: ["String"],
    #       created_time: Time.now
    #     }
    #   }
    # @return [Types::UpdateApplicationResult]
    def update_application(params = {}, options = {})
      request = build_request(:update_application, params)
      request.send_request(options)
    end

    # <p>Updates the specified Directory Config object in AppStream 2.0. This object includes the configuration information required to join fleets and image builders to Microsoft Active Directory domains.</p>
    # @param [Hash, Types::UpdateDirectoryConfigRequest] params
    # @option params [String] :directory_name
    #   <p>The name of the Directory Config object.</p>
    # @option params [Array<String>] :organizational_unit_distinguished_names
    #   <p>The distinguished names of the organizational units for computer accounts.</p>
    # @option params [Types::ServiceAccountCredentials] :service_account_credentials
    #   <p>The credentials for the service account used by the fleet or image builder to connect to the directory.</p>
    # @option params [Types::CertificateBasedAuthProperties] :certificate_based_auth_properties
    #   <p>The certificate-based authentication properties used to authenticate SAML 2.0 Identity
    #               Provider (IdP) user identities to Active Directory domain-joined streaming instances.
    #               Fallback is turned on by default when certificate-based authentication is <b>Enabled</b> . Fallback allows users to log in using their AD
    #               domain password if certificate-based authentication is unsuccessful, or to unlock a
    #               desktop lock screen. <b>Enabled_no_directory_login_fallback</b> enables certificate-based
    #               authentication, but does not allow users to log in using their AD domain password. Users
    #               will be disconnected to re-authenticate using certificates.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_name: "DirectoryName", # required
    #     organizational_unit_distinguished_names: ["OrganizationalUnitDistinguishedName"],
    #     service_account_credentials: {
    #       account_name: "AccountName", # required
    #       account_password: "AccountPassword", # required
    #     },
    #     certificate_based_auth_properties: {
    #       status: "DISABLED" # One of: ["DISABLED", "ENABLED", "ENABLED_NO_DIRECTORY_LOGIN_FALLBACK"],
    #       certificate_authority_arn: "Arn"
    #     }
    #   }
    #   options = {}
    #   response = client.update_directory_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     directory_config: {
    #       directory_name: "DirectoryName", # required
    #       organizational_unit_distinguished_names: ["OrganizationalUnitDistinguishedName"],
    #       service_account_credentials: {
    #         account_name: "AccountName", # required
    #         account_password: "AccountPassword", # required
    #       },
    #       created_time: Time.now,
    #       certificate_based_auth_properties: {
    #         status: "DISABLED" # One of: ["DISABLED", "ENABLED", "ENABLED_NO_DIRECTORY_LOGIN_FALLBACK"],
    #         certificate_authority_arn: "Arn"
    #       }
    #     }
    #   }
    # @return [Types::UpdateDirectoryConfigResult]
    def update_directory_config(params = {}, options = {})
      request = build_request(:update_directory_config, params)
      request.send_request(options)
    end

    # <p>Updates the specified entitlement.</p>
    # @param [Hash, Types::UpdateEntitlementRequest] params
    # @option params [String] :name
    #   <p>The name of the entitlement.</p>
    # @option params [String] :stack_name
    #   <p>The name of the stack with which the entitlement is associated.</p>
    # @option params [String] :description
    #   <p>The description of the entitlement.</p>
    # @option params [String] :app_visibility
    #   <p>Specifies whether all or only selected apps are entitled.</p>
    # @option params [Array<Types::EntitlementAttribute>] :attributes
    #   <p>The attributes of the entitlement.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "Name", # required
    #     stack_name: "Name", # required
    #     description: "Description",
    #     app_visibility: "ALL" # One of: ["ALL", "ASSOCIATED"],
    #     attributes: [
    #       {
    #         name: "String", # required
    #         value: "String", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_entitlement(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     entitlement: {
    #       name: "Name", # required
    #       stack_name: "Name", # required
    #       description: "Description",
    #       app_visibility: "ALL" # One of: ["ALL", "ASSOCIATED"], # required
    #       attributes: [ # required
    #         {
    #           name: "String", # required
    #           value: "String", # required
    #         }
    #       ],
    #       created_time: Time.now,
    #       last_modified_time: Time.now
    #     }
    #   }
    # @return [Types::UpdateEntitlementResult]
    def update_entitlement(params = {}, options = {})
      request = build_request(:update_entitlement, params)
      request.send_request(options)
    end

    # <p>Updates the specified fleet.</p>
    #          <p>If the fleet is in the <code>STOPPED</code> state, you can update any attribute except
    #             the fleet name.</p>
    #          <p>If the fleet is in the <code>RUNNING</code> state, you can update the following based
    #             on the fleet type:</p>
    #          <ul>
    #             <li>
    #                <p>Always-On and On-Demand fleet types</p>
    #                <p>You can update the  <code>DisplayName</code>, <code>ComputeCapacity</code>,
    #                         <code>ImageARN</code>, <code>ImageName</code>,
    #                         <code>IdleDisconnectTimeoutInSeconds</code>, and
    #                         <code>DisconnectTimeoutInSeconds</code> attributes.</p>
    #             </li>
    #             <li>
    #                <p>Elastic fleet type</p>
    #                <p>You can update the  <code>DisplayName</code>,
    #                         <code>IdleDisconnectTimeoutInSeconds</code>,
    #                     <code>DisconnectTimeoutInSeconds</code>, <code>MaxConcurrentSessions</code>, <code>SessionScriptS3Location</code>
    #                     and <code>UsbDeviceFilterStrings</code> attributes.</p>
    #             </li>
    #          </ul>
    #          <p>If the fleet is in the <code>STARTING</code> or <code>STOPPED</code> state, you can't update it.</p>
    # @param [Hash, Types::UpdateFleetRequest] params
    # @option params [String] :image_name
    #   <p>The name of the image used to create the fleet.</p>
    # @option params [String] :image_arn
    #   <p>The ARN of the public, private, or shared image to use.</p>
    # @option params [String] :name
    #   <p>A unique name for the fleet.</p>
    # @option params [String] :instance_type
    #   <p>The instance type to use when launching fleet instances. The following instance types are available:</p>
    #            <ul>
    #               <li>
    #                  <p>stream.standard.small</p>
    #               </li>
    #               <li>
    #                  <p>stream.standard.medium</p>
    #               </li>
    #               <li>
    #                  <p>stream.standard.large</p>
    #               </li>
    #               <li>
    #                  <p>stream.standard.xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.standard.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.compute.large</p>
    #               </li>
    #               <li>
    #                  <p>stream.compute.xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.compute.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.compute.4xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.compute.8xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.large</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.4xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.8xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.z1d.large</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.z1d.xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.z1d.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.z1d.3xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.z1d.6xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.z1d.12xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-design.large</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-design.xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-design.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-design.4xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-desktop.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g4dn.xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g4dn.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g4dn.4xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g4dn.8xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g4dn.12xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g4dn.16xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-pro.4xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-pro.8xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-pro.16xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g5.xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g5.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g5.4xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g5.8xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g5.16xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g5.12xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g5.24xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g6.xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g6.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g6.4xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g6.8xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g6.16xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g6.12xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g6.24xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.gr6.4xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.gr6.8xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g6f.large</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g6f.xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g6f.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g6f.4xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.gr6f.4xlarge</p>
    #               </li>
    #            </ul>
    #            <p>The following instance types are available for Elastic fleets:</p>
    #            <ul>
    #               <li>
    #                  <p>stream.standard.small</p>
    #               </li>
    #               <li>
    #                  <p>stream.standard.medium</p>
    #               </li>
    #               <li>
    #                  <p>stream.standard.large</p>
    #               </li>
    #               <li>
    #                  <p>stream.standard.xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.standard.2xlarge</p>
    #               </li>
    #            </ul>
    # @option params [Types::ComputeCapacity] :compute_capacity
    #   <p>The desired capacity for the fleet. This is not allowed for Elastic fleets.</p>
    # @option params [Types::VpcConfig] :vpc_config
    #   <p>The VPC configuration for the fleet. This is required for Elastic fleets, but not required for other fleet types. Elastic fleets require that you specify at least two subnets in different availability zones. </p>
    # @option params [Integer] :max_user_duration_in_seconds
    #   <p>The maximum amount of time that a streaming session can remain active, in seconds. If users are still connected to a streaming instance five minutes before this limit is reached, they are prompted to save any open documents before being disconnected. After this time elapses, the instance is terminated and replaced by a new instance.</p>
    #            <p>Specify a value between 600 and 432000.</p>
    # @option params [Integer] :disconnect_timeout_in_seconds
    #   <p>The amount of time that a streaming session remains active after users disconnect. If users try to reconnect to the streaming session after a disconnection or network interruption within this time interval, they are connected to their previous session. Otherwise, they are connected to a new session with a new streaming instance. </p>
    #            <p>Specify a value between 60 and 36000.</p>
    # @option params [Boolean] :delete_vpc_config
    #   <p>Deletes the VPC association for the specified fleet.</p>
    # @option params [String] :description
    #   <p>The description to display.</p>
    # @option params [String] :display_name
    #   <p>The fleet name to display.</p>
    # @option params [Boolean] :enable_default_internet_access
    #   <p>Enables or disables default internet access for the fleet.</p>
    # @option params [Types::DomainJoinInfo] :domain_join_info
    #   <p>The name of the directory and organizational unit (OU) to use to join the fleet to a Microsoft Active Directory domain. </p>
    # @option params [Integer] :idle_disconnect_timeout_in_seconds
    #   <p>The amount of time that users can be idle (inactive) before they are disconnected
    #               from their streaming session and the <code>DisconnectTimeoutInSeconds</code> time
    #               interval begins. Users are notified before they are disconnected due to inactivity. If
    #               users try to reconnect to the streaming session before the time interval specified in
    #               <code>DisconnectTimeoutInSeconds</code> elapses, they are connected to their
    #               previous session. Users are considered idle when they stop providing keyboard or mouse
    #               input during their streaming session. File uploads and downloads, audio in, audio out,
    #               and pixels changing do not qualify as user activity. If users continue to be idle after
    #               the time interval in <code>IdleDisconnectTimeoutInSeconds</code> elapses, they are
    #               disconnected. </p>
    #            <p>To prevent users from being disconnected due to inactivity, specify a value of 0. Otherwise, specify a value between 60 and 36000. The default value is 0.</p>
    #            <note>
    #               <p>If you enable this feature, we recommend that you specify a value that corresponds exactly to a whole number of minutes (for example, 60, 120, and 180). If you don't do this, the value is rounded to the nearest minute. For example, if you specify a value of 70, users are disconnected after 1 minute of inactivity. If you specify a value that is at the midpoint between two different minutes, the value is rounded up. For example, if you specify a value of 90, users are disconnected after 2 minutes of inactivity. </p>
    #            </note>
    # @option params [Array<String>] :attributes_to_delete
    #   <p>The fleet attributes to delete.</p>
    # @option params [String] :iam_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role to apply to the fleet. To assume a role, a fleet instance calls the AWS Security Token Service (STS) <code>AssumeRole</code> API operation and passes the ARN of the role to use. The operation creates a new session with temporary credentials. AppStream 2.0 retrieves the temporary credentials and creates the <b>appstream_machine_role</b> credential profile on the instance.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/appstream2/latest/developerguide/using-iam-roles-to-grant-permissions-to-applications-scripts-streaming-instances.html">Using an IAM Role to Grant Permissions to Applications and Scripts Running on AppStream 2.0 Streaming Instances</a> in the <i>Amazon AppStream 2.0 Administration Guide</i>.</p>
    # @option params [String] :stream_view
    #   <p>The AppStream 2.0 view that is displayed to your users when they stream from the fleet. When <code>APP</code> is specified, only the windows of applications opened by users display. When <code>DESKTOP</code> is specified, the standard desktop that is provided by the operating system displays.</p>
    #            <p>The default value is <code>APP</code>.</p>
    # @option params [String] :platform
    #   <p>The platform of the fleet. WINDOWS_SERVER_2019 and AMAZON_LINUX2 are supported for Elastic fleets. </p>
    # @option params [Integer] :max_concurrent_sessions
    #   <p>The maximum number of concurrent sessions for a fleet.</p>
    # @option params [Array<String>] :usb_device_filter_strings
    #   <p>The USB device filter strings that specify which USB devices a user can redirect to the fleet streaming session, when using the Windows native client. This is allowed but not required for Elastic fleets.</p>
    # @option params [Types::S3Location] :session_script_s3_location
    #   <p>The S3 location of the session scripts configuration zip file. This only applies to Elastic fleets. </p>
    # @option params [Integer] :max_sessions_per_instance
    #   <p>The maximum number of user sessions on an instance. This only applies to multi-session fleets.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     image_name: "String",
    #     image_arn: "Arn",
    #     name: "Name",
    #     instance_type: "String",
    #     compute_capacity: {
    #       desired_instances: 1,
    #       desired_sessions: 1
    #     },
    #     vpc_config: {
    #       subnet_ids: ["String"],
    #       security_group_ids: ["String"]
    #     },
    #     max_user_duration_in_seconds: 1,
    #     disconnect_timeout_in_seconds: 1,
    #     delete_vpc_config: false,
    #     description: "Description",
    #     display_name: "DisplayName",
    #     enable_default_internet_access: false,
    #     domain_join_info: {
    #       directory_name: "DirectoryName",
    #       organizational_unit_distinguished_name: "OrganizationalUnitDistinguishedName"
    #     },
    #     idle_disconnect_timeout_in_seconds: 1,
    #     attributes_to_delete: ["VPC_CONFIGURATION" # One of: ["VPC_CONFIGURATION", "VPC_CONFIGURATION_SECURITY_GROUP_IDS", "DOMAIN_JOIN_INFO", "IAM_ROLE_ARN", "USB_DEVICE_FILTER_STRINGS", "SESSION_SCRIPT_S3_LOCATION", "MAX_SESSIONS_PER_INSTANCE"]],
    #     iam_role_arn: "Arn",
    #     stream_view: "APP" # One of: ["APP", "DESKTOP"],
    #     platform: "WINDOWS" # One of: ["WINDOWS", "WINDOWS_SERVER_2016", "WINDOWS_SERVER_2019", "WINDOWS_SERVER_2022", "AMAZON_LINUX2", "RHEL8", "ROCKY_LINUX8"],
    #     max_concurrent_sessions: 1,
    #     usb_device_filter_strings: ["UsbDeviceFilterString"],
    #     session_script_s3_location: {
    #       s3_bucket: "S3Bucket", # required
    #       s3_key: "S3Key"
    #     },
    #     max_sessions_per_instance: 1
    #   }
    #   options = {}
    #   response = client.update_fleet(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     fleet: {
    #       arn: "Arn", # required
    #       name: "String", # required
    #       display_name: "String",
    #       description: "String",
    #       image_name: "String",
    #       image_arn: "Arn",
    #       instance_type: "String", # required
    #       fleet_type: "ALWAYS_ON" # One of: ["ALWAYS_ON", "ON_DEMAND", "ELASTIC"],
    #       compute_capacity_status: { # required
    #         desired: 1, # required
    #         running: 1,
    #         in_use: 1,
    #         available: 1,
    #         desired_user_sessions: 1,
    #         available_user_sessions: 1,
    #         active_user_sessions: 1,
    #         actual_user_sessions: 1
    #       },
    #       max_user_duration_in_seconds: 1,
    #       disconnect_timeout_in_seconds: 1,
    #       state: "STARTING" # One of: ["STARTING", "RUNNING", "STOPPING", "STOPPED"], # required
    #       vpc_config: {
    #         subnet_ids: ["String"],
    #         security_group_ids: ["String"]
    #       },
    #       created_time: Time.now,
    #       fleet_errors: [
    #         {
    #           error_code: "IAM_SERVICE_ROLE_MISSING_ENI_DESCRIBE_ACTION" # One of: ["IAM_SERVICE_ROLE_MISSING_ENI_DESCRIBE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_CREATE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_DELETE_ACTION", "NETWORK_INTERFACE_LIMIT_EXCEEDED", "INTERNAL_SERVICE_ERROR", "IAM_SERVICE_ROLE_IS_MISSING", "MACHINE_ROLE_IS_MISSING", "STS_DISABLED_IN_REGION", "SUBNET_HAS_INSUFFICIENT_IP_ADDRESSES", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SUBNET_ACTION", "SUBNET_NOT_FOUND", "IMAGE_NOT_FOUND", "INVALID_SUBNET_CONFIGURATION", "SECURITY_GROUPS_NOT_FOUND", "IGW_NOT_ATTACHED", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SECURITY_GROUPS_ACTION", "FLEET_STOPPED", "FLEET_INSTANCE_PROVISIONING_FAILURE", "DOMAIN_JOIN_ERROR_FILE_NOT_FOUND", "DOMAIN_JOIN_ERROR_ACCESS_DENIED", "DOMAIN_JOIN_ERROR_LOGON_FAILURE", "DOMAIN_JOIN_ERROR_INVALID_PARAMETER", "DOMAIN_JOIN_ERROR_MORE_DATA", "DOMAIN_JOIN_ERROR_NO_SUCH_DOMAIN", "DOMAIN_JOIN_ERROR_NOT_SUPPORTED", "DOMAIN_JOIN_NERR_INVALID_WORKGROUP_NAME", "DOMAIN_JOIN_NERR_WORKSTATION_NOT_STARTED", "DOMAIN_JOIN_ERROR_DS_MACHINE_ACCOUNT_QUOTA_EXCEEDED", "DOMAIN_JOIN_NERR_PASSWORD_EXPIRED", "DOMAIN_JOIN_INTERNAL_SERVICE_ERROR"],
    #           error_message: "String"
    #         }
    #       ],
    #       enable_default_internet_access: false,
    #       domain_join_info: {
    #         directory_name: "DirectoryName",
    #         organizational_unit_distinguished_name: "OrganizationalUnitDistinguishedName"
    #       },
    #       idle_disconnect_timeout_in_seconds: 1,
    #       iam_role_arn: "Arn",
    #       stream_view: "APP" # One of: ["APP", "DESKTOP"],
    #       platform: "WINDOWS" # One of: ["WINDOWS", "WINDOWS_SERVER_2016", "WINDOWS_SERVER_2019", "WINDOWS_SERVER_2022", "AMAZON_LINUX2", "RHEL8", "ROCKY_LINUX8"],
    #       max_concurrent_sessions: 1,
    #       usb_device_filter_strings: ["UsbDeviceFilterString"],
    #       session_script_s3_location: {
    #         s3_bucket: "S3Bucket", # required
    #         s3_key: "S3Key"
    #       },
    #       max_sessions_per_instance: 1
    #     }
    #   }
    # @return [Types::UpdateFleetResult]
    def update_fleet(params = {}, options = {})
      request = build_request(:update_fleet, params)
      request.send_request(options)
    end

    # <p>Adds or updates permissions for the specified private image. </p>
    # @param [Hash, Types::UpdateImagePermissionsRequest] params
    # @option params [String] :name
    #   <p>The name of the private image.</p>
    # @option params [String] :shared_account_id
    #   <p>The 12-digit identifier of the AWS account for which you want add or update image permissions.</p>
    # @option params [Types::ImagePermissions] :image_permissions
    #   <p>The permissions for the image.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "Name", # required
    #     shared_account_id: "AwsAccountId", # required
    #     image_permissions: { # required
    #       allow_fleet: false,
    #       allow_image_builder: false
    #     }
    #   }
    #   options = {}
    #   response = client.update_image_permissions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateImagePermissionsResult]
    def update_image_permissions(params = {}, options = {})
      request = build_request(:update_image_permissions, params)
      request.send_request(options)
    end

    # <p>Updates the specified fields for the specified stack.</p>
    # @param [Hash, Types::UpdateStackRequest] params
    # @option params [String] :display_name
    #   <p>The stack name to display.</p>
    # @option params [String] :description
    #   <p>The description to display.</p>
    # @option params [String] :name
    #   <p>The name of the stack.</p>
    # @option params [Array<Types::StorageConnector>] :storage_connectors
    #   <p>The storage connectors to enable.</p>
    # @option params [Boolean] :delete_storage_connectors
    #   <p>Deletes the storage connectors currently enabled for the stack.</p>
    # @option params [String] :redirect_url
    #   <p>The URL that users are redirected to after their streaming session ends.</p>
    # @option params [String] :feedback_url
    #   <p>The URL that users are redirected to after they choose the Send Feedback link. If no URL is specified, no Send Feedback link is displayed.</p>
    # @option params [Array<String>] :attributes_to_delete
    #   <p>The stack attributes to delete.</p>
    # @option params [Array<Types::UserSetting>] :user_settings
    #   <p>The actions that are enabled or disabled for users during their streaming sessions. By default, these actions are enabled.</p>
    # @option params [Types::ApplicationSettings] :application_settings
    #   <p>The persistent application settings for users of a stack. When these settings are enabled, changes that users make to applications and Windows settings are automatically saved after each session and applied to the next session.</p>
    # @option params [Array<Types::AccessEndpoint>] :access_endpoints
    #   <p>The list of interface VPC endpoint (interface endpoint) objects. Users of the stack can connect to AppStream 2.0 only through the specified endpoints.</p>
    # @option params [Array<String>] :embed_host_domains
    #   <p>The domains where AppStream 2.0 streaming sessions can be embedded in an iframe. You must approve the domains that you want to host embedded AppStream 2.0 streaming sessions. </p>
    # @option params [Types::StreamingExperienceSettings] :streaming_experience_settings
    #   <p>The streaming protocol you want your stack to prefer. This can be UDP or TCP. Currently, UDP is only supported in the Windows native client.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     display_name: "DisplayName",
    #     description: "Description",
    #     name: "String", # required
    #     storage_connectors: [
    #       {
    #         connector_type: "HOMEFOLDERS" # One of: ["HOMEFOLDERS", "GOOGLE_DRIVE", "ONE_DRIVE"], # required
    #         resource_identifier: "ResourceIdentifier",
    #         domains: ["Domain"],
    #         domains_require_admin_consent: ["Domain"]
    #       }
    #     ],
    #     delete_storage_connectors: false,
    #     redirect_url: "RedirectURL",
    #     feedback_url: "FeedbackURL",
    #     attributes_to_delete: ["STORAGE_CONNECTORS" # One of: ["STORAGE_CONNECTORS", "STORAGE_CONNECTOR_HOMEFOLDERS", "STORAGE_CONNECTOR_GOOGLE_DRIVE", "STORAGE_CONNECTOR_ONE_DRIVE", "REDIRECT_URL", "FEEDBACK_URL", "THEME_NAME", "USER_SETTINGS", "EMBED_HOST_DOMAINS", "IAM_ROLE_ARN", "ACCESS_ENDPOINTS", "STREAMING_EXPERIENCE_SETTINGS"]],
    #     user_settings: [
    #       {
    #         action: "CLIPBOARD_COPY_FROM_LOCAL_DEVICE" # One of: ["CLIPBOARD_COPY_FROM_LOCAL_DEVICE", "CLIPBOARD_COPY_TO_LOCAL_DEVICE", "FILE_UPLOAD", "FILE_DOWNLOAD", "PRINTING_TO_LOCAL_DEVICE", "DOMAIN_PASSWORD_SIGNIN", "DOMAIN_SMART_CARD_SIGNIN", "AUTO_TIME_ZONE_REDIRECTION"], # required
    #         permission: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #         maximum_length: 1
    #       }
    #     ],
    #     application_settings: {
    #       enabled: false, # required
    #       settings_group: "SettingsGroup"
    #     },
    #     access_endpoints: [
    #       {
    #         endpoint_type: "STREAMING" # One of: ["STREAMING"], # required
    #         vpce_id: "String"
    #       }
    #     ],
    #     embed_host_domains: ["EmbedHostDomain"],
    #     streaming_experience_settings: {
    #       preferred_protocol: "TCP" # One of: ["TCP", "UDP"]
    #     }
    #   }
    #   options = {}
    #   response = client.update_stack(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     stack: {
    #       arn: "Arn",
    #       name: "String", # required
    #       description: "String",
    #       display_name: "String",
    #       created_time: Time.now,
    #       storage_connectors: [
    #         {
    #           connector_type: "HOMEFOLDERS" # One of: ["HOMEFOLDERS", "GOOGLE_DRIVE", "ONE_DRIVE"], # required
    #           resource_identifier: "ResourceIdentifier",
    #           domains: ["Domain"],
    #           domains_require_admin_consent: ["Domain"]
    #         }
    #       ],
    #       redirect_url: "RedirectURL",
    #       feedback_url: "FeedbackURL",
    #       stack_errors: [
    #         {
    #           error_code: "STORAGE_CONNECTOR_ERROR" # One of: ["STORAGE_CONNECTOR_ERROR", "INTERNAL_SERVICE_ERROR"],
    #           error_message: "String"
    #         }
    #       ],
    #       user_settings: [
    #         {
    #           action: "CLIPBOARD_COPY_FROM_LOCAL_DEVICE" # One of: ["CLIPBOARD_COPY_FROM_LOCAL_DEVICE", "CLIPBOARD_COPY_TO_LOCAL_DEVICE", "FILE_UPLOAD", "FILE_DOWNLOAD", "PRINTING_TO_LOCAL_DEVICE", "DOMAIN_PASSWORD_SIGNIN", "DOMAIN_SMART_CARD_SIGNIN", "AUTO_TIME_ZONE_REDIRECTION"], # required
    #           permission: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #           maximum_length: 1
    #         }
    #       ],
    #       application_settings: {
    #         enabled: false,
    #         settings_group: "SettingsGroup",
    #         s3_bucket_name: "String"
    #       },
    #       access_endpoints: [
    #         {
    #           endpoint_type: "STREAMING" # One of: ["STREAMING"], # required
    #           vpce_id: "String"
    #         }
    #       ],
    #       embed_host_domains: ["EmbedHostDomain"],
    #       streaming_experience_settings: {
    #         preferred_protocol: "TCP" # One of: ["TCP", "UDP"]
    #       }
    #     }
    #   }
    # @return [Types::UpdateStackResult]
    def update_stack(params = {}, options = {})
      request = build_request(:update_stack, params)
      request.send_request(options)
    end

    # <p>Updates custom branding that customizes the appearance of the streaming application catalog page.</p>
    # @param [Hash, Types::UpdateThemeForStackRequest] params
    # @option params [String] :stack_name
    #   <p>The name of the stack for the theme.</p>
    # @option params [Array<Types::ThemeFooterLink>] :footer_links
    #   <p>The links that are displayed in the footer of the streaming application catalog page. These links are helpful resources for users, such as the organization's IT support and product marketing sites.</p>
    # @option params [String] :title_text
    #   <p>The title that is displayed at the top of the browser tab during users' application streaming sessions.</p>
    # @option params [String] :theme_styling
    #   <p>The color theme that is applied to website links, text, and buttons. These colors are also applied as accents in the background for the streaming application catalog page.</p>
    # @option params [Types::S3Location] :organization_logo_s3_location
    #   <p>The organization logo that appears on the streaming application catalog page.</p>
    # @option params [Types::S3Location] :favicon_s3_location
    #   <p>The S3 location of the favicon. The favicon enables users to recognize their application streaming site in a browser full of tabs or bookmarks. It is displayed at the top of the browser tab for the application streaming site during users' streaming sessions.</p>
    # @option params [String] :state
    #   <p>Specifies whether custom branding should be applied to catalog page or not.</p>
    # @option params [Array<String>] :attributes_to_delete
    #   <p>The attributes to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     stack_name: "Name", # required
    #     footer_links: [
    #       {
    #         display_name: "ThemeFooterLinkDisplayName",
    #         footer_link_url: "ThemeFooterLinkURL"
    #       }
    #     ],
    #     title_text: "ThemeTitleText",
    #     theme_styling: "LIGHT_BLUE" # One of: ["LIGHT_BLUE", "BLUE", "PINK", "RED"],
    #     organization_logo_s3_location: {
    #       s3_bucket: "S3Bucket", # required
    #       s3_key: "S3Key"
    #     },
    #     favicon_s3_location: {
    #       s3_bucket: "S3Bucket", # required
    #       s3_key: "S3Key"
    #     },
    #     state: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #     attributes_to_delete: ["FOOTER_LINKS" # One of: ["FOOTER_LINKS"]]
    #   }
    #   options = {}
    #   response = client.update_theme_for_stack(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     theme: {
    #       stack_name: "Name",
    #       state: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #       theme_title_text: "ThemeTitleText",
    #       theme_styling: "LIGHT_BLUE" # One of: ["LIGHT_BLUE", "BLUE", "PINK", "RED"],
    #       theme_footer_links: [
    #         {
    #           display_name: "ThemeFooterLinkDisplayName",
    #           footer_link_url: "ThemeFooterLinkURL"
    #         }
    #       ],
    #       theme_organization_logo_url: "String",
    #       theme_favicon_url: "String",
    #       created_time: Time.now
    #     }
    #   }
    # @return [Types::UpdateThemeForStackResult]
    def update_theme_for_stack(params = {}, options = {})
      request = build_request(:update_theme_for_stack, params)
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
      context[:gem_name] = 'aws-sdk-appstream'
      context[:gem_version] = '2.0.0.pre0'
      Smithy::Client::Request.new(handlers: handlers, context: context)
    end

    private

    def waiters
      {
        fleet_started: Waiters::FleetStarted,
        fleet_stopped: Waiters::FleetStopped
      }
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
