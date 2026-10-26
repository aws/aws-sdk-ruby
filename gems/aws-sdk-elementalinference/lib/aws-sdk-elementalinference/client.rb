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

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:elementalinference)

module Aws::ElementalInference
  # An API client for Aws::ElementalInference.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::ElementalInference
    @identifier = :elementalinference

    add_plugin(::Aws::ElementalInference::Plugins::Endpoint)
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
    #  and returns a {Aws::Credentials}.
    # @option options [Boolean] :disable_host_prefix_injection
    #  When `true`, the SDK will not prepend the modeled host prefix to the endpoint.
    # @option options [Boolean] :disable_request_compression
    #  When `true`, the request body will not be compressed for supported operations.
    # @option options [String] :endpoint
    #  The endpoint to send requests to.
    #  The endpoint should be a URI formatted like "http://example.com:123"'
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::ElementalInference::EndpointProvider)
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
    #  `#transmit(request, sink)` and `#transmit_background(request, sink)` (both push
    #  the response into the sink; see {Smithy::Client::Transport}) to swap the transport,
    #  or a directly-constructed `NetHTTP::Transport` to set Net::HTTP-specific knobs. A
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

    # <p>Associates a resource with the feed. The resource provides the input that Elemental Inference needs in order to perform an Elemental Inference feature, such as cropping video. You always provide the resource by associating it with a feed. You can associate only one resource with each feed. With an association, a specific source media is claiming ownership of the feed. </p> <p>AssociateFeed is a PATCH operation, which means that you can include only parameters that you want to change. Parameters that you don't include will not be affected by the operation. </p> <p>Specifically:</p> <ul> <li> <p>You can add more outputs to the existing outputs. New outputs will be appended.</p> </li> <li> <p>You can't modify an existing output (for example to change its name). Instead, use UpdateFeed. </p> </li> <li> <p>You can't delete an existing output. Instead, use UpdateFeed.</p> </li> </ul> <p>Also note that you can't change the feed name with AssociateFeed. Instead, use UpdateFeed. </p>
    # @param [Hash, Types::AssociateFeedRequest] params
    # @option params [String] :id
    #   <p>The ID of the feed.</p>
    # @option params [String] :associated_resource_name
    #   <p>An identifier for the resource. This name must not resemble an ARN.</p> <p>The resource is the source media that the feed will process. The name you assign should help you to later identify the source media that belongs to the feed. In this way, you will know which source media to push to the feed (using PutMedia). </p>
    # @option params [Array<Types::CreateOutput>] :outputs
    #   <p>An array of one or more outputs that you want to add to this feed now, to supplement any outputs that you specified when you created or updated the feed. </p>
    # @option params [Boolean] :dry_run
    #   <p>Set to true if you want to do a dry run of the associate action.</p> <p>Elemental Inference will validate that the real request would succeed without actually making any changes. A dry run catches errors such as missing IAM permissions, quota limits exceeded, conflicting outputs, and so on. If the dry run fails, the action returns a 4xx error code. After you've fixed the errors, resubmit the request. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "FeedId", # required
    #     associated_resource_name: "AssociatedResourceName", # required
    #     outputs: [ # required
    #       {
    #         name: "ResourceName", # required
    #         output_config: { # required
    #           # One of:
    #           cropping: {
    #             template_groups: [
    #               {
    #                 name: "ResourceName", # required
    #                 template_uris: ["S3Uri"], # required
    #               }
    #             ]
    #           },
    #           clipping: {
    #             callback_metadata: "ResourceDescription",
    #             data_source_configuration: {
    #               fixture_id: "FixtureId", # required
    #             }
    #           },
    #           subtitling: {
    #             language: "eng" # One of: ["eng", "eng-au", "eng-gb", "eng-us", "fra", "ita", "deu", "spa", "por"], # required
    #             aspect_ratio: {
    #               width: 1, # required
    #               height: 1, # required
    #             },
    #             dictionary: "DictionaryId",
    #             profanity_filter: "DISABLED" # One of: ["DISABLED", "CENSOR", "DROP"]
    #           },
    #           contextual_metadata: {
    #             summary_generation: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #             extended_analysis: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #           }
    #         },
    #         status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #         description: "ResourceDescription"
    #       }
    #     ],
    #     dry_run: false
    #   }
    #   options = {}
    #   response = client.associate_feed(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "FeedArn", # required
    #     id: "FeedId", # required
    #   }
    # @return [Types::AssociateFeedResponse]
    def associate_feed(params = {}, options = {})
      request = build_request(:associate_feed, params)
      request.send_request(options)
    end

    # <p>Creates a custom dictionary for improving transcription accuracy. A dictionary contains custom words and phrases that the ASR engine might not recognize, such as brand names, technical terms, or proper nouns. You can reference a dictionary when configuring a smart subtitles output. </p>
    # @param [Hash, Types::CreateDictionaryRequest] params
    # @option params [String] :name
    #   <p>A user-friendly name for this dictionary.</p>
    # @option params [String] :language
    #   <p>The language of the dictionary entries. Specify the language using an ISO 639-2/T three-letter code. Supported values: eng, fra, ita, deu, spa, por. </p>
    # @option params [String] :entries
    #   <p>The dictionary entries payload. Contains the custom words and phrases for the dictionary. Maximum size is 40,960 characters. </p>
    # @option params [Hash<String, String>] :tags
    #   <p>Optional tags to associate with the dictionary.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ResourceName", # required
    #     language: "eng" # One of: ["eng", "fra", "ita", "deu", "spa", "por"], # required
    #     entries: "DictionaryEntriesPayload",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_dictionary(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "ResourceName", # required
    #     arn: "DictionaryArn", # required
    #     id: "DictionaryId", # required
    #     language: "eng" # One of: ["eng", "fra", "ita", "deu", "spa", "por"], # required
    #     status: "CREATING" # One of: ["CREATING", "AVAILABLE", "REFERENCED", "DELETING", "DELETED"], # required
    #     references: ["FeedId"],
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::CreateDictionaryResponse]
    def create_dictionary(params = {}, options = {})
      request = build_request(:create_dictionary, params)
      request.send_request(options)
    end

    # <p>Creates a feed. The feed is the target for the live media stream that is being sent by the calling application. An example of a calling application is AWS Elemental MediaLive. </p> <p>The key contents of the feed is an array of outputs. Each output represents an Elemental Inference feature. After you create the feed, you must associate a resource with the feed. At that point, you will have a useable feed: resource - feed - output or outputs. </p>
    # @param [Hash, Types::CreateFeedRequest] params
    # @option params [String] :name
    #   <p>A user-friendly name for this feed.</p>
    # @option params [String] :access_role_arn
    #   <p>The ARN of an IAM role that Elemental Inference assumes to access resources in your account on your behalf. For example, the smart crop feature uses this role to read graphics-compositing templates from your Amazon S3 bucket. You specify one access role for each feed. </p>
    # @option params [Array<Types::CreateOutput>] :outputs
    #   <p>An array of outputs for this feed. Each output represents a specific Elemental Inference feature. For example, there is one output type for the smart crop feature. You must specify at least one output, but you can later add outputs using AssociateFeed, or add, modify, and delete outputs using UpdateFeed. </p>
    # @option params [Hash<String, String>] :tags
    #   <p>Optional tags. You can also add tags later, using TagResource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ResourceName", # required
    #     access_role_arn: "IamRoleArn",
    #     outputs: [ # required
    #       {
    #         name: "ResourceName", # required
    #         output_config: { # required
    #           # One of:
    #           cropping: {
    #             template_groups: [
    #               {
    #                 name: "ResourceName", # required
    #                 template_uris: ["S3Uri"], # required
    #               }
    #             ]
    #           },
    #           clipping: {
    #             callback_metadata: "ResourceDescription",
    #             data_source_configuration: {
    #               fixture_id: "FixtureId", # required
    #             }
    #           },
    #           subtitling: {
    #             language: "eng" # One of: ["eng", "eng-au", "eng-gb", "eng-us", "fra", "ita", "deu", "spa", "por"], # required
    #             aspect_ratio: {
    #               width: 1, # required
    #               height: 1, # required
    #             },
    #             dictionary: "DictionaryId",
    #             profanity_filter: "DISABLED" # One of: ["DISABLED", "CENSOR", "DROP"]
    #           },
    #           contextual_metadata: {
    #             summary_generation: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #             extended_analysis: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #           }
    #         },
    #         status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #         description: "ResourceDescription"
    #       }
    #     ],
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_feed(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "FeedArn", # required
    #     name: "ResourceName", # required
    #     id: "FeedId", # required
    #     data_endpoints: ["String"], # required
    #     outputs: [ # required
    #       {
    #         name: "ResourceName", # required
    #         output_config: { # required
    #           # One of:
    #           cropping: {
    #             template_groups: [
    #               {
    #                 name: "ResourceName", # required
    #                 template_uris: ["S3Uri"], # required
    #               }
    #             ]
    #           },
    #           clipping: {
    #             callback_metadata: "ResourceDescription",
    #             data_source_configuration: {
    #               fixture_id: "FixtureId", # required
    #             }
    #           },
    #           subtitling: {
    #             language: "eng" # One of: ["eng", "eng-au", "eng-gb", "eng-us", "fra", "ita", "deu", "spa", "por"], # required
    #             aspect_ratio: {
    #               width: 1, # required
    #               height: 1, # required
    #             },
    #             dictionary: "DictionaryId",
    #             profanity_filter: "DISABLED" # One of: ["DISABLED", "CENSOR", "DROP"]
    #           },
    #           contextual_metadata: {
    #             summary_generation: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #             extended_analysis: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #           }
    #         },
    #         status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #         description: "ResourceDescription",
    #         from_association: false
    #       }
    #     ],
    #     access_role_arn: "IamRoleArn",
    #     status: "CREATING" # One of: ["CREATING", "AVAILABLE", "ACTIVE", "UPDATING", "DELETING", "DELETED", "ARCHIVED"], # required
    #     association: {
    #       associated_resource_name: "AssociatedResourceName", # required
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::CreateFeedResponse]
    def create_feed(params = {}, options = {})
      request = build_request(:create_feed, params)
      request.send_request(options)
    end

    # <p>Deletes the specified dictionary. You cannot delete a dictionary that is referenced by a feed. You must first remove the dictionary reference from the feed's subtitling configuration. </p>
    # @param [Hash, Types::DeleteDictionaryRequest] params
    # @option params [String] :id
    #   <p>The ID of the dictionary to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "DictionaryId", # required
    #   }
    #   options = {}
    #   response = client.delete_dictionary(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "DictionaryArn", # required
    #     id: "DictionaryId", # required
    #     status: "CREATING" # One of: ["CREATING", "AVAILABLE", "REFERENCED", "DELETING", "DELETED"], # required
    #   }
    # @return [Types::DeleteDictionaryResponse]
    def delete_dictionary(params = {}, options = {})
      request = build_request(:delete_dictionary, params)
      request.send_request(options)
    end

    # <p>Deletes the specified feed. You can delete the feed at any time. Elemental Inference doesn't block you from deleting a feed when the calling application is calling PutMedia or GetMetadata on that feed, although both these calls will start to fail. For more information about managing inactive feeds, see the Elemental Inference User Guide. </p>
    # @param [Hash, Types::DeleteFeedRequest] params
    # @option params [String] :id
    #   <p>The ID of the feed.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "FeedId", # required
    #   }
    #   options = {}
    #   response = client.delete_feed(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "FeedArn", # required
    #     id: "FeedId", # required
    #     status: "CREATING" # One of: ["CREATING", "AVAILABLE", "ACTIVE", "UPDATING", "DELETING", "DELETED", "ARCHIVED"], # required
    #   }
    # @return [Types::DeleteFeedResponse]
    def delete_feed(params = {}, options = {})
      request = build_request(:delete_feed, params)
      request.send_request(options)
    end

    # <p>Deletes the resource-based policy attached to the specified feed. After you delete the policy, the operation revokes the cross-account access that the policy granted. </p>
    # @param [Hash, Types::DeleteFeedPolicyRequest] params
    # @option params [String] :id
    #   <p>The ID of the feed whose policy you want to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "FeedId", # required
    #   }
    #   options = {}
    #   response = client.delete_feed_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_feed_policy(params = {}, options = {})
      request = build_request(:delete_feed_policy, params)
      request.send_request(options)
    end

    # <p>Releases the resource (the source media) that is associated with this feed. The outputs in the feed become DISABLED. </p>
    # @param [Hash, Types::DisassociateFeedRequest] params
    # @option params [String] :id
    #   <p>The ID of the feed where you want to release the resource.</p>
    # @option params [String] :associated_resource_name
    #   <p>The name of the resource currently associated with the feed.</p>
    # @option params [Boolean] :dry_run
    #   <p>Set to true if you want to do a dry run of the disassociate action.</p> <p>Elemental Inference will validate that the real request would succeed without actually making any changes. A dry run catches errors such as missing IAM permissions. If the dry run fails, the action returns a 4xx error code. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "FeedId", # required
    #     associated_resource_name: "AssociatedResourceName", # required
    #     dry_run: false
    #   }
    #   options = {}
    #   response = client.disassociate_feed(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "FeedArn", # required
    #     id: "FeedId", # required
    #   }
    # @return [Types::DisassociateFeedResponse]
    def disassociate_feed(params = {}, options = {})
      request = build_request(:disassociate_feed, params)
      request.send_request(options)
    end

    # <p>Exports the entries from the specified dictionary.</p>
    # @param [Hash, Types::ExportDictionaryEntriesRequest] params
    # @option params [String] :id
    #   <p>The ID of the dictionary whose entries you want to export.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "DictionaryId", # required
    #   }
    #   options = {}
    #   response = client.export_dictionary_entries(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     entries: "DictionaryEntriesPayload"
    #   }
    # @return [Types::ExportDictionaryEntriesResponse]
    def export_dictionary_entries(params = {}, options = {})
      request = build_request(:export_dictionary_entries, params)
      request.send_request(options)
    end

    # <p>Retrieves information about the specified dictionary.</p>
    # @param [Hash, Types::GetDictionaryRequest] params
    # @option params [String] :id
    #   <p>The ID of the dictionary to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "DictionaryId", # required
    #   }
    #   options = {}
    #   response = client.get_dictionary(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "ResourceName", # required
    #     arn: "DictionaryArn", # required
    #     id: "DictionaryId", # required
    #     language: "eng" # One of: ["eng", "fra", "ita", "deu", "spa", "por"], # required
    #     status: "CREATING" # One of: ["CREATING", "AVAILABLE", "REFERENCED", "DELETING", "DELETED"], # required
    #     references: ["FeedId"],
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::GetDictionaryResponse]
    def get_dictionary(params = {}, options = {})
      request = build_request(:get_dictionary, params)
      request.send_request(options)
    end

    # <p>Retrieves information about the specified feed.</p>
    # @param [Hash, Types::GetFeedRequest] params
    # @option params [String] :id
    #   <p>The ID of the feed to query.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "FeedId", # required
    #   }
    #   options = {}
    #   response = client.get_feed(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "FeedArn", # required
    #     name: "ResourceName", # required
    #     id: "FeedId", # required
    #     data_endpoints: ["String"], # required
    #     outputs: [ # required
    #       {
    #         name: "ResourceName", # required
    #         output_config: { # required
    #           # One of:
    #           cropping: {
    #             template_groups: [
    #               {
    #                 name: "ResourceName", # required
    #                 template_uris: ["S3Uri"], # required
    #               }
    #             ]
    #           },
    #           clipping: {
    #             callback_metadata: "ResourceDescription",
    #             data_source_configuration: {
    #               fixture_id: "FixtureId", # required
    #             }
    #           },
    #           subtitling: {
    #             language: "eng" # One of: ["eng", "eng-au", "eng-gb", "eng-us", "fra", "ita", "deu", "spa", "por"], # required
    #             aspect_ratio: {
    #               width: 1, # required
    #               height: 1, # required
    #             },
    #             dictionary: "DictionaryId",
    #             profanity_filter: "DISABLED" # One of: ["DISABLED", "CENSOR", "DROP"]
    #           },
    #           contextual_metadata: {
    #             summary_generation: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #             extended_analysis: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #           }
    #         },
    #         status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #         description: "ResourceDescription",
    #         from_association: false
    #       }
    #     ],
    #     access_role_arn: "IamRoleArn",
    #     status: "CREATING" # One of: ["CREATING", "AVAILABLE", "ACTIVE", "UPDATING", "DELETING", "DELETED", "ARCHIVED"], # required
    #     association: {
    #       associated_resource_name: "AssociatedResourceName", # required
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::GetFeedResponse]
    def get_feed(params = {}, options = {})
      request = build_request(:get_feed, params)
      request.send_request(options)
    end

    # <p>Retrieves the resource-based policy attached to the specified feed.</p>
    # @param [Hash, Types::GetFeedPolicyRequest] params
    # @option params [String] :id
    #   <p>The ID of the feed whose policy you want to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "FeedId", # required
    #   }
    #   options = {}
    #   response = client.get_feed_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy: "PolicyDocument", # required
    #   }
    # @return [Types::GetFeedPolicyResponse]
    def get_feed_policy(params = {}, options = {})
      request = build_request(:get_feed_policy, params)
      request.send_request(options)
    end

    # <p>Retrieves information about the specified fixture (a sports event, such as a specific basketball game). You obtain a fixtureId from SearchFixtures, or from the clipping output of a feed. </p>
    # @param [Hash, Types::GetFixtureRequest] params
    # @option params [String] :fixture_id
    #   <p>The ID of the fixture to retrieve, as returned by SearchFixtures.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     fixture_id: "FixtureId", # required
    #   }
    #   options = {}
    #   response = client.get_fixture(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     fixture_id: "FixtureId", # required
    #     name: "String", # required
    #     fixture_group: "String",
    #     scheduled_start: Time.now,
    #     status: "String", # required
    #     competitors: [ # required
    #       {
    #         name: "String",
    #         is_home: false
    #       }
    #     ]
    #   }
    # @return [Types::GetFixtureResponse]
    def get_fixture(params = {}, options = {})
      request = build_request(:get_fixture, params)
      request.send_request(options)
    end

    # <p>Lists the dictionaries in your account.</p>
    # @param [Hash, Types::ListDictionariesRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per API request. Valid range: 1 to 100.</p>
    # @option params [String] :next_token
    #   <p>The token that identifies the next batch of results to return.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_dictionaries(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     dictionaries: [ # required
    #       {
    #         arn: "DictionaryArn", # required
    #         id: "DictionaryId", # required
    #         name: "ResourceName", # required
    #         language: "eng" # One of: ["eng", "fra", "ita", "deu", "spa", "por"], # required
    #         status: "CREATING" # One of: ["CREATING", "AVAILABLE", "REFERENCED", "DELETING", "DELETED"], # required
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListDictionariesResponse]
    def list_dictionaries(params = {}, options = {})
      request = build_request(:list_dictionaries, params)
      request.send_request(options)
    end

    # <p>Displays a list of feeds that belong to this AWS account.</p>
    # @param [Hash, Types::ListFeedsRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per API request.</p> <p>For example, you submit a list request with MaxResults set at 5. Although 20 items match your request, the service returns no more than the first 5 items. (The service also returns a NextToken value that you can use to fetch the next batch of results.) </p> <p>The service might return fewer results than the MaxResults value. If MaxResults is not included in the request, the service defaults to pagination with a maximum of 10 results per page. </p> <p>Valid Range: Minimum value of 1. Maximum value of 1000.</p>
    # @option params [String] :next_token
    #   <p>The token that identifies the batch of results that you want to see.</p> <p>For example, you submit a ListFeeds request with MaxResults set at 5. The service returns the first batch of results (up to 5) and a NextToken value. To see the next batch of results, you can submit the ListFeeds request a second time and specify the NextToken value. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_feeds(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     feeds: [ # required
    #       {
    #         arn: "FeedArn", # required
    #         id: "FeedId", # required
    #         name: "ResourceName", # required
    #         association: {
    #           associated_resource_name: "AssociatedResourceName", # required
    #         },
    #         status: "CREATING" # One of: ["CREATING", "AVAILABLE", "ACTIVE", "UPDATING", "DELETING", "DELETED", "ARCHIVED"], # required
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListFeedsResponse]
    def list_feeds(params = {}, options = {})
      request = build_request(:list_feeds, params)
      request.send_request(options)
    end

    # <p>List all tags that are on an Elemental Inference resource in the current region.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource whose tags you want to query.</p>
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
    # @return [Types::ListTagsForResourceResponse]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Attaches or replaces a resource-based policy on the specified feed. A resource-based policy grants cross-account access to the feed. </p>
    # @param [Hash, Types::PutFeedPolicyRequest] params
    # @option params [String] :id
    #   <p>The ID of the feed to attach the policy to.</p>
    # @option params [String] :policy
    #   <p>The resource-based policy document to attach to the feed.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "FeedId", # required
    #     policy: "PolicyDocument", # required
    #   }
    #   options = {}
    #   response = client.put_feed_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::PutFeedPolicyResponse]
    def put_feed_policy(params = {}, options = {})
      request = build_request(:put_feed_policy, params)
      request.send_request(options)
    end

    # <p>Searches for the fixtures (sports events, such as a specific basketball game) that are available for a sport in a date window. Each fixture in the response includes a fixtureId that you specify in the clipping output of a feed, so that Elemental Inference maps the event data for that fixture onto the clipping metadata. This operation is paginated: if there are more fixtures than fit in one page, the response includes a nextToken that you pass in a subsequent request. </p>
    # @param [Hash, Types::SearchFixturesRequest] params
    # @option params [String] :sport
    #   <p>The sport to search for fixtures. Valid values: basketball (search for basketball fixtures), american-football (search for american-football fixtures). </p>
    # @option params [String] :start_date
    #   <p>The first day of the search window, in UTC. The search includes fixtures that are scheduled on this day. </p> <p>Specify the date in ISO 8601 format, as <code>YYYY-MM-DD</code>. For example, 2026-03-14. </p>
    # @option params [String] :end_date
    #   <p>The last day of the search window, in UTC. The search includes fixtures that are scheduled on this day. Specify the date in ISO 8601 format, as <code>YYYY-MM-DD</code>. </p> <p>If you omit this parameter, Elemental Inference searches only the day that you specified in startDate. The window from startDate through endDate must not exceed seven days. </p>
    # @option params [Array<Types::SearchFilter>] :filters
    #   <p>An array of filters that narrow the results. Each filter applies to one dimension of a fixture, such as the competitor. You can specify up to 10 filters. </p> <p>A fixture must satisfy every filter in the array in order to appear in the results. Within one filter, a fixture must match at least one of the values. </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of fixtures to return for each API request.</p> <p>The service might return fewer fixtures than the maxResults value. When more fixtures match the search, the response also includes a nextToken value that you can use to fetch the next batch of results. </p>
    # @option params [String] :next_token
    #   <p>The token that identifies the batch of results that you want to see.</p> <p>For example, you submit a SearchFixtures request with maxResults set at 5. The service returns the first batch of results (up to 5) and a nextToken value. To see the next batch of results, you submit the SearchFixtures request a second time, with the same search criteria, and specify the nextToken value. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     sport: "basketball" # One of: ["basketball", "american-football"], # required
    #     start_date: "FixtureDate", # required
    #     end_date: "FixtureDate",
    #     filters: [
    #       {
    #         name: "COMPETITOR" # One of: ["COMPETITOR"], # required
    #         values: ["FilterValue"], # required
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.search_fixtures(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     fixtures: [ # required
    #       {
    #         fixture_id: "FixtureId", # required
    #         name: "String", # required
    #         fixture_group: "String",
    #         scheduled_start: Time.now,
    #         status: "String", # required
    #         competitors: [ # required
    #           {
    #             name: "String",
    #             is_home: false
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::SearchFixturesResponse]
    def search_fixtures(params = {}, options = {})
      request = build_request(:search_fixtures, params)
      request.send_request(options)
    end

    # <p>Associates the specified tags to the resource identified by the specified resourceArn in the current region. If existing tags on a resource are not specified in the request parameters, they are not changed. When a resource is deleted, the tags associated with that resource are also deleted. </p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource where you want to add tags.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A list of tags to add to the resource.</p>
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
    # @return [Smithy::Schema::EmptyStructure]
    def tag_resource(params = {}, options = {})
      request = build_request(:tag_resource, params)
      request.send_request(options)
    end

    # <p>Deletes specified tags from the specified resource in the current region.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource where you want to delete one or more tags.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The keys of the tags to delete.</p>
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
    # @return [Smithy::Schema::EmptyStructure]
    def untag_resource(params = {}, options = {})
      request = build_request(:untag_resource, params)
      request.send_request(options)
    end

    # <p>Updates the specified dictionary.</p>
    # @param [Hash, Types::UpdateDictionaryRequest] params
    # @option params [String] :id
    #   <p>The ID of the dictionary to update.</p>
    # @option params [String] :name
    #   <p>A new name for the dictionary. If not specified, the name is not changed.</p>
    # @option params [String] :language
    #   <p>A new language for the dictionary. If not specified, the language is not changed.</p>
    # @option params [String] :entries
    #   <p>New dictionary entries. If not specified, the entries are not changed.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "DictionaryId", # required
    #     name: "ResourceName",
    #     language: "eng" # One of: ["eng", "fra", "ita", "deu", "spa", "por"],
    #     entries: "DictionaryEntriesPayload"
    #   }
    #   options = {}
    #   response = client.update_dictionary(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "ResourceName", # required
    #     arn: "DictionaryArn", # required
    #     id: "DictionaryId", # required
    #     language: "eng" # One of: ["eng", "fra", "ita", "deu", "spa", "por"], # required
    #     status: "CREATING" # One of: ["CREATING", "AVAILABLE", "REFERENCED", "DELETING", "DELETED"], # required
    #     references: ["FeedId"],
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::UpdateDictionaryResponse]
    def update_dictionary(params = {}, options = {})
      request = build_request(:update_dictionary, params)
      request.send_request(options)
    end

    # <p>Updates the name and/or outputs in a feed. </p> <p>UpdateFeed is a PUT operation, which means that the payload that you specify completely overwrites the existing payload. </p> <p>This means that if you want to touch the array of outputs, you must pass in the full new list. So you must omit outputs you want to delete, and include outputs you want to add or modify. </p> <p>If you want to patch the array of outputs to make selective additions, use AssociateFeed. </p>
    # @param [Hash, Types::UpdateFeedRequest] params
    # @option params [String] :name
    #   <p>Required. You can specify the existing name (to leave it unchanged) or a new name. </p>
    # @option params [String] :access_role_arn
    #   <p>The ARN of an IAM role that Elemental Inference assumes to access resources in your account on your behalf. You can specify the existing role (to leave it unchanged) or a new role. You specify one access role for each feed. </p>
    # @option params [String] :id
    #   <p>The ID of the feed to update.</p>
    # @option params [Array<Types::UpdateOutput>] :outputs
    #   <p>Required. You can specify the existing array of outputs (to leave outputs unchanged) or you can specify a new array. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ResourceName", # required
    #     access_role_arn: "IamRoleArn",
    #     id: "FeedId", # required
    #     outputs: [ # required
    #       {
    #         name: "ResourceName", # required
    #         output_config: { # required
    #           # One of:
    #           cropping: {
    #             template_groups: [
    #               {
    #                 name: "ResourceName", # required
    #                 template_uris: ["S3Uri"], # required
    #               }
    #             ]
    #           },
    #           clipping: {
    #             callback_metadata: "ResourceDescription",
    #             data_source_configuration: {
    #               fixture_id: "FixtureId", # required
    #             }
    #           },
    #           subtitling: {
    #             language: "eng" # One of: ["eng", "eng-au", "eng-gb", "eng-us", "fra", "ita", "deu", "spa", "por"], # required
    #             aspect_ratio: {
    #               width: 1, # required
    #               height: 1, # required
    #             },
    #             dictionary: "DictionaryId",
    #             profanity_filter: "DISABLED" # One of: ["DISABLED", "CENSOR", "DROP"]
    #           },
    #           contextual_metadata: {
    #             summary_generation: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #             extended_analysis: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #           }
    #         },
    #         status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #         description: "ResourceDescription",
    #         from_association: false
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_feed(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "FeedArn", # required
    #     name: "ResourceName", # required
    #     id: "FeedId", # required
    #     data_endpoints: ["String"], # required
    #     outputs: [ # required
    #       {
    #         name: "ResourceName", # required
    #         output_config: { # required
    #           # One of:
    #           cropping: {
    #             template_groups: [
    #               {
    #                 name: "ResourceName", # required
    #                 template_uris: ["S3Uri"], # required
    #               }
    #             ]
    #           },
    #           clipping: {
    #             callback_metadata: "ResourceDescription",
    #             data_source_configuration: {
    #               fixture_id: "FixtureId", # required
    #             }
    #           },
    #           subtitling: {
    #             language: "eng" # One of: ["eng", "eng-au", "eng-gb", "eng-us", "fra", "ita", "deu", "spa", "por"], # required
    #             aspect_ratio: {
    #               width: 1, # required
    #               height: 1, # required
    #             },
    #             dictionary: "DictionaryId",
    #             profanity_filter: "DISABLED" # One of: ["DISABLED", "CENSOR", "DROP"]
    #           },
    #           contextual_metadata: {
    #             summary_generation: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #             extended_analysis: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #           }
    #         },
    #         status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #         description: "ResourceDescription",
    #         from_association: false
    #       }
    #     ],
    #     access_role_arn: "IamRoleArn",
    #     status: "CREATING" # One of: ["CREATING", "AVAILABLE", "ACTIVE", "UPDATING", "DELETING", "DELETED", "ARCHIVED"], # required
    #     association: {
    #       associated_resource_name: "AssociatedResourceName", # required
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::UpdateFeedResponse]
    def update_feed(params = {}, options = {})
      request = build_request(:update_feed, params)
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
      context[:gem_name] = 'aws-sdk-elementalinference'
      context[:gem_version] = '2.0.0.pre0'
      Smithy::Client::Request.new(handlers: handlers, context: context)
    end

    private

    def waiters
      {
        feed_deleted: Waiters::FeedDeleted
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

      # @api private
      def protocols
        {
          rest_json: Aws::Core::RestJson
        }
      end
    end
  end
end
