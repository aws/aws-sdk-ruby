# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'seahorse/client/plugins/content_length.rb'
require 'aws-sdk-core/plugins/credentials_configuration.rb'
require 'aws-sdk-core/plugins/logging.rb'
require 'aws-sdk-core/plugins/param_converter.rb'
require 'aws-sdk-core/plugins/param_validator.rb'
require 'aws-sdk-core/plugins/user_agent.rb'
require 'aws-sdk-core/plugins/helpful_socket_errors.rb'
require 'aws-sdk-core/plugins/retry_errors.rb'
require 'aws-sdk-core/plugins/global_configuration.rb'
require 'aws-sdk-core/plugins/regional_endpoint.rb'
require 'aws-sdk-core/plugins/response_paging.rb'
require 'aws-sdk-core/plugins/stub_responses.rb'
require 'aws-sdk-core/plugins/idempotency_token.rb'
require 'aws-sdk-core/plugins/jsonvalue_converter.rb'
require 'aws-sdk-core/plugins/client_metrics_plugin.rb'
require 'aws-sdk-core/plugins/client_metrics_send_plugin.rb'
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/rest_xml.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:cloudfront)

module Aws::CloudFront
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :cloudfront

    set_api(ClientApi::API)

    add_plugin(Seahorse::Client::Plugins::ContentLength)
    add_plugin(Aws::Plugins::CredentialsConfiguration)
    add_plugin(Aws::Plugins::Logging)
    add_plugin(Aws::Plugins::ParamConverter)
    add_plugin(Aws::Plugins::ParamValidator)
    add_plugin(Aws::Plugins::UserAgent)
    add_plugin(Aws::Plugins::HelpfulSocketErrors)
    add_plugin(Aws::Plugins::RetryErrors)
    add_plugin(Aws::Plugins::GlobalConfiguration)
    add_plugin(Aws::Plugins::RegionalEndpoint)
    add_plugin(Aws::Plugins::ResponsePaging)
    add_plugin(Aws::Plugins::StubResponses)
    add_plugin(Aws::Plugins::IdempotencyToken)
    add_plugin(Aws::Plugins::JsonvalueConverter)
    add_plugin(Aws::Plugins::ClientMetricsPlugin)
    add_plugin(Aws::Plugins::ClientMetricsSendPlugin)
    add_plugin(Aws::Plugins::SignatureV4)
    add_plugin(Aws::Plugins::Protocols::RestXml)

    # @option options [required, Aws::CredentialProvider] :credentials
    #   Your AWS credentials. This can be an instance of any one of the
    #   following classes:
    #
    #   * `Aws::Credentials` - Used for configuring static, non-refreshing
    #     credentials.
    #
    #   * `Aws::InstanceProfileCredentials` - Used for loading credentials
    #     from an EC2 IMDS on an EC2 instance.
    #
    #   * `Aws::SharedCredentials` - Used for loading credentials from a
    #     shared file, such as `~/.aws/config`.
    #
    #   * `Aws::AssumeRoleCredentials` - Used when you need to assume a role.
    #
    #   When `:credentials` are not configured directly, the following
    #   locations will be searched for credentials:
    #
    #   * `Aws.config[:credentials]`
    #   * The `:access_key_id`, `:secret_access_key`, and `:session_token` options.
    #   * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY']
    #   * `~/.aws/credentials`
    #   * `~/.aws/config`
    #   * EC2 IMDS instance profile - When used by default, the timeouts are
    #     very aggressive. Construct and pass an instance of
    #     `Aws::InstanceProfileCredentails` to enable retries and extended
    #     timeouts.
    #
    # @option options [required, String] :region
    #   The AWS region to connect to.  The configured `:region` is
    #   used to determine the service `:endpoint`. When not passed,
    #   a default `:region` is search for in the following locations:
    #
    #   * `Aws.config[:region]`
    #   * `ENV['AWS_REGION']`
    #   * `ENV['AMAZON_REGION']`
    #   * `ENV['AWS_DEFAULT_REGION']`
    #   * `~/.aws/credentials`
    #   * `~/.aws/config`
    #
    # @option options [String] :access_key_id
    #
    # @option options [] :client_side_monitoring (false)
    #   When `true`, client-side metrics will be collected for all API requests from
    #   this client.
    #
    # @option options [] :client_side_monitoring_client_id ("")
    #   Allows you to provide an identifier for this client which will be attached to
    #   all generated client side metrics. Defaults to an empty string.
    #
    # @option options [] :client_side_monitoring_port (31000)
    #   Required for publishing client metrics. The port that the client side monitoring
    #   agent is running on, where client metrics will be published via UDP.
    #
    # @option options [] :client_side_monitoring_publisher (Aws::ClientSideMonitoring::Publisher)
    #   Allows you to provide a custom client-side monitoring publisher class. By default,
    #   will use the Client Side Monitoring Agent Publisher.
    #
    # @option options [Boolean] :convert_params (true)
    #   When `true`, an attempt is made to coerce request parameters into
    #   the required types.
    #
    # @option options [String] :endpoint
    #   The client endpoint is normally constructed from the `:region`
    #   option. You should only configure an `:endpoint` when connecting
    #   to test endpoints. This should be avalid HTTP(S) URI.
    #
    # @option options [Aws::Log::Formatter] :log_formatter (Aws::Log::Formatter.default)
    #   The log formatter.
    #
    # @option options [Symbol] :log_level (:info)
    #   The log level to send messages to the `:logger` at.
    #
    # @option options [Logger] :logger
    #   The Logger instance to send log messages to.  If this option
    #   is not set, logging will be disabled.
    #
    # @option options [String] :profile ("default")
    #   Used when loading credentials from the shared credentials file
    #   at HOME/.aws/credentials.  When not specified, 'default' is used.
    #
    # @option options [Float] :retry_base_delay (0.3)
    #   The base delay in seconds used by the default backoff function.
    #
    # @option options [Symbol] :retry_jitter (:none)
    #   A delay randomiser function used by the default backoff function. Some predefined functions can be referenced by name - :none, :equal, :full, otherwise a Proc that takes and returns a number.
    #
    #   @see https://www.awsarchitectureblog.com/2015/03/backoff.html
    #
    # @option options [Integer] :retry_limit (3)
    #   The maximum number of times to retry failed requests.  Only
    #   ~ 500 level server errors and certain ~ 400 level client errors
    #   are retried.  Generally, these are throttling errors, data
    #   checksum errors, networking errors, timeout errors and auth
    #   errors from expired credentials.
    #
    # @option options [Integer] :retry_max_delay (0)
    #   The maximum number of seconds to delay between retries (0 for no limit) used by the default backoff function.
    #
    # @option options [String] :secret_access_key
    #
    # @option options [String] :session_token
    #
    # @option options [Boolean] :stub_responses (false)
    #   Causes the client to return stubbed responses. By default
    #   fake responses are generated and returned. You can specify
    #   the response data to return or errors to raise by calling
    #   {ClientStubs#stub_responses}. See {ClientStubs} for more information.
    #
    #   ** Please note ** When response stubbing is enabled, no HTTP
    #   requests are made, and retries are disabled.
    #
    # @option options [Boolean] :validate_params (true)
    #   When `true`, request parameters are validated before
    #   sending the request.
    #
    def initialize(*args)
      super
    end

    # @!group API Operations

    # Creates a new origin access identity. If you're using Amazon S3 for
    # your origin, you can use an origin access identity to require users to
    # access your content using a CloudFront URL instead of the Amazon S3
    # URL. For more information about how to use origin access identities,
    # see [Serving Private Content through CloudFront][1] in the *Amazon
    # CloudFront Developer Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html
    #
    # @option params [required, Types::CloudFrontOriginAccessIdentityConfig] :cloud_front_origin_access_identity_config
    #   The current configuration information for the identity.
    #
    # @return [Types::CreateCloudFrontOriginAccessIdentityResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateCloudFrontOriginAccessIdentityResult#cloud_front_origin_access_identity #cloud_front_origin_access_identity} => Types::CloudFrontOriginAccessIdentity
    #   * {Types::CreateCloudFrontOriginAccessIdentityResult#location #location} => String
    #   * {Types::CreateCloudFrontOriginAccessIdentityResult#etag #etag} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_cloud_front_origin_access_identity({
    #     cloud_front_origin_access_identity_config: { # required
    #       caller_reference: "string", # required
    #       comment: "string", # required
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.cloud_front_origin_access_identity.id #=> String
    #   resp.cloud_front_origin_access_identity.s3_canonical_user_id #=> String
    #   resp.cloud_front_origin_access_identity.cloud_front_origin_access_identity_config.caller_reference #=> String
    #   resp.cloud_front_origin_access_identity.cloud_front_origin_access_identity_config.comment #=> String
    #   resp.location #=> String
    #   resp.etag #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/CreateCloudFrontOriginAccessIdentity2018_06_18 AWS API Documentation
    #
    # @overload create_cloud_front_origin_access_identity(params = {})
    # @param [Hash] params ({})
    def create_cloud_front_origin_access_identity(params = {}, options = {})
      req = build_request(:create_cloud_front_origin_access_identity, params)
      req.send_request(options)
    end

    # Creates a new web distribution. Send a `POST` request to the
    # `/CloudFront API version/distribution`/`distribution ID` resource.
    #
    # @option params [required, Types::DistributionConfig] :distribution_config
    #   The distribution's configuration information.
    #
    # @return [Types::CreateDistributionResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDistributionResult#distribution #distribution} => Types::Distribution
    #   * {Types::CreateDistributionResult#location #location} => String
    #   * {Types::CreateDistributionResult#etag #etag} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_distribution({
    #     distribution_config: { # required
    #       caller_reference: "string", # required
    #       aliases: {
    #         quantity: 1, # required
    #         items: ["string"],
    #       },
    #       default_root_object: "string",
    #       origins: { # required
    #         quantity: 1, # required
    #         items: [
    #           {
    #             id: "string", # required
    #             domain_name: "string", # required
    #             origin_path: "string",
    #             custom_headers: {
    #               quantity: 1, # required
    #               items: [
    #                 {
    #                   header_name: "string", # required
    #                   header_value: "string", # required
    #                 },
    #               ],
    #             },
    #             s3_origin_config: {
    #               origin_access_identity: "string", # required
    #             },
    #             custom_origin_config: {
    #               http_port: 1, # required
    #               https_port: 1, # required
    #               origin_protocol_policy: "http-only", # required, accepts http-only, match-viewer, https-only
    #               origin_ssl_protocols: {
    #                 quantity: 1, # required
    #                 items: ["SSLv3"], # required, accepts SSLv3, TLSv1, TLSv1.1, TLSv1.2
    #               },
    #               origin_read_timeout: 1,
    #               origin_keepalive_timeout: 1,
    #             },
    #           },
    #         ],
    #       },
    #       default_cache_behavior: { # required
    #         target_origin_id: "string", # required
    #         forwarded_values: { # required
    #           query_string: false, # required
    #           cookies: { # required
    #             forward: "none", # required, accepts none, whitelist, all
    #             whitelisted_names: {
    #               quantity: 1, # required
    #               items: ["string"],
    #             },
    #           },
    #           headers: {
    #             quantity: 1, # required
    #             items: ["string"],
    #           },
    #           query_string_cache_keys: {
    #             quantity: 1, # required
    #             items: ["string"],
    #           },
    #         },
    #         trusted_signers: { # required
    #           enabled: false, # required
    #           quantity: 1, # required
    #           items: ["string"],
    #         },
    #         viewer_protocol_policy: "allow-all", # required, accepts allow-all, https-only, redirect-to-https
    #         min_ttl: 1, # required
    #         allowed_methods: {
    #           quantity: 1, # required
    #           items: ["GET"], # required, accepts GET, HEAD, POST, PUT, PATCH, OPTIONS, DELETE
    #           cached_methods: {
    #             quantity: 1, # required
    #             items: ["GET"], # required, accepts GET, HEAD, POST, PUT, PATCH, OPTIONS, DELETE
    #           },
    #         },
    #         smooth_streaming: false,
    #         default_ttl: 1,
    #         max_ttl: 1,
    #         compress: false,
    #         lambda_function_associations: {
    #           quantity: 1, # required
    #           items: [
    #             {
    #               lambda_function_arn: "LambdaFunctionARN", # required
    #               event_type: "viewer-request", # required, accepts viewer-request, viewer-response, origin-request, origin-response
    #               include_body: false,
    #             },
    #           ],
    #         },
    #         field_level_encryption_id: "string",
    #       },
    #       cache_behaviors: {
    #         quantity: 1, # required
    #         items: [
    #           {
    #             path_pattern: "string", # required
    #             target_origin_id: "string", # required
    #             forwarded_values: { # required
    #               query_string: false, # required
    #               cookies: { # required
    #                 forward: "none", # required, accepts none, whitelist, all
    #                 whitelisted_names: {
    #                   quantity: 1, # required
    #                   items: ["string"],
    #                 },
    #               },
    #               headers: {
    #                 quantity: 1, # required
    #                 items: ["string"],
    #               },
    #               query_string_cache_keys: {
    #                 quantity: 1, # required
    #                 items: ["string"],
    #               },
    #             },
    #             trusted_signers: { # required
    #               enabled: false, # required
    #               quantity: 1, # required
    #               items: ["string"],
    #             },
    #             viewer_protocol_policy: "allow-all", # required, accepts allow-all, https-only, redirect-to-https
    #             min_ttl: 1, # required
    #             allowed_methods: {
    #               quantity: 1, # required
    #               items: ["GET"], # required, accepts GET, HEAD, POST, PUT, PATCH, OPTIONS, DELETE
    #               cached_methods: {
    #                 quantity: 1, # required
    #                 items: ["GET"], # required, accepts GET, HEAD, POST, PUT, PATCH, OPTIONS, DELETE
    #               },
    #             },
    #             smooth_streaming: false,
    #             default_ttl: 1,
    #             max_ttl: 1,
    #             compress: false,
    #             lambda_function_associations: {
    #               quantity: 1, # required
    #               items: [
    #                 {
    #                   lambda_function_arn: "LambdaFunctionARN", # required
    #                   event_type: "viewer-request", # required, accepts viewer-request, viewer-response, origin-request, origin-response
    #                   include_body: false,
    #                 },
    #               ],
    #             },
    #             field_level_encryption_id: "string",
    #           },
    #         ],
    #       },
    #       custom_error_responses: {
    #         quantity: 1, # required
    #         items: [
    #           {
    #             error_code: 1, # required
    #             response_page_path: "string",
    #             response_code: "string",
    #             error_caching_min_ttl: 1,
    #           },
    #         ],
    #       },
    #       comment: "string", # required
    #       logging: {
    #         enabled: false, # required
    #         include_cookies: false, # required
    #         bucket: "string", # required
    #         prefix: "string", # required
    #       },
    #       price_class: "PriceClass_100", # accepts PriceClass_100, PriceClass_200, PriceClass_All
    #       enabled: false, # required
    #       viewer_certificate: {
    #         cloud_front_default_certificate: false,
    #         iam_certificate_id: "string",
    #         acm_certificate_arn: "string",
    #         ssl_support_method: "sni-only", # accepts sni-only, vip
    #         minimum_protocol_version: "SSLv3", # accepts SSLv3, TLSv1, TLSv1_2016, TLSv1.1_2016, TLSv1.2_2018
    #         certificate: "string",
    #         certificate_source: "cloudfront", # accepts cloudfront, iam, acm
    #       },
    #       restrictions: {
    #         geo_restriction: { # required
    #           restriction_type: "blacklist", # required, accepts blacklist, whitelist, none
    #           quantity: 1, # required
    #           items: ["string"],
    #         },
    #       },
    #       web_acl_id: "string",
    #       http_version: "http1.1", # accepts http1.1, http2
    #       is_ipv6_enabled: false,
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.distribution.id #=> String
    #   resp.distribution.arn #=> String
    #   resp.distribution.status #=> String
    #   resp.distribution.last_modified_time #=> Time
    #   resp.distribution.in_progress_invalidation_batches #=> Integer
    #   resp.distribution.domain_name #=> String
    #   resp.distribution.active_trusted_signers.enabled #=> Boolean
    #   resp.distribution.active_trusted_signers.quantity #=> Integer
    #   resp.distribution.active_trusted_signers.items #=> Array
    #   resp.distribution.active_trusted_signers.items[0].aws_account_number #=> String
    #   resp.distribution.active_trusted_signers.items[0].key_pair_ids.quantity #=> Integer
    #   resp.distribution.active_trusted_signers.items[0].key_pair_ids.items #=> Array
    #   resp.distribution.active_trusted_signers.items[0].key_pair_ids.items[0] #=> String
    #   resp.distribution.distribution_config.caller_reference #=> String
    #   resp.distribution.distribution_config.aliases.quantity #=> Integer
    #   resp.distribution.distribution_config.aliases.items #=> Array
    #   resp.distribution.distribution_config.aliases.items[0] #=> String
    #   resp.distribution.distribution_config.default_root_object #=> String
    #   resp.distribution.distribution_config.origins.quantity #=> Integer
    #   resp.distribution.distribution_config.origins.items #=> Array
    #   resp.distribution.distribution_config.origins.items[0].id #=> String
    #   resp.distribution.distribution_config.origins.items[0].domain_name #=> String
    #   resp.distribution.distribution_config.origins.items[0].origin_path #=> String
    #   resp.distribution.distribution_config.origins.items[0].custom_headers.quantity #=> Integer
    #   resp.distribution.distribution_config.origins.items[0].custom_headers.items #=> Array
    #   resp.distribution.distribution_config.origins.items[0].custom_headers.items[0].header_name #=> String
    #   resp.distribution.distribution_config.origins.items[0].custom_headers.items[0].header_value #=> String
    #   resp.distribution.distribution_config.origins.items[0].s3_origin_config.origin_access_identity #=> String
    #   resp.distribution.distribution_config.origins.items[0].custom_origin_config.http_port #=> Integer
    #   resp.distribution.distribution_config.origins.items[0].custom_origin_config.https_port #=> Integer
    #   resp.distribution.distribution_config.origins.items[0].custom_origin_config.origin_protocol_policy #=> String, one of "http-only", "match-viewer", "https-only"
    #   resp.distribution.distribution_config.origins.items[0].custom_origin_config.origin_ssl_protocols.quantity #=> Integer
    #   resp.distribution.distribution_config.origins.items[0].custom_origin_config.origin_ssl_protocols.items #=> Array
    #   resp.distribution.distribution_config.origins.items[0].custom_origin_config.origin_ssl_protocols.items[0] #=> String, one of "SSLv3", "TLSv1", "TLSv1.1", "TLSv1.2"
    #   resp.distribution.distribution_config.origins.items[0].custom_origin_config.origin_read_timeout #=> Integer
    #   resp.distribution.distribution_config.origins.items[0].custom_origin_config.origin_keepalive_timeout #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.target_origin_id #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.query_string #=> Boolean
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.cookies.forward #=> String, one of "none", "whitelist", "all"
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.cookies.whitelisted_names.quantity #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.cookies.whitelisted_names.items #=> Array
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.cookies.whitelisted_names.items[0] #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.headers.quantity #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.headers.items #=> Array
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.headers.items[0] #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.query_string_cache_keys.quantity #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.query_string_cache_keys.items #=> Array
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.query_string_cache_keys.items[0] #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.trusted_signers.enabled #=> Boolean
    #   resp.distribution.distribution_config.default_cache_behavior.trusted_signers.quantity #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.trusted_signers.items #=> Array
    #   resp.distribution.distribution_config.default_cache_behavior.trusted_signers.items[0] #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.viewer_protocol_policy #=> String, one of "allow-all", "https-only", "redirect-to-https"
    #   resp.distribution.distribution_config.default_cache_behavior.min_ttl #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.allowed_methods.quantity #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.allowed_methods.items #=> Array
    #   resp.distribution.distribution_config.default_cache_behavior.allowed_methods.items[0] #=> String, one of "GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"
    #   resp.distribution.distribution_config.default_cache_behavior.allowed_methods.cached_methods.quantity #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.allowed_methods.cached_methods.items #=> Array
    #   resp.distribution.distribution_config.default_cache_behavior.allowed_methods.cached_methods.items[0] #=> String, one of "GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"
    #   resp.distribution.distribution_config.default_cache_behavior.smooth_streaming #=> Boolean
    #   resp.distribution.distribution_config.default_cache_behavior.default_ttl #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.max_ttl #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.compress #=> Boolean
    #   resp.distribution.distribution_config.default_cache_behavior.lambda_function_associations.quantity #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.lambda_function_associations.items #=> Array
    #   resp.distribution.distribution_config.default_cache_behavior.lambda_function_associations.items[0].lambda_function_arn #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.lambda_function_associations.items[0].event_type #=> String, one of "viewer-request", "viewer-response", "origin-request", "origin-response"
    #   resp.distribution.distribution_config.default_cache_behavior.lambda_function_associations.items[0].include_body #=> Boolean
    #   resp.distribution.distribution_config.default_cache_behavior.field_level_encryption_id #=> String
    #   resp.distribution.distribution_config.cache_behaviors.quantity #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items #=> Array
    #   resp.distribution.distribution_config.cache_behaviors.items[0].path_pattern #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].target_origin_id #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].forwarded_values.query_string #=> Boolean
    #   resp.distribution.distribution_config.cache_behaviors.items[0].forwarded_values.cookies.forward #=> String, one of "none", "whitelist", "all"
    #   resp.distribution.distribution_config.cache_behaviors.items[0].forwarded_values.cookies.whitelisted_names.quantity #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items[0].forwarded_values.cookies.whitelisted_names.items #=> Array
    #   resp.distribution.distribution_config.cache_behaviors.items[0].forwarded_values.cookies.whitelisted_names.items[0] #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].forwarded_values.headers.quantity #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items[0].forwarded_values.headers.items #=> Array
    #   resp.distribution.distribution_config.cache_behaviors.items[0].forwarded_values.headers.items[0] #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].forwarded_values.query_string_cache_keys.quantity #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items[0].forwarded_values.query_string_cache_keys.items #=> Array
    #   resp.distribution.distribution_config.cache_behaviors.items[0].forwarded_values.query_string_cache_keys.items[0] #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].trusted_signers.enabled #=> Boolean
    #   resp.distribution.distribution_config.cache_behaviors.items[0].trusted_signers.quantity #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items[0].trusted_signers.items #=> Array
    #   resp.distribution.distribution_config.cache_behaviors.items[0].trusted_signers.items[0] #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].viewer_protocol_policy #=> String, one of "allow-all", "https-only", "redirect-to-https"
    #   resp.distribution.distribution_config.cache_behaviors.items[0].min_ttl #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items[0].allowed_methods.quantity #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items[0].allowed_methods.items #=> Array
    #   resp.distribution.distribution_config.cache_behaviors.items[0].allowed_methods.items[0] #=> String, one of "GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"
    #   resp.distribution.distribution_config.cache_behaviors.items[0].allowed_methods.cached_methods.quantity #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items[0].allowed_methods.cached_methods.items #=> Array
    #   resp.distribution.distribution_config.cache_behaviors.items[0].allowed_methods.cached_methods.items[0] #=> String, one of "GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"
    #   resp.distribution.distribution_config.cache_behaviors.items[0].smooth_streaming #=> Boolean
    #   resp.distribution.distribution_config.cache_behaviors.items[0].default_ttl #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items[0].max_ttl #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items[0].compress #=> Boolean
    #   resp.distribution.distribution_config.cache_behaviors.items[0].lambda_function_associations.quantity #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items[0].lambda_function_associations.items #=> Array
    #   resp.distribution.distribution_config.cache_behaviors.items[0].lambda_function_associations.items[0].lambda_function_arn #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].lambda_function_associations.items[0].event_type #=> String, one of "viewer-request", "viewer-response", "origin-request", "origin-response"
    #   resp.distribution.distribution_config.cache_behaviors.items[0].lambda_function_associations.items[0].include_body #=> Boolean
    #   resp.distribution.distribution_config.cache_behaviors.items[0].field_level_encryption_id #=> String
    #   resp.distribution.distribution_config.custom_error_responses.quantity #=> Integer
    #   resp.distribution.distribution_config.custom_error_responses.items #=> Array
    #   resp.distribution.distribution_config.custom_error_responses.items[0].error_code #=> Integer
    #   resp.distribution.distribution_config.custom_error_responses.items[0].response_page_path #=> String
    #   resp.distribution.distribution_config.custom_error_responses.items[0].response_code #=> String
    #   resp.distribution.distribution_config.custom_error_responses.items[0].error_caching_min_ttl #=> Integer
    #   resp.distribution.distribution_config.comment #=> String
    #   resp.distribution.distribution_config.logging.enabled #=> Boolean
    #   resp.distribution.distribution_config.logging.include_cookies #=> Boolean
    #   resp.distribution.distribution_config.logging.bucket #=> String
    #   resp.distribution.distribution_config.logging.prefix #=> String
    #   resp.distribution.distribution_config.price_class #=> String, one of "PriceClass_100", "PriceClass_200", "PriceClass_All"
    #   resp.distribution.distribution_config.enabled #=> Boolean
    #   resp.distribution.distribution_config.viewer_certificate.cloud_front_default_certificate #=> Boolean
    #   resp.distribution.distribution_config.viewer_certificate.iam_certificate_id #=> String
    #   resp.distribution.distribution_config.viewer_certificate.acm_certificate_arn #=> String
    #   resp.distribution.distribution_config.viewer_certificate.ssl_support_method #=> String, one of "sni-only", "vip"
    #   resp.distribution.distribution_config.viewer_certificate.minimum_protocol_version #=> String, one of "SSLv3", "TLSv1", "TLSv1_2016", "TLSv1.1_2016", "TLSv1.2_2018"
    #   resp.distribution.distribution_config.viewer_certificate.certificate #=> String
    #   resp.distribution.distribution_config.viewer_certificate.certificate_source #=> String, one of "cloudfront", "iam", "acm"
    #   resp.distribution.distribution_config.restrictions.geo_restriction.restriction_type #=> String, one of "blacklist", "whitelist", "none"
    #   resp.distribution.distribution_config.restrictions.geo_restriction.quantity #=> Integer
    #   resp.distribution.distribution_config.restrictions.geo_restriction.items #=> Array
    #   resp.distribution.distribution_config.restrictions.geo_restriction.items[0] #=> String
    #   resp.distribution.distribution_config.web_acl_id #=> String
    #   resp.distribution.distribution_config.http_version #=> String, one of "http1.1", "http2"
    #   resp.distribution.distribution_config.is_ipv6_enabled #=> Boolean
    #   resp.location #=> String
    #   resp.etag #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/CreateDistribution2018_06_18 AWS API Documentation
    #
    # @overload create_distribution(params = {})
    # @param [Hash] params ({})
    def create_distribution(params = {}, options = {})
      req = build_request(:create_distribution, params)
      req.send_request(options)
    end

    # Create a new distribution with tags.
    #
    # @option params [required, Types::DistributionConfigWithTags] :distribution_config_with_tags
    #   The distribution's configuration information.
    #
    # @return [Types::CreateDistributionWithTagsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDistributionWithTagsResult#distribution #distribution} => Types::Distribution
    #   * {Types::CreateDistributionWithTagsResult#location #location} => String
    #   * {Types::CreateDistributionWithTagsResult#etag #etag} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_distribution_with_tags({
    #     distribution_config_with_tags: { # required
    #       distribution_config: { # required
    #         caller_reference: "string", # required
    #         aliases: {
    #           quantity: 1, # required
    #           items: ["string"],
    #         },
    #         default_root_object: "string",
    #         origins: { # required
    #           quantity: 1, # required
    #           items: [
    #             {
    #               id: "string", # required
    #               domain_name: "string", # required
    #               origin_path: "string",
    #               custom_headers: {
    #                 quantity: 1, # required
    #                 items: [
    #                   {
    #                     header_name: "string", # required
    #                     header_value: "string", # required
    #                   },
    #                 ],
    #               },
    #               s3_origin_config: {
    #                 origin_access_identity: "string", # required
    #               },
    #               custom_origin_config: {
    #                 http_port: 1, # required
    #                 https_port: 1, # required
    #                 origin_protocol_policy: "http-only", # required, accepts http-only, match-viewer, https-only
    #                 origin_ssl_protocols: {
    #                   quantity: 1, # required
    #                   items: ["SSLv3"], # required, accepts SSLv3, TLSv1, TLSv1.1, TLSv1.2
    #                 },
    #                 origin_read_timeout: 1,
    #                 origin_keepalive_timeout: 1,
    #               },
    #             },
    #           ],
    #         },
    #         default_cache_behavior: { # required
    #           target_origin_id: "string", # required
    #           forwarded_values: { # required
    #             query_string: false, # required
    #             cookies: { # required
    #               forward: "none", # required, accepts none, whitelist, all
    #               whitelisted_names: {
    #                 quantity: 1, # required
    #                 items: ["string"],
    #               },
    #             },
    #             headers: {
    #               quantity: 1, # required
    #               items: ["string"],
    #             },
    #             query_string_cache_keys: {
    #               quantity: 1, # required
    #               items: ["string"],
    #             },
    #           },
    #           trusted_signers: { # required
    #             enabled: false, # required
    #             quantity: 1, # required
    #             items: ["string"],
    #           },
    #           viewer_protocol_policy: "allow-all", # required, accepts allow-all, https-only, redirect-to-https
    #           min_ttl: 1, # required
    #           allowed_methods: {
    #             quantity: 1, # required
    #             items: ["GET"], # required, accepts GET, HEAD, POST, PUT, PATCH, OPTIONS, DELETE
    #             cached_methods: {
    #               quantity: 1, # required
    #               items: ["GET"], # required, accepts GET, HEAD, POST, PUT, PATCH, OPTIONS, DELETE
    #             },
    #           },
    #           smooth_streaming: false,
    #           default_ttl: 1,
    #           max_ttl: 1,
    #           compress: false,
    #           lambda_function_associations: {
    #             quantity: 1, # required
    #             items: [
    #               {
    #                 lambda_function_arn: "LambdaFunctionARN", # required
    #                 event_type: "viewer-request", # required, accepts viewer-request, viewer-response, origin-request, origin-response
    #                 include_body: false,
    #               },
    #             ],
    #           },
    #           field_level_encryption_id: "string",
    #         },
    #         cache_behaviors: {
    #           quantity: 1, # required
    #           items: [
    #             {
    #               path_pattern: "string", # required
    #               target_origin_id: "string", # required
    #               forwarded_values: { # required
    #                 query_string: false, # required
    #                 cookies: { # required
    #                   forward: "none", # required, accepts none, whitelist, all
    #                   whitelisted_names: {
    #                     quantity: 1, # required
    #                     items: ["string"],
    #                   },
    #                 },
    #                 headers: {
    #                   quantity: 1, # required
    #                   items: ["string"],
    #                 },
    #                 query_string_cache_keys: {
    #                   quantity: 1, # required
    #                   items: ["string"],
    #                 },
    #               },
    #               trusted_signers: { # required
    #                 enabled: false, # required
    #                 quantity: 1, # required
    #                 items: ["string"],
    #               },
    #               viewer_protocol_policy: "allow-all", # required, accepts allow-all, https-only, redirect-to-https
    #               min_ttl: 1, # required
    #               allowed_methods: {
    #                 quantity: 1, # required
    #                 items: ["GET"], # required, accepts GET, HEAD, POST, PUT, PATCH, OPTIONS, DELETE
    #                 cached_methods: {
    #                   quantity: 1, # required
    #                   items: ["GET"], # required, accepts GET, HEAD, POST, PUT, PATCH, OPTIONS, DELETE
    #                 },
    #               },
    #               smooth_streaming: false,
    #               default_ttl: 1,
    #               max_ttl: 1,
    #               compress: false,
    #               lambda_function_associations: {
    #                 quantity: 1, # required
    #                 items: [
    #                   {
    #                     lambda_function_arn: "LambdaFunctionARN", # required
    #                     event_type: "viewer-request", # required, accepts viewer-request, viewer-response, origin-request, origin-response
    #                     include_body: false,
    #                   },
    #                 ],
    #               },
    #               field_level_encryption_id: "string",
    #             },
    #           ],
    #         },
    #         custom_error_responses: {
    #           quantity: 1, # required
    #           items: [
    #             {
    #               error_code: 1, # required
    #               response_page_path: "string",
    #               response_code: "string",
    #               error_caching_min_ttl: 1,
    #             },
    #           ],
    #         },
    #         comment: "string", # required
    #         logging: {
    #           enabled: false, # required
    #           include_cookies: false, # required
    #           bucket: "string", # required
    #           prefix: "string", # required
    #         },
    #         price_class: "PriceClass_100", # accepts PriceClass_100, PriceClass_200, PriceClass_All
    #         enabled: false, # required
    #         viewer_certificate: {
    #           cloud_front_default_certificate: false,
    #           iam_certificate_id: "string",
    #           acm_certificate_arn: "string",
    #           ssl_support_method: "sni-only", # accepts sni-only, vip
    #           minimum_protocol_version: "SSLv3", # accepts SSLv3, TLSv1, TLSv1_2016, TLSv1.1_2016, TLSv1.2_2018
    #           certificate: "string",
    #           certificate_source: "cloudfront", # accepts cloudfront, iam, acm
    #         },
    #         restrictions: {
    #           geo_restriction: { # required
    #             restriction_type: "blacklist", # required, accepts blacklist, whitelist, none
    #             quantity: 1, # required
    #             items: ["string"],
    #           },
    #         },
    #         web_acl_id: "string",
    #         http_version: "http1.1", # accepts http1.1, http2
    #         is_ipv6_enabled: false,
    #       },
    #       tags: { # required
    #         items: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue",
    #           },
    #         ],
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.distribution.id #=> String
    #   resp.distribution.arn #=> String
    #   resp.distribution.status #=> String
    #   resp.distribution.last_modified_time #=> Time
    #   resp.distribution.in_progress_invalidation_batches #=> Integer
    #   resp.distribution.domain_name #=> String
    #   resp.distribution.active_trusted_signers.enabled #=> Boolean
    #   resp.distribution.active_trusted_signers.quantity #=> Integer
    #   resp.distribution.active_trusted_signers.items #=> Array
    #   resp.distribution.active_trusted_signers.items[0].aws_account_number #=> String
    #   resp.distribution.active_trusted_signers.items[0].key_pair_ids.quantity #=> Integer
    #   resp.distribution.active_trusted_signers.items[0].key_pair_ids.items #=> Array
    #   resp.distribution.active_trusted_signers.items[0].key_pair_ids.items[0] #=> String
    #   resp.distribution.distribution_config.caller_reference #=> String
    #   resp.distribution.distribution_config.aliases.quantity #=> Integer
    #   resp.distribution.distribution_config.aliases.items #=> Array
    #   resp.distribution.distribution_config.aliases.items[0] #=> String
    #   resp.distribution.distribution_config.default_root_object #=> String
    #   resp.distribution.distribution_config.origins.quantity #=> Integer
    #   resp.distribution.distribution_config.origins.items #=> Array
    #   resp.distribution.distribution_config.origins.items[0].id #=> String
    #   resp.distribution.distribution_config.origins.items[0].domain_name #=> String
    #   resp.distribution.distribution_config.origins.items[0].origin_path #=> String
    #   resp.distribution.distribution_config.origins.items[0].custom_headers.quantity #=> Integer
    #   resp.distribution.distribution_config.origins.items[0].custom_headers.items #=> Array
    #   resp.distribution.distribution_config.origins.items[0].custom_headers.items[0].header_name #=> String
    #   resp.distribution.distribution_config.origins.items[0].custom_headers.items[0].header_value #=> String
    #   resp.distribution.distribution_config.origins.items[0].s3_origin_config.origin_access_identity #=> String
    #   resp.distribution.distribution_config.origins.items[0].custom_origin_config.http_port #=> Integer
    #   resp.distribution.distribution_config.origins.items[0].custom_origin_config.https_port #=> Integer
    #   resp.distribution.distribution_config.origins.items[0].custom_origin_config.origin_protocol_policy #=> String, one of "http-only", "match-viewer", "https-only"
    #   resp.distribution.distribution_config.origins.items[0].custom_origin_config.origin_ssl_protocols.quantity #=> Integer
    #   resp.distribution.distribution_config.origins.items[0].custom_origin_config.origin_ssl_protocols.items #=> Array
    #   resp.distribution.distribution_config.origins.items[0].custom_origin_config.origin_ssl_protocols.items[0] #=> String, one of "SSLv3", "TLSv1", "TLSv1.1", "TLSv1.2"
    #   resp.distribution.distribution_config.origins.items[0].custom_origin_config.origin_read_timeout #=> Integer
    #   resp.distribution.distribution_config.origins.items[0].custom_origin_config.origin_keepalive_timeout #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.target_origin_id #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.query_string #=> Boolean
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.cookies.forward #=> String, one of "none", "whitelist", "all"
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.cookies.whitelisted_names.quantity #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.cookies.whitelisted_names.items #=> Array
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.cookies.whitelisted_names.items[0] #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.headers.quantity #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.headers.items #=> Array
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.headers.items[0] #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.query_string_cache_keys.quantity #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.query_string_cache_keys.items #=> Array
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.query_string_cache_keys.items[0] #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.trusted_signers.enabled #=> Boolean
    #   resp.distribution.distribution_config.default_cache_behavior.trusted_signers.quantity #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.trusted_signers.items #=> Array
    #   resp.distribution.distribution_config.default_cache_behavior.trusted_signers.items[0] #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.viewer_protocol_policy #=> String, one of "allow-all", "https-only", "redirect-to-https"
    #   resp.distribution.distribution_config.default_cache_behavior.min_ttl #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.allowed_methods.quantity #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.allowed_methods.items #=> Array
    #   resp.distribution.distribution_config.default_cache_behavior.allowed_methods.items[0] #=> String, one of "GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"
    #   resp.distribution.distribution_config.default_cache_behavior.allowed_methods.cached_methods.quantity #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.allowed_methods.cached_methods.items #=> Array
    #   resp.distribution.distribution_config.default_cache_behavior.allowed_methods.cached_methods.items[0] #=> String, one of "GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"
    #   resp.distribution.distribution_config.default_cache_behavior.smooth_streaming #=> Boolean
    #   resp.distribution.distribution_config.default_cache_behavior.default_ttl #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.max_ttl #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.compress #=> Boolean
    #   resp.distribution.distribution_config.default_cache_behavior.lambda_function_associations.quantity #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.lambda_function_associations.items #=> Array
    #   resp.distribution.distribution_config.default_cache_behavior.lambda_function_associations.items[0].lambda_function_arn #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.lambda_function_associations.items[0].event_type #=> String, one of "viewer-request", "viewer-response", "origin-request", "origin-response"
    #   resp.distribution.distribution_config.default_cache_behavior.lambda_function_associations.items[0].include_body #=> Boolean
    #   resp.distribution.distribution_config.default_cache_behavior.field_level_encryption_id #=> String
    #   resp.distribution.distribution_config.cache_behaviors.quantity #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items #=> Array
    #   resp.distribution.distribution_config.cache_behaviors.items[0].path_pattern #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].target_origin_id #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].forwarded_values.query_string #=> Boolean
    #   resp.distribution.distribution_config.cache_behaviors.items[0].forwarded_values.cookies.forward #=> String, one of "none", "whitelist", "all"
    #   resp.distribution.distribution_config.cache_behaviors.items[0].forwarded_values.cookies.whitelisted_names.quantity #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items[0].forwarded_values.cookies.whitelisted_names.items #=> Array
    #   resp.distribution.distribution_config.cache_behaviors.items[0].forwarded_values.cookies.whitelisted_names.items[0] #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].forwarded_values.headers.quantity #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items[0].forwarded_values.headers.items #=> Array
    #   resp.distribution.distribution_config.cache_behaviors.items[0].forwarded_values.headers.items[0] #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].forwarded_values.query_string_cache_keys.quantity #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items[0].forwarded_values.query_string_cache_keys.items #=> Array
    #   resp.distribution.distribution_config.cache_behaviors.items[0].forwarded_values.query_string_cache_keys.items[0] #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].trusted_signers.enabled #=> Boolean
    #   resp.distribution.distribution_config.cache_behaviors.items[0].trusted_signers.quantity #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items[0].trusted_signers.items #=> Array
    #   resp.distribution.distribution_config.cache_behaviors.items[0].trusted_signers.items[0] #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].viewer_protocol_policy #=> String, one of "allow-all", "https-only", "redirect-to-https"
    #   resp.distribution.distribution_config.cache_behaviors.items[0].min_ttl #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items[0].allowed_methods.quantity #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items[0].allowed_methods.items #=> Array
    #   resp.distribution.distribution_config.cache_behaviors.items[0].allowed_methods.items[0] #=> String, one of "GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"
    #   resp.distribution.distribution_config.cache_behaviors.items[0].allowed_methods.cached_methods.quantity #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items[0].allowed_methods.cached_methods.items #=> Array
    #   resp.distribution.distribution_config.cache_behaviors.items[0].allowed_methods.cached_methods.items[0] #=> String, one of "GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"
    #   resp.distribution.distribution_config.cache_behaviors.items[0].smooth_streaming #=> Boolean
    #   resp.distribution.distribution_config.cache_behaviors.items[0].default_ttl #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items[0].max_ttl #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items[0].compress #=> Boolean
    #   resp.distribution.distribution_config.cache_behaviors.items[0].lambda_function_associations.quantity #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items[0].lambda_function_associations.items #=> Array
    #   resp.distribution.distribution_config.cache_behaviors.items[0].lambda_function_associations.items[0].lambda_function_arn #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].lambda_function_associations.items[0].event_type #=> String, one of "viewer-request", "viewer-response", "origin-request", "origin-response"
    #   resp.distribution.distribution_config.cache_behaviors.items[0].lambda_function_associations.items[0].include_body #=> Boolean
    #   resp.distribution.distribution_config.cache_behaviors.items[0].field_level_encryption_id #=> String
    #   resp.distribution.distribution_config.custom_error_responses.quantity #=> Integer
    #   resp.distribution.distribution_config.custom_error_responses.items #=> Array
    #   resp.distribution.distribution_config.custom_error_responses.items[0].error_code #=> Integer
    #   resp.distribution.distribution_config.custom_error_responses.items[0].response_page_path #=> String
    #   resp.distribution.distribution_config.custom_error_responses.items[0].response_code #=> String
    #   resp.distribution.distribution_config.custom_error_responses.items[0].error_caching_min_ttl #=> Integer
    #   resp.distribution.distribution_config.comment #=> String
    #   resp.distribution.distribution_config.logging.enabled #=> Boolean
    #   resp.distribution.distribution_config.logging.include_cookies #=> Boolean
    #   resp.distribution.distribution_config.logging.bucket #=> String
    #   resp.distribution.distribution_config.logging.prefix #=> String
    #   resp.distribution.distribution_config.price_class #=> String, one of "PriceClass_100", "PriceClass_200", "PriceClass_All"
    #   resp.distribution.distribution_config.enabled #=> Boolean
    #   resp.distribution.distribution_config.viewer_certificate.cloud_front_default_certificate #=> Boolean
    #   resp.distribution.distribution_config.viewer_certificate.iam_certificate_id #=> String
    #   resp.distribution.distribution_config.viewer_certificate.acm_certificate_arn #=> String
    #   resp.distribution.distribution_config.viewer_certificate.ssl_support_method #=> String, one of "sni-only", "vip"
    #   resp.distribution.distribution_config.viewer_certificate.minimum_protocol_version #=> String, one of "SSLv3", "TLSv1", "TLSv1_2016", "TLSv1.1_2016", "TLSv1.2_2018"
    #   resp.distribution.distribution_config.viewer_certificate.certificate #=> String
    #   resp.distribution.distribution_config.viewer_certificate.certificate_source #=> String, one of "cloudfront", "iam", "acm"
    #   resp.distribution.distribution_config.restrictions.geo_restriction.restriction_type #=> String, one of "blacklist", "whitelist", "none"
    #   resp.distribution.distribution_config.restrictions.geo_restriction.quantity #=> Integer
    #   resp.distribution.distribution_config.restrictions.geo_restriction.items #=> Array
    #   resp.distribution.distribution_config.restrictions.geo_restriction.items[0] #=> String
    #   resp.distribution.distribution_config.web_acl_id #=> String
    #   resp.distribution.distribution_config.http_version #=> String, one of "http1.1", "http2"
    #   resp.distribution.distribution_config.is_ipv6_enabled #=> Boolean
    #   resp.location #=> String
    #   resp.etag #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/CreateDistributionWithTags2018_06_18 AWS API Documentation
    #
    # @overload create_distribution_with_tags(params = {})
    # @param [Hash] params ({})
    def create_distribution_with_tags(params = {}, options = {})
      req = build_request(:create_distribution_with_tags, params)
      req.send_request(options)
    end

    # Create a new field-level encryption configuration.
    #
    # @option params [required, Types::FieldLevelEncryptionConfig] :field_level_encryption_config
    #   The request to create a new field-level encryption configuration.
    #
    # @return [Types::CreateFieldLevelEncryptionConfigResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateFieldLevelEncryptionConfigResult#field_level_encryption #field_level_encryption} => Types::FieldLevelEncryption
    #   * {Types::CreateFieldLevelEncryptionConfigResult#location #location} => String
    #   * {Types::CreateFieldLevelEncryptionConfigResult#etag #etag} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_field_level_encryption_config({
    #     field_level_encryption_config: { # required
    #       caller_reference: "string", # required
    #       comment: "string",
    #       query_arg_profile_config: {
    #         forward_when_query_arg_profile_is_unknown: false, # required
    #         query_arg_profiles: {
    #           quantity: 1, # required
    #           items: [
    #             {
    #               query_arg: "string", # required
    #               profile_id: "string", # required
    #             },
    #           ],
    #         },
    #       },
    #       content_type_profile_config: {
    #         forward_when_content_type_is_unknown: false, # required
    #         content_type_profiles: {
    #           quantity: 1, # required
    #           items: [
    #             {
    #               format: "URLEncoded", # required, accepts URLEncoded
    #               profile_id: "string",
    #               content_type: "string", # required
    #             },
    #           ],
    #         },
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.field_level_encryption.id #=> String
    #   resp.field_level_encryption.last_modified_time #=> Time
    #   resp.field_level_encryption.field_level_encryption_config.caller_reference #=> String
    #   resp.field_level_encryption.field_level_encryption_config.comment #=> String
    #   resp.field_level_encryption.field_level_encryption_config.query_arg_profile_config.forward_when_query_arg_profile_is_unknown #=> Boolean
    #   resp.field_level_encryption.field_level_encryption_config.query_arg_profile_config.query_arg_profiles.quantity #=> Integer
    #   resp.field_level_encryption.field_level_encryption_config.query_arg_profile_config.query_arg_profiles.items #=> Array
    #   resp.field_level_encryption.field_level_encryption_config.query_arg_profile_config.query_arg_profiles.items[0].query_arg #=> String
    #   resp.field_level_encryption.field_level_encryption_config.query_arg_profile_config.query_arg_profiles.items[0].profile_id #=> String
    #   resp.field_level_encryption.field_level_encryption_config.content_type_profile_config.forward_when_content_type_is_unknown #=> Boolean
    #   resp.field_level_encryption.field_level_encryption_config.content_type_profile_config.content_type_profiles.quantity #=> Integer
    #   resp.field_level_encryption.field_level_encryption_config.content_type_profile_config.content_type_profiles.items #=> Array
    #   resp.field_level_encryption.field_level_encryption_config.content_type_profile_config.content_type_profiles.items[0].format #=> String, one of "URLEncoded"
    #   resp.field_level_encryption.field_level_encryption_config.content_type_profile_config.content_type_profiles.items[0].profile_id #=> String
    #   resp.field_level_encryption.field_level_encryption_config.content_type_profile_config.content_type_profiles.items[0].content_type #=> String
    #   resp.location #=> String
    #   resp.etag #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/CreateFieldLevelEncryptionConfig2018_06_18 AWS API Documentation
    #
    # @overload create_field_level_encryption_config(params = {})
    # @param [Hash] params ({})
    def create_field_level_encryption_config(params = {}, options = {})
      req = build_request(:create_field_level_encryption_config, params)
      req.send_request(options)
    end

    # Create a field-level encryption profile.
    #
    # @option params [required, Types::FieldLevelEncryptionProfileConfig] :field_level_encryption_profile_config
    #   The request to create a field-level encryption profile.
    #
    # @return [Types::CreateFieldLevelEncryptionProfileResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateFieldLevelEncryptionProfileResult#field_level_encryption_profile #field_level_encryption_profile} => Types::FieldLevelEncryptionProfile
    #   * {Types::CreateFieldLevelEncryptionProfileResult#location #location} => String
    #   * {Types::CreateFieldLevelEncryptionProfileResult#etag #etag} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_field_level_encryption_profile({
    #     field_level_encryption_profile_config: { # required
    #       name: "string", # required
    #       caller_reference: "string", # required
    #       comment: "string",
    #       encryption_entities: { # required
    #         quantity: 1, # required
    #         items: [
    #           {
    #             public_key_id: "string", # required
    #             provider_id: "string", # required
    #             field_patterns: { # required
    #               quantity: 1, # required
    #               items: ["string"],
    #             },
    #           },
    #         ],
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.field_level_encryption_profile.id #=> String
    #   resp.field_level_encryption_profile.last_modified_time #=> Time
    #   resp.field_level_encryption_profile.field_level_encryption_profile_config.name #=> String
    #   resp.field_level_encryption_profile.field_level_encryption_profile_config.caller_reference #=> String
    #   resp.field_level_encryption_profile.field_level_encryption_profile_config.comment #=> String
    #   resp.field_level_encryption_profile.field_level_encryption_profile_config.encryption_entities.quantity #=> Integer
    #   resp.field_level_encryption_profile.field_level_encryption_profile_config.encryption_entities.items #=> Array
    #   resp.field_level_encryption_profile.field_level_encryption_profile_config.encryption_entities.items[0].public_key_id #=> String
    #   resp.field_level_encryption_profile.field_level_encryption_profile_config.encryption_entities.items[0].provider_id #=> String
    #   resp.field_level_encryption_profile.field_level_encryption_profile_config.encryption_entities.items[0].field_patterns.quantity #=> Integer
    #   resp.field_level_encryption_profile.field_level_encryption_profile_config.encryption_entities.items[0].field_patterns.items #=> Array
    #   resp.field_level_encryption_profile.field_level_encryption_profile_config.encryption_entities.items[0].field_patterns.items[0] #=> String
    #   resp.location #=> String
    #   resp.etag #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/CreateFieldLevelEncryptionProfile2018_06_18 AWS API Documentation
    #
    # @overload create_field_level_encryption_profile(params = {})
    # @param [Hash] params ({})
    def create_field_level_encryption_profile(params = {}, options = {})
      req = build_request(:create_field_level_encryption_profile, params)
      req.send_request(options)
    end

    # Create a new invalidation.
    #
    # @option params [required, String] :distribution_id
    #   The distribution's id.
    #
    # @option params [required, Types::InvalidationBatch] :invalidation_batch
    #   The batch information for the invalidation.
    #
    # @return [Types::CreateInvalidationResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateInvalidationResult#location #location} => String
    #   * {Types::CreateInvalidationResult#invalidation #invalidation} => Types::Invalidation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_invalidation({
    #     distribution_id: "string", # required
    #     invalidation_batch: { # required
    #       paths: { # required
    #         quantity: 1, # required
    #         items: ["string"],
    #       },
    #       caller_reference: "string", # required
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.location #=> String
    #   resp.invalidation.id #=> String
    #   resp.invalidation.status #=> String
    #   resp.invalidation.create_time #=> Time
    #   resp.invalidation.invalidation_batch.paths.quantity #=> Integer
    #   resp.invalidation.invalidation_batch.paths.items #=> Array
    #   resp.invalidation.invalidation_batch.paths.items[0] #=> String
    #   resp.invalidation.invalidation_batch.caller_reference #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/CreateInvalidation2018_06_18 AWS API Documentation
    #
    # @overload create_invalidation(params = {})
    # @param [Hash] params ({})
    def create_invalidation(params = {}, options = {})
      req = build_request(:create_invalidation, params)
      req.send_request(options)
    end

    # Add a new public key to CloudFront to use, for example, for
    # field-level encryption. You can add a maximum of 10 public keys with
    # one AWS account.
    #
    # @option params [required, Types::PublicKeyConfig] :public_key_config
    #   The request to add a public key to CloudFront.
    #
    # @return [Types::CreatePublicKeyResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreatePublicKeyResult#public_key #public_key} => Types::PublicKey
    #   * {Types::CreatePublicKeyResult#location #location} => String
    #   * {Types::CreatePublicKeyResult#etag #etag} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_public_key({
    #     public_key_config: { # required
    #       caller_reference: "string", # required
    #       name: "string", # required
    #       encoded_key: "string", # required
    #       comment: "string",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.public_key.id #=> String
    #   resp.public_key.created_time #=> Time
    #   resp.public_key.public_key_config.caller_reference #=> String
    #   resp.public_key.public_key_config.name #=> String
    #   resp.public_key.public_key_config.encoded_key #=> String
    #   resp.public_key.public_key_config.comment #=> String
    #   resp.location #=> String
    #   resp.etag #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/CreatePublicKey2018_06_18 AWS API Documentation
    #
    # @overload create_public_key(params = {})
    # @param [Hash] params ({})
    def create_public_key(params = {}, options = {})
      req = build_request(:create_public_key, params)
      req.send_request(options)
    end

    # Creates a new RMTP distribution. An RTMP distribution is similar to a
    # web distribution, but an RTMP distribution streams media files using
    # the Adobe Real-Time Messaging Protocol (RTMP) instead of serving files
    # using HTTP.
    #
    # To create a new web distribution, submit a `POST` request to the
    # *CloudFront API version*/distribution resource. The request body must
    # include a document with a *StreamingDistributionConfig* element. The
    # response echoes the `StreamingDistributionConfig` element and returns
    # other information about the RTMP distribution.
    #
    # To get the status of your request, use the *GET StreamingDistribution*
    # API action. When the value of `Enabled` is `true` and the value of
    # `Status` is `Deployed`, your distribution is ready. A distribution
    # usually deploys in less than 15 minutes.
    #
    # For more information about web distributions, see [Working with RTMP
    # Distributions][1] in the *Amazon CloudFront Developer Guide*.
    #
    # Beginning with the 2012-05-05 version of the CloudFront API, we made
    # substantial changes to the format of the XML document that you include
    # in the request body when you create or update a web distribution or an
    # RTMP distribution, and when you invalidate objects. With previous
    # versions of the API, we discovered that it was too easy to
    # accidentally delete one or more values for an element that accepts
    # multiple values, for example, CNAMEs and trusted signers. Our changes
    # for the 2012-05-05 release are intended to prevent these accidental
    # deletions and to notify you when there's a mismatch between the
    # number of values you say you're specifying in the `Quantity` element
    # and the number of values specified.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-rtmp.html
    #
    # @option params [required, Types::StreamingDistributionConfig] :streaming_distribution_config
    #   The streaming distribution's configuration information.
    #
    # @return [Types::CreateStreamingDistributionResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateStreamingDistributionResult#streaming_distribution #streaming_distribution} => Types::StreamingDistribution
    #   * {Types::CreateStreamingDistributionResult#location #location} => String
    #   * {Types::CreateStreamingDistributionResult#etag #etag} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_streaming_distribution({
    #     streaming_distribution_config: { # required
    #       caller_reference: "string", # required
    #       s3_origin: { # required
    #         domain_name: "string", # required
    #         origin_access_identity: "string", # required
    #       },
    #       aliases: {
    #         quantity: 1, # required
    #         items: ["string"],
    #       },
    #       comment: "string", # required
    #       logging: {
    #         enabled: false, # required
    #         bucket: "string", # required
    #         prefix: "string", # required
    #       },
    #       trusted_signers: { # required
    #         enabled: false, # required
    #         quantity: 1, # required
    #         items: ["string"],
    #       },
    #       price_class: "PriceClass_100", # accepts PriceClass_100, PriceClass_200, PriceClass_All
    #       enabled: false, # required
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.streaming_distribution.id #=> String
    #   resp.streaming_distribution.arn #=> String
    #   resp.streaming_distribution.status #=> String
    #   resp.streaming_distribution.last_modified_time #=> Time
    #   resp.streaming_distribution.domain_name #=> String
    #   resp.streaming_distribution.active_trusted_signers.enabled #=> Boolean
    #   resp.streaming_distribution.active_trusted_signers.quantity #=> Integer
    #   resp.streaming_distribution.active_trusted_signers.items #=> Array
    #   resp.streaming_distribution.active_trusted_signers.items[0].aws_account_number #=> String
    #   resp.streaming_distribution.active_trusted_signers.items[0].key_pair_ids.quantity #=> Integer
    #   resp.streaming_distribution.active_trusted_signers.items[0].key_pair_ids.items #=> Array
    #   resp.streaming_distribution.active_trusted_signers.items[0].key_pair_ids.items[0] #=> String
    #   resp.streaming_distribution.streaming_distribution_config.caller_reference #=> String
    #   resp.streaming_distribution.streaming_distribution_config.s3_origin.domain_name #=> String
    #   resp.streaming_distribution.streaming_distribution_config.s3_origin.origin_access_identity #=> String
    #   resp.streaming_distribution.streaming_distribution_config.aliases.quantity #=> Integer
    #   resp.streaming_distribution.streaming_distribution_config.aliases.items #=> Array
    #   resp.streaming_distribution.streaming_distribution_config.aliases.items[0] #=> String
    #   resp.streaming_distribution.streaming_distribution_config.comment #=> String
    #   resp.streaming_distribution.streaming_distribution_config.logging.enabled #=> Boolean
    #   resp.streaming_distribution.streaming_distribution_config.logging.bucket #=> String
    #   resp.streaming_distribution.streaming_distribution_config.logging.prefix #=> String
    #   resp.streaming_distribution.streaming_distribution_config.trusted_signers.enabled #=> Boolean
    #   resp.streaming_distribution.streaming_distribution_config.trusted_signers.quantity #=> Integer
    #   resp.streaming_distribution.streaming_distribution_config.trusted_signers.items #=> Array
    #   resp.streaming_distribution.streaming_distribution_config.trusted_signers.items[0] #=> String
    #   resp.streaming_distribution.streaming_distribution_config.price_class #=> String, one of "PriceClass_100", "PriceClass_200", "PriceClass_All"
    #   resp.streaming_distribution.streaming_distribution_config.enabled #=> Boolean
    #   resp.location #=> String
    #   resp.etag #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/CreateStreamingDistribution2018_06_18 AWS API Documentation
    #
    # @overload create_streaming_distribution(params = {})
    # @param [Hash] params ({})
    def create_streaming_distribution(params = {}, options = {})
      req = build_request(:create_streaming_distribution, params)
      req.send_request(options)
    end

    # Create a new streaming distribution with tags.
    #
    # @option params [required, Types::StreamingDistributionConfigWithTags] :streaming_distribution_config_with_tags
    #   The streaming distribution's configuration information.
    #
    # @return [Types::CreateStreamingDistributionWithTagsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateStreamingDistributionWithTagsResult#streaming_distribution #streaming_distribution} => Types::StreamingDistribution
    #   * {Types::CreateStreamingDistributionWithTagsResult#location #location} => String
    #   * {Types::CreateStreamingDistributionWithTagsResult#etag #etag} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_streaming_distribution_with_tags({
    #     streaming_distribution_config_with_tags: { # required
    #       streaming_distribution_config: { # required
    #         caller_reference: "string", # required
    #         s3_origin: { # required
    #           domain_name: "string", # required
    #           origin_access_identity: "string", # required
    #         },
    #         aliases: {
    #           quantity: 1, # required
    #           items: ["string"],
    #         },
    #         comment: "string", # required
    #         logging: {
    #           enabled: false, # required
    #           bucket: "string", # required
    #           prefix: "string", # required
    #         },
    #         trusted_signers: { # required
    #           enabled: false, # required
    #           quantity: 1, # required
    #           items: ["string"],
    #         },
    #         price_class: "PriceClass_100", # accepts PriceClass_100, PriceClass_200, PriceClass_All
    #         enabled: false, # required
    #       },
    #       tags: { # required
    #         items: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue",
    #           },
    #         ],
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.streaming_distribution.id #=> String
    #   resp.streaming_distribution.arn #=> String
    #   resp.streaming_distribution.status #=> String
    #   resp.streaming_distribution.last_modified_time #=> Time
    #   resp.streaming_distribution.domain_name #=> String
    #   resp.streaming_distribution.active_trusted_signers.enabled #=> Boolean
    #   resp.streaming_distribution.active_trusted_signers.quantity #=> Integer
    #   resp.streaming_distribution.active_trusted_signers.items #=> Array
    #   resp.streaming_distribution.active_trusted_signers.items[0].aws_account_number #=> String
    #   resp.streaming_distribution.active_trusted_signers.items[0].key_pair_ids.quantity #=> Integer
    #   resp.streaming_distribution.active_trusted_signers.items[0].key_pair_ids.items #=> Array
    #   resp.streaming_distribution.active_trusted_signers.items[0].key_pair_ids.items[0] #=> String
    #   resp.streaming_distribution.streaming_distribution_config.caller_reference #=> String
    #   resp.streaming_distribution.streaming_distribution_config.s3_origin.domain_name #=> String
    #   resp.streaming_distribution.streaming_distribution_config.s3_origin.origin_access_identity #=> String
    #   resp.streaming_distribution.streaming_distribution_config.aliases.quantity #=> Integer
    #   resp.streaming_distribution.streaming_distribution_config.aliases.items #=> Array
    #   resp.streaming_distribution.streaming_distribution_config.aliases.items[0] #=> String
    #   resp.streaming_distribution.streaming_distribution_config.comment #=> String
    #   resp.streaming_distribution.streaming_distribution_config.logging.enabled #=> Boolean
    #   resp.streaming_distribution.streaming_distribution_config.logging.bucket #=> String
    #   resp.streaming_distribution.streaming_distribution_config.logging.prefix #=> String
    #   resp.streaming_distribution.streaming_distribution_config.trusted_signers.enabled #=> Boolean
    #   resp.streaming_distribution.streaming_distribution_config.trusted_signers.quantity #=> Integer
    #   resp.streaming_distribution.streaming_distribution_config.trusted_signers.items #=> Array
    #   resp.streaming_distribution.streaming_distribution_config.trusted_signers.items[0] #=> String
    #   resp.streaming_distribution.streaming_distribution_config.price_class #=> String, one of "PriceClass_100", "PriceClass_200", "PriceClass_All"
    #   resp.streaming_distribution.streaming_distribution_config.enabled #=> Boolean
    #   resp.location #=> String
    #   resp.etag #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/CreateStreamingDistributionWithTags2018_06_18 AWS API Documentation
    #
    # @overload create_streaming_distribution_with_tags(params = {})
    # @param [Hash] params ({})
    def create_streaming_distribution_with_tags(params = {}, options = {})
      req = build_request(:create_streaming_distribution_with_tags, params)
      req.send_request(options)
    end

    # Delete an origin access identity.
    #
    # @option params [required, String] :id
    #   The origin access identity's ID.
    #
    # @option params [String] :if_match
    #   The value of the `ETag` header you received from a previous `GET` or
    #   `PUT` request. For example: `E2QWRUHAPOMQZL`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_cloud_front_origin_access_identity({
    #     id: "string", # required
    #     if_match: "string",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/DeleteCloudFrontOriginAccessIdentity2018_06_18 AWS API Documentation
    #
    # @overload delete_cloud_front_origin_access_identity(params = {})
    # @param [Hash] params ({})
    def delete_cloud_front_origin_access_identity(params = {}, options = {})
      req = build_request(:delete_cloud_front_origin_access_identity, params)
      req.send_request(options)
    end

    # Delete a distribution.
    #
    # @option params [required, String] :id
    #   The distribution ID.
    #
    # @option params [String] :if_match
    #   The value of the `ETag` header that you received when you disabled the
    #   distribution. For example: `E2QWRUHAPOMQZL`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_distribution({
    #     id: "string", # required
    #     if_match: "string",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/DeleteDistribution2018_06_18 AWS API Documentation
    #
    # @overload delete_distribution(params = {})
    # @param [Hash] params ({})
    def delete_distribution(params = {}, options = {})
      req = build_request(:delete_distribution, params)
      req.send_request(options)
    end

    # Remove a field-level encryption configuration.
    #
    # @option params [required, String] :id
    #   The ID of the configuration you want to delete from CloudFront.
    #
    # @option params [String] :if_match
    #   The value of the `ETag` header that you received when retrieving the
    #   configuration identity to delete. For example: `E2QWRUHAPOMQZL`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_field_level_encryption_config({
    #     id: "string", # required
    #     if_match: "string",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/DeleteFieldLevelEncryptionConfig2018_06_18 AWS API Documentation
    #
    # @overload delete_field_level_encryption_config(params = {})
    # @param [Hash] params ({})
    def delete_field_level_encryption_config(params = {}, options = {})
      req = build_request(:delete_field_level_encryption_config, params)
      req.send_request(options)
    end

    # Remove a field-level encryption profile.
    #
    # @option params [required, String] :id
    #   Request the ID of the profile you want to delete from CloudFront.
    #
    # @option params [String] :if_match
    #   The value of the `ETag` header that you received when retrieving the
    #   profile to delete. For example: `E2QWRUHAPOMQZL`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_field_level_encryption_profile({
    #     id: "string", # required
    #     if_match: "string",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/DeleteFieldLevelEncryptionProfile2018_06_18 AWS API Documentation
    #
    # @overload delete_field_level_encryption_profile(params = {})
    # @param [Hash] params ({})
    def delete_field_level_encryption_profile(params = {}, options = {})
      req = build_request(:delete_field_level_encryption_profile, params)
      req.send_request(options)
    end

    # Remove a public key you previously added to CloudFront.
    #
    # @option params [required, String] :id
    #   The ID of the public key you want to remove from CloudFront.
    #
    # @option params [String] :if_match
    #   The value of the `ETag` header that you received when retrieving the
    #   public key identity to delete. For example: `E2QWRUHAPOMQZL`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_public_key({
    #     id: "string", # required
    #     if_match: "string",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/DeletePublicKey2018_06_18 AWS API Documentation
    #
    # @overload delete_public_key(params = {})
    # @param [Hash] params ({})
    def delete_public_key(params = {}, options = {})
      req = build_request(:delete_public_key, params)
      req.send_request(options)
    end

    # Delete a streaming distribution. To delete an RTMP distribution using
    # the CloudFront API, perform the following steps.
    #
    # **To delete an RTMP distribution using the CloudFront API**\:
    #
    # 1.  Disable the RTMP distribution.
    #
    # 2.  Submit a `GET Streaming Distribution Config` request to get the
    #     current configuration and the `Etag` header for the distribution.
    #
    # 3.  Update the XML document that was returned in the response to your
    #     `GET Streaming Distribution Config` request to change the value of
    #     `Enabled` to `false`.
    #
    # 4.  Submit a `PUT Streaming Distribution Config` request to update the
    #     configuration for your distribution. In the request body, include
    #     the XML document that you updated in Step 3. Then set the value of
    #     the HTTP `If-Match` header to the value of the `ETag` header that
    #     CloudFront returned when you submitted the `GET Streaming
    #     Distribution Config` request in Step 2.
    #
    # 5.  Review the response to the `PUT Streaming Distribution Config`
    #     request to confirm that the distribution was successfully
    #     disabled.
    #
    # 6.  Submit a `GET Streaming Distribution Config` request to confirm
    #     that your changes have propagated. When propagation is complete,
    #     the value of `Status` is `Deployed`.
    #
    # 7.  Submit a `DELETE Streaming Distribution` request. Set the value of
    #     the HTTP `If-Match` header to the value of the `ETag` header that
    #     CloudFront returned when you submitted the `GET Streaming
    #     Distribution Config` request in Step 2.
    #
    # 8.  Review the response to your `DELETE Streaming Distribution`
    #     request to confirm that the distribution was successfully deleted.
    #
    # For information about deleting a distribution using the CloudFront
    # console, see [Deleting a Distribution][1] in the *Amazon CloudFront
    # Developer Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/HowToDeleteDistribution.html
    #
    # @option params [required, String] :id
    #   The distribution ID.
    #
    # @option params [String] :if_match
    #   The value of the `ETag` header that you received when you disabled the
    #   streaming distribution. For example: `E2QWRUHAPOMQZL`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_streaming_distribution({
    #     id: "string", # required
    #     if_match: "string",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/DeleteStreamingDistribution2018_06_18 AWS API Documentation
    #
    # @overload delete_streaming_distribution(params = {})
    # @param [Hash] params ({})
    def delete_streaming_distribution(params = {}, options = {})
      req = build_request(:delete_streaming_distribution, params)
      req.send_request(options)
    end

    # Get the information about an origin access identity.
    #
    # @option params [required, String] :id
    #   The identity's ID.
    #
    # @return [Types::GetCloudFrontOriginAccessIdentityResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCloudFrontOriginAccessIdentityResult#cloud_front_origin_access_identity #cloud_front_origin_access_identity} => Types::CloudFrontOriginAccessIdentity
    #   * {Types::GetCloudFrontOriginAccessIdentityResult#etag #etag} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_cloud_front_origin_access_identity({
    #     id: "string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.cloud_front_origin_access_identity.id #=> String
    #   resp.cloud_front_origin_access_identity.s3_canonical_user_id #=> String
    #   resp.cloud_front_origin_access_identity.cloud_front_origin_access_identity_config.caller_reference #=> String
    #   resp.cloud_front_origin_access_identity.cloud_front_origin_access_identity_config.comment #=> String
    #   resp.etag #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/GetCloudFrontOriginAccessIdentity2018_06_18 AWS API Documentation
    #
    # @overload get_cloud_front_origin_access_identity(params = {})
    # @param [Hash] params ({})
    def get_cloud_front_origin_access_identity(params = {}, options = {})
      req = build_request(:get_cloud_front_origin_access_identity, params)
      req.send_request(options)
    end

    # Get the configuration information about an origin access identity.
    #
    # @option params [required, String] :id
    #   The identity's ID.
    #
    # @return [Types::GetCloudFrontOriginAccessIdentityConfigResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCloudFrontOriginAccessIdentityConfigResult#cloud_front_origin_access_identity_config #cloud_front_origin_access_identity_config} => Types::CloudFrontOriginAccessIdentityConfig
    #   * {Types::GetCloudFrontOriginAccessIdentityConfigResult#etag #etag} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_cloud_front_origin_access_identity_config({
    #     id: "string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.cloud_front_origin_access_identity_config.caller_reference #=> String
    #   resp.cloud_front_origin_access_identity_config.comment #=> String
    #   resp.etag #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/GetCloudFrontOriginAccessIdentityConfig2018_06_18 AWS API Documentation
    #
    # @overload get_cloud_front_origin_access_identity_config(params = {})
    # @param [Hash] params ({})
    def get_cloud_front_origin_access_identity_config(params = {}, options = {})
      req = build_request(:get_cloud_front_origin_access_identity_config, params)
      req.send_request(options)
    end

    # Get the information about a distribution.
    #
    # @option params [required, String] :id
    #   The distribution's ID.
    #
    # @return [Types::GetDistributionResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDistributionResult#distribution #distribution} => Types::Distribution
    #   * {Types::GetDistributionResult#etag #etag} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_distribution({
    #     id: "string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.distribution.id #=> String
    #   resp.distribution.arn #=> String
    #   resp.distribution.status #=> String
    #   resp.distribution.last_modified_time #=> Time
    #   resp.distribution.in_progress_invalidation_batches #=> Integer
    #   resp.distribution.domain_name #=> String
    #   resp.distribution.active_trusted_signers.enabled #=> Boolean
    #   resp.distribution.active_trusted_signers.quantity #=> Integer
    #   resp.distribution.active_trusted_signers.items #=> Array
    #   resp.distribution.active_trusted_signers.items[0].aws_account_number #=> String
    #   resp.distribution.active_trusted_signers.items[0].key_pair_ids.quantity #=> Integer
    #   resp.distribution.active_trusted_signers.items[0].key_pair_ids.items #=> Array
    #   resp.distribution.active_trusted_signers.items[0].key_pair_ids.items[0] #=> String
    #   resp.distribution.distribution_config.caller_reference #=> String
    #   resp.distribution.distribution_config.aliases.quantity #=> Integer
    #   resp.distribution.distribution_config.aliases.items #=> Array
    #   resp.distribution.distribution_config.aliases.items[0] #=> String
    #   resp.distribution.distribution_config.default_root_object #=> String
    #   resp.distribution.distribution_config.origins.quantity #=> Integer
    #   resp.distribution.distribution_config.origins.items #=> Array
    #   resp.distribution.distribution_config.origins.items[0].id #=> String
    #   resp.distribution.distribution_config.origins.items[0].domain_name #=> String
    #   resp.distribution.distribution_config.origins.items[0].origin_path #=> String
    #   resp.distribution.distribution_config.origins.items[0].custom_headers.quantity #=> Integer
    #   resp.distribution.distribution_config.origins.items[0].custom_headers.items #=> Array
    #   resp.distribution.distribution_config.origins.items[0].custom_headers.items[0].header_name #=> String
    #   resp.distribution.distribution_config.origins.items[0].custom_headers.items[0].header_value #=> String
    #   resp.distribution.distribution_config.origins.items[0].s3_origin_config.origin_access_identity #=> String
    #   resp.distribution.distribution_config.origins.items[0].custom_origin_config.http_port #=> Integer
    #   resp.distribution.distribution_config.origins.items[0].custom_origin_config.https_port #=> Integer
    #   resp.distribution.distribution_config.origins.items[0].custom_origin_config.origin_protocol_policy #=> String, one of "http-only", "match-viewer", "https-only"
    #   resp.distribution.distribution_config.origins.items[0].custom_origin_config.origin_ssl_protocols.quantity #=> Integer
    #   resp.distribution.distribution_config.origins.items[0].custom_origin_config.origin_ssl_protocols.items #=> Array
    #   resp.distribution.distribution_config.origins.items[0].custom_origin_config.origin_ssl_protocols.items[0] #=> String, one of "SSLv3", "TLSv1", "TLSv1.1", "TLSv1.2"
    #   resp.distribution.distribution_config.origins.items[0].custom_origin_config.origin_read_timeout #=> Integer
    #   resp.distribution.distribution_config.origins.items[0].custom_origin_config.origin_keepalive_timeout #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.target_origin_id #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.query_string #=> Boolean
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.cookies.forward #=> String, one of "none", "whitelist", "all"
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.cookies.whitelisted_names.quantity #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.cookies.whitelisted_names.items #=> Array
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.cookies.whitelisted_names.items[0] #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.headers.quantity #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.headers.items #=> Array
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.headers.items[0] #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.query_string_cache_keys.quantity #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.query_string_cache_keys.items #=> Array
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.query_string_cache_keys.items[0] #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.trusted_signers.enabled #=> Boolean
    #   resp.distribution.distribution_config.default_cache_behavior.trusted_signers.quantity #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.trusted_signers.items #=> Array
    #   resp.distribution.distribution_config.default_cache_behavior.trusted_signers.items[0] #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.viewer_protocol_policy #=> String, one of "allow-all", "https-only", "redirect-to-https"
    #   resp.distribution.distribution_config.default_cache_behavior.min_ttl #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.allowed_methods.quantity #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.allowed_methods.items #=> Array
    #   resp.distribution.distribution_config.default_cache_behavior.allowed_methods.items[0] #=> String, one of "GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"
    #   resp.distribution.distribution_config.default_cache_behavior.allowed_methods.cached_methods.quantity #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.allowed_methods.cached_methods.items #=> Array
    #   resp.distribution.distribution_config.default_cache_behavior.allowed_methods.cached_methods.items[0] #=> String, one of "GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"
    #   resp.distribution.distribution_config.default_cache_behavior.smooth_streaming #=> Boolean
    #   resp.distribution.distribution_config.default_cache_behavior.default_ttl #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.max_ttl #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.compress #=> Boolean
    #   resp.distribution.distribution_config.default_cache_behavior.lambda_function_associations.quantity #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.lambda_function_associations.items #=> Array
    #   resp.distribution.distribution_config.default_cache_behavior.lambda_function_associations.items[0].lambda_function_arn #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.lambda_function_associations.items[0].event_type #=> String, one of "viewer-request", "viewer-response", "origin-request", "origin-response"
    #   resp.distribution.distribution_config.default_cache_behavior.lambda_function_associations.items[0].include_body #=> Boolean
    #   resp.distribution.distribution_config.default_cache_behavior.field_level_encryption_id #=> String
    #   resp.distribution.distribution_config.cache_behaviors.quantity #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items #=> Array
    #   resp.distribution.distribution_config.cache_behaviors.items[0].path_pattern #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].target_origin_id #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].forwarded_values.query_string #=> Boolean
    #   resp.distribution.distribution_config.cache_behaviors.items[0].forwarded_values.cookies.forward #=> String, one of "none", "whitelist", "all"
    #   resp.distribution.distribution_config.cache_behaviors.items[0].forwarded_values.cookies.whitelisted_names.quantity #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items[0].forwarded_values.cookies.whitelisted_names.items #=> Array
    #   resp.distribution.distribution_config.cache_behaviors.items[0].forwarded_values.cookies.whitelisted_names.items[0] #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].forwarded_values.headers.quantity #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items[0].forwarded_values.headers.items #=> Array
    #   resp.distribution.distribution_config.cache_behaviors.items[0].forwarded_values.headers.items[0] #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].forwarded_values.query_string_cache_keys.quantity #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items[0].forwarded_values.query_string_cache_keys.items #=> Array
    #   resp.distribution.distribution_config.cache_behaviors.items[0].forwarded_values.query_string_cache_keys.items[0] #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].trusted_signers.enabled #=> Boolean
    #   resp.distribution.distribution_config.cache_behaviors.items[0].trusted_signers.quantity #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items[0].trusted_signers.items #=> Array
    #   resp.distribution.distribution_config.cache_behaviors.items[0].trusted_signers.items[0] #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].viewer_protocol_policy #=> String, one of "allow-all", "https-only", "redirect-to-https"
    #   resp.distribution.distribution_config.cache_behaviors.items[0].min_ttl #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items[0].allowed_methods.quantity #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items[0].allowed_methods.items #=> Array
    #   resp.distribution.distribution_config.cache_behaviors.items[0].allowed_methods.items[0] #=> String, one of "GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"
    #   resp.distribution.distribution_config.cache_behaviors.items[0].allowed_methods.cached_methods.quantity #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items[0].allowed_methods.cached_methods.items #=> Array
    #   resp.distribution.distribution_config.cache_behaviors.items[0].allowed_methods.cached_methods.items[0] #=> String, one of "GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"
    #   resp.distribution.distribution_config.cache_behaviors.items[0].smooth_streaming #=> Boolean
    #   resp.distribution.distribution_config.cache_behaviors.items[0].default_ttl #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items[0].max_ttl #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items[0].compress #=> Boolean
    #   resp.distribution.distribution_config.cache_behaviors.items[0].lambda_function_associations.quantity #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items[0].lambda_function_associations.items #=> Array
    #   resp.distribution.distribution_config.cache_behaviors.items[0].lambda_function_associations.items[0].lambda_function_arn #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].lambda_function_associations.items[0].event_type #=> String, one of "viewer-request", "viewer-response", "origin-request", "origin-response"
    #   resp.distribution.distribution_config.cache_behaviors.items[0].lambda_function_associations.items[0].include_body #=> Boolean
    #   resp.distribution.distribution_config.cache_behaviors.items[0].field_level_encryption_id #=> String
    #   resp.distribution.distribution_config.custom_error_responses.quantity #=> Integer
    #   resp.distribution.distribution_config.custom_error_responses.items #=> Array
    #   resp.distribution.distribution_config.custom_error_responses.items[0].error_code #=> Integer
    #   resp.distribution.distribution_config.custom_error_responses.items[0].response_page_path #=> String
    #   resp.distribution.distribution_config.custom_error_responses.items[0].response_code #=> String
    #   resp.distribution.distribution_config.custom_error_responses.items[0].error_caching_min_ttl #=> Integer
    #   resp.distribution.distribution_config.comment #=> String
    #   resp.distribution.distribution_config.logging.enabled #=> Boolean
    #   resp.distribution.distribution_config.logging.include_cookies #=> Boolean
    #   resp.distribution.distribution_config.logging.bucket #=> String
    #   resp.distribution.distribution_config.logging.prefix #=> String
    #   resp.distribution.distribution_config.price_class #=> String, one of "PriceClass_100", "PriceClass_200", "PriceClass_All"
    #   resp.distribution.distribution_config.enabled #=> Boolean
    #   resp.distribution.distribution_config.viewer_certificate.cloud_front_default_certificate #=> Boolean
    #   resp.distribution.distribution_config.viewer_certificate.iam_certificate_id #=> String
    #   resp.distribution.distribution_config.viewer_certificate.acm_certificate_arn #=> String
    #   resp.distribution.distribution_config.viewer_certificate.ssl_support_method #=> String, one of "sni-only", "vip"
    #   resp.distribution.distribution_config.viewer_certificate.minimum_protocol_version #=> String, one of "SSLv3", "TLSv1", "TLSv1_2016", "TLSv1.1_2016", "TLSv1.2_2018"
    #   resp.distribution.distribution_config.viewer_certificate.certificate #=> String
    #   resp.distribution.distribution_config.viewer_certificate.certificate_source #=> String, one of "cloudfront", "iam", "acm"
    #   resp.distribution.distribution_config.restrictions.geo_restriction.restriction_type #=> String, one of "blacklist", "whitelist", "none"
    #   resp.distribution.distribution_config.restrictions.geo_restriction.quantity #=> Integer
    #   resp.distribution.distribution_config.restrictions.geo_restriction.items #=> Array
    #   resp.distribution.distribution_config.restrictions.geo_restriction.items[0] #=> String
    #   resp.distribution.distribution_config.web_acl_id #=> String
    #   resp.distribution.distribution_config.http_version #=> String, one of "http1.1", "http2"
    #   resp.distribution.distribution_config.is_ipv6_enabled #=> Boolean
    #   resp.etag #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/GetDistribution2018_06_18 AWS API Documentation
    #
    # @overload get_distribution(params = {})
    # @param [Hash] params ({})
    def get_distribution(params = {}, options = {})
      req = build_request(:get_distribution, params)
      req.send_request(options)
    end

    # Get the configuration information about a distribution.
    #
    # @option params [required, String] :id
    #   The distribution's ID.
    #
    # @return [Types::GetDistributionConfigResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDistributionConfigResult#distribution_config #distribution_config} => Types::DistributionConfig
    #   * {Types::GetDistributionConfigResult#etag #etag} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_distribution_config({
    #     id: "string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.distribution_config.caller_reference #=> String
    #   resp.distribution_config.aliases.quantity #=> Integer
    #   resp.distribution_config.aliases.items #=> Array
    #   resp.distribution_config.aliases.items[0] #=> String
    #   resp.distribution_config.default_root_object #=> String
    #   resp.distribution_config.origins.quantity #=> Integer
    #   resp.distribution_config.origins.items #=> Array
    #   resp.distribution_config.origins.items[0].id #=> String
    #   resp.distribution_config.origins.items[0].domain_name #=> String
    #   resp.distribution_config.origins.items[0].origin_path #=> String
    #   resp.distribution_config.origins.items[0].custom_headers.quantity #=> Integer
    #   resp.distribution_config.origins.items[0].custom_headers.items #=> Array
    #   resp.distribution_config.origins.items[0].custom_headers.items[0].header_name #=> String
    #   resp.distribution_config.origins.items[0].custom_headers.items[0].header_value #=> String
    #   resp.distribution_config.origins.items[0].s3_origin_config.origin_access_identity #=> String
    #   resp.distribution_config.origins.items[0].custom_origin_config.http_port #=> Integer
    #   resp.distribution_config.origins.items[0].custom_origin_config.https_port #=> Integer
    #   resp.distribution_config.origins.items[0].custom_origin_config.origin_protocol_policy #=> String, one of "http-only", "match-viewer", "https-only"
    #   resp.distribution_config.origins.items[0].custom_origin_config.origin_ssl_protocols.quantity #=> Integer
    #   resp.distribution_config.origins.items[0].custom_origin_config.origin_ssl_protocols.items #=> Array
    #   resp.distribution_config.origins.items[0].custom_origin_config.origin_ssl_protocols.items[0] #=> String, one of "SSLv3", "TLSv1", "TLSv1.1", "TLSv1.2"
    #   resp.distribution_config.origins.items[0].custom_origin_config.origin_read_timeout #=> Integer
    #   resp.distribution_config.origins.items[0].custom_origin_config.origin_keepalive_timeout #=> Integer
    #   resp.distribution_config.default_cache_behavior.target_origin_id #=> String
    #   resp.distribution_config.default_cache_behavior.forwarded_values.query_string #=> Boolean
    #   resp.distribution_config.default_cache_behavior.forwarded_values.cookies.forward #=> String, one of "none", "whitelist", "all"
    #   resp.distribution_config.default_cache_behavior.forwarded_values.cookies.whitelisted_names.quantity #=> Integer
    #   resp.distribution_config.default_cache_behavior.forwarded_values.cookies.whitelisted_names.items #=> Array
    #   resp.distribution_config.default_cache_behavior.forwarded_values.cookies.whitelisted_names.items[0] #=> String
    #   resp.distribution_config.default_cache_behavior.forwarded_values.headers.quantity #=> Integer
    #   resp.distribution_config.default_cache_behavior.forwarded_values.headers.items #=> Array
    #   resp.distribution_config.default_cache_behavior.forwarded_values.headers.items[0] #=> String
    #   resp.distribution_config.default_cache_behavior.forwarded_values.query_string_cache_keys.quantity #=> Integer
    #   resp.distribution_config.default_cache_behavior.forwarded_values.query_string_cache_keys.items #=> Array
    #   resp.distribution_config.default_cache_behavior.forwarded_values.query_string_cache_keys.items[0] #=> String
    #   resp.distribution_config.default_cache_behavior.trusted_signers.enabled #=> Boolean
    #   resp.distribution_config.default_cache_behavior.trusted_signers.quantity #=> Integer
    #   resp.distribution_config.default_cache_behavior.trusted_signers.items #=> Array
    #   resp.distribution_config.default_cache_behavior.trusted_signers.items[0] #=> String
    #   resp.distribution_config.default_cache_behavior.viewer_protocol_policy #=> String, one of "allow-all", "https-only", "redirect-to-https"
    #   resp.distribution_config.default_cache_behavior.min_ttl #=> Integer
    #   resp.distribution_config.default_cache_behavior.allowed_methods.quantity #=> Integer
    #   resp.distribution_config.default_cache_behavior.allowed_methods.items #=> Array
    #   resp.distribution_config.default_cache_behavior.allowed_methods.items[0] #=> String, one of "GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"
    #   resp.distribution_config.default_cache_behavior.allowed_methods.cached_methods.quantity #=> Integer
    #   resp.distribution_config.default_cache_behavior.allowed_methods.cached_methods.items #=> Array
    #   resp.distribution_config.default_cache_behavior.allowed_methods.cached_methods.items[0] #=> String, one of "GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"
    #   resp.distribution_config.default_cache_behavior.smooth_streaming #=> Boolean
    #   resp.distribution_config.default_cache_behavior.default_ttl #=> Integer
    #   resp.distribution_config.default_cache_behavior.max_ttl #=> Integer
    #   resp.distribution_config.default_cache_behavior.compress #=> Boolean
    #   resp.distribution_config.default_cache_behavior.lambda_function_associations.quantity #=> Integer
    #   resp.distribution_config.default_cache_behavior.lambda_function_associations.items #=> Array
    #   resp.distribution_config.default_cache_behavior.lambda_function_associations.items[0].lambda_function_arn #=> String
    #   resp.distribution_config.default_cache_behavior.lambda_function_associations.items[0].event_type #=> String, one of "viewer-request", "viewer-response", "origin-request", "origin-response"
    #   resp.distribution_config.default_cache_behavior.lambda_function_associations.items[0].include_body #=> Boolean
    #   resp.distribution_config.default_cache_behavior.field_level_encryption_id #=> String
    #   resp.distribution_config.cache_behaviors.quantity #=> Integer
    #   resp.distribution_config.cache_behaviors.items #=> Array
    #   resp.distribution_config.cache_behaviors.items[0].path_pattern #=> String
    #   resp.distribution_config.cache_behaviors.items[0].target_origin_id #=> String
    #   resp.distribution_config.cache_behaviors.items[0].forwarded_values.query_string #=> Boolean
    #   resp.distribution_config.cache_behaviors.items[0].forwarded_values.cookies.forward #=> String, one of "none", "whitelist", "all"
    #   resp.distribution_config.cache_behaviors.items[0].forwarded_values.cookies.whitelisted_names.quantity #=> Integer
    #   resp.distribution_config.cache_behaviors.items[0].forwarded_values.cookies.whitelisted_names.items #=> Array
    #   resp.distribution_config.cache_behaviors.items[0].forwarded_values.cookies.whitelisted_names.items[0] #=> String
    #   resp.distribution_config.cache_behaviors.items[0].forwarded_values.headers.quantity #=> Integer
    #   resp.distribution_config.cache_behaviors.items[0].forwarded_values.headers.items #=> Array
    #   resp.distribution_config.cache_behaviors.items[0].forwarded_values.headers.items[0] #=> String
    #   resp.distribution_config.cache_behaviors.items[0].forwarded_values.query_string_cache_keys.quantity #=> Integer
    #   resp.distribution_config.cache_behaviors.items[0].forwarded_values.query_string_cache_keys.items #=> Array
    #   resp.distribution_config.cache_behaviors.items[0].forwarded_values.query_string_cache_keys.items[0] #=> String
    #   resp.distribution_config.cache_behaviors.items[0].trusted_signers.enabled #=> Boolean
    #   resp.distribution_config.cache_behaviors.items[0].trusted_signers.quantity #=> Integer
    #   resp.distribution_config.cache_behaviors.items[0].trusted_signers.items #=> Array
    #   resp.distribution_config.cache_behaviors.items[0].trusted_signers.items[0] #=> String
    #   resp.distribution_config.cache_behaviors.items[0].viewer_protocol_policy #=> String, one of "allow-all", "https-only", "redirect-to-https"
    #   resp.distribution_config.cache_behaviors.items[0].min_ttl #=> Integer
    #   resp.distribution_config.cache_behaviors.items[0].allowed_methods.quantity #=> Integer
    #   resp.distribution_config.cache_behaviors.items[0].allowed_methods.items #=> Array
    #   resp.distribution_config.cache_behaviors.items[0].allowed_methods.items[0] #=> String, one of "GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"
    #   resp.distribution_config.cache_behaviors.items[0].allowed_methods.cached_methods.quantity #=> Integer
    #   resp.distribution_config.cache_behaviors.items[0].allowed_methods.cached_methods.items #=> Array
    #   resp.distribution_config.cache_behaviors.items[0].allowed_methods.cached_methods.items[0] #=> String, one of "GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"
    #   resp.distribution_config.cache_behaviors.items[0].smooth_streaming #=> Boolean
    #   resp.distribution_config.cache_behaviors.items[0].default_ttl #=> Integer
    #   resp.distribution_config.cache_behaviors.items[0].max_ttl #=> Integer
    #   resp.distribution_config.cache_behaviors.items[0].compress #=> Boolean
    #   resp.distribution_config.cache_behaviors.items[0].lambda_function_associations.quantity #=> Integer
    #   resp.distribution_config.cache_behaviors.items[0].lambda_function_associations.items #=> Array
    #   resp.distribution_config.cache_behaviors.items[0].lambda_function_associations.items[0].lambda_function_arn #=> String
    #   resp.distribution_config.cache_behaviors.items[0].lambda_function_associations.items[0].event_type #=> String, one of "viewer-request", "viewer-response", "origin-request", "origin-response"
    #   resp.distribution_config.cache_behaviors.items[0].lambda_function_associations.items[0].include_body #=> Boolean
    #   resp.distribution_config.cache_behaviors.items[0].field_level_encryption_id #=> String
    #   resp.distribution_config.custom_error_responses.quantity #=> Integer
    #   resp.distribution_config.custom_error_responses.items #=> Array
    #   resp.distribution_config.custom_error_responses.items[0].error_code #=> Integer
    #   resp.distribution_config.custom_error_responses.items[0].response_page_path #=> String
    #   resp.distribution_config.custom_error_responses.items[0].response_code #=> String
    #   resp.distribution_config.custom_error_responses.items[0].error_caching_min_ttl #=> Integer
    #   resp.distribution_config.comment #=> String
    #   resp.distribution_config.logging.enabled #=> Boolean
    #   resp.distribution_config.logging.include_cookies #=> Boolean
    #   resp.distribution_config.logging.bucket #=> String
    #   resp.distribution_config.logging.prefix #=> String
    #   resp.distribution_config.price_class #=> String, one of "PriceClass_100", "PriceClass_200", "PriceClass_All"
    #   resp.distribution_config.enabled #=> Boolean
    #   resp.distribution_config.viewer_certificate.cloud_front_default_certificate #=> Boolean
    #   resp.distribution_config.viewer_certificate.iam_certificate_id #=> String
    #   resp.distribution_config.viewer_certificate.acm_certificate_arn #=> String
    #   resp.distribution_config.viewer_certificate.ssl_support_method #=> String, one of "sni-only", "vip"
    #   resp.distribution_config.viewer_certificate.minimum_protocol_version #=> String, one of "SSLv3", "TLSv1", "TLSv1_2016", "TLSv1.1_2016", "TLSv1.2_2018"
    #   resp.distribution_config.viewer_certificate.certificate #=> String
    #   resp.distribution_config.viewer_certificate.certificate_source #=> String, one of "cloudfront", "iam", "acm"
    #   resp.distribution_config.restrictions.geo_restriction.restriction_type #=> String, one of "blacklist", "whitelist", "none"
    #   resp.distribution_config.restrictions.geo_restriction.quantity #=> Integer
    #   resp.distribution_config.restrictions.geo_restriction.items #=> Array
    #   resp.distribution_config.restrictions.geo_restriction.items[0] #=> String
    #   resp.distribution_config.web_acl_id #=> String
    #   resp.distribution_config.http_version #=> String, one of "http1.1", "http2"
    #   resp.distribution_config.is_ipv6_enabled #=> Boolean
    #   resp.etag #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/GetDistributionConfig2018_06_18 AWS API Documentation
    #
    # @overload get_distribution_config(params = {})
    # @param [Hash] params ({})
    def get_distribution_config(params = {}, options = {})
      req = build_request(:get_distribution_config, params)
      req.send_request(options)
    end

    # Get the field-level encryption configuration information.
    #
    # @option params [required, String] :id
    #   Request the ID for the field-level encryption configuration
    #   information.
    #
    # @return [Types::GetFieldLevelEncryptionResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetFieldLevelEncryptionResult#field_level_encryption #field_level_encryption} => Types::FieldLevelEncryption
    #   * {Types::GetFieldLevelEncryptionResult#etag #etag} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_field_level_encryption({
    #     id: "string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.field_level_encryption.id #=> String
    #   resp.field_level_encryption.last_modified_time #=> Time
    #   resp.field_level_encryption.field_level_encryption_config.caller_reference #=> String
    #   resp.field_level_encryption.field_level_encryption_config.comment #=> String
    #   resp.field_level_encryption.field_level_encryption_config.query_arg_profile_config.forward_when_query_arg_profile_is_unknown #=> Boolean
    #   resp.field_level_encryption.field_level_encryption_config.query_arg_profile_config.query_arg_profiles.quantity #=> Integer
    #   resp.field_level_encryption.field_level_encryption_config.query_arg_profile_config.query_arg_profiles.items #=> Array
    #   resp.field_level_encryption.field_level_encryption_config.query_arg_profile_config.query_arg_profiles.items[0].query_arg #=> String
    #   resp.field_level_encryption.field_level_encryption_config.query_arg_profile_config.query_arg_profiles.items[0].profile_id #=> String
    #   resp.field_level_encryption.field_level_encryption_config.content_type_profile_config.forward_when_content_type_is_unknown #=> Boolean
    #   resp.field_level_encryption.field_level_encryption_config.content_type_profile_config.content_type_profiles.quantity #=> Integer
    #   resp.field_level_encryption.field_level_encryption_config.content_type_profile_config.content_type_profiles.items #=> Array
    #   resp.field_level_encryption.field_level_encryption_config.content_type_profile_config.content_type_profiles.items[0].format #=> String, one of "URLEncoded"
    #   resp.field_level_encryption.field_level_encryption_config.content_type_profile_config.content_type_profiles.items[0].profile_id #=> String
    #   resp.field_level_encryption.field_level_encryption_config.content_type_profile_config.content_type_profiles.items[0].content_type #=> String
    #   resp.etag #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/GetFieldLevelEncryption2018_06_18 AWS API Documentation
    #
    # @overload get_field_level_encryption(params = {})
    # @param [Hash] params ({})
    def get_field_level_encryption(params = {}, options = {})
      req = build_request(:get_field_level_encryption, params)
      req.send_request(options)
    end

    # Get the field-level encryption configuration information.
    #
    # @option params [required, String] :id
    #   Request the ID for the field-level encryption configuration
    #   information.
    #
    # @return [Types::GetFieldLevelEncryptionConfigResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetFieldLevelEncryptionConfigResult#field_level_encryption_config #field_level_encryption_config} => Types::FieldLevelEncryptionConfig
    #   * {Types::GetFieldLevelEncryptionConfigResult#etag #etag} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_field_level_encryption_config({
    #     id: "string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.field_level_encryption_config.caller_reference #=> String
    #   resp.field_level_encryption_config.comment #=> String
    #   resp.field_level_encryption_config.query_arg_profile_config.forward_when_query_arg_profile_is_unknown #=> Boolean
    #   resp.field_level_encryption_config.query_arg_profile_config.query_arg_profiles.quantity #=> Integer
    #   resp.field_level_encryption_config.query_arg_profile_config.query_arg_profiles.items #=> Array
    #   resp.field_level_encryption_config.query_arg_profile_config.query_arg_profiles.items[0].query_arg #=> String
    #   resp.field_level_encryption_config.query_arg_profile_config.query_arg_profiles.items[0].profile_id #=> String
    #   resp.field_level_encryption_config.content_type_profile_config.forward_when_content_type_is_unknown #=> Boolean
    #   resp.field_level_encryption_config.content_type_profile_config.content_type_profiles.quantity #=> Integer
    #   resp.field_level_encryption_config.content_type_profile_config.content_type_profiles.items #=> Array
    #   resp.field_level_encryption_config.content_type_profile_config.content_type_profiles.items[0].format #=> String, one of "URLEncoded"
    #   resp.field_level_encryption_config.content_type_profile_config.content_type_profiles.items[0].profile_id #=> String
    #   resp.field_level_encryption_config.content_type_profile_config.content_type_profiles.items[0].content_type #=> String
    #   resp.etag #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/GetFieldLevelEncryptionConfig2018_06_18 AWS API Documentation
    #
    # @overload get_field_level_encryption_config(params = {})
    # @param [Hash] params ({})
    def get_field_level_encryption_config(params = {}, options = {})
      req = build_request(:get_field_level_encryption_config, params)
      req.send_request(options)
    end

    # Get the field-level encryption profile information.
    #
    # @option params [required, String] :id
    #   Get the ID for the field-level encryption profile information.
    #
    # @return [Types::GetFieldLevelEncryptionProfileResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetFieldLevelEncryptionProfileResult#field_level_encryption_profile #field_level_encryption_profile} => Types::FieldLevelEncryptionProfile
    #   * {Types::GetFieldLevelEncryptionProfileResult#etag #etag} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_field_level_encryption_profile({
    #     id: "string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.field_level_encryption_profile.id #=> String
    #   resp.field_level_encryption_profile.last_modified_time #=> Time
    #   resp.field_level_encryption_profile.field_level_encryption_profile_config.name #=> String
    #   resp.field_level_encryption_profile.field_level_encryption_profile_config.caller_reference #=> String
    #   resp.field_level_encryption_profile.field_level_encryption_profile_config.comment #=> String
    #   resp.field_level_encryption_profile.field_level_encryption_profile_config.encryption_entities.quantity #=> Integer
    #   resp.field_level_encryption_profile.field_level_encryption_profile_config.encryption_entities.items #=> Array
    #   resp.field_level_encryption_profile.field_level_encryption_profile_config.encryption_entities.items[0].public_key_id #=> String
    #   resp.field_level_encryption_profile.field_level_encryption_profile_config.encryption_entities.items[0].provider_id #=> String
    #   resp.field_level_encryption_profile.field_level_encryption_profile_config.encryption_entities.items[0].field_patterns.quantity #=> Integer
    #   resp.field_level_encryption_profile.field_level_encryption_profile_config.encryption_entities.items[0].field_patterns.items #=> Array
    #   resp.field_level_encryption_profile.field_level_encryption_profile_config.encryption_entities.items[0].field_patterns.items[0] #=> String
    #   resp.etag #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/GetFieldLevelEncryptionProfile2018_06_18 AWS API Documentation
    #
    # @overload get_field_level_encryption_profile(params = {})
    # @param [Hash] params ({})
    def get_field_level_encryption_profile(params = {}, options = {})
      req = build_request(:get_field_level_encryption_profile, params)
      req.send_request(options)
    end

    # Get the field-level encryption profile configuration information.
    #
    # @option params [required, String] :id
    #   Get the ID for the field-level encryption profile configuration
    #   information.
    #
    # @return [Types::GetFieldLevelEncryptionProfileConfigResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetFieldLevelEncryptionProfileConfigResult#field_level_encryption_profile_config #field_level_encryption_profile_config} => Types::FieldLevelEncryptionProfileConfig
    #   * {Types::GetFieldLevelEncryptionProfileConfigResult#etag #etag} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_field_level_encryption_profile_config({
    #     id: "string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.field_level_encryption_profile_config.name #=> String
    #   resp.field_level_encryption_profile_config.caller_reference #=> String
    #   resp.field_level_encryption_profile_config.comment #=> String
    #   resp.field_level_encryption_profile_config.encryption_entities.quantity #=> Integer
    #   resp.field_level_encryption_profile_config.encryption_entities.items #=> Array
    #   resp.field_level_encryption_profile_config.encryption_entities.items[0].public_key_id #=> String
    #   resp.field_level_encryption_profile_config.encryption_entities.items[0].provider_id #=> String
    #   resp.field_level_encryption_profile_config.encryption_entities.items[0].field_patterns.quantity #=> Integer
    #   resp.field_level_encryption_profile_config.encryption_entities.items[0].field_patterns.items #=> Array
    #   resp.field_level_encryption_profile_config.encryption_entities.items[0].field_patterns.items[0] #=> String
    #   resp.etag #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/GetFieldLevelEncryptionProfileConfig2018_06_18 AWS API Documentation
    #
    # @overload get_field_level_encryption_profile_config(params = {})
    # @param [Hash] params ({})
    def get_field_level_encryption_profile_config(params = {}, options = {})
      req = build_request(:get_field_level_encryption_profile_config, params)
      req.send_request(options)
    end

    # Get the information about an invalidation.
    #
    # @option params [required, String] :distribution_id
    #   The distribution's ID.
    #
    # @option params [required, String] :id
    #   The identifier for the invalidation request, for example,
    #   `IDFDVBD632BHDS5`.
    #
    # @return [Types::GetInvalidationResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetInvalidationResult#invalidation #invalidation} => Types::Invalidation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_invalidation({
    #     distribution_id: "string", # required
    #     id: "string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.invalidation.id #=> String
    #   resp.invalidation.status #=> String
    #   resp.invalidation.create_time #=> Time
    #   resp.invalidation.invalidation_batch.paths.quantity #=> Integer
    #   resp.invalidation.invalidation_batch.paths.items #=> Array
    #   resp.invalidation.invalidation_batch.paths.items[0] #=> String
    #   resp.invalidation.invalidation_batch.caller_reference #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/GetInvalidation2018_06_18 AWS API Documentation
    #
    # @overload get_invalidation(params = {})
    # @param [Hash] params ({})
    def get_invalidation(params = {}, options = {})
      req = build_request(:get_invalidation, params)
      req.send_request(options)
    end

    # Get the public key information.
    #
    # @option params [required, String] :id
    #   Request the ID for the public key.
    #
    # @return [Types::GetPublicKeyResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPublicKeyResult#public_key #public_key} => Types::PublicKey
    #   * {Types::GetPublicKeyResult#etag #etag} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_public_key({
    #     id: "string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.public_key.id #=> String
    #   resp.public_key.created_time #=> Time
    #   resp.public_key.public_key_config.caller_reference #=> String
    #   resp.public_key.public_key_config.name #=> String
    #   resp.public_key.public_key_config.encoded_key #=> String
    #   resp.public_key.public_key_config.comment #=> String
    #   resp.etag #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/GetPublicKey2018_06_18 AWS API Documentation
    #
    # @overload get_public_key(params = {})
    # @param [Hash] params ({})
    def get_public_key(params = {}, options = {})
      req = build_request(:get_public_key, params)
      req.send_request(options)
    end

    # Return public key configuration informaation
    #
    # @option params [required, String] :id
    #   Request the ID for the public key configuration.
    #
    # @return [Types::GetPublicKeyConfigResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPublicKeyConfigResult#public_key_config #public_key_config} => Types::PublicKeyConfig
    #   * {Types::GetPublicKeyConfigResult#etag #etag} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_public_key_config({
    #     id: "string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.public_key_config.caller_reference #=> String
    #   resp.public_key_config.name #=> String
    #   resp.public_key_config.encoded_key #=> String
    #   resp.public_key_config.comment #=> String
    #   resp.etag #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/GetPublicKeyConfig2018_06_18 AWS API Documentation
    #
    # @overload get_public_key_config(params = {})
    # @param [Hash] params ({})
    def get_public_key_config(params = {}, options = {})
      req = build_request(:get_public_key_config, params)
      req.send_request(options)
    end

    # Gets information about a specified RTMP distribution, including the
    # distribution configuration.
    #
    # @option params [required, String] :id
    #   The streaming distribution's ID.
    #
    # @return [Types::GetStreamingDistributionResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetStreamingDistributionResult#streaming_distribution #streaming_distribution} => Types::StreamingDistribution
    #   * {Types::GetStreamingDistributionResult#etag #etag} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_streaming_distribution({
    #     id: "string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.streaming_distribution.id #=> String
    #   resp.streaming_distribution.arn #=> String
    #   resp.streaming_distribution.status #=> String
    #   resp.streaming_distribution.last_modified_time #=> Time
    #   resp.streaming_distribution.domain_name #=> String
    #   resp.streaming_distribution.active_trusted_signers.enabled #=> Boolean
    #   resp.streaming_distribution.active_trusted_signers.quantity #=> Integer
    #   resp.streaming_distribution.active_trusted_signers.items #=> Array
    #   resp.streaming_distribution.active_trusted_signers.items[0].aws_account_number #=> String
    #   resp.streaming_distribution.active_trusted_signers.items[0].key_pair_ids.quantity #=> Integer
    #   resp.streaming_distribution.active_trusted_signers.items[0].key_pair_ids.items #=> Array
    #   resp.streaming_distribution.active_trusted_signers.items[0].key_pair_ids.items[0] #=> String
    #   resp.streaming_distribution.streaming_distribution_config.caller_reference #=> String
    #   resp.streaming_distribution.streaming_distribution_config.s3_origin.domain_name #=> String
    #   resp.streaming_distribution.streaming_distribution_config.s3_origin.origin_access_identity #=> String
    #   resp.streaming_distribution.streaming_distribution_config.aliases.quantity #=> Integer
    #   resp.streaming_distribution.streaming_distribution_config.aliases.items #=> Array
    #   resp.streaming_distribution.streaming_distribution_config.aliases.items[0] #=> String
    #   resp.streaming_distribution.streaming_distribution_config.comment #=> String
    #   resp.streaming_distribution.streaming_distribution_config.logging.enabled #=> Boolean
    #   resp.streaming_distribution.streaming_distribution_config.logging.bucket #=> String
    #   resp.streaming_distribution.streaming_distribution_config.logging.prefix #=> String
    #   resp.streaming_distribution.streaming_distribution_config.trusted_signers.enabled #=> Boolean
    #   resp.streaming_distribution.streaming_distribution_config.trusted_signers.quantity #=> Integer
    #   resp.streaming_distribution.streaming_distribution_config.trusted_signers.items #=> Array
    #   resp.streaming_distribution.streaming_distribution_config.trusted_signers.items[0] #=> String
    #   resp.streaming_distribution.streaming_distribution_config.price_class #=> String, one of "PriceClass_100", "PriceClass_200", "PriceClass_All"
    #   resp.streaming_distribution.streaming_distribution_config.enabled #=> Boolean
    #   resp.etag #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/GetStreamingDistribution2018_06_18 AWS API Documentation
    #
    # @overload get_streaming_distribution(params = {})
    # @param [Hash] params ({})
    def get_streaming_distribution(params = {}, options = {})
      req = build_request(:get_streaming_distribution, params)
      req.send_request(options)
    end

    # Get the configuration information about a streaming distribution.
    #
    # @option params [required, String] :id
    #   The streaming distribution's ID.
    #
    # @return [Types::GetStreamingDistributionConfigResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetStreamingDistributionConfigResult#streaming_distribution_config #streaming_distribution_config} => Types::StreamingDistributionConfig
    #   * {Types::GetStreamingDistributionConfigResult#etag #etag} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_streaming_distribution_config({
    #     id: "string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.streaming_distribution_config.caller_reference #=> String
    #   resp.streaming_distribution_config.s3_origin.domain_name #=> String
    #   resp.streaming_distribution_config.s3_origin.origin_access_identity #=> String
    #   resp.streaming_distribution_config.aliases.quantity #=> Integer
    #   resp.streaming_distribution_config.aliases.items #=> Array
    #   resp.streaming_distribution_config.aliases.items[0] #=> String
    #   resp.streaming_distribution_config.comment #=> String
    #   resp.streaming_distribution_config.logging.enabled #=> Boolean
    #   resp.streaming_distribution_config.logging.bucket #=> String
    #   resp.streaming_distribution_config.logging.prefix #=> String
    #   resp.streaming_distribution_config.trusted_signers.enabled #=> Boolean
    #   resp.streaming_distribution_config.trusted_signers.quantity #=> Integer
    #   resp.streaming_distribution_config.trusted_signers.items #=> Array
    #   resp.streaming_distribution_config.trusted_signers.items[0] #=> String
    #   resp.streaming_distribution_config.price_class #=> String, one of "PriceClass_100", "PriceClass_200", "PriceClass_All"
    #   resp.streaming_distribution_config.enabled #=> Boolean
    #   resp.etag #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/GetStreamingDistributionConfig2018_06_18 AWS API Documentation
    #
    # @overload get_streaming_distribution_config(params = {})
    # @param [Hash] params ({})
    def get_streaming_distribution_config(params = {}, options = {})
      req = build_request(:get_streaming_distribution_config, params)
      req.send_request(options)
    end

    # Lists origin access identities.
    #
    # @option params [String] :marker
    #   Use this when paginating results to indicate where to begin in your
    #   list of origin access identities. The results include identities in
    #   the list that occur after the marker. To get the next page of results,
    #   set the `Marker` to the value of the `NextMarker` from the current
    #   page's response (which is also the ID of the last identity on that
    #   page).
    #
    # @option params [Integer] :max_items
    #   The maximum number of origin access identities you want in the
    #   response body.
    #
    # @return [Types::ListCloudFrontOriginAccessIdentitiesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCloudFrontOriginAccessIdentitiesResult#cloud_front_origin_access_identity_list #cloud_front_origin_access_identity_list} => Types::CloudFrontOriginAccessIdentityList
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_cloud_front_origin_access_identities({
    #     marker: "string",
    #     max_items: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.cloud_front_origin_access_identity_list.marker #=> String
    #   resp.cloud_front_origin_access_identity_list.next_marker #=> String
    #   resp.cloud_front_origin_access_identity_list.max_items #=> Integer
    #   resp.cloud_front_origin_access_identity_list.is_truncated #=> Boolean
    #   resp.cloud_front_origin_access_identity_list.quantity #=> Integer
    #   resp.cloud_front_origin_access_identity_list.items #=> Array
    #   resp.cloud_front_origin_access_identity_list.items[0].id #=> String
    #   resp.cloud_front_origin_access_identity_list.items[0].s3_canonical_user_id #=> String
    #   resp.cloud_front_origin_access_identity_list.items[0].comment #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/ListCloudFrontOriginAccessIdentities2018_06_18 AWS API Documentation
    #
    # @overload list_cloud_front_origin_access_identities(params = {})
    # @param [Hash] params ({})
    def list_cloud_front_origin_access_identities(params = {}, options = {})
      req = build_request(:list_cloud_front_origin_access_identities, params)
      req.send_request(options)
    end

    # List distributions.
    #
    # @option params [String] :marker
    #   Use this when paginating results to indicate where to begin in your
    #   list of distributions. The results include distributions in the list
    #   that occur after the marker. To get the next page of results, set the
    #   `Marker` to the value of the `NextMarker` from the current page's
    #   response (which is also the ID of the last distribution on that page).
    #
    # @option params [Integer] :max_items
    #   The maximum number of distributions you want in the response body.
    #
    # @return [Types::ListDistributionsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDistributionsResult#distribution_list #distribution_list} => Types::DistributionList
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_distributions({
    #     marker: "string",
    #     max_items: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.distribution_list.marker #=> String
    #   resp.distribution_list.next_marker #=> String
    #   resp.distribution_list.max_items #=> Integer
    #   resp.distribution_list.is_truncated #=> Boolean
    #   resp.distribution_list.quantity #=> Integer
    #   resp.distribution_list.items #=> Array
    #   resp.distribution_list.items[0].id #=> String
    #   resp.distribution_list.items[0].arn #=> String
    #   resp.distribution_list.items[0].status #=> String
    #   resp.distribution_list.items[0].last_modified_time #=> Time
    #   resp.distribution_list.items[0].domain_name #=> String
    #   resp.distribution_list.items[0].aliases.quantity #=> Integer
    #   resp.distribution_list.items[0].aliases.items #=> Array
    #   resp.distribution_list.items[0].aliases.items[0] #=> String
    #   resp.distribution_list.items[0].origins.quantity #=> Integer
    #   resp.distribution_list.items[0].origins.items #=> Array
    #   resp.distribution_list.items[0].origins.items[0].id #=> String
    #   resp.distribution_list.items[0].origins.items[0].domain_name #=> String
    #   resp.distribution_list.items[0].origins.items[0].origin_path #=> String
    #   resp.distribution_list.items[0].origins.items[0].custom_headers.quantity #=> Integer
    #   resp.distribution_list.items[0].origins.items[0].custom_headers.items #=> Array
    #   resp.distribution_list.items[0].origins.items[0].custom_headers.items[0].header_name #=> String
    #   resp.distribution_list.items[0].origins.items[0].custom_headers.items[0].header_value #=> String
    #   resp.distribution_list.items[0].origins.items[0].s3_origin_config.origin_access_identity #=> String
    #   resp.distribution_list.items[0].origins.items[0].custom_origin_config.http_port #=> Integer
    #   resp.distribution_list.items[0].origins.items[0].custom_origin_config.https_port #=> Integer
    #   resp.distribution_list.items[0].origins.items[0].custom_origin_config.origin_protocol_policy #=> String, one of "http-only", "match-viewer", "https-only"
    #   resp.distribution_list.items[0].origins.items[0].custom_origin_config.origin_ssl_protocols.quantity #=> Integer
    #   resp.distribution_list.items[0].origins.items[0].custom_origin_config.origin_ssl_protocols.items #=> Array
    #   resp.distribution_list.items[0].origins.items[0].custom_origin_config.origin_ssl_protocols.items[0] #=> String, one of "SSLv3", "TLSv1", "TLSv1.1", "TLSv1.2"
    #   resp.distribution_list.items[0].origins.items[0].custom_origin_config.origin_read_timeout #=> Integer
    #   resp.distribution_list.items[0].origins.items[0].custom_origin_config.origin_keepalive_timeout #=> Integer
    #   resp.distribution_list.items[0].default_cache_behavior.target_origin_id #=> String
    #   resp.distribution_list.items[0].default_cache_behavior.forwarded_values.query_string #=> Boolean
    #   resp.distribution_list.items[0].default_cache_behavior.forwarded_values.cookies.forward #=> String, one of "none", "whitelist", "all"
    #   resp.distribution_list.items[0].default_cache_behavior.forwarded_values.cookies.whitelisted_names.quantity #=> Integer
    #   resp.distribution_list.items[0].default_cache_behavior.forwarded_values.cookies.whitelisted_names.items #=> Array
    #   resp.distribution_list.items[0].default_cache_behavior.forwarded_values.cookies.whitelisted_names.items[0] #=> String
    #   resp.distribution_list.items[0].default_cache_behavior.forwarded_values.headers.quantity #=> Integer
    #   resp.distribution_list.items[0].default_cache_behavior.forwarded_values.headers.items #=> Array
    #   resp.distribution_list.items[0].default_cache_behavior.forwarded_values.headers.items[0] #=> String
    #   resp.distribution_list.items[0].default_cache_behavior.forwarded_values.query_string_cache_keys.quantity #=> Integer
    #   resp.distribution_list.items[0].default_cache_behavior.forwarded_values.query_string_cache_keys.items #=> Array
    #   resp.distribution_list.items[0].default_cache_behavior.forwarded_values.query_string_cache_keys.items[0] #=> String
    #   resp.distribution_list.items[0].default_cache_behavior.trusted_signers.enabled #=> Boolean
    #   resp.distribution_list.items[0].default_cache_behavior.trusted_signers.quantity #=> Integer
    #   resp.distribution_list.items[0].default_cache_behavior.trusted_signers.items #=> Array
    #   resp.distribution_list.items[0].default_cache_behavior.trusted_signers.items[0] #=> String
    #   resp.distribution_list.items[0].default_cache_behavior.viewer_protocol_policy #=> String, one of "allow-all", "https-only", "redirect-to-https"
    #   resp.distribution_list.items[0].default_cache_behavior.min_ttl #=> Integer
    #   resp.distribution_list.items[0].default_cache_behavior.allowed_methods.quantity #=> Integer
    #   resp.distribution_list.items[0].default_cache_behavior.allowed_methods.items #=> Array
    #   resp.distribution_list.items[0].default_cache_behavior.allowed_methods.items[0] #=> String, one of "GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"
    #   resp.distribution_list.items[0].default_cache_behavior.allowed_methods.cached_methods.quantity #=> Integer
    #   resp.distribution_list.items[0].default_cache_behavior.allowed_methods.cached_methods.items #=> Array
    #   resp.distribution_list.items[0].default_cache_behavior.allowed_methods.cached_methods.items[0] #=> String, one of "GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"
    #   resp.distribution_list.items[0].default_cache_behavior.smooth_streaming #=> Boolean
    #   resp.distribution_list.items[0].default_cache_behavior.default_ttl #=> Integer
    #   resp.distribution_list.items[0].default_cache_behavior.max_ttl #=> Integer
    #   resp.distribution_list.items[0].default_cache_behavior.compress #=> Boolean
    #   resp.distribution_list.items[0].default_cache_behavior.lambda_function_associations.quantity #=> Integer
    #   resp.distribution_list.items[0].default_cache_behavior.lambda_function_associations.items #=> Array
    #   resp.distribution_list.items[0].default_cache_behavior.lambda_function_associations.items[0].lambda_function_arn #=> String
    #   resp.distribution_list.items[0].default_cache_behavior.lambda_function_associations.items[0].event_type #=> String, one of "viewer-request", "viewer-response", "origin-request", "origin-response"
    #   resp.distribution_list.items[0].default_cache_behavior.lambda_function_associations.items[0].include_body #=> Boolean
    #   resp.distribution_list.items[0].default_cache_behavior.field_level_encryption_id #=> String
    #   resp.distribution_list.items[0].cache_behaviors.quantity #=> Integer
    #   resp.distribution_list.items[0].cache_behaviors.items #=> Array
    #   resp.distribution_list.items[0].cache_behaviors.items[0].path_pattern #=> String
    #   resp.distribution_list.items[0].cache_behaviors.items[0].target_origin_id #=> String
    #   resp.distribution_list.items[0].cache_behaviors.items[0].forwarded_values.query_string #=> Boolean
    #   resp.distribution_list.items[0].cache_behaviors.items[0].forwarded_values.cookies.forward #=> String, one of "none", "whitelist", "all"
    #   resp.distribution_list.items[0].cache_behaviors.items[0].forwarded_values.cookies.whitelisted_names.quantity #=> Integer
    #   resp.distribution_list.items[0].cache_behaviors.items[0].forwarded_values.cookies.whitelisted_names.items #=> Array
    #   resp.distribution_list.items[0].cache_behaviors.items[0].forwarded_values.cookies.whitelisted_names.items[0] #=> String
    #   resp.distribution_list.items[0].cache_behaviors.items[0].forwarded_values.headers.quantity #=> Integer
    #   resp.distribution_list.items[0].cache_behaviors.items[0].forwarded_values.headers.items #=> Array
    #   resp.distribution_list.items[0].cache_behaviors.items[0].forwarded_values.headers.items[0] #=> String
    #   resp.distribution_list.items[0].cache_behaviors.items[0].forwarded_values.query_string_cache_keys.quantity #=> Integer
    #   resp.distribution_list.items[0].cache_behaviors.items[0].forwarded_values.query_string_cache_keys.items #=> Array
    #   resp.distribution_list.items[0].cache_behaviors.items[0].forwarded_values.query_string_cache_keys.items[0] #=> String
    #   resp.distribution_list.items[0].cache_behaviors.items[0].trusted_signers.enabled #=> Boolean
    #   resp.distribution_list.items[0].cache_behaviors.items[0].trusted_signers.quantity #=> Integer
    #   resp.distribution_list.items[0].cache_behaviors.items[0].trusted_signers.items #=> Array
    #   resp.distribution_list.items[0].cache_behaviors.items[0].trusted_signers.items[0] #=> String
    #   resp.distribution_list.items[0].cache_behaviors.items[0].viewer_protocol_policy #=> String, one of "allow-all", "https-only", "redirect-to-https"
    #   resp.distribution_list.items[0].cache_behaviors.items[0].min_ttl #=> Integer
    #   resp.distribution_list.items[0].cache_behaviors.items[0].allowed_methods.quantity #=> Integer
    #   resp.distribution_list.items[0].cache_behaviors.items[0].allowed_methods.items #=> Array
    #   resp.distribution_list.items[0].cache_behaviors.items[0].allowed_methods.items[0] #=> String, one of "GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"
    #   resp.distribution_list.items[0].cache_behaviors.items[0].allowed_methods.cached_methods.quantity #=> Integer
    #   resp.distribution_list.items[0].cache_behaviors.items[0].allowed_methods.cached_methods.items #=> Array
    #   resp.distribution_list.items[0].cache_behaviors.items[0].allowed_methods.cached_methods.items[0] #=> String, one of "GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"
    #   resp.distribution_list.items[0].cache_behaviors.items[0].smooth_streaming #=> Boolean
    #   resp.distribution_list.items[0].cache_behaviors.items[0].default_ttl #=> Integer
    #   resp.distribution_list.items[0].cache_behaviors.items[0].max_ttl #=> Integer
    #   resp.distribution_list.items[0].cache_behaviors.items[0].compress #=> Boolean
    #   resp.distribution_list.items[0].cache_behaviors.items[0].lambda_function_associations.quantity #=> Integer
    #   resp.distribution_list.items[0].cache_behaviors.items[0].lambda_function_associations.items #=> Array
    #   resp.distribution_list.items[0].cache_behaviors.items[0].lambda_function_associations.items[0].lambda_function_arn #=> String
    #   resp.distribution_list.items[0].cache_behaviors.items[0].lambda_function_associations.items[0].event_type #=> String, one of "viewer-request", "viewer-response", "origin-request", "origin-response"
    #   resp.distribution_list.items[0].cache_behaviors.items[0].lambda_function_associations.items[0].include_body #=> Boolean
    #   resp.distribution_list.items[0].cache_behaviors.items[0].field_level_encryption_id #=> String
    #   resp.distribution_list.items[0].custom_error_responses.quantity #=> Integer
    #   resp.distribution_list.items[0].custom_error_responses.items #=> Array
    #   resp.distribution_list.items[0].custom_error_responses.items[0].error_code #=> Integer
    #   resp.distribution_list.items[0].custom_error_responses.items[0].response_page_path #=> String
    #   resp.distribution_list.items[0].custom_error_responses.items[0].response_code #=> String
    #   resp.distribution_list.items[0].custom_error_responses.items[0].error_caching_min_ttl #=> Integer
    #   resp.distribution_list.items[0].comment #=> String
    #   resp.distribution_list.items[0].price_class #=> String, one of "PriceClass_100", "PriceClass_200", "PriceClass_All"
    #   resp.distribution_list.items[0].enabled #=> Boolean
    #   resp.distribution_list.items[0].viewer_certificate.cloud_front_default_certificate #=> Boolean
    #   resp.distribution_list.items[0].viewer_certificate.iam_certificate_id #=> String
    #   resp.distribution_list.items[0].viewer_certificate.acm_certificate_arn #=> String
    #   resp.distribution_list.items[0].viewer_certificate.ssl_support_method #=> String, one of "sni-only", "vip"
    #   resp.distribution_list.items[0].viewer_certificate.minimum_protocol_version #=> String, one of "SSLv3", "TLSv1", "TLSv1_2016", "TLSv1.1_2016", "TLSv1.2_2018"
    #   resp.distribution_list.items[0].viewer_certificate.certificate #=> String
    #   resp.distribution_list.items[0].viewer_certificate.certificate_source #=> String, one of "cloudfront", "iam", "acm"
    #   resp.distribution_list.items[0].restrictions.geo_restriction.restriction_type #=> String, one of "blacklist", "whitelist", "none"
    #   resp.distribution_list.items[0].restrictions.geo_restriction.quantity #=> Integer
    #   resp.distribution_list.items[0].restrictions.geo_restriction.items #=> Array
    #   resp.distribution_list.items[0].restrictions.geo_restriction.items[0] #=> String
    #   resp.distribution_list.items[0].web_acl_id #=> String
    #   resp.distribution_list.items[0].http_version #=> String, one of "http1.1", "http2"
    #   resp.distribution_list.items[0].is_ipv6_enabled #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/ListDistributions2018_06_18 AWS API Documentation
    #
    # @overload list_distributions(params = {})
    # @param [Hash] params ({})
    def list_distributions(params = {}, options = {})
      req = build_request(:list_distributions, params)
      req.send_request(options)
    end

    # List the distributions that are associated with a specified AWS WAF
    # web ACL.
    #
    # @option params [String] :marker
    #   Use `Marker` and `MaxItems` to control pagination of results. If you
    #   have more than `MaxItems` distributions that satisfy the request, the
    #   response includes a `NextMarker` element. To get the next page of
    #   results, submit another request. For the value of `Marker`, specify
    #   the value of `NextMarker` from the last response. (For the first
    #   request, omit `Marker`.)
    #
    # @option params [Integer] :max_items
    #   The maximum number of distributions that you want CloudFront to return
    #   in the response body. The maximum and default values are both 100.
    #
    # @option params [required, String] :web_acl_id
    #   The ID of the AWS WAF web ACL that you want to list the associated
    #   distributions. If you specify "null" for the ID, the request returns
    #   a list of the distributions that aren't associated with a web ACL.
    #
    # @return [Types::ListDistributionsByWebACLIdResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDistributionsByWebACLIdResult#distribution_list #distribution_list} => Types::DistributionList
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_distributions_by_web_acl_id({
    #     marker: "string",
    #     max_items: 1,
    #     web_acl_id: "string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.distribution_list.marker #=> String
    #   resp.distribution_list.next_marker #=> String
    #   resp.distribution_list.max_items #=> Integer
    #   resp.distribution_list.is_truncated #=> Boolean
    #   resp.distribution_list.quantity #=> Integer
    #   resp.distribution_list.items #=> Array
    #   resp.distribution_list.items[0].id #=> String
    #   resp.distribution_list.items[0].arn #=> String
    #   resp.distribution_list.items[0].status #=> String
    #   resp.distribution_list.items[0].last_modified_time #=> Time
    #   resp.distribution_list.items[0].domain_name #=> String
    #   resp.distribution_list.items[0].aliases.quantity #=> Integer
    #   resp.distribution_list.items[0].aliases.items #=> Array
    #   resp.distribution_list.items[0].aliases.items[0] #=> String
    #   resp.distribution_list.items[0].origins.quantity #=> Integer
    #   resp.distribution_list.items[0].origins.items #=> Array
    #   resp.distribution_list.items[0].origins.items[0].id #=> String
    #   resp.distribution_list.items[0].origins.items[0].domain_name #=> String
    #   resp.distribution_list.items[0].origins.items[0].origin_path #=> String
    #   resp.distribution_list.items[0].origins.items[0].custom_headers.quantity #=> Integer
    #   resp.distribution_list.items[0].origins.items[0].custom_headers.items #=> Array
    #   resp.distribution_list.items[0].origins.items[0].custom_headers.items[0].header_name #=> String
    #   resp.distribution_list.items[0].origins.items[0].custom_headers.items[0].header_value #=> String
    #   resp.distribution_list.items[0].origins.items[0].s3_origin_config.origin_access_identity #=> String
    #   resp.distribution_list.items[0].origins.items[0].custom_origin_config.http_port #=> Integer
    #   resp.distribution_list.items[0].origins.items[0].custom_origin_config.https_port #=> Integer
    #   resp.distribution_list.items[0].origins.items[0].custom_origin_config.origin_protocol_policy #=> String, one of "http-only", "match-viewer", "https-only"
    #   resp.distribution_list.items[0].origins.items[0].custom_origin_config.origin_ssl_protocols.quantity #=> Integer
    #   resp.distribution_list.items[0].origins.items[0].custom_origin_config.origin_ssl_protocols.items #=> Array
    #   resp.distribution_list.items[0].origins.items[0].custom_origin_config.origin_ssl_protocols.items[0] #=> String, one of "SSLv3", "TLSv1", "TLSv1.1", "TLSv1.2"
    #   resp.distribution_list.items[0].origins.items[0].custom_origin_config.origin_read_timeout #=> Integer
    #   resp.distribution_list.items[0].origins.items[0].custom_origin_config.origin_keepalive_timeout #=> Integer
    #   resp.distribution_list.items[0].default_cache_behavior.target_origin_id #=> String
    #   resp.distribution_list.items[0].default_cache_behavior.forwarded_values.query_string #=> Boolean
    #   resp.distribution_list.items[0].default_cache_behavior.forwarded_values.cookies.forward #=> String, one of "none", "whitelist", "all"
    #   resp.distribution_list.items[0].default_cache_behavior.forwarded_values.cookies.whitelisted_names.quantity #=> Integer
    #   resp.distribution_list.items[0].default_cache_behavior.forwarded_values.cookies.whitelisted_names.items #=> Array
    #   resp.distribution_list.items[0].default_cache_behavior.forwarded_values.cookies.whitelisted_names.items[0] #=> String
    #   resp.distribution_list.items[0].default_cache_behavior.forwarded_values.headers.quantity #=> Integer
    #   resp.distribution_list.items[0].default_cache_behavior.forwarded_values.headers.items #=> Array
    #   resp.distribution_list.items[0].default_cache_behavior.forwarded_values.headers.items[0] #=> String
    #   resp.distribution_list.items[0].default_cache_behavior.forwarded_values.query_string_cache_keys.quantity #=> Integer
    #   resp.distribution_list.items[0].default_cache_behavior.forwarded_values.query_string_cache_keys.items #=> Array
    #   resp.distribution_list.items[0].default_cache_behavior.forwarded_values.query_string_cache_keys.items[0] #=> String
    #   resp.distribution_list.items[0].default_cache_behavior.trusted_signers.enabled #=> Boolean
    #   resp.distribution_list.items[0].default_cache_behavior.trusted_signers.quantity #=> Integer
    #   resp.distribution_list.items[0].default_cache_behavior.trusted_signers.items #=> Array
    #   resp.distribution_list.items[0].default_cache_behavior.trusted_signers.items[0] #=> String
    #   resp.distribution_list.items[0].default_cache_behavior.viewer_protocol_policy #=> String, one of "allow-all", "https-only", "redirect-to-https"
    #   resp.distribution_list.items[0].default_cache_behavior.min_ttl #=> Integer
    #   resp.distribution_list.items[0].default_cache_behavior.allowed_methods.quantity #=> Integer
    #   resp.distribution_list.items[0].default_cache_behavior.allowed_methods.items #=> Array
    #   resp.distribution_list.items[0].default_cache_behavior.allowed_methods.items[0] #=> String, one of "GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"
    #   resp.distribution_list.items[0].default_cache_behavior.allowed_methods.cached_methods.quantity #=> Integer
    #   resp.distribution_list.items[0].default_cache_behavior.allowed_methods.cached_methods.items #=> Array
    #   resp.distribution_list.items[0].default_cache_behavior.allowed_methods.cached_methods.items[0] #=> String, one of "GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"
    #   resp.distribution_list.items[0].default_cache_behavior.smooth_streaming #=> Boolean
    #   resp.distribution_list.items[0].default_cache_behavior.default_ttl #=> Integer
    #   resp.distribution_list.items[0].default_cache_behavior.max_ttl #=> Integer
    #   resp.distribution_list.items[0].default_cache_behavior.compress #=> Boolean
    #   resp.distribution_list.items[0].default_cache_behavior.lambda_function_associations.quantity #=> Integer
    #   resp.distribution_list.items[0].default_cache_behavior.lambda_function_associations.items #=> Array
    #   resp.distribution_list.items[0].default_cache_behavior.lambda_function_associations.items[0].lambda_function_arn #=> String
    #   resp.distribution_list.items[0].default_cache_behavior.lambda_function_associations.items[0].event_type #=> String, one of "viewer-request", "viewer-response", "origin-request", "origin-response"
    #   resp.distribution_list.items[0].default_cache_behavior.lambda_function_associations.items[0].include_body #=> Boolean
    #   resp.distribution_list.items[0].default_cache_behavior.field_level_encryption_id #=> String
    #   resp.distribution_list.items[0].cache_behaviors.quantity #=> Integer
    #   resp.distribution_list.items[0].cache_behaviors.items #=> Array
    #   resp.distribution_list.items[0].cache_behaviors.items[0].path_pattern #=> String
    #   resp.distribution_list.items[0].cache_behaviors.items[0].target_origin_id #=> String
    #   resp.distribution_list.items[0].cache_behaviors.items[0].forwarded_values.query_string #=> Boolean
    #   resp.distribution_list.items[0].cache_behaviors.items[0].forwarded_values.cookies.forward #=> String, one of "none", "whitelist", "all"
    #   resp.distribution_list.items[0].cache_behaviors.items[0].forwarded_values.cookies.whitelisted_names.quantity #=> Integer
    #   resp.distribution_list.items[0].cache_behaviors.items[0].forwarded_values.cookies.whitelisted_names.items #=> Array
    #   resp.distribution_list.items[0].cache_behaviors.items[0].forwarded_values.cookies.whitelisted_names.items[0] #=> String
    #   resp.distribution_list.items[0].cache_behaviors.items[0].forwarded_values.headers.quantity #=> Integer
    #   resp.distribution_list.items[0].cache_behaviors.items[0].forwarded_values.headers.items #=> Array
    #   resp.distribution_list.items[0].cache_behaviors.items[0].forwarded_values.headers.items[0] #=> String
    #   resp.distribution_list.items[0].cache_behaviors.items[0].forwarded_values.query_string_cache_keys.quantity #=> Integer
    #   resp.distribution_list.items[0].cache_behaviors.items[0].forwarded_values.query_string_cache_keys.items #=> Array
    #   resp.distribution_list.items[0].cache_behaviors.items[0].forwarded_values.query_string_cache_keys.items[0] #=> String
    #   resp.distribution_list.items[0].cache_behaviors.items[0].trusted_signers.enabled #=> Boolean
    #   resp.distribution_list.items[0].cache_behaviors.items[0].trusted_signers.quantity #=> Integer
    #   resp.distribution_list.items[0].cache_behaviors.items[0].trusted_signers.items #=> Array
    #   resp.distribution_list.items[0].cache_behaviors.items[0].trusted_signers.items[0] #=> String
    #   resp.distribution_list.items[0].cache_behaviors.items[0].viewer_protocol_policy #=> String, one of "allow-all", "https-only", "redirect-to-https"
    #   resp.distribution_list.items[0].cache_behaviors.items[0].min_ttl #=> Integer
    #   resp.distribution_list.items[0].cache_behaviors.items[0].allowed_methods.quantity #=> Integer
    #   resp.distribution_list.items[0].cache_behaviors.items[0].allowed_methods.items #=> Array
    #   resp.distribution_list.items[0].cache_behaviors.items[0].allowed_methods.items[0] #=> String, one of "GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"
    #   resp.distribution_list.items[0].cache_behaviors.items[0].allowed_methods.cached_methods.quantity #=> Integer
    #   resp.distribution_list.items[0].cache_behaviors.items[0].allowed_methods.cached_methods.items #=> Array
    #   resp.distribution_list.items[0].cache_behaviors.items[0].allowed_methods.cached_methods.items[0] #=> String, one of "GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"
    #   resp.distribution_list.items[0].cache_behaviors.items[0].smooth_streaming #=> Boolean
    #   resp.distribution_list.items[0].cache_behaviors.items[0].default_ttl #=> Integer
    #   resp.distribution_list.items[0].cache_behaviors.items[0].max_ttl #=> Integer
    #   resp.distribution_list.items[0].cache_behaviors.items[0].compress #=> Boolean
    #   resp.distribution_list.items[0].cache_behaviors.items[0].lambda_function_associations.quantity #=> Integer
    #   resp.distribution_list.items[0].cache_behaviors.items[0].lambda_function_associations.items #=> Array
    #   resp.distribution_list.items[0].cache_behaviors.items[0].lambda_function_associations.items[0].lambda_function_arn #=> String
    #   resp.distribution_list.items[0].cache_behaviors.items[0].lambda_function_associations.items[0].event_type #=> String, one of "viewer-request", "viewer-response", "origin-request", "origin-response"
    #   resp.distribution_list.items[0].cache_behaviors.items[0].lambda_function_associations.items[0].include_body #=> Boolean
    #   resp.distribution_list.items[0].cache_behaviors.items[0].field_level_encryption_id #=> String
    #   resp.distribution_list.items[0].custom_error_responses.quantity #=> Integer
    #   resp.distribution_list.items[0].custom_error_responses.items #=> Array
    #   resp.distribution_list.items[0].custom_error_responses.items[0].error_code #=> Integer
    #   resp.distribution_list.items[0].custom_error_responses.items[0].response_page_path #=> String
    #   resp.distribution_list.items[0].custom_error_responses.items[0].response_code #=> String
    #   resp.distribution_list.items[0].custom_error_responses.items[0].error_caching_min_ttl #=> Integer
    #   resp.distribution_list.items[0].comment #=> String
    #   resp.distribution_list.items[0].price_class #=> String, one of "PriceClass_100", "PriceClass_200", "PriceClass_All"
    #   resp.distribution_list.items[0].enabled #=> Boolean
    #   resp.distribution_list.items[0].viewer_certificate.cloud_front_default_certificate #=> Boolean
    #   resp.distribution_list.items[0].viewer_certificate.iam_certificate_id #=> String
    #   resp.distribution_list.items[0].viewer_certificate.acm_certificate_arn #=> String
    #   resp.distribution_list.items[0].viewer_certificate.ssl_support_method #=> String, one of "sni-only", "vip"
    #   resp.distribution_list.items[0].viewer_certificate.minimum_protocol_version #=> String, one of "SSLv3", "TLSv1", "TLSv1_2016", "TLSv1.1_2016", "TLSv1.2_2018"
    #   resp.distribution_list.items[0].viewer_certificate.certificate #=> String
    #   resp.distribution_list.items[0].viewer_certificate.certificate_source #=> String, one of "cloudfront", "iam", "acm"
    #   resp.distribution_list.items[0].restrictions.geo_restriction.restriction_type #=> String, one of "blacklist", "whitelist", "none"
    #   resp.distribution_list.items[0].restrictions.geo_restriction.quantity #=> Integer
    #   resp.distribution_list.items[0].restrictions.geo_restriction.items #=> Array
    #   resp.distribution_list.items[0].restrictions.geo_restriction.items[0] #=> String
    #   resp.distribution_list.items[0].web_acl_id #=> String
    #   resp.distribution_list.items[0].http_version #=> String, one of "http1.1", "http2"
    #   resp.distribution_list.items[0].is_ipv6_enabled #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/ListDistributionsByWebACLId2018_06_18 AWS API Documentation
    #
    # @overload list_distributions_by_web_acl_id(params = {})
    # @param [Hash] params ({})
    def list_distributions_by_web_acl_id(params = {}, options = {})
      req = build_request(:list_distributions_by_web_acl_id, params)
      req.send_request(options)
    end

    # List all field-level encryption configurations that have been created
    # in CloudFront for this account.
    #
    # @option params [String] :marker
    #   Use this when paginating results to indicate where to begin in your
    #   list of configurations. The results include configurations in the list
    #   that occur after the marker. To get the next page of results, set the
    #   `Marker` to the value of the `NextMarker` from the current page's
    #   response (which is also the ID of the last configuration on that
    #   page).
    #
    # @option params [Integer] :max_items
    #   The maximum number of field-level encryption configurations you want
    #   in the response body.
    #
    # @return [Types::ListFieldLevelEncryptionConfigsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListFieldLevelEncryptionConfigsResult#field_level_encryption_list #field_level_encryption_list} => Types::FieldLevelEncryptionList
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_field_level_encryption_configs({
    #     marker: "string",
    #     max_items: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.field_level_encryption_list.next_marker #=> String
    #   resp.field_level_encryption_list.max_items #=> Integer
    #   resp.field_level_encryption_list.quantity #=> Integer
    #   resp.field_level_encryption_list.items #=> Array
    #   resp.field_level_encryption_list.items[0].id #=> String
    #   resp.field_level_encryption_list.items[0].last_modified_time #=> Time
    #   resp.field_level_encryption_list.items[0].comment #=> String
    #   resp.field_level_encryption_list.items[0].query_arg_profile_config.forward_when_query_arg_profile_is_unknown #=> Boolean
    #   resp.field_level_encryption_list.items[0].query_arg_profile_config.query_arg_profiles.quantity #=> Integer
    #   resp.field_level_encryption_list.items[0].query_arg_profile_config.query_arg_profiles.items #=> Array
    #   resp.field_level_encryption_list.items[0].query_arg_profile_config.query_arg_profiles.items[0].query_arg #=> String
    #   resp.field_level_encryption_list.items[0].query_arg_profile_config.query_arg_profiles.items[0].profile_id #=> String
    #   resp.field_level_encryption_list.items[0].content_type_profile_config.forward_when_content_type_is_unknown #=> Boolean
    #   resp.field_level_encryption_list.items[0].content_type_profile_config.content_type_profiles.quantity #=> Integer
    #   resp.field_level_encryption_list.items[0].content_type_profile_config.content_type_profiles.items #=> Array
    #   resp.field_level_encryption_list.items[0].content_type_profile_config.content_type_profiles.items[0].format #=> String, one of "URLEncoded"
    #   resp.field_level_encryption_list.items[0].content_type_profile_config.content_type_profiles.items[0].profile_id #=> String
    #   resp.field_level_encryption_list.items[0].content_type_profile_config.content_type_profiles.items[0].content_type #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/ListFieldLevelEncryptionConfigs2018_06_18 AWS API Documentation
    #
    # @overload list_field_level_encryption_configs(params = {})
    # @param [Hash] params ({})
    def list_field_level_encryption_configs(params = {}, options = {})
      req = build_request(:list_field_level_encryption_configs, params)
      req.send_request(options)
    end

    # Request a list of field-level encryption profiles that have been
    # created in CloudFront for this account.
    #
    # @option params [String] :marker
    #   Use this when paginating results to indicate where to begin in your
    #   list of profiles. The results include profiles in the list that occur
    #   after the marker. To get the next page of results, set the `Marker` to
    #   the value of the `NextMarker` from the current page's response (which
    #   is also the ID of the last profile on that page).
    #
    # @option params [Integer] :max_items
    #   The maximum number of field-level encryption profiles you want in the
    #   response body.
    #
    # @return [Types::ListFieldLevelEncryptionProfilesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListFieldLevelEncryptionProfilesResult#field_level_encryption_profile_list #field_level_encryption_profile_list} => Types::FieldLevelEncryptionProfileList
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_field_level_encryption_profiles({
    #     marker: "string",
    #     max_items: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.field_level_encryption_profile_list.next_marker #=> String
    #   resp.field_level_encryption_profile_list.max_items #=> Integer
    #   resp.field_level_encryption_profile_list.quantity #=> Integer
    #   resp.field_level_encryption_profile_list.items #=> Array
    #   resp.field_level_encryption_profile_list.items[0].id #=> String
    #   resp.field_level_encryption_profile_list.items[0].last_modified_time #=> Time
    #   resp.field_level_encryption_profile_list.items[0].name #=> String
    #   resp.field_level_encryption_profile_list.items[0].encryption_entities.quantity #=> Integer
    #   resp.field_level_encryption_profile_list.items[0].encryption_entities.items #=> Array
    #   resp.field_level_encryption_profile_list.items[0].encryption_entities.items[0].public_key_id #=> String
    #   resp.field_level_encryption_profile_list.items[0].encryption_entities.items[0].provider_id #=> String
    #   resp.field_level_encryption_profile_list.items[0].encryption_entities.items[0].field_patterns.quantity #=> Integer
    #   resp.field_level_encryption_profile_list.items[0].encryption_entities.items[0].field_patterns.items #=> Array
    #   resp.field_level_encryption_profile_list.items[0].encryption_entities.items[0].field_patterns.items[0] #=> String
    #   resp.field_level_encryption_profile_list.items[0].comment #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/ListFieldLevelEncryptionProfiles2018_06_18 AWS API Documentation
    #
    # @overload list_field_level_encryption_profiles(params = {})
    # @param [Hash] params ({})
    def list_field_level_encryption_profiles(params = {}, options = {})
      req = build_request(:list_field_level_encryption_profiles, params)
      req.send_request(options)
    end

    # Lists invalidation batches.
    #
    # @option params [required, String] :distribution_id
    #   The distribution's ID.
    #
    # @option params [String] :marker
    #   Use this parameter when paginating results to indicate where to begin
    #   in your list of invalidation batches. Because the results are returned
    #   in decreasing order from most recent to oldest, the most recent
    #   results are on the first page, the second page will contain earlier
    #   results, and so on. To get the next page of results, set `Marker` to
    #   the value of the `NextMarker` from the current page's response. This
    #   value is the same as the ID of the last invalidation batch on that
    #   page.
    #
    # @option params [Integer] :max_items
    #   The maximum number of invalidation batches that you want in the
    #   response body.
    #
    # @return [Types::ListInvalidationsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListInvalidationsResult#invalidation_list #invalidation_list} => Types::InvalidationList
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_invalidations({
    #     distribution_id: "string", # required
    #     marker: "string",
    #     max_items: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.invalidation_list.marker #=> String
    #   resp.invalidation_list.next_marker #=> String
    #   resp.invalidation_list.max_items #=> Integer
    #   resp.invalidation_list.is_truncated #=> Boolean
    #   resp.invalidation_list.quantity #=> Integer
    #   resp.invalidation_list.items #=> Array
    #   resp.invalidation_list.items[0].id #=> String
    #   resp.invalidation_list.items[0].create_time #=> Time
    #   resp.invalidation_list.items[0].status #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/ListInvalidations2018_06_18 AWS API Documentation
    #
    # @overload list_invalidations(params = {})
    # @param [Hash] params ({})
    def list_invalidations(params = {}, options = {})
      req = build_request(:list_invalidations, params)
      req.send_request(options)
    end

    # List all public keys that have been added to CloudFront for this
    # account.
    #
    # @option params [String] :marker
    #   Use this when paginating results to indicate where to begin in your
    #   list of public keys. The results include public keys in the list that
    #   occur after the marker. To get the next page of results, set the
    #   `Marker` to the value of the `NextMarker` from the current page's
    #   response (which is also the ID of the last public key on that page).
    #
    # @option params [Integer] :max_items
    #   The maximum number of public keys you want in the response body.
    #
    # @return [Types::ListPublicKeysResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPublicKeysResult#public_key_list #public_key_list} => Types::PublicKeyList
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_public_keys({
    #     marker: "string",
    #     max_items: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.public_key_list.next_marker #=> String
    #   resp.public_key_list.max_items #=> Integer
    #   resp.public_key_list.quantity #=> Integer
    #   resp.public_key_list.items #=> Array
    #   resp.public_key_list.items[0].id #=> String
    #   resp.public_key_list.items[0].name #=> String
    #   resp.public_key_list.items[0].created_time #=> Time
    #   resp.public_key_list.items[0].encoded_key #=> String
    #   resp.public_key_list.items[0].comment #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/ListPublicKeys2018_06_18 AWS API Documentation
    #
    # @overload list_public_keys(params = {})
    # @param [Hash] params ({})
    def list_public_keys(params = {}, options = {})
      req = build_request(:list_public_keys, params)
      req.send_request(options)
    end

    # List streaming distributions.
    #
    # @option params [String] :marker
    #   The value that you provided for the `Marker` request parameter.
    #
    # @option params [Integer] :max_items
    #   The value that you provided for the `MaxItems` request parameter.
    #
    # @return [Types::ListStreamingDistributionsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListStreamingDistributionsResult#streaming_distribution_list #streaming_distribution_list} => Types::StreamingDistributionList
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_streaming_distributions({
    #     marker: "string",
    #     max_items: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.streaming_distribution_list.marker #=> String
    #   resp.streaming_distribution_list.next_marker #=> String
    #   resp.streaming_distribution_list.max_items #=> Integer
    #   resp.streaming_distribution_list.is_truncated #=> Boolean
    #   resp.streaming_distribution_list.quantity #=> Integer
    #   resp.streaming_distribution_list.items #=> Array
    #   resp.streaming_distribution_list.items[0].id #=> String
    #   resp.streaming_distribution_list.items[0].arn #=> String
    #   resp.streaming_distribution_list.items[0].status #=> String
    #   resp.streaming_distribution_list.items[0].last_modified_time #=> Time
    #   resp.streaming_distribution_list.items[0].domain_name #=> String
    #   resp.streaming_distribution_list.items[0].s3_origin.domain_name #=> String
    #   resp.streaming_distribution_list.items[0].s3_origin.origin_access_identity #=> String
    #   resp.streaming_distribution_list.items[0].aliases.quantity #=> Integer
    #   resp.streaming_distribution_list.items[0].aliases.items #=> Array
    #   resp.streaming_distribution_list.items[0].aliases.items[0] #=> String
    #   resp.streaming_distribution_list.items[0].trusted_signers.enabled #=> Boolean
    #   resp.streaming_distribution_list.items[0].trusted_signers.quantity #=> Integer
    #   resp.streaming_distribution_list.items[0].trusted_signers.items #=> Array
    #   resp.streaming_distribution_list.items[0].trusted_signers.items[0] #=> String
    #   resp.streaming_distribution_list.items[0].comment #=> String
    #   resp.streaming_distribution_list.items[0].price_class #=> String, one of "PriceClass_100", "PriceClass_200", "PriceClass_All"
    #   resp.streaming_distribution_list.items[0].enabled #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/ListStreamingDistributions2018_06_18 AWS API Documentation
    #
    # @overload list_streaming_distributions(params = {})
    # @param [Hash] params ({})
    def list_streaming_distributions(params = {}, options = {})
      req = build_request(:list_streaming_distributions, params)
      req.send_request(options)
    end

    # List tags for a CloudFront resource.
    #
    # @option params [required, String] :resource
    #   An ARN of a CloudFront resource.
    #
    # @return [Types::ListTagsForResourceResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResult#tags #tags} => Types::Tags
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource: "ResourceARN", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags.items #=> Array
    #   resp.tags.items[0].key #=> String
    #   resp.tags.items[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/ListTagsForResource2018_06_18 AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Add tags to a CloudFront resource.
    #
    # @option params [required, String] :resource
    #   An ARN of a CloudFront resource.
    #
    # @option params [required, Types::Tags] :tags
    #   A complex type that contains zero or more `Tag` elements.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource: "ResourceARN", # required
    #     tags: { # required
    #       items: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue",
    #         },
    #       ],
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/TagResource2018_06_18 AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Remove tags from a CloudFront resource.
    #
    # @option params [required, String] :resource
    #   An ARN of a CloudFront resource.
    #
    # @option params [required, Types::TagKeys] :tag_keys
    #   A complex type that contains zero or more `Tag` key elements.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource: "ResourceARN", # required
    #     tag_keys: { # required
    #       items: ["TagKey"],
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/UntagResource2018_06_18 AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Update an origin access identity.
    #
    # @option params [required, Types::CloudFrontOriginAccessIdentityConfig] :cloud_front_origin_access_identity_config
    #   The identity's configuration information.
    #
    # @option params [required, String] :id
    #   The identity's id.
    #
    # @option params [String] :if_match
    #   The value of the `ETag` header that you received when retrieving the
    #   identity's configuration. For example: `E2QWRUHAPOMQZL`.
    #
    # @return [Types::UpdateCloudFrontOriginAccessIdentityResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateCloudFrontOriginAccessIdentityResult#cloud_front_origin_access_identity #cloud_front_origin_access_identity} => Types::CloudFrontOriginAccessIdentity
    #   * {Types::UpdateCloudFrontOriginAccessIdentityResult#etag #etag} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_cloud_front_origin_access_identity({
    #     cloud_front_origin_access_identity_config: { # required
    #       caller_reference: "string", # required
    #       comment: "string", # required
    #     },
    #     id: "string", # required
    #     if_match: "string",
    #   })
    #
    # @example Response structure
    #
    #   resp.cloud_front_origin_access_identity.id #=> String
    #   resp.cloud_front_origin_access_identity.s3_canonical_user_id #=> String
    #   resp.cloud_front_origin_access_identity.cloud_front_origin_access_identity_config.caller_reference #=> String
    #   resp.cloud_front_origin_access_identity.cloud_front_origin_access_identity_config.comment #=> String
    #   resp.etag #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/UpdateCloudFrontOriginAccessIdentity2018_06_18 AWS API Documentation
    #
    # @overload update_cloud_front_origin_access_identity(params = {})
    # @param [Hash] params ({})
    def update_cloud_front_origin_access_identity(params = {}, options = {})
      req = build_request(:update_cloud_front_origin_access_identity, params)
      req.send_request(options)
    end

    # Updates the configuration for a web distribution. Perform the
    # following steps.
    #
    # For information about updating a distribution using the CloudFront
    # console, see [Creating or Updating a Web Distribution Using the
    # CloudFront Console ][1] in the *Amazon CloudFront Developer Guide*.
    #
    # **To update a web distribution using the CloudFront API**
    #
    # 1.  Submit a GetDistributionConfig request to get the current
    #     configuration and an `Etag` header for the distribution.
    #
    #     <note markdown="1"> If you update the distribution again, you need to get a new `Etag`
    #     header.
    #
    #      </note>
    #
    # 2.  Update the XML document that was returned in the response to your
    #     `GetDistributionConfig` request to include the desired changes.
    #     You can't change the value of `CallerReference`. If you try to
    #     change this value, CloudFront returns an `IllegalUpdate` error.
    #     Note that you must strip out the ETag parameter that is returned.
    #
    #     The new configuration replaces the existing configuration; the
    #     values that you specify in an `UpdateDistribution` request are not
    #     merged into the existing configuration. When you add, delete, or
    #     replace values in an element that allows multiple values (for
    #     example, `CNAME`), you must specify all of the values that you
    #     want to appear in the updated distribution. In addition, you must
    #     update the corresponding `Quantity` element.
    #
    # 3.  Submit an `UpdateDistribution` request to update the configuration
    #     for your distribution:
    #
    #     * In the request body, include the XML document that you updated
    #       in Step 2. The request body must include an XML document with a
    #       `DistributionConfig` element.
    #
    #     * Set the value of the HTTP `If-Match` header to the value of the
    #       `ETag` header that CloudFront returned when you submitted the
    #       `GetDistributionConfig` request in Step 1.
    #
    # 4.  Review the response to the `UpdateDistribution` request to confirm
    #     that the configuration was successfully updated.
    #
    # 5.  Optional: Submit a GetDistribution request to confirm that your
    #     changes have propagated. When propagation is complete, the value
    #     of `Status` is `Deployed`.
    #
    #     Beginning with the 2012-05-05 version of the CloudFront API, we
    #     made substantial changes to the format of the XML document that
    #     you include in the request body when you create or update a
    #     distribution. With previous versions of the API, we discovered
    #     that it was too easy to accidentally delete one or more values for
    #     an element that accepts multiple values, for example, CNAMEs and
    #     trusted signers. Our changes for the 2012-05-05 release are
    #     intended to prevent these accidental deletions and to notify you
    #     when there's a mismatch between the number of values you say
    #     you're specifying in the `Quantity` element and the number of
    #     values you're actually specifying.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-creating-console.html
    #
    # @option params [required, Types::DistributionConfig] :distribution_config
    #   The distribution's configuration information.
    #
    # @option params [required, String] :id
    #   The distribution's id.
    #
    # @option params [String] :if_match
    #   The value of the `ETag` header that you received when retrieving the
    #   distribution's configuration. For example: `E2QWRUHAPOMQZL`.
    #
    # @return [Types::UpdateDistributionResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateDistributionResult#distribution #distribution} => Types::Distribution
    #   * {Types::UpdateDistributionResult#etag #etag} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_distribution({
    #     distribution_config: { # required
    #       caller_reference: "string", # required
    #       aliases: {
    #         quantity: 1, # required
    #         items: ["string"],
    #       },
    #       default_root_object: "string",
    #       origins: { # required
    #         quantity: 1, # required
    #         items: [
    #           {
    #             id: "string", # required
    #             domain_name: "string", # required
    #             origin_path: "string",
    #             custom_headers: {
    #               quantity: 1, # required
    #               items: [
    #                 {
    #                   header_name: "string", # required
    #                   header_value: "string", # required
    #                 },
    #               ],
    #             },
    #             s3_origin_config: {
    #               origin_access_identity: "string", # required
    #             },
    #             custom_origin_config: {
    #               http_port: 1, # required
    #               https_port: 1, # required
    #               origin_protocol_policy: "http-only", # required, accepts http-only, match-viewer, https-only
    #               origin_ssl_protocols: {
    #                 quantity: 1, # required
    #                 items: ["SSLv3"], # required, accepts SSLv3, TLSv1, TLSv1.1, TLSv1.2
    #               },
    #               origin_read_timeout: 1,
    #               origin_keepalive_timeout: 1,
    #             },
    #           },
    #         ],
    #       },
    #       default_cache_behavior: { # required
    #         target_origin_id: "string", # required
    #         forwarded_values: { # required
    #           query_string: false, # required
    #           cookies: { # required
    #             forward: "none", # required, accepts none, whitelist, all
    #             whitelisted_names: {
    #               quantity: 1, # required
    #               items: ["string"],
    #             },
    #           },
    #           headers: {
    #             quantity: 1, # required
    #             items: ["string"],
    #           },
    #           query_string_cache_keys: {
    #             quantity: 1, # required
    #             items: ["string"],
    #           },
    #         },
    #         trusted_signers: { # required
    #           enabled: false, # required
    #           quantity: 1, # required
    #           items: ["string"],
    #         },
    #         viewer_protocol_policy: "allow-all", # required, accepts allow-all, https-only, redirect-to-https
    #         min_ttl: 1, # required
    #         allowed_methods: {
    #           quantity: 1, # required
    #           items: ["GET"], # required, accepts GET, HEAD, POST, PUT, PATCH, OPTIONS, DELETE
    #           cached_methods: {
    #             quantity: 1, # required
    #             items: ["GET"], # required, accepts GET, HEAD, POST, PUT, PATCH, OPTIONS, DELETE
    #           },
    #         },
    #         smooth_streaming: false,
    #         default_ttl: 1,
    #         max_ttl: 1,
    #         compress: false,
    #         lambda_function_associations: {
    #           quantity: 1, # required
    #           items: [
    #             {
    #               lambda_function_arn: "LambdaFunctionARN", # required
    #               event_type: "viewer-request", # required, accepts viewer-request, viewer-response, origin-request, origin-response
    #               include_body: false,
    #             },
    #           ],
    #         },
    #         field_level_encryption_id: "string",
    #       },
    #       cache_behaviors: {
    #         quantity: 1, # required
    #         items: [
    #           {
    #             path_pattern: "string", # required
    #             target_origin_id: "string", # required
    #             forwarded_values: { # required
    #               query_string: false, # required
    #               cookies: { # required
    #                 forward: "none", # required, accepts none, whitelist, all
    #                 whitelisted_names: {
    #                   quantity: 1, # required
    #                   items: ["string"],
    #                 },
    #               },
    #               headers: {
    #                 quantity: 1, # required
    #                 items: ["string"],
    #               },
    #               query_string_cache_keys: {
    #                 quantity: 1, # required
    #                 items: ["string"],
    #               },
    #             },
    #             trusted_signers: { # required
    #               enabled: false, # required
    #               quantity: 1, # required
    #               items: ["string"],
    #             },
    #             viewer_protocol_policy: "allow-all", # required, accepts allow-all, https-only, redirect-to-https
    #             min_ttl: 1, # required
    #             allowed_methods: {
    #               quantity: 1, # required
    #               items: ["GET"], # required, accepts GET, HEAD, POST, PUT, PATCH, OPTIONS, DELETE
    #               cached_methods: {
    #                 quantity: 1, # required
    #                 items: ["GET"], # required, accepts GET, HEAD, POST, PUT, PATCH, OPTIONS, DELETE
    #               },
    #             },
    #             smooth_streaming: false,
    #             default_ttl: 1,
    #             max_ttl: 1,
    #             compress: false,
    #             lambda_function_associations: {
    #               quantity: 1, # required
    #               items: [
    #                 {
    #                   lambda_function_arn: "LambdaFunctionARN", # required
    #                   event_type: "viewer-request", # required, accepts viewer-request, viewer-response, origin-request, origin-response
    #                   include_body: false,
    #                 },
    #               ],
    #             },
    #             field_level_encryption_id: "string",
    #           },
    #         ],
    #       },
    #       custom_error_responses: {
    #         quantity: 1, # required
    #         items: [
    #           {
    #             error_code: 1, # required
    #             response_page_path: "string",
    #             response_code: "string",
    #             error_caching_min_ttl: 1,
    #           },
    #         ],
    #       },
    #       comment: "string", # required
    #       logging: {
    #         enabled: false, # required
    #         include_cookies: false, # required
    #         bucket: "string", # required
    #         prefix: "string", # required
    #       },
    #       price_class: "PriceClass_100", # accepts PriceClass_100, PriceClass_200, PriceClass_All
    #       enabled: false, # required
    #       viewer_certificate: {
    #         cloud_front_default_certificate: false,
    #         iam_certificate_id: "string",
    #         acm_certificate_arn: "string",
    #         ssl_support_method: "sni-only", # accepts sni-only, vip
    #         minimum_protocol_version: "SSLv3", # accepts SSLv3, TLSv1, TLSv1_2016, TLSv1.1_2016, TLSv1.2_2018
    #         certificate: "string",
    #         certificate_source: "cloudfront", # accepts cloudfront, iam, acm
    #       },
    #       restrictions: {
    #         geo_restriction: { # required
    #           restriction_type: "blacklist", # required, accepts blacklist, whitelist, none
    #           quantity: 1, # required
    #           items: ["string"],
    #         },
    #       },
    #       web_acl_id: "string",
    #       http_version: "http1.1", # accepts http1.1, http2
    #       is_ipv6_enabled: false,
    #     },
    #     id: "string", # required
    #     if_match: "string",
    #   })
    #
    # @example Response structure
    #
    #   resp.distribution.id #=> String
    #   resp.distribution.arn #=> String
    #   resp.distribution.status #=> String
    #   resp.distribution.last_modified_time #=> Time
    #   resp.distribution.in_progress_invalidation_batches #=> Integer
    #   resp.distribution.domain_name #=> String
    #   resp.distribution.active_trusted_signers.enabled #=> Boolean
    #   resp.distribution.active_trusted_signers.quantity #=> Integer
    #   resp.distribution.active_trusted_signers.items #=> Array
    #   resp.distribution.active_trusted_signers.items[0].aws_account_number #=> String
    #   resp.distribution.active_trusted_signers.items[0].key_pair_ids.quantity #=> Integer
    #   resp.distribution.active_trusted_signers.items[0].key_pair_ids.items #=> Array
    #   resp.distribution.active_trusted_signers.items[0].key_pair_ids.items[0] #=> String
    #   resp.distribution.distribution_config.caller_reference #=> String
    #   resp.distribution.distribution_config.aliases.quantity #=> Integer
    #   resp.distribution.distribution_config.aliases.items #=> Array
    #   resp.distribution.distribution_config.aliases.items[0] #=> String
    #   resp.distribution.distribution_config.default_root_object #=> String
    #   resp.distribution.distribution_config.origins.quantity #=> Integer
    #   resp.distribution.distribution_config.origins.items #=> Array
    #   resp.distribution.distribution_config.origins.items[0].id #=> String
    #   resp.distribution.distribution_config.origins.items[0].domain_name #=> String
    #   resp.distribution.distribution_config.origins.items[0].origin_path #=> String
    #   resp.distribution.distribution_config.origins.items[0].custom_headers.quantity #=> Integer
    #   resp.distribution.distribution_config.origins.items[0].custom_headers.items #=> Array
    #   resp.distribution.distribution_config.origins.items[0].custom_headers.items[0].header_name #=> String
    #   resp.distribution.distribution_config.origins.items[0].custom_headers.items[0].header_value #=> String
    #   resp.distribution.distribution_config.origins.items[0].s3_origin_config.origin_access_identity #=> String
    #   resp.distribution.distribution_config.origins.items[0].custom_origin_config.http_port #=> Integer
    #   resp.distribution.distribution_config.origins.items[0].custom_origin_config.https_port #=> Integer
    #   resp.distribution.distribution_config.origins.items[0].custom_origin_config.origin_protocol_policy #=> String, one of "http-only", "match-viewer", "https-only"
    #   resp.distribution.distribution_config.origins.items[0].custom_origin_config.origin_ssl_protocols.quantity #=> Integer
    #   resp.distribution.distribution_config.origins.items[0].custom_origin_config.origin_ssl_protocols.items #=> Array
    #   resp.distribution.distribution_config.origins.items[0].custom_origin_config.origin_ssl_protocols.items[0] #=> String, one of "SSLv3", "TLSv1", "TLSv1.1", "TLSv1.2"
    #   resp.distribution.distribution_config.origins.items[0].custom_origin_config.origin_read_timeout #=> Integer
    #   resp.distribution.distribution_config.origins.items[0].custom_origin_config.origin_keepalive_timeout #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.target_origin_id #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.query_string #=> Boolean
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.cookies.forward #=> String, one of "none", "whitelist", "all"
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.cookies.whitelisted_names.quantity #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.cookies.whitelisted_names.items #=> Array
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.cookies.whitelisted_names.items[0] #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.headers.quantity #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.headers.items #=> Array
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.headers.items[0] #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.query_string_cache_keys.quantity #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.query_string_cache_keys.items #=> Array
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.query_string_cache_keys.items[0] #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.trusted_signers.enabled #=> Boolean
    #   resp.distribution.distribution_config.default_cache_behavior.trusted_signers.quantity #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.trusted_signers.items #=> Array
    #   resp.distribution.distribution_config.default_cache_behavior.trusted_signers.items[0] #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.viewer_protocol_policy #=> String, one of "allow-all", "https-only", "redirect-to-https"
    #   resp.distribution.distribution_config.default_cache_behavior.min_ttl #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.allowed_methods.quantity #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.allowed_methods.items #=> Array
    #   resp.distribution.distribution_config.default_cache_behavior.allowed_methods.items[0] #=> String, one of "GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"
    #   resp.distribution.distribution_config.default_cache_behavior.allowed_methods.cached_methods.quantity #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.allowed_methods.cached_methods.items #=> Array
    #   resp.distribution.distribution_config.default_cache_behavior.allowed_methods.cached_methods.items[0] #=> String, one of "GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"
    #   resp.distribution.distribution_config.default_cache_behavior.smooth_streaming #=> Boolean
    #   resp.distribution.distribution_config.default_cache_behavior.default_ttl #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.max_ttl #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.compress #=> Boolean
    #   resp.distribution.distribution_config.default_cache_behavior.lambda_function_associations.quantity #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.lambda_function_associations.items #=> Array
    #   resp.distribution.distribution_config.default_cache_behavior.lambda_function_associations.items[0].lambda_function_arn #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.lambda_function_associations.items[0].event_type #=> String, one of "viewer-request", "viewer-response", "origin-request", "origin-response"
    #   resp.distribution.distribution_config.default_cache_behavior.lambda_function_associations.items[0].include_body #=> Boolean
    #   resp.distribution.distribution_config.default_cache_behavior.field_level_encryption_id #=> String
    #   resp.distribution.distribution_config.cache_behaviors.quantity #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items #=> Array
    #   resp.distribution.distribution_config.cache_behaviors.items[0].path_pattern #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].target_origin_id #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].forwarded_values.query_string #=> Boolean
    #   resp.distribution.distribution_config.cache_behaviors.items[0].forwarded_values.cookies.forward #=> String, one of "none", "whitelist", "all"
    #   resp.distribution.distribution_config.cache_behaviors.items[0].forwarded_values.cookies.whitelisted_names.quantity #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items[0].forwarded_values.cookies.whitelisted_names.items #=> Array
    #   resp.distribution.distribution_config.cache_behaviors.items[0].forwarded_values.cookies.whitelisted_names.items[0] #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].forwarded_values.headers.quantity #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items[0].forwarded_values.headers.items #=> Array
    #   resp.distribution.distribution_config.cache_behaviors.items[0].forwarded_values.headers.items[0] #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].forwarded_values.query_string_cache_keys.quantity #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items[0].forwarded_values.query_string_cache_keys.items #=> Array
    #   resp.distribution.distribution_config.cache_behaviors.items[0].forwarded_values.query_string_cache_keys.items[0] #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].trusted_signers.enabled #=> Boolean
    #   resp.distribution.distribution_config.cache_behaviors.items[0].trusted_signers.quantity #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items[0].trusted_signers.items #=> Array
    #   resp.distribution.distribution_config.cache_behaviors.items[0].trusted_signers.items[0] #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].viewer_protocol_policy #=> String, one of "allow-all", "https-only", "redirect-to-https"
    #   resp.distribution.distribution_config.cache_behaviors.items[0].min_ttl #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items[0].allowed_methods.quantity #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items[0].allowed_methods.items #=> Array
    #   resp.distribution.distribution_config.cache_behaviors.items[0].allowed_methods.items[0] #=> String, one of "GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"
    #   resp.distribution.distribution_config.cache_behaviors.items[0].allowed_methods.cached_methods.quantity #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items[0].allowed_methods.cached_methods.items #=> Array
    #   resp.distribution.distribution_config.cache_behaviors.items[0].allowed_methods.cached_methods.items[0] #=> String, one of "GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"
    #   resp.distribution.distribution_config.cache_behaviors.items[0].smooth_streaming #=> Boolean
    #   resp.distribution.distribution_config.cache_behaviors.items[0].default_ttl #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items[0].max_ttl #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items[0].compress #=> Boolean
    #   resp.distribution.distribution_config.cache_behaviors.items[0].lambda_function_associations.quantity #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items[0].lambda_function_associations.items #=> Array
    #   resp.distribution.distribution_config.cache_behaviors.items[0].lambda_function_associations.items[0].lambda_function_arn #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].lambda_function_associations.items[0].event_type #=> String, one of "viewer-request", "viewer-response", "origin-request", "origin-response"
    #   resp.distribution.distribution_config.cache_behaviors.items[0].lambda_function_associations.items[0].include_body #=> Boolean
    #   resp.distribution.distribution_config.cache_behaviors.items[0].field_level_encryption_id #=> String
    #   resp.distribution.distribution_config.custom_error_responses.quantity #=> Integer
    #   resp.distribution.distribution_config.custom_error_responses.items #=> Array
    #   resp.distribution.distribution_config.custom_error_responses.items[0].error_code #=> Integer
    #   resp.distribution.distribution_config.custom_error_responses.items[0].response_page_path #=> String
    #   resp.distribution.distribution_config.custom_error_responses.items[0].response_code #=> String
    #   resp.distribution.distribution_config.custom_error_responses.items[0].error_caching_min_ttl #=> Integer
    #   resp.distribution.distribution_config.comment #=> String
    #   resp.distribution.distribution_config.logging.enabled #=> Boolean
    #   resp.distribution.distribution_config.logging.include_cookies #=> Boolean
    #   resp.distribution.distribution_config.logging.bucket #=> String
    #   resp.distribution.distribution_config.logging.prefix #=> String
    #   resp.distribution.distribution_config.price_class #=> String, one of "PriceClass_100", "PriceClass_200", "PriceClass_All"
    #   resp.distribution.distribution_config.enabled #=> Boolean
    #   resp.distribution.distribution_config.viewer_certificate.cloud_front_default_certificate #=> Boolean
    #   resp.distribution.distribution_config.viewer_certificate.iam_certificate_id #=> String
    #   resp.distribution.distribution_config.viewer_certificate.acm_certificate_arn #=> String
    #   resp.distribution.distribution_config.viewer_certificate.ssl_support_method #=> String, one of "sni-only", "vip"
    #   resp.distribution.distribution_config.viewer_certificate.minimum_protocol_version #=> String, one of "SSLv3", "TLSv1", "TLSv1_2016", "TLSv1.1_2016", "TLSv1.2_2018"
    #   resp.distribution.distribution_config.viewer_certificate.certificate #=> String
    #   resp.distribution.distribution_config.viewer_certificate.certificate_source #=> String, one of "cloudfront", "iam", "acm"
    #   resp.distribution.distribution_config.restrictions.geo_restriction.restriction_type #=> String, one of "blacklist", "whitelist", "none"
    #   resp.distribution.distribution_config.restrictions.geo_restriction.quantity #=> Integer
    #   resp.distribution.distribution_config.restrictions.geo_restriction.items #=> Array
    #   resp.distribution.distribution_config.restrictions.geo_restriction.items[0] #=> String
    #   resp.distribution.distribution_config.web_acl_id #=> String
    #   resp.distribution.distribution_config.http_version #=> String, one of "http1.1", "http2"
    #   resp.distribution.distribution_config.is_ipv6_enabled #=> Boolean
    #   resp.etag #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/UpdateDistribution2018_06_18 AWS API Documentation
    #
    # @overload update_distribution(params = {})
    # @param [Hash] params ({})
    def update_distribution(params = {}, options = {})
      req = build_request(:update_distribution, params)
      req.send_request(options)
    end

    # Update a field-level encryption configuration.
    #
    # @option params [required, Types::FieldLevelEncryptionConfig] :field_level_encryption_config
    #   Request to update a field-level encryption configuration.
    #
    # @option params [required, String] :id
    #   The ID of the configuration you want to update.
    #
    # @option params [String] :if_match
    #   The value of the `ETag` header that you received when retrieving the
    #   configuration identity to update. For example: `E2QWRUHAPOMQZL`.
    #
    # @return [Types::UpdateFieldLevelEncryptionConfigResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateFieldLevelEncryptionConfigResult#field_level_encryption #field_level_encryption} => Types::FieldLevelEncryption
    #   * {Types::UpdateFieldLevelEncryptionConfigResult#etag #etag} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_field_level_encryption_config({
    #     field_level_encryption_config: { # required
    #       caller_reference: "string", # required
    #       comment: "string",
    #       query_arg_profile_config: {
    #         forward_when_query_arg_profile_is_unknown: false, # required
    #         query_arg_profiles: {
    #           quantity: 1, # required
    #           items: [
    #             {
    #               query_arg: "string", # required
    #               profile_id: "string", # required
    #             },
    #           ],
    #         },
    #       },
    #       content_type_profile_config: {
    #         forward_when_content_type_is_unknown: false, # required
    #         content_type_profiles: {
    #           quantity: 1, # required
    #           items: [
    #             {
    #               format: "URLEncoded", # required, accepts URLEncoded
    #               profile_id: "string",
    #               content_type: "string", # required
    #             },
    #           ],
    #         },
    #       },
    #     },
    #     id: "string", # required
    #     if_match: "string",
    #   })
    #
    # @example Response structure
    #
    #   resp.field_level_encryption.id #=> String
    #   resp.field_level_encryption.last_modified_time #=> Time
    #   resp.field_level_encryption.field_level_encryption_config.caller_reference #=> String
    #   resp.field_level_encryption.field_level_encryption_config.comment #=> String
    #   resp.field_level_encryption.field_level_encryption_config.query_arg_profile_config.forward_when_query_arg_profile_is_unknown #=> Boolean
    #   resp.field_level_encryption.field_level_encryption_config.query_arg_profile_config.query_arg_profiles.quantity #=> Integer
    #   resp.field_level_encryption.field_level_encryption_config.query_arg_profile_config.query_arg_profiles.items #=> Array
    #   resp.field_level_encryption.field_level_encryption_config.query_arg_profile_config.query_arg_profiles.items[0].query_arg #=> String
    #   resp.field_level_encryption.field_level_encryption_config.query_arg_profile_config.query_arg_profiles.items[0].profile_id #=> String
    #   resp.field_level_encryption.field_level_encryption_config.content_type_profile_config.forward_when_content_type_is_unknown #=> Boolean
    #   resp.field_level_encryption.field_level_encryption_config.content_type_profile_config.content_type_profiles.quantity #=> Integer
    #   resp.field_level_encryption.field_level_encryption_config.content_type_profile_config.content_type_profiles.items #=> Array
    #   resp.field_level_encryption.field_level_encryption_config.content_type_profile_config.content_type_profiles.items[0].format #=> String, one of "URLEncoded"
    #   resp.field_level_encryption.field_level_encryption_config.content_type_profile_config.content_type_profiles.items[0].profile_id #=> String
    #   resp.field_level_encryption.field_level_encryption_config.content_type_profile_config.content_type_profiles.items[0].content_type #=> String
    #   resp.etag #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/UpdateFieldLevelEncryptionConfig2018_06_18 AWS API Documentation
    #
    # @overload update_field_level_encryption_config(params = {})
    # @param [Hash] params ({})
    def update_field_level_encryption_config(params = {}, options = {})
      req = build_request(:update_field_level_encryption_config, params)
      req.send_request(options)
    end

    # Update a field-level encryption profile.
    #
    # @option params [required, Types::FieldLevelEncryptionProfileConfig] :field_level_encryption_profile_config
    #   Request to update a field-level encryption profile.
    #
    # @option params [required, String] :id
    #   The ID of the field-level encryption profile request.
    #
    # @option params [String] :if_match
    #   The value of the `ETag` header that you received when retrieving the
    #   profile identity to update. For example: `E2QWRUHAPOMQZL`.
    #
    # @return [Types::UpdateFieldLevelEncryptionProfileResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateFieldLevelEncryptionProfileResult#field_level_encryption_profile #field_level_encryption_profile} => Types::FieldLevelEncryptionProfile
    #   * {Types::UpdateFieldLevelEncryptionProfileResult#etag #etag} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_field_level_encryption_profile({
    #     field_level_encryption_profile_config: { # required
    #       name: "string", # required
    #       caller_reference: "string", # required
    #       comment: "string",
    #       encryption_entities: { # required
    #         quantity: 1, # required
    #         items: [
    #           {
    #             public_key_id: "string", # required
    #             provider_id: "string", # required
    #             field_patterns: { # required
    #               quantity: 1, # required
    #               items: ["string"],
    #             },
    #           },
    #         ],
    #       },
    #     },
    #     id: "string", # required
    #     if_match: "string",
    #   })
    #
    # @example Response structure
    #
    #   resp.field_level_encryption_profile.id #=> String
    #   resp.field_level_encryption_profile.last_modified_time #=> Time
    #   resp.field_level_encryption_profile.field_level_encryption_profile_config.name #=> String
    #   resp.field_level_encryption_profile.field_level_encryption_profile_config.caller_reference #=> String
    #   resp.field_level_encryption_profile.field_level_encryption_profile_config.comment #=> String
    #   resp.field_level_encryption_profile.field_level_encryption_profile_config.encryption_entities.quantity #=> Integer
    #   resp.field_level_encryption_profile.field_level_encryption_profile_config.encryption_entities.items #=> Array
    #   resp.field_level_encryption_profile.field_level_encryption_profile_config.encryption_entities.items[0].public_key_id #=> String
    #   resp.field_level_encryption_profile.field_level_encryption_profile_config.encryption_entities.items[0].provider_id #=> String
    #   resp.field_level_encryption_profile.field_level_encryption_profile_config.encryption_entities.items[0].field_patterns.quantity #=> Integer
    #   resp.field_level_encryption_profile.field_level_encryption_profile_config.encryption_entities.items[0].field_patterns.items #=> Array
    #   resp.field_level_encryption_profile.field_level_encryption_profile_config.encryption_entities.items[0].field_patterns.items[0] #=> String
    #   resp.etag #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/UpdateFieldLevelEncryptionProfile2018_06_18 AWS API Documentation
    #
    # @overload update_field_level_encryption_profile(params = {})
    # @param [Hash] params ({})
    def update_field_level_encryption_profile(params = {}, options = {})
      req = build_request(:update_field_level_encryption_profile, params)
      req.send_request(options)
    end

    # Update public key information. Note that the only value you can change
    # is the comment.
    #
    # @option params [required, Types::PublicKeyConfig] :public_key_config
    #   Request to update public key information.
    #
    # @option params [required, String] :id
    #   ID of the public key to be updated.
    #
    # @option params [String] :if_match
    #   The value of the `ETag` header that you received when retrieving the
    #   public key to update. For example: `E2QWRUHAPOMQZL`.
    #
    # @return [Types::UpdatePublicKeyResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdatePublicKeyResult#public_key #public_key} => Types::PublicKey
    #   * {Types::UpdatePublicKeyResult#etag #etag} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_public_key({
    #     public_key_config: { # required
    #       caller_reference: "string", # required
    #       name: "string", # required
    #       encoded_key: "string", # required
    #       comment: "string",
    #     },
    #     id: "string", # required
    #     if_match: "string",
    #   })
    #
    # @example Response structure
    #
    #   resp.public_key.id #=> String
    #   resp.public_key.created_time #=> Time
    #   resp.public_key.public_key_config.caller_reference #=> String
    #   resp.public_key.public_key_config.name #=> String
    #   resp.public_key.public_key_config.encoded_key #=> String
    #   resp.public_key.public_key_config.comment #=> String
    #   resp.etag #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/UpdatePublicKey2018_06_18 AWS API Documentation
    #
    # @overload update_public_key(params = {})
    # @param [Hash] params ({})
    def update_public_key(params = {}, options = {})
      req = build_request(:update_public_key, params)
      req.send_request(options)
    end

    # Update a streaming distribution.
    #
    # @option params [required, Types::StreamingDistributionConfig] :streaming_distribution_config
    #   The streaming distribution's configuration information.
    #
    # @option params [required, String] :id
    #   The streaming distribution's id.
    #
    # @option params [String] :if_match
    #   The value of the `ETag` header that you received when retrieving the
    #   streaming distribution's configuration. For example:
    #   `E2QWRUHAPOMQZL`.
    #
    # @return [Types::UpdateStreamingDistributionResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateStreamingDistributionResult#streaming_distribution #streaming_distribution} => Types::StreamingDistribution
    #   * {Types::UpdateStreamingDistributionResult#etag #etag} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_streaming_distribution({
    #     streaming_distribution_config: { # required
    #       caller_reference: "string", # required
    #       s3_origin: { # required
    #         domain_name: "string", # required
    #         origin_access_identity: "string", # required
    #       },
    #       aliases: {
    #         quantity: 1, # required
    #         items: ["string"],
    #       },
    #       comment: "string", # required
    #       logging: {
    #         enabled: false, # required
    #         bucket: "string", # required
    #         prefix: "string", # required
    #       },
    #       trusted_signers: { # required
    #         enabled: false, # required
    #         quantity: 1, # required
    #         items: ["string"],
    #       },
    #       price_class: "PriceClass_100", # accepts PriceClass_100, PriceClass_200, PriceClass_All
    #       enabled: false, # required
    #     },
    #     id: "string", # required
    #     if_match: "string",
    #   })
    #
    # @example Response structure
    #
    #   resp.streaming_distribution.id #=> String
    #   resp.streaming_distribution.arn #=> String
    #   resp.streaming_distribution.status #=> String
    #   resp.streaming_distribution.last_modified_time #=> Time
    #   resp.streaming_distribution.domain_name #=> String
    #   resp.streaming_distribution.active_trusted_signers.enabled #=> Boolean
    #   resp.streaming_distribution.active_trusted_signers.quantity #=> Integer
    #   resp.streaming_distribution.active_trusted_signers.items #=> Array
    #   resp.streaming_distribution.active_trusted_signers.items[0].aws_account_number #=> String
    #   resp.streaming_distribution.active_trusted_signers.items[0].key_pair_ids.quantity #=> Integer
    #   resp.streaming_distribution.active_trusted_signers.items[0].key_pair_ids.items #=> Array
    #   resp.streaming_distribution.active_trusted_signers.items[0].key_pair_ids.items[0] #=> String
    #   resp.streaming_distribution.streaming_distribution_config.caller_reference #=> String
    #   resp.streaming_distribution.streaming_distribution_config.s3_origin.domain_name #=> String
    #   resp.streaming_distribution.streaming_distribution_config.s3_origin.origin_access_identity #=> String
    #   resp.streaming_distribution.streaming_distribution_config.aliases.quantity #=> Integer
    #   resp.streaming_distribution.streaming_distribution_config.aliases.items #=> Array
    #   resp.streaming_distribution.streaming_distribution_config.aliases.items[0] #=> String
    #   resp.streaming_distribution.streaming_distribution_config.comment #=> String
    #   resp.streaming_distribution.streaming_distribution_config.logging.enabled #=> Boolean
    #   resp.streaming_distribution.streaming_distribution_config.logging.bucket #=> String
    #   resp.streaming_distribution.streaming_distribution_config.logging.prefix #=> String
    #   resp.streaming_distribution.streaming_distribution_config.trusted_signers.enabled #=> Boolean
    #   resp.streaming_distribution.streaming_distribution_config.trusted_signers.quantity #=> Integer
    #   resp.streaming_distribution.streaming_distribution_config.trusted_signers.items #=> Array
    #   resp.streaming_distribution.streaming_distribution_config.trusted_signers.items[0] #=> String
    #   resp.streaming_distribution.streaming_distribution_config.price_class #=> String, one of "PriceClass_100", "PriceClass_200", "PriceClass_All"
    #   resp.streaming_distribution.streaming_distribution_config.enabled #=> Boolean
    #   resp.etag #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/UpdateStreamingDistribution2018_06_18 AWS API Documentation
    #
    # @overload update_streaming_distribution(params = {})
    # @param [Hash] params ({})
    def update_streaming_distribution(params = {}, options = {})
      req = build_request(:update_streaming_distribution, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config)
      context[:gem_name] = 'aws-sdk-cloudfront'
      context[:gem_version] = '1.7.0'
      Seahorse::Client::Request.new(handlers, context)
    end

    # Polls an API operation until a resource enters a desired state.
    #
    # ## Basic Usage
    #
    # A waiter will call an API operation until:
    #
    # * It is successful
    # * It enters a terminal state
    # * It makes the maximum number of attempts
    #
    # In between attempts, the waiter will sleep.
    #
    #     # polls in a loop, sleeping between attempts
    #     client.waiter_until(waiter_name, params)
    #
    # ## Configuration
    #
    # You can configure the maximum number of polling attempts, and the
    # delay (in seconds) between each polling attempt. You can pass
    # configuration as the final arguments hash.
    #
    #     # poll for ~25 seconds
    #     client.wait_until(waiter_name, params, {
    #       max_attempts: 5,
    #       delay: 5,
    #     })
    #
    # ## Callbacks
    #
    # You can be notified before each polling attempt and before each
    # delay. If you throw `:success` or `:failure` from these callbacks,
    # it will terminate the waiter.
    #
    #     started_at = Time.now
    #     client.wait_until(waiter_name, params, {
    #
    #       # disable max attempts
    #       max_attempts: nil,
    #
    #       # poll for 1 hour, instead of a number of attempts
    #       before_wait: -> (attempts, response) do
    #         throw :failure if Time.now - started_at > 3600
    #       end
    #     })
    #
    # ## Handling Errors
    #
    # When a waiter is unsuccessful, it will raise an error.
    # All of the failure errors extend from
    # {Aws::Waiters::Errors::WaiterFailed}.
    #
    #     begin
    #       client.wait_until(...)
    #     rescue Aws::Waiters::Errors::WaiterFailed
    #       # resource did not enter the desired state in time
    #     end
    #
    # ## Valid Waiters
    #
    # The following table lists the valid waiter names, the operations they call,
    # and the default `:delay` and `:max_attempts` values.
    #
    # | waiter_name                     | params                        | :delay   | :max_attempts |
    # | ------------------------------- | ----------------------------- | -------- | ------------- |
    # | distribution_deployed           | {#get_distribution}           | 60       | 25            |
    # | invalidation_completed          | {#get_invalidation}           | 20       | 30            |
    # | streaming_distribution_deployed | {#get_streaming_distribution} | 60       | 25            |
    #
    # @raise [Errors::FailureStateError] Raised when the waiter terminates
    #   because the waiter has entered a state that it will not transition
    #   out of, preventing success.
    #
    # @raise [Errors::TooManyAttemptsError] Raised when the configured
    #   maximum number of attempts have been made, and the waiter is not
    #   yet successful.
    #
    # @raise [Errors::UnexpectedError] Raised when an error is encounted
    #   while polling for a resource that is not expected.
    #
    # @raise [Errors::NoSuchWaiterError] Raised when you request to wait
    #   for an unknown state.
    #
    # @return [Boolean] Returns `true` if the waiter was successful.
    # @param [Symbol] waiter_name
    # @param [Hash] params ({})
    # @param [Hash] options ({})
    # @option options [Integer] :max_attempts
    # @option options [Integer] :delay
    # @option options [Proc] :before_attempt
    # @option options [Proc] :before_wait
    def wait_until(waiter_name, params = {}, options = {})
      w = waiter(waiter_name, options)
      yield(w.waiter) if block_given? # deprecated
      w.wait(params)
    end

    # @api private
    # @deprecated
    def waiter_names
      waiters.keys
    end

    private

    # @param [Symbol] waiter_name
    # @param [Hash] options ({})
    def waiter(waiter_name, options = {})
      waiter_class = waiters[waiter_name]
      if waiter_class
        waiter_class.new(options.merge(client: self))
      else
        raise Aws::Waiters::Errors::NoSuchWaiterError.new(waiter_name, waiters.keys)
      end
    end

    def waiters
      {
        distribution_deployed: Waiters::DistributionDeployed,
        invalidation_completed: Waiters::InvalidationCompleted,
        streaming_distribution_deployed: Waiters::StreamingDistributionDeployed
      }
    end

    class << self

      # @api private
      attr_reader :identifier

      # @api private
      def errors_module
        Errors
      end

    end
  end
end
