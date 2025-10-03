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

module Aws::MarketplaceCommerceAnalytics
  # An API client for Aws::MarketplaceCommerceAnalytics.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::MarketplaceCommerceAnalytics20150701

    add_plugin(::Aws::MarketplaceCommerceAnalytics::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::MarketplaceCommerceAnalytics::EndpointProvider)
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

    # Given a data set type and data set publication date, asynchronously publishes the requested data set to the specified
    #         S3 bucket and notifies the specified SNS topic once the data is available. Returns a unique request identifier that
    #         can be used to correlate requests with notifications from the SNS topic.
    #         Data sets will be published in comma-separated values (CSV) format with the file name {data_set_type}_YYYY-MM-DD.csv.
    #         If a file with the same name already exists (e.g. if the same data set is requested twice), the original file will
    #         be overwritten by the new file.
    #         Requires a Role with an attached permissions policy providing Allow permissions for the following actions:
    #         s3:PutObject, s3:GetBucketLocation, sns:GetTopicAttributes, sns:Publish, iam:GetRolePolicy.
    # @param [Hash, Types::GenerateDataSetRequest] params
    # @option params [String] :data_set_type
    #   <p>The desired data set type.</p>
    #           <p>
    #               <ul>
    #                   <li>
    #                       <strong>customer_subscriber_hourly_monthly_subscriptions</strong>
    #                       <p>From 2017-09-15 to present: Available daily by 24:00 UTC.</p>
    #                   </li>
    #                   <li>
    #                       <strong>customer_subscriber_annual_subscriptions</strong>
    #                       <p>From 2017-09-15 to present: Available daily by 24:00 UTC.</p>
    #                   </li>
    #                   <li>
    #                       <strong>daily_business_usage_by_instance_type</strong>
    #                       <p>From 2017-09-15 to present: Available daily by 24:00 UTC.</p>
    #                   </li>
    #                   <li>
    #                       <strong>daily_business_fees</strong>
    #                       <p>From 2017-09-15 to present: Available daily by 24:00 UTC.</p>
    #                   </li>
    #                   <li>
    #                       <strong>daily_business_free_trial_conversions</strong>
    #                       <p>From 2017-09-15 to present: Available daily by 24:00 UTC.</p>
    #                   </li>
    #                   <li>
    #                       <strong>daily_business_new_instances</strong>
    #                       <p>From 2017-09-15 to present: Available daily by 24:00 UTC.</p>
    #                   </li>
    #                   <li>
    #                       <strong>daily_business_new_product_subscribers</strong>
    #                       <p>From 2017-09-15 to present: Available daily by 24:00 UTC.</p>
    #                   </li>
    #                   <li>
    #                       <strong>daily_business_canceled_product_subscribers</strong>
    #                       <p>From 2017-09-15 to present: Available daily by 24:00 UTC.</p>
    #                   </li>
    #                   <li>
    #                       <strong>monthly_revenue_billing_and_revenue_data</strong>
    #                       <p>From 2017-09-15 to present: Available monthly on the 15th day of the month by 24:00 UTC. Data includes metered transactions (e.g. hourly) from one month prior.</p>
    #                   </li>
    #                   <li>
    #                       <strong>monthly_revenue_annual_subscriptions</strong>
    #                       <p>From 2017-09-15 to present: Available monthly on the 15th day of the month by 24:00 UTC. Data includes up-front software charges (e.g. annual) from one month prior.</p>
    #                   </li>
    #                   <li>
    #                       <strong>monthly_revenue_field_demonstration_usage</strong>
    #                       <p>From 2018-03-15 to present: Available monthly on the 15th day of the month by 24:00 UTC.</p>
    #                   </li>
    #                   <li>
    #                       <strong>monthly_revenue_flexible_payment_schedule</strong>
    #                       <p>From 2018-11-15 to present: Available monthly on the 15th day of the month by 24:00 UTC.</p>
    #                   </li>
    #                   <li>
    #                       <strong>disbursed_amount_by_product</strong>
    #                       <p>From 2017-09-15 to present: Available every 30 days by 24:00 UTC.</p>
    #                   </li>
    #                   <li>
    #                       <strong>disbursed_amount_by_instance_hours</strong>
    #                       <p>From 2017-09-15 to present: Available every 30 days by 24:00 UTC.</p>
    #                   </li>
    #                   <li>
    #                       <strong>disbursed_amount_by_customer_geo</strong>
    #                       <p>From 2017-09-15 to present: Available every 30 days by 24:00 UTC.</p>
    #                   </li>
    #                   <li>
    #                       <strong>disbursed_amount_by_age_of_uncollected_funds</strong>
    #                       <p>From 2017-09-15 to present: Available every 30 days by 24:00 UTC.</p>
    #                   </li>
    #                   <li>
    #                       <strong>disbursed_amount_by_age_of_disbursed_funds</strong>
    #                       <p>From 2017-09-15 to present: Available every 30 days by 24:00 UTC.</p>
    #                   </li>
    #                   <li>
    #                       <strong>disbursed_amount_by_age_of_past_due_funds</strong>
    #                       <p>From 2018-04-07 to present: Available every 30 days by 24:00 UTC.</p>
    #                   </li>
    #                   <li>
    #                       <strong>disbursed_amount_by_uncollected_funds_breakdown</strong>
    #                       <p>From 2019-10-04 to present: Available every 30 days by 24:00 UTC.</p>
    #                   </li>
    #                   <li>
    #                       <strong>sales_compensation_billed_revenue</strong>
    #                       <p>From 2017-09-15 to present: Available monthly on the 15th day of the month by 24:00 UTC. Data includes metered transactions (e.g. hourly) from one month prior, and up-front software charges (e.g. annual) from one month prior.</p>
    #                   </li>
    #                   <li>
    #                       <strong>us_sales_and_use_tax_records</strong>
    #                       <p>From 2017-09-15 to present: Available monthly on the 15th day of the month by 24:00 UTC.</p>
    #                   </li>
    #                   <li>
    #                       <strong>disbursed_amount_by_product_with_uncollected_funds</strong>
    #                       <p>This data set is deprecated. Download related reports from AMMP instead!</p>
    #                   </li>
    #                   <li>
    #                       <strong>customer_profile_by_industry</strong>
    #                       <p>This data set is deprecated. Download related reports from AMMP instead!</p>
    #                   </li>
    #                   <li>
    #                       <strong>customer_profile_by_revenue</strong>
    #                       <p>This data set is deprecated. Download related reports from AMMP instead!</p>
    #                   </li>
    #                   <li>
    #                       <strong>customer_profile_by_geography</strong>
    #                       <p>This data set is deprecated. Download related reports from AMMP instead!</p>
    #                   </li>
    #               </ul>
    #           </p>
    # @option params [Time] :data_set_publication_date
    #   The date a data set was published.
    #           For daily data sets, provide a date with day-level granularity for the desired day.
    #           For monthly data sets except those with prefix disbursed_amount, provide a date with month-level granularity for the desired month (the day value will be ignored).
    #           For data sets with prefix disbursed_amount, provide a date with day-level granularity for the desired day. For these data sets we will look backwards in time over the range of 31 days until the first data set is found (the latest one).
    # @option params [String] :role_name_arn
    #   The Amazon Resource Name (ARN) of the Role with an attached permissions policy to interact with the provided
    #           AWS services.
    # @option params [String] :destination_s3_bucket_name
    #   The name (friendly name, not ARN) of the destination S3 bucket.
    # @option params [String] :destination_s3_prefix
    #   (Optional) The desired S3 prefix for the published data set, similar to a directory path in standard file systems.
    #           For example, if given the bucket name "mybucket" and the prefix "myprefix/mydatasets", the output file
    #           "outputfile" would be published to "s3://mybucket/myprefix/mydatasets/outputfile".
    #           If the prefix directory structure does not exist, it will be created.
    #           If no prefix is provided, the data set will be published to the S3 bucket root.
    # @option params [String] :sns_topic_arn
    #   Amazon Resource Name (ARN) for the SNS Topic that will be notified when the data set has been published or if an
    #           error has occurred.
    # @option params [Hash<String, String>] :customer_defined_values
    #   (Optional) Key-value pairs which will be returned, unmodified, in the
    #           Amazon SNS notification message and the data set metadata file. These
    #           key-value pairs can be used to correlated responses with tracking
    #           information from other systems.
    # @example Request syntax with placeholder values
    #   params = {
    #     data_set_type: "customer_subscriber_hourly_monthly_subscriptions" # One of: ["customer_subscriber_hourly_monthly_subscriptions", "customer_subscriber_annual_subscriptions", "daily_business_usage_by_instance_type", "daily_business_fees", "daily_business_free_trial_conversions", "daily_business_new_instances", "daily_business_new_product_subscribers", "daily_business_canceled_product_subscribers", "monthly_revenue_billing_and_revenue_data", "monthly_revenue_annual_subscriptions", "monthly_revenue_field_demonstration_usage", "monthly_revenue_flexible_payment_schedule", "disbursed_amount_by_product", "disbursed_amount_by_product_with_uncollected_funds", "disbursed_amount_by_instance_hours", "disbursed_amount_by_customer_geo", "disbursed_amount_by_age_of_uncollected_funds", "disbursed_amount_by_age_of_disbursed_funds", "disbursed_amount_by_age_of_past_due_funds", "disbursed_amount_by_uncollected_funds_breakdown", "customer_profile_by_industry", "customer_profile_by_revenue", "customer_profile_by_geography", "sales_compensation_billed_revenue", "us_sales_and_use_tax_records"], # required
    #     data_set_publication_date: Time.now, # required
    #     role_name_arn: "RoleNameArn", # required
    #     destination_s3_bucket_name: "DestinationS3BucketName", # required
    #     destination_s3_prefix: "DestinationS3Prefix",
    #     sns_topic_arn: "SnsTopicArn", # required
    #     customer_defined_values: {
    #       "OptionalKey" => "OptionalValue"
    #     }
    #   }
    #   options = {}
    #   response = client.generate_data_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     data_set_request_id: "DataSetRequestId"
    #   }
    # @return [Types::GenerateDataSetResult]
    def generate_data_set(params = {}, options = {})
      request = build_request(:generate_data_set, params)
      request.send_request(options)
    end

    # <i>This target has been deprecated.</i> Given a data set type and a from date, asynchronously publishes the requested customer support data
    #         to the specified S3 bucket and notifies the specified SNS topic once the data is available. Returns a unique request
    #         identifier that can be used to correlate requests with notifications from the SNS topic.
    #         Data sets will be published in comma-separated values (CSV) format with the file name {data_set_type}_YYYY-MM-DD'T'HH-mm-ss'Z'.csv.
    #         If a file with the same name already exists (e.g. if the same data set is requested twice), the original file will
    #         be overwritten by the new file.
    #         Requires a Role with an attached permissions policy providing Allow permissions for the following actions:
    #         s3:PutObject, s3:GetBucketLocation, sns:GetTopicAttributes, sns:Publish, iam:GetRolePolicy.
    # @param [Hash, Types::StartSupportDataExportRequest] params
    # @option params [String] :data_set_type
    #   <p>
    #               <i>This target has been deprecated.</i> Specifies the data set type to be written to the output csv file. The data set types customer_support_contacts_data and
    #              test_customer_support_contacts_data both result in a csv file containing the following fields: Product Id, Product Code, Customer Guid,
    #              Subscription Guid, Subscription Start Date, Organization, AWS Account Id, Given Name, Surname, Telephone Number, Email, Title,
    #              Country Code, ZIP Code, Operation Type, and Operation Time.
    #           </p>
    #           <p>
    #               <ul>
    #                   <li><i>customer_support_contacts_data</i> Customer support contact data. The data set will contain all changes (Creates, Updates, and Deletes) to customer support contact data from the date specified in the from_date parameter.</li>
    #                   <li><i>test_customer_support_contacts_data</i> An example data set containing static test data in the same format as customer_support_contacts_data</li>
    #               </ul>
    #           </p>
    # @option params [Time] :from_date
    #   <i>This target has been deprecated.</i> The start date from which to retrieve the data set in UTC.  This parameter only affects the customer_support_contacts_data data set type.
    # @option params [String] :role_name_arn
    #   <i>This target has been deprecated.</i> The Amazon Resource Name (ARN) of the Role with an attached permissions policy to interact with the provided
    #           AWS services.
    # @option params [String] :destination_s3_bucket_name
    #   <i>This target has been deprecated.</i> The name (friendly name, not ARN) of the destination S3 bucket.
    # @option params [String] :destination_s3_prefix
    #   <i>This target has been deprecated.</i> (Optional) The desired S3 prefix for the published data set, similar to a directory path in standard file systems.
    #           For example, if given the bucket name "mybucket" and the prefix "myprefix/mydatasets", the output file
    #           "outputfile" would be published to "s3://mybucket/myprefix/mydatasets/outputfile".
    #           If the prefix directory structure does not exist, it will be created.
    #           If no prefix is provided, the data set will be published to the S3 bucket root.
    # @option params [String] :sns_topic_arn
    #   <i>This target has been deprecated.</i> Amazon Resource Name (ARN) for the SNS Topic that will be notified when the data set has been published or if an
    #           error has occurred.
    # @option params [Hash<String, String>] :customer_defined_values
    #   <i>This target has been deprecated.</i> (Optional) Key-value pairs which will be returned, unmodified, in the
    #           Amazon SNS notification message and the data set metadata file.
    # @example Request syntax with placeholder values
    #   params = {
    #     data_set_type: "customer_support_contacts_data" # One of: ["customer_support_contacts_data", "test_customer_support_contacts_data"], # required
    #     from_date: Time.now, # required
    #     role_name_arn: "RoleNameArn", # required
    #     destination_s3_bucket_name: "DestinationS3BucketName", # required
    #     destination_s3_prefix: "DestinationS3Prefix",
    #     sns_topic_arn: "SnsTopicArn", # required
    #     customer_defined_values: {
    #       "OptionalKey" => "OptionalValue"
    #     }
    #   }
    #   options = {}
    #   response = client.start_support_data_export(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     data_set_request_id: "DataSetRequestId"
    #   }
    # @deprecated
    #   This target has been deprecated. As of December 2022 Product Support Connection is no longer supported.
    # @return [Types::StartSupportDataExportResult]
    def start_support_data_export(params = {}, options = {})
      request = build_request(:start_support_data_export, params)
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
      context[:gem_name] = 'aws-sdk-marketplacecommerceanalytics'
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
