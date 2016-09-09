# WARNING ABOUT GENERATED CODE
#
# This file is generated from a JSON service definition. See the contributing
# guide for more information:
#
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE
module Aws
  module MarketplaceCommerceAnalytics
    class Client < Seahorse::Client::Base

      include Aws::ClientStubs
      include Aws::ClientWaiters

      @identifier = :marketplacecommerceanalytics

      set_api(ClientApi::API)

      add_plugin(Seahorse::Client::Plugins::ContentLength)
      add_plugin(Aws::Plugins::Logging)
      add_plugin(Aws::Plugins::ParamConverter)
      add_plugin(Aws::Plugins::ParamValidator)
      add_plugin(Aws::Plugins::UserAgent)
      add_plugin(Aws::Plugins::HelpfulSocketErrors)
      add_plugin(Aws::Plugins::RetryErrors)
      add_plugin(Aws::Plugins::GlobalConfiguration)
      add_plugin(Aws::Plugins::RegionalEndpoint)
      add_plugin(Aws::Plugins::RequestSigner)
      add_plugin(Aws::Plugins::ResponsePaging)
      add_plugin(Aws::Plugins::StubResponses)
      add_plugin(Aws::Plugins::Protocols::JsonRpc)

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
      # @option params [required, String] :data_set_type
      #   The desired data set type.
      #
      #   * *customer\_subscriber\_hourly\_monthly\_subscriptions* - Available
      #     daily by 5:00 PM Pacific Time since 2014-07-21.
      #   * *customer\_subscriber\_annual\_subscriptions* - Available daily by
      #     5:00 PM Pacific Time since 2014-07-21.
      #   * *daily\_business\_usage\_by\_instance\_type* - Available daily by
      #     5:00 PM Pacific Time since 2015-01-26.
      #   * *daily\_business\_fees* - Available daily by 5:00 PM Pacific Time
      #     since 2015-01-26.
      #   * *daily\_business\_free\_trial\_conversions* - Available daily by
      #     5:00 PM Pacific Time since 2015-01-26.
      #   * *daily\_business\_new\_instances* - Available daily by 5:00 PM
      #     Pacific Time since 2015-01-26.
      #   * *daily\_business\_new\_product\_subscribers* - Available daily by
      #     5:00 PM Pacific Time since 2015-01-26.
      #   * *daily\_business\_canceled\_product\_subscribers* - Available daily
      #     by 5:00 PM Pacific Time since 2015-01-26.
      #   * *monthly\_revenue\_billing\_and\_revenue\_data* - Available monthly
      #     on the 4th day of the month by 5:00 PM Pacific Time since 2015-02.
      #   * *monthly\_revenue\_annual\_subscriptions* - Available monthly on the
      #     4th day of the month by 5:00 PM Pacific Time since 2015-02.
      #   * *disbursed\_amount\_by\_product* - Available every 30 days by 5:00
      #     PM Pacific Time since 2015-01-26.
      #   * *disbursed\_amount\_by\_product\_with\_uncollected\_funds* -This
      #     data set is only available from 2012-04-19 until 2015-01-25. After
      #     2015-01-25, this data set was split into three data sets:
      #     disbursed\_amount\_by\_product,
      #     disbursed\_amount\_by\_age\_of\_uncollected\_funds, and
      #     disbursed\_amount\_by\_age\_of\_disbursed\_funds.
      #   * *disbursed\_amount\_by\_customer\_geo* - Available every 30 days by
      #     5:00 PM Pacific Time since 2012-04-19.
      #   * *disbursed\_amount\_by\_age\_of\_uncollected\_funds* - Available
      #     every 30 days by 5:00 PM Pacific Time since 2015-01-26.
      #   * *disbursed\_amount\_by\_age\_of\_disbursed\_funds* - Available every
      #     30 days by 5:00 PM Pacific Time since 2015-01-26.
      #   * *customer\_profile\_by\_industry* - Available daily by 5:00 PM
      #     Pacific Time since 2015-10-01.
      #   * *customer\_profile\_by\_revenue* - Available daily by 5:00 PM
      #     Pacific Time since 2015-10-01.
      #   * *customer\_profile\_by\_geography* - Available daily by 5:00 PM
      #     Pacific Time since 2015-10-01.
      # @option params [required, Time,DateTime,Date,Integer,String] :data_set_publication_date
      #   The date a data set was published. For daily data sets, provide a date
      #   with day-level granularity for the desired day. For weekly data sets,
      #   provide a date with day-level granularity within the desired week (the
      #   day value will be ignored). For monthly data sets, provide a date with
      #   month-level granularity for the desired month (the day value will be
      #   ignored).
      # @option params [required, String] :role_name_arn
      #   The Amazon Resource Name (ARN) of the Role with an attached
      #   permissions policy to interact with the provided AWS services.
      # @option params [required, String] :destination_s3_bucket_name
      #   The name (friendly name, not ARN) of the destination S3 bucket.
      # @option params [String] :destination_s3_prefix
      #   (Optional) The desired S3 prefix for the published data set, similar
      #   to a directory path in standard file systems. For example, if given
      #   the bucket name \"mybucket\" and the prefix \"myprefix/mydatasets\",
      #   the output file \"outputfile\" would be published to
      #   \"s3://mybucket/myprefix/mydatasets/outputfile\". If the prefix
      #   directory structure does not exist, it will be created. If no prefix
      #   is provided, the data set will be published to the S3 bucket root.
      # @option params [required, String] :sns_topic_arn
      #   Amazon Resource Name (ARN) for the SNS Topic that will be notified
      #   when the data set has been published or if an error has occurred.
      # @option params [Hash<String,String>] :customer_defined_values
      #   (Optional) Key-value pairs which will be returned, unmodified, in the
      #   Amazon SNS notification message and the data set metadata file. These
      #   key-value pairs can be used to correlated responses with tracking
      #   information from other systems.
      # @return [Types::GenerateDataSetResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::GenerateDataSetResult#data_set_request_id #dataSetRequestId} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.generate_data_set({
      #     data_set_type: "customer_subscriber_hourly_monthly_subscriptions", # required, accepts customer_subscriber_hourly_monthly_subscriptions, customer_subscriber_annual_subscriptions, daily_business_usage_by_instance_type, daily_business_fees, daily_business_free_trial_conversions, daily_business_new_instances, daily_business_new_product_subscribers, daily_business_canceled_product_subscribers, monthly_revenue_billing_and_revenue_data, monthly_revenue_annual_subscriptions, disbursed_amount_by_product, disbursed_amount_by_product_with_uncollected_funds, disbursed_amount_by_customer_geo, disbursed_amount_by_age_of_uncollected_funds, disbursed_amount_by_age_of_disbursed_funds, customer_profile_by_industry, customer_profile_by_revenue, customer_profile_by_geography
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
      #   resp.data_set_request_id #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
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
      # \\\{data\_set\_type\\}\_YYYY-MM-DD\'T\'HH-mm-ss\'Z\'.csv. If a file
      # with the same name already exists (e.g. if the same data set is
      # requested twice), the original file will be overwritten by the new
      # file. Requires a Role with an attached permissions policy providing
      # Allow permissions for the following actions: s3:PutObject,
      # s3:GetBucketLocation, sns:GetTopicAttributes, sns:Publish,
      # iam:GetRolePolicy.
      # @option params [required, String] :data_set_type
      #   Specifies the data set type to be written to the output csv file. The
      #   data set types customer\_support\_contacts\_data and
      #   test\_customer\_support\_contacts\_data both result in a csv file
      #   containing the following fields: Product Id, Customer Guid,
      #   Subscription Guid, Subscription Start Date, Organization, AWS Account
      #   Id, Given Name, Surname, Telephone Number, Email, Title, Country Code,
      #   ZIP Code, Operation Type, and Operation Time. Currently, only the
      #   test\_customer\_support\_contacts\_data value is supported
      #
      #   * *customer\_support\_contacts\_data* Customer support contact data.
      #     The data set will contain all changes (Creates, Updates, and
      #     Deletes) to customer support contact data from the date specified in
      #     the from\_date parameter.
      #   * *test\_customer\_support\_contacts\_data* An example data set
      #     containing static test data in the same format as
      #     customer\_support\_contacts\_data
      # @option params [required, Time,DateTime,Date,Integer,String] :from_date
      #   The start date from which to retrieve the data set. This parameter
      #   only affects the customer\_support\_contacts\_data data set type.
      # @option params [required, String] :role_name_arn
      #   The Amazon Resource Name (ARN) of the Role with an attached
      #   permissions policy to interact with the provided AWS services.
      # @option params [required, String] :destination_s3_bucket_name
      #   The name (friendly name, not ARN) of the destination S3 bucket.
      # @option params [String] :destination_s3_prefix
      #   (Optional) The desired S3 prefix for the published data set, similar
      #   to a directory path in standard file systems. For example, if given
      #   the bucket name \"mybucket\" and the prefix \"myprefix/mydatasets\",
      #   the output file \"outputfile\" would be published to
      #   \"s3://mybucket/myprefix/mydatasets/outputfile\". If the prefix
      #   directory structure does not exist, it will be created. If no prefix
      #   is provided, the data set will be published to the S3 bucket root.
      # @option params [required, String] :sns_topic_arn
      #   Amazon Resource Name (ARN) for the SNS Topic that will be notified
      #   when the data set has been published or if an error has occurred.
      # @option params [Hash<String,String>] :customer_defined_values
      #   (Optional) Key-value pairs which will be returned, unmodified, in the
      #   Amazon SNS notification message and the data set metadata file.
      # @return [Types::StartSupportDataExportResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::StartSupportDataExportResult#data_set_request_id #dataSetRequestId} => String
      #
      # @example Request syntax with placeholder values
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
      #   resp.data_set_request_id #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def start_support_data_export(params = {}, options = {})
        req = build_request(:start_support_data_export, params)
        req.send_request(options)
      end

      # @!endgroup

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
        {}
      end

      # @api private
      class << self

        # @api private
        attr_reader :identifier

        def errors_module
          Errors
        end

      end
    end
  end
end
