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
require 'aws-sdk-core/plugins/protocols/json_rpc.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:marketplacecommerceanalytics)

module Aws::MarketplaceCommerceAnalytics
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :marketplacecommerceanalytics

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
    add_plugin(Aws::Plugins::Protocols::JsonRpc)

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
    # @option options [Boolean] :simple_json (false)
    #   Disables request parameter conversion, validation, and formatting.
    #   Also disable response data type conversions. This option is useful
    #   when you want to ensure the highest level of performance by
    #   avoiding overhead of walking request parameters and response data
    #   structures.
    #
    #   When `:simple_json` is enabled, the request parameters hash must
    #   be formatted exactly as the DynamoDB API expects.
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

    # Given a data set type and data set publication date, asynchronously
    # publishes the requested data set to the specified S3 bucket and
    # notifies the specified SNS topic once the data is available. Returns a
    # unique request identifier that can be used to correlate requests with
    # notifications from the SNS topic. Data sets will be published in
    # comma-separated values (CSV) format with the file name
    # \\\{data\_set\_type\\}\_YYYY-MM-DD.csv. If a file with the same name
    # already exists (e.g. if the same data set is requested twice), the
    # original file will be overwritten by the new file. Requires a Role
    # with an attached permissions policy providing Allow permissions for
    # the following actions: s3:PutObject, s3:GetBucketLocation,
    # sns:GetTopicAttributes, sns:Publish, iam:GetRolePolicy.
    #
    # @option params [required, String] :data_set_type
    #   The desired data set type.
    #
    #   * **customer\_subscriber\_hourly\_monthly\_subscriptions**
    #     From 2014-07-21 to present: Available daily by 5:00 PM Pacific Time.
    #
    #   * **customer\_subscriber\_annual\_subscriptions**
    #     From 2014-07-21 to present: Available daily by 5:00 PM Pacific Time.
    #
    #   * **daily\_business\_usage\_by\_instance\_type**
    #     From 2015-01-26 to present: Available daily by 5:00 PM Pacific Time.
    #
    #   * **daily\_business\_fees**
    #     From 2015-01-26 to present: Available daily by 5:00 PM Pacific Time.
    #
    #   * **daily\_business\_free\_trial\_conversions**
    #     From 2015-01-26 to present: Available daily by 5:00 PM Pacific Time.
    #
    #   * **daily\_business\_new\_instances**
    #     From 2015-01-26 to present: Available daily by 5:00 PM Pacific Time.
    #
    #   * **daily\_business\_new\_product\_subscribers**
    #     From 2015-01-26 to present: Available daily by 5:00 PM Pacific Time.
    #
    #   * **daily\_business\_canceled\_product\_subscribers**
    #     From 2015-01-26 to present: Available daily by 5:00 PM Pacific Time.
    #
    #   * **monthly\_revenue\_billing\_and\_revenue\_data**
    #     From 2015-02 to 2017-06: Available monthly on the 4th day of the
    #     month by 5:00pm Pacific Time. Data includes metered transactions
    #     (e.g. hourly) from two months prior.
    #
    #     From 2017-07 to present: Available monthly on the 15th day of the
    #     month by 5:00pm Pacific Time. Data includes metered transactions
    #     (e.g. hourly) from one month prior.
    #
    #   * **monthly\_revenue\_annual\_subscriptions**
    #     From 2015-02 to 2017-06: Available monthly on the 4th day of the
    #     month by 5:00pm Pacific Time. Data includes up-front software
    #     charges (e.g. annual) from one month prior.
    #
    #     From 2017-07 to present: Available monthly on the 15th day of the
    #     month by 5:00pm Pacific Time. Data includes up-front software
    #     charges (e.g. annual) from one month prior.
    #
    #   * **disbursed\_amount\_by\_product**
    #     From 2015-01-26 to present: Available every 30 days by 5:00 PM
    #     Pacific Time.
    #
    #   * **disbursed\_amount\_by\_product\_with\_uncollected\_funds**
    #     From 2012-04-19 to 2015-01-25: Available every 30 days by 5:00 PM
    #     Pacific Time.
    #
    #     From 2015-01-26 to present: This data set was split into three data
    #     sets: disbursed\_amount\_by\_product,
    #     disbursed\_amount\_by\_age\_of\_uncollected\_funds, and
    #     disbursed\_amount\_by\_age\_of\_disbursed\_funds.
    #
    #   * **disbursed\_amount\_by\_instance\_hours**
    #     From 2012-09-04 to present: Available every 30 days by 5:00 PM
    #     Pacific Time.
    #
    #   * **disbursed\_amount\_by\_customer\_geo**
    #     From 2012-04-19 to present: Available every 30 days by 5:00 PM
    #     Pacific Time.
    #
    #   * **disbursed\_amount\_by\_age\_of\_uncollected\_funds**
    #     From 2015-01-26 to present: Available every 30 days by 5:00 PM
    #     Pacific Time.
    #
    #   * **disbursed\_amount\_by\_age\_of\_disbursed\_funds**
    #     From 2015-01-26 to present: Available every 30 days by 5:00 PM
    #     Pacific Time.
    #
    #   * **customer\_profile\_by\_industry**
    #     From 2015-10-01 to 2017-06-29: Available daily by 5:00 PM Pacific
    #     Time.
    #
    #     From 2017-06-30 to present: This data set is no longer available.
    #
    #   * **customer\_profile\_by\_revenue**
    #     From 2015-10-01 to 2017-06-29: Available daily by 5:00 PM Pacific
    #     Time.
    #
    #     From 2017-06-30 to present: This data set is no longer available.
    #
    #   * **customer\_profile\_by\_geography**
    #     From 2015-10-01 to 2017-06-29: Available daily by 5:00 PM Pacific
    #     Time.
    #
    #     From 2017-06-30 to present: This data set is no longer available.
    #
    #   * **sales\_compensation\_billed\_revenue**
    #     From 2016-12 to 2017-06: Available monthly on the 4th day of the
    #     month by 5:00pm Pacific Time. Data includes metered transactions
    #     (e.g. hourly) from two months prior, and up-front software charges
    #     (e.g. annual) from one month prior.
    #
    #     From 2017-06 to present: Available monthly on the 15th day of the
    #     month by 5:00pm Pacific Time. Data includes metered transactions
    #     (e.g. hourly) from one month prior, and up-front software charges
    #     (e.g. annual) from one month prior.
    #
    #   * **us\_sales\_and\_use\_tax\_records**
    #     From 2017-02-15 to present: Available monthly on the 15th day of the
    #     month by 5:00 PM Pacific Time.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :data_set_publication_date
    #   The date a data set was published. For daily data sets, provide a date
    #   with day-level granularity for the desired day. For weekly data sets,
    #   provide a date with day-level granularity within the desired week (the
    #   day value will be ignored). For monthly data sets, provide a date with
    #   month-level granularity for the desired month (the day value will be
    #   ignored).
    #
    # @option params [required, String] :role_name_arn
    #   The Amazon Resource Name (ARN) of the Role with an attached
    #   permissions policy to interact with the provided AWS services.
    #
    # @option params [required, String] :destination_s3_bucket_name
    #   The name (friendly name, not ARN) of the destination S3 bucket.
    #
    # @option params [String] :destination_s3_prefix
    #   (Optional) The desired S3 prefix for the published data set, similar
    #   to a directory path in standard file systems. For example, if given
    #   the bucket name "mybucket" and the prefix "myprefix/mydatasets",
    #   the output file "outputfile" would be published to
    #   "s3://mybucket/myprefix/mydatasets/outputfile". If the prefix
    #   directory structure does not exist, it will be created. If no prefix
    #   is provided, the data set will be published to the S3 bucket root.
    #
    # @option params [required, String] :sns_topic_arn
    #   Amazon Resource Name (ARN) for the SNS Topic that will be notified
    #   when the data set has been published or if an error has occurred.
    #
    # @option params [Hash<String,String>] :customer_defined_values
    #   (Optional) Key-value pairs which will be returned, unmodified, in the
    #   Amazon SNS notification message and the data set metadata file. These
    #   key-value pairs can be used to correlated responses with tracking
    #   information from other systems.
    #
    # @return [Types::GenerateDataSetResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GenerateDataSetResult#data_set_request_id #data_set_request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.generate_data_set({
    #     data_set_type: "customer_subscriber_hourly_monthly_subscriptions", # required, accepts customer_subscriber_hourly_monthly_subscriptions, customer_subscriber_annual_subscriptions, daily_business_usage_by_instance_type, daily_business_fees, daily_business_free_trial_conversions, daily_business_new_instances, daily_business_new_product_subscribers, daily_business_canceled_product_subscribers, monthly_revenue_billing_and_revenue_data, monthly_revenue_annual_subscriptions, disbursed_amount_by_product, disbursed_amount_by_product_with_uncollected_funds, disbursed_amount_by_instance_hours, disbursed_amount_by_customer_geo, disbursed_amount_by_age_of_uncollected_funds, disbursed_amount_by_age_of_disbursed_funds, customer_profile_by_industry, customer_profile_by_revenue, customer_profile_by_geography, sales_compensation_billed_revenue, us_sales_and_use_tax_records
    #     data_set_publication_date: Time.now, # required
    #     role_name_arn: "RoleNameArn", # required
    #     destination_s3_bucket_name: "DestinationS3BucketName", # required
    #     destination_s3_prefix: "DestinationS3Prefix",
    #     sns_topic_arn: "SnsTopicArn", # required
    #     customer_defined_values: {
    #       "OptionalKey" => "OptionalValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.data_set_request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplacecommerceanalytics-2015-07-01/GenerateDataSet AWS API Documentation
    #
    # @overload generate_data_set(params = {})
    # @param [Hash] params ({})
    def generate_data_set(params = {}, options = {})
      req = build_request(:generate_data_set, params)
      req.send_request(options)
    end

    # Given a data set type and a from date, asynchronously publishes the
    # requested customer support data to the specified S3 bucket and
    # notifies the specified SNS topic once the data is available. Returns a
    # unique request identifier that can be used to correlate requests with
    # notifications from the SNS topic. Data sets will be published in
    # comma-separated values (CSV) format with the file name
    # \\\{data\_set\_type\\}\_YYYY-MM-DD'T'HH-mm-ss'Z'.csv. If a file
    # with the same name already exists (e.g. if the same data set is
    # requested twice), the original file will be overwritten by the new
    # file. Requires a Role with an attached permissions policy providing
    # Allow permissions for the following actions: s3:PutObject,
    # s3:GetBucketLocation, sns:GetTopicAttributes, sns:Publish,
    # iam:GetRolePolicy.
    #
    # @option params [required, String] :data_set_type
    #   Specifies the data set type to be written to the output csv file. The
    #   data set types customer\_support\_contacts\_data and
    #   test\_customer\_support\_contacts\_data both result in a csv file
    #   containing the following fields: Product Id, Product Code, Customer
    #   Guid, Subscription Guid, Subscription Start Date, Organization, AWS
    #   Account Id, Given Name, Surname, Telephone Number, Email, Title,
    #   Country Code, ZIP Code, Operation Type, and Operation Time.
    #
    #   * *customer\_support\_contacts\_data* Customer support contact data.
    #     The data set will contain all changes (Creates, Updates, and
    #     Deletes) to customer support contact data from the date specified in
    #     the from\_date parameter.
    #   * *test\_customer\_support\_contacts\_data* An example data set
    #     containing static test data in the same format as
    #     customer\_support\_contacts\_data
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :from_date
    #   The start date from which to retrieve the data set in UTC. This
    #   parameter only affects the customer\_support\_contacts\_data data set
    #   type.
    #
    # @option params [required, String] :role_name_arn
    #   The Amazon Resource Name (ARN) of the Role with an attached
    #   permissions policy to interact with the provided AWS services.
    #
    # @option params [required, String] :destination_s3_bucket_name
    #   The name (friendly name, not ARN) of the destination S3 bucket.
    #
    # @option params [String] :destination_s3_prefix
    #   (Optional) The desired S3 prefix for the published data set, similar
    #   to a directory path in standard file systems. For example, if given
    #   the bucket name "mybucket" and the prefix "myprefix/mydatasets",
    #   the output file "outputfile" would be published to
    #   "s3://mybucket/myprefix/mydatasets/outputfile". If the prefix
    #   directory structure does not exist, it will be created. If no prefix
    #   is provided, the data set will be published to the S3 bucket root.
    #
    # @option params [required, String] :sns_topic_arn
    #   Amazon Resource Name (ARN) for the SNS Topic that will be notified
    #   when the data set has been published or if an error has occurred.
    #
    # @option params [Hash<String,String>] :customer_defined_values
    #   (Optional) Key-value pairs which will be returned, unmodified, in the
    #   Amazon SNS notification message and the data set metadata file.
    #
    # @return [Types::StartSupportDataExportResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartSupportDataExportResult#data_set_request_id #data_set_request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_support_data_export({
    #     data_set_type: "customer_support_contacts_data", # required, accepts customer_support_contacts_data, test_customer_support_contacts_data
    #     from_date: Time.now, # required
    #     role_name_arn: "RoleNameArn", # required
    #     destination_s3_bucket_name: "DestinationS3BucketName", # required
    #     destination_s3_prefix: "DestinationS3Prefix",
    #     sns_topic_arn: "SnsTopicArn", # required
    #     customer_defined_values: {
    #       "OptionalKey" => "OptionalValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.data_set_request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplacecommerceanalytics-2015-07-01/StartSupportDataExport AWS API Documentation
    #
    # @overload start_support_data_export(params = {})
    # @param [Hash] params ({})
    def start_support_data_export(params = {}, options = {})
      req = build_request(:start_support_data_export, params)
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
      context[:gem_name] = 'aws-sdk-marketplacecommerceanalytics'
      context[:gem_version] = '1.3.0'
      Seahorse::Client::Request.new(handlers, context)
    end

    # @api private
    # @deprecated
    def waiter_names
      []
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
