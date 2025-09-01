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
require 'aws-sdk-core/plugins/json_rpc'

module Aws::ECR
  # An API client for Aws::ECR.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AmazonEC2ContainerRegistryV20150921

    add_plugin(::Aws::ECR::Plugins::Endpoint)
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
    add_plugin(Aws::Core::Plugins::JsonRpc)

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
    # @option options [Aws::ECR::EndpointProvider] :endpoint_provider
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

    # <p>Checks the availability of one or more image layers in a repository.</p>
    #          <p>When an image is pushed to a repository, each image layer is checked to verify if it
    #             has been uploaded before. If it has been uploaded, then the image layer is
    #             skipped.</p>
    #          <note>
    #             <p>This operation is used by the Amazon ECR proxy and is not generally used by
    #         customers for pulling and pushing images. In most cases, you should use the <code>docker</code> CLI to pull, tag, and push images.</p>
    #          </note>
    # @param [Hash, Types::BatchCheckLayerAvailabilityRequest] params
    # @option params [String] :registry_id
    #   <p>The Amazon Web Services account ID associated with the registry that contains the image layers to
    #               check. If you do not specify a registry, the default registry is assumed.</p>
    # @option params [String] :repository_name
    #   <p>The name of the repository that is associated with the image layers to check.</p>
    # @option params [Array<String>] :layer_digests
    #   <p>The digests of the image layers to check.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     registry_id: "RegistryId",
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

    # <p>Deletes a list of specified images within a repository. Images are specified with
    #             either an <code>imageTag</code> or <code>imageDigest</code>.</p>
    #          <p>You can remove a tag from an image by specifying the image's tag in your request. When
    #             you remove the last tag from an image, the image is deleted from your repository.</p>
    #          <p>You can completely delete an image (and all of its tags) by specifying the image's
    #             digest in your request.</p>
    # @param [Hash, Types::BatchDeleteImageRequest] params
    # @option params [String] :registry_id
    #   <p>The Amazon Web Services account ID associated with the registry that contains the image to delete.
    #               If you do not specify a registry, the default registry is assumed.</p>
    # @option params [String] :repository_name
    #   <p>The repository that contains the image to delete.</p>
    # @option params [Array<Types::ImageIdentifier>] :image_ids
    #   <p>A list of image ID references that correspond to images to delete. The format of the
    #                   <code>imageIds</code> reference is <code>imageTag=tag</code> or
    #                   <code>imageDigest=digest</code>.</p>
    # @example To delete multiple images
    #   # This example deletes images with the tags precise and trusty in a repository called ubuntu in the default registry for an account.
    #   params = {
    #     repository_name: "ubuntu",
    #     image_ids: [
    #       {
    #         image_tag: "precise"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.batch_delete_image(params, options)
    #   response.to_h #=>
    #   {
    #     failures: [
    #     ],
    #     image_ids: [
    #       {
    #         image_tag: "precise",
    #         image_digest: "sha256:examplee6d1e504117a17000003d3753086354a38375961f2e665416ef4b1b2f"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     registry_id: "RegistryId",
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
    #         failure_code: "InvalidImageDigest" # One of: ["InvalidImageDigest", "InvalidImageTag", "ImageTagDoesNotMatchDigest", "ImageNotFound", "MissingDigestAndTag", "ImageReferencedByManifestList", "KmsError", "UpstreamAccessDenied", "UpstreamTooManyRequests", "UpstreamUnavailable"],
    #         failure_reason: "ImageFailureReason"
    #       }
    #     ]
    #   }
    # @return [Types::BatchDeleteImageResponse]
    def batch_delete_image(params = {}, options = {})
      request = build_request(:batch_delete_image, params)
      request.send_request(options)
    end

    # <p>Gets detailed information for an image. Images are specified with either an
    #                 <code>imageTag</code> or <code>imageDigest</code>.</p>
    #          <p>When an image is pulled, the BatchGetImage API is called once to retrieve the image
    #             manifest.</p>
    # @param [Hash, Types::BatchGetImageRequest] params
    # @option params [String] :registry_id
    #   <p>The Amazon Web Services account ID associated with the registry that contains the images to
    #               describe. If you do not specify a registry, the default registry is assumed.</p>
    # @option params [String] :repository_name
    #   <p>The repository that contains the images to describe.</p>
    # @option params [Array<Types::ImageIdentifier>] :image_ids
    #   <p>A list of image ID references that correspond to images to describe. The format of the
    #                   <code>imageIds</code> reference is <code>imageTag=tag</code> or
    #                   <code>imageDigest=digest</code>.</p>
    # @option params [Array<String>] :accepted_media_types
    #   <p>The accepted media types for the request.</p>
    #            <p>Valid values: <code>application/vnd.docker.distribution.manifest.v1+json</code> |
    #                   <code>application/vnd.docker.distribution.manifest.v2+json</code> |
    #                   <code>application/vnd.oci.image.manifest.v1+json</code>
    #            </p>
    # @example To obtain multiple images in a single request
    #   # This example obtains information for an image with a specified image digest ID from the repository named ubuntu in the current account.
    #   params = {
    #     repository_name: "ubuntu",
    #     image_ids: [
    #       {
    #         image_tag: "precise"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.batch_get_image(params, options)
    #   response.to_h #=>
    #   {
    #     images: [
    #       {
    #         image_manifest: "{\n \"schemaVersion\": 1,\n \"name\": \"ubuntu\",\n \"tag\": \"precise\",\n...",
    #         repository_name: "ubuntu",
    #         registry_id: "244698725403",
    #         image_id: {
    #           image_tag: "precise",
    #           image_digest: "sha256:example76bdff6d83a09ba2a818f0d00000063724a9ac3ba5019c56f74ebf42a"
    #         }
    #       }
    #     ],
    #     failures: [
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     registry_id: "RegistryId",
    #     repository_name: "RepositoryName", # required
    #     image_ids: [ # required
    #       {
    #         image_digest: "ImageDigest",
    #         image_tag: "ImageTag"
    #       }
    #     ],
    #     accepted_media_types: ["MediaType"]
    #   }
    #   options = {}
    #   response = client.batch_get_image(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     images: [
    #       {
    #         registry_id: "RegistryId",
    #         repository_name: "RepositoryName",
    #         image_id: {
    #           image_digest: "ImageDigest",
    #           image_tag: "ImageTag"
    #         },
    #         image_manifest: "ImageManifest",
    #         image_manifest_media_type: "MediaType"
    #       }
    #     ],
    #     failures: [
    #       {
    #         image_id: {
    #           image_digest: "ImageDigest",
    #           image_tag: "ImageTag"
    #         },
    #         failure_code: "InvalidImageDigest" # One of: ["InvalidImageDigest", "InvalidImageTag", "ImageTagDoesNotMatchDigest", "ImageNotFound", "MissingDigestAndTag", "ImageReferencedByManifestList", "KmsError", "UpstreamAccessDenied", "UpstreamTooManyRequests", "UpstreamUnavailable"],
    #         failure_reason: "ImageFailureReason"
    #       }
    #     ]
    #   }
    # @return [Types::BatchGetImageResponse]
    def batch_get_image(params = {}, options = {})
      request = build_request(:batch_get_image, params)
      request.send_request(options)
    end

    # <p>Gets the scanning configuration for one or more repositories.</p>
    # @param [Hash, Types::BatchGetRepositoryScanningConfigurationRequest] params
    # @option params [Array<String>] :repository_names
    #   <p>One or more repository names to get the scanning configuration for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     repository_names: ["RepositoryName"], # required
    #   }
    #   options = {}
    #   response = client.batch_get_repository_scanning_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     scanning_configurations: [
    #       {
    #         repository_arn: "Arn",
    #         repository_name: "RepositoryName",
    #         scan_on_push: false,
    #         scan_frequency: "SCAN_ON_PUSH" # One of: ["SCAN_ON_PUSH", "CONTINUOUS_SCAN", "MANUAL"],
    #         applied_scan_filters: [
    #           {
    #             filter: "ScanningRepositoryFilterValue", # required
    #             filter_type: "WILDCARD" # One of: ["WILDCARD"], # required
    #           }
    #         ]
    #       }
    #     ],
    #     failures: [
    #       {
    #         repository_name: "RepositoryName",
    #         failure_code: "REPOSITORY_NOT_FOUND" # One of: ["REPOSITORY_NOT_FOUND"],
    #         failure_reason: "ScanningConfigurationFailureReason"
    #       }
    #     ]
    #   }
    # @return [Types::BatchGetRepositoryScanningConfigurationResponse]
    def batch_get_repository_scanning_configuration(params = {}, options = {})
      request = build_request(:batch_get_repository_scanning_configuration, params)
      request.send_request(options)
    end

    # <p>Informs Amazon ECR that the image layer upload has completed for a specified registry,
    #             repository name, and upload ID. You can optionally provide a <code>sha256</code> digest
    #             of the image layer for data validation purposes.</p>
    #          <p>When an image is pushed, the CompleteLayerUpload API is called once per each new image
    #             layer to verify that the upload has completed.</p>
    #          <note>
    #             <p>This operation is used by the Amazon ECR proxy and is not generally used by
    #         customers for pulling and pushing images. In most cases, you should use the <code>docker</code> CLI to pull, tag, and push images.</p>
    #          </note>
    # @param [Hash, Types::CompleteLayerUploadRequest] params
    # @option params [String] :registry_id
    #   <p>The Amazon Web Services account ID associated with the registry to which to upload layers.
    #               If you do not specify a registry, the default registry is assumed.</p>
    # @option params [String] :repository_name
    #   <p>The name of the repository to associate with the image layer.</p>
    # @option params [String] :upload_id
    #   <p>The upload ID from a previous <a>InitiateLayerUpload</a> operation to
    #               associate with the image layer.</p>
    # @option params [Array<String>] :layer_digests
    #   <p>The <code>sha256</code> digest of the image layer.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     registry_id: "RegistryId",
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

    # <p>Creates a pull through cache rule. A pull through cache rule provides a way to cache
    #             images from an upstream registry source in your Amazon ECR private registry. For more
    #             information, see <a href="https://docs.aws.amazon.com/AmazonECR/latest/userguide/pull-through-cache.html">Using pull through cache
    #                 rules</a> in the <i>Amazon Elastic Container Registry User Guide</i>.</p>
    # @param [Hash, Types::CreatePullThroughCacheRuleRequest] params
    # @option params [String] :ecr_repository_prefix
    #   <p>The repository name prefix to use when caching images from the source registry.</p>
    #            <important>
    #               <p>There is always an assumed <code>/</code> applied to the end of the prefix. If you
    #                   specify <code>ecr-public</code> as the prefix, Amazon ECR treats that as
    #                       <code>ecr-public/</code>.</p>
    #            </important>
    # @option params [String] :upstream_registry_url
    #   <p>The registry URL of the upstream public registry to use as the source for the pull
    #               through cache rule. The following is the syntax to use for each supported upstream
    #               registry.</p>
    #            <ul>
    #               <li>
    #                  <p>Amazon ECR (<code>ecr</code>) –
    #                       <code><accountId>.dkr.ecr.<region>.amazonaws.com</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Amazon ECR Public (<code>ecr-public</code>) – <code>public.ecr.aws</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Docker Hub (<code>docker-hub</code>) –
    #                       <code>registry-1.docker.io</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>GitHub Container Registry (<code>github-container-registry</code>) –
    #                           <code>ghcr.io</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>GitLab Container Registry (<code>gitlab-container-registry</code>) –
    #                           <code>registry.gitlab.com</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Kubernetes (<code>k8s</code>) – <code>registry.k8s.io</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Microsoft Azure Container Registry (<code>azure-container-registry</code>) –
    #                           <code><custom>.azurecr.io</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Quay (<code>quay</code>) – <code>quay.io</code>
    #                  </p>
    #               </li>
    #            </ul>
    # @option params [String] :registry_id
    #   <p>The Amazon Web Services account ID associated with the registry to create the pull through cache
    #               rule for. If you do not specify a registry, the default registry is assumed.</p>
    # @option params [String] :upstream_registry
    #   <p>The name of the upstream registry.</p>
    # @option params [String] :credential_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Web Services Secrets Manager secret that identifies the credentials to authenticate
    #               to the upstream registry.</p>
    # @option params [String] :custom_role_arn
    #   <p>Amazon Resource Name (ARN) of the IAM role to be assumed by Amazon ECR to authenticate to
    #               the ECR upstream registry. This role must be in the same account as the registry that
    #               you are configuring.</p>
    # @option params [String] :upstream_repository_prefix
    #   <p>The repository name prefix of the upstream registry to match with the upstream
    #               repository name. When this field isn't specified, Amazon ECR will use the
    #               <code>ROOT</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     ecr_repository_prefix: "PullThroughCacheRuleRepositoryPrefix", # required
    #     upstream_registry_url: "Url", # required
    #     registry_id: "RegistryId",
    #     upstream_registry: "ecr" # One of: ["ecr", "ecr-public", "quay", "k8s", "docker-hub", "github-container-registry", "azure-container-registry", "gitlab-container-registry"],
    #     credential_arn: "CredentialArn",
    #     custom_role_arn: "CustomRoleArn",
    #     upstream_repository_prefix: "PullThroughCacheRuleRepositoryPrefix"
    #   }
    #   options = {}
    #   response = client.create_pull_through_cache_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     ecr_repository_prefix: "PullThroughCacheRuleRepositoryPrefix",
    #     upstream_registry_url: "Url",
    #     created_at: Time.now,
    #     registry_id: "RegistryId",
    #     upstream_registry: "ecr" # One of: ["ecr", "ecr-public", "quay", "k8s", "docker-hub", "github-container-registry", "azure-container-registry", "gitlab-container-registry"],
    #     credential_arn: "CredentialArn",
    #     custom_role_arn: "CustomRoleArn",
    #     upstream_repository_prefix: "PullThroughCacheRuleRepositoryPrefix"
    #   }
    # @return [Types::CreatePullThroughCacheRuleResponse]
    def create_pull_through_cache_rule(params = {}, options = {})
      request = build_request(:create_pull_through_cache_rule, params)
      request.send_request(options)
    end

    # <p>Creates a repository. For more information, see <a href="https://docs.aws.amazon.com/AmazonECR/latest/userguide/Repositories.html">Amazon ECR repositories</a> in the
    #                 <i>Amazon Elastic Container Registry User Guide</i>.</p>
    # @param [Hash, Types::CreateRepositoryRequest] params
    # @option params [String] :registry_id
    #   <p>The Amazon Web Services account ID associated with the registry to create the repository.
    #               If you do not specify a registry, the default registry is assumed.</p>
    # @option params [String] :repository_name
    #   <p>The name to use for the repository. The repository name may be specified on its own
    #               (such as <code>nginx-web-app</code>) or it can be prepended with a namespace to group
    #               the repository into a category (such as <code>project-a/nginx-web-app</code>).</p>
    #            <p>The repository name must start with a letter and can only contain lowercase letters,
    #               numbers, hyphens, underscores, and forward slashes.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The metadata that you apply to the repository to help you categorize and organize
    #               them. Each tag consists of a key and an optional value, both of which you define.
    #               Tag keys can have a maximum character length of 128 characters, and tag values can have
    #               a maximum length of 256 characters.</p>
    # @option params [String] :image_tag_mutability
    #   <p>The tag mutability setting for the repository. If this parameter is omitted, the
    #               default setting of <code>MUTABLE</code> will be used which will allow image tags to be
    #               overwritten. If <code>IMMUTABLE</code> is specified, all image tags within the
    #               repository will be immutable which will prevent them from being overwritten.</p>
    # @option params [Array<Types::ImageTagMutabilityExclusionFilter>] :image_tag_mutability_exclusion_filters
    #   <p>Creates a repository with a list of filters that define which image tags can override the default image tag mutability setting.</p>
    # @option params [Types::ImageScanningConfiguration] :image_scanning_configuration
    #   <p>The image scanning configuration for the repository. This determines whether images
    #               are scanned for known vulnerabilities after being pushed to the repository.</p>
    # @option params [Types::EncryptionConfiguration] :encryption_configuration
    #   <p>The encryption configuration for the repository. This determines how the contents of
    #               your repository are encrypted at rest.</p>
    # @example To create a new repository
    #   # This example creates a repository called nginx-web-app inside the project-a namespace in the default registry for an account.
    #   params = {
    #     repository_name: "project-a/nginx-web-app"
    #   }
    #   options = {}
    #   response = client.create_repository(params, options)
    #   response.to_h #=>
    #   {
    #     repository: {
    #       registry_id: "012345678901",
    #       repository_name: "project-a/nginx-web-app",
    #       repository_arn: "arn:aws:ecr:us-west-2:012345678901:repository/project-a/nginx-web-app"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     registry_id: "RegistryId",
    #     repository_name: "RepositoryName", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     image_tag_mutability: "MUTABLE" # One of: ["MUTABLE", "IMMUTABLE", "IMMUTABLE_WITH_EXCLUSION", "MUTABLE_WITH_EXCLUSION"],
    #     image_tag_mutability_exclusion_filters: [
    #       {
    #         filter_type: "WILDCARD" # One of: ["WILDCARD"], # required
    #         filter: "ImageTagMutabilityExclusionFilterValue", # required
    #       }
    #     ],
    #     image_scanning_configuration: {
    #       scan_on_push: false
    #     },
    #     encryption_configuration: {
    #       encryption_type: "AES256" # One of: ["AES256", "KMS", "KMS_DSSE"], # required
    #       kms_key: "KmsKey"
    #     }
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
    #       created_at: Time.now,
    #       image_tag_mutability: "MUTABLE" # One of: ["MUTABLE", "IMMUTABLE", "IMMUTABLE_WITH_EXCLUSION", "MUTABLE_WITH_EXCLUSION"],
    #       image_tag_mutability_exclusion_filters: [
    #         {
    #           filter_type: "WILDCARD" # One of: ["WILDCARD"], # required
    #           filter: "ImageTagMutabilityExclusionFilterValue", # required
    #         }
    #       ],
    #       image_scanning_configuration: {
    #         scan_on_push: false
    #       },
    #       encryption_configuration: {
    #         encryption_type: "AES256" # One of: ["AES256", "KMS", "KMS_DSSE"], # required
    #         kms_key: "KmsKey"
    #       }
    #     }
    #   }
    # @return [Types::CreateRepositoryResponse]
    def create_repository(params = {}, options = {})
      request = build_request(:create_repository, params)
      request.send_request(options)
    end

    # <p>Creates a repository creation template. This template is used to define the settings
    #             for repositories created by Amazon ECR on your behalf. For example, repositories created
    #             through pull through cache actions. For more information, see <a href="https://docs.aws.amazon.com/AmazonECR/latest/userguide/repository-creation-templates.html">Private
    #                 repository creation templates</a> in the
    #             <i>Amazon Elastic Container Registry User Guide</i>.</p>
    # @param [Hash, Types::CreateRepositoryCreationTemplateRequest] params
    # @option params [String] :prefix
    #   <p>The repository namespace prefix to associate with the template. All repositories
    #               created using this namespace prefix will have the settings defined in this template
    #               applied. For example, a prefix of <code>prod</code> would apply to all repositories
    #               beginning with <code>prod/</code>. Similarly, a prefix of <code>prod/team</code> would
    #               apply to all repositories beginning with <code>prod/team/</code>.</p>
    #            <p>To apply a template to all repositories in your registry that don't have an associated
    #               creation template, you can use <code>ROOT</code> as the prefix.</p>
    #            <important>
    #               <p>There is always an assumed <code>/</code> applied to the end of the prefix. If you
    #                   specify <code>ecr-public</code> as the prefix, Amazon ECR treats that as
    #                       <code>ecr-public/</code>. When using a pull through cache rule, the repository
    #                   prefix you specify during rule creation is what you should specify as your
    #                   repository creation template prefix as well.</p>
    #            </important>
    # @option params [String] :description
    #   <p>A description for the repository creation template.</p>
    # @option params [Types::EncryptionConfigurationForRepositoryCreationTemplate] :encryption_configuration
    #   <p>The encryption configuration to use for repositories created using the
    #               template.</p>
    # @option params [Array<Types::Tag>] :resource_tags
    #   <p>The metadata to apply to the repository to help you categorize and organize. Each tag
    #               consists of a key and an optional value, both of which you define. Tag keys can have a maximum character length of 128 characters, and tag values can have
    #               a maximum length of 256 characters.</p>
    # @option params [String] :image_tag_mutability
    #   <p>The tag mutability setting for the repository. If this parameter is omitted, the
    #               default setting of <code>MUTABLE</code> will be used which will allow image tags to be
    #               overwritten. If <code>IMMUTABLE</code> is specified, all image tags within the
    #               repository will be immutable which will prevent them from being overwritten.</p>
    # @option params [Array<Types::ImageTagMutabilityExclusionFilter>] :image_tag_mutability_exclusion_filters
    #   <p>Creates a repository creation template with a list of filters that define which image tags can override the default image tag mutability setting.</p>
    # @option params [String] :repository_policy
    #   <p>The repository policy to apply to repositories created using the template. A
    #               repository policy is a permissions policy associated with a repository to control access
    #               permissions. </p>
    # @option params [String] :lifecycle_policy
    #   <p>The lifecycle policy to use for repositories created using the template.</p>
    # @option params [Array<String>] :applied_for
    #   <p>A list of enumerable strings representing the Amazon ECR repository creation scenarios that
    #               this template will apply towards. The two supported scenarios are
    #                   <code>PULL_THROUGH_CACHE</code> and <code>REPLICATION</code>
    #            </p>
    # @option params [String] :custom_role_arn
    #   <p>The ARN of the role to be assumed by Amazon ECR. This role must be in the same account as
    #               the registry that you are configuring. Amazon ECR will assume your supplied role when the
    #               customRoleArn is specified. When this field isn't specified, Amazon ECR will use the
    #               service-linked role for the repository creation template.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     prefix: "Prefix", # required
    #     description: "RepositoryTemplateDescription",
    #     encryption_configuration: {
    #       encryption_type: "AES256" # One of: ["AES256", "KMS", "KMS_DSSE"], # required
    #       kms_key: "KmsKeyForRepositoryCreationTemplate"
    #     },
    #     resource_tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     image_tag_mutability: "MUTABLE" # One of: ["MUTABLE", "IMMUTABLE", "IMMUTABLE_WITH_EXCLUSION", "MUTABLE_WITH_EXCLUSION"],
    #     image_tag_mutability_exclusion_filters: [
    #       {
    #         filter_type: "WILDCARD" # One of: ["WILDCARD"], # required
    #         filter: "ImageTagMutabilityExclusionFilterValue", # required
    #       }
    #     ],
    #     repository_policy: "RepositoryPolicyText",
    #     lifecycle_policy: "LifecyclePolicyTextForRepositoryCreationTemplate",
    #     applied_for: ["REPLICATION" # One of: ["REPLICATION", "PULL_THROUGH_CACHE"]], # required
    #     custom_role_arn: "CustomRoleArn"
    #   }
    #   options = {}
    #   response = client.create_repository_creation_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     registry_id: "RegistryId",
    #     repository_creation_template: {
    #       prefix: "Prefix",
    #       description: "RepositoryTemplateDescription",
    #       encryption_configuration: {
    #         encryption_type: "AES256" # One of: ["AES256", "KMS", "KMS_DSSE"], # required
    #         kms_key: "KmsKeyForRepositoryCreationTemplate"
    #       },
    #       resource_tags: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue", # required
    #         }
    #       ],
    #       image_tag_mutability: "MUTABLE" # One of: ["MUTABLE", "IMMUTABLE", "IMMUTABLE_WITH_EXCLUSION", "MUTABLE_WITH_EXCLUSION"],
    #       image_tag_mutability_exclusion_filters: [
    #         {
    #           filter_type: "WILDCARD" # One of: ["WILDCARD"], # required
    #           filter: "ImageTagMutabilityExclusionFilterValue", # required
    #         }
    #       ],
    #       repository_policy: "RepositoryPolicyText",
    #       lifecycle_policy: "LifecyclePolicyTextForRepositoryCreationTemplate",
    #       applied_for: ["REPLICATION" # One of: ["REPLICATION", "PULL_THROUGH_CACHE"]],
    #       custom_role_arn: "CustomRoleArn",
    #       created_at: Time.now,
    #       updated_at: Time.now
    #     }
    #   }
    # @return [Types::CreateRepositoryCreationTemplateResponse]
    def create_repository_creation_template(params = {}, options = {})
      request = build_request(:create_repository_creation_template, params)
      request.send_request(options)
    end

    # <p>Deletes the lifecycle policy associated with the specified repository.</p>
    # @param [Hash, Types::DeleteLifecyclePolicyRequest] params
    # @option params [String] :registry_id
    #   <p>The Amazon Web Services account ID associated with the registry that contains the repository.
    #               If you do not specify a registry, the default registry is assumed.</p>
    # @option params [String] :repository_name
    #   <p>The name of the repository.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     registry_id: "RegistryId",
    #     repository_name: "RepositoryName", # required
    #   }
    #   options = {}
    #   response = client.delete_lifecycle_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     registry_id: "RegistryId",
    #     repository_name: "RepositoryName",
    #     lifecycle_policy_text: "LifecyclePolicyText",
    #     last_evaluated_at: Time.now
    #   }
    # @return [Types::DeleteLifecyclePolicyResponse]
    def delete_lifecycle_policy(params = {}, options = {})
      request = build_request(:delete_lifecycle_policy, params)
      request.send_request(options)
    end

    # <p>Deletes a pull through cache rule.</p>
    # @param [Hash, Types::DeletePullThroughCacheRuleRequest] params
    # @option params [String] :ecr_repository_prefix
    #   <p>The Amazon ECR repository prefix associated with the pull through cache rule to
    #               delete.</p>
    # @option params [String] :registry_id
    #   <p>The Amazon Web Services account ID associated with the registry that contains the pull through cache
    #               rule. If you do not specify a registry, the default registry is assumed.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     ecr_repository_prefix: "PullThroughCacheRuleRepositoryPrefix", # required
    #     registry_id: "RegistryId"
    #   }
    #   options = {}
    #   response = client.delete_pull_through_cache_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     ecr_repository_prefix: "PullThroughCacheRuleRepositoryPrefix",
    #     upstream_registry_url: "Url",
    #     created_at: Time.now,
    #     registry_id: "RegistryId",
    #     credential_arn: "CredentialArn",
    #     custom_role_arn: "CustomRoleArn",
    #     upstream_repository_prefix: "PullThroughCacheRuleRepositoryPrefix"
    #   }
    # @return [Types::DeletePullThroughCacheRuleResponse]
    def delete_pull_through_cache_rule(params = {}, options = {})
      request = build_request(:delete_pull_through_cache_rule, params)
      request.send_request(options)
    end

    # <p>Deletes the registry permissions policy.</p>
    # @param [Hash, Types::DeleteRegistryPolicyRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.delete_registry_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     registry_id: "RegistryId",
    #     policy_text: "RegistryPolicyText"
    #   }
    # @return [Types::DeleteRegistryPolicyResponse]
    def delete_registry_policy(params = {}, options = {})
      request = build_request(:delete_registry_policy, params)
      request.send_request(options)
    end

    # <p>Deletes a repository. If the repository isn't empty, you must either delete the
    #             contents of the repository or use the <code>force</code> option to delete the repository
    #             and have Amazon ECR delete all of its contents on your behalf.</p>
    # @param [Hash, Types::DeleteRepositoryRequest] params
    # @option params [String] :registry_id
    #   <p>The Amazon Web Services account ID associated with the registry that contains the repository to
    #               delete. If you do not specify a registry, the default registry is assumed.</p>
    # @option params [String] :repository_name
    #   <p>The name of the repository to delete.</p>
    # @option params [Boolean] :force
    #   <p>If true, deleting the repository force deletes the contents of the repository. If
    #               false, the repository must be empty before attempting to delete it.</p>
    # @example To force delete a repository
    #   # This example force deletes a repository named ubuntu in the default registry for an account. The force parameter is required if the repository contains images.
    #   params = {
    #     repository_name: "ubuntu",
    #     force: true
    #   }
    #   options = {}
    #   response = client.delete_repository(params, options)
    #   response.to_h #=>
    #   {
    #     repository: {
    #       registry_id: "012345678901",
    #       repository_name: "ubuntu",
    #       repository_arn: "arn:aws:ecr:us-west-2:012345678901:repository/ubuntu"
    #     }
    #   }
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
    #       created_at: Time.now,
    #       image_tag_mutability: "MUTABLE" # One of: ["MUTABLE", "IMMUTABLE", "IMMUTABLE_WITH_EXCLUSION", "MUTABLE_WITH_EXCLUSION"],
    #       image_tag_mutability_exclusion_filters: [
    #         {
    #           filter_type: "WILDCARD" # One of: ["WILDCARD"], # required
    #           filter: "ImageTagMutabilityExclusionFilterValue", # required
    #         }
    #       ],
    #       image_scanning_configuration: {
    #         scan_on_push: false
    #       },
    #       encryption_configuration: {
    #         encryption_type: "AES256" # One of: ["AES256", "KMS", "KMS_DSSE"], # required
    #         kms_key: "KmsKey"
    #       }
    #     }
    #   }
    # @return [Types::DeleteRepositoryResponse]
    def delete_repository(params = {}, options = {})
      request = build_request(:delete_repository, params)
      request.send_request(options)
    end

    # <p>Deletes a repository creation template.</p>
    # @param [Hash, Types::DeleteRepositoryCreationTemplateRequest] params
    # @option params [String] :prefix
    #   <p>The repository namespace prefix associated with the repository creation
    #               template.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     prefix: "Prefix", # required
    #   }
    #   options = {}
    #   response = client.delete_repository_creation_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     registry_id: "RegistryId",
    #     repository_creation_template: {
    #       prefix: "Prefix",
    #       description: "RepositoryTemplateDescription",
    #       encryption_configuration: {
    #         encryption_type: "AES256" # One of: ["AES256", "KMS", "KMS_DSSE"], # required
    #         kms_key: "KmsKeyForRepositoryCreationTemplate"
    #       },
    #       resource_tags: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue", # required
    #         }
    #       ],
    #       image_tag_mutability: "MUTABLE" # One of: ["MUTABLE", "IMMUTABLE", "IMMUTABLE_WITH_EXCLUSION", "MUTABLE_WITH_EXCLUSION"],
    #       image_tag_mutability_exclusion_filters: [
    #         {
    #           filter_type: "WILDCARD" # One of: ["WILDCARD"], # required
    #           filter: "ImageTagMutabilityExclusionFilterValue", # required
    #         }
    #       ],
    #       repository_policy: "RepositoryPolicyText",
    #       lifecycle_policy: "LifecyclePolicyTextForRepositoryCreationTemplate",
    #       applied_for: ["REPLICATION" # One of: ["REPLICATION", "PULL_THROUGH_CACHE"]],
    #       custom_role_arn: "CustomRoleArn",
    #       created_at: Time.now,
    #       updated_at: Time.now
    #     }
    #   }
    # @return [Types::DeleteRepositoryCreationTemplateResponse]
    def delete_repository_creation_template(params = {}, options = {})
      request = build_request(:delete_repository_creation_template, params)
      request.send_request(options)
    end

    # <p>Deletes the repository policy associated with the specified repository.</p>
    # @param [Hash, Types::DeleteRepositoryPolicyRequest] params
    # @option params [String] :registry_id
    #   <p>The Amazon Web Services account ID associated with the registry that contains the repository policy
    #               to delete. If you do not specify a registry, the default registry is assumed.</p>
    # @option params [String] :repository_name
    #   <p>The name of the repository that is associated with the repository policy to
    #               delete.</p>
    # @example To delete the policy associated with a repository
    #   # This example deletes the policy associated with the repository named ubuntu in the current account.
    #   params = {
    #     repository_name: "ubuntu"
    #   }
    #   options = {}
    #   response = client.delete_repository_policy(params, options)
    #   response.to_h #=>
    #   {
    #     policy_text: "{ ... }",
    #     repository_name: "ubuntu",
    #     registry_id: "012345678901"
    #   }
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

    # <p>Returns the replication status for a specified image.</p>
    # @param [Hash, Types::DescribeImageReplicationStatusRequest] params
    # @option params [String] :repository_name
    #   <p>The name of the repository that the image is in.</p>
    # @option params [Types::ImageIdentifier] :image_id
    #   <p>An object with identifying information for an image in an Amazon ECR repository.</p>
    # @option params [String] :registry_id
    #   <p>The Amazon Web Services account ID associated with the registry. If you do not specify a registry, the default registry is assumed.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     repository_name: "RepositoryName", # required
    #     image_id: { # required
    #       image_digest: "ImageDigest",
    #       image_tag: "ImageTag"
    #     },
    #     registry_id: "RegistryId"
    #   }
    #   options = {}
    #   response = client.describe_image_replication_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     repository_name: "RepositoryName",
    #     image_id: {
    #       image_digest: "ImageDigest",
    #       image_tag: "ImageTag"
    #     },
    #     replication_statuses: [
    #       {
    #         region: "Region",
    #         registry_id: "RegistryId",
    #         status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "COMPLETE", "FAILED"],
    #         failure_code: "ReplicationError"
    #       }
    #     ]
    #   }
    # @return [Types::DescribeImageReplicationStatusResponse]
    def describe_image_replication_status(params = {}, options = {})
      request = build_request(:describe_image_replication_status, params)
      request.send_request(options)
    end

    # <p>Returns the scan findings for the specified image.</p>
    # @param [Hash, Types::DescribeImageScanFindingsRequest] params
    # @option params [String] :registry_id
    #   <p>The Amazon Web Services account ID associated with the registry that contains the repository in
    #               which to describe the image scan findings for. If you do not specify a registry, the default registry is assumed.</p>
    # @option params [String] :repository_name
    #   <p>The repository for the image for which to describe the scan findings.</p>
    # @option params [Types::ImageIdentifier] :image_id
    #   <p>An object with identifying information for an image in an Amazon ECR repository.</p>
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated
    #                   <code>DescribeImageScanFindings</code> request where <code>maxResults</code> was
    #               used and the results exceeded the value of that parameter. Pagination continues from the
    #               end of the previous results that returned the <code>nextToken</code> value. This value
    #               is null when there are no more results to return.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of image scan results returned by
    #                   <code>DescribeImageScanFindings</code> in paginated output. When this parameter is
    #               used, <code>DescribeImageScanFindings</code> only returns <code>maxResults</code>
    #               results in a single page along with a <code>nextToken</code> response element. The
    #               remaining results of the initial request can be seen by sending another
    #                   <code>DescribeImageScanFindings</code> request with the returned
    #                   <code>nextToken</code> value. This value can be between 1 and 1000. If this
    #               parameter is not used, then <code>DescribeImageScanFindings</code> returns up to 100
    #               results and a <code>nextToken</code> value, if applicable.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     registry_id: "RegistryId",
    #     repository_name: "RepositoryName", # required
    #     image_id: { # required
    #       image_digest: "ImageDigest",
    #       image_tag: "ImageTag"
    #     },
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.describe_image_scan_findings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     registry_id: "RegistryId",
    #     repository_name: "RepositoryName",
    #     image_id: {
    #       image_digest: "ImageDigest",
    #       image_tag: "ImageTag"
    #     },
    #     image_scan_status: {
    #       status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "COMPLETE", "FAILED", "UNSUPPORTED_IMAGE", "ACTIVE", "PENDING", "SCAN_ELIGIBILITY_EXPIRED", "FINDINGS_UNAVAILABLE", "LIMIT_EXCEEDED"],
    #       description: "ScanStatusDescription"
    #     },
    #     image_scan_findings: {
    #       image_scan_completed_at: Time.now,
    #       vulnerability_source_updated_at: Time.now,
    #       finding_severity_counts: {
    #         "FindingSeverity" => 1
    #       },
    #       findings: [
    #         {
    #           name: "FindingName",
    #           description: "FindingDescription",
    #           uri: "Url",
    #           severity: "INFORMATIONAL" # One of: ["INFORMATIONAL", "LOW", "MEDIUM", "HIGH", "CRITICAL", "UNDEFINED"],
    #           attributes: [
    #             {
    #               key: "AttributeKey", # required
    #               value: "AttributeValue"
    #             }
    #           ]
    #         }
    #       ],
    #       enhanced_findings: [
    #         {
    #           aws_account_id: "RegistryId",
    #           description: "FindingDescription",
    #           finding_arn: "FindingArn",
    #           first_observed_at: Time.now,
    #           last_observed_at: Time.now,
    #           package_vulnerability_details: {
    #             cvss: [
    #               {
    #                 base_score: 1.0,
    #                 scoring_vector: "ScoringVector",
    #                 source: "Source",
    #                 version: "Version"
    #               }
    #             ],
    #             reference_urls: ["Url"],
    #             related_vulnerabilities: ["RelatedVulnerability"],
    #             source: "Source",
    #             source_url: "Url",
    #             vendor_created_at: Time.now,
    #             vendor_severity: "Severity",
    #             vendor_updated_at: Time.now,
    #             vulnerability_id: "VulnerabilityId",
    #             vulnerable_packages: [
    #               {
    #                 arch: "Arch",
    #                 epoch: 1,
    #                 file_path: "FilePath",
    #                 name: "VulnerablePackageName",
    #                 package_manager: "PackageManager",
    #                 release: "Release",
    #                 source_layer_hash: "SourceLayerHash",
    #                 version: "Version",
    #                 fixed_in_version: "FixedInVersion"
    #               }
    #             ]
    #           },
    #           remediation: {
    #             recommendation: {
    #               url: "Url",
    #               text: "RecommendationText"
    #             }
    #           },
    #           resources: [
    #             {
    #               details: {
    #                 aws_ecr_container_image: {
    #                   architecture: "Arch",
    #                   author: "Author",
    #                   image_hash: "ImageDigest",
    #                   image_tags: ["ImageTag"],
    #                   platform: "Platform",
    #                   pushed_at: Time.now,
    #                   last_in_use_at: Time.now,
    #                   in_use_count: 1,
    #                   registry: "RegistryId",
    #                   repository_name: "RepositoryName"
    #                 }
    #               },
    #               id: "ResourceId",
    #               tags: {
    #                 "TagKey" => "TagValue"
    #               },
    #               type: "Type"
    #             }
    #           ],
    #           score: 1.0,
    #           score_details: {
    #             cvss: {
    #               adjustments: [
    #                 {
    #                   metric: "Metric",
    #                   reason: "Reason"
    #                 }
    #               ],
    #               score: 1.0,
    #               score_source: "Source",
    #               scoring_vector: "ScoringVector",
    #               version: "Version"
    #             }
    #           },
    #           severity: "Severity",
    #           status: "Status",
    #           title: "Title",
    #           type: "Type",
    #           updated_at: Time.now,
    #           fix_available: "FixAvailable",
    #           exploit_available: "ExploitAvailable"
    #         }
    #       ]
    #     },
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeImageScanFindingsResponse]
    def describe_image_scan_findings(params = {}, options = {})
      request = build_request(:describe_image_scan_findings, params)
      request.send_request(options)
    end

    # <p>Returns metadata about the images in a repository.</p>
    #          <note>
    #             <p>Starting with Docker version 1.9, the Docker client compresses image layers before
    #                 pushing them to a V2 Docker registry. The output of the <code>docker images</code>
    #                 command shows the uncompressed image size. Therefore, Docker might return a larger
    #                 image than the image shown in the Amazon Web Services Management Console.</p>
    #          </note>
    #          <important>
    #             <p>The new version of Amazon ECR <i>Basic Scanning</i> doesn't use the
    #                 <a>ImageDetail$imageScanFindingsSummary</a> and
    #                 <a>ImageDetail$imageScanStatus</a>
    #                 attributes from the API response to return scan results.
    #                 Use the <a>DescribeImageScanFindings</a> API instead. For more
    #                 information about Amazon Web Services native basic scanning, see <a href="https://docs.aws.amazon.com/AmazonECR/latest/userguide/image-scanning.html"> Scan images for software
    #                     vulnerabilities in Amazon ECR</a>.</p>
    #          </important>
    # @param [Hash, Types::DescribeImagesRequest] params
    # @option params [String] :registry_id
    #   <p>The Amazon Web Services account ID associated with the registry that contains the repository in
    #               which to describe images. If you do not specify a registry, the default registry is assumed.</p>
    # @option params [String] :repository_name
    #   <p>The repository that contains the images to describe.</p>
    # @option params [Array<Types::ImageIdentifier>] :image_ids
    #   <p>The list of image IDs for the requested repository.</p>
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated
    #                   <code>DescribeImages</code> request where <code>maxResults</code> was used and the
    #               results exceeded the value of that parameter. Pagination continues from the end of the
    #               previous results that returned the <code>nextToken</code> value. This value is
    #                   <code>null</code> when there are no more results to return. This option cannot be
    #               used when you specify images with <code>imageIds</code>.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of repository results returned by <code>DescribeImages</code> in
    #               paginated output. When this parameter is used, <code>DescribeImages</code> only returns
    #                   <code>maxResults</code> results in a single page along with a <code>nextToken</code>
    #               response element. The remaining results of the initial request can be seen by sending
    #               another <code>DescribeImages</code> request with the returned <code>nextToken</code>
    #               value. This value can be between 1 and 1000. If this
    #               parameter is not used, then <code>DescribeImages</code> returns up to
    #               100 results and a <code>nextToken</code> value, if applicable. This
    #               option cannot be used when you specify images with <code>imageIds</code>.</p>
    # @option params [Types::DescribeImagesFilter] :filter
    #   <p>The filter key and value with which to filter your <code>DescribeImages</code>
    #               results.</p>
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
    #     max_results: 1,
    #     filter: {
    #       tag_status: "TAGGED" # One of: ["TAGGED", "UNTAGGED", "ANY"]
    #     }
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
    #         image_scan_status: {
    #           status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "COMPLETE", "FAILED", "UNSUPPORTED_IMAGE", "ACTIVE", "PENDING", "SCAN_ELIGIBILITY_EXPIRED", "FINDINGS_UNAVAILABLE", "LIMIT_EXCEEDED"],
    #           description: "ScanStatusDescription"
    #         },
    #         image_scan_findings_summary: {
    #           image_scan_completed_at: Time.now,
    #           vulnerability_source_updated_at: Time.now,
    #           finding_severity_counts: {
    #             "FindingSeverity" => 1
    #           }
    #         },
    #         image_manifest_media_type: "MediaType",
    #         artifact_media_type: "MediaType",
    #         last_recorded_pull_time: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeImagesResponse]
    def describe_images(params = {}, options = {})
      request = build_request(:describe_images, params)
      request.send_request(options)
    end

    # <p>Returns the pull through cache rules for a registry.</p>
    # @param [Hash, Types::DescribePullThroughCacheRulesRequest] params
    # @option params [String] :registry_id
    #   <p>The Amazon Web Services account ID associated with the registry to return the pull through cache
    #               rules for. If you do not specify a registry, the default registry is assumed.</p>
    # @option params [Array<String>] :ecr_repository_prefixes
    #   <p>The Amazon ECR repository prefixes associated with the pull through cache rules to return.
    #               If no repository prefix value is specified, all pull through cache rules are
    #               returned.</p>
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated
    #                   <code>DescribePullThroughCacheRulesRequest</code> request where
    #                   <code>maxResults</code> was used and the results exceeded the value of that
    #               parameter. Pagination continues from the end of the previous results that returned the
    #                   <code>nextToken</code> value. This value is null when there are no more results to
    #               return.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of pull through cache rules returned by
    #                   <code>DescribePullThroughCacheRulesRequest</code> in paginated output. When this
    #               parameter is used, <code>DescribePullThroughCacheRulesRequest</code> only returns
    #                   <code>maxResults</code> results in a single page along with a <code>nextToken</code>
    #               response element. The remaining results of the initial request can be seen by sending
    #               another <code>DescribePullThroughCacheRulesRequest</code> request with the returned
    #                   <code>nextToken</code> value. This value can be between 1 and 1000. If this
    #               parameter is not used, then <code>DescribePullThroughCacheRulesRequest</code> returns up
    #               to 100 results and a <code>nextToken</code> value, if applicable.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     registry_id: "RegistryId",
    #     ecr_repository_prefixes: ["PullThroughCacheRuleRepositoryPrefix"],
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.describe_pull_through_cache_rules(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     pull_through_cache_rules: [
    #       {
    #         ecr_repository_prefix: "PullThroughCacheRuleRepositoryPrefix",
    #         upstream_registry_url: "Url",
    #         created_at: Time.now,
    #         registry_id: "RegistryId",
    #         credential_arn: "CredentialArn",
    #         custom_role_arn: "CustomRoleArn",
    #         upstream_repository_prefix: "PullThroughCacheRuleRepositoryPrefix",
    #         upstream_registry: "ecr" # One of: ["ecr", "ecr-public", "quay", "k8s", "docker-hub", "github-container-registry", "azure-container-registry", "gitlab-container-registry"],
    #         updated_at: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribePullThroughCacheRulesResponse]
    def describe_pull_through_cache_rules(params = {}, options = {})
      request = build_request(:describe_pull_through_cache_rules, params)
      request.send_request(options)
    end

    # <p>Describes the settings for a registry. The replication configuration for a repository
    #             can be created or updated with the <a>PutReplicationConfiguration</a> API
    #             action.</p>
    # @param [Hash, Types::DescribeRegistryRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.describe_registry(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     registry_id: "RegistryId",
    #     replication_configuration: {
    #       rules: [ # required
    #         {
    #           destinations: [ # required
    #             {
    #               region: "Region", # required
    #               registry_id: "RegistryId", # required
    #             }
    #           ],
    #           repository_filters: [
    #             {
    #               filter: "RepositoryFilterValue", # required
    #               filter_type: "PREFIX_MATCH" # One of: ["PREFIX_MATCH"], # required
    #             }
    #           ]
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::DescribeRegistryResponse]
    def describe_registry(params = {}, options = {})
      request = build_request(:describe_registry, params)
      request.send_request(options)
    end

    # <p>Describes image repositories in a registry.</p>
    # @param [Hash, Types::DescribeRepositoriesRequest] params
    # @option params [String] :registry_id
    #   <p>The Amazon Web Services account ID associated with the registry that contains the repositories to be
    #               described. If you do not specify a registry, the default registry is assumed.</p>
    # @option params [Array<String>] :repository_names
    #   <p>A list of repositories to describe. If this parameter is omitted, then all
    #               repositories in a registry are described.</p>
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated
    #                   <code>DescribeRepositories</code> request where <code>maxResults</code> was used and
    #               the results exceeded the value of that parameter. Pagination continues from the end of
    #               the previous results that returned the <code>nextToken</code> value. This value is
    #                   <code>null</code> when there are no more results to return. This option cannot be
    #               used when you specify repositories with <code>repositoryNames</code>.</p>
    #            <note>
    #               <p>This token should be treated as an opaque identifier that is only used to
    #                   retrieve the next items in a list and not for other programmatic purposes.</p>
    #            </note>
    # @option params [Integer] :max_results
    #   <p>The maximum number of repository results returned by <code>DescribeRepositories</code>
    #               in paginated output. When this parameter is used, <code>DescribeRepositories</code> only
    #               returns <code>maxResults</code> results in a single page along with a
    #                   <code>nextToken</code> response element. The remaining results of the initial
    #               request can be seen by sending another <code>DescribeRepositories</code> request with
    #               the returned <code>nextToken</code> value. This value can be between 1
    #               and 1000. If this parameter is not used, then
    #                   <code>DescribeRepositories</code> returns up to 100 results and a
    #                   <code>nextToken</code> value, if applicable. This option cannot be used when you
    #               specify repositories with <code>repositoryNames</code>.</p>
    # @example To describe all repositories in the current account
    #   # The following example obtains a list and description of all repositories in the default registry to which the current user has access.
    #   params = {}
    #   options = {}
    #   response = client.describe_repositories(params, options)
    #   response.to_h #=>
    #   {
    #     repositories: [
    #       {
    #         registry_id: "012345678910",
    #         repository_name: "ubuntu",
    #         repository_arn: "arn:aws:ecr:us-west-2:012345678910:repository/ubuntu"
    #       },
    #       {
    #         registry_id: "012345678910",
    #         repository_name: "test",
    #         repository_arn: "arn:aws:ecr:us-west-2:012345678910:repository/test"
    #       }
    #     ]
    #   }
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
    #         created_at: Time.now,
    #         image_tag_mutability: "MUTABLE" # One of: ["MUTABLE", "IMMUTABLE", "IMMUTABLE_WITH_EXCLUSION", "MUTABLE_WITH_EXCLUSION"],
    #         image_tag_mutability_exclusion_filters: [
    #           {
    #             filter_type: "WILDCARD" # One of: ["WILDCARD"], # required
    #             filter: "ImageTagMutabilityExclusionFilterValue", # required
    #           }
    #         ],
    #         image_scanning_configuration: {
    #           scan_on_push: false
    #         },
    #         encryption_configuration: {
    #           encryption_type: "AES256" # One of: ["AES256", "KMS", "KMS_DSSE"], # required
    #           kms_key: "KmsKey"
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeRepositoriesResponse]
    def describe_repositories(params = {}, options = {})
      request = build_request(:describe_repositories, params)
      request.send_request(options)
    end

    # <p>Returns details about the repository creation templates in a registry. The
    #                 <code>prefixes</code> request parameter can be used to return the details for a
    #             specific repository creation template.</p>
    # @param [Hash, Types::DescribeRepositoryCreationTemplatesRequest] params
    # @option params [Array<String>] :prefixes
    #   <p>The repository namespace prefixes associated with the repository creation templates to
    #               describe. If this value is not specified, all repository creation templates are
    #               returned.</p>
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated
    #                   <code>DescribeRepositoryCreationTemplates</code> request where
    #                   <code>maxResults</code> was used and the results exceeded the value of that
    #               parameter. Pagination continues from the end of the previous results that returned the
    #                   <code>nextToken</code> value. This value is <code>null</code> when there are no more
    #               results to return.</p>
    #            <note>
    #               <p>This token should be treated as an opaque identifier that is only used to
    #                   retrieve the next items in a list and not for other programmatic purposes.</p>
    #            </note>
    # @option params [Integer] :max_results
    #   <p>The maximum number of repository results returned by
    #                   <code>DescribeRepositoryCreationTemplatesRequest</code> in paginated output. When
    #               this parameter is used, <code>DescribeRepositoryCreationTemplatesRequest</code> only
    #               returns <code>maxResults</code> results in a single page along with a
    #                   <code>nextToken</code> response element. The remaining results of the initial
    #               request can be seen by sending another
    #                   <code>DescribeRepositoryCreationTemplatesRequest</code> request with the returned
    #                   <code>nextToken</code> value. This value can be between 1 and
    #               1000. If this parameter is not used, then
    #                   <code>DescribeRepositoryCreationTemplatesRequest</code> returns up to
    #               100 results and a <code>nextToken</code> value, if applicable.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     prefixes: ["Prefix"],
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.describe_repository_creation_templates(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     registry_id: "RegistryId",
    #     repository_creation_templates: [
    #       {
    #         prefix: "Prefix",
    #         description: "RepositoryTemplateDescription",
    #         encryption_configuration: {
    #           encryption_type: "AES256" # One of: ["AES256", "KMS", "KMS_DSSE"], # required
    #           kms_key: "KmsKeyForRepositoryCreationTemplate"
    #         },
    #         resource_tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           }
    #         ],
    #         image_tag_mutability: "MUTABLE" # One of: ["MUTABLE", "IMMUTABLE", "IMMUTABLE_WITH_EXCLUSION", "MUTABLE_WITH_EXCLUSION"],
    #         image_tag_mutability_exclusion_filters: [
    #           {
    #             filter_type: "WILDCARD" # One of: ["WILDCARD"], # required
    #             filter: "ImageTagMutabilityExclusionFilterValue", # required
    #           }
    #         ],
    #         repository_policy: "RepositoryPolicyText",
    #         lifecycle_policy: "LifecyclePolicyTextForRepositoryCreationTemplate",
    #         applied_for: ["REPLICATION" # One of: ["REPLICATION", "PULL_THROUGH_CACHE"]],
    #         custom_role_arn: "CustomRoleArn",
    #         created_at: Time.now,
    #         updated_at: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeRepositoryCreationTemplatesResponse]
    def describe_repository_creation_templates(params = {}, options = {})
      request = build_request(:describe_repository_creation_templates, params)
      request.send_request(options)
    end

    # <p>Retrieves the account setting value for the specified setting name.</p>
    # @param [Hash, Types::GetAccountSettingRequest] params
    # @option params [String] :name
    #   <p>The name of the account setting, such as <code>BASIC_SCAN_TYPE_VERSION</code> or
    #                   <code>REGISTRY_POLICY_SCOPE</code>. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "AccountSettingName", # required
    #   }
    #   options = {}
    #   response = client.get_account_setting(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "AccountSettingName",
    #     value: "AccountSettingName"
    #   }
    # @return [Types::GetAccountSettingResponse]
    def get_account_setting(params = {}, options = {})
      request = build_request(:get_account_setting, params)
      request.send_request(options)
    end

    # <p>Retrieves an authorization token. An authorization token represents your IAM
    #             authentication credentials and can be used to access any Amazon ECR registry that your IAM
    #             principal has access to. The authorization token is valid for 12 hours.</p>
    #          <p>The <code>authorizationToken</code> returned is a base64 encoded string that can be
    #             decoded and used in a <code>docker login</code> command to authenticate to a registry.
    #             The CLI offers an <code>get-login-password</code> command that simplifies the login
    #             process. For more information, see <a href="https://docs.aws.amazon.com/AmazonECR/latest/userguide/Registries.html#registry_auth">Registry
    #                 authentication</a> in the <i>Amazon Elastic Container Registry User Guide</i>.</p>
    # @param [Hash, Types::GetAuthorizationTokenRequest] params
    # @option params [Array<String>] :registry_ids
    #   <p>A list of Amazon Web Services account IDs that are associated with the registries for which to get
    #               AuthorizationData objects. If you do not specify a registry, the default registry is assumed.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     registry_ids: ["RegistryId"]
    #   }
    #   options = {}
    #   response = client.get_authorization_token(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     authorization_data: [
    #       {
    #         authorization_token: "Base64",
    #         expires_at: Time.now,
    #         proxy_endpoint: "ProxyEndpoint"
    #       }
    #     ]
    #   }
    # @return [Types::GetAuthorizationTokenResponse]
    def get_authorization_token(params = {}, options = {})
      request = build_request(:get_authorization_token, params)
      request.send_request(options)
    end

    # <p>Retrieves the pre-signed Amazon S3 download URL corresponding to an image layer. You can
    #             only get URLs for image layers that are referenced in an image.</p>
    #          <p>When an image is pulled, the GetDownloadUrlForLayer API is called once per image layer
    #             that is not already cached.</p>
    #          <note>
    #             <p>This operation is used by the Amazon ECR proxy and is not generally used by
    #         customers for pulling and pushing images. In most cases, you should use the <code>docker</code> CLI to pull, tag, and push images.</p>
    #          </note>
    # @param [Hash, Types::GetDownloadUrlForLayerRequest] params
    # @option params [String] :registry_id
    #   <p>The Amazon Web Services account ID associated with the registry that contains the image layer to
    #               download. If you do not specify a registry, the default registry is assumed.</p>
    # @option params [String] :repository_name
    #   <p>The name of the repository that is associated with the image layer to download.</p>
    # @option params [String] :layer_digest
    #   <p>The digest of the image layer to download.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     registry_id: "RegistryId",
    #     repository_name: "RepositoryName", # required
    #     layer_digest: "LayerDigest", # required
    #   }
    #   options = {}
    #   response = client.get_download_url_for_layer(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     download_url: "Url",
    #     layer_digest: "LayerDigest"
    #   }
    # @return [Types::GetDownloadUrlForLayerResponse]
    def get_download_url_for_layer(params = {}, options = {})
      request = build_request(:get_download_url_for_layer, params)
      request.send_request(options)
    end

    # <p>Retrieves the lifecycle policy for the specified repository.</p>
    # @param [Hash, Types::GetLifecyclePolicyRequest] params
    # @option params [String] :registry_id
    #   <p>The Amazon Web Services account ID associated with the registry that contains the repository.
    #               If you do not specify a registry, the default registry is assumed.</p>
    # @option params [String] :repository_name
    #   <p>The name of the repository.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     registry_id: "RegistryId",
    #     repository_name: "RepositoryName", # required
    #   }
    #   options = {}
    #   response = client.get_lifecycle_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     registry_id: "RegistryId",
    #     repository_name: "RepositoryName",
    #     lifecycle_policy_text: "LifecyclePolicyText",
    #     last_evaluated_at: Time.now
    #   }
    # @return [Types::GetLifecyclePolicyResponse]
    def get_lifecycle_policy(params = {}, options = {})
      request = build_request(:get_lifecycle_policy, params)
      request.send_request(options)
    end

    # <p>Retrieves the results of the lifecycle policy preview request for the specified
    #             repository.</p>
    # @param [Hash, Types::GetLifecyclePolicyPreviewRequest] params
    # @option params [String] :registry_id
    #   <p>The Amazon Web Services account ID associated with the registry that contains the repository.
    #               If you do not specify a registry, the default registry is assumed.</p>
    # @option params [String] :repository_name
    #   <p>The name of the repository.</p>
    # @option params [Array<Types::ImageIdentifier>] :image_ids
    #   <p>The list of imageIDs to be included.</p>
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated 
    #                   <code>GetLifecyclePolicyPreviewRequest</code> request where <code>maxResults</code>
    #               was used and the  results exceeded the value of that parameter. Pagination continues
    #               from the end of the  previous results that returned the <code>nextToken</code> value.
    #               This value is  <code>null</code> when there are no more results to return. This option
    #               cannot be used when you specify images with <code>imageIds</code>.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of repository results returned by
    #                   <code>GetLifecyclePolicyPreviewRequest</code> in  paginated output. When this
    #               parameter is used, <code>GetLifecyclePolicyPreviewRequest</code> only returns 
    #                   <code>maxResults</code> results in a single page along with a
    #               <code>nextToken</code>  response element. The remaining results of the initial request
    #               can be seen by sending  another <code>GetLifecyclePolicyPreviewRequest</code> request
    #               with the returned <code>nextToken</code>  value. This value can be between
    #               1 and 100. If this  parameter is not used, then
    #                   <code>GetLifecyclePolicyPreviewRequest</code> returns up to 100
    #               results and a <code>nextToken</code> value, if  applicable. This option cannot be used
    #               when you specify images with <code>imageIds</code>.</p>
    # @option params [Types::LifecyclePolicyPreviewFilter] :filter
    #   <p>An optional parameter that filters results based on image tag status and all tags, if
    #               tagged.</p>
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
    #     max_results: 1,
    #     filter: {
    #       tag_status: "TAGGED" # One of: ["TAGGED", "UNTAGGED", "ANY"]
    #     }
    #   }
    #   options = {}
    #   response = client.get_lifecycle_policy_preview(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     registry_id: "RegistryId",
    #     repository_name: "RepositoryName",
    #     lifecycle_policy_text: "LifecyclePolicyText",
    #     status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "COMPLETE", "EXPIRED", "FAILED"],
    #     next_token: "NextToken",
    #     preview_results: [
    #       {
    #         image_tags: ["ImageTag"],
    #         image_digest: "ImageDigest",
    #         image_pushed_at: Time.now,
    #         action: {
    #           type: "EXPIRE" # One of: ["EXPIRE"]
    #         },
    #         applied_rule_priority: 1
    #       }
    #     ],
    #     summary: {
    #       expiring_image_total_count: 1
    #     }
    #   }
    # @return [Types::GetLifecyclePolicyPreviewResponse]
    def get_lifecycle_policy_preview(params = {}, options = {})
      request = build_request(:get_lifecycle_policy_preview, params)
      request.send_request(options)
    end

    # <p>Retrieves the permissions policy for a registry.</p>
    # @param [Hash, Types::GetRegistryPolicyRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_registry_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     registry_id: "RegistryId",
    #     policy_text: "RegistryPolicyText"
    #   }
    # @return [Types::GetRegistryPolicyResponse]
    def get_registry_policy(params = {}, options = {})
      request = build_request(:get_registry_policy, params)
      request.send_request(options)
    end

    # <p>Retrieves the scanning configuration for a registry.</p>
    # @param [Hash, Types::GetRegistryScanningConfigurationRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_registry_scanning_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     registry_id: "RegistryId",
    #     scanning_configuration: {
    #       scan_type: "BASIC" # One of: ["BASIC", "ENHANCED"],
    #       rules: [
    #         {
    #           scan_frequency: "SCAN_ON_PUSH" # One of: ["SCAN_ON_PUSH", "CONTINUOUS_SCAN", "MANUAL"], # required
    #           repository_filters: [ # required
    #             {
    #               filter: "ScanningRepositoryFilterValue", # required
    #               filter_type: "WILDCARD" # One of: ["WILDCARD"], # required
    #             }
    #           ]
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::GetRegistryScanningConfigurationResponse]
    def get_registry_scanning_configuration(params = {}, options = {})
      request = build_request(:get_registry_scanning_configuration, params)
      request.send_request(options)
    end

    # <p>Retrieves the repository policy for the specified repository.</p>
    # @param [Hash, Types::GetRepositoryPolicyRequest] params
    # @option params [String] :registry_id
    #   <p>The Amazon Web Services account ID associated with the registry that contains the repository.
    #               If you do not specify a registry, the default registry is assumed.</p>
    # @option params [String] :repository_name
    #   <p>The name of the repository with the policy to retrieve.</p>
    # @example To get the current policy for a repository
    #   # This example obtains the repository policy for the repository named ubuntu.
    #   params = {
    #     repository_name: "ubuntu"
    #   }
    #   options = {}
    #   response = client.get_repository_policy(params, options)
    #   response.to_h #=>
    #   {
    #     policy_text: "{\n  \"Version\" : \"2008-10-17\",\n  \"Statement\" : [ {\n    \"Sid\" : \"new statement\",\n    \"Effect\" : \"Allow\",\n    \"Principal\" : {\n     \"AWS\" : \"arn:aws:iam::012345678901:role/CodeDeployDemo\"\n    },\n\"Action\" : [ \"ecr:GetDownloadUrlForLayer\", \"ecr:BatchGetImage\", \"ecr:BatchCheckLayerAvailability\" ]\n } ]\n}",
    #     repository_name: "ubuntu",
    #     registry_id: "012345678901"
    #   }
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
    #          <p>When an image is pushed, the InitiateLayerUpload API is called once per image layer
    #             that has not already been uploaded. Whether or not an image layer has been uploaded is
    #             determined by the BatchCheckLayerAvailability API action.</p>
    #          <note>
    #             <p>This operation is used by the Amazon ECR proxy and is not generally used by
    #         customers for pulling and pushing images. In most cases, you should use the <code>docker</code> CLI to pull, tag, and push images.</p>
    #          </note>
    # @param [Hash, Types::InitiateLayerUploadRequest] params
    # @option params [String] :registry_id
    #   <p>The Amazon Web Services account ID associated with the registry to which you intend to upload
    #               layers. If you do not specify a registry, the default registry is assumed.</p>
    # @option params [String] :repository_name
    #   <p>The name of the repository to which you intend to upload layers.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     registry_id: "RegistryId",
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

    # <p>Lists all the image IDs for the specified repository.</p>
    #          <p>You can filter images based on whether or not they are tagged by using the
    #                 <code>tagStatus</code> filter and specifying either <code>TAGGED</code>,
    #                 <code>UNTAGGED</code> or <code>ANY</code>. For example, you can filter your results
    #             to return only <code>UNTAGGED</code> images and then pipe that result to a <a>BatchDeleteImage</a> operation to delete them. Or, you can filter your
    #             results to return only <code>TAGGED</code> images to list all of the tags in your
    #             repository.</p>
    # @param [Hash, Types::ListImagesRequest] params
    # @option params [String] :registry_id
    #   <p>The Amazon Web Services account ID associated with the registry that contains the repository in
    #               which to list images. If you do not specify a registry, the default registry is assumed.</p>
    # @option params [String] :repository_name
    #   <p>The repository with image IDs to be listed.</p>
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated
    #                   <code>ListImages</code> request where <code>maxResults</code> was used and the
    #               results exceeded the value of that parameter. Pagination continues from the end of the
    #               previous results that returned the <code>nextToken</code> value. This value is
    #                   <code>null</code> when there are no more results to return.</p>
    #            <note>
    #               <p>This token should be treated as an opaque identifier that is only used to
    #                   retrieve the next items in a list and not for other programmatic purposes.</p>
    #            </note>
    # @option params [Integer] :max_results
    #   <p>The maximum number of image results returned by <code>ListImages</code> in paginated
    #               output. When this parameter is used, <code>ListImages</code> only returns
    #                   <code>maxResults</code> results in a single page along with a <code>nextToken</code>
    #               response element. The remaining results of the initial request can be seen by sending
    #               another <code>ListImages</code> request with the returned <code>nextToken</code> value.
    #               This value can be between 1 and 1000. If this parameter is
    #               not used, then <code>ListImages</code> returns up to 100 results and a
    #                   <code>nextToken</code> value, if applicable.</p>
    # @option params [Types::ListImagesFilter] :filter
    #   <p>The filter key and value with which to filter your <code>ListImages</code>
    #               results.</p>
    # @example To list all images in a repository
    #   # This example lists all of the images in the repository named ubuntu in the default registry in the current account. 
    #   params = {
    #     repository_name: "ubuntu"
    #   }
    #   options = {}
    #   response = client.list_images(params, options)
    #   response.to_h #=>
    #   {
    #     image_ids: [
    #       {
    #         image_tag: "precise",
    #         image_digest: "sha256:764f63476bdff6d83a09ba2a818f0d35757063724a9ac3ba5019c56f74ebf42a"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     registry_id: "RegistryId",
    #     repository_name: "RepositoryName", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #     filter: {
    #       tag_status: "TAGGED" # One of: ["TAGGED", "UNTAGGED", "ANY"]
    #     }
    #   }
    #   options = {}
    #   response = client.list_images(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     image_ids: [
    #       {
    #         image_digest: "ImageDigest",
    #         image_tag: "ImageTag"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListImagesResponse]
    def list_images(params = {}, options = {})
      request = build_request(:list_images, params)
      request.send_request(options)
    end

    # <p>List the tags for an Amazon ECR resource.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the resource for which to list the tags. Currently, the
    #               only supported resource is an Amazon ECR repository.</p>
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

    # <p>Allows you to change the basic scan type version or registry policy scope.</p>
    # @param [Hash, Types::PutAccountSettingRequest] params
    # @option params [String] :name
    #   <p>The name of the account setting, such as <code>BASIC_SCAN_TYPE_VERSION</code> or
    #                   <code>REGISTRY_POLICY_SCOPE</code>. </p>
    # @option params [String] :value
    #   <p>Setting value that is specified. The following are valid values for the basic scan
    #               type being used: <code>AWS_NATIVE</code> or <code>CLAIR</code>. The following are valid
    #               values for the registry policy scope being used: <code>V1</code> or
    #               <code>V2</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "AccountSettingName", # required
    #     value: "AccountSettingValue", # required
    #   }
    #   options = {}
    #   response = client.put_account_setting(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "AccountSettingName",
    #     value: "AccountSettingValue"
    #   }
    # @return [Types::PutAccountSettingResponse]
    def put_account_setting(params = {}, options = {})
      request = build_request(:put_account_setting, params)
      request.send_request(options)
    end

    # <p>Creates or updates the image manifest and tags associated with an image.</p>
    #          <p>When an image is pushed and all new image layers have been uploaded, the PutImage API
    #             is called once to create or update the image manifest and the tags associated with the
    #             image.</p>
    #          <note>
    #             <p>This operation is used by the Amazon ECR proxy and is not generally used by
    #         customers for pulling and pushing images. In most cases, you should use the <code>docker</code> CLI to pull, tag, and push images.</p>
    #          </note>
    # @param [Hash, Types::PutImageRequest] params
    # @option params [String] :registry_id
    #   <p>The Amazon Web Services account ID associated with the registry that contains the repository in
    #               which to put the image. If you do not specify a registry, the default registry is assumed.</p>
    # @option params [String] :repository_name
    #   <p>The name of the repository in which to put the image.</p>
    # @option params [String] :image_manifest
    #   <p>The image manifest corresponding to the image to be uploaded.</p>
    # @option params [String] :image_manifest_media_type
    #   <p>The media type of the image manifest. If you push an image manifest that does not
    #               contain the <code>mediaType</code> field, you must specify the
    #                   <code>imageManifestMediaType</code> in the request.</p>
    # @option params [String] :image_tag
    #   <p>The tag to associate with the image. This parameter is required for images that use
    #               the Docker Image Manifest V2 Schema 2 or Open Container Initiative (OCI) formats.</p>
    # @option params [String] :image_digest
    #   <p>The image digest of the image manifest corresponding to the image.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     registry_id: "RegistryId",
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
    #       registry_id: "RegistryId",
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

    # <important>
    #             <p>The <code>PutImageScanningConfiguration</code> API is being deprecated, in favor
    #                 of specifying the image scanning configuration at the registry level. For more
    #                 information, see <a>PutRegistryScanningConfiguration</a>.</p>
    #          </important>
    #          <p>Updates the image scanning configuration for the specified repository.</p>
    # @param [Hash, Types::PutImageScanningConfigurationRequest] params
    # @option params [String] :registry_id
    #   <p>The Amazon Web Services account ID associated with the registry that contains the repository in
    #               which to update the image scanning configuration setting.
    #               If you do not specify a registry, the default registry is assumed.</p>
    # @option params [String] :repository_name
    #   <p>The name of the repository in which to update the image scanning configuration
    #               setting.</p>
    # @option params [Types::ImageScanningConfiguration] :image_scanning_configuration
    #   <p>The image scanning configuration for the repository. This setting determines whether
    #               images are scanned for known vulnerabilities after being pushed to the
    #               repository.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     registry_id: "RegistryId",
    #     repository_name: "RepositoryName", # required
    #     image_scanning_configuration: { # required
    #       scan_on_push: false
    #     }
    #   }
    #   options = {}
    #   response = client.put_image_scanning_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     registry_id: "RegistryId",
    #     repository_name: "RepositoryName",
    #     image_scanning_configuration: {
    #       scan_on_push: false
    #     }
    #   }
    # @return [Types::PutImageScanningConfigurationResponse]
    def put_image_scanning_configuration(params = {}, options = {})
      request = build_request(:put_image_scanning_configuration, params)
      request.send_request(options)
    end

    # <p>Updates the image tag mutability settings for the specified repository. For more
    #             information, see <a href="https://docs.aws.amazon.com/AmazonECR/latest/userguide/image-tag-mutability.html">Image tag
    #                 mutability</a> in the <i>Amazon Elastic Container Registry User Guide</i>.</p>
    # @param [Hash, Types::PutImageTagMutabilityRequest] params
    # @option params [String] :registry_id
    #   <p>The Amazon Web Services account ID associated with the registry that contains the repository in
    #               which to update the image tag mutability settings. If you do not specify a registry, the default registry is assumed.</p>
    # @option params [String] :repository_name
    #   <p>The name of the repository in which to update the image tag mutability
    #               settings.</p>
    # @option params [String] :image_tag_mutability
    #   <p>The tag mutability setting for the repository. If <code>MUTABLE</code> is specified,
    #               image tags can be overwritten. If <code>IMMUTABLE</code> is specified, all image tags
    #               within the repository will be immutable which will prevent them from being
    #               overwritten.</p>
    # @option params [Array<Types::ImageTagMutabilityExclusionFilter>] :image_tag_mutability_exclusion_filters
    #   <p>Creates or updates a repository with filters that define which image tags can override the default image tag mutability setting.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     registry_id: "RegistryId",
    #     repository_name: "RepositoryName", # required
    #     image_tag_mutability: "MUTABLE" # One of: ["MUTABLE", "IMMUTABLE", "IMMUTABLE_WITH_EXCLUSION", "MUTABLE_WITH_EXCLUSION"], # required
    #     image_tag_mutability_exclusion_filters: [
    #       {
    #         filter_type: "WILDCARD" # One of: ["WILDCARD"], # required
    #         filter: "ImageTagMutabilityExclusionFilterValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.put_image_tag_mutability(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     registry_id: "RegistryId",
    #     repository_name: "RepositoryName",
    #     image_tag_mutability: "MUTABLE" # One of: ["MUTABLE", "IMMUTABLE", "IMMUTABLE_WITH_EXCLUSION", "MUTABLE_WITH_EXCLUSION"],
    #     image_tag_mutability_exclusion_filters: [
    #       {
    #         filter_type: "WILDCARD" # One of: ["WILDCARD"], # required
    #         filter: "ImageTagMutabilityExclusionFilterValue", # required
    #       }
    #     ]
    #   }
    # @return [Types::PutImageTagMutabilityResponse]
    def put_image_tag_mutability(params = {}, options = {})
      request = build_request(:put_image_tag_mutability, params)
      request.send_request(options)
    end

    # <p>Creates or updates the lifecycle policy for the specified repository. For more
    #             information, see <a href="https://docs.aws.amazon.com/AmazonECR/latest/userguide/LifecyclePolicies.html">Lifecycle policy
    #                 template</a>.</p>
    # @param [Hash, Types::PutLifecyclePolicyRequest] params
    # @option params [String] :registry_id
    #   <p>The Amazon Web Services account ID associated with the registry that contains the repository. If you
    #               do  not specify a registry, the default registry is assumed.</p>
    # @option params [String] :repository_name
    #   <p>The name of the repository to receive the policy.</p>
    # @option params [String] :lifecycle_policy_text
    #   <p>The JSON repository policy text to apply to the repository.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     registry_id: "RegistryId",
    #     repository_name: "RepositoryName", # required
    #     lifecycle_policy_text: "LifecyclePolicyText", # required
    #   }
    #   options = {}
    #   response = client.put_lifecycle_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     registry_id: "RegistryId",
    #     repository_name: "RepositoryName",
    #     lifecycle_policy_text: "LifecyclePolicyText"
    #   }
    # @return [Types::PutLifecyclePolicyResponse]
    def put_lifecycle_policy(params = {}, options = {})
      request = build_request(:put_lifecycle_policy, params)
      request.send_request(options)
    end

    # <p>Creates or updates the permissions policy for your registry.</p>
    #          <p>A registry policy is used to specify permissions for another Amazon Web Services account and is used
    #             when configuring cross-account replication. For more information, see <a href="https://docs.aws.amazon.com/AmazonECR/latest/userguide/registry-permissions.html">Registry permissions</a> in the <i>Amazon Elastic Container Registry User Guide</i>.</p>
    # @param [Hash, Types::PutRegistryPolicyRequest] params
    # @option params [String] :policy_text
    #   <p>The JSON policy text to apply to your registry. The policy text follows the same
    #               format as IAM policy text. For more information, see <a href="https://docs.aws.amazon.com/AmazonECR/latest/userguide/registry-permissions.html">Registry
    #                   permissions</a> in the <i>Amazon Elastic Container Registry User Guide</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_text: "RegistryPolicyText", # required
    #   }
    #   options = {}
    #   response = client.put_registry_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     registry_id: "RegistryId",
    #     policy_text: "RegistryPolicyText"
    #   }
    # @return [Types::PutRegistryPolicyResponse]
    def put_registry_policy(params = {}, options = {})
      request = build_request(:put_registry_policy, params)
      request.send_request(options)
    end

    # <p>Creates or updates the scanning configuration for your private registry.</p>
    # @param [Hash, Types::PutRegistryScanningConfigurationRequest] params
    # @option params [String] :scan_type
    #   <p>The scanning type to set for the registry.</p>
    #            <p>When a registry scanning configuration is not defined, by default the
    #                   <code>BASIC</code> scan type is used. When basic scanning is used, you may specify
    #               filters to determine which individual repositories, or all repositories, are scanned
    #               when new images are pushed to those repositories. Alternatively, you can do manual scans
    #               of images with basic scanning.</p>
    #            <p>When the <code>ENHANCED</code> scan type is set, Amazon Inspector provides automated
    #               vulnerability scanning. You may choose between continuous scanning or scan on push and
    #               you may specify filters to determine which individual repositories, or all repositories,
    #               are scanned.</p>
    # @option params [Array<Types::RegistryScanningRule>] :rules
    #   <p>The scanning rules to use for the registry. A scanning rule is used to determine which
    #               repository filters are used and at what frequency scanning will occur.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     scan_type: "BASIC" # One of: ["BASIC", "ENHANCED"],
    #     rules: [
    #       {
    #         scan_frequency: "SCAN_ON_PUSH" # One of: ["SCAN_ON_PUSH", "CONTINUOUS_SCAN", "MANUAL"], # required
    #         repository_filters: [ # required
    #           {
    #             filter: "ScanningRepositoryFilterValue", # required
    #             filter_type: "WILDCARD" # One of: ["WILDCARD"], # required
    #           }
    #         ]
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.put_registry_scanning_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     registry_scanning_configuration: {
    #       scan_type: "BASIC" # One of: ["BASIC", "ENHANCED"],
    #       rules: [
    #         {
    #           scan_frequency: "SCAN_ON_PUSH" # One of: ["SCAN_ON_PUSH", "CONTINUOUS_SCAN", "MANUAL"], # required
    #           repository_filters: [ # required
    #             {
    #               filter: "ScanningRepositoryFilterValue", # required
    #               filter_type: "WILDCARD" # One of: ["WILDCARD"], # required
    #             }
    #           ]
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::PutRegistryScanningConfigurationResponse]
    def put_registry_scanning_configuration(params = {}, options = {})
      request = build_request(:put_registry_scanning_configuration, params)
      request.send_request(options)
    end

    # <p>Creates or updates the replication configuration for a registry. The existing
    #             replication configuration for a repository can be retrieved with the <a>DescribeRegistry</a> API action. The first time the
    #             PutReplicationConfiguration API is called, a service-linked IAM role is created in
    #             your account for the replication process. For more information, see <a href="https://docs.aws.amazon.com/AmazonECR/latest/userguide/using-service-linked-roles.html">Using
    #                 service-linked roles for Amazon ECR</a> in the <i>Amazon Elastic Container Registry User Guide</i>.
    #             For more information on the custom role for replication, see <a href="https://docs.aws.amazon.com/AmazonECR/latest/userguide/replication-creation-templates.html#roles-creatingrole-user-console">Creating an IAM role for replication</a>.</p>
    #          <note>
    #             <p>When configuring cross-account replication, the destination account must grant the
    #                 source account permission to replicate. This permission is controlled using a
    #                 registry permissions policy. For more information, see <a>PutRegistryPolicy</a>.</p>
    #          </note>
    # @param [Hash, Types::PutReplicationConfigurationRequest] params
    # @option params [Types::ReplicationConfiguration] :replication_configuration
    #   <p>An object representing the replication configuration for a registry.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     replication_configuration: { # required
    #       rules: [ # required
    #         {
    #           destinations: [ # required
    #             {
    #               region: "Region", # required
    #               registry_id: "RegistryId", # required
    #             }
    #           ],
    #           repository_filters: [
    #             {
    #               filter: "RepositoryFilterValue", # required
    #               filter_type: "PREFIX_MATCH" # One of: ["PREFIX_MATCH"], # required
    #             }
    #           ]
    #         }
    #       ]
    #     }
    #   }
    #   options = {}
    #   response = client.put_replication_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     replication_configuration: {
    #       rules: [ # required
    #         {
    #           destinations: [ # required
    #             {
    #               region: "Region", # required
    #               registry_id: "RegistryId", # required
    #             }
    #           ],
    #           repository_filters: [
    #             {
    #               filter: "RepositoryFilterValue", # required
    #               filter_type: "PREFIX_MATCH" # One of: ["PREFIX_MATCH"], # required
    #             }
    #           ]
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::PutReplicationConfigurationResponse]
    def put_replication_configuration(params = {}, options = {})
      request = build_request(:put_replication_configuration, params)
      request.send_request(options)
    end

    # <p>Applies a repository policy to the specified repository to control access permissions.
    #             For more information, see <a href="https://docs.aws.amazon.com/AmazonECR/latest/userguide/repository-policies.html">Amazon ECR Repository
    #                 policies</a> in the <i>Amazon Elastic Container Registry User Guide</i>.</p>
    # @param [Hash, Types::SetRepositoryPolicyRequest] params
    # @option params [String] :registry_id
    #   <p>The Amazon Web Services account ID associated with the registry that contains the repository.
    #               If you do not specify a registry, the default registry is assumed.</p>
    # @option params [String] :repository_name
    #   <p>The name of the repository to receive the policy.</p>
    # @option params [String] :policy_text
    #   <p>The JSON repository policy text to apply to the repository. For more information, see
    #                   <a href="https://docs.aws.amazon.com/AmazonECR/latest/userguide/repository-policy-examples.html">Amazon ECR repository
    #                   policies</a> in the <i>Amazon Elastic Container Registry User Guide</i>.</p>
    # @option params [Boolean] :force
    #   <p>If the policy you are attempting to set on a repository policy would prevent you from
    #               setting another policy in the future, you must force the <a>SetRepositoryPolicy</a> operation. This is intended to prevent accidental
    #               repository lock outs.</p>
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

    # <p>Starts a basic image vulnerability scan.</p>
    #          <p> A basic image scan can only be started once per 24
    #             hours on an individual image. This limit includes if an image was scanned on initial
    #             push. You can start up to 100,000 basic scans per 24 hours. This limit includes both scans on initial push
    #             and scans initiated by the StartImageScan API. For more information, see <a href="https://docs.aws.amazon.com/AmazonECR/latest/userguide/image-scanning-basic.html">Basic scanning</a> in the
    #                 <i>Amazon Elastic Container Registry User Guide</i>.</p>
    # @param [Hash, Types::StartImageScanRequest] params
    # @option params [String] :registry_id
    #   <p>The Amazon Web Services account ID associated with the registry that contains the repository in
    #               which to start an image scan request. If you do not specify a registry, the default registry is assumed.</p>
    # @option params [String] :repository_name
    #   <p>The name of the repository that contains the images to scan.</p>
    # @option params [Types::ImageIdentifier] :image_id
    #   <p>An object with identifying information for an image in an Amazon ECR repository.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     registry_id: "RegistryId",
    #     repository_name: "RepositoryName", # required
    #     image_id: { # required
    #       image_digest: "ImageDigest",
    #       image_tag: "ImageTag"
    #     }
    #   }
    #   options = {}
    #   response = client.start_image_scan(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     registry_id: "RegistryId",
    #     repository_name: "RepositoryName",
    #     image_id: {
    #       image_digest: "ImageDigest",
    #       image_tag: "ImageTag"
    #     },
    #     image_scan_status: {
    #       status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "COMPLETE", "FAILED", "UNSUPPORTED_IMAGE", "ACTIVE", "PENDING", "SCAN_ELIGIBILITY_EXPIRED", "FINDINGS_UNAVAILABLE", "LIMIT_EXCEEDED"],
    #       description: "ScanStatusDescription"
    #     }
    #   }
    # @return [Types::StartImageScanResponse]
    def start_image_scan(params = {}, options = {})
      request = build_request(:start_image_scan, params)
      request.send_request(options)
    end

    # <p>Starts a preview of a lifecycle policy for the specified repository. This allows you
    #             to see the results before associating the lifecycle policy with the repository.</p>
    # @param [Hash, Types::StartLifecyclePolicyPreviewRequest] params
    # @option params [String] :registry_id
    #   <p>The Amazon Web Services account ID associated with the registry that contains the repository.
    #               If you do not specify a registry, the default registry is assumed.</p>
    # @option params [String] :repository_name
    #   <p>The name of the repository to be evaluated.</p>
    # @option params [String] :lifecycle_policy_text
    #   <p>The policy to be evaluated against. If you do not specify a policy, the current policy
    #               for the repository is used.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     registry_id: "RegistryId",
    #     repository_name: "RepositoryName", # required
    #     lifecycle_policy_text: "LifecyclePolicyText"
    #   }
    #   options = {}
    #   response = client.start_lifecycle_policy_preview(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     registry_id: "RegistryId",
    #     repository_name: "RepositoryName",
    #     lifecycle_policy_text: "LifecyclePolicyText",
    #     status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "COMPLETE", "EXPIRED", "FAILED"]
    #   }
    # @return [Types::StartLifecyclePolicyPreviewResponse]
    def start_lifecycle_policy_preview(params = {}, options = {})
      request = build_request(:start_lifecycle_policy_preview, params)
      request.send_request(options)
    end

    # <p>Adds specified tags to a resource with the specified ARN. Existing tags on a resource
    #             are not changed if they are not specified in the request parameters.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the the resource to which to add tags. Currently, the only supported
    #               resource is an Amazon ECR repository.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags to add to the resource. A tag is an array of key-value pairs.
    #               Tag keys can have a maximum character length of 128 characters, and tag values can have
    #               a maximum length of 256 characters.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
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

    # <p>Deletes specified tags from a resource.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource from which to remove tags. Currently, the only supported
    #               resource is an Amazon ECR repository.</p>
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

    # <p>Updates an existing pull through cache rule.</p>
    # @param [Hash, Types::UpdatePullThroughCacheRuleRequest] params
    # @option params [String] :registry_id
    #   <p>The Amazon Web Services account ID associated with the registry associated with the pull through
    #               cache rule. If you do not specify a registry, the default registry is assumed.</p>
    # @option params [String] :ecr_repository_prefix
    #   <p>The repository name prefix to use when caching images from the source registry.</p>
    # @option params [String] :credential_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Web Services Secrets Manager secret that identifies the credentials to authenticate
    #               to the upstream registry.</p>
    # @option params [String] :custom_role_arn
    #   <p>Amazon Resource Name (ARN) of the IAM role to be assumed by Amazon ECR to authenticate to the
    #               ECR upstream registry. This role must be in the same account as the registry that you
    #               are configuring.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     registry_id: "RegistryId",
    #     ecr_repository_prefix: "PullThroughCacheRuleRepositoryPrefix", # required
    #     credential_arn: "CredentialArn",
    #     custom_role_arn: "CustomRoleArn"
    #   }
    #   options = {}
    #   response = client.update_pull_through_cache_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     ecr_repository_prefix: "PullThroughCacheRuleRepositoryPrefix",
    #     registry_id: "RegistryId",
    #     updated_at: Time.now,
    #     credential_arn: "CredentialArn",
    #     custom_role_arn: "CustomRoleArn",
    #     upstream_repository_prefix: "PullThroughCacheRuleRepositoryPrefix"
    #   }
    # @return [Types::UpdatePullThroughCacheRuleResponse]
    def update_pull_through_cache_rule(params = {}, options = {})
      request = build_request(:update_pull_through_cache_rule, params)
      request.send_request(options)
    end

    # <p>Updates an existing repository creation template.</p>
    # @param [Hash, Types::UpdateRepositoryCreationTemplateRequest] params
    # @option params [String] :prefix
    #   <p>The repository namespace prefix that matches an existing repository creation template
    #               in the registry. All repositories created using this namespace prefix will have the
    #               settings defined in this template applied. For example, a prefix of <code>prod</code>
    #               would apply to all repositories beginning with <code>prod/</code>. This includes a
    #               repository named <code>prod/team1</code> as well as a repository named
    #                   <code>prod/repository1</code>.</p>
    #            <p>To apply a template to all repositories in your registry that don't have an associated
    #               creation template, you can use <code>ROOT</code> as the prefix.</p>
    # @option params [String] :description
    #   <p>A description for the repository creation template.</p>
    # @option params [Types::EncryptionConfigurationForRepositoryCreationTemplate] :encryption_configuration
    #   <p>The encryption configuration to associate with the repository creation
    #               template.</p>
    # @option params [Array<Types::Tag>] :resource_tags
    #   <p>The metadata to apply to the repository to help you categorize and organize. Each tag
    #               consists of a key and an optional value, both of which you define. Tag keys can have a maximum character length of 128 characters, and tag values can have
    #               a maximum length of 256 characters.</p>
    # @option params [String] :image_tag_mutability
    #   <p>Updates the tag mutability setting for the repository. If this parameter is omitted,
    #               the default setting of <code>MUTABLE</code> will be used which will allow image tags to
    #               be overwritten. If <code>IMMUTABLE</code> is specified, all image tags within the
    #               repository will be immutable which will prevent them from being overwritten.</p>
    # @option params [Array<Types::ImageTagMutabilityExclusionFilter>] :image_tag_mutability_exclusion_filters
    #   <p>Updates a repository with filters that define which image tags can override the default image tag mutability setting.</p>
    # @option params [String] :repository_policy
    #   <p>Updates the repository policy created using the template. A repository policy is a
    #               permissions policy associated with a repository to control access permissions. </p>
    # @option params [String] :lifecycle_policy
    #   <p>Updates the lifecycle policy associated with the specified repository creation
    #               template.</p>
    # @option params [Array<String>] :applied_for
    #   <p>Updates the list of enumerable strings representing the Amazon ECR repository creation
    #               scenarios that this template will apply towards. The two supported scenarios are
    #                   <code>PULL_THROUGH_CACHE</code> and <code>REPLICATION</code>
    #            </p>
    # @option params [String] :custom_role_arn
    #   <p>The ARN of the role to be assumed by Amazon ECR. This role must be in the same account as
    #               the registry that you are configuring. Amazon ECR will assume your supplied role when the
    #               customRoleArn is specified. When this field isn't specified, Amazon ECR will use the
    #               service-linked role for the repository creation template.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     prefix: "Prefix", # required
    #     description: "RepositoryTemplateDescription",
    #     encryption_configuration: {
    #       encryption_type: "AES256" # One of: ["AES256", "KMS", "KMS_DSSE"], # required
    #       kms_key: "KmsKeyForRepositoryCreationTemplate"
    #     },
    #     resource_tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     image_tag_mutability: "MUTABLE" # One of: ["MUTABLE", "IMMUTABLE", "IMMUTABLE_WITH_EXCLUSION", "MUTABLE_WITH_EXCLUSION"],
    #     image_tag_mutability_exclusion_filters: [
    #       {
    #         filter_type: "WILDCARD" # One of: ["WILDCARD"], # required
    #         filter: "ImageTagMutabilityExclusionFilterValue", # required
    #       }
    #     ],
    #     repository_policy: "RepositoryPolicyText",
    #     lifecycle_policy: "LifecyclePolicyTextForRepositoryCreationTemplate",
    #     applied_for: ["REPLICATION" # One of: ["REPLICATION", "PULL_THROUGH_CACHE"]],
    #     custom_role_arn: "CustomRoleArn"
    #   }
    #   options = {}
    #   response = client.update_repository_creation_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     registry_id: "RegistryId",
    #     repository_creation_template: {
    #       prefix: "Prefix",
    #       description: "RepositoryTemplateDescription",
    #       encryption_configuration: {
    #         encryption_type: "AES256" # One of: ["AES256", "KMS", "KMS_DSSE"], # required
    #         kms_key: "KmsKeyForRepositoryCreationTemplate"
    #       },
    #       resource_tags: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue", # required
    #         }
    #       ],
    #       image_tag_mutability: "MUTABLE" # One of: ["MUTABLE", "IMMUTABLE", "IMMUTABLE_WITH_EXCLUSION", "MUTABLE_WITH_EXCLUSION"],
    #       image_tag_mutability_exclusion_filters: [
    #         {
    #           filter_type: "WILDCARD" # One of: ["WILDCARD"], # required
    #           filter: "ImageTagMutabilityExclusionFilterValue", # required
    #         }
    #       ],
    #       repository_policy: "RepositoryPolicyText",
    #       lifecycle_policy: "LifecyclePolicyTextForRepositoryCreationTemplate",
    #       applied_for: ["REPLICATION" # One of: ["REPLICATION", "PULL_THROUGH_CACHE"]],
    #       custom_role_arn: "CustomRoleArn",
    #       created_at: Time.now,
    #       updated_at: Time.now
    #     }
    #   }
    # @return [Types::UpdateRepositoryCreationTemplateResponse]
    def update_repository_creation_template(params = {}, options = {})
      request = build_request(:update_repository_creation_template, params)
      request.send_request(options)
    end

    # <p>Uploads an image layer part to Amazon ECR.</p>
    #          <p>When an image is pushed, each new image layer is uploaded in parts. The maximum size
    #             of each image layer part can be 20971520 bytes (or about 20MB). The UploadLayerPart API
    #             is called once per each new image layer part.</p>
    #          <note>
    #             <p>This operation is used by the Amazon ECR proxy and is not generally used by
    #         customers for pulling and pushing images. In most cases, you should use the <code>docker</code> CLI to pull, tag, and push images.</p>
    #          </note>
    # @param [Hash, Types::UploadLayerPartRequest] params
    # @option params [String] :registry_id
    #   <p>The Amazon Web Services account ID associated with the registry to which you are uploading layer
    #               parts. If you do not specify a registry, the default registry is assumed.</p>
    # @option params [String] :repository_name
    #   <p>The name of the repository to which you are uploading layer parts.</p>
    # @option params [String] :upload_id
    #   <p>The upload ID from a previous <a>InitiateLayerUpload</a> operation to
    #               associate with the layer part upload.</p>
    # @option params [Integer] :part_first_byte
    #   <p>The position of the first byte of the layer part witin the overall image layer.</p>
    # @option params [Integer] :part_last_byte
    #   <p>The position of the last byte of the layer part within the overall image layer.</p>
    # @option params [String] :layer_part_blob
    #   <p>The base64-encoded layer part payload.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     registry_id: "RegistryId",
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

    # <p>Validates an existing pull through cache rule for an upstream registry that requires
    #             authentication. This will retrieve the contents of the Amazon Web Services Secrets Manager secret, verify the
    #             syntax, and then validate that authentication to the upstream registry is
    #             successful.</p>
    # @param [Hash, Types::ValidatePullThroughCacheRuleRequest] params
    # @option params [String] :ecr_repository_prefix
    #   <p>The repository name prefix associated with the pull through cache rule.</p>
    # @option params [String] :registry_id
    #   <p>The registry ID associated with the pull through cache rule.
    #               If you do not specify a registry, the default registry is assumed.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     ecr_repository_prefix: "PullThroughCacheRuleRepositoryPrefix", # required
    #     registry_id: "RegistryId"
    #   }
    #   options = {}
    #   response = client.validate_pull_through_cache_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     ecr_repository_prefix: "PullThroughCacheRuleRepositoryPrefix",
    #     registry_id: "RegistryId",
    #     upstream_registry_url: "Url",
    #     credential_arn: "CredentialArn",
    #     custom_role_arn: "CustomRoleArn",
    #     upstream_repository_prefix: "PullThroughCacheRuleRepositoryPrefix",
    #     is_valid: false,
    #     failure: "PTCValidateFailure"
    #   }
    # @return [Types::ValidatePullThroughCacheRuleResponse]
    def validate_pull_through_cache_rule(params = {}, options = {})
      request = build_request(:validate_pull_through_cache_rule, params)
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
      context[:gem_name] = 'aws-sdk-ecr'
      context[:gem_version] = '2.0.0.pre0'
      Smithy::Client::Request.new(handlers: handlers, context: context)
    end

    private

    def waiters
      {
        image_scan_complete: Waiters::ImageScanComplete,
        lifecycle_policy_preview_complete: Waiters::LifecyclePolicyPreviewComplete
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
