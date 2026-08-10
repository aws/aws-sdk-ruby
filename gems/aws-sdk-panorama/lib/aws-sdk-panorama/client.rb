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

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:panorama)

module Aws::Panorama
  # An API client for Aws::Panorama.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::OmniCloudServiceLambda
    @identifier = :panorama

    add_plugin(::Aws::Panorama::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::Panorama::EndpointProvider)
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

    # <p>Creates an application instance and deploys it to a device.</p>
    # @param [Hash, Types::CreateApplicationInstanceInput] params
    # @option params [String] :name
    #   <p>A name for the application instance.</p>
    # @option params [String] :description
    #   <p>A description for the application instance.</p>
    # @option params [Types::ManifestPayload] :manifest_payload
    #   <p>The application's manifest document.</p>
    # @option params [Types::ManifestOverridesPayload] :manifest_overrides_payload
    #   <p>Setting overrides for the application manifest.</p>
    # @option params [String] :application_instance_id_to_replace
    #   <p>The ID of an application instance to replace with the new instance.</p>
    # @option params [String] :runtime_role_arn
    #   <p>The ARN of a runtime role for the application instance.</p>
    # @option params [String] :default_runtime_context_device
    #   <p>A device's ID.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Tags for the application instance.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ApplicationInstanceName",
    #     description: "Description",
    #     manifest_payload: { # required
    #       # One of:
    #       payload_data: "ManifestPayloadData"
    #     },
    #     manifest_overrides_payload: {
    #       # One of:
    #       payload_data: "ManifestOverridesPayloadData"
    #     },
    #     application_instance_id_to_replace: "ApplicationInstanceId",
    #     runtime_role_arn: "RuntimeRoleArn",
    #     default_runtime_context_device: "DefaultRuntimeContextDevice", # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_application_instance(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     application_instance_id: "ApplicationInstanceId", # required
    #   }
    # @return [Types::CreateApplicationInstanceOutput]
    def create_application_instance(params = {}, options = {})
      request = build_request(:create_application_instance, params)
      request.send_request(options)
    end

    # <p>Creates a job to run on a device. A job can update a device's software or reboot it.</p>
    # @param [Hash, Types::CreateJobForDevicesInput] params
    # @option params [Array<String>] :device_ids
    #   <p>ID of target device.</p>
    # @option params [Types::DeviceJobConfig] :device_job_config
    #   <p>Configuration settings for a software update job.</p>
    # @option params [String] :job_type
    #   <p>The type of job to run.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     device_ids: ["DeviceId"], # required
    #     device_job_config: {
    #       ota_job_config: {
    #         image_version: "ImageVersion", # required
    #         allow_major_version_update: false
    #       }
    #     },
    #     job_type: "JobType", # required
    #   }
    #   options = {}
    #   response = client.create_job_for_devices(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     jobs: [ # required
    #       {
    #         job_id: "JobId",
    #         device_id: "DeviceId"
    #       }
    #     ]
    #   }
    # @return [Types::CreateJobForDevicesOutput]
    def create_job_for_devices(params = {}, options = {})
      request = build_request(:create_job_for_devices, params)
      request.send_request(options)
    end

    # <p>Creates a camera stream node.</p>
    # @param [Hash, Types::CreateNodeFromTemplateJobInput] params
    # @option params [String] :template_type
    #   <p>The type of node.</p>
    # @option params [String] :output_package_name
    #   <p>An output package name for the node.</p>
    # @option params [String] :output_package_version
    #   <p>An output package version for the node.</p>
    # @option params [String] :node_name
    #   <p>A name for the node.</p>
    # @option params [String] :node_description
    #   <p>A description for the node.</p>
    # @option params [Hash<String, String>] :template_parameters
    #   <p>Template parameters for the node.</p>
    # @option params [Array<Types::JobResourceTags>] :job_tags
    #   <p>Tags for the job.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     template_type: "TemplateType", # required
    #     output_package_name: "NodePackageName", # required
    #     output_package_version: "NodePackageVersion", # required
    #     node_name: "NodeName", # required
    #     node_description: "Description",
    #     template_parameters: { # required
    #       "TemplateKey" => "TemplateValue"
    #     },
    #     job_tags: [
    #       {
    #         resource_type: "JobResourceType", # required
    #         tags: { # required
    #           "TagKey" => "TagValue"
    #         }
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_node_from_template_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_id: "JobId", # required
    #   }
    # @return [Types::CreateNodeFromTemplateJobOutput]
    def create_node_from_template_job(params = {}, options = {})
      request = build_request(:create_node_from_template_job, params)
      request.send_request(options)
    end

    # <p>Creates a package and storage location in an Amazon S3 access point.</p>
    # @param [Hash, Types::CreatePackageInput] params
    # @option params [String] :package_name
    #   <p>A name for the package.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Tags for the package.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     package_name: "NodePackageName", # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_package(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     package_id: "NodePackageId",
    #     arn: "NodePackageArn",
    #     storage_location: { # required
    #       bucket: "Bucket", # required
    #       repo_prefix_location: "Object", # required
    #       generated_prefix_location: "Object", # required
    #       binary_prefix_location: "Object", # required
    #       manifest_prefix_location: "Object", # required
    #     }
    #   }
    # @return [Types::CreatePackageOutput]
    def create_package(params = {}, options = {})
      request = build_request(:create_package, params)
      request.send_request(options)
    end

    # <p>Imports a node package.</p>
    # @param [Hash, Types::CreatePackageImportJobInput] params
    # @option params [String] :job_type
    #   <p>A job type for the package import job.</p>
    # @option params [Types::PackageImportJobInputConfig] :input_config
    #   <p>An input config for the package import job.</p>
    # @option params [Types::PackageImportJobOutputConfig] :output_config
    #   <p>An output config for the package import job.</p>
    # @option params [String] :client_token
    #   <p>A client token for the package import job.</p>
    # @option params [Array<Types::JobResourceTags>] :job_tags
    #   <p>Tags for the package import job.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_type: "PackageImportJobType", # required
    #     input_config: { # required
    #       package_version_input_config: {
    #         s3_location: { # required
    #           region: "Region",
    #           bucket_name: "BucketName", # required
    #           object_key: "ObjectKey", # required
    #         }
    #       }
    #     },
    #     output_config: { # required
    #       package_version_output_config: {
    #         package_name: "NodePackageName", # required
    #         package_version: "NodePackageVersion", # required
    #         mark_latest: false
    #       }
    #     },
    #     client_token: "ClientToken", # required
    #     job_tags: [
    #       {
    #         resource_type: "JobResourceType", # required
    #         tags: { # required
    #           "TagKey" => "TagValue"
    #         }
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_package_import_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_id: "JobId", # required
    #   }
    # @return [Types::CreatePackageImportJobOutput]
    def create_package_import_job(params = {}, options = {})
      request = build_request(:create_package_import_job, params)
      request.send_request(options)
    end

    # <p>Deletes a device.</p>
    # @param [Hash, Types::DeleteDeviceInput] params
    # @option params [String] :device_id
    #   <p>The device's ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     device_id: "DeviceId", # required
    #   }
    #   options = {}
    #   response = client.delete_device(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     device_id: "DeviceId"
    #   }
    # @return [Types::DeleteDeviceOutput]
    def delete_device(params = {}, options = {})
      request = build_request(:delete_device, params)
      request.send_request(options)
    end

    # <p>Deletes a package.</p>
    #          <note>
    #             <p>To delete a package, you need permission to call <code>s3:DeleteObject</code> in addition to permissions for
    #         the AWS Panorama API.</p>
    #          </note>
    # @param [Hash, Types::DeletePackageInput] params
    # @option params [String] :package_id
    #   <p>The package's ID.</p>
    # @option params [Boolean] :force_delete
    #   <p>Delete the package even if it has artifacts stored in its access point. Deletes the package's artifacts from
    #         Amazon S3.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     package_id: "NodePackageId", # required
    #     force_delete: false
    #   }
    #   options = {}
    #   response = client.delete_package(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeletePackageOutput]
    def delete_package(params = {}, options = {})
      request = build_request(:delete_package, params)
      request.send_request(options)
    end

    # <p>Deregisters a package version.</p>
    # @param [Hash, Types::DeregisterPackageVersionInput] params
    # @option params [String] :owner_account
    #   <p>An owner account.</p>
    # @option params [String] :package_id
    #   <p>A package ID.</p>
    # @option params [String] :package_version
    #   <p>A package version.</p>
    # @option params [String] :patch_version
    #   <p>A patch version.</p>
    # @option params [String] :updated_latest_patch_version
    #   <p>If the version was marked latest, the new version to maker as latest.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     owner_account: "PackageOwnerAccount",
    #     package_id: "NodePackageId", # required
    #     package_version: "NodePackageVersion", # required
    #     patch_version: "NodePackagePatchVersion", # required
    #     updated_latest_patch_version: "NodePackagePatchVersion"
    #   }
    #   options = {}
    #   response = client.deregister_package_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeregisterPackageVersionOutput]
    def deregister_package_version(params = {}, options = {})
      request = build_request(:deregister_package_version, params)
      request.send_request(options)
    end

    # <p>Returns information about an application instance on a device.</p>
    # @param [Hash, Types::DescribeApplicationInstanceInput] params
    # @option params [String] :application_instance_id
    #   <p>The application instance's ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_instance_id: "ApplicationInstanceId", # required
    #   }
    #   options = {}
    #   response = client.describe_application_instance(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "ApplicationInstanceName",
    #     description: "Description",
    #     default_runtime_context_device: "DefaultRuntimeContextDevice",
    #     default_runtime_context_device_name: "DeviceName",
    #     application_instance_id_to_replace: "ApplicationInstanceId",
    #     runtime_role_arn: "RuntimeRoleArn",
    #     status: "ApplicationInstanceStatus",
    #     health_status: "ApplicationInstanceHealthStatus",
    #     status_description: "ApplicationInstanceStatusDescription",
    #     created_time: Time.now,
    #     last_updated_time: Time.now,
    #     application_instance_id: "ApplicationInstanceId",
    #     arn: "ApplicationInstanceArn",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     runtime_context_states: [
    #       {
    #         desired_state: "DesiredState", # required
    #         runtime_context_name: "RuntimeContextName", # required
    #         device_reported_status: "DeviceReportedStatus", # required
    #         device_reported_time: Time.now, # required
    #       }
    #     ]
    #   }
    # @return [Types::DescribeApplicationInstanceOutput]
    def describe_application_instance(params = {}, options = {})
      request = build_request(:describe_application_instance, params)
      request.send_request(options)
    end

    # <p>Returns information about an application instance's configuration manifest.</p>
    # @param [Hash, Types::DescribeApplicationInstanceDetailsInput] params
    # @option params [String] :application_instance_id
    #   <p>The application instance's ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_instance_id: "ApplicationInstanceId", # required
    #   }
    #   options = {}
    #   response = client.describe_application_instance_details(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "ApplicationInstanceName",
    #     description: "Description",
    #     default_runtime_context_device: "DefaultRuntimeContextDevice",
    #     manifest_payload: {
    #       # One of:
    #       payload_data: "ManifestPayloadData"
    #     },
    #     manifest_overrides_payload: {
    #       # One of:
    #       payload_data: "ManifestOverridesPayloadData"
    #     },
    #     application_instance_id_to_replace: "ApplicationInstanceId",
    #     created_time: Time.now,
    #     application_instance_id: "ApplicationInstanceId"
    #   }
    # @return [Types::DescribeApplicationInstanceDetailsOutput]
    def describe_application_instance_details(params = {}, options = {})
      request = build_request(:describe_application_instance_details, params)
      request.send_request(options)
    end

    # <p>Returns information about a device.</p>
    # @param [Hash, Types::DescribeDeviceInput] params
    # @option params [String] :device_id
    #   <p>The device's ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     device_id: "DeviceId", # required
    #   }
    #   options = {}
    #   response = client.describe_device(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     device_id: "DeviceId",
    #     name: "DeviceName",
    #     arn: "DeviceArn",
    #     description: "Description",
    #     type: "DeviceType",
    #     device_connection_status: "DeviceConnectionStatus",
    #     created_time: Time.now,
    #     provisioning_status: "DeviceStatus",
    #     latest_software: "LatestSoftware",
    #     current_software: "CurrentSoftware",
    #     serial_number: "DeviceSerialNumber",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     networking_configuration: {
    #       ethernet0: {
    #         connection_type: "ConnectionType", # required
    #         static_ip_connection_info: {
    #           ip_address: "IpAddress", # required
    #           mask: "Mask", # required
    #           dns: ["Dns"], # required
    #           default_gateway: "DefaultGateway", # required
    #         }
    #       },
    #       ethernet1: {
    #         connection_type: "ConnectionType", # required
    #         static_ip_connection_info: {
    #           ip_address: "IpAddress", # required
    #           mask: "Mask", # required
    #           dns: ["Dns"], # required
    #           default_gateway: "DefaultGateway", # required
    #         }
    #       },
    #       ntp: {
    #         ntp_servers: ["IpAddressOrServerName"], # required
    #       }
    #     },
    #     current_networking_status: {
    #       ethernet0_status: {
    #         ip_address: "IpAddress",
    #         connection_status: "NetworkConnectionStatus",
    #         hw_address: "HwAddress"
    #       },
    #       ethernet1_status: {
    #         ip_address: "IpAddress",
    #         connection_status: "NetworkConnectionStatus",
    #         hw_address: "HwAddress"
    #       },
    #       ntp_status: {
    #         connection_status: "NetworkConnectionStatus",
    #         ip_address: "IpAddress",
    #         ntp_server_name: "NtpServerName"
    #       },
    #       last_updated_time: Time.now
    #     },
    #     lease_expiration_time: Time.now,
    #     alternate_softwares: [
    #       {
    #         version: "Version"
    #       }
    #     ],
    #     latest_alternate_software: "LatestAlternateSoftware",
    #     brand: "DeviceBrand",
    #     latest_device_job: {
    #       image_version: "ImageVersion",
    #       status: "UpdateProgress",
    #       job_type: "JobType"
    #     },
    #     device_aggregated_status: "DeviceAggregatedStatus"
    #   }
    # @return [Types::DescribeDeviceOutput]
    def describe_device(params = {}, options = {})
      request = build_request(:describe_device, params)
      request.send_request(options)
    end

    # <p>Returns information about a device job.</p>
    # @param [Hash, Types::DescribeDeviceJobInput] params
    # @option params [String] :job_id
    #   <p>The job's ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_id: "JobId", # required
    #   }
    #   options = {}
    #   response = client.describe_device_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_id: "JobId",
    #     device_id: "DeviceId",
    #     device_arn: "DeviceArn",
    #     device_name: "DeviceName",
    #     device_type: "DeviceType",
    #     image_version: "ImageVersion",
    #     status: "UpdateProgress",
    #     created_time: Time.now,
    #     job_type: "JobType"
    #   }
    # @return [Types::DescribeDeviceJobOutput]
    def describe_device_job(params = {}, options = {})
      request = build_request(:describe_device_job, params)
      request.send_request(options)
    end

    # <p>Returns information about a node.</p>
    # @param [Hash, Types::DescribeNodeInput] params
    # @option params [String] :node_id
    #   <p>The node's ID.</p>
    # @option params [String] :owner_account
    #   <p>The account ID of the node's owner.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     node_id: "NodeId", # required
    #     owner_account: "PackageOwnerAccount"
    #   }
    #   options = {}
    #   response = client.describe_node(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     node_id: "NodeId", # required
    #     name: "NodeName", # required
    #     category: "NodeCategory", # required
    #     owner_account: "PackageOwnerAccount", # required
    #     package_name: "NodePackageName", # required
    #     package_id: "NodePackageId", # required
    #     package_arn: "NodePackageArn",
    #     package_version: "NodePackageVersion", # required
    #     patch_version: "NodePackagePatchVersion", # required
    #     node_interface: { # required
    #       inputs: [ # required
    #         {
    #           name: "PortName",
    #           description: "Description",
    #           type: "PortType",
    #           default_value: "PortDefaultValue",
    #           max_connections: 1
    #         }
    #       ],
    #       outputs: [ # required
    #         {
    #           name: "PortName",
    #           description: "Description",
    #           type: "PortType"
    #         }
    #       ]
    #     },
    #     asset_name: "NodeAssetName",
    #     description: "Description", # required
    #     created_time: Time.now, # required
    #     last_updated_time: Time.now, # required
    #   }
    # @return [Types::DescribeNodeOutput]
    def describe_node(params = {}, options = {})
      request = build_request(:describe_node, params)
      request.send_request(options)
    end

    # <p>Returns information about a job to create a camera stream node.</p>
    # @param [Hash, Types::DescribeNodeFromTemplateJobInput] params
    # @option params [String] :job_id
    #   <p>The job's ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_id: "JobId", # required
    #   }
    #   options = {}
    #   response = client.describe_node_from_template_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_id: "JobId", # required
    #     status: "NodeFromTemplateJobStatus", # required
    #     status_message: "NodeFromTemplateJobStatusMessage", # required
    #     created_time: Time.now, # required
    #     last_updated_time: Time.now, # required
    #     output_package_name: "NodePackageName", # required
    #     output_package_version: "NodePackageVersion", # required
    #     node_name: "NodeName", # required
    #     node_description: "Description",
    #     template_type: "TemplateType", # required
    #     template_parameters: { # required
    #       "TemplateKey" => "TemplateValue"
    #     },
    #     job_tags: [
    #       {
    #         resource_type: "JobResourceType", # required
    #         tags: { # required
    #           "TagKey" => "TagValue"
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::DescribeNodeFromTemplateJobOutput]
    def describe_node_from_template_job(params = {}, options = {})
      request = build_request(:describe_node_from_template_job, params)
      request.send_request(options)
    end

    # <p>Returns information about a package.</p>
    # @param [Hash, Types::DescribePackageInput] params
    # @option params [String] :package_id
    #   <p>The package's ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     package_id: "NodePackageId", # required
    #   }
    #   options = {}
    #   response = client.describe_package(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     package_id: "NodePackageId", # required
    #     package_name: "NodePackageName", # required
    #     arn: "NodePackageArn", # required
    #     storage_location: { # required
    #       bucket: "Bucket", # required
    #       repo_prefix_location: "Object", # required
    #       generated_prefix_location: "Object", # required
    #       binary_prefix_location: "Object", # required
    #       manifest_prefix_location: "Object", # required
    #     },
    #     read_access_principal_arns: ["PrincipalArn"],
    #     write_access_principal_arns: ["PrincipalArn"],
    #     created_time: Time.now, # required
    #     tags: { # required
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::DescribePackageOutput]
    def describe_package(params = {}, options = {})
      request = build_request(:describe_package, params)
      request.send_request(options)
    end

    # <p>Returns information about a package import job.</p>
    # @param [Hash, Types::DescribePackageImportJobInput] params
    # @option params [String] :job_id
    #   <p>The job's ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_id: "JobId", # required
    #   }
    #   options = {}
    #   response = client.describe_package_import_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_id: "JobId", # required
    #     client_token: "ClientToken",
    #     job_type: "PackageImportJobType", # required
    #     input_config: { # required
    #       package_version_input_config: {
    #         s3_location: { # required
    #           region: "Region",
    #           bucket_name: "BucketName", # required
    #           object_key: "ObjectKey", # required
    #         }
    #       }
    #     },
    #     output_config: { # required
    #       package_version_output_config: {
    #         package_name: "NodePackageName", # required
    #         package_version: "NodePackageVersion", # required
    #         mark_latest: false
    #       }
    #     },
    #     output: { # required
    #       package_id: "NodePackageId", # required
    #       package_version: "NodePackageVersion", # required
    #       patch_version: "NodePackagePatchVersion", # required
    #       output_s3_location: { # required
    #         bucket_name: "BucketName", # required
    #         object_key: "ObjectKey", # required
    #       }
    #     },
    #     created_time: Time.now, # required
    #     last_updated_time: Time.now, # required
    #     status: "PackageImportJobStatus", # required
    #     status_message: "PackageImportJobStatusMessage", # required
    #     job_tags: [
    #       {
    #         resource_type: "JobResourceType", # required
    #         tags: { # required
    #           "TagKey" => "TagValue"
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::DescribePackageImportJobOutput]
    def describe_package_import_job(params = {}, options = {})
      request = build_request(:describe_package_import_job, params)
      request.send_request(options)
    end

    # <p>Returns information about a package version.</p>
    # @param [Hash, Types::DescribePackageVersionInput] params
    # @option params [String] :owner_account
    #   <p>The version's owner account.</p>
    # @option params [String] :package_id
    #   <p>The version's ID.</p>
    # @option params [String] :package_version
    #   <p>The version's version.</p>
    # @option params [String] :patch_version
    #   <p>The version's patch version.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     owner_account: "PackageOwnerAccount",
    #     package_id: "NodePackageId", # required
    #     package_version: "NodePackageVersion", # required
    #     patch_version: "NodePackagePatchVersion"
    #   }
    #   options = {}
    #   response = client.describe_package_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     owner_account: "PackageOwnerAccount",
    #     package_id: "NodePackageId", # required
    #     package_arn: "NodePackageArn",
    #     package_name: "NodePackageName", # required
    #     package_version: "NodePackageVersion", # required
    #     patch_version: "NodePackagePatchVersion", # required
    #     is_latest_patch: false, # required
    #     status: "PackageVersionStatus", # required
    #     status_description: "PackageVersionStatusDescription",
    #     registered_time: Time.now
    #   }
    # @return [Types::DescribePackageVersionOutput]
    def describe_package_version(params = {}, options = {})
      request = build_request(:describe_package_version, params)
      request.send_request(options)
    end

    # <p>Returns a list of application instance dependencies.</p>
    # @param [Hash, Types::ListApplicationInstanceDependenciesInput] params
    # @option params [String] :application_instance_id
    #   <p>The application instance's ID.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of application instance dependencies to return in one page of results.</p>
    # @option params [String] :next_token
    #   <p>Specify the pagination token from a previous request to retrieve the next page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_instance_id: "ApplicationInstanceId", # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_application_instance_dependencies(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     package_objects: [
    #       {
    #         name: "NodePackageName", # required
    #         package_version: "NodePackageVersion", # required
    #         patch_version: "NodePackagePatchVersion", # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListApplicationInstanceDependenciesOutput]
    def list_application_instance_dependencies(params = {}, options = {})
      request = build_request(:list_application_instance_dependencies, params)
      request.send_request(options)
    end

    # <p>Returns a list of application node instances.</p>
    # @param [Hash, Types::ListApplicationInstanceNodeInstancesInput] params
    # @option params [String] :application_instance_id
    #   <p>The node instances' application instance ID.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of node instances to return in one page of results.</p>
    # @option params [String] :next_token
    #   <p>Specify the pagination token from a previous request to retrieve the next page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_instance_id: "ApplicationInstanceId", # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_application_instance_node_instances(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     node_instances: [
    #       {
    #         node_instance_id: "NodeInstanceId", # required
    #         node_id: "NodeId",
    #         package_name: "NodePackageName",
    #         package_version: "NodePackageVersion",
    #         package_patch_version: "NodePackagePatchVersion",
    #         node_name: "NodeName",
    #         current_status: "NodeInstanceStatus", # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListApplicationInstanceNodeInstancesOutput]
    def list_application_instance_node_instances(params = {}, options = {})
      request = build_request(:list_application_instance_node_instances, params)
      request.send_request(options)
    end

    # <p>Returns a list of application instances.</p>
    # @param [Hash, Types::ListApplicationInstancesInput] params
    # @option params [String] :device_id
    #   <p>The application instances' device ID.</p>
    # @option params [String] :status_filter
    #   <p>Only include instances with a specific status.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of application instances to return in one page of results.</p>
    # @option params [String] :next_token
    #   <p>Specify the pagination token from a previous request to retrieve the next page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     device_id: "DeviceId",
    #     status_filter: "StatusFilter",
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_application_instances(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     application_instances: [
    #       {
    #         name: "ApplicationInstanceName",
    #         application_instance_id: "ApplicationInstanceId",
    #         default_runtime_context_device: "DefaultRuntimeContextDevice",
    #         default_runtime_context_device_name: "DeviceName",
    #         description: "Description",
    #         status: "ApplicationInstanceStatus",
    #         health_status: "ApplicationInstanceHealthStatus",
    #         status_description: "ApplicationInstanceStatusDescription",
    #         created_time: Time.now,
    #         arn: "ApplicationInstanceArn",
    #         tags: {
    #           "TagKey" => "TagValue"
    #         },
    #         runtime_context_states: [
    #           {
    #             desired_state: "DesiredState", # required
    #             runtime_context_name: "RuntimeContextName", # required
    #             device_reported_status: "DeviceReportedStatus", # required
    #             device_reported_time: Time.now, # required
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListApplicationInstancesOutput]
    def list_application_instances(params = {}, options = {})
      request = build_request(:list_application_instances, params)
      request.send_request(options)
    end

    # <p>Returns a list of devices.</p>
    # @param [Hash, Types::ListDevicesInput] params
    # @option params [String] :next_token
    #   <p>Specify the pagination token from a previous request to retrieve the next page of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of devices to return in one page of results.</p>
    # @option params [String] :sort_by
    #   <p>The target column to be sorted on. Default column sort is CREATED_TIME.</p>
    # @option params [String] :sort_order
    #   <p>The sorting order for the returned list. SortOrder is DESCENDING by default based on CREATED_TIME. Otherwise, SortOrder is ASCENDING.</p>
    # @option params [String] :name_filter
    #   <p>Filter based on device's name. Prefixes supported.</p>
    # @option params [String] :device_aggregated_status_filter
    #   <p>Filter based on a device's status.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1,
    #     sort_by: "ListDevicesSortBy",
    #     sort_order: "SortOrder",
    #     name_filter: "NameFilter",
    #     device_aggregated_status_filter: "DeviceAggregatedStatus"
    #   }
    #   options = {}
    #   response = client.list_devices(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     devices: [ # required
    #       {
    #         device_id: "DeviceId",
    #         name: "DeviceName",
    #         created_time: Time.now,
    #         provisioning_status: "DeviceStatus",
    #         last_updated_time: Time.now,
    #         lease_expiration_time: Time.now,
    #         brand: "DeviceBrand",
    #         current_software: "CurrentSoftware",
    #         description: "Description",
    #         tags: {
    #           "TagKey" => "TagValue"
    #         },
    #         type: "DeviceType",
    #         latest_device_job: {
    #           image_version: "ImageVersion",
    #           status: "UpdateProgress",
    #           job_type: "JobType"
    #         },
    #         device_aggregated_status: "DeviceAggregatedStatus"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListDevicesOutput]
    def list_devices(params = {}, options = {})
      request = build_request(:list_devices, params)
      request.send_request(options)
    end

    # <p>Returns a list of jobs.</p>
    # @param [Hash, Types::ListDevicesJobsInput] params
    # @option params [String] :device_id
    #   <p>Filter results by the job's target device ID.</p>
    # @option params [String] :next_token
    #   <p>Specify the pagination token from a previous request to retrieve the next page of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of device jobs to return in one page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     device_id: "DeviceId",
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_devices_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     device_jobs: [
    #       {
    #         device_name: "DeviceName",
    #         device_id: "DeviceId",
    #         job_id: "JobId",
    #         created_time: Time.now,
    #         job_type: "JobType"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListDevicesJobsOutput]
    def list_devices_jobs(params = {}, options = {})
      request = build_request(:list_devices_jobs, params)
      request.send_request(options)
    end

    # <p>Returns a list of camera stream node jobs.</p>
    # @param [Hash, Types::ListNodeFromTemplateJobsInput] params
    # @option params [String] :next_token
    #   <p>Specify the pagination token from a previous request to retrieve the next page of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of node from template jobs to return in one page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_node_from_template_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     node_from_template_jobs: [ # required
    #       {
    #         job_id: "JobId",
    #         template_type: "TemplateType",
    #         status: "NodeFromTemplateJobStatus",
    #         status_message: "NodeFromTemplateJobStatusMessage",
    #         created_time: Time.now,
    #         node_name: "NodeName"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListNodeFromTemplateJobsOutput]
    def list_node_from_template_jobs(params = {}, options = {})
      request = build_request(:list_node_from_template_jobs, params)
      request.send_request(options)
    end

    # <p>Returns a list of nodes.</p>
    # @param [Hash, Types::ListNodesInput] params
    # @option params [String] :category
    #   <p>Search for nodes by category.</p>
    # @option params [String] :owner_account
    #   <p>Search for nodes by the account ID of the nodes' owner.</p>
    # @option params [String] :package_name
    #   <p>Search for nodes by name.</p>
    # @option params [String] :package_version
    #   <p>Search for nodes by version.</p>
    # @option params [String] :patch_version
    #   <p>Search for nodes by patch version.</p>
    # @option params [String] :next_token
    #   <p>Specify the pagination token from a previous request to retrieve the next page of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of nodes to return in one page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     category: "NodeCategory",
    #     owner_account: "PackageOwnerAccount",
    #     package_name: "NodePackageName",
    #     package_version: "NodePackageVersion",
    #     patch_version: "NodePackagePatchVersion",
    #     next_token: "Token",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_nodes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     nodes: [
    #       {
    #         node_id: "NodeId", # required
    #         name: "NodeName", # required
    #         category: "NodeCategory", # required
    #         owner_account: "PackageOwnerAccount",
    #         package_name: "NodePackageName", # required
    #         package_id: "NodePackageId", # required
    #         package_arn: "NodePackageArn",
    #         package_version: "NodePackageVersion", # required
    #         patch_version: "NodePackagePatchVersion", # required
    #         description: "Description",
    #         created_time: Time.now, # required
    #       }
    #     ],
    #     next_token: "Token"
    #   }
    # @return [Types::ListNodesOutput]
    def list_nodes(params = {}, options = {})
      request = build_request(:list_nodes, params)
      request.send_request(options)
    end

    # <p>Returns a list of package import jobs.</p>
    # @param [Hash, Types::ListPackageImportJobsInput] params
    # @option params [String] :next_token
    #   <p>Specify the pagination token from a previous request to retrieve the next page of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of package import jobs to return in one page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_package_import_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     package_import_jobs: [ # required
    #       {
    #         job_id: "JobId",
    #         job_type: "PackageImportJobType",
    #         status: "PackageImportJobStatus",
    #         status_message: "PackageImportJobStatusMessage",
    #         created_time: Time.now,
    #         last_updated_time: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListPackageImportJobsOutput]
    def list_package_import_jobs(params = {}, options = {})
      request = build_request(:list_package_import_jobs, params)
      request.send_request(options)
    end

    # <p>Returns a list of packages.</p>
    # @param [Hash, Types::ListPackagesInput] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of packages to return in one page of results.</p>
    # @option params [String] :next_token
    #   <p>Specify the pagination token from a previous request to retrieve the next page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "Token"
    #   }
    #   options = {}
    #   response = client.list_packages(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     packages: [
    #       {
    #         package_id: "NodePackageId",
    #         package_name: "NodePackageName",
    #         arn: "NodePackageArn",
    #         created_time: Time.now,
    #         tags: {
    #           "TagKey" => "TagValue"
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListPackagesOutput]
    def list_packages(params = {}, options = {})
      request = build_request(:list_packages, params)
      request.send_request(options)
    end

    # <p>Returns a list of tags for a resource.</p>
    # @param [Hash, Types::ListTagsForResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The resource's ARN.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
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
    # @return [Types::ListTagsForResourceOutput]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Creates a device and returns a configuration archive. The configuration archive is a ZIP file that contains a
    #       provisioning certificate that is valid for 5 minutes. Name the configuration archive
    #           <code>certificates-omni_<i>device-name</i>.zip</code> and transfer it to the device within 5
    #       minutes. Use the included USB storage device and connect it to the USB 3.0 port next to the HDMI output.</p>
    # @param [Hash, Types::ProvisionDeviceInput] params
    # @option params [String] :name
    #   <p>A name for the device.</p>
    # @option params [String] :description
    #   <p>A description for the device.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Tags for the device.</p>
    # @option params [Types::NetworkPayload] :networking_configuration
    #   <p>A networking configuration for the device.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "DeviceName", # required
    #     description: "Description",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     networking_configuration: {
    #       ethernet0: {
    #         connection_type: "ConnectionType", # required
    #         static_ip_connection_info: {
    #           ip_address: "IpAddress", # required
    #           mask: "Mask", # required
    #           dns: ["Dns"], # required
    #           default_gateway: "DefaultGateway", # required
    #         }
    #       },
    #       ethernet1: {
    #         connection_type: "ConnectionType", # required
    #         static_ip_connection_info: {
    #           ip_address: "IpAddress", # required
    #           mask: "Mask", # required
    #           dns: ["Dns"], # required
    #           default_gateway: "DefaultGateway", # required
    #         }
    #       },
    #       ntp: {
    #         ntp_servers: ["IpAddressOrServerName"], # required
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.provision_device(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     device_id: "DeviceId",
    #     arn: "DeviceArn", # required
    #     status: "DeviceStatus", # required
    #     certificates: "data",
    #     iot_thing_name: "IotThingName"
    #   }
    # @return [Types::ProvisionDeviceOutput]
    def provision_device(params = {}, options = {})
      request = build_request(:provision_device, params)
      request.send_request(options)
    end

    # <p>Registers a package version.</p>
    # @param [Hash, Types::RegisterPackageVersionInput] params
    # @option params [String] :owner_account
    #   <p>An owner account.</p>
    # @option params [String] :package_id
    #   <p>A package ID.</p>
    # @option params [String] :package_version
    #   <p>A package version.</p>
    # @option params [String] :patch_version
    #   <p>A patch version.</p>
    # @option params [Boolean] :mark_latest
    #   <p>Whether to mark the new version as the latest version.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     owner_account: "PackageOwnerAccount",
    #     package_id: "NodePackageId", # required
    #     package_version: "NodePackageVersion", # required
    #     patch_version: "NodePackagePatchVersion", # required
    #     mark_latest: false
    #   }
    #   options = {}
    #   response = client.register_package_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::RegisterPackageVersionOutput]
    def register_package_version(params = {}, options = {})
      request = build_request(:register_package_version, params)
      request.send_request(options)
    end

    # <p>Removes an application instance.</p>
    # @param [Hash, Types::RemoveApplicationInstanceInput] params
    # @option params [String] :application_instance_id
    #   <p>An application instance ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_instance_id: "ApplicationInstanceId", # required
    #   }
    #   options = {}
    #   response = client.remove_application_instance(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::RemoveApplicationInstanceOutput]
    def remove_application_instance(params = {}, options = {})
      request = build_request(:remove_application_instance, params)
      request.send_request(options)
    end

    # <p>Signal camera nodes to stop or resume.</p>
    # @param [Hash, Types::SignalApplicationInstanceNodeInstancesInput] params
    # @option params [String] :application_instance_id
    #   <p>An application instance ID.</p>
    # @option params [Array<Types::NodeSignal>] :node_signals
    #   <p>A list of signals.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_instance_id: "ApplicationInstanceId", # required
    #     node_signals: [ # required
    #       {
    #         node_instance_id: "NodeInstanceId", # required
    #         signal: "NodeSignalValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.signal_application_instance_node_instances(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     application_instance_id: "ApplicationInstanceId", # required
    #   }
    # @return [Types::SignalApplicationInstanceNodeInstancesOutput]
    def signal_application_instance_node_instances(params = {}, options = {})
      request = build_request(:signal_application_instance_node_instances, params)
      request.send_request(options)
    end

    # <p>Tags a resource.</p>
    # @param [Hash, Types::TagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The resource's ARN.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Tags for the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.tag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::TagResourceOutput]
    def tag_resource(params = {}, options = {})
      request = build_request(:tag_resource, params)
      request.send_request(options)
    end

    # <p>Removes tags from a resource.</p>
    # @param [Hash, Types::UntagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The resource's ARN.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>Tag keys to remove.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
    #     tag_keys: ["TagKey"], # required
    #   }
    #   options = {}
    #   response = client.untag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UntagResourceOutput]
    def untag_resource(params = {}, options = {})
      request = build_request(:untag_resource, params)
      request.send_request(options)
    end

    # <p>Updates a device's metadata.</p>
    # @param [Hash, Types::UpdateDeviceMetadataInput] params
    # @option params [String] :device_id
    #   <p>The device's ID.</p>
    # @option params [String] :description
    #   <p>A description for the device.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     device_id: "DeviceId", # required
    #     description: "Description"
    #   }
    #   options = {}
    #   response = client.update_device_metadata(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     device_id: "DeviceId"
    #   }
    # @return [Types::UpdateDeviceMetadataOutput]
    def update_device_metadata(params = {}, options = {})
      request = build_request(:update_device_metadata, params)
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
      context[:gem_name] = 'aws-sdk-panorama'
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
