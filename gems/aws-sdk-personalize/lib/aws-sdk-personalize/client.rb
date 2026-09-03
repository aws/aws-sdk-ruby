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
require 'aws-sdk-core/json_rpc'

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:personalize)

module Aws::Personalize
  # An API client for Aws::Personalize.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AmazonPersonalize
    @identifier = :personalize

    add_plugin(::Aws::Personalize::Plugins::Endpoint)
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
    #  and returns a {Aws::Core::Credentials}.
    # @option options [Boolean] :disable_host_prefix_injection
    #  When `true`, the SDK will not prepend the modeled host prefix to the endpoint.
    # @option options [Boolean] :disable_request_compression
    #  When `true`, the request body will not be compressed for supported operations.
    # @option options [String] :endpoint
    #  The endpoint to send requests to.
    #  The endpoint should be a URI formatted like "http://example.com:123"'
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::Personalize::EndpointProvider)
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
    #  Supported protocols: +:json_rpc+ (defaults to +:json_rpc+).
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
    #  `#transmit(request)` (returning a stream) to swap the transport, or a
    #  directly-constructed `NetHTTP::Transport` to set Net::HTTP-specific knobs. A
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

    # <p>Generates batch recommendations based on a list of items or users stored in Amazon S3
    #       and exports the recommendations to an Amazon S3 bucket.</p>
    #          <p>To generate batch recommendations, specify the ARN of a solution version and an Amazon S3 URI for the input and output data.
    #       For user personalization, popular items, and personalized ranking solutions, the batch inference job generates a list of
    #       recommended items for each user ID in the input file. For related items solutions, the job generates a list of recommended
    #       items for each item ID in the input file.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/personalize/latest/dg/getting-batch-recommendations.html">Creating a batch inference job
    #     </a>.</p>
    #          <p>
    #       If you use the Similar-Items recipe, Amazon Personalize can add descriptive themes to batch recommendations. 
    #       To generate themes, set the job's mode to
    #       <code>THEME_GENERATION</code> and specify the name of the field that contains item names in the
    #       input data.</p>
    #          <p>
    #       For more information about generating themes, see <a href="https://docs.aws.amazon.com/personalize/latest/dg/themed-batch-recommendations.html">Batch recommendations with themes from Content Generator
    #       </a>.
    #     </p>
    #          <p>You can't get batch recommendations with the Trending-Now or Next-Best-Action recipes.</p>
    # @param [Hash, Types::CreateBatchInferenceJobRequest] params
    # @option params [String] :job_name
    #   <p>The name of the batch inference job to create.</p>
    # @option params [String] :solution_version_arn
    #   <p>The Amazon Resource Name (ARN) of the solution version that will be used to generate the
    #         batch inference recommendations.</p>
    # @option params [String] :filter_arn
    #   <p>The ARN of the filter to apply to the batch inference job. For more information on using
    #         filters, see
    #         <a href="https://docs.aws.amazon.com/personalize/latest/dg/filter-batch.html">Filtering batch recommendations</a>.</p>
    # @option params [Integer] :num_results
    #   <p>The number of recommendations to retrieve.</p>
    # @option params [Types::BatchInferenceJobInput] :job_input
    #   <p>The Amazon S3 path that leads to the input file to base your recommendations on. The input
    #         material must be in JSON format.</p>
    # @option params [Types::BatchInferenceJobOutput] :job_output
    #   <p>The path to the Amazon S3 bucket where the job's output will be stored.</p>
    # @option params [String] :role_arn
    #   <p>The ARN of the Amazon Identity and Access Management role that has permissions to read and write to your input and output
    #         Amazon S3 buckets respectively.</p>
    # @option params [Types::BatchInferenceJobConfig] :batch_inference_job_config
    #   <p>The configuration details of a batch inference job.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of <a href="https://docs.aws.amazon.com/personalize/latest/dg/tagging-resources.html">tags</a> to apply to the batch inference job.</p>
    # @option params [String] :batch_inference_job_mode
    #   <p>The mode of the batch inference job. To generate descriptive themes for groups of similar items, set the
    #         job mode to <code>THEME_GENERATION</code>. If you don't want to generate themes, use the default <code>BATCH_INFERENCE</code>.</p>
    #            <p>
    #         When you get batch recommendations with themes, you will incur additional costs. For more information, see <a href="https://aws.amazon.com/personalize/pricing/">Amazon Personalize pricing</a>.
    #       </p>
    # @option params [Types::ThemeGenerationConfig] :theme_generation_config
    #   <p>For theme generation jobs, specify the name of the column in your Items
    #         dataset that contains each item's name.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_name: "Name", # required
    #     solution_version_arn: "Arn", # required
    #     filter_arn: "Arn",
    #     num_results: 1,
    #     job_input: { # required
    #       s3_data_source: { # required
    #         path: "S3Location", # required
    #         kms_key_arn: "KmsKeyArn"
    #       }
    #     },
    #     job_output: { # required
    #       s3_data_destination: { # required
    #         path: "S3Location", # required
    #         kms_key_arn: "KmsKeyArn"
    #       }
    #     },
    #     role_arn: "RoleArn", # required
    #     batch_inference_job_config: {
    #       item_exploration_config: {
    #         "ParameterName" => "ParameterValue"
    #       }
    #     },
    #     tags: [
    #       {
    #         tag_key: "TagKey", # required
    #         tag_value: "TagValue", # required
    #       }
    #     ],
    #     batch_inference_job_mode: "BATCH_INFERENCE" # One of: ["BATCH_INFERENCE", "THEME_GENERATION"],
    #     theme_generation_config: {
    #       fields_for_theme_generation: { # required
    #         item_name: "ColumnName", # required
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.create_batch_inference_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     batch_inference_job_arn: "Arn"
    #   }
    # @return [Types::CreateBatchInferenceJobResponse]
    def create_batch_inference_job(params = {}, options = {})
      request = build_request(:create_batch_inference_job, params)
      request.send_request(options)
    end

    # <p>Creates a batch segment job. The operation can handle up to 50 million records and the
    #       input file must be in JSON format. For more information, see 
    #       <a href="https://docs.aws.amazon.com/personalize/latest/dg/recommendations-batch.html">Getting batch recommendations and user segments</a>.</p>
    # @param [Hash, Types::CreateBatchSegmentJobRequest] params
    # @option params [String] :job_name
    #   <p>The name of the batch segment job to create.</p>
    # @option params [String] :solution_version_arn
    #   <p>The Amazon Resource Name (ARN) of the solution version you want the batch segment job to use to generate
    #         batch segments.</p>
    # @option params [String] :filter_arn
    #   <p>The ARN of the filter to apply to the batch segment job. For more information on using
    #         filters, see <a href="https://docs.aws.amazon.com/personalize/latest/dg/filter-batch.html">Filtering batch recommendations</a>.</p>
    # @option params [Integer] :num_results
    #   <p>The number of predicted users generated by the batch segment job for each line of input data. The maximum number of users per segment is 5 million.</p>
    # @option params [Types::BatchSegmentJobInput] :job_input
    #   <p>The Amazon S3 path for the input data used to generate the batch segment job.</p>
    # @option params [Types::BatchSegmentJobOutput] :job_output
    #   <p>The Amazon S3 path for the bucket where the job's output will be stored.</p>
    # @option params [String] :role_arn
    #   <p>The ARN of the Amazon Identity and Access Management role that has permissions to read and write to your input and output
    #         Amazon S3 buckets respectively.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of <a href="https://docs.aws.amazon.com/personalize/latest/dg/tagging-resources.html">tags</a> to apply to the batch segment job.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_name: "Name", # required
    #     solution_version_arn: "Arn", # required
    #     filter_arn: "Arn",
    #     num_results: 1,
    #     job_input: { # required
    #       s3_data_source: { # required
    #         path: "S3Location", # required
    #         kms_key_arn: "KmsKeyArn"
    #       }
    #     },
    #     job_output: { # required
    #       s3_data_destination: { # required
    #         path: "S3Location", # required
    #         kms_key_arn: "KmsKeyArn"
    #       }
    #     },
    #     role_arn: "RoleArn", # required
    #     tags: [
    #       {
    #         tag_key: "TagKey", # required
    #         tag_value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_batch_segment_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     batch_segment_job_arn: "Arn"
    #   }
    # @return [Types::CreateBatchSegmentJobResponse]
    def create_batch_segment_job(params = {}, options = {})
      request = build_request(:create_batch_segment_job, params)
      request.send_request(options)
    end

    # <important>
    #             <p> You incur campaign costs while it is active. To avoid unnecessary costs, make sure to delete the campaign when you are finished. For information about campaign
    #         costs, see <a href="https://aws.amazon.com/personalize/pricing/">Amazon Personalize pricing</a>.</p>
    #          </important>
    #          <p>Creates a campaign that deploys a solution version. When a client calls the
    #       <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_RS_GetRecommendations.html">GetRecommendations</a>
    #       and
    #       <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_RS_GetPersonalizedRanking.html">GetPersonalizedRanking</a>
    #       APIs, a campaign is specified in the request.</p>
    #          <p>
    #             <b>Minimum Provisioned TPS and Auto-Scaling</b>
    #          </p>
    #          <important>
    #             <p> A high <code>minProvisionedTPS</code> will increase your cost. We recommend starting with 1 for <code>minProvisionedTPS</code> (the default). Track
    #         your usage using Amazon CloudWatch metrics, and increase the <code>minProvisionedTPS</code>
    #         as necessary.</p>
    #          </important>
    #          <p>
    #       When you create an Amazon Personalize campaign, you can specify the minimum provisioned transactions per second
    #       (<code>minProvisionedTPS</code>) for the campaign. This is the baseline transaction throughput for the campaign provisioned by
    #       Amazon Personalize. It sets the minimum billing charge for the campaign while it is active. A transaction is a single <code>GetRecommendations</code> or
    #       <code>GetPersonalizedRanking</code> request. The default <code>minProvisionedTPS</code> is 1.</p>
    #          <p> If your TPS increases beyond the <code>minProvisionedTPS</code>, Amazon Personalize auto-scales the provisioned capacity up
    #       and down, but never below <code>minProvisionedTPS</code>. 
    #       There's a short time delay while the capacity is increased
    #       that might cause loss of transactions. When your traffic reduces, capacity returns to the <code>minProvisionedTPS</code>.
    #     </p>
    #          <p>You are charged for the
    #       the minimum provisioned TPS or, if your requests exceed the <code>minProvisionedTPS</code>, the actual TPS. 
    #       The actual TPS is the total number of recommendation requests you make.
    #       We recommend starting with a low <code>minProvisionedTPS</code>, track
    #       your usage using Amazon CloudWatch metrics, and then increase the <code>minProvisionedTPS</code> as necessary.</p>
    #          <p>For more information about campaign costs, see <a href="https://aws.amazon.com/personalize/pricing/">Amazon Personalize pricing</a>.</p>
    #          <p>
    #             <b>Status</b>
    #          </p>
    #          <p>A campaign can be in one of the following states:</p>
    #          <ul>
    #             <li>
    #                <p>CREATE PENDING > CREATE IN_PROGRESS > ACTIVE -or- CREATE FAILED</p>
    #             </li>
    #             <li>
    #                <p>DELETE PENDING > DELETE IN_PROGRESS</p>
    #             </li>
    #          </ul>
    #          <p>To get the campaign status, call <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeCampaign.html">DescribeCampaign</a>.</p>
    #          <note>
    #             <p>Wait until the <code>status</code> of the campaign
    #         is <code>ACTIVE</code> before asking the campaign for recommendations.</p>
    #          </note>
    #          <p class="title">
    #             <b>Related APIs</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_ListCampaigns.html">ListCampaigns</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeCampaign.html">DescribeCampaign</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_UpdateCampaign.html">UpdateCampaign</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_DeleteCampaign.html">DeleteCampaign</a>
    #                </p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::CreateCampaignRequest] params
    # @option params [String] :name
    #   <p>A name for the new campaign. The campaign name must be unique within your account.</p>
    # @option params [String] :solution_version_arn
    #   <p>The Amazon Resource Name (ARN) of the trained model to deploy with the campaign. To specify the latest solution version of your solution, 
    #         specify the ARN of your <i>solution</i> in <code>SolutionArn/$LATEST</code> format.
    #         You must use this format if you set <code>syncWithLatestSolutionVersion</code> to <code>True</code> in the 
    #         <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_CampaignConfig.html">CampaignConfig</a>.
    #       </p>
    #            <p>
    #         To deploy a model that isn't the latest solution version of your solution, specify the ARN of the solution version.
    #       </p>
    #            <p>
    #         For more information about automatic campaign updates, see 
    #         <a href="https://docs.aws.amazon.com/personalize/latest/dg/campaigns.html#create-campaign-automatic-latest-sv-update">Enabling automatic campaign updates</a>.
    #       </p>
    # @option params [Integer] :min_provisioned_tps
    #   <p>Specifies the requested minimum provisioned transactions (recommendations) per second that
    #         Amazon Personalize will support.  A high <code>minProvisionedTPS</code> will increase your bill. We recommend starting with 1 for <code>minProvisionedTPS</code> (the default). Track
    #         your usage using Amazon CloudWatch metrics, and increase the <code>minProvisionedTPS</code> as necessary.</p>
    # @option params [Types::CampaignConfig] :campaign_config
    #   <p>The configuration details of a campaign.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of <a href="https://docs.aws.amazon.com/personalize/latest/dg/tagging-resources.html">tags</a> to apply to the campaign.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "Name", # required
    #     solution_version_arn: "Arn", # required
    #     min_provisioned_tps: 1,
    #     campaign_config: {
    #       item_exploration_config: {
    #         "ParameterName" => "ParameterValue"
    #       },
    #       enable_metadata_with_recommendations: false,
    #       sync_with_latest_solution_version: false
    #     },
    #     tags: [
    #       {
    #         tag_key: "TagKey", # required
    #         tag_value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_campaign(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     campaign_arn: "Arn"
    #   }
    # @return [Types::CreateCampaignResponse]
    def create_campaign(params = {}, options = {})
      request = build_request(:create_campaign, params)
      request.send_request(options)
    end

    # <p>Creates a batch job that deletes all
    #       references to specific users from an Amazon Personalize dataset group in batches. You specify the users to delete in a CSV file of userIds in 
    #       an Amazon S3 bucket. After a job completes, Amazon Personalize no longer trains
    #       on the users’ data and no longer considers the users when generating user segments. 
    #       For more information about creating a data deletion job, see <a href="https://docs.aws.amazon.com/personalize/latest/dg/delete-records.html">Deleting users</a>.</p>
    #          <ul>
    #             <li>
    #                <p>Your input file must be a CSV file with a single USER_ID column that lists the users IDs. For more information
    #           about preparing the CSV file, see <a href="https://docs.aws.amazon.com/personalize/latest/dg/prepare-deletion-input-file.html">Preparing your data deletion file and uploading it to Amazon S3</a>.</p>
    #             </li>
    #             <li>
    #                <p>To give Amazon Personalize permission to access your input CSV file of userIds, you must specify an IAM service role that has permission to
    #           read from the data source. This role 
    #           needs <code>GetObject</code> and <code>ListBucket</code> permissions for the bucket and its content.
    #           These permissions are the same as importing data. For information on granting access to your Amazon S3
    #           bucket, see <a href="https://docs.aws.amazon.com/personalize/latest/dg/granting-personalize-s3-access.html">Giving
    #             Amazon Personalize Access to Amazon S3 Resources</a>. </p>
    #             </li>
    #          </ul>
    #          <p>
    #       After you create a job, it can take up to a day to delete all references to the users from datasets and models. Until the job completes, 
    #       Amazon Personalize continues to use the data when training. And if you use a User Segmentation recipe, the users might appear in user segments. 
    #     </p>
    #          <p>
    #             <b>Status</b>
    #          </p>
    #          <p>A data deletion job can have one of the following statuses:</p>
    #          <ul>
    #             <li>
    #                <p>PENDING > IN_PROGRESS > COMPLETED -or- FAILED</p>
    #             </li>
    #          </ul>
    #          <p>To get the status of the data deletion job, call <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeDataDeletionJob.html">DescribeDataDeletionJob</a> API operation and specify the Amazon Resource Name
    #       (ARN) of the job. If the status is FAILED, the response
    #       includes a <code>failureReason</code> key, which describes why the job
    #       failed.</p>
    #          <p class="title">
    #             <b>Related APIs</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_ListDataDeletionJobs.html">ListDataDeletionJobs</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeDataDeletionJob.html">DescribeDataDeletionJob</a>
    #                </p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::CreateDataDeletionJobRequest] params
    # @option params [String] :job_name
    #   <p>The name for the data deletion job.</p>
    # @option params [String] :dataset_group_arn
    #   <p>The Amazon Resource Name (ARN) of the dataset group that has the datasets you want to
    #       delete records from.</p>
    # @option params [Types::DataSource] :data_source
    #   <p>The Amazon S3 bucket that contains the list of userIds of the users to delete.</p>
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that has permissions to read from the Amazon S3
    #         data source.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of <a href="https://docs.aws.amazon.com/personalize/latest/dg/tagging-resources.html">tags</a> to apply to the data deletion job.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_name: "Name", # required
    #     dataset_group_arn: "Arn", # required
    #     data_source: { # required
    #       data_location: "S3Location"
    #     },
    #     role_arn: "RoleArn", # required
    #     tags: [
    #       {
    #         tag_key: "TagKey", # required
    #         tag_value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_data_deletion_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     data_deletion_job_arn: "Arn"
    #   }
    # @return [Types::CreateDataDeletionJobResponse]
    def create_data_deletion_job(params = {}, options = {})
      request = build_request(:create_data_deletion_job, params)
      request.send_request(options)
    end

    # <p>Creates an empty dataset and adds it to the specified dataset group.
    #       Use <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_CreateDatasetImportJob.html">CreateDatasetImportJob</a> to import your training data to a
    #       dataset.</p>
    #          <p>There are 5 types of datasets:</p>
    #          <ul>
    #             <li>
    #                <p>Item interactions</p>
    #             </li>
    #             <li>
    #                <p>Items</p>
    #             </li>
    #             <li>
    #                <p>Users</p>
    #             </li>
    #             <li>
    #                <p>Action interactions</p>
    #             </li>
    #             <li>
    #                <p>Actions</p>
    #             </li>
    #          </ul>
    #          <p>Each dataset type has an associated schema with required field types.
    #       Only the <code>Item interactions</code> dataset is required in order to train a
    #       model (also referred to as creating a solution).</p>
    #          <p>A dataset can be in one of the following states:</p>
    #          <ul>
    #             <li>
    #                <p>CREATE PENDING > CREATE IN_PROGRESS > ACTIVE -or- CREATE
    #           FAILED</p>
    #             </li>
    #             <li>
    #                <p>DELETE PENDING > DELETE IN_PROGRESS</p>
    #             </li>
    #          </ul>
    #          <p>To get the status of the dataset, call <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeDataset.html">DescribeDataset</a>.</p>
    #          <p class="title">
    #             <b>Related APIs</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_CreateDatasetGroup.html">CreateDatasetGroup</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_ListDatasets.html">ListDatasets</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeDataset.html">DescribeDataset</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_DeleteDataset.html">DeleteDataset</a>
    #                </p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::CreateDatasetRequest] params
    # @option params [String] :name
    #   <p>The name for the dataset.</p>
    # @option params [String] :schema_arn
    #   <p>The ARN of the schema to associate with the dataset. The schema
    #         defines the dataset fields.</p>
    # @option params [String] :dataset_group_arn
    #   <p>The Amazon Resource Name (ARN) of the dataset group to add the dataset
    #         to.</p>
    # @option params [String] :dataset_type
    #   <p>The type of dataset.</p>
    #            <p>One of the following (case insensitive) values:</p>
    #            <ul>
    #               <li>
    #                  <p>Interactions</p>
    #               </li>
    #               <li>
    #                  <p>Items</p>
    #               </li>
    #               <li>
    #                  <p>Users</p>
    #               </li>
    #               <li>
    #                  <p>Actions</p>
    #               </li>
    #               <li>
    #                  <p>Action_Interactions</p>
    #               </li>
    #            </ul>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of <a href="https://docs.aws.amazon.com/personalize/latest/dg/tagging-resources.html">tags</a> to apply to the dataset.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "Name", # required
    #     schema_arn: "Arn", # required
    #     dataset_group_arn: "Arn", # required
    #     dataset_type: "DatasetType", # required
    #     tags: [
    #       {
    #         tag_key: "TagKey", # required
    #         tag_value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_dataset(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     dataset_arn: "Arn"
    #   }
    # @return [Types::CreateDatasetResponse]
    def create_dataset(params = {}, options = {})
      request = build_request(:create_dataset, params)
      request.send_request(options)
    end

    # <p> Creates a job that exports data from your dataset to an Amazon S3 bucket.
    #       To allow Amazon Personalize to export the training data, you must specify an
    #       service-linked IAM role that gives Amazon Personalize <code>PutObject</code>
    #       permissions for your Amazon S3 bucket. For information, see <a href="https://docs.aws.amazon.com/personalize/latest/dg/export-data.html">Exporting a dataset</a> in the Amazon Personalize developer guide. </p>
    #          <p>
    #             <b>Status</b>
    #          </p>
    #          <p>A dataset export job can be in one of the following states:</p>
    #          <ul>
    #             <li>
    #                <p>CREATE PENDING > CREATE IN_PROGRESS > ACTIVE -or- CREATE
    #           FAILED</p>
    #             </li>
    #          </ul>
    #          <p> To get the status of the export job, call <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeDatasetExportJob.html">DescribeDatasetExportJob</a>, and specify the Amazon Resource Name
    #       (ARN) of the dataset export job. The dataset export is complete when the
    #       status shows as ACTIVE. If the status shows as CREATE FAILED, the response
    #       includes a <code>failureReason</code> key, which describes why the job
    #       failed. </p>
    # @param [Hash, Types::CreateDatasetExportJobRequest] params
    # @option params [String] :job_name
    #   <p>The name for the dataset export job.</p>
    # @option params [String] :dataset_arn
    #   <p>The Amazon Resource Name (ARN) of the dataset that contains the data
    #         to export.</p>
    # @option params [String] :ingestion_mode
    #   <p>The data to export, based on how you imported the data. You can choose
    #         to export only <code>BULK</code> data that you imported using a dataset
    #         import job, only <code>PUT</code> data that you imported incrementally
    #         (using the console, PutEvents, PutUsers and PutItems operations), or
    #           <code>ALL</code> for both types. The default value is <code>PUT</code>.
    #       </p>
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM service role that has
    #         permissions to add data to your output Amazon S3 bucket.</p>
    # @option params [Types::DatasetExportJobOutput] :job_output
    #   <p>The path to the Amazon S3 bucket where the job's output is stored.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of <a href="https://docs.aws.amazon.com/personalize/latest/dg/tagging-resources.html">tags</a> to apply to the dataset export job.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_name: "Name", # required
    #     dataset_arn: "Arn", # required
    #     ingestion_mode: "BULK" # One of: ["BULK", "PUT", "ALL"],
    #     role_arn: "RoleArn", # required
    #     job_output: { # required
    #       s3_data_destination: { # required
    #         path: "S3Location", # required
    #         kms_key_arn: "KmsKeyArn"
    #       }
    #     },
    #     tags: [
    #       {
    #         tag_key: "TagKey", # required
    #         tag_value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_dataset_export_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     dataset_export_job_arn: "Arn"
    #   }
    # @return [Types::CreateDatasetExportJobResponse]
    def create_dataset_export_job(params = {}, options = {})
      request = build_request(:create_dataset_export_job, params)
      request.send_request(options)
    end

    # <p>Creates an empty dataset group. A dataset group is a container for
    #       Amazon Personalize resources. A dataset group can contain at most three datasets, one
    #       for each type of dataset:</p>
    #          <ul>
    #             <li>
    #                <p>Item interactions</p>
    #             </li>
    #             <li>
    #                <p>Items</p>
    #             </li>
    #             <li>
    #                <p>Users</p>
    #             </li>
    #             <li>
    #                <p>Actions</p>
    #             </li>
    #             <li>
    #                <p>Action interactions</p>
    #             </li>
    #          </ul>
    #          <p> A dataset group can be a Domain dataset group, where you specify a
    #       domain and use pre-configured resources like recommenders, or a
    #       Custom dataset group, where you use custom resources, such as a solution
    #       with a solution version, that you deploy with a campaign. If you start
    #       with a Domain dataset group, you can still add custom resources such as
    #       solutions and solution versions trained with recipes for custom use cases
    #       and deployed with campaigns. </p>
    #          <p>A dataset group can be in one of the following states:</p>
    #          <ul>
    #             <li>
    #                <p>CREATE PENDING > CREATE IN_PROGRESS > ACTIVE -or- CREATE
    #           FAILED</p>
    #             </li>
    #             <li>
    #                <p>DELETE PENDING</p>
    #             </li>
    #          </ul>
    #          <p>To get the status of the dataset group, call <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeDatasetGroup.html">DescribeDatasetGroup</a>. If the status shows as CREATE FAILED, the
    #       response includes a <code>failureReason</code> key, which describes why
    #       the creation failed.</p>
    #          <note>
    #             <p>You must wait until the <code>status</code> of the dataset group is
    #           <code>ACTIVE</code> before adding a dataset to the group.</p>
    #          </note>
    #          <p>You can specify an Key Management Service (KMS) key to encrypt the datasets in
    #       the group. If you specify a KMS key, you must also include an Identity and Access Management
    #       (IAM) role that has permission to access the key.</p>
    #          <p class="title">
    #             <b>APIs that require a dataset group ARN in the request</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_CreateDataset.html">CreateDataset</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_CreateEventTracker.html">CreateEventTracker</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_CreateSolution.html">CreateSolution</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <p class="title">
    #             <b>Related APIs</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_ListDatasetGroups.html">ListDatasetGroups</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeDatasetGroup.html">DescribeDatasetGroup</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_DeleteDatasetGroup.html">DeleteDatasetGroup</a>
    #                </p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::CreateDatasetGroupRequest] params
    # @option params [String] :name
    #   <p>The name for the new dataset group.</p>
    # @option params [String] :role_arn
    #   <p>The ARN of the Identity and Access Management (IAM) role that has permissions to access
    #         the Key Management Service (KMS) key. Supplying an IAM role is only valid when also
    #         specifying a KMS key.</p>
    # @option params [String] :kms_key_arn
    #   <p>The Amazon Resource Name (ARN) of a Key Management Service (KMS) key used to
    #         encrypt the datasets.</p>
    # @option params [String] :domain
    #   <p>The domain of the dataset group. Specify a domain to create a
    #         Domain dataset group. The domain you specify determines the default
    #         schemas for datasets and the use cases available for recommenders. If you
    #         don't specify a domain, you create a Custom dataset group with solution
    #         versions that you deploy with a campaign. </p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of <a href="https://docs.aws.amazon.com/personalize/latest/dg/tagging-resources.html">tags</a> to apply to the dataset group.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "Name", # required
    #     role_arn: "RoleArn",
    #     kms_key_arn: "KmsKeyArn",
    #     domain: "ECOMMERCE" # One of: ["ECOMMERCE", "VIDEO_ON_DEMAND"],
    #     tags: [
    #       {
    #         tag_key: "TagKey", # required
    #         tag_value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_dataset_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     dataset_group_arn: "Arn",
    #     domain: "ECOMMERCE" # One of: ["ECOMMERCE", "VIDEO_ON_DEMAND"]
    #   }
    # @return [Types::CreateDatasetGroupResponse]
    def create_dataset_group(params = {}, options = {})
      request = build_request(:create_dataset_group, params)
      request.send_request(options)
    end

    # <p>Creates a job that imports training data from your data source (an
    #       Amazon S3 bucket) to an Amazon Personalize dataset. To allow Amazon Personalize to import the
    #       training data, you must specify an IAM service role that has permission to
    #       read from the data source, as Amazon Personalize makes a copy of your data and
    #       processes it internally. For information on granting access to your Amazon S3
    #       bucket, see <a href="https://docs.aws.amazon.com/personalize/latest/dg/granting-personalize-s3-access.html">Giving
    #         Amazon Personalize Access to Amazon S3 Resources</a>. </p>
    #          <p>If you already created a recommender or deployed a custom solution version with a campaign, how new bulk records
    #       influence recommendations depends on the domain use case or recipe that you use. For more information, see <a href="https://docs.aws.amazon.com/personalize/latest/dg/how-new-data-influences-recommendations.html">How new data influences
    #         real-time recommendations</a>.</p>
    #          <important>
    #             <p>By default, a dataset import job replaces any existing data in the
    #         dataset that you imported in bulk. To add new records without replacing
    #         existing data, specify INCREMENTAL for the import mode in the
    #         CreateDatasetImportJob operation.</p>
    #          </important>
    #          <p>
    #             <b>Status</b>
    #          </p>
    #          <p>A dataset import job can be in one of the following states:</p>
    #          <ul>
    #             <li>
    #                <p>CREATE PENDING > CREATE IN_PROGRESS > ACTIVE -or- CREATE
    #           FAILED</p>
    #             </li>
    #          </ul>
    #          <p>To get the status of the import job, call <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeDatasetImportJob.html">DescribeDatasetImportJob</a>, providing the Amazon Resource Name
    #       (ARN) of the dataset import job. The dataset import is complete when the
    #       status shows as ACTIVE. If the status shows as CREATE FAILED, the response
    #       includes a <code>failureReason</code> key, which describes why the job
    #       failed.</p>
    #          <note>
    #             <p>Importing takes time. You must wait until the status shows as ACTIVE
    #         before training a model using the dataset.</p>
    #          </note>
    #          <p class="title">
    #             <b>Related APIs</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_ListDatasetImportJobs.html">ListDatasetImportJobs</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeDatasetImportJob.html">DescribeDatasetImportJob</a>
    #                </p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::CreateDatasetImportJobRequest] params
    # @option params [String] :job_name
    #   <p>The name for the dataset import job.</p>
    # @option params [String] :dataset_arn
    #   <p>The ARN of the dataset that receives the imported data.</p>
    # @option params [Types::DataSource] :data_source
    #   <p>The Amazon S3 bucket that contains the training data to import.</p>
    # @option params [String] :role_arn
    #   <p>The ARN of the IAM role that has permissions to read from the Amazon S3
    #         data source.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of <a href="https://docs.aws.amazon.com/personalize/latest/dg/tagging-resources.html">tags</a> to apply to the dataset import job.</p>
    # @option params [String] :import_mode
    #   <p>Specify how to add the new records to an existing dataset. The default
    #         import mode is <code>FULL</code>. If you haven't imported bulk records into the dataset previously, you
    #         can only specify <code>FULL</code>.</p>
    #            <ul>
    #               <li>
    #                  <p>Specify <code>FULL</code> to overwrite all existing bulk data in
    #             your dataset. Data you imported individually is not replaced.</p>
    #               </li>
    #               <li>
    #                  <p>Specify <code>INCREMENTAL</code> to append the new records to the
    #             existing data in your dataset. Amazon Personalize replaces any record with the
    #             same ID with the new one.</p>
    #               </li>
    #            </ul>
    # @option params [Boolean] :publish_attribution_metrics_to_s3
    #   <p>If you created a metric attribution, specify whether to publish metrics for this import job to Amazon S3</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_name: "Name", # required
    #     dataset_arn: "Arn", # required
    #     data_source: { # required
    #       data_location: "S3Location"
    #     },
    #     role_arn: "RoleArn", # required
    #     tags: [
    #       {
    #         tag_key: "TagKey", # required
    #         tag_value: "TagValue", # required
    #       }
    #     ],
    #     import_mode: "FULL" # One of: ["FULL", "INCREMENTAL"],
    #     publish_attribution_metrics_to_s3: false
    #   }
    #   options = {}
    #   response = client.create_dataset_import_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     dataset_import_job_arn: "Arn"
    #   }
    # @return [Types::CreateDatasetImportJobResponse]
    def create_dataset_import_job(params = {}, options = {})
      request = build_request(:create_dataset_import_job, params)
      request.send_request(options)
    end

    # <p>Creates an event tracker that you use when adding event data to a specified dataset
    #       group using the
    #       <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_UBS_PutEvents.html">PutEvents</a> API.</p>
    #          <note>
    #             <p>Only one event tracker can be associated with a dataset group. You will get
    #         an error if you call <code>CreateEventTracker</code> using the same dataset group as an
    #         existing event tracker.</p>
    #          </note>
    #          <p>When you create an event tracker, the response includes a tracking ID, which you pass as a parameter when you use the
    #       <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_UBS_PutEvents.html">PutEvents</a> operation.
    #       Amazon Personalize then appends the event data to the Item interactions dataset of the dataset group you specify 
    #       in your event tracker.
    #     </p>
    #          <p>The event tracker can be in one of the following states:</p>
    #          <ul>
    #             <li>
    #                <p>CREATE PENDING > CREATE IN_PROGRESS > ACTIVE -or- CREATE FAILED</p>
    #             </li>
    #             <li>
    #                <p>DELETE PENDING > DELETE IN_PROGRESS</p>
    #             </li>
    #          </ul>
    #          <p>To get the status of the event tracker, call <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeEventTracker.html">DescribeEventTracker</a>.</p>
    #          <note>
    #             <p>The event tracker must be in the ACTIVE state before using the tracking ID.</p>
    #          </note>
    #          <p class="title">
    #             <b>Related APIs</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_ListEventTrackers.html">ListEventTrackers</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeEventTracker.html">DescribeEventTracker</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_DeleteEventTracker.html">DeleteEventTracker</a>
    #                </p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::CreateEventTrackerRequest] params
    # @option params [String] :name
    #   <p>The name for the event tracker.</p>
    # @option params [String] :dataset_group_arn
    #   <p>The Amazon Resource Name (ARN) of the dataset group that receives the event data.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of <a href="https://docs.aws.amazon.com/personalize/latest/dg/tagging-resources.html">tags</a> to apply to the event tracker.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "Name", # required
    #     dataset_group_arn: "Arn", # required
    #     tags: [
    #       {
    #         tag_key: "TagKey", # required
    #         tag_value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_event_tracker(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     event_tracker_arn: "Arn",
    #     tracking_id: "TrackingId"
    #   }
    # @return [Types::CreateEventTrackerResponse]
    def create_event_tracker(params = {}, options = {})
      request = build_request(:create_event_tracker, params)
      request.send_request(options)
    end

    # <p>Creates a recommendation filter. For more information, see <a href="https://docs.aws.amazon.com/personalize/latest/dg/filter.html">Filtering recommendations and user segments</a>.</p>
    # @param [Hash, Types::CreateFilterRequest] params
    # @option params [String] :name
    #   <p>The name of the filter to create.</p>
    # @option params [String] :dataset_group_arn
    #   <p>The ARN of the dataset group that the filter will belong to.</p>
    # @option params [String] :filter_expression
    #   <p>The filter expression defines which items are included or excluded from recommendations. Filter expression must follow specific format rules. 
    #               For information about filter expression structure and syntax, see
    #               <a href="https://docs.aws.amazon.com/personalize/latest/dg/filter-expressions.html">Filter expressions</a>.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of <a href="https://docs.aws.amazon.com/personalize/latest/dg/tagging-resources.html">tags</a> to apply to the filter.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "Name", # required
    #     dataset_group_arn: "Arn", # required
    #     filter_expression: "FilterExpression", # required
    #     tags: [
    #       {
    #         tag_key: "TagKey", # required
    #         tag_value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_filter(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     filter_arn: "Arn"
    #   }
    # @return [Types::CreateFilterResponse]
    def create_filter(params = {}, options = {})
      request = build_request(:create_filter, params)
      request.send_request(options)
    end

    # <p>Creates a metric attribution. 
    #       A metric attribution creates reports on the data that you import into Amazon Personalize. Depending on how you imported the data, you can view reports in Amazon CloudWatch or Amazon S3.
    #       For more information, see <a href="https://docs.aws.amazon.com/personalize/latest/dg/measuring-recommendation-impact.html">Measuring impact of recommendations</a>.</p>
    # @param [Hash, Types::CreateMetricAttributionRequest] params
    # @option params [String] :name
    #   <p>A name for the metric attribution.</p>
    # @option params [String] :dataset_group_arn
    #   <p>The Amazon Resource Name (ARN) of the destination dataset group for the metric attribution.</p>
    # @option params [Array<Types::MetricAttribute>] :metrics
    #   <p>A list of metric attributes for the metric attribution. Each metric attribute specifies an event type to track and a function.
    #         Available functions are <code>SUM()</code> or <code>SAMPLECOUNT()</code>. For SUM() functions, provide the 
    #         dataset type (either Interactions or Items) and column to sum as a parameter. For example SUM(Items.PRICE).</p>
    # @option params [Types::MetricAttributionOutput] :metrics_output_config
    #   <p>The output configuration details for the metric attribution.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "Name", # required
    #     dataset_group_arn: "Arn", # required
    #     metrics: [ # required
    #       {
    #         event_type: "EventType", # required
    #         metric_name: "MetricName", # required
    #         expression: "MetricExpression", # required
    #       }
    #     ],
    #     metrics_output_config: { # required
    #       s3_data_destination: {
    #         path: "S3Location", # required
    #         kms_key_arn: "KmsKeyArn"
    #       },
    #       role_arn: "RoleArn", # required
    #     }
    #   }
    #   options = {}
    #   response = client.create_metric_attribution(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     metric_attribution_arn: "Arn"
    #   }
    # @return [Types::CreateMetricAttributionResponse]
    def create_metric_attribution(params = {}, options = {})
      request = build_request(:create_metric_attribution, params)
      request.send_request(options)
    end

    # <p>Creates a recommender with the recipe (a Domain dataset group use case) you specify. 
    #       You create recommenders for a Domain dataset group and specify the recommender's Amazon Resource Name (ARN) when you make a
    #       <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_RS_GetRecommendations.html">GetRecommendations</a>
    #       request.
    #      </p>
    #          <p>
    #             <b>Minimum recommendation requests per second</b>
    #          </p>
    #          <important>
    #             <p>A high <code>minRecommendationRequestsPerSecond</code> will increase your bill. We recommend starting with 1 for <code>minRecommendationRequestsPerSecond</code> (the default). Track
    #         your usage using Amazon CloudWatch metrics, and increase the <code>minRecommendationRequestsPerSecond</code>
    #         as necessary.</p>
    #          </important>
    #          <p>When you create a recommender, you can configure the recommender's minimum recommendation requests per second. The minimum recommendation requests per second
    #       (<code>minRecommendationRequestsPerSecond</code>) specifies the baseline recommendation request throughput provisioned by
    #       Amazon Personalize. The default minRecommendationRequestsPerSecond is <code>1</code>. A recommendation request is a single <code>GetRecommendations</code> operation.
    #       Request throughput is measured in requests per second and Amazon Personalize uses your requests per second to derive
    #       your requests per hour and the price of your recommender usage.
    #     </p>
    #          <p>
    #       If your requests per second increases beyond
    #       <code>minRecommendationRequestsPerSecond</code>, Amazon Personalize auto-scales the provisioned capacity up and down,
    #       but never below <code>minRecommendationRequestsPerSecond</code>.
    #       There's a short time delay while the capacity is increased that might cause loss of
    #       requests.</p>
    #          <p>
    #       Your bill is the greater of either the minimum requests per hour (based on minRecommendationRequestsPerSecond)
    #       or the actual number of requests. The actual request throughput used is calculated as the average requests/second within a one-hour window.
    #       
    #       We recommend starting with the default <code>minRecommendationRequestsPerSecond</code>, track
    #       your usage using Amazon CloudWatch metrics, and then increase the <code>minRecommendationRequestsPerSecond</code>
    #       as necessary.
    #     </p>
    #          <p>
    #             <b>Status</b>
    #          </p>
    #          <p>A recommender can be in one of the following states:</p>
    #          <ul>
    #             <li>
    #                <p>CREATE PENDING > CREATE IN_PROGRESS > ACTIVE -or- CREATE FAILED</p>
    #             </li>
    #             <li>
    #                <p>STOP PENDING > STOP IN_PROGRESS > INACTIVE > START PENDING > START IN_PROGRESS > ACTIVE</p>
    #             </li>
    #             <li>
    #                <p>DELETE PENDING > DELETE IN_PROGRESS</p>
    #             </li>
    #          </ul>
    #          <p>To get the recommender status, call <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeRecommender.html">DescribeRecommender</a>.</p>
    #          <note>
    #             <p>Wait until the <code>status</code> of the recommender
    #         is <code>ACTIVE</code> before asking the recommender for recommendations.</p>
    #          </note>
    #          <p class="title">
    #             <b>Related APIs</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_ListRecommenders.html">ListRecommenders</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeRecommender.html">DescribeRecommender</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_UpdateRecommender.html">UpdateRecommender</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_DeleteRecommender.html">DeleteRecommender</a>
    #                </p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::CreateRecommenderRequest] params
    # @option params [String] :name
    #   <p>The name of the recommender.</p>
    # @option params [String] :dataset_group_arn
    #   <p>The Amazon Resource Name (ARN) of the destination domain dataset group for the recommender.</p>
    # @option params [String] :recipe_arn
    #   <p>The Amazon Resource Name (ARN) of the recipe that the recommender will use. For a recommender, a recipe is a Domain dataset group
    #         use case. Only Domain dataset group use cases can be used to create a recommender. For information about use cases see <a href="https://docs.aws.amazon.com/personalize/latest/dg/domain-use-cases.html">Choosing recommender use cases</a>.
    #       </p>
    # @option params [Types::RecommenderConfig] :recommender_config
    #   <p>The configuration details of the recommender.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of <a href="https://docs.aws.amazon.com/personalize/latest/dg/tagging-resources.html">tags</a> to apply to the recommender.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "Name", # required
    #     dataset_group_arn: "Arn", # required
    #     recipe_arn: "Arn", # required
    #     recommender_config: {
    #       item_exploration_config: {
    #         "ParameterName" => "ParameterValue"
    #       },
    #       min_recommendation_requests_per_second: 1,
    #       training_data_config: {
    #         excluded_dataset_columns: {
    #           "DatasetType" => ["ColumnName"]
    #         }
    #       },
    #       enable_metadata_with_recommendations: false
    #     },
    #     tags: [
    #       {
    #         tag_key: "TagKey", # required
    #         tag_value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_recommender(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     recommender_arn: "Arn"
    #   }
    # @return [Types::CreateRecommenderResponse]
    def create_recommender(params = {}, options = {})
      request = build_request(:create_recommender, params)
      request.send_request(options)
    end

    # <p>Creates an Amazon Personalize schema from the specified schema string. The schema you create
    #       must be in Avro JSON format.</p>
    #          <p>Amazon Personalize recognizes three schema variants. Each schema is associated with a dataset
    #       type and has a set of required field and keywords. If you are creating a schema for a dataset in a Domain dataset group, you
    #     provide the domain of the Domain dataset group.
    #     You specify a schema when you call <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_CreateDataset.html">CreateDataset</a>.</p>
    #          <p class="title">
    #             <b>Related APIs</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_ListSchemas.html">ListSchemas</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeSchema.html">DescribeSchema</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_DeleteSchema.html">DeleteSchema</a>
    #                </p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::CreateSchemaRequest] params
    # @option params [String] :name
    #   <p>The name for the schema.</p>
    # @option params [String] :schema
    #   <p>A schema in Avro JSON format.</p>
    # @option params [String] :domain
    #   <p>The domain for the schema. If you are creating a schema for a dataset in a Domain dataset group, specify
    #       the domain you chose when you created the Domain dataset group.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "Name", # required
    #     schema: "AvroSchema", # required
    #     domain: "ECOMMERCE" # One of: ["ECOMMERCE", "VIDEO_ON_DEMAND"]
    #   }
    #   options = {}
    #   response = client.create_schema(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     schema_arn: "Arn"
    #   }
    # @return [Types::CreateSchemaResponse]
    def create_schema(params = {}, options = {})
      request = build_request(:create_schema, params)
      request.send_request(options)
    end

    # <important>
    #             <p>By default, all new solutions use automatic training. With automatic training, you incur training costs while
    #            your solution is active. To avoid unnecessary costs, when you are finished you can 
    #            <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_UpdateSolution.html">update the solution</a> to turn off automatic training. 
    #            For information about training
    #   costs, see <a href="https://aws.amazon.com/personalize/pricing/">Amazon Personalize pricing</a>.</p>
    #          </important>
    #          <p>Creates the configuration for training a model (creating a solution version). This configuration
    #       includes the recipe to use for model training and optional training configuration, such as columns to use
    #       in training and feature transformation parameters. For more information about configuring a solution, see <a href="https://docs.aws.amazon.com/personalize/latest/dg/customizing-solution-config.html">Creating and configuring a solution</a>.
    #     </p>
    #          <p>
    #       By default, new solutions use automatic training to create solution versions every 7 days. You can change the training frequency.
    #       Automatic solution version creation starts within one hour after the solution is ACTIVE. If you manually create a solution version within
    #       the hour, the solution skips the first automatic training. For more information,
    #         see <a href="https://docs.aws.amazon.com/personalize/latest/dg/solution-config-auto-training.html">Configuring automatic training</a>.</p>
    #          <p>
    #       To turn off automatic training, set <code>performAutoTraining</code> to false. If you turn off automatic training, you must manually create a solution version
    #       by calling the <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_CreateSolutionVersion.html">CreateSolutionVersion</a> operation.</p>
    #          <p>After training starts, you can
    #         get the solution version's Amazon Resource Name (ARN) with the <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_ListSolutionVersions.html">ListSolutionVersions</a> API operation. 
    #         To get its status, use the <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeSolutionVersion.html">DescribeSolutionVersion</a>.
    #       </p>
    #          <p>After training completes you can evaluate model accuracy by calling
    #       <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_GetSolutionMetrics.html">GetSolutionMetrics</a>. When you are satisfied with the solution version, you
    #       deploy it using <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_CreateCampaign.html">CreateCampaign</a>. The campaign provides recommendations
    #       to a client through the
    #       <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_RS_GetRecommendations.html">GetRecommendations</a> API.</p>
    #          <note>
    #             <p>Amazon Personalize doesn't support configuring the <code>hpoObjective</code> 
    #         for solution hyperparameter optimization at this time.</p>
    #          </note>
    #          <p>
    #             <b>Status</b>
    #          </p>
    #          <p>A solution can be in one of the following states:</p>
    #          <ul>
    #             <li>
    #                <p>CREATE PENDING > CREATE IN_PROGRESS > ACTIVE -or- CREATE FAILED</p>
    #             </li>
    #             <li>
    #                <p>DELETE PENDING > DELETE IN_PROGRESS</p>
    #             </li>
    #          </ul>
    #          <p>To get the status of the solution, call <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeSolution.html">DescribeSolution</a>. If you use
    #       manual training, the status must be ACTIVE before you call <code>CreateSolutionVersion</code>.</p>
    #          <p class="title">
    #             <b>Related APIs</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_UpdateSolution.html">UpdateSolution</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_ListSolutions.html">ListSolutions</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_CreateSolutionVersion.html">CreateSolutionVersion</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeSolution.html">DescribeSolution</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_DeleteSolution.html">DeleteSolution</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_ListSolutionVersions.html">ListSolutionVersions</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeSolutionVersion.html">DescribeSolutionVersion</a>
    #                </p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::CreateSolutionRequest] params
    # @option params [String] :name
    #   <p>The name for the solution.</p>
    # @option params [Boolean] :perform_hpo
    #   <p>Whether to perform hyperparameter optimization (HPO) on the specified or selected recipe.
    #         The default is <code>false</code>.</p>
    #            <p>When performing AutoML, this parameter is always <code>true</code> and you
    #         should not set it to <code>false</code>.</p>
    # @option params [Boolean] :perform_auto_ml
    #   <important>
    #               <p>We don't recommend enabling automated machine learning. Instead, match your use case to the available Amazon Personalize 
    #           recipes. For more information, see <a href="https://docs.aws.amazon.com/personalize/latest/dg/working-with-predefined-recipes.html">Choosing a recipe</a>.</p>
    #            </important>
    #            <p>Whether to perform automated machine learning (AutoML). The default is <code>false</code>.
    #         For this case, you must specify <code>recipeArn</code>.</p>
    #            <p>When set to <code>true</code>, Amazon Personalize analyzes your training data and selects
    #         the optimal USER_PERSONALIZATION recipe and hyperparameters. In this case, you must omit
    #         <code>recipeArn</code>. Amazon Personalize determines the optimal recipe by running tests with
    #         different values for the hyperparameters.
    #         AutoML lengthens the training process as compared to selecting a specific recipe.</p>
    # @option params [Boolean] :perform_auto_training
    #   <p>Whether the solution uses automatic training to create new solution versions (trained models). The default is
    #           <code>True</code> and the solution automatically creates new solution versions every 7 days. You can change the training
    #         frequency by specifying a <code>schedulingExpression</code> in the <code>AutoTrainingConfig</code> as part of solution
    #         configuration. For more information about automatic training,
    #         see <a href="https://docs.aws.amazon.com/personalize/latest/dg/solution-config-auto-training.html">Configuring automatic training</a>.</p>
    #            <p>
    #         Automatic solution version creation starts within one hour after the solution is ACTIVE. If you manually create a solution version within
    #         the hour, the solution skips the first automatic training.
    #       </p>
    #            <p>
    #         After training starts, you can
    #         get the solution version's Amazon Resource Name (ARN) with the <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_ListSolutionVersions.html">ListSolutionVersions</a> API operation. 
    #         To get its status, use the <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeSolutionVersion.html">DescribeSolutionVersion</a>.
    #       </p>
    # @option params [String] :recipe_arn
    #   <p>The Amazon Resource Name (ARN) of the recipe to use for model training. This is required when
    #         <code>performAutoML</code> is false. For information about different Amazon Personalize recipes and their ARNs, 
    #         see <a href="https://docs.aws.amazon.com/personalize/latest/dg/working-with-predefined-recipes.html">Choosing a recipe</a>.
    #       </p>
    # @option params [String] :dataset_group_arn
    #   <p>The Amazon Resource Name (ARN) of the dataset group that provides the training data.</p>
    # @option params [String] :event_type
    #   <p>When your have multiple event types (using an <code>EVENT_TYPE</code> schema field),
    #         this parameter specifies which event type (for example, 'click' or 'like') is used for
    #         training the model.</p>
    #            <p>If you do not provide an <code>eventType</code>, Amazon Personalize will use all interactions for training with
    #          equal weight regardless of type.</p>
    # @option params [Types::SolutionConfig] :solution_config
    #   <p>The configuration properties for the solution. When <code>performAutoML</code> is set to
    #         true, Amazon Personalize only evaluates the <code>autoMLConfig</code> section
    #         of the solution configuration.</p>
    #            <note>
    #               <p>Amazon Personalize doesn't support configuring the <code>hpoObjective</code> 
    #           at this time.</p>
    #            </note>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of <a href="https://docs.aws.amazon.com/personalize/latest/dg/tagging-resources.html">tags</a> to apply to the solution.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "Name", # required
    #     perform_hpo: false,
    #     perform_auto_ml: false,
    #     perform_auto_training: false,
    #     recipe_arn: "Arn",
    #     dataset_group_arn: "Arn", # required
    #     event_type: "EventType",
    #     solution_config: {
    #       event_value_threshold: "EventValueThreshold",
    #       hpo_config: {
    #         hpo_objective: {
    #           type: "HPOObjectiveType",
    #           metric_name: "MetricName",
    #           metric_regex: "MetricRegex"
    #         },
    #         hpo_resource_config: {
    #           max_number_of_training_jobs: "HPOResource",
    #           max_parallel_training_jobs: "HPOResource"
    #         },
    #         algorithm_hyper_parameter_ranges: {
    #           integer_hyper_parameter_ranges: [
    #             {
    #               name: "ParameterName",
    #               min_value: 1,
    #               max_value: 1
    #             }
    #           ],
    #           continuous_hyper_parameter_ranges: [
    #             {
    #               name: "ParameterName",
    #               min_value: 1.0,
    #               max_value: 1.0
    #             }
    #           ],
    #           categorical_hyper_parameter_ranges: [
    #             {
    #               name: "ParameterName",
    #               values: ["CategoricalValue"]
    #             }
    #           ]
    #         }
    #       },
    #       algorithm_hyper_parameters: {
    #         "ParameterName" => "ParameterValue"
    #       },
    #       feature_transformation_parameters: {
    #         "ParameterName" => "ParameterValue"
    #       },
    #       auto_ml_config: {
    #         metric_name: "MetricName",
    #         recipe_list: ["Arn"]
    #       },
    #       events_config: {
    #         event_parameters_list: [
    #           {
    #             event_type: "EventType",
    #             event_value_threshold: 1.0,
    #             weight: 1.0
    #           }
    #         ]
    #       },
    #       optimization_objective: {
    #         item_attribute: "ItemAttribute",
    #         objective_sensitivity: "LOW" # One of: ["LOW", "MEDIUM", "HIGH", "OFF"]
    #       },
    #       training_data_config: {
    #         excluded_dataset_columns: {
    #           "DatasetType" => ["ColumnName"]
    #         }
    #       },
    #       auto_training_config: {
    #         scheduling_expression: "SchedulingExpression"
    #       }
    #     },
    #     tags: [
    #       {
    #         tag_key: "TagKey", # required
    #         tag_value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_solution(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     solution_arn: "Arn"
    #   }
    # @return [Types::CreateSolutionResponse]
    def create_solution(params = {}, options = {})
      request = build_request(:create_solution, params)
      request.send_request(options)
    end

    # <p>Trains or retrains an active solution in a Custom dataset group. A solution is created using the <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_CreateSolution.html">CreateSolution</a>
    #       operation and must be in the ACTIVE state before calling
    #         <code>CreateSolutionVersion</code>. A new version of the solution is created every time you
    #       call this operation.</p>
    #          <p>
    #             <b>Status</b>
    #          </p>
    #          <p>A solution version can be in one of the following states:</p>
    #          <ul>
    #             <li>
    #                <p>CREATE PENDING</p>
    #             </li>
    #             <li>
    #                <p>CREATE IN_PROGRESS</p>
    #             </li>
    #             <li>
    #                <p>ACTIVE</p>
    #             </li>
    #             <li>
    #                <p>CREATE FAILED</p>
    #             </li>
    #             <li>
    #                <p>CREATE STOPPING</p>
    #             </li>
    #             <li>
    #                <p>CREATE STOPPED</p>
    #             </li>
    #          </ul>
    #          <p>To get the status of the version, call <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeSolutionVersion.html">DescribeSolutionVersion</a>. Wait
    #       until the status shows as ACTIVE before calling <code>CreateCampaign</code>.</p>
    #          <p>If the status shows as CREATE FAILED, the response includes a <code>failureReason</code>
    #       key, which describes why the job failed.</p>
    #          <p class="title">
    #             <b>Related APIs</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_ListSolutionVersions.html">ListSolutionVersions</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeSolutionVersion.html">DescribeSolutionVersion</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_ListSolutions.html">ListSolutions</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_CreateSolution.html">CreateSolution</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeSolution.html">DescribeSolution</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_DeleteSolution.html">DeleteSolution</a>
    #                </p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::CreateSolutionVersionRequest] params
    # @option params [String] :name
    #   <p>The name of the solution version.</p>
    # @option params [String] :solution_arn
    #   <p>The Amazon Resource Name (ARN) of the solution containing the training configuration
    #         information.</p>
    # @option params [String] :training_mode
    #   <p>The scope of training to be performed when creating the solution version. 
    #         The default is <code>FULL</code>. This creates a completely new model based on the entirety 
    #         of the training data from the datasets in your dataset group.
    #       </p>
    #            <p>If you use
    #         <a href="https://docs.aws.amazon.com/personalize/latest/dg/native-recipe-new-item-USER_PERSONALIZATION.html">User-Personalization</a>,
    #         you can specify a training mode of <code>UPDATE</code>. This updates the model to consider new items for recommendations. It is not a full
    #           retraining. You should still complete a full retraining weekly.
    #           If you specify <code>UPDATE</code>, Amazon Personalize will stop automatic updates for the solution version. To resume updates, create a new solution with training mode set to <code>FULL</code>
    #           and deploy it in a campaign. 
    #           For more information about automatic updates, see 
    #           <a href="https://docs.aws.amazon.com/personalize/latest/dg/use-case-recipe-features.html#maintaining-with-automatic-updates">Automatic updates</a>.
    #         </p>
    #            <p>The <code>UPDATE</code> option can only be used when you already have an active solution
    #           version created from the input solution using the <code>FULL</code> option and the input
    #           solution was trained with the 
    #           <a href="https://docs.aws.amazon.com/personalize/latest/dg/native-recipe-new-item-USER_PERSONALIZATION.html">User-Personalization</a>
    #           recipe or the legacy
    #           <a href="https://docs.aws.amazon.com/personalize/latest/dg/native-recipe-hrnn-coldstart.html">HRNN-Coldstart</a> recipe.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of <a href="https://docs.aws.amazon.com/personalize/latest/dg/tagging-resources.html">tags</a> to apply to the solution version.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "Name",
    #     solution_arn: "Arn", # required
    #     training_mode: "FULL" # One of: ["FULL", "UPDATE", "AUTOTRAIN"],
    #     tags: [
    #       {
    #         tag_key: "TagKey", # required
    #         tag_value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_solution_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     solution_version_arn: "Arn"
    #   }
    # @return [Types::CreateSolutionVersionResponse]
    def create_solution_version(params = {}, options = {})
      request = build_request(:create_solution_version, params)
      request.send_request(options)
    end

    # <p>Removes a campaign by deleting the solution deployment. The solution that
    #       the campaign is based on is not deleted and can be redeployed when needed. A deleted campaign can no
    #       longer be specified in a
    #       <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_RS_GetRecommendations.html">GetRecommendations</a>
    #       request.
    #       For information on creating campaigns, see <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_CreateCampaign.html">CreateCampaign</a>.</p>
    # @param [Hash, Types::DeleteCampaignRequest] params
    # @option params [String] :campaign_arn
    #   <p>The Amazon Resource Name (ARN) of the campaign to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     campaign_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.delete_campaign(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_campaign(params = {}, options = {})
      request = build_request(:delete_campaign, params)
      request.send_request(options)
    end

    # <p>Deletes a dataset. You can't delete a dataset if an associated
    #         <code>DatasetImportJob</code> or <code>SolutionVersion</code> is in the
    #       CREATE PENDING or IN PROGRESS state. For more information about deleting datasets,
    #       see <a href="https://docs.aws.amazon.com/personalize/latest/dg/delete-dataset.html">Deleting a dataset</a>.
    #     </p>
    # @param [Hash, Types::DeleteDatasetRequest] params
    # @option params [String] :dataset_arn
    #   <p>The Amazon Resource Name (ARN) of the dataset to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     dataset_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.delete_dataset(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_dataset(params = {}, options = {})
      request = build_request(:delete_dataset, params)
      request.send_request(options)
    end

    # <p>Deletes a dataset group. Before you delete a dataset group, you must
    #       delete the following:</p>
    #          <ul>
    #             <li>
    #                <p>All associated event trackers.</p>
    #             </li>
    #             <li>
    #                <p>All associated solutions.</p>
    #             </li>
    #             <li>
    #                <p>All datasets in the dataset group.</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::DeleteDatasetGroupRequest] params
    # @option params [String] :dataset_group_arn
    #   <p>The ARN of the dataset group to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     dataset_group_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.delete_dataset_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_dataset_group(params = {}, options = {})
      request = build_request(:delete_dataset_group, params)
      request.send_request(options)
    end

    # <p>Deletes the event tracker. Does not delete the dataset from
    #         the dataset group. For more
    #         information on event trackers, see <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_CreateEventTracker.html">CreateEventTracker</a>.</p>
    # @param [Hash, Types::DeleteEventTrackerRequest] params
    # @option params [String] :event_tracker_arn
    #   <p>The Amazon Resource Name (ARN) of the event tracker to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     event_tracker_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.delete_event_tracker(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_event_tracker(params = {}, options = {})
      request = build_request(:delete_event_tracker, params)
      request.send_request(options)
    end

    # <p>Deletes a filter.</p>
    # @param [Hash, Types::DeleteFilterRequest] params
    # @option params [String] :filter_arn
    #   <p>The ARN of the filter to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filter_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.delete_filter(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_filter(params = {}, options = {})
      request = build_request(:delete_filter, params)
      request.send_request(options)
    end

    # <p>Deletes a metric attribution.</p>
    # @param [Hash, Types::DeleteMetricAttributionRequest] params
    # @option params [String] :metric_attribution_arn
    #   <p>The metric attribution's Amazon Resource Name (ARN).</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     metric_attribution_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.delete_metric_attribution(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_metric_attribution(params = {}, options = {})
      request = build_request(:delete_metric_attribution, params)
      request.send_request(options)
    end

    # <p>Deactivates and removes a recommender. A deleted recommender can no longer be specified in a <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_RS_GetRecommendations.html">GetRecommendations</a>
    #     request.</p>
    # @param [Hash, Types::DeleteRecommenderRequest] params
    # @option params [String] :recommender_arn
    #   <p>The Amazon Resource Name (ARN) of the recommender to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     recommender_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.delete_recommender(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_recommender(params = {}, options = {})
      request = build_request(:delete_recommender, params)
      request.send_request(options)
    end

    # <p>Deletes a schema. Before deleting a schema, you must delete all
    #       datasets referencing the schema. For more information on schemas, see
    #       <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_CreateSchema.html">CreateSchema</a>.</p>
    # @param [Hash, Types::DeleteSchemaRequest] params
    # @option params [String] :schema_arn
    #   <p>The Amazon Resource Name (ARN) of the schema to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     schema_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.delete_schema(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_schema(params = {}, options = {})
      request = build_request(:delete_schema, params)
      request.send_request(options)
    end

    # <p>Deletes all versions of a solution and the <code>Solution</code> object itself.
    #       Before deleting a solution, you must delete all campaigns based on
    #       the solution. To determine what campaigns are using the solution, call
    #       <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_ListCampaigns.html">ListCampaigns</a> and supply the Amazon Resource Name (ARN) of the solution.
    #       You can't delete a solution if an associated <code>SolutionVersion</code> is in the
    #       CREATE PENDING or IN PROGRESS state.
    #       For more information on solutions, see <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_CreateSolution.html">CreateSolution</a>.</p>
    # @param [Hash, Types::DeleteSolutionRequest] params
    # @option params [String] :solution_arn
    #   <p>The ARN of the solution to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     solution_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.delete_solution(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_solution(params = {}, options = {})
      request = build_request(:delete_solution, params)
      request.send_request(options)
    end

    # <p>Describes the given algorithm.</p>
    # @param [Hash, Types::DescribeAlgorithmRequest] params
    # @option params [String] :algorithm_arn
    #   <p>The Amazon Resource Name (ARN) of the algorithm to describe.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     algorithm_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.describe_algorithm(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     algorithm: {
    #       name: "Name",
    #       algorithm_arn: "Arn",
    #       algorithm_image: {
    #         name: "Name",
    #         docker_uri: "DockerURI", # required
    #       },
    #       default_hyper_parameters: {
    #         "ParameterName" => "ParameterValue"
    #       },
    #       default_hyper_parameter_ranges: {
    #         integer_hyper_parameter_ranges: [
    #           {
    #             name: "ParameterName",
    #             min_value: 1,
    #             max_value: 1,
    #             is_tunable: false
    #           }
    #         ],
    #         continuous_hyper_parameter_ranges: [
    #           {
    #             name: "ParameterName",
    #             min_value: 1.0,
    #             max_value: 1.0,
    #             is_tunable: false
    #           }
    #         ],
    #         categorical_hyper_parameter_ranges: [
    #           {
    #             name: "ParameterName",
    #             values: ["CategoricalValue"],
    #             is_tunable: false
    #           }
    #         ]
    #       },
    #       default_resource_config: {
    #         "ParameterName" => "ParameterValue"
    #       },
    #       training_input_mode: "TrainingInputMode",
    #       role_arn: "Arn",
    #       creation_date_time: Time.now,
    #       last_updated_date_time: Time.now
    #     }
    #   }
    # @return [Types::DescribeAlgorithmResponse]
    def describe_algorithm(params = {}, options = {})
      request = build_request(:describe_algorithm, params)
      request.send_request(options)
    end

    # <p>Gets the properties of a batch inference job including name, Amazon Resource Name (ARN),
    #       status, input and output configurations, and the ARN of the solution version used to generate
    #       the recommendations.</p>
    # @param [Hash, Types::DescribeBatchInferenceJobRequest] params
    # @option params [String] :batch_inference_job_arn
    #   <p>The ARN of the batch inference job to describe.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     batch_inference_job_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.describe_batch_inference_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     batch_inference_job: {
    #       job_name: "Name",
    #       batch_inference_job_arn: "Arn",
    #       filter_arn: "Arn",
    #       failure_reason: "FailureReason",
    #       solution_version_arn: "Arn",
    #       num_results: 1,
    #       job_input: {
    #         s3_data_source: { # required
    #           path: "S3Location", # required
    #           kms_key_arn: "KmsKeyArn"
    #         }
    #       },
    #       job_output: {
    #         s3_data_destination: { # required
    #           path: "S3Location", # required
    #           kms_key_arn: "KmsKeyArn"
    #         }
    #       },
    #       batch_inference_job_config: {
    #         item_exploration_config: {
    #           "ParameterName" => "ParameterValue"
    #         }
    #       },
    #       role_arn: "RoleArn",
    #       batch_inference_job_mode: "BATCH_INFERENCE" # One of: ["BATCH_INFERENCE", "THEME_GENERATION"],
    #       theme_generation_config: {
    #         fields_for_theme_generation: { # required
    #           item_name: "ColumnName", # required
    #         }
    #       },
    #       status: "Status",
    #       creation_date_time: Time.now,
    #       last_updated_date_time: Time.now
    #     }
    #   }
    # @return [Types::DescribeBatchInferenceJobResponse]
    def describe_batch_inference_job(params = {}, options = {})
      request = build_request(:describe_batch_inference_job, params)
      request.send_request(options)
    end

    # <p>Gets the properties of a batch segment job including name, Amazon Resource Name (ARN),
    #       status, input and output configurations, and the ARN of the solution version used to generate
    #       segments.</p>
    # @param [Hash, Types::DescribeBatchSegmentJobRequest] params
    # @option params [String] :batch_segment_job_arn
    #   <p>The ARN of the batch segment job to describe.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     batch_segment_job_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.describe_batch_segment_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     batch_segment_job: {
    #       job_name: "Name",
    #       batch_segment_job_arn: "Arn",
    #       filter_arn: "Arn",
    #       failure_reason: "FailureReason",
    #       solution_version_arn: "Arn",
    #       num_results: 1,
    #       job_input: {
    #         s3_data_source: { # required
    #           path: "S3Location", # required
    #           kms_key_arn: "KmsKeyArn"
    #         }
    #       },
    #       job_output: {
    #         s3_data_destination: { # required
    #           path: "S3Location", # required
    #           kms_key_arn: "KmsKeyArn"
    #         }
    #       },
    #       role_arn: "RoleArn",
    #       status: "Status",
    #       creation_date_time: Time.now,
    #       last_updated_date_time: Time.now
    #     }
    #   }
    # @return [Types::DescribeBatchSegmentJobResponse]
    def describe_batch_segment_job(params = {}, options = {})
      request = build_request(:describe_batch_segment_job, params)
      request.send_request(options)
    end

    # <p>Describes the given campaign, including its status.</p>
    #          <p>A campaign can be in one of the following states:</p>
    #          <ul>
    #             <li>
    #                <p>CREATE PENDING > CREATE IN_PROGRESS > ACTIVE -or- CREATE FAILED</p>
    #             </li>
    #             <li>
    #                <p>DELETE PENDING > DELETE IN_PROGRESS</p>
    #             </li>
    #          </ul>
    #          <p>When the <code>status</code> is <code>CREATE FAILED</code>, the response includes the
    #       <code>failureReason</code> key, which describes why.</p>
    #          <p>For more information on campaigns, see <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_CreateCampaign.html">CreateCampaign</a>.</p>
    # @param [Hash, Types::DescribeCampaignRequest] params
    # @option params [String] :campaign_arn
    #   <p>The Amazon Resource Name (ARN) of the campaign.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     campaign_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.describe_campaign(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     campaign: {
    #       name: "Name",
    #       campaign_arn: "Arn",
    #       solution_version_arn: "Arn",
    #       min_provisioned_tps: 1,
    #       campaign_config: {
    #         item_exploration_config: {
    #           "ParameterName" => "ParameterValue"
    #         },
    #         enable_metadata_with_recommendations: false,
    #         sync_with_latest_solution_version: false
    #       },
    #       status: "Status",
    #       failure_reason: "FailureReason",
    #       creation_date_time: Time.now,
    #       last_updated_date_time: Time.now,
    #       latest_campaign_update: {
    #         solution_version_arn: "Arn",
    #         min_provisioned_tps: 1,
    #         campaign_config: {
    #           item_exploration_config: {
    #             "ParameterName" => "ParameterValue"
    #           },
    #           enable_metadata_with_recommendations: false,
    #           sync_with_latest_solution_version: false
    #         },
    #         status: "Status",
    #         failure_reason: "FailureReason",
    #         creation_date_time: Time.now,
    #         last_updated_date_time: Time.now
    #       }
    #     }
    #   }
    # @return [Types::DescribeCampaignResponse]
    def describe_campaign(params = {}, options = {})
      request = build_request(:describe_campaign, params)
      request.send_request(options)
    end

    # <p>Describes the data deletion job created by <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_CreateDataDeletionJob.html">CreateDataDeletionJob</a>, including the job status.</p>
    # @param [Hash, Types::DescribeDataDeletionJobRequest] params
    # @option params [String] :data_deletion_job_arn
    #   <p>The Amazon Resource Name (ARN) of the data deletion job.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     data_deletion_job_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.describe_data_deletion_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     data_deletion_job: {
    #       job_name: "Name",
    #       data_deletion_job_arn: "Arn",
    #       dataset_group_arn: "Arn",
    #       data_source: {
    #         data_location: "S3Location"
    #       },
    #       role_arn: "RoleArn",
    #       status: "Status",
    #       num_deleted: 1,
    #       creation_date_time: Time.now,
    #       last_updated_date_time: Time.now,
    #       failure_reason: "FailureReason"
    #     }
    #   }
    # @return [Types::DescribeDataDeletionJobResponse]
    def describe_data_deletion_job(params = {}, options = {})
      request = build_request(:describe_data_deletion_job, params)
      request.send_request(options)
    end

    # <p>Describes the given dataset. For more information on datasets, see
    #         <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_CreateDataset.html">CreateDataset</a>.</p>
    # @param [Hash, Types::DescribeDatasetRequest] params
    # @option params [String] :dataset_arn
    #   <p>The Amazon Resource Name (ARN) of the dataset to describe.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     dataset_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.describe_dataset(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     dataset: {
    #       name: "Name",
    #       dataset_arn: "Arn",
    #       dataset_group_arn: "Arn",
    #       dataset_type: "DatasetType",
    #       schema_arn: "Arn",
    #       status: "Status",
    #       creation_date_time: Time.now,
    #       last_updated_date_time: Time.now,
    #       latest_dataset_update: {
    #         schema_arn: "Arn",
    #         status: "Status",
    #         failure_reason: "FailureReason",
    #         creation_date_time: Time.now,
    #         last_updated_date_time: Time.now
    #       },
    #       tracking_id: "TrackingId"
    #     }
    #   }
    # @return [Types::DescribeDatasetResponse]
    def describe_dataset(params = {}, options = {})
      request = build_request(:describe_dataset, params)
      request.send_request(options)
    end

    # <p>Describes the dataset export job created by <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_CreateDatasetExportJob.html">CreateDatasetExportJob</a>, including the export job status.</p>
    # @param [Hash, Types::DescribeDatasetExportJobRequest] params
    # @option params [String] :dataset_export_job_arn
    #   <p>The Amazon Resource Name (ARN) of the dataset export job to
    #         describe.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     dataset_export_job_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.describe_dataset_export_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     dataset_export_job: {
    #       job_name: "Name",
    #       dataset_export_job_arn: "Arn",
    #       dataset_arn: "Arn",
    #       ingestion_mode: "BULK" # One of: ["BULK", "PUT", "ALL"],
    #       role_arn: "Arn",
    #       status: "Status",
    #       job_output: {
    #         s3_data_destination: { # required
    #           path: "S3Location", # required
    #           kms_key_arn: "KmsKeyArn"
    #         }
    #       },
    #       creation_date_time: Time.now,
    #       last_updated_date_time: Time.now,
    #       failure_reason: "FailureReason"
    #     }
    #   }
    # @return [Types::DescribeDatasetExportJobResponse]
    def describe_dataset_export_job(params = {}, options = {})
      request = build_request(:describe_dataset_export_job, params)
      request.send_request(options)
    end

    # <p>Describes the given dataset group. For more information on dataset
    #       groups, see <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_CreateDatasetGroup.html">CreateDatasetGroup</a>.</p>
    # @param [Hash, Types::DescribeDatasetGroupRequest] params
    # @option params [String] :dataset_group_arn
    #   <p>The Amazon Resource Name (ARN) of the dataset group to
    #         describe.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     dataset_group_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.describe_dataset_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     dataset_group: {
    #       name: "Name",
    #       dataset_group_arn: "Arn",
    #       status: "Status",
    #       role_arn: "RoleArn",
    #       kms_key_arn: "KmsKeyArn",
    #       creation_date_time: Time.now,
    #       last_updated_date_time: Time.now,
    #       failure_reason: "FailureReason",
    #       domain: "ECOMMERCE" # One of: ["ECOMMERCE", "VIDEO_ON_DEMAND"]
    #     }
    #   }
    # @return [Types::DescribeDatasetGroupResponse]
    def describe_dataset_group(params = {}, options = {})
      request = build_request(:describe_dataset_group, params)
      request.send_request(options)
    end

    # <p>Describes the dataset import job created by <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_CreateDatasetImportJob.html">CreateDatasetImportJob</a>, including the import job status.</p>
    # @param [Hash, Types::DescribeDatasetImportJobRequest] params
    # @option params [String] :dataset_import_job_arn
    #   <p>The Amazon Resource Name (ARN) of the dataset import job to
    #         describe.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     dataset_import_job_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.describe_dataset_import_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     dataset_import_job: {
    #       job_name: "Name",
    #       dataset_import_job_arn: "Arn",
    #       dataset_arn: "Arn",
    #       data_source: {
    #         data_location: "S3Location"
    #       },
    #       role_arn: "Arn",
    #       status: "Status",
    #       creation_date_time: Time.now,
    #       last_updated_date_time: Time.now,
    #       failure_reason: "FailureReason",
    #       import_mode: "FULL" # One of: ["FULL", "INCREMENTAL"],
    #       publish_attribution_metrics_to_s3: false
    #     }
    #   }
    # @return [Types::DescribeDatasetImportJobResponse]
    def describe_dataset_import_job(params = {}, options = {})
      request = build_request(:describe_dataset_import_job, params)
      request.send_request(options)
    end

    # <p>Describes an event tracker. The response includes the <code>trackingId</code> and
    #       <code>status</code> of the event tracker.
    #       For more information on event trackers, see <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_CreateEventTracker.html">CreateEventTracker</a>.</p>
    # @param [Hash, Types::DescribeEventTrackerRequest] params
    # @option params [String] :event_tracker_arn
    #   <p>The Amazon Resource Name (ARN) of the event tracker to describe.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     event_tracker_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.describe_event_tracker(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     event_tracker: {
    #       name: "Name",
    #       event_tracker_arn: "Arn",
    #       account_id: "AccountId",
    #       tracking_id: "TrackingId",
    #       dataset_group_arn: "Arn",
    #       status: "Status",
    #       creation_date_time: Time.now,
    #       last_updated_date_time: Time.now
    #     }
    #   }
    # @return [Types::DescribeEventTrackerResponse]
    def describe_event_tracker(params = {}, options = {})
      request = build_request(:describe_event_tracker, params)
      request.send_request(options)
    end

    # <p>Describes the given feature transformation.</p>
    # @param [Hash, Types::DescribeFeatureTransformationRequest] params
    # @option params [String] :feature_transformation_arn
    #   <p>The Amazon Resource Name (ARN) of the feature transformation to describe.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     feature_transformation_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.describe_feature_transformation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     feature_transformation: {
    #       name: "Name",
    #       feature_transformation_arn: "Arn",
    #       default_parameters: {
    #         "ParameterName" => "ParameterValue"
    #       },
    #       creation_date_time: Time.now,
    #       last_updated_date_time: Time.now,
    #       status: "Status"
    #     }
    #   }
    # @return [Types::DescribeFeatureTransformationResponse]
    def describe_feature_transformation(params = {}, options = {})
      request = build_request(:describe_feature_transformation, params)
      request.send_request(options)
    end

    # <p>Describes a filter's properties.</p>
    # @param [Hash, Types::DescribeFilterRequest] params
    # @option params [String] :filter_arn
    #   <p>The ARN of the filter to describe.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filter_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.describe_filter(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     filter: {
    #       name: "Name",
    #       filter_arn: "Arn",
    #       creation_date_time: Time.now,
    #       last_updated_date_time: Time.now,
    #       dataset_group_arn: "Arn",
    #       failure_reason: "FailureReason",
    #       filter_expression: "FilterExpression",
    #       status: "Status"
    #     }
    #   }
    # @return [Types::DescribeFilterResponse]
    def describe_filter(params = {}, options = {})
      request = build_request(:describe_filter, params)
      request.send_request(options)
    end

    # <p>Describes a metric attribution.</p>
    # @param [Hash, Types::DescribeMetricAttributionRequest] params
    # @option params [String] :metric_attribution_arn
    #   <p>The metric attribution's Amazon Resource Name (ARN).</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     metric_attribution_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.describe_metric_attribution(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     metric_attribution: {
    #       name: "Name",
    #       metric_attribution_arn: "Arn",
    #       dataset_group_arn: "Arn",
    #       metrics_output_config: {
    #         s3_data_destination: {
    #           path: "S3Location", # required
    #           kms_key_arn: "KmsKeyArn"
    #         },
    #         role_arn: "RoleArn", # required
    #       },
    #       status: "Status",
    #       creation_date_time: Time.now,
    #       last_updated_date_time: Time.now,
    #       failure_reason: "FailureReason"
    #     }
    #   }
    # @return [Types::DescribeMetricAttributionResponse]
    def describe_metric_attribution(params = {}, options = {})
      request = build_request(:describe_metric_attribution, params)
      request.send_request(options)
    end

    # <p>Describes a recipe.</p>
    #          <p>A recipe contains three items:</p>
    #          <ul>
    #             <li>
    #                <p>An algorithm that trains a model.</p>
    #             </li>
    #             <li>
    #                <p>Hyperparameters that govern the training.</p>
    #             </li>
    #             <li>
    #                <p>Feature transformation information for modifying the input data before training.</p>
    #             </li>
    #          </ul>
    #          <p>Amazon Personalize provides a set of predefined recipes. You specify a recipe when you create a
    #       solution with the <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_CreateSolution.html">CreateSolution</a> API.
    #       <code>CreateSolution</code> trains a model by using the algorithm
    #       in the specified recipe and a training dataset. The solution, when deployed as a campaign,
    #       can provide recommendations using the
    #       <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_RS_GetRecommendations.html">GetRecommendations</a> API.</p>
    # @param [Hash, Types::DescribeRecipeRequest] params
    # @option params [String] :recipe_arn
    #   <p>The Amazon Resource Name (ARN) of the recipe to describe.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     recipe_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.describe_recipe(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     recipe: {
    #       name: "Name",
    #       recipe_arn: "Arn",
    #       algorithm_arn: "Arn",
    #       feature_transformation_arn: "Arn",
    #       status: "Status",
    #       description: "Description",
    #       creation_date_time: Time.now,
    #       recipe_type: "RecipeType",
    #       last_updated_date_time: Time.now
    #     }
    #   }
    # @return [Types::DescribeRecipeResponse]
    def describe_recipe(params = {}, options = {})
      request = build_request(:describe_recipe, params)
      request.send_request(options)
    end

    # <p>Describes the given recommender, including its status.</p>
    #          <p>A recommender can be in one of the following states:</p>
    #          <ul>
    #             <li>
    #                <p>CREATE PENDING > CREATE IN_PROGRESS > ACTIVE -or- CREATE FAILED</p>
    #             </li>
    #             <li>
    #                <p>STOP PENDING > STOP IN_PROGRESS > INACTIVE > START PENDING > START IN_PROGRESS > ACTIVE</p>
    #             </li>
    #             <li>
    #                <p>DELETE PENDING > DELETE IN_PROGRESS</p>
    #             </li>
    #          </ul>
    #          <p>When the <code>status</code> is <code>CREATE FAILED</code>, the response includes the
    #       <code>failureReason</code> key, which describes why.</p>
    #          <p>The <code>modelMetrics</code> key is null when
    #       the recommender is being created or deleted.</p>
    #          <p>For more information on recommenders, see <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_CreateRecommender.html">CreateRecommender</a>.</p>
    # @param [Hash, Types::DescribeRecommenderRequest] params
    # @option params [String] :recommender_arn
    #   <p>The Amazon Resource Name (ARN) of the recommender to describe.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     recommender_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.describe_recommender(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     recommender: {
    #       recommender_arn: "Arn",
    #       dataset_group_arn: "Arn",
    #       name: "Name",
    #       recipe_arn: "Arn",
    #       recommender_config: {
    #         item_exploration_config: {
    #           "ParameterName" => "ParameterValue"
    #         },
    #         min_recommendation_requests_per_second: 1,
    #         training_data_config: {
    #           excluded_dataset_columns: {
    #             "DatasetType" => ["ColumnName"]
    #           }
    #         },
    #         enable_metadata_with_recommendations: false
    #       },
    #       creation_date_time: Time.now,
    #       last_updated_date_time: Time.now,
    #       status: "Status",
    #       failure_reason: "FailureReason",
    #       latest_recommender_update: {
    #         recommender_config: {
    #           item_exploration_config: {
    #             "ParameterName" => "ParameterValue"
    #           },
    #           min_recommendation_requests_per_second: 1,
    #           training_data_config: {
    #             excluded_dataset_columns: {
    #               "DatasetType" => ["ColumnName"]
    #             }
    #           },
    #           enable_metadata_with_recommendations: false
    #         },
    #         creation_date_time: Time.now,
    #         last_updated_date_time: Time.now,
    #         status: "Status",
    #         failure_reason: "FailureReason"
    #       },
    #       model_metrics: {
    #         "MetricName" => 1.0
    #       }
    #     }
    #   }
    # @return [Types::DescribeRecommenderResponse]
    def describe_recommender(params = {}, options = {})
      request = build_request(:describe_recommender, params)
      request.send_request(options)
    end

    # <p>Describes a schema. For more information on schemas, see
    #       <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_CreateSchema.html">CreateSchema</a>.</p>
    # @param [Hash, Types::DescribeSchemaRequest] params
    # @option params [String] :schema_arn
    #   <p>The Amazon Resource Name (ARN) of the schema to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     schema_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.describe_schema(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     schema: {
    #       name: "Name",
    #       schema_arn: "Arn",
    #       schema: "AvroSchema",
    #       creation_date_time: Time.now,
    #       last_updated_date_time: Time.now,
    #       domain: "ECOMMERCE" # One of: ["ECOMMERCE", "VIDEO_ON_DEMAND"]
    #     }
    #   }
    # @return [Types::DescribeSchemaResponse]
    def describe_schema(params = {}, options = {})
      request = build_request(:describe_schema, params)
      request.send_request(options)
    end

    # <p>Describes a solution.
    #       For more information on solutions, see <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_CreateSolution.html">CreateSolution</a>.</p>
    # @param [Hash, Types::DescribeSolutionRequest] params
    # @option params [String] :solution_arn
    #   <p>The Amazon Resource Name (ARN) of the solution to describe.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     solution_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.describe_solution(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     solution: {
    #       name: "Name",
    #       solution_arn: "Arn",
    #       perform_hpo: false,
    #       perform_auto_ml: false,
    #       perform_auto_training: false,
    #       recipe_arn: "Arn",
    #       dataset_group_arn: "Arn",
    #       event_type: "EventType",
    #       solution_config: {
    #         event_value_threshold: "EventValueThreshold",
    #         hpo_config: {
    #           hpo_objective: {
    #             type: "HPOObjectiveType",
    #             metric_name: "MetricName",
    #             metric_regex: "MetricRegex"
    #           },
    #           hpo_resource_config: {
    #             max_number_of_training_jobs: "HPOResource",
    #             max_parallel_training_jobs: "HPOResource"
    #           },
    #           algorithm_hyper_parameter_ranges: {
    #             integer_hyper_parameter_ranges: [
    #               {
    #                 name: "ParameterName",
    #                 min_value: 1,
    #                 max_value: 1
    #               }
    #             ],
    #             continuous_hyper_parameter_ranges: [
    #               {
    #                 name: "ParameterName",
    #                 min_value: 1.0,
    #                 max_value: 1.0
    #               }
    #             ],
    #             categorical_hyper_parameter_ranges: [
    #               {
    #                 name: "ParameterName",
    #                 values: ["CategoricalValue"]
    #               }
    #             ]
    #           }
    #         },
    #         algorithm_hyper_parameters: {
    #           "ParameterName" => "ParameterValue"
    #         },
    #         feature_transformation_parameters: {
    #           "ParameterName" => "ParameterValue"
    #         },
    #         auto_ml_config: {
    #           metric_name: "MetricName",
    #           recipe_list: ["Arn"]
    #         },
    #         events_config: {
    #           event_parameters_list: [
    #             {
    #               event_type: "EventType",
    #               event_value_threshold: 1.0,
    #               weight: 1.0
    #             }
    #           ]
    #         },
    #         optimization_objective: {
    #           item_attribute: "ItemAttribute",
    #           objective_sensitivity: "LOW" # One of: ["LOW", "MEDIUM", "HIGH", "OFF"]
    #         },
    #         training_data_config: {
    #           excluded_dataset_columns: {
    #             "DatasetType" => ["ColumnName"]
    #           }
    #         },
    #         auto_training_config: {
    #           scheduling_expression: "SchedulingExpression"
    #         }
    #       },
    #       auto_ml_result: {
    #         best_recipe_arn: "Arn"
    #       },
    #       status: "Status",
    #       creation_date_time: Time.now,
    #       last_updated_date_time: Time.now,
    #       latest_solution_version: {
    #         solution_version_arn: "Arn",
    #         status: "Status",
    #         training_mode: "FULL" # One of: ["FULL", "UPDATE", "AUTOTRAIN"],
    #         training_type: "AUTOMATIC" # One of: ["AUTOMATIC", "MANUAL"],
    #         creation_date_time: Time.now,
    #         last_updated_date_time: Time.now,
    #         failure_reason: "FailureReason"
    #       },
    #       latest_solution_update: {
    #         solution_update_config: {
    #           auto_training_config: {
    #             scheduling_expression: "SchedulingExpression"
    #           },
    #           events_config: {
    #             event_parameters_list: [
    #               {
    #                 event_type: "EventType",
    #                 event_value_threshold: 1.0,
    #                 weight: 1.0
    #               }
    #             ]
    #           }
    #         },
    #         status: "Status",
    #         perform_auto_training: false,
    #         creation_date_time: Time.now,
    #         last_updated_date_time: Time.now,
    #         failure_reason: "FailureReason"
    #       }
    #     }
    #   }
    # @return [Types::DescribeSolutionResponse]
    def describe_solution(params = {}, options = {})
      request = build_request(:describe_solution, params)
      request.send_request(options)
    end

    # <p>Describes a specific version of a solution. For more information on solutions, see <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_CreateSolution.html">CreateSolution</a>
    #          </p>
    # @param [Hash, Types::DescribeSolutionVersionRequest] params
    # @option params [String] :solution_version_arn
    #   <p>The Amazon Resource Name (ARN) of the solution version.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     solution_version_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.describe_solution_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     solution_version: {
    #       name: "Name",
    #       solution_version_arn: "Arn",
    #       solution_arn: "Arn",
    #       perform_hpo: false,
    #       perform_auto_ml: false,
    #       recipe_arn: "Arn",
    #       event_type: "EventType",
    #       dataset_group_arn: "Arn",
    #       solution_config: {
    #         event_value_threshold: "EventValueThreshold",
    #         hpo_config: {
    #           hpo_objective: {
    #             type: "HPOObjectiveType",
    #             metric_name: "MetricName",
    #             metric_regex: "MetricRegex"
    #           },
    #           hpo_resource_config: {
    #             max_number_of_training_jobs: "HPOResource",
    #             max_parallel_training_jobs: "HPOResource"
    #           },
    #           algorithm_hyper_parameter_ranges: {
    #             integer_hyper_parameter_ranges: [
    #               {
    #                 name: "ParameterName",
    #                 min_value: 1,
    #                 max_value: 1
    #               }
    #             ],
    #             continuous_hyper_parameter_ranges: [
    #               {
    #                 name: "ParameterName",
    #                 min_value: 1.0,
    #                 max_value: 1.0
    #               }
    #             ],
    #             categorical_hyper_parameter_ranges: [
    #               {
    #                 name: "ParameterName",
    #                 values: ["CategoricalValue"]
    #               }
    #             ]
    #           }
    #         },
    #         algorithm_hyper_parameters: {
    #           "ParameterName" => "ParameterValue"
    #         },
    #         feature_transformation_parameters: {
    #           "ParameterName" => "ParameterValue"
    #         },
    #         auto_ml_config: {
    #           metric_name: "MetricName",
    #           recipe_list: ["Arn"]
    #         },
    #         events_config: {
    #           event_parameters_list: [
    #             {
    #               event_type: "EventType",
    #               event_value_threshold: 1.0,
    #               weight: 1.0
    #             }
    #           ]
    #         },
    #         optimization_objective: {
    #           item_attribute: "ItemAttribute",
    #           objective_sensitivity: "LOW" # One of: ["LOW", "MEDIUM", "HIGH", "OFF"]
    #         },
    #         training_data_config: {
    #           excluded_dataset_columns: {
    #             "DatasetType" => ["ColumnName"]
    #           }
    #         },
    #         auto_training_config: {
    #           scheduling_expression: "SchedulingExpression"
    #         }
    #       },
    #       training_hours: 1.0,
    #       training_mode: "FULL" # One of: ["FULL", "UPDATE", "AUTOTRAIN"],
    #       tuned_hpo_params: {
    #         algorithm_hyper_parameters: {
    #           "ParameterName" => "ParameterValue"
    #         }
    #       },
    #       status: "Status",
    #       failure_reason: "FailureReason",
    #       creation_date_time: Time.now,
    #       last_updated_date_time: Time.now,
    #       training_type: "AUTOMATIC" # One of: ["AUTOMATIC", "MANUAL"]
    #     }
    #   }
    # @return [Types::DescribeSolutionVersionResponse]
    def describe_solution_version(params = {}, options = {})
      request = build_request(:describe_solution_version, params)
      request.send_request(options)
    end

    # <p>Gets the metrics for the specified solution version.</p>
    # @param [Hash, Types::GetSolutionMetricsRequest] params
    # @option params [String] :solution_version_arn
    #   <p>The Amazon Resource Name (ARN) of the solution version for which to get metrics.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     solution_version_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.get_solution_metrics(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     solution_version_arn: "Arn",
    #     metrics: {
    #       "MetricName" => 1.0
    #     }
    #   }
    # @return [Types::GetSolutionMetricsResponse]
    def get_solution_metrics(params = {}, options = {})
      request = build_request(:get_solution_metrics, params)
      request.send_request(options)
    end

    # <p>Gets a list of the batch inference jobs that have been performed off of a solution
    #       version.</p>
    # @param [Hash, Types::ListBatchInferenceJobsRequest] params
    # @option params [String] :solution_version_arn
    #   <p>The Amazon Resource Name (ARN) of the solution version from which the batch inference jobs
    #         were created.</p>
    # @option params [String] :next_token
    #   <p>The token to request the next page of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of batch inference job results to return in each page. The default
    #         value is 100.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     solution_version_arn: "Arn",
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_batch_inference_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     batch_inference_jobs: [
    #       {
    #         batch_inference_job_arn: "Arn",
    #         job_name: "Name",
    #         status: "Status",
    #         creation_date_time: Time.now,
    #         last_updated_date_time: Time.now,
    #         failure_reason: "FailureReason",
    #         solution_version_arn: "Arn",
    #         batch_inference_job_mode: "BATCH_INFERENCE" # One of: ["BATCH_INFERENCE", "THEME_GENERATION"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListBatchInferenceJobsResponse]
    def list_batch_inference_jobs(params = {}, options = {})
      request = build_request(:list_batch_inference_jobs, params)
      request.send_request(options)
    end

    # <p>Gets a list of the batch segment jobs that have been performed off of a solution
    #       version that you specify.</p>
    # @param [Hash, Types::ListBatchSegmentJobsRequest] params
    # @option params [String] :solution_version_arn
    #   <p>The Amazon Resource Name (ARN) of the solution version that the batch segment jobs used to generate batch segments.</p>
    # @option params [String] :next_token
    #   <p>The token to request the next page of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of batch segment job results to return in each page. The default
    #         value is 100.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     solution_version_arn: "Arn",
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_batch_segment_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     batch_segment_jobs: [
    #       {
    #         batch_segment_job_arn: "Arn",
    #         job_name: "Name",
    #         status: "Status",
    #         creation_date_time: Time.now,
    #         last_updated_date_time: Time.now,
    #         failure_reason: "FailureReason",
    #         solution_version_arn: "Arn"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListBatchSegmentJobsResponse]
    def list_batch_segment_jobs(params = {}, options = {})
      request = build_request(:list_batch_segment_jobs, params)
      request.send_request(options)
    end

    # <p>Returns a list of campaigns that use the given solution.
    #       When a solution is not specified, all the campaigns associated with the account are listed.
    #       The response provides the properties for each campaign, including the Amazon Resource Name (ARN).
    #       For more information on campaigns, see <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_CreateCampaign.html">CreateCampaign</a>.</p>
    # @param [Hash, Types::ListCampaignsRequest] params
    # @option params [String] :solution_arn
    #   <p>The Amazon Resource Name (ARN) of the solution to list the campaigns for. When
    #         a solution is not specified, all the campaigns associated with the account are listed.</p>
    # @option params [String] :next_token
    #   <p>A token returned from the previous call to <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_ListCampaigns.html">ListCampaigns</a> for getting
    #         the next set of campaigns (if they exist).</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of campaigns to return.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     solution_arn: "Arn",
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_campaigns(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     campaigns: [
    #       {
    #         name: "Name",
    #         campaign_arn: "Arn",
    #         status: "Status",
    #         creation_date_time: Time.now,
    #         last_updated_date_time: Time.now,
    #         failure_reason: "FailureReason"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListCampaignsResponse]
    def list_campaigns(params = {}, options = {})
      request = build_request(:list_campaigns, params)
      request.send_request(options)
    end

    # <p>Returns a list of data deletion jobs for a dataset group ordered by creation time,
    #       with the most recent first.
    #       When
    #       a dataset group is not specified, all the data deletion jobs associated with
    #       the account are listed. The response provides the properties for each
    #       job, including the Amazon Resource Name (ARN). For more
    #       information on data deletion jobs, see <a href="https://docs.aws.amazon.com/personalize/latest/dg/delete-records.html">Deleting users</a>.</p>
    # @param [Hash, Types::ListDataDeletionJobsRequest] params
    # @option params [String] :dataset_group_arn
    #   <p>The Amazon Resource Name (ARN) of the dataset group to list data deletion jobs for.</p>
    # @option params [String] :next_token
    #   <p>A token returned from the previous call to
    #         <code>ListDataDeletionJobs</code> for getting the next set of jobs (if they exist).</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of data deletion jobs to return.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     dataset_group_arn: "Arn",
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_data_deletion_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     data_deletion_jobs: [
    #       {
    #         data_deletion_job_arn: "Arn",
    #         dataset_group_arn: "Arn",
    #         job_name: "Name",
    #         status: "Status",
    #         creation_date_time: Time.now,
    #         last_updated_date_time: Time.now,
    #         failure_reason: "FailureReason"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListDataDeletionJobsResponse]
    def list_data_deletion_jobs(params = {}, options = {})
      request = build_request(:list_data_deletion_jobs, params)
      request.send_request(options)
    end

    # <p>Returns a list of dataset export jobs that use the given dataset. When
    #       a dataset is not specified, all the dataset export jobs associated with
    #       the account are listed. The response provides the properties for each
    #       dataset export job, including the Amazon Resource Name (ARN). For more
    #       information on dataset export jobs, see <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_CreateDatasetExportJob.html">CreateDatasetExportJob</a>. For more information on datasets, see
    #         <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_CreateDataset.html">CreateDataset</a>.</p>
    # @param [Hash, Types::ListDatasetExportJobsRequest] params
    # @option params [String] :dataset_arn
    #   <p>The Amazon Resource Name (ARN) of the dataset to list the dataset
    #         export jobs for.</p>
    # @option params [String] :next_token
    #   <p>A token returned from the previous call to
    #           <code>ListDatasetExportJobs</code> for getting the next set of dataset
    #         export jobs (if they exist).</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of dataset export jobs to return.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     dataset_arn: "Arn",
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_dataset_export_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     dataset_export_jobs: [
    #       {
    #         dataset_export_job_arn: "Arn",
    #         job_name: "Name",
    #         status: "Status",
    #         creation_date_time: Time.now,
    #         last_updated_date_time: Time.now,
    #         failure_reason: "FailureReason"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListDatasetExportJobsResponse]
    def list_dataset_export_jobs(params = {}, options = {})
      request = build_request(:list_dataset_export_jobs, params)
      request.send_request(options)
    end

    # <p>Returns a list of dataset groups. The response provides the properties
    #       for each dataset group, including the Amazon Resource Name (ARN). For more
    #       information on dataset groups, see <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_CreateDatasetGroup.html">CreateDatasetGroup</a>.</p>
    # @param [Hash, Types::ListDatasetGroupsRequest] params
    # @option params [String] :next_token
    #   <p>A token returned from the previous call to
    #           <code>ListDatasetGroups</code> for getting the next set of dataset
    #         groups (if they exist).</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of dataset groups to return.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_dataset_groups(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     dataset_groups: [
    #       {
    #         name: "Name",
    #         dataset_group_arn: "Arn",
    #         status: "Status",
    #         creation_date_time: Time.now,
    #         last_updated_date_time: Time.now,
    #         failure_reason: "FailureReason",
    #         domain: "ECOMMERCE" # One of: ["ECOMMERCE", "VIDEO_ON_DEMAND"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListDatasetGroupsResponse]
    def list_dataset_groups(params = {}, options = {})
      request = build_request(:list_dataset_groups, params)
      request.send_request(options)
    end

    # <p>Returns a list of dataset import jobs that use the given dataset. When
    #       a dataset is not specified, all the dataset import jobs associated with
    #       the account are listed. The response provides the properties for each
    #       dataset import job, including the Amazon Resource Name (ARN). For more
    #       information on dataset import jobs, see <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_CreateDatasetImportJob.html">CreateDatasetImportJob</a>. For more information on datasets, see
    #         <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_CreateDataset.html">CreateDataset</a>.</p>
    # @param [Hash, Types::ListDatasetImportJobsRequest] params
    # @option params [String] :dataset_arn
    #   <p>The Amazon Resource Name (ARN) of the dataset to list the dataset
    #         import jobs for.</p>
    # @option params [String] :next_token
    #   <p>A token returned from the previous call to
    #           <code>ListDatasetImportJobs</code> for getting the next set of dataset
    #         import jobs (if they exist).</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of dataset import jobs to return.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     dataset_arn: "Arn",
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_dataset_import_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     dataset_import_jobs: [
    #       {
    #         dataset_import_job_arn: "Arn",
    #         job_name: "Name",
    #         status: "Status",
    #         creation_date_time: Time.now,
    #         last_updated_date_time: Time.now,
    #         failure_reason: "FailureReason",
    #         import_mode: "FULL" # One of: ["FULL", "INCREMENTAL"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListDatasetImportJobsResponse]
    def list_dataset_import_jobs(params = {}, options = {})
      request = build_request(:list_dataset_import_jobs, params)
      request.send_request(options)
    end

    # <p>Returns the list of datasets contained in the given dataset group. The
    #       response provides the properties for each dataset, including the Amazon
    #       Resource Name (ARN). For more information on datasets, see <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_CreateDataset.html">CreateDataset</a>.</p>
    # @param [Hash, Types::ListDatasetsRequest] params
    # @option params [String] :dataset_group_arn
    #   <p>The Amazon Resource Name (ARN) of the dataset group that contains the
    #         datasets to list.</p>
    # @option params [String] :next_token
    #   <p>A token returned from the previous call to
    #           <code>ListDatasets</code> for getting the next set of dataset
    #         import jobs (if they exist).</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of datasets to return.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     dataset_group_arn: "Arn",
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_datasets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     datasets: [
    #       {
    #         name: "Name",
    #         dataset_arn: "Arn",
    #         dataset_type: "DatasetType",
    #         status: "Status",
    #         creation_date_time: Time.now,
    #         last_updated_date_time: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListDatasetsResponse]
    def list_datasets(params = {}, options = {})
      request = build_request(:list_datasets, params)
      request.send_request(options)
    end

    # <p>Returns the list of event trackers associated with the account.
    #       The response provides the properties for each event tracker, including the Amazon Resource
    #       Name (ARN) and tracking ID. For more
    #       information on event trackers, see <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_CreateEventTracker.html">CreateEventTracker</a>.</p>
    # @param [Hash, Types::ListEventTrackersRequest] params
    # @option params [String] :dataset_group_arn
    #   <p>The ARN of a dataset group used to filter the response.</p>
    # @option params [String] :next_token
    #   <p>A token returned from the previous call to <code>ListEventTrackers</code> for getting
    #         the next set of event trackers (if they exist).</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of event trackers to return.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     dataset_group_arn: "Arn",
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_event_trackers(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     event_trackers: [
    #       {
    #         name: "Name",
    #         event_tracker_arn: "Arn",
    #         status: "Status",
    #         creation_date_time: Time.now,
    #         last_updated_date_time: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListEventTrackersResponse]
    def list_event_trackers(params = {}, options = {})
      request = build_request(:list_event_trackers, params)
      request.send_request(options)
    end

    # <p>Lists all filters that belong to a given dataset group.</p>
    # @param [Hash, Types::ListFiltersRequest] params
    # @option params [String] :dataset_group_arn
    #   <p>The ARN of the dataset group that contains the filters.</p>
    # @option params [String] :next_token
    #   <p>A token returned from the previous call to <code>ListFilters</code> for getting the
    #               next set of filters (if they exist).</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of filters to return.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     dataset_group_arn: "Arn",
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_filters(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     filters: [
    #       {
    #         name: "Name",
    #         filter_arn: "Arn",
    #         creation_date_time: Time.now,
    #         last_updated_date_time: Time.now,
    #         dataset_group_arn: "Arn",
    #         failure_reason: "FailureReason",
    #         status: "Status"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListFiltersResponse]
    def list_filters(params = {}, options = {})
      request = build_request(:list_filters, params)
      request.send_request(options)
    end

    # <p>Lists the metrics for the metric attribution.</p>
    # @param [Hash, Types::ListMetricAttributionMetricsRequest] params
    # @option params [String] :metric_attribution_arn
    #   <p>The Amazon Resource Name (ARN) of the metric attribution to retrieve attributes for.</p>
    # @option params [String] :next_token
    #   <p>Specify the pagination token from a previous request to retrieve the next page of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of metrics to return in one page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     metric_attribution_arn: "Arn",
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_metric_attribution_metrics(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     metrics: [
    #       {
    #         event_type: "EventType", # required
    #         metric_name: "MetricName", # required
    #         expression: "MetricExpression", # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListMetricAttributionMetricsResponse]
    def list_metric_attribution_metrics(params = {}, options = {})
      request = build_request(:list_metric_attribution_metrics, params)
      request.send_request(options)
    end

    # <p>Lists metric attributions.</p>
    # @param [Hash, Types::ListMetricAttributionsRequest] params
    # @option params [String] :dataset_group_arn
    #   <p>The metric attributions' dataset group Amazon Resource Name (ARN).</p>
    # @option params [String] :next_token
    #   <p>Specify the pagination token from a previous request to retrieve the next page of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of metric attributions to return in one page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     dataset_group_arn: "Arn",
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_metric_attributions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     metric_attributions: [
    #       {
    #         name: "Name",
    #         metric_attribution_arn: "Arn",
    #         status: "Status",
    #         creation_date_time: Time.now,
    #         last_updated_date_time: Time.now,
    #         failure_reason: "FailureReason"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListMetricAttributionsResponse]
    def list_metric_attributions(params = {}, options = {})
      request = build_request(:list_metric_attributions, params)
      request.send_request(options)
    end

    # <p>Returns a list of available recipes. The response provides the properties
    #        for each recipe, including the recipe's Amazon Resource Name (ARN).</p>
    # @param [Hash, Types::ListRecipesRequest] params
    # @option params [String] :recipe_provider
    #   <p>The default is <code>SERVICE</code>.</p>
    # @option params [String] :next_token
    #   <p>A token returned from the previous call to <code>ListRecipes</code> for getting
    #         the next set of recipes (if they exist).</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of recipes to return.</p>
    # @option params [String] :domain
    #   <p>
    #         Filters returned recipes by domain for a Domain dataset group. Only recipes (Domain dataset group use cases)
    #         for this domain are included in the response. If you don't specify a domain, all recipes are returned.
    #       </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     recipe_provider: "SERVICE" # One of: ["SERVICE"],
    #     next_token: "NextToken",
    #     max_results: 1,
    #     domain: "ECOMMERCE" # One of: ["ECOMMERCE", "VIDEO_ON_DEMAND"]
    #   }
    #   options = {}
    #   response = client.list_recipes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     recipes: [
    #       {
    #         name: "Name",
    #         recipe_arn: "Arn",
    #         status: "Status",
    #         creation_date_time: Time.now,
    #         last_updated_date_time: Time.now,
    #         domain: "ECOMMERCE" # One of: ["ECOMMERCE", "VIDEO_ON_DEMAND"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListRecipesResponse]
    def list_recipes(params = {}, options = {})
      request = build_request(:list_recipes, params)
      request.send_request(options)
    end

    # <p>Returns a list of recommenders in a given Domain dataset group.
    #       When a Domain dataset group is not specified, all the recommenders associated with the account are listed.
    #       The response provides the properties for each recommender, including the Amazon Resource Name (ARN).
    #       For more information on recommenders, see <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_CreateRecommender.html">CreateRecommender</a>.</p>
    # @param [Hash, Types::ListRecommendersRequest] params
    # @option params [String] :dataset_group_arn
    #   <p>The Amazon Resource Name (ARN) of the Domain dataset group to list the recommenders for. When
    #         a Domain dataset group is not specified, all the recommenders associated with the account are listed.</p>
    # @option params [String] :next_token
    #   <p>A token returned from the previous call to <code>ListRecommenders</code> for getting
    #         the next set of recommenders (if they exist).</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of recommenders to return.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     dataset_group_arn: "Arn",
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_recommenders(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     recommenders: [
    #       {
    #         name: "Name",
    #         recommender_arn: "Arn",
    #         dataset_group_arn: "Arn",
    #         recipe_arn: "Arn",
    #         recommender_config: {
    #           item_exploration_config: {
    #             "ParameterName" => "ParameterValue"
    #           },
    #           min_recommendation_requests_per_second: 1,
    #           training_data_config: {
    #             excluded_dataset_columns: {
    #               "DatasetType" => ["ColumnName"]
    #             }
    #           },
    #           enable_metadata_with_recommendations: false
    #         },
    #         status: "Status",
    #         creation_date_time: Time.now,
    #         last_updated_date_time: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListRecommendersResponse]
    def list_recommenders(params = {}, options = {})
      request = build_request(:list_recommenders, params)
      request.send_request(options)
    end

    # <p>Returns the list of schemas associated with the account. The response provides the
    #       properties for each schema, including the Amazon Resource Name (ARN).
    #       For more information on schemas, see <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_CreateSchema.html">CreateSchema</a>.</p>
    # @param [Hash, Types::ListSchemasRequest] params
    # @option params [String] :next_token
    #   <p>A token returned from the previous call to <code>ListSchemas</code> for getting
    #         the next set of schemas (if they exist).</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of schemas to return.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_schemas(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     schemas: [
    #       {
    #         name: "Name",
    #         schema_arn: "Arn",
    #         creation_date_time: Time.now,
    #         last_updated_date_time: Time.now,
    #         domain: "ECOMMERCE" # One of: ["ECOMMERCE", "VIDEO_ON_DEMAND"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListSchemasResponse]
    def list_schemas(params = {}, options = {})
      request = build_request(:list_schemas, params)
      request.send_request(options)
    end

    # <p>Returns a list of solution versions for the given solution. When a solution is not
    #       specified, all the solution versions associated with the account are listed. The response
    #       provides the properties for each solution version, including the Amazon Resource Name (ARN).</p>
    # @param [Hash, Types::ListSolutionVersionsRequest] params
    # @option params [String] :solution_arn
    #   <p>The Amazon Resource Name (ARN) of the solution.</p>
    # @option params [String] :next_token
    #   <p>A token returned from the previous call to <code>ListSolutionVersions</code> for getting
    #         the next set of solution versions (if they exist).</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of solution versions to return.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     solution_arn: "Arn",
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_solution_versions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     solution_versions: [
    #       {
    #         solution_version_arn: "Arn",
    #         status: "Status",
    #         training_mode: "FULL" # One of: ["FULL", "UPDATE", "AUTOTRAIN"],
    #         training_type: "AUTOMATIC" # One of: ["AUTOMATIC", "MANUAL"],
    #         creation_date_time: Time.now,
    #         last_updated_date_time: Time.now,
    #         failure_reason: "FailureReason"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListSolutionVersionsResponse]
    def list_solution_versions(params = {}, options = {})
      request = build_request(:list_solution_versions, params)
      request.send_request(options)
    end

    # <p>Returns a list of solutions in a given dataset group.
    #       When a dataset group is not specified, all the solutions associated with the account are listed.
    #       The response provides the properties for each solution, including the Amazon Resource Name (ARN).
    #       For more information on solutions, see <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_CreateSolution.html">CreateSolution</a>.</p>
    # @param [Hash, Types::ListSolutionsRequest] params
    # @option params [String] :dataset_group_arn
    #   <p>The Amazon Resource Name (ARN) of the dataset group.</p>
    # @option params [String] :next_token
    #   <p>A token returned from the previous call to <code>ListSolutions</code> for getting
    #         the next set of solutions (if they exist).</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of solutions to return.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     dataset_group_arn: "Arn",
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_solutions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     solutions: [
    #       {
    #         name: "Name",
    #         solution_arn: "Arn",
    #         status: "Status",
    #         creation_date_time: Time.now,
    #         last_updated_date_time: Time.now,
    #         recipe_arn: "Arn"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListSolutionsResponse]
    def list_solutions(params = {}, options = {})
      request = build_request(:list_solutions, params)
      request.send_request(options)
    end

    # <p>Get a list of <a href="https://docs.aws.amazon.com/personalize/latest/dg/tagging-resources.html">tags</a> attached to a resource.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The resource's Amazon Resource Name (ARN).</p>
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
    #         tag_key: "TagKey", # required
    #         tag_value: "TagValue", # required
    #       }
    #     ]
    #   }
    # @return [Types::ListTagsForResourceResponse]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Starts a recommender that is INACTIVE. Starting a recommender does not
    #       create any new models, but resumes billing and automatic retraining for the recommender.</p>
    # @param [Hash, Types::StartRecommenderRequest] params
    # @option params [String] :recommender_arn
    #   <p>The Amazon Resource Name (ARN) of the recommender to start.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     recommender_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.start_recommender(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     recommender_arn: "Arn"
    #   }
    # @return [Types::StartRecommenderResponse]
    def start_recommender(params = {}, options = {})
      request = build_request(:start_recommender, params)
      request.send_request(options)
    end

    # <p>Stops a recommender that is ACTIVE. Stopping a recommender halts billing and automatic retraining for the recommender.</p>
    # @param [Hash, Types::StopRecommenderRequest] params
    # @option params [String] :recommender_arn
    #   <p>The Amazon Resource Name (ARN) of the recommender to stop.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     recommender_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.stop_recommender(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     recommender_arn: "Arn"
    #   }
    # @return [Types::StopRecommenderResponse]
    def stop_recommender(params = {}, options = {})
      request = build_request(:stop_recommender, params)
      request.send_request(options)
    end

    # <p>Stops creating a solution version that is in a state of CREATE_PENDING or CREATE IN_PROGRESS.
    #       </p>
    #          <p>Depending on the current state of the solution version, the solution version state changes as follows:</p>
    #          <ul>
    #             <li>
    #                <p>CREATE_PENDING > CREATE_STOPPED</p>
    #                <p>or</p>
    #             </li>
    #             <li>
    #                <p>CREATE_IN_PROGRESS > CREATE_STOPPING > CREATE_STOPPED</p>
    #             </li>
    #          </ul>
    #          <p>You are billed for all of the training completed up
    #       until you stop the solution version creation. You cannot resume creating a solution version once it has been stopped.</p>
    # @param [Hash, Types::StopSolutionVersionCreationRequest] params
    # @option params [String] :solution_version_arn
    #   <p>The Amazon Resource Name (ARN) of the solution version you want to stop creating.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     solution_version_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.stop_solution_version_creation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def stop_solution_version_creation(params = {}, options = {})
      request = build_request(:stop_solution_version_creation, params)
      request.send_request(options)
    end

    # <p>Add a list of tags to a resource.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The resource's Amazon Resource Name (ARN).</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Tags to apply to the resource. For more information see <a href="https://docs.aws.amazon.com/personalize/latest/dg/tagging-resources.html">Tagging Amazon Personalize resources</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
    #     tags: [ # required
    #       {
    #         tag_key: "TagKey", # required
    #         tag_value: "TagValue", # required
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

    # <p>Removes the specified tags that are attached to a resource. For more information, see <a href="https://docs.aws.amazon.com/personalize/latest/dg/tags-remove.html">Removing tags from Amazon Personalize resources</a>.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The resource's Amazon Resource Name (ARN).</p>
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

    # <p>
    #       Updates a campaign to deploy a retrained solution version with an existing campaign, change your campaign's <code>minProvisionedTPS</code>,
    #       or modify your campaign's configuration. For example, you can set <code>enableMetadataWithRecommendations</code> to true for an existing campaign.</p>
    #          <p>
    #       To update a campaign to start automatically using the latest solution version, specify the following:</p>
    #          <ul>
    #             <li>
    #                <p>For the <code>SolutionVersionArn</code> parameter, specify the Amazon Resource Name (ARN) of your solution in
    #             <code>SolutionArn/$LATEST</code> format. </p>
    #             </li>
    #             <li>
    #                <p> In the <code>campaignConfig</code>, set <code>syncWithLatestSolutionVersion</code> to <code>true</code>.
    #         </p>
    #             </li>
    #          </ul>
    #          <p>To update a campaign, the campaign status must be ACTIVE or CREATE FAILED.
    #       Check the campaign status using the <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeCampaign.html">DescribeCampaign</a> operation.</p>
    #          <note>
    #             <p>You can still get recommendations from a campaign while an update is in progress.
    #         The campaign will use the previous solution version and campaign configuration to generate recommendations until the latest campaign update status is <code>Active</code>.
    #       </p>
    #          </note>
    #          <p>For more information about updating a campaign, including code samples, see <a href="https://docs.aws.amazon.com/personalize/latest/dg/update-campaigns.html">Updating a campaign</a>.
    #       For more information about campaigns, see <a href="https://docs.aws.amazon.com/personalize/latest/dg/campaigns.html">Creating a campaign</a>.</p>
    # @param [Hash, Types::UpdateCampaignRequest] params
    # @option params [String] :campaign_arn
    #   <p>The Amazon Resource Name (ARN) of the campaign.</p>
    # @option params [String] :solution_version_arn
    #   <p>The Amazon Resource Name (ARN) of a new model to deploy. To specify the latest solution version of your solution, 
    #         specify the ARN of your <i>solution</i> in <code>SolutionArn/$LATEST</code> format.
    #         You must use this format if you set <code>syncWithLatestSolutionVersion</code> to <code>True</code> in the 
    #         <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_CampaignConfig.html">CampaignConfig</a>.
    #       </p>
    #            <p>
    #         To deploy a model that isn't the latest solution version of your solution, specify the ARN of the solution version.
    #       </p>
    #            <p>
    #         For more information about automatic campaign updates, see 
    #         <a href="https://docs.aws.amazon.com/personalize/latest/dg/campaigns.html#create-campaign-automatic-latest-sv-update">Enabling automatic campaign updates</a>.
    #       </p>
    # @option params [Integer] :min_provisioned_tps
    #   <p>Specifies the requested minimum provisioned transactions (recommendations) per second that
    #         Amazon Personalize will support. A high <code>minProvisionedTPS</code> will increase your bill. We recommend starting with 1 for <code>minProvisionedTPS</code> (the default). Track
    #         your usage using Amazon CloudWatch metrics, and increase the <code>minProvisionedTPS</code>
    #         as necessary.</p>
    # @option params [Types::CampaignConfig] :campaign_config
    #   <p>The configuration details of a campaign.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     campaign_arn: "Arn", # required
    #     solution_version_arn: "Arn",
    #     min_provisioned_tps: 1,
    #     campaign_config: {
    #       item_exploration_config: {
    #         "ParameterName" => "ParameterValue"
    #       },
    #       enable_metadata_with_recommendations: false,
    #       sync_with_latest_solution_version: false
    #     }
    #   }
    #   options = {}
    #   response = client.update_campaign(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     campaign_arn: "Arn"
    #   }
    # @return [Types::UpdateCampaignResponse]
    def update_campaign(params = {}, options = {})
      request = build_request(:update_campaign, params)
      request.send_request(options)
    end

    # <p>Update a dataset to replace its schema with a new or existing one. For more information, see <a href="https://docs.aws.amazon.com/personalize/latest/dg/updating-dataset-schema.html">Replacing a dataset's schema</a>. </p>
    # @param [Hash, Types::UpdateDatasetRequest] params
    # @option params [String] :dataset_arn
    #   <p>The Amazon Resource Name (ARN) of the dataset that you want to update.</p>
    # @option params [String] :schema_arn
    #   <p>The Amazon Resource Name (ARN) of the new schema you want use.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     dataset_arn: "Arn", # required
    #     schema_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.update_dataset(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     dataset_arn: "Arn"
    #   }
    # @return [Types::UpdateDatasetResponse]
    def update_dataset(params = {}, options = {})
      request = build_request(:update_dataset, params)
      request.send_request(options)
    end

    # <p>Updates a metric attribution.</p>
    # @param [Hash, Types::UpdateMetricAttributionRequest] params
    # @option params [Array<Types::MetricAttribute>] :add_metrics
    #   <p>Add new metric attributes to the metric attribution.</p>
    # @option params [Array<String>] :remove_metrics
    #   <p>Remove metric attributes from the metric attribution.</p>
    # @option params [Types::MetricAttributionOutput] :metrics_output_config
    #   <p>An output config for the metric attribution.</p>
    # @option params [String] :metric_attribution_arn
    #   <p>The Amazon Resource Name (ARN) for the metric attribution to update.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     add_metrics: [
    #       {
    #         event_type: "EventType", # required
    #         metric_name: "MetricName", # required
    #         expression: "MetricExpression", # required
    #       }
    #     ],
    #     remove_metrics: ["MetricName"],
    #     metrics_output_config: {
    #       s3_data_destination: {
    #         path: "S3Location", # required
    #         kms_key_arn: "KmsKeyArn"
    #       },
    #       role_arn: "RoleArn", # required
    #     },
    #     metric_attribution_arn: "Arn"
    #   }
    #   options = {}
    #   response = client.update_metric_attribution(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     metric_attribution_arn: "Arn"
    #   }
    # @return [Types::UpdateMetricAttributionResponse]
    def update_metric_attribution(params = {}, options = {})
      request = build_request(:update_metric_attribution, params)
      request.send_request(options)
    end

    # <p>Updates the recommender to modify the recommender configuration. 
    #       If you update the recommender to modify the columns used in training, Amazon Personalize automatically starts a full retraining of
    #       the models backing your recommender. While the update completes, you can still get recommendations from the recommender. The recommender
    #       uses the previous configuration until the update completes.
    #       To track the status of this update,
    #       use the <code>latestRecommenderUpdate</code> returned in the <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeRecommender.html">DescribeRecommender</a>
    #       operation. 
    #     </p>
    # @param [Hash, Types::UpdateRecommenderRequest] params
    # @option params [String] :recommender_arn
    #   <p>The Amazon Resource Name (ARN) of the recommender to modify.</p>
    # @option params [Types::RecommenderConfig] :recommender_config
    #   <p>The configuration details of the recommender.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     recommender_arn: "Arn", # required
    #     recommender_config: { # required
    #       item_exploration_config: {
    #         "ParameterName" => "ParameterValue"
    #       },
    #       min_recommendation_requests_per_second: 1,
    #       training_data_config: {
    #         excluded_dataset_columns: {
    #           "DatasetType" => ["ColumnName"]
    #         }
    #       },
    #       enable_metadata_with_recommendations: false
    #     }
    #   }
    #   options = {}
    #   response = client.update_recommender(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     recommender_arn: "Arn"
    #   }
    # @return [Types::UpdateRecommenderResponse]
    def update_recommender(params = {}, options = {})
      request = build_request(:update_recommender, params)
      request.send_request(options)
    end

    # <p>Updates an Amazon Personalize solution to use a different automatic training configuration. When you update a solution, 
    #       you can change whether the solution uses
    #       automatic training, and you can change the training frequency. For more information about updating a solution, see 
    #       <a href="https://docs.aws.amazon.com/personalize/latest/dg/updating-solution.html">Updating a solution</a>.</p>
    #          <p>A solution update can be in one of the
    #       following states:</p>
    #          <p>CREATE PENDING > CREATE IN_PROGRESS > ACTIVE -or- CREATE FAILED</p>
    #          <p>To get the status of a solution update, call the
    #       <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeSolution.html">DescribeSolution</a> API operation and find the status
    #       in the <code>latestSolutionUpdate</code>. </p>
    # @param [Hash, Types::UpdateSolutionRequest] params
    # @option params [String] :solution_arn
    #   <p>The Amazon Resource Name (ARN) of the solution to update.</p>
    # @option params [Boolean] :perform_auto_training
    #   <p>Whether the solution uses automatic training to create new solution versions (trained models). You can change the training
    #         frequency by specifying a <code>schedulingExpression</code> in the <code>AutoTrainingConfig</code> as part of solution
    #         configuration. </p>
    #            <p>
    #         If you turn on automatic training, the first automatic training starts within one hour after the solution update
    #         completes. If you manually create a solution version within the hour, the solution skips the first automatic training. 
    #         For more information about automatic training,
    #         see <a href="https://docs.aws.amazon.com/personalize/latest/dg/solution-config-auto-training.html">Configuring automatic training</a>.
    #       </p>
    #            <p>
    #         After training starts, you can
    #         get the solution version's Amazon Resource Name (ARN) with the <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_ListSolutionVersions.html">ListSolutionVersions</a> API operation. 
    #         To get its status, use the <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeSolutionVersion.html">DescribeSolutionVersion</a>.
    #       </p>
    # @option params [Types::SolutionUpdateConfig] :solution_update_config
    #   <p>The new configuration details of the solution.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     solution_arn: "Arn", # required
    #     perform_auto_training: false,
    #     solution_update_config: {
    #       auto_training_config: {
    #         scheduling_expression: "SchedulingExpression"
    #       },
    #       events_config: {
    #         event_parameters_list: [
    #           {
    #             event_type: "EventType",
    #             event_value_threshold: 1.0,
    #             weight: 1.0
    #           }
    #         ]
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_solution(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     solution_arn: "Arn"
    #   }
    # @return [Types::UpdateSolutionResponse]
    def update_solution(params = {}, options = {})
      request = build_request(:update_solution, params)
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
      context[:gem_name] = 'aws-sdk-personalize'
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
