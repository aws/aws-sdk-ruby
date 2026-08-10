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
require 'aws-sdk-core/json_rpc'

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:ecrpublic)

module Aws::ECRPUBLIC
  # An API client for Aws::ECRPUBLIC.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::SpencerFrontendService
    @identifier = :ecrpublic

    add_plugin(::Aws::ECRPUBLIC::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::ECRPUBLIC::EndpointProvider)
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
    #  Supported protocols: +:json_rpc+ (defaults to +:json_rpc+).
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

    # <p>Checks the availability of one or more image layers that are within a repository in a
    #          public registry. When an image is pushed to a repository, each image layer is checked to
    #          verify if it has been uploaded before. If it has been uploaded, then the image layer is
    #          skipped.</p>
    #          <note>
    #             <p>This operation is used by the Amazon ECR proxy and is not generally used by customers for pulling and pushing images. In most cases, you should use the <code>docker</code> CLI to pull, tag, and push images.</p>
    #          </note>
    # @param [Hash, Types::BatchCheckLayerAvailabilityRequest] params
    # @option params [String] :registry_id
    #   <p>The Amazon Web Services account ID, or registry alias, associated with the public registry that
    #            contains the image layers to check. If you do not specify a registry, the default public registry is assumed.</p>
    # @option params [String] :repository_name
    #   <p>The name of the repository that's associated with the image layers to check.</p>
    # @option params [Array<String>] :layer_digests
    #   <p>The digests of the image layers to check.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     registry_id: "RegistryIdOrAlias",
    #     repository_name: "RepositoryName", # required
    #     layer_digests: ["BatchedOperationLayerDigest"], # required
    #   }
    #   options = {}
    #   response = client.batch_check_layer_availability(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     layers: [
    #       {
    #         layer_digest: "LayerDigest",
    #         layer_availability: "AVAILABLE" # One of: ["AVAILABLE", "UNAVAILABLE"],
    #         layer_size: 1,
    #         media_type: "MediaType"
    #       }
    #     ],
    #     failures: [
    #       {
    #         layer_digest: "BatchedOperationLayerDigest",
    #         failure_code: "InvalidLayerDigest" # One of: ["InvalidLayerDigest", "MissingLayerDigest"],
    #         failure_reason: "LayerFailureReason"
    #       }
    #     ]
    #   }
    # @return [Types::BatchCheckLayerAvailabilityResponse]
    def batch_check_layer_availability(params = {}, options = {})
      request = build_request(:batch_check_layer_availability, params)
      request.send_request(options)
    end

    # <p>Deletes a list of specified images that are within a repository in a public registry.
    #          Images are specified with either an <code>imageTag</code> or
    #          <code>imageDigest</code>.</p>
    #          <p>You can remove a tag from an image by specifying the image's tag in your request. When
    #          you remove the last tag from an image, the image is deleted from your repository.</p>
    #          <p>You can completely delete an image (and all of its tags) by specifying the digest of the
    #          image in your request.</p>
    # @param [Hash, Types::BatchDeleteImageRequest] params
    # @option params [String] :registry_id
    #   <p>The Amazon Web Services account ID, or registry alias, that's associated with the registry that
    #            contains the image to delete. If you do not specify a registry, the default public registry is assumed.</p>
    # @option params [String] :repository_name
    #   <p>The repository in a public registry that contains the image to delete.</p>
    # @option params [Array<Types::ImageIdentifier>] :image_ids
    #   <p>A list of image ID references that correspond to images to delete. The format of the
    #               <code>imageIds</code> reference is <code>imageTag=tag</code> or
    #               <code>imageDigest=digest</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     registry_id: "RegistryIdOrAlias",
    #     repository_name: "RepositoryName", # required
    #     image_ids: [ # required
    #       {
    #         image_digest: "ImageDigest",
    #         image_tag: "ImageTag"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.batch_delete_image(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     image_ids: [
    #       {
    #         image_digest: "ImageDigest",
    #         image_tag: "ImageTag"
    #       }
    #     ],
    #     failures: [
    #       {
    #         image_id: {
    #           image_digest: "ImageDigest",
    #           image_tag: "ImageTag"
    #         },
    #         failure_code: "InvalidImageDigest" # One of: ["InvalidImageDigest", "InvalidImageTag", "ImageTagDoesNotMatchDigest", "ImageNotFound", "MissingDigestAndTag", "ImageReferencedByManifestList", "KmsError"],
    #         failure_reason: "ImageFailureReason"
    #       }
    #     ]
    #   }
    # @return [Types::BatchDeleteImageResponse]
    def batch_delete_image(params = {}, options = {})
      request = build_request(:batch_delete_image, params)
      request.send_request(options)
    end

    # <p>Informs Amazon ECR that the image layer upload is complete for a specified public registry,
    #          repository name, and upload ID. You can optionally provide a <code>sha256</code> digest of
    #          the image layer for data validation purposes.</p>
    #          <p>When an image is pushed, the CompleteLayerUpload API is called once for each new image
    #          layer to verify that the upload is complete.</p>
    #          <note>
    #             <p>This operation is used by the Amazon ECR proxy and is not generally used by customers for pulling and pushing images. In most cases, you should use the <code>docker</code> CLI to pull, tag, and push images.</p>
    #          </note>
    # @param [Hash, Types::CompleteLayerUploadRequest] params
    # @option params [String] :registry_id
    #   <p>The Amazon Web Services account ID, or registry alias, associated with the registry where layers are
    #            uploaded. If you do not specify a registry, the default public registry is assumed.</p>
    # @option params [String] :repository_name
    #   <p>The name of the repository in a public registry to associate with the image
    #            layer.</p>
    # @option params [String] :upload_id
    #   <p>The upload ID from a previous <a>InitiateLayerUpload</a> operation to
    #            associate with the image layer.</p>
    # @option params [Array<String>] :layer_digests
    #   <p>The <code>sha256</code> digest of the image layer.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     registry_id: "RegistryIdOrAlias",
    #     repository_name: "RepositoryName", # required
    #     upload_id: "UploadId", # required
    #     layer_digests: ["LayerDigest"], # required
    #   }
    #   options = {}
    #   response = client.complete_layer_upload(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     registry_id: "RegistryId",
    #     repository_name: "RepositoryName",
    #     upload_id: "UploadId",
    #     layer_digest: "LayerDigest"
    #   }
    # @return [Types::CompleteLayerUploadResponse]
    def complete_layer_upload(params = {}, options = {})
      request = build_request(:complete_layer_upload, params)
      request.send_request(options)
    end

    # <p>Creates a repository in a public registry. For more information, see <a href="https://docs.aws.amazon.com/AmazonECR/latest/userguide/Repositories.html">Amazon ECR
    #             repositories</a> in the <i>Amazon Elastic Container Registry User Guide</i>.</p>
    # @param [Hash, Types::CreateRepositoryRequest] params
    # @option params [String] :repository_name
    #   <p>The name to use for the repository. This appears publicly in the Amazon ECR Public Gallery.
    #            The repository name can be specified on its own (for example <code>nginx-web-app</code>) or
    #            prepended with a namespace to group the repository into a category (for example
    #               <code>project-a/nginx-web-app</code>).</p>
    # @option params [Types::RepositoryCatalogDataInput] :catalog_data
    #   <p>The details about the repository that are publicly visible in the
    #            Amazon ECR Public Gallery.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The metadata that you apply to each repository to help categorize and organize your
    #            repositories. Each tag consists of a key and an optional value. You define both of them.
    #            Tag keys can have a maximum character length of 128 characters, and tag values can have a maximum length of 256 characters.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     repository_name: "RepositoryName", # required
    #     catalog_data: {
    #       description: "RepositoryDescription",
    #       architectures: ["Architecture"],
    #       operating_systems: ["OperatingSystem"],
    #       logo_image_blob: "data",
    #       about_text: "AboutText",
    #       usage_text: "UsageText"
    #     },
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_repository(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     repository: {
    #       repository_arn: "Arn",
    #       registry_id: "RegistryId",
    #       repository_name: "RepositoryName",
    #       repository_uri: "Url",
    #       created_at: Time.now
    #     },
    #     catalog_data: {
    #       description: "RepositoryDescription",
    #       architectures: ["Architecture"],
    #       operating_systems: ["OperatingSystem"],
    #       logo_url: "ResourceUrl",
    #       about_text: "AboutText",
    #       usage_text: "UsageText",
    #       marketplace_certified: false
    #     }
    #   }
    # @return [Types::CreateRepositoryResponse]
    def create_repository(params = {}, options = {})
      request = build_request(:create_repository, params)
      request.send_request(options)
    end

    # <p>Deletes a repository in a public registry. If the repository contains images, you must
    #          either manually delete all images in the repository or use the <code>force</code> option.
    #          This option deletes all images on your behalf before deleting the repository.</p>
    # @param [Hash, Types::DeleteRepositoryRequest] params
    # @option params [String] :registry_id
    #   <p>The Amazon Web Services account ID that's associated with the public registry that contains the
    #            repository to delete. If you do not specify a registry, the default public registry is assumed.</p>
    # @option params [String] :repository_name
    #   <p>The name of the repository to delete.</p>
    # @option params [Boolean] :force
    #   <p> The force option can be used to delete a repository that contains images. If the force
    #            option is not used, the repository must be empty prior to deletion.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     registry_id: "RegistryId",
    #     repository_name: "RepositoryName", # required
    #     force: false
    #   }
    #   options = {}
    #   response = client.delete_repository(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     repository: {
    #       repository_arn: "Arn",
    #       registry_id: "RegistryId",
    #       repository_name: "RepositoryName",
    #       repository_uri: "Url",
    #       created_at: Time.now
    #     }
    #   }
    # @return [Types::DeleteRepositoryResponse]
    def delete_repository(params = {}, options = {})
      request = build_request(:delete_repository, params)
      request.send_request(options)
    end

    # <p>Deletes the repository policy that's associated with the specified repository.</p>
    # @param [Hash, Types::DeleteRepositoryPolicyRequest] params
    # @option params [String] :registry_id
    #   <p>The Amazon Web Services account ID that's associated with the public registry that contains the
    #            repository policy to delete. If you do not specify a registry, the default public registry is assumed.</p>
    # @option params [String] :repository_name
    #   <p>The name of the repository that's associated with the repository policy to
    #            delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     registry_id: "RegistryId",
    #     repository_name: "RepositoryName", # required
    #   }
    #   options = {}
    #   response = client.delete_repository_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     registry_id: "RegistryId",
    #     repository_name: "RepositoryName",
    #     policy_text: "RepositoryPolicyText"
    #   }
    # @return [Types::DeleteRepositoryPolicyResponse]
    def delete_repository_policy(params = {}, options = {})
      request = build_request(:delete_repository_policy, params)
      request.send_request(options)
    end

    # <p>Returns the image tag details for a repository in a public registry.</p>
    # @param [Hash, Types::DescribeImageTagsRequest] params
    # @option params [String] :registry_id
    #   <p>The Amazon Web Services account ID that's associated with the public registry that contains the
    #            repository where images are described. If you do not specify a registry, the default public registry is assumed.</p>
    # @option params [String] :repository_name
    #   <p>The name of the repository that contains the image tag details to describe.</p>
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> value that's returned from a previous paginated
    #               <code>DescribeImageTags</code> request where <code>maxResults</code> was used and the
    #            results exceeded the value of that parameter. Pagination continues from the end of the
    #            previous results that returned the <code>nextToken</code> value. If there are no more
    #            results to return, this value is <code>null</code>. If you specify images with
    #               <code>imageIds</code>, you can't use this option.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of repository results that's returned by
    #               <code>DescribeImageTags</code> in paginated output. When this parameter is used,
    #               <code>DescribeImageTags</code> only returns <code>maxResults</code> results in a single
    #            page along with a <code>nextToken</code> response element. You can see the remaining
    #            results of the initial request by sending another <code>DescribeImageTags</code> request
    #            with the returned <code>nextToken</code> value. This value can be between 1
    #            and 1000. If this parameter isn't used, then <code>DescribeImageTags</code>
    #            returns up to 100 results and a <code>nextToken</code> value, if
    #            applicable. If you specify images with <code>imageIds</code>, you can't use this
    #            option.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     registry_id: "RegistryId",
    #     repository_name: "RepositoryName", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.describe_image_tags(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     image_tag_details: [
    #       {
    #         image_tag: "ImageTag",
    #         created_at: Time.now,
    #         image_detail: {
    #           image_digest: "ImageDigest",
    #           image_size_in_bytes: 1,
    #           image_pushed_at: Time.now,
    #           image_manifest_media_type: "MediaType",
    #           artifact_media_type: "MediaType"
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeImageTagsResponse]
    def describe_image_tags(params = {}, options = {})
      request = build_request(:describe_image_tags, params)
      request.send_request(options)
    end

    # <p>Returns metadata that's related to the images in a repository in a public
    #          registry.</p>
    #          <note>
    #             <p>Beginning with Docker version 1.9, the Docker client compresses image layers before
    #             pushing them to a V2 Docker registry. The output of the <code>docker images</code>
    #             command shows the uncompressed image size. Therefore, it might return a larger image
    #             size than the image sizes that are returned by <a>DescribeImages</a>.</p>
    #          </note>
    # @param [Hash, Types::DescribeImagesRequest] params
    # @option params [String] :registry_id
    #   <p>The Amazon Web Services account ID that's associated with the public registry that contains the
    #            repository where images are described. If you do not specify a registry, the default public registry is assumed.</p>
    # @option params [String] :repository_name
    #   <p>The repository that contains the images to describe.</p>
    # @option params [Array<Types::ImageIdentifier>] :image_ids
    #   <p>The list of image IDs for the requested repository.</p>
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> value that's returned from a previous paginated
    #               <code>DescribeImages</code> request where <code>maxResults</code> was used and the
    #            results exceeded the value of that parameter. Pagination continues from the end of the
    #            previous results that returned the <code>nextToken</code> value. If there are no more
    #            results to return, this value is <code>null</code>. If you specify images with
    #               <code>imageIds</code>, you can't use this option.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of repository results that's returned by <code>DescribeImages</code>
    #            in paginated output. When this parameter is used, <code>DescribeImages</code> only returns
    #               <code>maxResults</code> results in a single page along with a <code>nextToken</code>
    #            response element. You can see the remaining results of the initial request by sending
    #            another <code>DescribeImages</code> request with the returned <code>nextToken</code> value.
    #            This value can be between 1 and 1000. If this parameter isn't
    #            used, then <code>DescribeImages</code> returns up to 100 results and a
    #               <code>nextToken</code> value, if applicable. If you specify images with
    #               <code>imageIds</code>, you can't use this option.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     registry_id: "RegistryId",
    #     repository_name: "RepositoryName", # required
    #     image_ids: [
    #       {
    #         image_digest: "ImageDigest",
    #         image_tag: "ImageTag"
    #       }
    #     ],
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.describe_images(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     image_details: [
    #       {
    #         registry_id: "RegistryId",
    #         repository_name: "RepositoryName",
    #         image_digest: "ImageDigest",
    #         image_tags: ["ImageTag"],
    #         image_size_in_bytes: 1,
    #         image_pushed_at: Time.now,
    #         image_manifest_media_type: "MediaType",
    #         artifact_media_type: "MediaType"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeImagesResponse]
    def describe_images(params = {}, options = {})
      request = build_request(:describe_images, params)
      request.send_request(options)
    end

    # <p>Returns details for a public registry.</p>
    # @param [Hash, Types::DescribeRegistriesRequest] params
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> value that's returned from a previous paginated
    #               <code>DescribeRegistries</code> request where <code>maxResults</code> was used and the
    #            results exceeded the value of that parameter. Pagination continues from the end of the
    #            previous results that returned the <code>nextToken</code> value. If there are no more
    #            results to return, this value is <code>null</code>.</p>
    #            <note>
    #               <p>This token should be treated as an opaque identifier that is only used to retrieve the next items in a list and not for other programmatic purposes.</p>
    #            </note>
    # @option params [Integer] :max_results
    #   <p>The maximum number of repository results that's returned by
    #               <code>DescribeRegistries</code> in paginated output. When this parameter is used,
    #               <code>DescribeRegistries</code> only returns <code>maxResults</code> results in a single
    #            page along with a <code>nextToken</code> response element. The remaining results of the
    #            initial request can be seen by sending another <code>DescribeRegistries</code> request with
    #            the returned <code>nextToken</code> value. This value can be between 1 and
    #            1000. If this parameter isn't used, then <code>DescribeRegistries</code>
    #            returns up to 100 results and a <code>nextToken</code> value, if
    #            applicable.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.describe_registries(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     registries: [ # required
    #       {
    #         registry_id: "RegistryId", # required
    #         registry_arn: "Arn", # required
    #         registry_uri: "Url", # required
    #         verified: false, # required
    #         aliases: [ # required
    #           {
    #             name: "RegistryAliasName", # required
    #             status: "ACTIVE" # One of: ["ACTIVE", "PENDING", "REJECTED"], # required
    #             primary_registry_alias: false, # required
    #             default_registry_alias: false, # required
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeRegistriesResponse]
    def describe_registries(params = {}, options = {})
      request = build_request(:describe_registries, params)
      request.send_request(options)
    end

    # <p>Describes repositories that are in a public registry.</p>
    # @param [Hash, Types::DescribeRepositoriesRequest] params
    # @option params [String] :registry_id
    #   <p>The Amazon Web Services account ID that's associated with the registry that contains the repositories
    #            to be described. If you do not specify a registry, the default public registry is assumed.</p>
    # @option params [Array<String>] :repository_names
    #   <p>A list of repositories to describe. If this parameter is omitted, then all repositories
    #            in a registry are described.</p>
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> value that's returned from a previous paginated
    #               <code>DescribeRepositories</code> request where <code>maxResults</code> was used and the
    #            results exceeded the value of that parameter. Pagination continues from the end of the
    #            previous results that returned the <code>nextToken</code> value. If there are no more
    #            results to return, this value is <code>null</code>. If you specify repositories with
    #               <code>repositoryNames</code>, you can't use this option.</p>
    #            <note>
    #               <p>This token should be treated as an opaque identifier that is only used to retrieve the next items in a list and not for other programmatic purposes.</p>
    #            </note>
    # @option params [Integer] :max_results
    #   <p>The maximum number of repository results that's returned by
    #               <code>DescribeRepositories</code> in paginated output. When this parameter is used,
    #               <code>DescribeRepositories</code> only returns <code>maxResults</code> results in a
    #            single page along with a <code>nextToken</code> response element. You can see the remaining
    #            results of the initial request by sending another <code>DescribeRepositories</code> request
    #            with the returned <code>nextToken</code> value. This value can be between 1
    #            and 1000. If this parameter isn't used, then <code>DescribeRepositories</code>
    #            returns up to 100 results and a <code>nextToken</code> value, if
    #            applicable. If you specify repositories with <code>repositoryNames</code>, you can't use
    #            this option.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     registry_id: "RegistryId",
    #     repository_names: ["RepositoryName"],
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.describe_repositories(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     repositories: [
    #       {
    #         repository_arn: "Arn",
    #         registry_id: "RegistryId",
    #         repository_name: "RepositoryName",
    #         repository_uri: "Url",
    #         created_at: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeRepositoriesResponse]
    def describe_repositories(params = {}, options = {})
      request = build_request(:describe_repositories, params)
      request.send_request(options)
    end

    # <p>Retrieves an authorization token. An authorization token represents your IAM
    #          authentication credentials. You can use it to access any Amazon ECR registry that your IAM
    #          principal has access to. The authorization token is valid for 12 hours. This API requires
    #          the <code>ecr-public:GetAuthorizationToken</code> and
    #             <code>sts:GetServiceBearerToken</code> permissions.</p>
    # @param [Hash, Types::GetAuthorizationTokenRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_authorization_token(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     authorization_data: {
    #       authorization_token: "Base64",
    #       expires_at: Time.now
    #     }
    #   }
    # @return [Types::GetAuthorizationTokenResponse]
    def get_authorization_token(params = {}, options = {})
      request = build_request(:get_authorization_token, params)
      request.send_request(options)
    end

    # <p>Retrieves catalog metadata for a public registry.</p>
    # @param [Hash, Types::GetRegistryCatalogDataRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_registry_catalog_data(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     registry_catalog_data: { # required
    #       display_name: "RegistryDisplayName"
    #     }
    #   }
    # @return [Types::GetRegistryCatalogDataResponse]
    def get_registry_catalog_data(params = {}, options = {})
      request = build_request(:get_registry_catalog_data, params)
      request.send_request(options)
    end

    # <p>Retrieve catalog metadata for a repository in a public registry. This metadata is
    #          displayed publicly in the Amazon ECR Public Gallery.</p>
    # @param [Hash, Types::GetRepositoryCatalogDataRequest] params
    # @option params [String] :registry_id
    #   <p>The Amazon Web Services account ID that's associated with the registry that contains the repositories
    #            to be described. If you do not specify a registry, the default public registry is assumed.</p>
    # @option params [String] :repository_name
    #   <p>The name of the repository to retrieve the catalog metadata for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     registry_id: "RegistryId",
    #     repository_name: "RepositoryName", # required
    #   }
    #   options = {}
    #   response = client.get_repository_catalog_data(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     catalog_data: {
    #       description: "RepositoryDescription",
    #       architectures: ["Architecture"],
    #       operating_systems: ["OperatingSystem"],
    #       logo_url: "ResourceUrl",
    #       about_text: "AboutText",
    #       usage_text: "UsageText",
    #       marketplace_certified: false
    #     }
    #   }
    # @return [Types::GetRepositoryCatalogDataResponse]
    def get_repository_catalog_data(params = {}, options = {})
      request = build_request(:get_repository_catalog_data, params)
      request.send_request(options)
    end

    # <p>Retrieves the repository policy for the specified repository.</p>
    # @param [Hash, Types::GetRepositoryPolicyRequest] params
    # @option params [String] :registry_id
    #   <p>The Amazon Web Services account ID that's associated with the public registry that contains the
    #            repository. If you do not specify a registry, the default public registry is assumed.</p>
    # @option params [String] :repository_name
    #   <p>The name of the repository with the policy to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     registry_id: "RegistryId",
    #     repository_name: "RepositoryName", # required
    #   }
    #   options = {}
    #   response = client.get_repository_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     registry_id: "RegistryId",
    #     repository_name: "RepositoryName",
    #     policy_text: "RepositoryPolicyText"
    #   }
    # @return [Types::GetRepositoryPolicyResponse]
    def get_repository_policy(params = {}, options = {})
      request = build_request(:get_repository_policy, params)
      request.send_request(options)
    end

    # <p>Notifies Amazon ECR that you intend to upload an image layer.</p>
    #          <p>When an image is pushed, the InitiateLayerUpload API is called once for each image layer
    #          that hasn't already been uploaded. Whether an image layer uploads is determined by the
    #          BatchCheckLayerAvailability API action.</p>
    #          <note>
    #             <p>This operation is used by the Amazon ECR proxy and is not generally used by customers for pulling and pushing images. In most cases, you should use the <code>docker</code> CLI to pull, tag, and push images.</p>
    #          </note>
    # @param [Hash, Types::InitiateLayerUploadRequest] params
    # @option params [String] :registry_id
    #   <p>The Amazon Web Services account ID, or registry alias, that's associated with the registry to which
    #            you intend to upload layers. If you do not specify a registry, the default public registry is assumed.</p>
    # @option params [String] :repository_name
    #   <p>The name of the repository that you want to upload layers to.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     registry_id: "RegistryIdOrAlias",
    #     repository_name: "RepositoryName", # required
    #   }
    #   options = {}
    #   response = client.initiate_layer_upload(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     upload_id: "UploadId",
    #     part_size: 1
    #   }
    # @return [Types::InitiateLayerUploadResponse]
    def initiate_layer_upload(params = {}, options = {})
      request = build_request(:initiate_layer_upload, params)
      request.send_request(options)
    end

    # <p>List the tags for an Amazon ECR Public resource.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the resource to list the tags for. Currently, the
    #            supported resource is an Amazon ECR Public repository.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    # @return [Types::ListTagsForResourceResponse]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Creates or updates the image manifest and tags that are associated with an image.</p>
    #          <p>When an image is pushed and all new image layers have been uploaded, the PutImage API is
    #          called once to create or update the image manifest and the tags that are associated with
    #          the image.</p>
    #          <note>
    #             <p>This operation is used by the Amazon ECR proxy and is not generally used by customers for pulling and pushing images. In most cases, you should use the <code>docker</code> CLI to pull, tag, and push images.</p>
    #          </note>
    # @param [Hash, Types::PutImageRequest] params
    # @option params [String] :registry_id
    #   <p>The Amazon Web Services account ID, or registry alias, that's associated with the public registry that
    #            contains the repository where the image is put. If you do not specify a registry, the default public registry is assumed.</p>
    # @option params [String] :repository_name
    #   <p>The name of the repository where the image is put.</p>
    # @option params [String] :image_manifest
    #   <p>The image manifest that corresponds to the image to be uploaded.</p>
    # @option params [String] :image_manifest_media_type
    #   <p>The media type of the image manifest. If you push an image manifest that doesn't contain
    #            the <code>mediaType</code> field, you must specify the <code>imageManifestMediaType</code>
    #            in the request.</p>
    # @option params [String] :image_tag
    #   <p>The tag to associate with the image. This parameter is required for images that use the
    #            Docker Image Manifest V2 Schema 2 or Open Container Initiative (OCI) formats.</p>
    # @option params [String] :image_digest
    #   <p>The image digest of the image manifest that corresponds to the image.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     registry_id: "RegistryIdOrAlias",
    #     repository_name: "RepositoryName", # required
    #     image_manifest: "ImageManifest", # required
    #     image_manifest_media_type: "MediaType",
    #     image_tag: "ImageTag",
    #     image_digest: "ImageDigest"
    #   }
    #   options = {}
    #   response = client.put_image(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     image: {
    #       registry_id: "RegistryIdOrAlias",
    #       repository_name: "RepositoryName",
    #       image_id: {
    #         image_digest: "ImageDigest",
    #         image_tag: "ImageTag"
    #       },
    #       image_manifest: "ImageManifest",
    #       image_manifest_media_type: "MediaType"
    #     }
    #   }
    # @return [Types::PutImageResponse]
    def put_image(params = {}, options = {})
      request = build_request(:put_image, params)
      request.send_request(options)
    end

    # <p>Create or update the catalog data for a public registry.</p>
    # @param [Hash, Types::PutRegistryCatalogDataRequest] params
    # @option params [String] :display_name
    #   <p>The display name for a public registry. The display name is shown as the repository
    #            author in the Amazon ECR Public Gallery.</p>
    #            <note>
    #               <p>The registry display name is only publicly visible in the Amazon ECR Public Gallery for
    #               verified accounts.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     display_name: "RegistryDisplayName"
    #   }
    #   options = {}
    #   response = client.put_registry_catalog_data(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     registry_catalog_data: { # required
    #       display_name: "RegistryDisplayName"
    #     }
    #   }
    # @return [Types::PutRegistryCatalogDataResponse]
    def put_registry_catalog_data(params = {}, options = {})
      request = build_request(:put_registry_catalog_data, params)
      request.send_request(options)
    end

    # <p>Creates or updates the catalog data for a repository in a public registry.</p>
    # @param [Hash, Types::PutRepositoryCatalogDataRequest] params
    # @option params [String] :registry_id
    #   <p>The Amazon Web Services account ID that's associated with the public registry the repository is in.
    #            If you do not specify a registry, the default public registry is assumed.</p>
    # @option params [String] :repository_name
    #   <p>The name of the repository to create or update the catalog data for.</p>
    # @option params [Types::RepositoryCatalogDataInput] :catalog_data
    #   <p>An object containing the catalog data for a repository. This data is publicly visible in
    #            the Amazon ECR Public Gallery.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     registry_id: "RegistryId",
    #     repository_name: "RepositoryName", # required
    #     catalog_data: { # required
    #       description: "RepositoryDescription",
    #       architectures: ["Architecture"],
    #       operating_systems: ["OperatingSystem"],
    #       logo_image_blob: "data",
    #       about_text: "AboutText",
    #       usage_text: "UsageText"
    #     }
    #   }
    #   options = {}
    #   response = client.put_repository_catalog_data(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     catalog_data: {
    #       description: "RepositoryDescription",
    #       architectures: ["Architecture"],
    #       operating_systems: ["OperatingSystem"],
    #       logo_url: "ResourceUrl",
    #       about_text: "AboutText",
    #       usage_text: "UsageText",
    #       marketplace_certified: false
    #     }
    #   }
    # @return [Types::PutRepositoryCatalogDataResponse]
    def put_repository_catalog_data(params = {}, options = {})
      request = build_request(:put_repository_catalog_data, params)
      request.send_request(options)
    end

    # <p>Applies a repository policy to the specified public repository to control access
    #          permissions. For more information, see <a href="https://docs.aws.amazon.com/AmazonECR/latest/userguide/repository-policies.html">Amazon ECR Repository
    #             Policies</a> in the <i>Amazon Elastic Container Registry User Guide</i>.</p>
    # @param [Hash, Types::SetRepositoryPolicyRequest] params
    # @option params [String] :registry_id
    #   <p>The Amazon Web Services account ID that's associated with the registry that contains the repository.
    #            If you do not specify a registry, the default public registry is assumed.</p>
    # @option params [String] :repository_name
    #   <p>The name of the repository to receive the policy.</p>
    # @option params [String] :policy_text
    #   <p>The JSON repository policy text to apply to the repository. For more information, see
    #               <a href="https://docs.aws.amazon.com/AmazonECR/latest/userguide/repository-policy-examples.html">Amazon ECR Repository
    #               Policies</a> in the <i>Amazon Elastic Container Registry User Guide</i>.</p>
    # @option params [Boolean] :force
    #   <p>If the policy that you want to set on a repository policy would prevent you from setting
    #            another policy in the future, you must force the <a>SetRepositoryPolicy</a>
    #            operation. This prevents accidental repository lockouts.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     registry_id: "RegistryId",
    #     repository_name: "RepositoryName", # required
    #     policy_text: "RepositoryPolicyText", # required
    #     force: false
    #   }
    #   options = {}
    #   response = client.set_repository_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     registry_id: "RegistryId",
    #     repository_name: "RepositoryName",
    #     policy_text: "RepositoryPolicyText"
    #   }
    # @return [Types::SetRepositoryPolicyResponse]
    def set_repository_policy(params = {}, options = {})
      request = build_request(:set_repository_policy, params)
      request.send_request(options)
    end

    # <p>Associates the specified tags to a resource with the specified <code>resourceArn</code>.
    #          If existing tags on a resource aren't specified in the request parameters, they aren't
    #          changed. When a resource is deleted, the tags associated with that resource are also
    #          deleted.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to add tags to. Currently, the supported
    #            resource is an Amazon ECR Public repository.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags to add to the resource. A tag is an array of key-value pairs.
    #            Tag keys can have a maximum character length of 128 characters, and tag values can have a maximum length of 256 characters.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey",
    #         value: "TagValue"
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

    # <p>Deletes specified tags from a resource.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to delete tags from. Currently, the supported resource is
    #            an Amazon ECR Public repository.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The keys of the tags to be removed.</p>
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

    # <p>Uploads an image layer part to Amazon ECR.</p>
    #          <p>When an image is pushed, each new image layer is uploaded in parts. The maximum size of
    #          each image layer part can be 20971520 bytes (about 20MB). The UploadLayerPart API is called
    #          once for each new image layer part.</p>
    #          <note>
    #             <p>This operation is used by the Amazon ECR proxy and is not generally used by customers for pulling and pushing images. In most cases, you should use the <code>docker</code> CLI to pull, tag, and push images.</p>
    #          </note>
    # @param [Hash, Types::UploadLayerPartRequest] params
    # @option params [String] :registry_id
    #   <p>The Amazon Web Services account ID, or registry alias, that's associated with the registry that you're
    #            uploading layer parts to. If you do not specify a registry, the default public registry is assumed.</p>
    # @option params [String] :repository_name
    #   <p>The name of the repository that you're uploading layer parts to.</p>
    # @option params [String] :upload_id
    #   <p>The upload ID from a previous <a>InitiateLayerUpload</a> operation to
    #            associate with the layer part upload.</p>
    # @option params [Integer] :part_first_byte
    #   <p>The position of the first byte of the layer part witin the overall image layer.</p>
    # @option params [Integer] :part_last_byte
    #   <p>The position of the last byte of the layer part within the overall image layer.</p>
    # @option params [String] :layer_part_blob
    #   <p>The base64-encoded layer part payload.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     registry_id: "RegistryIdOrAlias",
    #     repository_name: "RepositoryName", # required
    #     upload_id: "UploadId", # required
    #     part_first_byte: 1, # required
    #     part_last_byte: 1, # required
    #     layer_part_blob: "data", # required
    #   }
    #   options = {}
    #   response = client.upload_layer_part(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     registry_id: "RegistryId",
    #     repository_name: "RepositoryName",
    #     upload_id: "UploadId",
    #     last_byte_received: 1
    #   }
    # @return [Types::UploadLayerPartResponse]
    def upload_layer_part(params = {}, options = {})
      request = build_request(:upload_layer_part, params)
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
      context[:gem_name] = 'aws-sdk-ecrpublic'
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
          json_rpc: Aws::Core::JsonRpc
        }
      end
    end
  end
end
