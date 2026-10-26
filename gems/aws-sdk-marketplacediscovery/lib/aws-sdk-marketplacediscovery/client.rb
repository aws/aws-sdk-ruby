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

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:marketplacediscovery)

module Aws::MarketplaceDiscovery
  # An API client for Aws::MarketplaceDiscovery.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AWSMarketplaceDiscovery
    @identifier = :marketplacediscovery

    add_plugin(::Aws::MarketplaceDiscovery::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::MarketplaceDiscovery::EndpointProvider)
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

    # <p>Provides details about a listing, such as descriptions, badges, categories, pricing model summaries, reviews, and associated products and offers.</p>
    # @param [Hash, Types::GetListingInput] params
    # @option params [String] :locale
    #   <p>A BCP 47 language tag or comma-separated priority list specifying the preferred locale for response content. See <code>Locale</code> for supported values, constraints, fallback behavior, and the default locale. If omitted, the service returns content in the default locale.</p>
    # @option params [String] :listing_id
    #   <p>The unique identifier of the listing to retrieve.</p>
    # @example GetListing for SaaS listing
    #   # Example operation for get_listing
    #   params = {
    #     locale: "en-US",
    #     listing_id: "prodview-sampleSaasId"
    #   }
    #   options = {}
    #   response = client.get_listing(params, options)
    #   response.to_h #=>
    #   {
    #     locale: "en-US",
    #     listing_id: "prodview-sampleSaasId",
    #     catalog: "AWSMarketplace",
    #     listing_name: "sample SaaS listing",
    #     logo_thumbnail_url: "https://example.com/logos/sample-saas-logo.png",
    #     short_description: "A sample SaaS product for cloud development environments.",
    #     long_description: "A sample SaaS product that provides automated, ready-to-code development environments in the cloud.",
    #     publisher: {
    #       seller_profile_id: "seller-sampleSaasId",
    #       display_name: "sample SaaS seller"
    #     },
    #     badges: [
    #     ],
    #     categories: [
    #       {
    #         category_id: "developer-tools",
    #         display_name: "Developer Tools"
    #       },
    #       {
    #         category_id: "ide",
    #         display_name: "IDE"
    #       }
    #     ],
    #     highlights: [
    #       "Automated dev environments",
    #       "Works with any Git repository",
    #       "Secure and compliant"
    #     ],
    #     promotional_media: [
    #       {
    #     "embeddedImage" => {
    #       "title" => Sample Dashboard,
    #       "url" => https://example.com/screenshots/sample-dashboard.png,
    #       "description" => The sample product workspace dashboard
    #     }
    #   }
    #     ],
    #     resources: [
    #       {
    #         resource_type: MANUFACTURER_INSTRUCTIONS,
    #         content_type: LINK,
    #         value: "https://example.com/demo",
    #         display_name: "Request a Demo"
    #       }
    #     ],
    #     associated_entities: [
    #       {
    #         product: {
    #           product_id: "prod-sampleSaasId",
    #           product_name: "sample SaaS product",
    #           manufacturer: {
    #             seller_profile_id: "seller-sampleSaasId",
    #             display_name: "sample SaaS seller"
    #           }
    #         }
    #       }
    #     ],
    #     review_summary: {
    #       review_source_summaries: [
    #         {
    #           source_name: "AWS Marketplace",
    #           source_id: AWS_MARKETPLACE,
    #           source_url: "https://aws.amazon.com/marketplace/reviews/prodview-sampleSaasId",
    #           average_rating: "4.5",
    #           total_reviews: 128
    #         }
    #       ]
    #     },
    #     pricing_models: [
    #       {
    #         pricing_model_type: CONTRACT,
    #         display_name: "Contract"
    #       }
    #     ],
    #     pricing_units: [
    #       {
    #         pricing_unit_type: USERS,
    #         display_name: "Users"
    #       }
    #     ],
    #     fulfillment_option_summaries: [
    #       {
    #         display_name: "SaaS",
    #         fulfillment_option_type: SAAS
    #       }
    #     ],
    #     seller_engagements: [
    #       {
    #         content_type: LINK,
    #         engagement_type: REQUEST_FOR_DEMO,
    #         value: "https://aws.amazon.com/marketplace/customer-connect/demo/prodview-sampleSaasId"
    #       },
    #       {
    #         content_type: LINK,
    #         engagement_type: REQUEST_FOR_PRIVATE_OFFER,
    #         value: "https://aws.amazon.com/marketplace/customer-connect/private-offer/prodview-sampleSaasId"
    #       }
    #     ],
    #     use_cases: [
    #       {
    #         use_case: {
    #           display_name: "Contextual Analysis",
    #           value: "CONTEXTUAL_ANALYSIS",
    #           description: "Advanced contextual analysis for targeted advertising campaigns"
    #         }
    #       }
    #     ]
    #   }
    # @example GetListing for AMI listing with video
    #   # Example operation for get_listing
    #   params = {
    #     locale: "en-US",
    #     listing_id: "prodview-sampleAmiId"
    #   }
    #   options = {}
    #   response = client.get_listing(params, options)
    #   response.to_h #=>
    #   {
    #     locale: "en-US",
    #     listing_id: "prodview-sampleAmiId",
    #     catalog: "AWSMarketplace",
    #     listing_name: "sample AMI listing",
    #     logo_thumbnail_url: "https://example.com/logos/sample-ami-logo.png",
    #     short_description: "A sample high-performance load balancer and web server.",
    #     long_description: "A sample AMI product that provides load balancing, content caching, and API gateway capabilities optimized for cloud-native architectures.",
    #     publisher: {
    #       seller_profile_id: "seller-sampleAmiId",
    #       display_name: "sample AMI seller"
    #     },
    #     badges: [
    #       {
    #         display_name: "Deployed on AWS",
    #         badge_type: DEPLOYED_ON_AWS
    #       },
    #       {
    #         display_name: "Quick Launch",
    #         badge_type: QUICK_LAUNCH
    #       }
    #     ],
    #     categories: [
    #       {
    #         category_id: "infrastructure",
    #         display_name: "Infrastructure Software"
    #       },
    #       {
    #         category_id: "load-balancing",
    #         display_name: "Load Balancing"
    #       }
    #     ],
    #     highlights: [
    #       "Advanced load balancing",
    #       "API gateway capabilities",
    #       "High availability",
    #       "Real-time monitoring"
    #     ],
    #     promotional_media: [
    #       {
    #     "embeddedVideo" => {
    #       "title" => Sample AMI Product Overview,
    #       "url" => https://example.com/videos/sample-overview.mp4,
    #       "preview" => https://example.com/videos/sample-cover.png,
    #       "thumbnail" => https://example.com/videos/sample-thumb.png,
    #       "description" => Learn about sample AMI product features
    #     }
    #   }
    #     ],
    #     resources: [
    #       {
    #         resource_type: MANUFACTURER_INSTRUCTIONS,
    #         content_type: LINK,
    #         value: "https://example.com/request-demo",
    #         display_name: "Request Demo"
    #       },
    #       {
    #         resource_type: MANUFACTURER_SUPPORT,
    #         content_type: LINK,
    #         value: "https://example.com/docs",
    #         display_name: "Documentation"
    #       }
    #     ],
    #     associated_entities: [
    #       {
    #         product: {
    #           product_id: "prod-sampleAmiId",
    #           product_name: "sample AMI product",
    #           manufacturer: {
    #             seller_profile_id: "seller-sampleAmiId",
    #             display_name: "sample AMI seller"
    #           }
    #         },
    #         offer: {
    #           offer_id: "offer-sampleAmiId",
    #           offer_name: "sample AMI offer",
    #           seller_of_record: {
    #             seller_profile_id: "seller-sampleAmiId",
    #             display_name: "sample AMI seller"
    #           }
    #         }
    #       }
    #     ],
    #     review_summary: {
    #       review_source_summaries: [
    #         {
    #           source_name: "AWS Marketplace",
    #           source_id: AWS_MARKETPLACE,
    #           source_url: "https://aws.amazon.com/marketplace/reviews/prodview-sampleAmiId",
    #           average_rating: "4.8",
    #           total_reviews: 542
    #         }
    #       ]
    #     },
    #     pricing_models: [
    #       {
    #         pricing_model_type: USAGE,
    #         display_name: "Usage"
    #       }
    #     ],
    #     pricing_units: [
    #       {
    #         pricing_unit_type: HOSTS,
    #         display_name: "Hosts"
    #       }
    #     ],
    #     fulfillment_option_summaries: [
    #       {
    #         display_name: "SaaS",
    #         fulfillment_option_type: SAAS
    #       }
    #     ],
    #     seller_engagements: [
    #       {
    #         content_type: LINK,
    #         engagement_type: REQUEST_FOR_DEMO,
    #         value: "https://aws.amazon.com/marketplace/customer-connect/demo/prodview-sampleAmiId"
    #       },
    #       {
    #         content_type: LINK,
    #         engagement_type: REQUEST_FOR_PRIVATE_OFFER,
    #         value: "https://aws.amazon.com/marketplace/customer-connect/private-offer/prodview-sampleAmiId"
    #       }
    #     ],
    #     use_cases: [
    #       {
    #         use_case: {
    #           display_name: "Contextual Analysis",
    #           value: "CONTEXTUAL_ANALYSIS",
    #           description: "Advanced contextual analysis for targeted advertising campaigns"
    #         }
    #       }
    #     ]
    #   }
    # @example GetListing for multi-product listing
    #   # Example operation for get_listing
    #   params = {
    #     locale: "en-US",
    #     listing_id: "prodview-sampleMultiProductId"
    #   }
    #   options = {}
    #   response = client.get_listing(params, options)
    #   response.to_h #=>
    #   {
    #     locale: "en-US",
    #     listing_id: "prodview-sampleMultiProductId",
    #     catalog: "AWSMarketplace",
    #     listing_name: "sample multi-product listing",
    #     logo_thumbnail_url: "https://example.com/logos/sample-multi-product-logo.png",
    #     short_description: "A sample multi-product listing that delivers a unified experience with AI.",
    #     long_description: "A sample multi-product listing that connects content management with a unified AI platform. Users can securely search, analyze, and extract valuable insights from their files.",
    #     publisher: {
    #       seller_profile_id: "seller-sampleMultiProductId",
    #       display_name: "sample multi-product seller"
    #     },
    #     badges: [
    #       {
    #         display_name: "Deployed on AWS",
    #         badge_type: DEPLOYED_ON_AWS
    #       },
    #       {
    #         display_name: "Multi-product",
    #         badge_type: MULTI_PRODUCT
    #       }
    #     ],
    #     categories: [
    #     ],
    #     highlights: [
    #     ],
    #     resources: [
    #       {
    #         resource_type: MANUFACTURER_INSTRUCTIONS,
    #         content_type: LINK,
    #         value: "https://developer.box.com/guides/box-mcp/remote/#amazon-quick-suite",
    #         display_name: "Developer Documentation"
    #       }
    #     ],
    #     promotional_media: [
    #     ],
    #     associated_entities: [
    #       {
    #         product: {
    #           product_id: "prod-sampleMultiProduct1Id",
    #           product_name: "sample multi-product 1",
    #           manufacturer: {
    #             seller_profile_id: "seller-sampleMultiProductId",
    #             display_name: "sample multi-product seller"
    #           }
    #         }
    #       },
    #       {
    #         product: {
    #           product_id: "prod-sampleMultiProduct2Id",
    #           product_name: "sample multi-product 2",
    #           manufacturer: {
    #             seller_profile_id: "seller-sampleMultiProduct2Id",
    #             display_name: "sample multi-product seller 2"
    #           }
    #         }
    #       }
    #     ],
    #     use_cases: [
    #       {
    #         use_case: {
    #           display_name: "Content Management System",
    #           value: "content_management_system",
    #           description: "This integration allows enterprises to securely access and interact with content in Box directly from the Amazon Quick Suite chat experience."
    #         }
    #       },
    #       {
    #         use_case: {
    #           display_name: "Intelligent Document Processing",
    #           value: "intelligent_document_processing",
    #           description: "Build automated workflows and design custom AI agents for context-aware document processing."
    #         }
    #       }
    #     ],
    #     integration_guide: "To add the remote Box MCP server in Amazon Quick Suite, follow these steps: In the Amazon Quick Suite console, choose Integrations and create new integration by choosing Model Content Protocol.",
    #     review_summary: {
    #       review_source_summaries: [
    #       ]
    #     },
    #     pricing_models: [
    #       {
    #         pricing_model_type: FREE,
    #         display_name: "Free"
    #       }
    #     ],
    #     pricing_units: [
    #     ],
    #     fulfillment_option_summaries: [
    #       {
    #         display_name: "SaaS",
    #         fulfillment_option_type: SAAS
    #       }
    #     ],
    #     seller_engagements: [
    #       {
    #         content_type: LINK,
    #         engagement_type: REQUEST_FOR_DEMO,
    #         value: "https://aws.amazon.com/marketplace/customer-connect/demo/prodview-sampleMultiProductId"
    #       },
    #       {
    #         content_type: LINK,
    #         engagement_type: REQUEST_FOR_PRIVATE_OFFER,
    #         value: "https://aws.amazon.com/marketplace/customer-connect/private-offer/prodview-sampleMultiProductId"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     locale: "Locale",
    #     listing_id: "ListingId", # required
    #   }
    #   options = {}
    #   response = client.get_listing(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     locale: "Locale",
    #     associated_entities: [ # required
    #       {
    #         product: {
    #           product_id: "ProductId", # required
    #           product_name: "NonEmptyString", # required
    #           manufacturer: { # required
    #             seller_profile_id: "SellerProfileId", # required
    #             display_name: "NonEmptyString", # required
    #           }
    #         },
    #         offer: {
    #           offer_id: "OfferId", # required
    #           offer_name: "NullableString",
    #           seller_of_record: { # required
    #             seller_profile_id: "SellerProfileId", # required
    #             display_name: "NonEmptyString", # required
    #           }
    #         }
    #       }
    #     ],
    #     badges: [ # required
    #       {
    #         display_name: "NonEmptyString", # required
    #         badge_type: "AWS_FREE_TIER" # One of: ["AWS_FREE_TIER", "FREE_TRIAL", "DEPLOYED_ON_AWS", "QUICK_LAUNCH", "MULTI_PRODUCT"], # required
    #       }
    #     ],
    #     catalog: "Catalog", # required
    #     categories: [ # required
    #       {
    #         category_id: "NonEmptyString", # required
    #         display_name: "NonEmptyString", # required
    #       }
    #     ],
    #     fulfillment_option_summaries: [ # required
    #       {
    #         fulfillment_option_type: "AMAZON_MACHINE_IMAGE" # One of: ["AMAZON_MACHINE_IMAGE", "API", "CLOUDFORMATION_TEMPLATE", "CONTAINER", "HELM", "EKS_ADD_ON", "EC2_IMAGE_BUILDER_COMPONENT", "DATA_EXCHANGE", "PROFESSIONAL_SERVICES", "SAAS", "SAGEMAKER_ALGORITHM", "SAGEMAKER_MODEL"], # required
    #         display_name: "NonEmptyString", # required
    #       }
    #     ],
    #     highlights: ["NonEmptyString"], # required
    #     integration_guide: "NullableString",
    #     listing_id: "ListingId", # required
    #     listing_name: "NonEmptyString", # required
    #     logo_thumbnail_url: "URL", # required
    #     long_description: "NonEmptyString", # required
    #     pricing_models: [ # required
    #       {
    #         pricing_model_type: "USAGE" # One of: ["USAGE", "CONTRACT", "BYOL", "FREE"], # required
    #         display_name: "NonEmptyString", # required
    #       }
    #     ],
    #     pricing_units: [ # required
    #       {
    #         pricing_unit_type: "USERS" # One of: ["USERS", "HOSTS", "BANDWIDTH", "DATA", "TIERS", "REQUESTS", "UNITS"], # required
    #         display_name: "NonEmptyString", # required
    #       }
    #     ],
    #     promotional_media: [{ # required
    #       # One of:
    #       embedded_image: {
    #         title: "NonEmptyString", # required
    #         url: "URL", # required
    #         description: "NullableString"
    #       },
    #       embedded_video: {
    #         title: "NonEmptyString", # required
    #         url: "URL", # required
    #         preview: "URL", # required
    #         thumbnail: "URL", # required
    #         description: "NullableString"
    #       }
    #     }],
    #     publisher: { # required
    #       seller_profile_id: "SellerProfileId", # required
    #       display_name: "NonEmptyString", # required
    #     },
    #     resources: [ # required
    #       {
    #         resource_type: "MANUFACTURER_SUPPORT" # One of: ["MANUFACTURER_SUPPORT", "MANUFACTURER_INSTRUCTIONS"], # required
    #         content_type: "EMAIL" # One of: ["EMAIL", "PHONE_NUMBER", "LINK", "OTHER"], # required
    #         value: "NonEmptyString", # required
    #         display_name: "NullableString"
    #       }
    #     ],
    #     review_summary: {
    #       review_source_summaries: [ # required
    #         {
    #           source_name: "NonEmptyString", # required
    #           source_id: "AWS_MARKETPLACE" # One of: ["AWS_MARKETPLACE"], # required
    #           source_url: "URL",
    #           average_rating: "NonEmptyString", # required
    #           total_reviews: 1, # required
    #         }
    #       ]
    #     },
    #     seller_engagements: [ # required
    #       {
    #         engagement_type: "REQUEST_FOR_PRIVATE_OFFER" # One of: ["REQUEST_FOR_PRIVATE_OFFER", "REQUEST_FOR_DEMO"], # required
    #         content_type: "LINK" # One of: ["LINK"], # required
    #         value: "NonEmptyString", # required
    #       }
    #     ],
    #     short_description: "NonEmptyString", # required
    #     use_cases: [ # required
    #       {
    #         use_case: { # required
    #           description: "NonEmptyString", # required
    #           display_name: "NonEmptyString", # required
    #           value: "NonEmptyString", # required
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::GetListingOutput]
    def get_listing(params = {}, options = {})
      request = build_request(:get_listing, params)
      request.send_request(options)
    end

    # <p>Provides details about an offer, such as the pricing model, seller of record, availability dates, badges, and associated products.</p>
    # @param [Hash, Types::GetOfferInput] params
    # @option params [String] :locale
    #   <p>A BCP 47 language tag or comma-separated priority list specifying the preferred locale for response content. See <code>Locale</code> for supported values, constraints, fallback behavior, and the default locale. If omitted, the service returns content in the default locale.</p>
    # @option params [String] :offer_id
    #   <p>The unique identifier of the offer to retrieve.</p>
    # @example Invoke GetOffer for Contract Pricing offer
    #   # Example operation for get_offer
    #   params = {
    #     locale: "en-US",
    #     offer_id: "offer-sampleContractId"
    #   }
    #   options = {}
    #   response = client.get_offer(params, options)
    #   response.to_h #=>
    #   {
    #     locale: "en-US",
    #     offer_id: "offer-sampleContractId",
    #     catalog: "AWSMarketplace",
    #     offer_name: "sample contract offer",
    #     agreement_proposal_id: "at-sampleToken",
    #     available_from_time: Time.parse("2023-01-01T00:00:00.000Z"),
    #     expiration_time: Time.parse("2023-10-08T21:40:43.644Z"),
    #     seller_of_record: {
    #       seller_profile_id: "seller-sampleContractId",
    #       display_name: "sample contract seller"
    #     },
    #     replacement_agreement_id: "agmt-sampleId",
    #     pricing_model: {
    #       pricing_model_type: CONTRACT,
    #       display_name: "Contract"
    #     },
    #     badges: [
    #       {
    #         display_name: "Private Pricing",
    #         badge_type: PRIVATE_PRICING
    #       },
    #       {
    #         display_name: "Replacement Offer",
    #         badge_type: REPLACEMENT_OFFER
    #       }
    #     ],
    #     associated_entities: [
    #       {
    #         product: {
    #           product_id: "prod-sampleContractId",
    #           product_name: "sample contract product",
    #           manufacturer: {
    #             seller_profile_id: "seller-sampleContractId",
    #             display_name: "sample contract seller"
    #           }
    #         },
    #         offer_set: {
    #           offer_set_id: "offerset-sampleId",
    #           seller_of_record: {
    #             seller_profile_id: "seller-sampleContractId",
    #             display_name: "sample contract seller"
    #           }
    #         }
    #       }
    #     ]
    #   }
    # @example Invoke GetOffer for Usage Pricing offer
    #   # Example operation for get_offer
    #   params = {
    #     locale: "en-US",
    #     offer_id: "offer-sampleUsageId"
    #   }
    #   options = {}
    #   response = client.get_offer(params, options)
    #   response.to_h #=>
    #   {
    #     locale: "en-US",
    #     offer_id: "offer-sampleUsageId",
    #     catalog: "AWSMarketplace",
    #     offer_name: "sample usage offer",
    #     agreement_proposal_id: "at-sampleToken",
    #     expiration_time: Time.parse("2022-03-29T23:59:59.999Z"),
    #     seller_of_record: {
    #       seller_profile_id: "seller-sampleUsageId",
    #       display_name: "sample usage seller"
    #     },
    #     replacement_agreement_id: "agmt-sampleId",
    #     pricing_model: {
    #       pricing_model_type: USAGE,
    #       display_name: "Usage"
    #     },
    #     badges: [
    #       {
    #         display_name: "Future Dated",
    #         badge_type: FUTURE_DATED
    #       }
    #     ],
    #     associated_entities: [
    #       {
    #         product: {
    #           product_id: "prod-sampleUsageId",
    #           product_name: "sample usage product",
    #           manufacturer: {
    #             seller_profile_id: "seller-sampleUsageId",
    #             display_name: "sample usage seller"
    #           }
    #         }
    #       }
    #     ]
    #   }
    # @example Invoke GetOffer for BYOL Pricing offer
    #   # Example operation for get_offer
    #   params = {
    #     locale: "en-US",
    #     offer_id: "offer-sampleByolId"
    #   }
    #   options = {}
    #   response = client.get_offer(params, options)
    #   response.to_h #=>
    #   {
    #     locale: "en-US",
    #     offer_id: "offer-sampleByolId",
    #     catalog: "AWSMarketplace",
    #     offer_name: "sample BYOL offer",
    #     agreement_proposal_id: "at-sampleToken",
    #     expiration_time: Time.parse("2022-03-29T23:59:59.999Z"),
    #     seller_of_record: {
    #       seller_profile_id: "seller-sampleByolId",
    #       display_name: "sample BYOL seller"
    #     },
    #     replacement_agreement_id: "agmt-sampleId",
    #     pricing_model: {
    #       pricing_model_type: BYOL,
    #       display_name: "Bring Your Own License"
    #     },
    #     badges: [
    #     ],
    #     associated_entities: [
    #       {
    #         product: {
    #           product_id: "prod-sampleByolId",
    #           product_name: "sample BYOL product",
    #           manufacturer: {
    #             seller_profile_id: "seller-sampleByolId",
    #             display_name: "sample BYOL seller"
    #           }
    #         }
    #       }
    #     ]
    #   }
    # @example Invoke GetOffer for FREE Pricing offer
    #   # Example operation for get_offer
    #   params = {
    #     locale: "en-US",
    #     offer_id: "offer-sampleFreeId"
    #   }
    #   options = {}
    #   response = client.get_offer(params, options)
    #   response.to_h #=>
    #   {
    #     locale: "en-US",
    #     offer_id: "offer-sampleFreeId",
    #     catalog: "AWSMarketplace",
    #     offer_name: "sample free offer",
    #     agreement_proposal_id: "at-sampleToken",
    #     expiration_time: Time.parse("2022-03-29T23:59:59.999Z"),
    #     seller_of_record: {
    #       seller_profile_id: "seller-sampleFreeId",
    #       display_name: "sample free seller"
    #     },
    #     replacement_agreement_id: "agmt-sampleId",
    #     pricing_model: {
    #       pricing_model_type: FREE,
    #       display_name: "Free"
    #     },
    #     badges: [
    #     ],
    #     associated_entities: [
    #       {
    #         product: {
    #           product_id: "prod-sampleFreeId",
    #           product_name: "sample free product",
    #           manufacturer: {
    #             seller_profile_id: "seller-sampleFreeId",
    #             display_name: "sample free seller"
    #           }
    #         }
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     locale: "Locale",
    #     offer_id: "OfferId", # required
    #   }
    #   options = {}
    #   response = client.get_offer(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     locale: "Locale",
    #     offer_id: "OfferId", # required
    #     catalog: "Catalog", # required
    #     offer_name: "NullableString",
    #     expiration_time: Time.now,
    #     available_from_time: Time.now,
    #     seller_of_record: { # required
    #       seller_profile_id: "SellerProfileId", # required
    #       display_name: "NonEmptyString", # required
    #     },
    #     associated_entities: [ # required
    #       {
    #         product: { # required
    #           product_id: "ProductId", # required
    #           product_name: "NonEmptyString", # required
    #           manufacturer: { # required
    #             seller_profile_id: "SellerProfileId", # required
    #             display_name: "NonEmptyString", # required
    #           }
    #         },
    #         offer_set: {
    #           offer_set_id: "OfferSetId", # required
    #           seller_of_record: { # required
    #             seller_profile_id: "SellerProfileId", # required
    #             display_name: "NonEmptyString", # required
    #           }
    #         }
    #       }
    #     ],
    #     agreement_proposal_id: "AgreementResourceId", # required
    #     replacement_agreement_id: "AgreementResourceId",
    #     pricing_model: { # required
    #       pricing_model_type: "USAGE" # One of: ["USAGE", "CONTRACT", "BYOL", "FREE"], # required
    #       display_name: "NonEmptyString", # required
    #     },
    #     badges: [ # required
    #       {
    #         display_name: "NonEmptyString", # required
    #         badge_type: "PRIVATE_PRICING" # One of: ["PRIVATE_PRICING", "FUTURE_DATED", "REPLACEMENT_OFFER", "AUTO_RENEW"], # required
    #       }
    #     ]
    #   }
    # @return [Types::GetOfferOutput]
    def get_offer(params = {}, options = {})
      request = build_request(:get_offer, params)
      request.send_request(options)
    end

    # <p>Provides details about an offer set, which is a bundle of offers across multiple products. Includes the seller, availability dates, buyer notes, and associated product-offer pairs.</p>
    # @param [Hash, Types::GetOfferSetInput] params
    # @option params [String] :locale
    #   <p>A BCP 47 language tag or comma-separated priority list specifying the preferred locale for response content. See <code>Locale</code> for supported values, constraints, fallback behavior, and the default locale. If omitted, the service returns content in the default locale.</p>
    # @option params [String] :offer_set_id
    #   <p>The unique identifier of the offer set to retrieve.</p>
    # @example Get offer set with multiple products
    #   # Example operation for get_offer_set
    #   params = {
    #     locale: "en-US",
    #     offer_set_id: "offerset-sampleId"
    #   }
    #   options = {}
    #   response = client.get_offer_set(params, options)
    #   response.to_h #=>
    #   {
    #     locale: "en-US",
    #     catalog: "AWSMarketplace",
    #     offer_set_id: "offerset-sampleId",
    #     offer_set_name: "sample offer set",
    #     available_from_time: Time.parse("2024-03-20T00:00:00.000Z"),
    #     expiration_time: Time.parse("2025-03-20T00:00:00.000Z"),
    #     buyer_notes: "This bundle includes CrowdStrike Falcon and Splunk Enterprise for comprehensive security monitoring.",
    #     seller_of_record: {
    #       seller_profile_id: "seller-sampleResellerId",
    #       display_name: "sample reseller"
    #     },
    #     badges: [
    #       {
    #         display_name: "Private Pricing",
    #         badge_type: PRIVATE_PRICING
    #       },
    #       {
    #         display_name: "Future Dated",
    #         badge_type: FUTURE_DATED
    #       },
    #       {
    #         display_name: "Replacement Offer",
    #         badge_type: REPLACEMENT_OFFER
    #       }
    #     ],
    #     associated_entities: [
    #       {
    #         product: {
    #           product_id: "prod-sampleId1",
    #           product_name: "sample product name 1",
    #           manufacturer: {
    #             seller_profile_id: "seller-sampleId1",
    #             display_name: "sample seller name 1"
    #           }
    #         },
    #         offer: {
    #           offer_id: "offer-sampleId1",
    #           offer_name: "sample offer name 1",
    #           seller_of_record: {
    #             seller_profile_id: "seller-sampleResellerId",
    #             display_name: "sample reseller"
    #           }
    #         }
    #       },
    #       {
    #         product: {
    #           product_id: "prod-sampleId2",
    #           product_name: "sample product name 2",
    #           manufacturer: {
    #             seller_profile_id: "seller-sampleId2",
    #             display_name: "sample seller name 2"
    #           }
    #         },
    #         offer: {
    #           offer_id: "offer-sampleId2",
    #           offer_name: "sample offer name 2",
    #           seller_of_record: {
    #             seller_profile_id: "seller-sampleResellerId",
    #             display_name: "sample reseller"
    #           }
    #         }
    #       }
    #     ]
    #   }
    # @example Get offer set with only required fields
    #   # Example operation for get_offer_set
    #   params = {
    #     offer_set_id: "offerset-sampleMinimalId"
    #   }
    #   options = {}
    #   response = client.get_offer_set(params, options)
    #   response.to_h #=>
    #   {
    #     catalog: "AWSMarketplace",
    #     offer_set_id: "offerset-sampleMinimalId",
    #     seller_of_record: {
    #       seller_profile_id: "seller-sampleResellerId",
    #       display_name: "sample reseller"
    #     },
    #     badges: [
    #     ],
    #     associated_entities: [
    #       {
    #         product: {
    #           product_id: "prod-sampleMinimalId",
    #           product_name: "sample product name",
    #           manufacturer: {
    #             seller_profile_id: "seller-sampleId1",
    #             display_name: "sample seller name 1"
    #           }
    #         },
    #         offer: {
    #           offer_id: "offer-sampleMinimalId",
    #           seller_of_record: {
    #             seller_profile_id: "seller-sampleResellerId",
    #             display_name: "sample reseller"
    #           }
    #         }
    #       }
    #     ]
    #   }
    # @example Get offer set that never expires from a first-party seller
    #   # Example operation for get_offer_set
    #   params = {
    #     locale: "en-US",
    #     offer_set_id: "offerset-samplePerpetualId"
    #   }
    #   options = {}
    #   response = client.get_offer_set(params, options)
    #   response.to_h #=>
    #   {
    #     locale: "en-US",
    #     catalog: "AWSMarketplace",
    #     offer_set_id: "offerset-samplePerpetualId",
    #     offer_set_name: "sample perpetual offer set",
    #     available_from_time: Time.parse("2024-03-20T00:00:00.000Z"),
    #     buyer_notes: "This offer set does not expire. Omitting expirationTime indicates the offer set remains available for procurement indefinitely.",
    #     seller_of_record: {
    #       seller_profile_id: "seller-sampleFirstPartyId",
    #       display_name: "sample first-party seller"
    #     },
    #     badges: [
    #       {
    #         display_name: "Private Pricing",
    #         badge_type: PRIVATE_PRICING
    #       }
    #     ],
    #     associated_entities: [
    #       {
    #         product: {
    #           product_id: "prod-samplePerpetualId",
    #           product_name: "sample perpetual product",
    #           manufacturer: {
    #             seller_profile_id: "seller-sampleFirstPartyId",
    #             display_name: "sample first-party seller"
    #           }
    #         },
    #         offer: {
    #           offer_id: "offer-samplePerpetualId",
    #           offer_name: "sample perpetual offer",
    #           seller_of_record: {
    #             seller_profile_id: "seller-sampleFirstPartyId",
    #             display_name: "sample first-party seller"
    #           }
    #         }
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     locale: "Locale",
    #     offer_set_id: "OfferSetId", # required
    #   }
    #   options = {}
    #   response = client.get_offer_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     locale: "Locale",
    #     offer_set_id: "OfferSetId", # required
    #     catalog: "Catalog", # required
    #     offer_set_name: "NonEmptyString",
    #     available_from_time: Time.now,
    #     expiration_time: Time.now,
    #     buyer_notes: "NullableString",
    #     seller_of_record: { # required
    #       seller_profile_id: "SellerProfileId", # required
    #       display_name: "NonEmptyString", # required
    #     },
    #     badges: [ # required
    #       {
    #         display_name: "NonEmptyString", # required
    #         badge_type: "PRIVATE_PRICING" # One of: ["PRIVATE_PRICING", "FUTURE_DATED", "REPLACEMENT_OFFER", "AUTO_RENEW"], # required
    #       }
    #     ],
    #     associated_entities: [ # required
    #       {
    #         product: { # required
    #           product_id: "ProductId", # required
    #           product_name: "NonEmptyString", # required
    #           manufacturer: { # required
    #             seller_profile_id: "SellerProfileId", # required
    #             display_name: "NonEmptyString", # required
    #           }
    #         },
    #         offer: { # required
    #           offer_id: "OfferId", # required
    #           offer_name: "NullableString",
    #           seller_of_record: { # required
    #             seller_profile_id: "SellerProfileId", # required
    #             display_name: "NonEmptyString", # required
    #           }
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::GetOfferSetOutput]
    def get_offer_set(params = {}, options = {})
      request = build_request(:get_offer_set, params)
      request.send_request(options)
    end

    # <p>Returns the terms attached to an offer, such as pricing terms (usage-based, contract, BYOL, free trial), legal terms, payment schedules, validity terms, support terms, and renewal terms.</p>
    # @param [Hash, Types::GetOfferTermsInput] params
    # @option params [String] :locale
    #   <p>A BCP 47 language tag or comma-separated priority list specifying the preferred locale for response content. See <code>Locale</code> for supported values, constraints, fallback behavior, and the default locale. If omitted, the service returns content in the default locale.</p>
    # @option params [String] :offer_id
    #   <p>The unique identifier of the offer whose terms to retrieve.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results that are returned per call. You can use <code>nextToken</code> to get more results.</p>
    # @option params [String] :next_token
    #   <p>If <code>nextToken</code> is returned, there are more results available. Make the call again using the returned token to retrieve the next page.</p>
    # @example GetOfferTerms for Usage-based ML Model offer
    #   # Example operation for get_offer_terms
    #   params = {
    #     locale: "en-US",
    #     offer_id: "offer-sampleUsageBasedId"
    #   }
    #   options = {}
    #   response = client.get_offer_terms(params, options)
    #   response.to_h #=>
    #   {
    #     locale: "en-US",
    #     offer_terms: [
    #       {
    #     "usageBasedPricingTerm" => {
    #       "id" => term-sampleUsageBasedPricingId,
    #       "type" => UsageBasedPricingTerm,
    #       "currencyCode" => USD,
    #       "rateCards" => [{
    #         "rateCard" => [
    #           {
    #             "dimensionKey" => ml.m5.2xlarge.m.i.b,
    #             "displayName" => ml.m5.2xlarge Inference (Batch),
    #             "description" => Model inference on the ml.m5.2xlarge instance type, batch mode,
    #             "dimensionLabels" => [{
    #               "labelType" => SagemakerOption,
    #               "labelValue" => Model Batch Transform,
    #               "displayName" => Model Batch Transform
    #             }],
    #             "unit" => HostHrs,
    #             "price" => 2.00000000
    #           },
    #           {
    #             "dimensionKey" => ml.m5.2xlarge.m.i.r,
    #             "displayName" => ml.m5.2xlarge Inference (Real-Time),
    #             "description" => Model inference on the ml.m5.2xlarge instance type, real-time mode,
    #             "dimensionLabels" => [{
    #               "labelType" => SagemakerOption,
    #               "labelValue" => Model Real-Time Inference,
    #               "displayName" => Model Real-Time Inference
    #             }],
    #             "unit" => HostHrs,
    #             "price" => 2.00000000
    #           },
    #           {
    #             "dimensionKey" => ml.m5.large.m.i.b,
    #             "displayName" => ml.m5.large Inference (Batch),
    #             "description" => Model inference on the ml.m5.large instance type, batch mode,
    #             "dimensionLabels" => [{
    #               "labelType" => SagemakerOption,
    #               "labelValue" => Model Batch Transform,
    #               "displayName" => Model Batch Transform
    #             }],
    #             "unit" => HostHrs,
    #             "price" => 2.00000000
    #           },
    #           {
    #             "dimensionKey" => ml.m5.large.m.i.r,
    #             "displayName" => ml.m5.large Inference (Real-Time),
    #             "description" => Model inference on the ml.m5.large instance type, real-time mode,
    #             "dimensionLabels" => [{
    #               "labelType" => SagemakerOption,
    #               "labelValue" => Model Real-Time Inference,
    #               "displayName" => Model Real-Time Inference
    #             }],
    #             "unit" => HostHrs,
    #             "price" => 2.00000000
    #           }
    #         ]
    #       }]
    #     }
    #   },
    #       {
    #     "fixedUpfrontPricingTerm" => {
    #       "id" => term-sampleFixedUpfrontPricingId,
    #       "type" => FixedUpfrontPricingTerm,
    #       "currencyCode" => USD,
    #       "duration" => P365D,
    #       "price" => 0.00000000,
    #       "grants" => [
    #         {
    #           "dimensionKey" => ml.m5.2xlarge.m.i.b,
    #           "displayName" => ml.m5.2xlarge Inference (Batch),
    #           "description" => Model inference on the ml.m5.2xlarge instance type, batch mode,
    #           "dimensionLabels" => [{
    #             "labelType" => SagemakerOption,
    #             "labelValue" => Model Batch Transform,
    #             "displayName" => Model Batch Transform
    #           }],
    #           "unit" => HostHrs,
    #           "maxQuantity" => 2147483647
    #         },
    #         {
    #           "dimensionKey" => ml.m5.2xlarge.m.i.r,
    #           "displayName" => ml.m5.2xlarge Inference (Real-Time),
    #           "description" => Model inference on the ml.m5.2xlarge instance type, real-time mode,
    #           "dimensionLabels" => [{
    #             "labelType" => SagemakerOption,
    #             "labelValue" => Model Real-Time Inference,
    #             "displayName" => Model Real-Time Inference
    #           }],
    #           "unit" => HostHrs,
    #           "maxQuantity" => 2147483647
    #         },
    #         {
    #           "dimensionKey" => ml.m5.large.m.i.b,
    #           "displayName" => ml.m5.large Inference (Batch),
    #           "description" => Model inference on the ml.m5.large instance type, batch mode,
    #           "dimensionLabels" => [{
    #             "labelType" => SagemakerOption,
    #             "labelValue" => Model Batch Transform,
    #             "displayName" => Model Batch Transform
    #           }],
    #           "unit" => HostHrs,
    #           "maxQuantity" => 2147483647
    #         },
    #         {
    #           "dimensionKey" => ml.m5.large.m.i.r,
    #           "displayName" => ml.m5.large Inference (Real-Time),
    #           "description" => Model inference on the ml.m5.large instance type, real-time mode,
    #           "dimensionLabels" => [{
    #             "labelType" => SagemakerOption,
    #             "labelValue" => Model Real-Time Inference,
    #             "displayName" => Model Real-Time Inference
    #           }],
    #           "unit" => HostHrs,
    #           "maxQuantity" => 2147483647
    #         }
    #       ]
    #     }
    #   },
    #       {
    #     "legalTerm" => {
    #       "id" => term-sampleLegalId,
    #       "type" => LegalTerm,
    #       "documents" => [{
    #         "type" => StandardEula,
    #         "url" => https://example.com/legal/standard-eula
    #       }]
    #     }
    #   },
    #       {
    #     "validityTerm" => {
    #       "id" => term-sampleValidityId,
    #       "type" => ValidityTerm,
    #       "agreementDuration" => P2011D
    #     }
    #   },
    #       {
    #     "paymentScheduleTerm" => {
    #       "id" => term-samplePaymentScheduleId,
    #       "type" => PaymentScheduleTerm,
    #       "currencyCode" => USD,
    #       "schedule" => [{
    #         "chargeDate" => 2026-07-15T00:00:00.000Z,
    #         "chargeAmount" => 5.00000000
    #       }]
    #     }
    #   }
    #     ]
    #   }
    # @example GetOfferTerms for BYOL offer
    #   # Example operation for get_offer_terms
    #   params = {
    #     locale: "en-US",
    #     offer_id: "offer-sampleByolId"
    #   }
    #   options = {}
    #   response = client.get_offer_terms(params, options)
    #   response.to_h #=>
    #   {
    #     locale: "en-US",
    #     offer_terms: [
    #       {
    #     "byolPricingTerm" => {
    #       "id" => term-byol-001,
    #       "type" => ByolPricingTerm
    #     }
    #   },
    #       {
    #     "legalTerm" => {
    #       "id" => term-legal-003,
    #       "type" => LegalTerm,
    #       "documents" => [{
    #         "type" => CustomEula,
    #         "url" => https://example.com/eula
    #       }]
    #     }
    #   }
    #     ]
    #   }
    # @example GetOfferTerms for configurable upfront pricing
    #   # Example operation for get_offer_terms
    #   params = {
    #     locale: "en-US",
    #     offer_id: "offer-sampleConfigUpfrontId"
    #   }
    #   options = {}
    #   response = client.get_offer_terms(params, options)
    #   response.to_h #=>
    #   {
    #     locale: "en-US",
    #     offer_terms: [
    #       {
    #     "configurableUpfrontPricingTerm" => {
    #       "id" => term-config-001,
    #       "type" => ConfigurableUpfrontPricingTerm,
    #       "currencyCode" => USD,
    #       "rateCards" => [{
    #         "selector" => {
    #           "type" => Duration,
    #           "value" => P12M
    #         },
    #         "constraints" => {
    #           "multipleDimensionSelection" => Allowed,
    #           "quantityConfiguration" => Allowed
    #         },
    #         "rateCard" => [
    #           {
    #             "dimensionKey" => api_calls_us_east_1,
    #             "displayName" => API Calls (US East),
    #             "dimensionLabels" => [{
    #               "labelType" => Region,
    #               "labelValue" => us-east-1,
    #               "displayName" => US East (N. Virginia)
    #             }],
    #             "unit" => Requests,
    #             "price" => 0.001
    #           },
    #           {
    #             "dimensionKey" => api_calls_us_west_2,
    #             "displayName" => API Calls (US West),
    #             "dimensionLabels" => [{
    #               "labelType" => Region,
    #               "labelValue" => us-west-2,
    #               "displayName" => US West (Oregon)
    #             }],
    #             "unit" => Requests,
    #             "price" => 0.001
    #           }
    #         ]
    #       }]
    #     }
    #   }
    #     ]
    #   }
    # @example GetOfferTerms for free trial offer
    #   # Example operation for get_offer_terms
    #   params = {
    #     locale: "en-US",
    #     offer_id: "offer-sampleFreeTrialId"
    #   }
    #   options = {}
    #   response = client.get_offer_terms(params, options)
    #   response.to_h #=>
    #   {
    #     locale: "en-US",
    #     offer_terms: [
    #       {
    #     "freeTrialPricingTerm" => {
    #       "id" => term-trial-001,
    #       "type" => FreeTrialPricingTerm,
    #       "duration" => P30D,
    #       "grants" => [{
    #         "dimensionKey" => ml.m5.large.m.i.r,
    #         "displayName" => ml.m5.large Inference (Real-Time),
    #         "dimensionLabels" => [{
    #           "labelType" => SagemakerOption,
    #           "labelValue" => Model Real-Time Inference,
    #           "displayName" => Model Real-Time Inference
    #         }],
    #         "unit" => HostHrs,
    #         "maxQuantity" => 100
    #       }]
    #     }
    #   }
    #     ]
    #   }
    # @example GetOfferTerms for recurring payment
    #   # Example operation for get_offer_terms
    #   params = {
    #     locale: "en-US",
    #     offer_id: "offer-sampleRecurringId"
    #   }
    #   options = {}
    #   response = client.get_offer_terms(params, options)
    #   response.to_h #=>
    #   {
    #     locale: "en-US",
    #     offer_terms: [
    #       {
    #     "recurringPaymentTerm" => {
    #       "id" => term-recurring-001,
    #       "type" => RecurringPaymentTerm,
    #       "currencyCode" => USD,
    #       "billingPeriod" => Monthly,
    #       "price" => 99.00
    #     }
    #   }
    #     ]
    #   }
    # @example GetOfferTerms for variable payment
    #   # Example operation for get_offer_terms
    #   params = {
    #     locale: "en-US",
    #     offer_id: "offer-sampleVariableId"
    #   }
    #   options = {}
    #   response = client.get_offer_terms(params, options)
    #   response.to_h #=>
    #   {
    #     locale: "en-US",
    #     offer_terms: [
    #       {
    #     "variablePaymentTerm" => {
    #       "id" => term-variable-001,
    #       "type" => VariablePaymentTerm,
    #       "currencyCode" => USD,
    #       "maxTotalChargeAmount" => 10000.00
    #     }
    #   }
    #     ]
    #   }
    # @example GetOfferTerms for renewal term
    #   # Example operation for get_offer_terms
    #   params = {
    #     locale: "en-US",
    #     offer_id: "offer-sampleRenewalId"
    #   }
    #   options = {}
    #   response = client.get_offer_terms(params, options)
    #   response.to_h #=>
    #   {
    #     locale: "en-US",
    #     offer_terms: [
    #       {
    #     "renewalTerm" => {
    #       "id" => term-renewal-001,
    #       "type" => RenewalTerm,
    #       "maxRenewals" => 3,
    #       "lockoutPeriod" => P30D,
    #       "adjustmentDeadline" => P30D,
    #       "priceIncrease" => {
    #         "percentageRange" => {
    #           "minimumValue" => 3.00,
    #           "maximumValue" => 10.00,
    #           "defaultValue" => 5.00
    #         }
    #       },
    #       "termTemplates" => [{
    #         "paymentScheduleTermTemplate" => {
    #           "schedule" => [
    #             {
    #               "chargeDateOffset" => P0D,
    #               "chargePercentage" => 50.00
    #             },
    #             {
    #               "chargeDateOffset" => P6M,
    #               "chargePercentage" => 25.00,
    #               "dayOfMonth" => 1
    #             },
    #             {
    #               "chargeDateOffset" => P12M,
    #               "chargePercentage" => 25.00,
    #               "dayOfMonth" => 1
    #             }
    #           ]
    #         }
    #       }]
    #     }
    #   }
    #     ]
    #   }
    # @example GetOfferTerms for renewal term with fixed percentage
    #   # Example operation for get_offer_terms
    #   params = {
    #     locale: "en-US",
    #     offer_id: "offer-sampleRenewalFixedId"
    #   }
    #   options = {}
    #   response = client.get_offer_terms(params, options)
    #   response.to_h #=>
    #   {
    #     locale: "en-US",
    #     offer_terms: [
    #       {
    #     "renewalTerm" => {
    #       "id" => term-renewal-002,
    #       "type" => RenewalTerm,
    #       "maxRenewals" => 5,
    #       "lockoutPeriod" => P60D,
    #       "priceIncrease" => {
    #         "fixedPercentage" => {
    #           "percentageValue" => 5.00
    #         }
    #       }
    #     }
    #   }
    #     ]
    #   }
    # @example GetOfferTerms for renewal term with identical pricing (no price increase)
    #   # Example operation for get_offer_terms
    #   params = {
    #     locale: "en-US",
    #     offer_id: "offer-sampleRenewalNoPriceIncreaseId"
    #   }
    #   options = {}
    #   response = client.get_offer_terms(params, options)
    #   response.to_h #=>
    #   {
    #     locale: "en-US",
    #     offer_terms: [
    #       {
    #     "renewalTerm" => {
    #       "id" => term-renewal-003,
    #       "type" => RenewalTerm,
    #       "maxRenewals" => 2,
    #       "lockoutPeriod" => P30D
    #     }
    #   }
    #     ]
    #   }
    # @example GetOfferTerms for support term
    #   # Example operation for get_offer_terms
    #   params = {
    #     locale: "en-US",
    #     offer_id: "offer-sampleSupportId"
    #   }
    #   options = {}
    #   response = client.get_offer_terms(params, options)
    #   response.to_h #=>
    #   {
    #     locale: "en-US",
    #     offer_terms: [
    #       {
    #     "supportTerm" => {
    #       "id" => term-support-001,
    #       "type" => SupportTerm,
    #       "refundPolicy" => 30-day money back guarantee
    #     }
    #   }
    #     ]
    #   }
    # @example GetOfferTerms for validity term with dates
    #   # Example operation for get_offer_terms
    #   params = {
    #     locale: "en-US",
    #     offer_id: "offer-sampleValidityId"
    #   }
    #   options = {}
    #   response = client.get_offer_terms(params, options)
    #   response.to_h #=>
    #   {
    #     locale: "en-US",
    #     offer_terms: [
    #       {
    #     "validityTerm" => {
    #       "id" => term-validity-001,
    #       "type" => ValidityTerm,
    #       "agreementDuration" => P365D,
    #       "agreementStartDate" => 2026-01-01T00:00:00.000Z,
    #       "agreementEndDate" => 2026-12-31T23:59:59.000Z
    #     }
    #   }
    #     ]
    #   }
    # @example GetOfferTerms for net payment term
    #   # Example operation for get_offer_terms
    #   params = {
    #     locale: "en-US",
    #     offer_id: "offer-sampleNetPaymentId"
    #   }
    #   options = {}
    #   response = client.get_offer_terms(params, options)
    #   response.to_h #=>
    #   {
    #     locale: "en-US",
    #     offer_terms: [
    #       {
    #     "netPaymentTerm" => {
    #       "id" => term-netpay-001,
    #       "type" => NetPaymentTerm,
    #       "paymentDuePeriod" => P30D
    #     }
    #   }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     locale: "Locale",
    #     offer_id: "OfferId", # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.get_offer_terms(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     locale: "Locale",
    #     offer_terms: [{ # required
    #       # One of:
    #       byol_pricing_term: {
    #         id: "TermId", # required
    #         type: "ByolPricingTerm" # One of: ["ByolPricingTerm", "ConfigurableUpfrontPricingTerm", "FixedUpfrontPricingTerm", "UsageBasedPricingTerm", "FreeTrialPricingTerm", "LegalTerm", "PaymentScheduleTerm", "RecurringPaymentTerm", "RenewalTerm", "SupportTerm", "ValidityTerm", "VariablePaymentTerm", "NetPaymentTerm"], # required
    #       },
    #       configurable_upfront_pricing_term: {
    #         id: "TermId", # required
    #         type: "ByolPricingTerm" # One of: ["ByolPricingTerm", "ConfigurableUpfrontPricingTerm", "FixedUpfrontPricingTerm", "UsageBasedPricingTerm", "FreeTrialPricingTerm", "LegalTerm", "PaymentScheduleTerm", "RecurringPaymentTerm", "RenewalTerm", "SupportTerm", "ValidityTerm", "VariablePaymentTerm", "NetPaymentTerm"], # required
    #         currency_code: "CurrencyCode", # required
    #         rate_cards: [
    #           {
    #             selector: { # required
    #               type: "Duration" # One of: ["Duration"], # required
    #               value: "BoundedString", # required
    #             },
    #             constraints: { # required
    #               multiple_dimension_selection: "Allowed" # One of: ["Allowed", "Disallowed"], # required
    #               quantity_configuration: "Allowed" # One of: ["Allowed", "Disallowed"], # required
    #             },
    #             rate_card: [ # required
    #               {
    #                 dimension_key: "BoundedString", # required
    #                 display_name: "BoundedString", # required
    #                 description: "BoundedString",
    #                 dimension_labels: [
    #                   {
    #                     label_type: "Region" # One of: ["Region", "SagemakerOption"], # required
    #                     label_value: "BoundedString", # required
    #                     display_name: "BoundedString"
    #                   }
    #                 ],
    #                 unit: "BoundedString", # required
    #                 price: "BoundedString", # required
    #               }
    #             ]
    #           }
    #         ]
    #       },
    #       fixed_upfront_pricing_term: {
    #         id: "TermId", # required
    #         type: "ByolPricingTerm" # One of: ["ByolPricingTerm", "ConfigurableUpfrontPricingTerm", "FixedUpfrontPricingTerm", "UsageBasedPricingTerm", "FreeTrialPricingTerm", "LegalTerm", "PaymentScheduleTerm", "RecurringPaymentTerm", "RenewalTerm", "SupportTerm", "ValidityTerm", "VariablePaymentTerm", "NetPaymentTerm"], # required
    #         currency_code: "CurrencyCode", # required
    #         duration: "BoundedString",
    #         price: "BoundedString", # required
    #         grants: [ # required
    #           {
    #             dimension_key: "BoundedString", # required
    #             display_name: "BoundedString", # required
    #             description: "BoundedString",
    #             dimension_labels: [
    #               {
    #                 label_type: "Region" # One of: ["Region", "SagemakerOption"], # required
    #                 label_value: "BoundedString", # required
    #                 display_name: "BoundedString"
    #               }
    #             ],
    #             unit: "BoundedString", # required
    #             max_quantity: 1
    #           }
    #         ]
    #       },
    #       free_trial_pricing_term: {
    #         id: "TermId", # required
    #         type: "ByolPricingTerm" # One of: ["ByolPricingTerm", "ConfigurableUpfrontPricingTerm", "FixedUpfrontPricingTerm", "UsageBasedPricingTerm", "FreeTrialPricingTerm", "LegalTerm", "PaymentScheduleTerm", "RecurringPaymentTerm", "RenewalTerm", "SupportTerm", "ValidityTerm", "VariablePaymentTerm", "NetPaymentTerm"], # required
    #         duration: "BoundedString",
    #         grants: [ # required
    #           {
    #             dimension_key: "BoundedString", # required
    #             display_name: "BoundedString", # required
    #             description: "BoundedString",
    #             dimension_labels: [
    #               {
    #                 label_type: "Region" # One of: ["Region", "SagemakerOption"], # required
    #                 label_value: "BoundedString", # required
    #                 display_name: "BoundedString"
    #               }
    #             ],
    #             unit: "BoundedString", # required
    #             max_quantity: 1
    #           }
    #         ]
    #       },
    #       legal_term: {
    #         id: "TermId", # required
    #         type: "ByolPricingTerm" # One of: ["ByolPricingTerm", "ConfigurableUpfrontPricingTerm", "FixedUpfrontPricingTerm", "UsageBasedPricingTerm", "FreeTrialPricingTerm", "LegalTerm", "PaymentScheduleTerm", "RecurringPaymentTerm", "RenewalTerm", "SupportTerm", "ValidityTerm", "VariablePaymentTerm", "NetPaymentTerm"], # required
    #         documents: [ # required
    #           {
    #             type: "CustomEula" # One of: ["CustomEula", "CustomDsa", "EnterpriseEula", "StandardEula", "StandardDsa"], # required
    #             url: "URL", # required
    #             version: "String"
    #           }
    #         ]
    #       },
    #       payment_schedule_term: {
    #         id: "TermId", # required
    #         type: "ByolPricingTerm" # One of: ["ByolPricingTerm", "ConfigurableUpfrontPricingTerm", "FixedUpfrontPricingTerm", "UsageBasedPricingTerm", "FreeTrialPricingTerm", "LegalTerm", "PaymentScheduleTerm", "RecurringPaymentTerm", "RenewalTerm", "SupportTerm", "ValidityTerm", "VariablePaymentTerm", "NetPaymentTerm"], # required
    #         currency_code: "CurrencyCode", # required
    #         schedule: [ # required
    #           {
    #             charge_date: Time.now, # required
    #             charge_amount: "BoundedString", # required
    #           }
    #         ]
    #       },
    #       recurring_payment_term: {
    #         id: "TermId", # required
    #         type: "ByolPricingTerm" # One of: ["ByolPricingTerm", "ConfigurableUpfrontPricingTerm", "FixedUpfrontPricingTerm", "UsageBasedPricingTerm", "FreeTrialPricingTerm", "LegalTerm", "PaymentScheduleTerm", "RecurringPaymentTerm", "RenewalTerm", "SupportTerm", "ValidityTerm", "VariablePaymentTerm", "NetPaymentTerm"], # required
    #         currency_code: "CurrencyCode", # required
    #         billing_period: "Monthly" # One of: ["Monthly"], # required
    #         price: "BoundedString", # required
    #       },
    #       renewal_term: {
    #         id: "TermId", # required
    #         type: "ByolPricingTerm" # One of: ["ByolPricingTerm", "ConfigurableUpfrontPricingTerm", "FixedUpfrontPricingTerm", "UsageBasedPricingTerm", "FreeTrialPricingTerm", "LegalTerm", "PaymentScheduleTerm", "RecurringPaymentTerm", "RenewalTerm", "SupportTerm", "ValidityTerm", "VariablePaymentTerm", "NetPaymentTerm"], # required
    #         max_renewals: 1,
    #         lockout_period: "BoundedString",
    #         adjustment_deadline: "BoundedString",
    #         price_increase: {
    #           # One of:
    #           fixed_percentage: {
    #             percentage_value: "BoundedString", # required
    #           },
    #           percentage_range: {
    #             minimum_value: "BoundedString", # required
    #             maximum_value: "BoundedString", # required
    #             default_value: "BoundedString", # required
    #           }
    #         },
    #         term_templates: [{
    #           # One of:
    #           payment_schedule_term_template: {
    #             schedule: [ # required
    #               {
    #                 charge_date_offset: "BoundedString", # required
    #                 charge_percentage: "BoundedString", # required
    #                 day_of_month: 1
    #               }
    #             ]
    #           }
    #         }]
    #       },
    #       support_term: {
    #         id: "TermId", # required
    #         type: "ByolPricingTerm" # One of: ["ByolPricingTerm", "ConfigurableUpfrontPricingTerm", "FixedUpfrontPricingTerm", "UsageBasedPricingTerm", "FreeTrialPricingTerm", "LegalTerm", "PaymentScheduleTerm", "RecurringPaymentTerm", "RenewalTerm", "SupportTerm", "ValidityTerm", "VariablePaymentTerm", "NetPaymentTerm"], # required
    #         refund_policy: "BoundedString", # required
    #       },
    #       usage_based_pricing_term: {
    #         id: "TermId", # required
    #         type: "ByolPricingTerm" # One of: ["ByolPricingTerm", "ConfigurableUpfrontPricingTerm", "FixedUpfrontPricingTerm", "UsageBasedPricingTerm", "FreeTrialPricingTerm", "LegalTerm", "PaymentScheduleTerm", "RecurringPaymentTerm", "RenewalTerm", "SupportTerm", "ValidityTerm", "VariablePaymentTerm", "NetPaymentTerm"], # required
    #         currency_code: "CurrencyCode", # required
    #         rate_cards: [ # required
    #           {
    #             rate_card: [ # required
    #               {
    #                 dimension_key: "BoundedString", # required
    #                 display_name: "BoundedString", # required
    #                 description: "BoundedString",
    #                 dimension_labels: [
    #                   {
    #                     label_type: "Region" # One of: ["Region", "SagemakerOption"], # required
    #                     label_value: "BoundedString", # required
    #                     display_name: "BoundedString"
    #                   }
    #                 ],
    #                 unit: "BoundedString", # required
    #                 price: "BoundedString", # required
    #               }
    #             ]
    #           }
    #         ]
    #       },
    #       validity_term: {
    #         id: "TermId", # required
    #         type: "ByolPricingTerm" # One of: ["ByolPricingTerm", "ConfigurableUpfrontPricingTerm", "FixedUpfrontPricingTerm", "UsageBasedPricingTerm", "FreeTrialPricingTerm", "LegalTerm", "PaymentScheduleTerm", "RecurringPaymentTerm", "RenewalTerm", "SupportTerm", "ValidityTerm", "VariablePaymentTerm", "NetPaymentTerm"], # required
    #         agreement_duration: "BoundedString",
    #         agreement_end_date: Time.now,
    #         agreement_start_date: Time.now
    #       },
    #       variable_payment_term: {
    #         id: "TermId", # required
    #         type: "ByolPricingTerm" # One of: ["ByolPricingTerm", "ConfigurableUpfrontPricingTerm", "FixedUpfrontPricingTerm", "UsageBasedPricingTerm", "FreeTrialPricingTerm", "LegalTerm", "PaymentScheduleTerm", "RecurringPaymentTerm", "RenewalTerm", "SupportTerm", "ValidityTerm", "VariablePaymentTerm", "NetPaymentTerm"], # required
    #         currency_code: "CurrencyCode", # required
    #         max_total_charge_amount: "BoundedString", # required
    #       },
    #       net_payment_term: {
    #         id: "TermId", # required
    #         type: "ByolPricingTerm" # One of: ["ByolPricingTerm", "ConfigurableUpfrontPricingTerm", "FixedUpfrontPricingTerm", "UsageBasedPricingTerm", "FreeTrialPricingTerm", "LegalTerm", "PaymentScheduleTerm", "RecurringPaymentTerm", "RenewalTerm", "SupportTerm", "ValidityTerm", "VariablePaymentTerm", "NetPaymentTerm"], # required
    #         payment_due_period: "BoundedString", # required
    #       }
    #     }],
    #     next_token: "NextToken"
    #   }
    # @return [Types::GetOfferTermsOutput]
    def get_offer_terms(params = {}, options = {})
      request = build_request(:get_offer_terms, params)
      request.send_request(options)
    end

    # <p>Provides details about a product, such as descriptions, highlights, categories, fulfillment option summaries, promotional media, and seller engagement options.</p>
    # @param [Hash, Types::GetProductInput] params
    # @option params [String] :locale
    #   <p>A BCP 47 language tag or comma-separated priority list specifying the preferred locale for response content. See <code>Locale</code> for supported values, constraints, fallback behavior, and the default locale. If omitted, the service returns content in the default locale.</p>
    # @option params [String] :product_id
    #   <p>The unique identifier of the product to retrieve.</p>
    # @example GetProduct for SaaS product with DEPLOYED status
    #   # Example operation for get_product
    #   params = {
    #     locale: "en-US",
    #     product_id: "prod-sampleSaasId"
    #   }
    #   options = {}
    #   response = client.get_product(params, options)
    #   response.to_h #=>
    #   {
    #     locale: "en-US",
    #     product_id: "prod-sampleSaasId",
    #     catalog: "AWSMarketplace",
    #     product_name: "sample SaaS product",
    #     deployed_on_aws: DEPLOYED,
    #     short_description: "Gitpod provides on-demand, secure cloud development environments or CDEs.",
    #     long_description: "Gitpod is a developer platform that provides on-demand, pre-configured cloud development environments (CDEs) that automatically integrate into any tool, library, or dependency required for creating software.",
    #     manufacturer: {
    #       seller_profile_id: "seller-sampleSaasId",
    #       display_name: "sample SaaS seller"
    #     },
    #     logo_thumbnail_url: "https://d7umqicpi7263.cloudfront.net/img/product/07afb7c8-32f1-4851-8289-7e200d817ab1.png",
    #     fulfillment_option_summaries: [
    #       {
    #         fulfillment_option_type: SAAS,
    #         display_name: "SaaS"
    #       },
    #       {
    #         fulfillment_option_type: API,
    #         display_name: "API"
    #       },
    #       {
    #         fulfillment_option_type: DATA_EXCHANGE,
    #         display_name: "Data Exchange"
    #       }
    #     ],
    #     categories: [
    #       {
    #         category_id: "0625e4fd-88dd-4dd9-9e57-4a0461f97fb4",
    #         display_name: "Security"
    #       }
    #     ],
    #     highlights: [
    #       "Configured to your specs: Pre-configured environments, out-of-the-box."
    #     ],
    #     promotional_media: [
    #       {
    #     "embeddedImage" => {
    #       "title" => Dashboard Overview,
    #       "url" => https://assets.example.com/images/dashboard-main.png,
    #       "description" => Main security dashboard showing threat analytics
    #     }
    #   }
    #     ],
    #     resources: [
    #       {
    #         resource_type: MANUFACTURER_SUPPORT,
    #         content_type: LINK,
    #         value: "https://www.gitpod.io/blog",
    #         display_name: "Blog"
    #       },
    #       {
    #         resource_type: MANUFACTURER_SUPPORT,
    #         content_type: EMAIL,
    #         value: "support@gitpod.io",
    #         display_name: "Email Support"
    #       }
    #     ],
    #     seller_engagements: [
    #       {
    #         engagement_type: REQUEST_FOR_DEMO,
    #         content_type: LINK,
    #         value: "https://aws.amazon.com/marketplace/customer-connect/demo/prodview-sampleSaasId"
    #       }
    #     ],
    #     listing_id: "listing-sampleSaasId"
    #   }
    # @example GetProduct for AMI product with NOT_DEPLOYED status
    #   # Example operation for get_product
    #   params = {
    #     locale: "en-US",
    #     product_id: "prod-sampleAmiId"
    #   }
    #   options = {}
    #   response = client.get_product(params, options)
    #   response.to_h #=>
    #   {
    #     locale: "en-US",
    #     product_id: "prod-sampleAmiId",
    #     catalog: "AWSMarketplace",
    #     product_name: "sample AMI product",
    #     deployed_on_aws: NOT_DEPLOYED,
    #     short_description: "Enterprise-grade data encryption and key management solution.",
    #     long_description: "SecureVault Enterprise provides comprehensive data encryption, key management, and security compliance tools for organizations.",
    #     manufacturer: {
    #       seller_profile_id: "seller-sampleAmiId",
    #       display_name: "sample AMI seller"
    #     },
    #     logo_thumbnail_url: "https://d7umqicpi7263.cloudfront.net/img/product/securevault-logo.png",
    #     fulfillment_option_summaries: [
    #       {
    #         fulfillment_option_type: AMAZON_MACHINE_IMAGE,
    #         display_name: "Amazon Machine Image"
    #       },
    #       {
    #         fulfillment_option_type: CLOUDFORMATION_TEMPLATE,
    #         display_name: "CloudFormation Template"
    #       },
    #       {
    #         fulfillment_option_type: CONTAINER,
    #         display_name: "Container"
    #       },
    #       {
    #         fulfillment_option_type: HELM,
    #         display_name: "Helm"
    #       }
    #     ],
    #     categories: [
    #       {
    #         category_id: "security-category-001",
    #         display_name: "Security"
    #       }
    #     ],
    #     highlights: [
    #       "AES-256 encryption at rest and in transit"
    #     ],
    #     promotional_media: [
    #       {
    #     "embeddedVideo" => {
    #       "title" => SecureVault Introduction,
    #       "url" => https://assets.example.com/videos/intro.mp4,
    #       "preview" => https://assets.example.com/videos/intro-preview.jpg,
    #       "thumbnail" => https://assets.example.com/videos/intro-thumb.jpg,
    #       "description" => A comprehensive overview of SecureVault features
    #     }
    #   }
    #     ],
    #     resources: [
    #       {
    #         resource_type: MANUFACTURER_SUPPORT,
    #         content_type: PHONE_NUMBER,
    #         value: "+1-555-123-4567",
    #         display_name: "Phone Support"
    #       },
    #       {
    #         resource_type: MANUFACTURER_INSTRUCTIONS,
    #         content_type: OTHER,
    #         value: "Contact your account manager for installation assistance.",
    #         display_name: "Installation Help"
    #       }
    #     ],
    #     seller_engagements: [
    #       {
    #         engagement_type: REQUEST_FOR_PRIVATE_OFFER,
    #         content_type: LINK,
    #         value: "https://aws.amazon.com/marketplace/customer-connect/private-offer/prodview-sampleAmiId"
    #       }
    #     ],
    #     listing_id: "listing-sampleAmiId"
    #   }
    # @example GetProduct for professional services with NOT_APPLICABLE status
    #   # Example operation for get_product
    #   params = {
    #     locale: "en-US",
    #     product_id: "prod-sampleProServId"
    #   }
    #   options = {}
    #   response = client.get_product(params, options)
    #   response.to_h #=>
    #   {
    #     locale: "en-US",
    #     product_id: "prod-sampleProServId",
    #     catalog: "AWSMarketplace",
    #     product_name: "sample professional services product",
    #     deployed_on_aws: NOT_APPLICABLE,
    #     short_description: "Expert cloud migration and modernization consulting services.",
    #     long_description: "Professional consulting services to help organizations plan and execute their cloud migration strategy.",
    #     manufacturer: {
    #       seller_profile_id: "seller-sampleProServId",
    #       display_name: "sample professional services seller"
    #     },
    #     logo_thumbnail_url: "https://d7umqicpi7263.cloudfront.net/img/product/cloudexperts-logo.png",
    #     fulfillment_option_summaries: [
    #       {
    #         fulfillment_option_type: PROFESSIONAL_SERVICES,
    #         display_name: "Professional Services"
    #       },
    #       {
    #         fulfillment_option_type: EKS_ADD_ON,
    #         display_name: "EKS Add-on"
    #       },
    #       {
    #         fulfillment_option_type: EC2_IMAGE_BUILDER_COMPONENT,
    #         display_name: "EC2 Image Builder Component"
    #       },
    #       {
    #         fulfillment_option_type: SAGEMAKER_ALGORITHM,
    #         display_name: "SageMaker Algorithm"
    #       },
    #       {
    #         fulfillment_option_type: SAGEMAKER_MODEL,
    #         display_name: "SageMaker Model"
    #       }
    #     ],
    #     categories: [
    #       {
    #         category_id: "consulting-category-001",
    #         display_name: "Consulting"
    #       }
    #     ],
    #     highlights: [
    #       "Certified AWS migration specialists"
    #     ],
    #     resources: [
    #       {
    #         resource_type: MANUFACTURER_INSTRUCTIONS,
    #         content_type: LINK,
    #         value: "https://www.cloudexperts.example.com/docs",
    #         display_name: "Documentation"
    #       }
    #     ],
    #     promotional_media: [
    #     ],
    #     seller_engagements: [
    #       {
    #         content_type: LINK,
    #         engagement_type: REQUEST_FOR_DEMO,
    #         value: "https://aws.amazon.com/marketplace/customer-connect/demo/prodview-sampleProServId"
    #       }
    #     ],
    #     listing_id: "listing-sampleProServId"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     locale: "Locale",
    #     product_id: "ProductId", # required
    #   }
    #   options = {}
    #   response = client.get_product(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     locale: "Locale",
    #     product_id: "ProductId", # required
    #     catalog: "Catalog", # required
    #     product_name: "NonEmptyString", # required
    #     manufacturer: { # required
    #       seller_profile_id: "SellerProfileId", # required
    #       display_name: "NonEmptyString", # required
    #     },
    #     deployed_on_aws: "DEPLOYED" # One of: ["DEPLOYED", "NOT_DEPLOYED", "NOT_APPLICABLE"], # required
    #     short_description: "NonEmptyString", # required
    #     long_description: "NonEmptyString", # required
    #     logo_thumbnail_url: "URL", # required
    #     fulfillment_option_summaries: [ # required
    #       {
    #         fulfillment_option_type: "AMAZON_MACHINE_IMAGE" # One of: ["AMAZON_MACHINE_IMAGE", "API", "CLOUDFORMATION_TEMPLATE", "CONTAINER", "HELM", "EKS_ADD_ON", "EC2_IMAGE_BUILDER_COMPONENT", "DATA_EXCHANGE", "PROFESSIONAL_SERVICES", "SAAS", "SAGEMAKER_ALGORITHM", "SAGEMAKER_MODEL"], # required
    #         display_name: "NonEmptyString", # required
    #       }
    #     ],
    #     categories: [ # required
    #       {
    #         category_id: "NonEmptyString", # required
    #         display_name: "NonEmptyString", # required
    #       }
    #     ],
    #     highlights: ["NonEmptyString"], # required
    #     promotional_media: [{ # required
    #       # One of:
    #       embedded_image: {
    #         title: "NonEmptyString", # required
    #         url: "URL", # required
    #         description: "NullableString"
    #       },
    #       embedded_video: {
    #         title: "NonEmptyString", # required
    #         url: "URL", # required
    #         preview: "URL", # required
    #         thumbnail: "URL", # required
    #         description: "NullableString"
    #       }
    #     }],
    #     resources: [ # required
    #       {
    #         resource_type: "MANUFACTURER_SUPPORT" # One of: ["MANUFACTURER_SUPPORT", "MANUFACTURER_INSTRUCTIONS"], # required
    #         content_type: "EMAIL" # One of: ["EMAIL", "PHONE_NUMBER", "LINK", "OTHER"], # required
    #         value: "NonEmptyString", # required
    #         display_name: "NullableString"
    #       }
    #     ],
    #     seller_engagements: [ # required
    #       {
    #         engagement_type: "REQUEST_FOR_PRIVATE_OFFER" # One of: ["REQUEST_FOR_PRIVATE_OFFER", "REQUEST_FOR_DEMO"], # required
    #         content_type: "LINK" # One of: ["LINK"], # required
    #         value: "NonEmptyString", # required
    #       }
    #     ],
    #     listing_id: "ListingId", # required
    #   }
    # @return [Types::GetProductOutput]
    def get_product(params = {}, options = {})
      request = build_request(:get_product, params)
      request.send_request(options)
    end

    # <p>Returns the fulfillment options available for a product, including deployment details such as version information, operating systems, usage instructions, and release notes.</p>
    # @param [Hash, Types::ListFulfillmentOptionsInput] params
    # @option params [String] :locale
    #   <p>A BCP 47 language tag or comma-separated priority list specifying the preferred locale for response content. See <code>Locale</code> for supported values, constraints, fallback behavior, and the default locale. If omitted, the service returns content in the default locale.</p>
    # @option params [String] :product_id
    #   <p>The unique identifier of the product for which to list fulfillment options.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results that are returned per call. You can use <code>nextToken</code> to get more results.</p>
    # @option params [String] :next_token
    #   <p>If <code>nextToken</code> is returned, there are more results available. Make the call again using the returned token to retrieve the next page.</p>
    # @example List AMI Fulfillment Options
    #   # Example operation for list_fulfillment_options
    #   params = {
    #     locale: "en-US",
    #     product_id: "prod-sampleAmiId"
    #   }
    #   options = {}
    #   response = client.list_fulfillment_options(params, options)
    #   response.to_h #=>
    #   {
    #     locale: "en-US",
    #     fulfillment_options: [
    #       {
    #     "amazonMachineImageFulfillmentOption" => {
    #       "fulfillmentOptionId" => fo-sampleAmiId,
    #       "fulfillmentOptionName" => 64-bit (x86) Amazon Machine Image (AMI),
    #       "fulfillmentOptionVersion" => 2.0.20260120.1,
    #       "fulfillmentOptionType" => AMAZON_MACHINE_IMAGE,
    #       "fulfillmentOptionDisplayName" => Amazon Machine Image,
    #       "operatingSystems" => [{
    #         "operatingSystemFamilyName" => AMAZONLINUX,
    #         "operatingSystemName" => AmazonLinux 2.0.20250623.0,
    #         "operatingSystemVersion" => 2.0.20250623.0
    #       }],
    #       "recommendation" => {
    #         "instanceType" => t3a.medium,
    #         "securityGroups" => [{
    #           "protocol" => tcp,
    #           "fromPort" => 22,
    #           "toPort" => 22,
    #           "cidrIpAddresses" => [0.0.0.0/0]
    #         }]
    #       },
    #       "releaseNotes" => https://aws.amazon.com/amazon-linux-2/release-notes/,
    #       "usageInstructions" => The Amazon Linux 2 AMI can be launched through the EC2 console's Quick Launch page.,
    #       "availableFromTime" => 2022-03-07T00:00:00Z,
    #       "accessUrlTemplate" => http://{0}:8888/,
    #       "architecture" => x86_64,
    #       "amiAlias" => /aws/service/marketplace/prod-sampleAmiId/2.0.20260120.1,
    #       "ebsVolume" => {
    #         "volumeTypes" => [gp2]
    #       },
    #       "shortDescription" => Amazon Linux 2 AMI for x86_64 EC2 instances.
    #     }
    #   }
    #     ]
    #   }
    # @example List API Fulfillment Options
    #   # Example operation for list_fulfillment_options
    #   params = {
    #     locale: "en-US",
    #     product_id: "prod-sampleApiId"
    #   }
    #   options = {}
    #   response = client.list_fulfillment_options(params, options)
    #   response.to_h #=>
    #   {
    #     locale: "en-US",
    #     fulfillment_options: [
    #       {
    #     "apiFulfillmentOption" => {
    #       "fulfillmentOptionId" => fo-sampleApiId,
    #       "fulfillmentOptionType" => API,
    #       "fulfillmentOptionDisplayName" => API-Based Agents & Tools,
    #       "usageInstructions" => Please refer to the MCP usage instructions.,
    #       "awsSupportedServices" => [{
    #         "supportedServiceType" => BEDROCK_AGENTCORE,
    #         "displayName" => Amazon Bedrock AgentCore,
    #         "description" => A managed service that enables you to develop, deploy, and maintain AI agents seamlessly.
    #       }]
    #     }
    #   }
    #     ]
    #   }
    # @example List API Fulfillment Options with Dynamic Endpoint
    #   # Example operation for list_fulfillment_options
    #   params = {
    #     locale: "en-US",
    #     product_id: "prod-sampleApiDynamicId"
    #   }
    #   options = {}
    #   response = client.list_fulfillment_options(params, options)
    #   response.to_h #=>
    #   {
    #     locale: "en-US",
    #     fulfillment_options: [
    #       {
    #     "apiFulfillmentOption" => {
    #       "fulfillmentOptionId" => fo-sampleApiDynamicId,
    #       "fulfillmentOptionType" => API,
    #       "fulfillmentOptionDisplayName" => API-Based Agents & Tools,
    #       "usageInstructions" => Deploy to your preferred region using the dynamic endpoint.,
    #       "awsSupportedServices" => [{
    #         "supportedServiceType" => BEDROCK_AGENTCORE,
    #         "displayName" => Amazon Bedrock AgentCore,
    #         "description" => A managed service that enables you to develop, deploy, and maintain AI agents seamlessly.
    #       }]
    #     }
    #   }
    #     ]
    #   }
    # @example List CloudFormation Template Fulfillment Options
    #   # Example operation for list_fulfillment_options
    #   params = {
    #     locale: "en-US",
    #     product_id: "prod-sampleCftId"
    #   }
    #   options = {}
    #   response = client.list_fulfillment_options(params, options)
    #   response.to_h #=>
    #   {
    #     locale: "en-US",
    #     fulfillment_options: [
    #       {
    #     "cloudFormationFulfillmentOption" => {
    #       "fulfillmentOptionId" => fo-sampleCftId,
    #       "fulfillmentOptionName" => Sophos Standalone Firewall for AWS,
    #       "fulfillmentOptionVersion" => 21.5 MR1,
    #       "fulfillmentOptionType" => CLOUDFORMATION_TEMPLATE,
    #       "fulfillmentOptionDisplayName" => CloudFormation Template,
    #       "releaseNotes" => https://community.sophos.com/products/xg-firewall/b/blog,
    #       "usageInstructions" => You can manage your Sophos XG Firewall on AWS from the Web Interface using HTTPS (TCP port 4444).,
    #       "availableFromTime" => 2021-12-15T00:00:00Z,
    #       "shortDescription" => Deploy Sophos XG Firewall on AWS with high availability.,
    #       "longDescription" => This CloudFormation template deploys the Sophos XG Firewall with auto-scaling and load balancing for enterprise environments.
    #     }
    #   }
    #     ]
    #   }
    # @example List Container Fulfillment Options
    #   # Example operation for list_fulfillment_options
    #   params = {
    #     locale: "en-US",
    #     product_id: "prod-sampleContainerId"
    #   }
    #   options = {}
    #   response = client.list_fulfillment_options(params, options)
    #   response.to_h #=>
    #   {
    #     locale: "en-US",
    #     fulfillment_options: [
    #       {
    #     "containerFulfillmentOption" => {
    #       "fulfillmentOptionId" => fo-sampleContainerId,
    #       "fulfillmentOptionName" => New delivery option 1,
    #       "fulfillmentOptionVersion" => Elastic MCP Version 1,
    #       "fulfillmentOptionType" => CONTAINER,
    #       "fulfillmentOptionDisplayName" => Container Image,
    #       "operatingSystems" => [{
    #         "operatingSystemFamilyName" => Linux,
    #         "operatingSystemName" => Linux
    #       }],
    #       "awsSupportedServices" => [{
    #         "supportedServiceType" => BEDROCK_AGENTCORE,
    #         "displayName" => Amazon Bedrock AgentCore,
    #         "description" => A managed service that enables you to develop, deploy, and maintain AI agents seamlessly.
    #       }],
    #       "releaseNotes" => Version 1 of Elastic MCP Server,
    #       "usageInstructions" => See Elastic MCP GitHub instructions
    #     }
    #   }
    #     ]
    #   }
    # @example List Helm Fulfillment Options
    #   # Example operation for list_fulfillment_options
    #   params = {
    #     locale: "en-US",
    #     product_id: "prod-sampleHelmId"
    #   }
    #   options = {}
    #   response = client.list_fulfillment_options(params, options)
    #   response.to_h #=>
    #   {
    #     locale: "en-US",
    #     fulfillment_options: [
    #       {
    #     "helmFulfillmentOption" => {
    #       "fulfillmentOptionId" => fo-sampleHelmId,
    #       "fulfillmentOptionName" => NGINX Ingress Controller,
    #       "fulfillmentOptionVersion" => 1.14.3-0-r03,
    #       "fulfillmentOptionType" => HELM,
    #       "fulfillmentOptionDisplayName" => Helm Chart,
    #       "operatingSystems" => [{
    #         "operatingSystemFamilyName" => Linux,
    #         "operatingSystemName" => Linux
    #       }],
    #       "releaseNotes" => * Maintenance release,
    #       "awsSupportedServices" => [{
    #         "supportedServiceType" => EKS,
    #         "displayName" => Amazon EKS,
    #         "description" => Amazon Elastic Kubernetes Service
    #       }],
    #       "usageInstructions" => helm install nginx-ingress
    #     }
    #   }
    #     ]
    #   }
    # @example List EKS Add-On Fulfillment Options
    #   # Example operation for list_fulfillment_options
    #   params = {
    #     locale: "en-US",
    #     product_id: "prod-sampleEksId"
    #   }
    #   options = {}
    #   response = client.list_fulfillment_options(params, options)
    #   response.to_h #=>
    #   {
    #     locale: "en-US",
    #     fulfillment_options: [
    #       {
    #     "eksAddOnFulfillmentOption" => {
    #       "fulfillmentOptionId" => fo-sampleEksId,
    #       "fulfillmentOptionName" => Splunk Distribution of the OpenTelemetry Collector Chart,
    #       "fulfillmentOptionVersion" => 0.144.0,
    #       "fulfillmentOptionType" => EKS_ADD_ON,
    #       "fulfillmentOptionDisplayName" => Add-on for Amazon EKS,
    #       "operatingSystems" => [{
    #         "operatingSystemFamilyName" => Linux,
    #         "operatingSystemName" => Linux
    #       }],
    #       "releaseNotes" => https://github.com/signalfx/splunk-otel-collector-chart/releases/tag/splunk-otel-collector-0.144.0,
    #       "usageInstructions" => https://help.splunk.com/en/splunk-observability-cloud/manage-data/splunk-distribution-of-the-opentelemetry-collector/get-started-with-the-splunk-distribution-of-the-opentelemetry-collector/collector-for-kubernetes/kubernetes-eks-add-on,
    #       "awsSupportedServices" => [{
    #         "supportedServiceType" => EKS,
    #         "displayName" => Amazon EKS,
    #         "description" => Amazon Elastic Kubernetes Service
    #       }]
    #     }
    #   }
    #     ]
    #   }
    # @example List EC2 Image Builder Component Fulfillment Options
    #   # Example operation for list_fulfillment_options
    #   params = {
    #     locale: "en-US",
    #     product_id: "prod-sampleImageBuilderId"
    #   }
    #   options = {}
    #   response = client.list_fulfillment_options(params, options)
    #   response.to_h #=>
    #   {
    #     locale: "en-US",
    #     fulfillment_options: [
    #       {
    #     "ec2ImageBuilderComponentFulfillmentOption" => {
    #       "fulfillmentOptionId" => fo-sampleImageBuilderId,
    #       "fulfillmentOptionName" => Linux v1.2.3,
    #       "fulfillmentOptionVersion" => 1.2.3,
    #       "fulfillmentOptionType" => EC2_IMAGE_BUILDER_COMPONENT,
    #       "fulfillmentOptionDisplayName" => EC2 Image Builder Component,
    #       "operatingSystems" => [{
    #         "operatingSystemFamilyName" => Linux,
    #         "operatingSystemName" => Linux
    #       }],
    #       "awsSupportedServices" => [{
    #         "supportedServiceType" => IMAGEBUILDER,
    #         "displayName" => Amazon EC2 Image Builder,
    #         "description" => EC2 Image Builder is a fully managed AWS service. It automates creation, management, and deployment of custom, secure, and up-to-date server images.
    #       }],
    #       "releaseNotes" => https://github.com/CrowdStrike/aws-ec2-image-builder/releases,
    #       "usageInstructions" => https://github.com/CrowdStrike/aws-ec2-image-builder
    #     }
    #   }
    #     ]
    #   }
    # @example List Data Exchange Fulfillment Options
    #   # Example operation for list_fulfillment_options
    #   params = {
    #     locale: "en-US",
    #     product_id: "prod-sampleDataExchangeId"
    #   }
    #   options = {}
    #   response = client.list_fulfillment_options(params, options)
    #   response.to_h #=>
    #   {
    #     locale: "en-US",
    #     fulfillment_options: [
    #       {
    #     "dataExchangeFulfillmentOption" => {
    #       "fulfillmentOptionId" => fo-sampleDataExchangeId,
    #       "fulfillmentOptionType" => DATA_EXCHANGE,
    #       "fulfillmentOptionDisplayName" => Data Exchange,
    #       "dataArtifacts" => [{
    #         "description" => Sample testing dataset.,
    #         "resourceArn" => arn:aws:dataexchange:us-east-2::DataSet/sample-dataset-id,
    #         "resourceType" => API_GATEWAY_APIS,
    #         "dataClassification" => NONE
    #       }]
    #     }
    #   }
    #     ]
    #   }
    # @example List Professional Services Fulfillment Options
    #   # Example operation for list_fulfillment_options
    #   params = {
    #     locale: "en-US",
    #     product_id: "prod-sampleProServId"
    #   }
    #   options = {}
    #   response = client.list_fulfillment_options(params, options)
    #   response.to_h #=>
    #   {
    #     locale: "en-US",
    #     fulfillment_options: [
    #       {
    #     "professionalServicesFulfillmentOption" => {
    #       "fulfillmentOptionId" => fo-sampleProServId,
    #       "fulfillmentOptionType" => PROFESSIONAL_SERVICES,
    #       "fulfillmentOptionDisplayName" => Professional Services
    #     }
    #   }
    #     ]
    #   }
    # @example List SaaS Fulfillment Options
    #   # Example operation for list_fulfillment_options
    #   params = {
    #     locale: "en-US",
    #     product_id: "prod-sampleSaasId"
    #   }
    #   options = {}
    #   response = client.list_fulfillment_options(params, options)
    #   response.to_h #=>
    #   {
    #     locale: "en-US",
    #     fulfillment_options: [
    #       {
    #     "saasFulfillmentOption" => {
    #       "fulfillmentOptionId" => fo-sampleSaasId,
    #       "fulfillmentOptionType" => SAAS,
    #       "fulfillmentOptionDisplayName" => SaaS,
    #       "fulfillmentUrl" => https://example.com/order/SAMPLE123,
    #       "usageInstructions" => Refer to the seller's setup guide to configure and start using this SaaS product.,
    #       "availableFromTime" => 2018-08-07T00:00:00.000Z,
    #       "launchUrl" => https://example.com/saas/launch,
    #       "quickLaunch" => ENABLED
    #     }
    #   }
    #     ]
    #   }
    # @example List SageMaker Algorithm Fulfillment Options
    #   # Example operation for list_fulfillment_options
    #   params = {
    #     locale: "en-US",
    #     product_id: "prod-sampleSmAlgoId"
    #   }
    #   options = {}
    #   response = client.list_fulfillment_options(params, options)
    #   response.to_h #=>
    #   {
    #     locale: "en-US",
    #     fulfillment_options: [
    #       {
    #     "sageMakerAlgorithmFulfillmentOption" => {
    #       "fulfillmentOptionId" => fo-sampleSmAlgoId,
    #       "fulfillmentOptionVersion" => v1.0.0,
    #       "fulfillmentOptionType" => SAGEMAKER_ALGORITHM,
    #       "fulfillmentOptionDisplayName" => SageMaker Algorithm,
    #       "releaseNotes" => Bug fixes,
    #       "usageInstructions" => A zip file called train should be provided.,
    #       "recommendation" => {
    #         "recommendedBatchTransformInstanceType" => ml.m5.large,
    #         "recommendedRealtimeInferenceInstanceType" => ml.m5.large,
    #         "recommendedTrainingInstanceType" => ml.g4dn.xlarge
    #       }
    #     }
    #   }
    #     ]
    #   }
    # @example List SageMaker Model Fulfillment Options
    #   # Example operation for list_fulfillment_options
    #   params = {
    #     locale: "en-US",
    #     product_id: "prod-sampleSmModelId"
    #   }
    #   options = {}
    #   response = client.list_fulfillment_options(params, options)
    #   response.to_h #=>
    #   {
    #     locale: "en-US",
    #     fulfillment_options: [
    #       {
    #     "sageMakerModelFulfillmentOption" => {
    #       "fulfillmentOptionId" => fo-sampleSmModelId,
    #       "fulfillmentOptionVersion" => 1.2.3,
    #       "fulfillmentOptionType" => SAGEMAKER_MODEL,
    #       "fulfillmentOptionDisplayName" => SageMaker Model,
    #       "releaseNotes" => Initial release,
    #       "usageInstructions" => See Input Summary,
    #       "recommendation" => {
    #         "recommendedBatchTransformInstanceType" => ml.g5.12xlarge,
    #         "recommendedRealtimeInferenceInstanceType" => ml.g5.12xlarge
    #       },
    #       "supportedContentTypes" => [
    #         application/json,
    #         text/csv
    #       ],
    #       "supportedResponseMimeTypes" => [application/json]
    #     }
    #   }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     locale: "Locale",
    #     product_id: "ProductId", # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_fulfillment_options(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     locale: "Locale",
    #     fulfillment_options: [{ # required
    #       # One of:
    #       amazon_machine_image_fulfillment_option: {
    #         fulfillment_option_id: "String", # required
    #         fulfillment_option_name: "String", # required
    #         fulfillment_option_version: "String",
    #         fulfillment_option_type: "AMAZON_MACHINE_IMAGE" # One of: ["AMAZON_MACHINE_IMAGE", "API", "CLOUDFORMATION_TEMPLATE", "CONTAINER", "HELM", "EKS_ADD_ON", "EC2_IMAGE_BUILDER_COMPONENT", "DATA_EXCHANGE", "PROFESSIONAL_SERVICES", "SAAS", "SAGEMAKER_ALGORITHM", "SAGEMAKER_MODEL"], # required
    #         fulfillment_option_display_name: "String", # required
    #         operating_systems: [ # required
    #           {
    #             operating_system_family_name: "String", # required
    #             operating_system_name: "String", # required
    #             operating_system_version: "String"
    #           }
    #         ],
    #         recommendation: {
    #           instance_type: "String", # required
    #           security_groups: [
    #             {
    #               protocol: "String", # required
    #               from_port: 1, # required
    #               to_port: 1, # required
    #               cidr_ip_addresses: ["String"], # required
    #             }
    #           ]
    #         },
    #         release_notes: "String",
    #         usage_instructions: "String",
    #         available_from_time: Time.now,
    #         access_url_template: "String",
    #         architecture: "String", # required
    #         ami_alias: "String",
    #         ebs_volume: {
    #           volume_types: ["String"], # required
    #           iops: 1
    #         },
    #         short_description: "String"
    #       },
    #       api_fulfillment_option: {
    #         fulfillment_option_id: "String", # required
    #         fulfillment_option_type: "AMAZON_MACHINE_IMAGE" # One of: ["AMAZON_MACHINE_IMAGE", "API", "CLOUDFORMATION_TEMPLATE", "CONTAINER", "HELM", "EKS_ADD_ON", "EC2_IMAGE_BUILDER_COMPONENT", "DATA_EXCHANGE", "PROFESSIONAL_SERVICES", "SAAS", "SAGEMAKER_ALGORITHM", "SAGEMAKER_MODEL"], # required
    #         fulfillment_option_display_name: "String", # required
    #         usage_instructions: "String",
    #         aws_supported_services: [ # required
    #           {
    #             supported_service_type: "String", # required
    #             display_name: "String", # required
    #             description: "String", # required
    #           }
    #         ]
    #       },
    #       cloud_formation_fulfillment_option: {
    #         fulfillment_option_id: "String", # required
    #         fulfillment_option_name: "String", # required
    #         fulfillment_option_type: "AMAZON_MACHINE_IMAGE" # One of: ["AMAZON_MACHINE_IMAGE", "API", "CLOUDFORMATION_TEMPLATE", "CONTAINER", "HELM", "EKS_ADD_ON", "EC2_IMAGE_BUILDER_COMPONENT", "DATA_EXCHANGE", "PROFESSIONAL_SERVICES", "SAAS", "SAGEMAKER_ALGORITHM", "SAGEMAKER_MODEL"], # required
    #         fulfillment_option_display_name: "String", # required
    #         fulfillment_option_version: "String",
    #         release_notes: "String",
    #         usage_instructions: "String",
    #         available_from_time: Time.now,
    #         short_description: "String",
    #         long_description: "String"
    #       },
    #       container_fulfillment_option: {
    #         fulfillment_option_id: "String", # required
    #         fulfillment_option_name: "String", # required
    #         fulfillment_option_type: "AMAZON_MACHINE_IMAGE" # One of: ["AMAZON_MACHINE_IMAGE", "API", "CLOUDFORMATION_TEMPLATE", "CONTAINER", "HELM", "EKS_ADD_ON", "EC2_IMAGE_BUILDER_COMPONENT", "DATA_EXCHANGE", "PROFESSIONAL_SERVICES", "SAAS", "SAGEMAKER_ALGORITHM", "SAGEMAKER_MODEL"], # required
    #         fulfillment_option_display_name: "String", # required
    #         fulfillment_option_version: "String",
    #         operating_systems: [
    #           {
    #             operating_system_family_name: "String", # required
    #             operating_system_name: "String", # required
    #           }
    #         ],
    #         aws_supported_services: [
    #           {
    #             supported_service_type: "String", # required
    #             display_name: "String", # required
    #             description: "String", # required
    #           }
    #         ],
    #         release_notes: "String",
    #         usage_instructions: "String"
    #       },
    #       helm_fulfillment_option: {
    #         fulfillment_option_id: "String", # required
    #         fulfillment_option_name: "String", # required
    #         fulfillment_option_type: "AMAZON_MACHINE_IMAGE" # One of: ["AMAZON_MACHINE_IMAGE", "API", "CLOUDFORMATION_TEMPLATE", "CONTAINER", "HELM", "EKS_ADD_ON", "EC2_IMAGE_BUILDER_COMPONENT", "DATA_EXCHANGE", "PROFESSIONAL_SERVICES", "SAAS", "SAGEMAKER_ALGORITHM", "SAGEMAKER_MODEL"], # required
    #         fulfillment_option_display_name: "String", # required
    #         fulfillment_option_version: "String",
    #         operating_systems: [
    #           {
    #             operating_system_family_name: "String", # required
    #             operating_system_name: "String", # required
    #           }
    #         ],
    #         release_notes: "String",
    #         aws_supported_services: [
    #           {
    #             supported_service_type: "String", # required
    #             display_name: "String", # required
    #             description: "String", # required
    #           }
    #         ],
    #         usage_instructions: "String"
    #       },
    #       eks_add_on_fulfillment_option: {
    #         fulfillment_option_id: "String", # required
    #         fulfillment_option_name: "String", # required
    #         fulfillment_option_type: "AMAZON_MACHINE_IMAGE" # One of: ["AMAZON_MACHINE_IMAGE", "API", "CLOUDFORMATION_TEMPLATE", "CONTAINER", "HELM", "EKS_ADD_ON", "EC2_IMAGE_BUILDER_COMPONENT", "DATA_EXCHANGE", "PROFESSIONAL_SERVICES", "SAAS", "SAGEMAKER_ALGORITHM", "SAGEMAKER_MODEL"], # required
    #         fulfillment_option_display_name: "String", # required
    #         fulfillment_option_version: "String",
    #         operating_systems: [
    #           {
    #             operating_system_family_name: "String", # required
    #             operating_system_name: "String", # required
    #           }
    #         ],
    #         release_notes: "String",
    #         usage_instructions: "String",
    #         aws_supported_services: [
    #           {
    #             supported_service_type: "String", # required
    #             display_name: "String", # required
    #             description: "String", # required
    #           }
    #         ]
    #       },
    #       ec2_image_builder_component_fulfillment_option: {
    #         fulfillment_option_id: "String", # required
    #         fulfillment_option_name: "String", # required
    #         fulfillment_option_type: "AMAZON_MACHINE_IMAGE" # One of: ["AMAZON_MACHINE_IMAGE", "API", "CLOUDFORMATION_TEMPLATE", "CONTAINER", "HELM", "EKS_ADD_ON", "EC2_IMAGE_BUILDER_COMPONENT", "DATA_EXCHANGE", "PROFESSIONAL_SERVICES", "SAAS", "SAGEMAKER_ALGORITHM", "SAGEMAKER_MODEL"], # required
    #         fulfillment_option_display_name: "String", # required
    #         fulfillment_option_version: "String",
    #         operating_systems: [
    #           {
    #             operating_system_family_name: "String", # required
    #             operating_system_name: "String", # required
    #           }
    #         ],
    #         aws_supported_services: [
    #           {
    #             supported_service_type: "String", # required
    #             display_name: "String", # required
    #             description: "String", # required
    #           }
    #         ],
    #         release_notes: "String",
    #         usage_instructions: "String"
    #       },
    #       data_exchange_fulfillment_option: {
    #         fulfillment_option_id: "String", # required
    #         fulfillment_option_type: "AMAZON_MACHINE_IMAGE" # One of: ["AMAZON_MACHINE_IMAGE", "API", "CLOUDFORMATION_TEMPLATE", "CONTAINER", "HELM", "EKS_ADD_ON", "EC2_IMAGE_BUILDER_COMPONENT", "DATA_EXCHANGE", "PROFESSIONAL_SERVICES", "SAAS", "SAGEMAKER_ALGORITHM", "SAGEMAKER_MODEL"], # required
    #         fulfillment_option_display_name: "String", # required
    #         data_artifacts: [
    #           {
    #             description: "String",
    #             resource_arn: "String",
    #             resource_type: "String", # required
    #             data_classification: "String", # required
    #           }
    #         ]
    #       },
    #       professional_services_fulfillment_option: {
    #         fulfillment_option_id: "String", # required
    #         fulfillment_option_type: "AMAZON_MACHINE_IMAGE" # One of: ["AMAZON_MACHINE_IMAGE", "API", "CLOUDFORMATION_TEMPLATE", "CONTAINER", "HELM", "EKS_ADD_ON", "EC2_IMAGE_BUILDER_COMPONENT", "DATA_EXCHANGE", "PROFESSIONAL_SERVICES", "SAAS", "SAGEMAKER_ALGORITHM", "SAGEMAKER_MODEL"], # required
    #         fulfillment_option_display_name: "String", # required
    #       },
    #       saas_fulfillment_option: {
    #         fulfillment_option_id: "String", # required
    #         fulfillment_option_type: "AMAZON_MACHINE_IMAGE" # One of: ["AMAZON_MACHINE_IMAGE", "API", "CLOUDFORMATION_TEMPLATE", "CONTAINER", "HELM", "EKS_ADD_ON", "EC2_IMAGE_BUILDER_COMPONENT", "DATA_EXCHANGE", "PROFESSIONAL_SERVICES", "SAAS", "SAGEMAKER_ALGORITHM", "SAGEMAKER_MODEL"], # required
    #         fulfillment_option_display_name: "String", # required
    #         fulfillment_url: "String",
    #         usage_instructions: "String",
    #         available_from_time: Time.now,
    #         launch_url: "URL",
    #         quick_launch: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #       },
    #       sage_maker_algorithm_fulfillment_option: {
    #         fulfillment_option_id: "String", # required
    #         fulfillment_option_type: "AMAZON_MACHINE_IMAGE" # One of: ["AMAZON_MACHINE_IMAGE", "API", "CLOUDFORMATION_TEMPLATE", "CONTAINER", "HELM", "EKS_ADD_ON", "EC2_IMAGE_BUILDER_COMPONENT", "DATA_EXCHANGE", "PROFESSIONAL_SERVICES", "SAAS", "SAGEMAKER_ALGORITHM", "SAGEMAKER_MODEL"], # required
    #         fulfillment_option_display_name: "String", # required
    #         fulfillment_option_version: "String",
    #         release_notes: "String",
    #         usage_instructions: "String",
    #         recommendation: {
    #           recommended_batch_transform_instance_type: "String", # required
    #           recommended_realtime_inference_instance_type: "String",
    #           recommended_training_instance_type: "String", # required
    #         }
    #       },
    #       sage_maker_model_fulfillment_option: {
    #         fulfillment_option_id: "String", # required
    #         fulfillment_option_type: "AMAZON_MACHINE_IMAGE" # One of: ["AMAZON_MACHINE_IMAGE", "API", "CLOUDFORMATION_TEMPLATE", "CONTAINER", "HELM", "EKS_ADD_ON", "EC2_IMAGE_BUILDER_COMPONENT", "DATA_EXCHANGE", "PROFESSIONAL_SERVICES", "SAAS", "SAGEMAKER_ALGORITHM", "SAGEMAKER_MODEL"], # required
    #         fulfillment_option_display_name: "String", # required
    #         fulfillment_option_version: "String",
    #         release_notes: "String",
    #         usage_instructions: "String",
    #         recommendation: {
    #           recommended_batch_transform_instance_type: "String", # required
    #           recommended_realtime_inference_instance_type: "String"
    #         },
    #         supported_content_types: ["String"],
    #         supported_response_mime_types: ["String"]
    #       }
    #     }],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListFulfillmentOptionsOutput]
    def list_fulfillment_options(params = {}, options = {})
      request = build_request(:list_fulfillment_options, params)
      request.send_request(options)
    end

    # <p>Returns the purchase options (offers and offer sets) available to the buyer. You can filter results by product, seller, purchase option type, visibility scope, and availability status.</p> <note> <p>You must include at least one of the following filters in the request: a <code>PRODUCT_ID</code> filter to specify the product for which to retrieve purchase options, or a <code>VISIBILITY_SCOPE</code> filter to retrieve purchase options by visibility.</p> </note>
    # @param [Hash, Types::ListPurchaseOptionsInput] params
    # @option params [String] :locale
    #   <p>A BCP 47 language tag or comma-separated priority list specifying the preferred locale for response content. See <code>Locale</code> for supported values, constraints, fallback behavior, and the default locale. If omitted, the service returns content in the default locale.</p>
    # @option params [Array<Types::PurchaseOptionFilter>] :filters
    #   <p>Filters to narrow the results. Multiple filters are combined with AND logic. Multiple values within the same filter are combined with OR logic.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results that are returned per call. You can use <code>nextToken</code> to get more results.</p>
    # @option params [String] :next_token
    #   <p>If <code>nextToken</code> is returned, there are more results available. Make the call again using the returned token to retrieve the next page.</p>
    # @example Filter by Product ID
    #   # Example operation for list_purchase_options
    #   params = {
    #     locale: "en-US",
    #     filters: [
    #       {
    #         filter_type: PRODUCT_ID,
    #         filter_values: [
    #           "prod-sampleOfferId"
    #         ]
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.list_purchase_options(params, options)
    #   response.to_h #=>
    #   {
    #     purchase_options: [
    #       {
    #         purchase_option_id: "offer-sampleOfferId",
    #         catalog: "AWS_MARKETPLACE",
    #         purchase_option_type: OFFER,
    #         purchase_option_name: "sample offer",
    #         available_from_time: Time.parse("2021-12-15T00:00:00.000Z"),
    #         seller_of_record: {
    #           seller_profile_id: "seller-sampleOfferId",
    #           display_name: "sample offer seller"
    #         },
    #         badges: [
    #         ],
    #         associated_entities: [
    #           {
    #             product: {
    #               product_id: "prod-sampleOfferId",
    #               product_name: "sample offer product",
    #               manufacturer: {
    #                 seller_profile_id: "seller-sampleOfferId",
    #                 display_name: "sample offer seller"
    #               }
    #             },
    #             offer: {
    #               offer_id: "offer-sampleOfferId",
    #               seller_of_record: {
    #                 seller_profile_id: "seller-sampleOfferId",
    #                 display_name: "sample offer seller"
    #               }
    #             }
    #           }
    #         ]
    #       }
    #     ]
    #   }
    # @example Filter by Seller with Private Offerset
    #   # Example operation for list_purchase_options
    #   params = {
    #     locale: "en-US",
    #     filters: [
    #       {
    #         filter_type: SELLER_OF_RECORD_PROFILE_ID,
    #         filter_values: [
    #           "seller-sampleResellerId"
    #         ]
    #       },
    #       {
    #         filter_type: PURCHASE_OPTION_TYPE,
    #         filter_values: [
    #           "OFFERSET"
    #         ]
    #       },
    #       {
    #         filter_type: VISIBILITY_SCOPE,
    #         filter_values: [
    #           "PRIVATE"
    #         ]
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.list_purchase_options(params, options)
    #   response.to_h #=>
    #   {
    #     purchase_options: [
    #       {
    #         purchase_option_id: "offerset-sampleId",
    #         catalog: "AWS_MARKETPLACE",
    #         purchase_option_type: OFFERSET,
    #         purchase_option_name: "sample offerset",
    #         available_from_time: Time.parse("2024-03-20T00:00:00.000Z"),
    #         expiration_time: Time.parse("2025-03-20T00:00:00.000Z"),
    #         seller_of_record: {
    #           seller_profile_id: "seller-sampleResellerId",
    #           display_name: "sample reseller"
    #         },
    #         badges: [
    #           {
    #             display_name: "Private Pricing",
    #             badge_type: PRIVATE_PRICING
    #           }
    #         ],
    #         associated_entities: [
    #           {
    #             product: {
    #               product_id: "prod-sampleId1",
    #               product_name: "sample product name 1",
    #               manufacturer: {
    #                 seller_profile_id: "seller-sampleId1",
    #                 display_name: "sample seller name 1"
    #               }
    #             },
    #             offer: {
    #               offer_id: "offer-sampleId1",
    #               seller_of_record: {
    #                 seller_profile_id: "seller-sampleResellerId",
    #                 display_name: "sample reseller"
    #               }
    #             }
    #           },
    #           {
    #             product: {
    #               product_id: "prod-sampleId2",
    #               product_name: "sample product name 2",
    #               manufacturer: {
    #                 seller_profile_id: "seller-sampleId2",
    #                 display_name: "sample seller name 2"
    #               }
    #             },
    #             offer: {
    #               offer_id: "offer-sampleId2",
    #               seller_of_record: {
    #                 seller_profile_id: "seller-sampleResellerId",
    #                 display_name: "sample reseller"
    #               }
    #             }
    #           }
    #         ]
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     locale: "Locale",
    #     filters: [
    #       {
    #         filter_type: "PRODUCT_ID" # One of: ["PRODUCT_ID", "SELLER_OF_RECORD_PROFILE_ID", "PURCHASE_OPTION_TYPE", "VISIBILITY_SCOPE", "AVAILABILITY_STATUS"], # required
    #         filter_values: ["PurchaseOptionFilterValue"], # required
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_purchase_options(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     purchase_options: [
    #       {
    #         purchase_option_id: "NonEmptyString", # required
    #         catalog: "Catalog", # required
    #         purchase_option_type: "OFFER" # One of: ["OFFER", "OFFERSET"], # required
    #         purchase_option_name: "NonEmptyString",
    #         available_from_time: Time.now,
    #         expiration_time: Time.now,
    #         seller_of_record: { # required
    #           seller_profile_id: "SellerProfileId", # required
    #           display_name: "NonEmptyString", # required
    #         },
    #         badges: [
    #           {
    #             display_name: "NonEmptyString", # required
    #             badge_type: "PRIVATE_PRICING" # One of: ["PRIVATE_PRICING", "FUTURE_DATED", "REPLACEMENT_OFFER", "AUTO_RENEW"], # required
    #           }
    #         ],
    #         associated_entities: [ # required
    #           {
    #             product: { # required
    #               product_id: "ProductId", # required
    #               product_name: "NonEmptyString", # required
    #               manufacturer: { # required
    #                 seller_profile_id: "SellerProfileId", # required
    #                 display_name: "NonEmptyString", # required
    #               }
    #             },
    #             offer: { # required
    #               offer_id: "OfferId", # required
    #               offer_name: "NullableString",
    #               seller_of_record: { # required
    #                 seller_profile_id: "SellerProfileId", # required
    #                 display_name: "NonEmptyString", # required
    #               }
    #             },
    #             offer_set: {
    #               offer_set_id: "OfferSetId", # required
    #               seller_of_record: { # required
    #                 seller_profile_id: "SellerProfileId", # required
    #                 display_name: "NonEmptyString", # required
    #               }
    #             }
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListPurchaseOptionsOutput]
    def list_purchase_options(params = {}, options = {})
      request = build_request(:list_purchase_options, params)
      request.send_request(options)
    end

    # <p>Returns available facet values for filtering listings, such as categories, pricing models, fulfillment option types, publishers, and customer ratings. Each facet value includes a count of matching listings.</p>
    # @param [Hash, Types::SearchFacetsInput] params
    # @option params [String] :locale
    #   <p>A BCP 47 language tag or comma-separated priority list specifying the preferred locale for response content. See <code>Locale</code> for supported values, constraints, fallback behavior, and the default locale. If omitted, the service returns content in the default locale.</p>
    # @option params [String] :search_text
    #   <p>The search query text to filter listings before retrieving facets.</p>
    # @option params [Array<Types::SearchFilter>] :filters
    #   <p>Filters to apply before retrieving facets. Multiple filters are combined with AND logic. Multiple values within the same filter are combined with OR logic.</p>
    # @option params [Array<String>] :facet_types
    #   <p>A list of specific facet types to retrieve. If empty or null, all available facets are returned.</p>
    # @option params [String] :next_token
    #   <p>If <code>nextToken</code> is returned, there are more results available. Make the call again using the returned token to retrieve the next page.</p>
    # @example Get facets for machine learning category
    #   # Retrieve available facet values for listings in the machine learning category
    #   params = {
    #     locale: "en-US",
    #     search_text: "analytics",
    #     filters: [
    #       {
    #         filter_type: CATEGORY,
    #         filter_values: [
    #           "machine-learning"
    #         ]
    #       }
    #     ],
    #     facet_types: [
    #       FULFILLMENT_OPTION_TYPE,
    #       PRICING_MODEL
    #     ]
    #   }
    #   options = {}
    #   response = client.search_facets(params, options)
    #   response.to_h #=>
    #   {
    #     total_results: 450,
    #     listing_facets: {
    #       "FULFILLMENT_OPTION_TYPE" => [
    #         {
    #           value: "SAAS",
    #           display_name: "SaaS",
    #           count: 250
    #         },
    #         {
    #           value: "CONTAINER",
    #           display_name: "Container",
    #           count: 120
    #         },
    #         {
    #           value: "SAGEMAKER_ALGORITHM",
    #           display_name: "SageMaker Algorithm",
    #           count: 80
    #         }
    #       ],
    #       "PRICING_MODEL" => [
    #         {
    #           value: "USAGE",
    #           display_name: "Usage-Based",
    #           count: 300
    #         },
    #         {
    #           value: "FREE",
    #           display_name: "Free",
    #           count: 100
    #         },
    #         {
    #           value: "CONTRACT",
    #           display_name: "Upfront Commitment",
    #           count: 50
    #         }
    #       ]
    #     }
    #   }
    # @example Get facets with term and rating range filters
    #   # Retrieve facets for security listings with ratings between 3.0 and 5.0 stars
    #   params = {
    #     locale: "en-US",
    #     filters: [
    #       {
    #         filter_type: CATEGORY,
    #         filter_values: [
    #           "security"
    #         ]
    #       },
    #       {
    #         filter_type: MIN_AVERAGE_CUSTOMER_RATING,
    #         filter_values: [
    #           "3.0"
    #         ]
    #       },
    #       {
    #         filter_type: MAX_AVERAGE_CUSTOMER_RATING,
    #         filter_values: [
    #           "5.0"
    #         ]
    #       }
    #     ],
    #     facet_types: [
    #       PRICING_MODEL,
    #       AVERAGE_CUSTOMER_RATING
    #     ]
    #   }
    #   options = {}
    #   response = client.search_facets(params, options)
    #   response.to_h #=>
    #   {
    #     total_results: 85,
    #     listing_facets: {
    #       "PRICING_MODEL" => [
    #         {
    #           value: "USAGE",
    #           display_name: "Usage-Based",
    #           count: 50
    #         },
    #         {
    #           value: "FREE",
    #           display_name: "Free",
    #           count: 35
    #         }
    #       ],
    #       "AVERAGE_CUSTOMER_RATING" => [
    #         {
    #           value: "5.0",
    #           display_name: "5.0",
    #           count: 30
    #         },
    #         {
    #           value: "4.0",
    #           display_name: "4.0",
    #           count: 35
    #         },
    #         {
    #           value: "3.0",
    #           display_name: "3.0",
    #           count: 20
    #         }
    #       ]
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     locale: "Locale",
    #     search_text: "SearchText",
    #     filters: [
    #       {
    #         filter_type: "MIN_AVERAGE_CUSTOMER_RATING" # One of: ["MIN_AVERAGE_CUSTOMER_RATING", "MAX_AVERAGE_CUSTOMER_RATING", "CATEGORY", "PUBLISHER", "FULFILLMENT_OPTION_TYPE", "PRICING_MODEL", "PRICING_UNIT", "DEPLOYED_ON_AWS", "NUMBER_OF_PRODUCTS"], # required
    #         filter_values: ["SearchFilterValue"], # required
    #       }
    #     ],
    #     facet_types: ["AVERAGE_CUSTOMER_RATING" # One of: ["AVERAGE_CUSTOMER_RATING", "CATEGORY", "PUBLISHER", "FULFILLMENT_OPTION_TYPE", "PRICING_MODEL", "PRICING_UNIT", "DEPLOYED_ON_AWS", "NUMBER_OF_PRODUCTS"]],
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.search_facets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     total_results: 1, # required
    #     listing_facets: { # required
    #       "SearchFacetType" => [
    #         {
    #           value: "NonEmptyString", # required
    #           display_name: "NonEmptyString", # required
    #           parent: "NullableString",
    #           count: 1, # required
    #         }
    #       ]
    #     },
    #     next_token: "NextToken"
    #   }
    # @return [Types::SearchFacetsOutput]
    def search_facets(params = {}, options = {})
      request = build_request(:search_facets, params)
      request.send_request(options)
    end

    # <p>Returns a list of product listings based on search criteria and filters. You can search by keyword, filter by category, pricing model, fulfillment type, and other attributes, and sort results by relevance or customer rating.</p>
    # @param [Hash, Types::SearchListingsInput] params
    # @option params [String] :locale
    #   <p>A BCP 47 language tag or comma-separated priority list specifying the preferred locale for response content. See <code>Locale</code> for supported values, constraints, fallback behavior, and the default locale. If omitted, the service returns content in the default locale.</p>
    # @option params [String] :search_text
    #   <p>The search query text to find relevant listings.</p>
    # @option params [Array<Types::SearchFilter>] :filters
    #   <p>Filters to narrow search results. Multiple filters are combined with AND logic. Multiple values within the same filter are combined with OR logic.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results that are returned per call. You can use <code>nextToken</code> to get more results.</p>
    # @option params [String] :sort_by
    #   <p>The field to sort results by. Valid values are <code>RELEVANCE</code> and <code>AVERAGE_CUSTOMER_RATING</code>.</p>
    # @option params [String] :sort_order
    #   <p>The sort direction. Valid values are <code>DESCENDING</code> and <code>ASCENDING</code>.</p>
    # @option params [String] :next_token
    #   <p>If <code>nextToken</code> is returned, there are more results available. Make the call again using the returned token to retrieve the next page.</p>
    # @example Search for machine learning listings
    #   # Search for SaaS listings in the machine learning category with sorting by relevance
    #   params = {
    #     locale: "en-US",
    #     search_text: "computer vision",
    #     filters: [
    #       {
    #         filter_type: CATEGORY,
    #         filter_values: [
    #           "machine-learning"
    #         ]
    #       },
    #       {
    #         filter_type: FULFILLMENT_OPTION_TYPE,
    #         filter_values: [
    #           "SAAS"
    #         ]
    #       }
    #     ],
    #     max_results: 25,
    #     sort_by: RELEVANCE,
    #     sort_order: DESCENDING
    #   }
    #   options = {}
    #   response = client.search_listings(params, options)
    #   response.to_h #=>
    #   {
    #     total_results: 1250,
    #     listing_summaries: [
    #       {
    #         listing_id: "prodview-sampleSearchId",
    #         catalog: "AWSMarketplace",
    #         listing_name: "sample search listing",
    #         short_description: "Advanced computer vision solution for object detection and classification.",
    #         logo_thumbnail_url: "https://awsmp-logos.s3.amazonaws.com/product-logos/ai-vision-pro.png",
    #         categories: [
    #           {
    #             category_id: "machine-learning",
    #             display_name: "Machine Learning"
    #           }
    #         ],
    #         fulfillment_option_summaries: [
    #           {
    #             fulfillment_option_type: SAAS,
    #             display_name: "SaaS"
    #           }
    #         ],
    #         badges: [
    #           {
    #             badge_type: FREE_TRIAL,
    #             display_name: "Free Trial"
    #           }
    #         ],
    #         review_summary: {
    #           review_source_summaries: [
    #             {
    #               source_name: "AWS Marketplace",
    #               source_id: AWS_MARKETPLACE,
    #               average_rating: "4.5",
    #               total_reviews: 100
    #             }
    #           ]
    #         },
    #         publisher: {
    #           seller_profile_id: "seller-sampleSearchId",
    #           display_name: "sample search seller"
    #         },
    #         pricing_models: [
    #           {
    #             pricing_model_type: USAGE,
    #             display_name: "Usage"
    #           }
    #         ],
    #         pricing_units: [
    #           {
    #             pricing_unit_type: REQUESTS,
    #             display_name: "Requests"
    #           }
    #         ],
    #         associated_entities: [
    #           {
    #             product: {
    #               product_id: "prod-sampleSearchId",
    #               product_name: "sample search product",
    #               manufacturer: {
    #                 seller_profile_id: "seller-sampleSearchId",
    #                 display_name: "sample search seller"
    #               }
    #             }
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "eyJsYXN0RXZhbHVhdGVkS2V5Ijp7Imxpc3RpbmdJZCI6InByb2R2aWV3LXNhbXBsZVNlYXJjaElkIn19"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     locale: "Locale",
    #     search_text: "SearchText",
    #     filters: [
    #       {
    #         filter_type: "MIN_AVERAGE_CUSTOMER_RATING" # One of: ["MIN_AVERAGE_CUSTOMER_RATING", "MAX_AVERAGE_CUSTOMER_RATING", "CATEGORY", "PUBLISHER", "FULFILLMENT_OPTION_TYPE", "PRICING_MODEL", "PRICING_UNIT", "DEPLOYED_ON_AWS", "NUMBER_OF_PRODUCTS"], # required
    #         filter_values: ["SearchFilterValue"], # required
    #       }
    #     ],
    #     max_results: 1,
    #     sort_by: "RELEVANCE" # One of: ["RELEVANCE", "AVERAGE_CUSTOMER_RATING"],
    #     sort_order: "DESCENDING" # One of: ["DESCENDING", "ASCENDING"],
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.search_listings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     total_results: 1, # required
    #     listing_summaries: [ # required
    #       {
    #         listing_id: "ListingId", # required
    #         listing_name: "NonEmptyString", # required
    #         publisher: { # required
    #           seller_profile_id: "SellerProfileId", # required
    #           display_name: "NonEmptyString", # required
    #         },
    #         fulfillment_option_summaries: [ # required
    #           {
    #             fulfillment_option_type: "AMAZON_MACHINE_IMAGE" # One of: ["AMAZON_MACHINE_IMAGE", "API", "CLOUDFORMATION_TEMPLATE", "CONTAINER", "HELM", "EKS_ADD_ON", "EC2_IMAGE_BUILDER_COMPONENT", "DATA_EXCHANGE", "PROFESSIONAL_SERVICES", "SAAS", "SAGEMAKER_ALGORITHM", "SAGEMAKER_MODEL"], # required
    #             display_name: "NonEmptyString", # required
    #           }
    #         ],
    #         catalog: "Catalog", # required
    #         short_description: "NonEmptyString", # required
    #         logo_thumbnail_url: "URL", # required
    #         categories: [ # required
    #           {
    #             category_id: "NonEmptyString", # required
    #             display_name: "NonEmptyString", # required
    #           }
    #         ],
    #         badges: [ # required
    #           {
    #             display_name: "NonEmptyString", # required
    #             badge_type: "AWS_FREE_TIER" # One of: ["AWS_FREE_TIER", "FREE_TRIAL", "DEPLOYED_ON_AWS", "QUICK_LAUNCH", "MULTI_PRODUCT"], # required
    #           }
    #         ],
    #         review_summary: { # required
    #           review_source_summaries: [ # required
    #             {
    #               source_name: "NonEmptyString", # required
    #               source_id: "AWS_MARKETPLACE" # One of: ["AWS_MARKETPLACE"], # required
    #               source_url: "URL",
    #               average_rating: "NonEmptyString", # required
    #               total_reviews: 1, # required
    #             }
    #           ]
    #         },
    #         pricing_models: [ # required
    #           {
    #             pricing_model_type: "USAGE" # One of: ["USAGE", "CONTRACT", "BYOL", "FREE"], # required
    #             display_name: "NonEmptyString", # required
    #           }
    #         ],
    #         pricing_units: [ # required
    #           {
    #             pricing_unit_type: "USERS" # One of: ["USERS", "HOSTS", "BANDWIDTH", "DATA", "TIERS", "REQUESTS", "UNITS"], # required
    #             display_name: "NonEmptyString", # required
    #           }
    #         ],
    #         associated_entities: [ # required
    #           {
    #             product: {
    #               product_id: "ProductId", # required
    #               product_name: "NonEmptyString", # required
    #               manufacturer: { # required
    #                 seller_profile_id: "SellerProfileId", # required
    #                 display_name: "NonEmptyString", # required
    #               }
    #             }
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::SearchListingsOutput]
    def search_listings(params = {}, options = {})
      request = build_request(:search_listings, params)
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
      context[:gem_name] = 'aws-sdk-marketplacediscovery'
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
