# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::MarketplaceCommerceAnalytics
  module Types

    # Container for the parameters to the GenerateDataSet operation.
    #
    # @note When making an API call, you may pass GenerateDataSetRequest
    #   data as a hash:
    #
    #       {
    #         data_set_type: "customer_subscriber_hourly_monthly_subscriptions", # required, accepts customer_subscriber_hourly_monthly_subscriptions, customer_subscriber_annual_subscriptions, daily_business_usage_by_instance_type, daily_business_fees, daily_business_free_trial_conversions, daily_business_new_instances, daily_business_new_product_subscribers, daily_business_canceled_product_subscribers, monthly_revenue_billing_and_revenue_data, monthly_revenue_annual_subscriptions, monthly_revenue_field_demonstration_usage, monthly_revenue_flexible_payment_schedule, disbursed_amount_by_product, disbursed_amount_by_product_with_uncollected_funds, disbursed_amount_by_instance_hours, disbursed_amount_by_customer_geo, disbursed_amount_by_age_of_uncollected_funds, disbursed_amount_by_age_of_disbursed_funds, disbursed_amount_by_age_of_past_due_funds, disbursed_amount_by_uncollected_funds_breakdown, customer_profile_by_industry, customer_profile_by_revenue, customer_profile_by_geography, sales_compensation_billed_revenue, us_sales_and_use_tax_records
    #         data_set_publication_date: Time.now, # required
    #         role_name_arn: "RoleNameArn", # required
    #         destination_s3_bucket_name: "DestinationS3BucketName", # required
    #         destination_s3_prefix: "DestinationS3Prefix",
    #         sns_topic_arn: "SnsTopicArn", # required
    #         customer_defined_values: {
    #           "OptionalKey" => "OptionalValue",
    #         },
    #       }
    #
    # @!attribute [rw] data_set_type
    #   The desired data set type.
    #
    #   * **customer\_subscriber\_hourly\_monthly\_subscriptions**
    #     From 2017-09-15 to present: Available daily by 24:00 UTC.
    #
    #   * **customer\_subscriber\_annual\_subscriptions**
    #     From 2017-09-15 to present: Available daily by 24:00 UTC.
    #
    #   * **daily\_business\_usage\_by\_instance\_type**
    #     From 2017-09-15 to present: Available daily by 24:00 UTC.
    #
    #   * **daily\_business\_fees**
    #     From 2017-09-15 to present: Available daily by 24:00 UTC.
    #
    #   * **daily\_business\_free\_trial\_conversions**
    #     From 2017-09-15 to present: Available daily by 24:00 UTC.
    #
    #   * **daily\_business\_new\_instances**
    #     From 2017-09-15 to present: Available daily by 24:00 UTC.
    #
    #   * **daily\_business\_new\_product\_subscribers**
    #     From 2017-09-15 to present: Available daily by 24:00 UTC.
    #
    #   * **daily\_business\_canceled\_product\_subscribers**
    #     From 2017-09-15 to present: Available daily by 24:00 UTC.
    #
    #   * **monthly\_revenue\_billing\_and\_revenue\_data**
    #     From 2017-09-15 to present: Available monthly on the 15th day of
    #     the month by 24:00 UTC. Data includes metered transactions (e.g.
    #     hourly) from one month prior.
    #
    #   * **monthly\_revenue\_annual\_subscriptions**
    #     From 2017-09-15 to present: Available monthly on the 15th day of
    #     the month by 24:00 UTC. Data includes up-front software charges
    #     (e.g. annual) from one month prior.
    #
    #   * **monthly\_revenue\_field\_demonstration\_usage**
    #     From 2018-03-15 to present: Available monthly on the 15th day of
    #     the month by 24:00 UTC.
    #
    #   * **monthly\_revenue\_flexible\_payment\_schedule**
    #     From 2018-11-15 to present: Available monthly on the 15th day of
    #     the month by 24:00 UTC.
    #
    #   * **disbursed\_amount\_by\_product**
    #     From 2017-09-15 to present: Available every 30 days by 24:00 UTC.
    #
    #   * **disbursed\_amount\_by\_instance\_hours**
    #     From 2017-09-15 to present: Available every 30 days by 24:00 UTC.
    #
    #   * **disbursed\_amount\_by\_customer\_geo**
    #     From 2017-09-15 to present: Available every 30 days by 24:00 UTC.
    #
    #   * **disbursed\_amount\_by\_age\_of\_uncollected\_funds**
    #     From 2017-09-15 to present: Available every 30 days by 24:00 UTC.
    #
    #   * **disbursed\_amount\_by\_age\_of\_disbursed\_funds**
    #     From 2017-09-15 to present: Available every 30 days by 24:00 UTC.
    #
    #   * **disbursed\_amount\_by\_age\_of\_past\_due\_funds**
    #     From 2018-04-07 to present: Available every 30 days by 24:00 UTC.
    #
    #   * **disbursed\_amount\_by\_uncollected\_funds\_breakdown**
    #     From 2019-10-04 to present: Available every 30 days by 24:00 UTC.
    #
    #   * **sales\_compensation\_billed\_revenue**
    #     From 2017-09-15 to present: Available monthly on the 15th day of
    #     the month by 24:00 UTC. Data includes metered transactions (e.g.
    #     hourly) from one month prior, and up-front software charges (e.g.
    #     annual) from one month prior.
    #
    #   * **us\_sales\_and\_use\_tax\_records**
    #     From 2017-09-15 to present: Available monthly on the 15th day of
    #     the month by 24:00 UTC.
    #   @return [String]
    #
    # @!attribute [rw] data_set_publication_date
    #   The date a data set was published. For daily data sets, provide a
    #   date with day-level granularity for the desired day. For monthly
    #   data sets except those with prefix disbursed\_amount, provide a date
    #   with month-level granularity for the desired month (the day value
    #   will be ignored). For data sets with prefix disbursed\_amount,
    #   provide a date with day-level granularity for the desired day. For
    #   these data sets we will look backwards in time over the range of 31
    #   days until the first data set is found (the latest one).
    #   @return [Time]
    #
    # @!attribute [rw] role_name_arn
    #   The Amazon Resource Name (ARN) of the Role with an attached
    #   permissions policy to interact with the provided AWS services.
    #   @return [String]
    #
    # @!attribute [rw] destination_s3_bucket_name
    #   The name (friendly name, not ARN) of the destination S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] destination_s3_prefix
    #   (Optional) The desired S3 prefix for the published data set, similar
    #   to a directory path in standard file systems. For example, if given
    #   the bucket name "mybucket" and the prefix "myprefix/mydatasets",
    #   the output file "outputfile" would be published to
    #   "s3://mybucket/myprefix/mydatasets/outputfile". If the prefix
    #   directory structure does not exist, it will be created. If no prefix
    #   is provided, the data set will be published to the S3 bucket root.
    #   @return [String]
    #
    # @!attribute [rw] sns_topic_arn
    #   Amazon Resource Name (ARN) for the SNS Topic that will be notified
    #   when the data set has been published or if an error has occurred.
    #   @return [String]
    #
    # @!attribute [rw] customer_defined_values
    #   (Optional) Key-value pairs which will be returned, unmodified, in
    #   the Amazon SNS notification message and the data set metadata file.
    #   These key-value pairs can be used to correlated responses with
    #   tracking information from other systems.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplacecommerceanalytics-2015-07-01/GenerateDataSetRequest AWS API Documentation
    #
    class GenerateDataSetRequest < Struct.new(
      :data_set_type,
      :data_set_publication_date,
      :role_name_arn,
      :destination_s3_bucket_name,
      :destination_s3_prefix,
      :sns_topic_arn,
      :customer_defined_values)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the result of the GenerateDataSet operation.
    #
    # @!attribute [rw] data_set_request_id
    #   A unique identifier representing a specific request to the
    #   GenerateDataSet operation. This identifier can be used to correlate
    #   a request with notifications from the SNS topic.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplacecommerceanalytics-2015-07-01/GenerateDataSetResult AWS API Documentation
    #
    class GenerateDataSetResult < Struct.new(
      :data_set_request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # This exception is thrown when an internal service error occurs.
    #
    # @!attribute [rw] message
    #   This message describes details of the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplacecommerceanalytics-2015-07-01/MarketplaceCommerceAnalyticsException AWS API Documentation
    #
    class MarketplaceCommerceAnalyticsException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the parameters to the StartSupportDataExport operation.
    #
    # @note When making an API call, you may pass StartSupportDataExportRequest
    #   data as a hash:
    #
    #       {
    #         data_set_type: "customer_support_contacts_data", # required, accepts customer_support_contacts_data, test_customer_support_contacts_data
    #         from_date: Time.now, # required
    #         role_name_arn: "RoleNameArn", # required
    #         destination_s3_bucket_name: "DestinationS3BucketName", # required
    #         destination_s3_prefix: "DestinationS3Prefix",
    #         sns_topic_arn: "SnsTopicArn", # required
    #         customer_defined_values: {
    #           "OptionalKey" => "OptionalValue",
    #         },
    #       }
    #
    # @!attribute [rw] data_set_type
    #   Specifies the data set type to be written to the output csv file.
    #   The data set types customer\_support\_contacts\_data and
    #   test\_customer\_support\_contacts\_data both result in a csv file
    #   containing the following fields: Product Id, Product Code, Customer
    #   Guid, Subscription Guid, Subscription Start Date, Organization, AWS
    #   Account Id, Given Name, Surname, Telephone Number, Email, Title,
    #   Country Code, ZIP Code, Operation Type, and Operation Time.
    #
    #   * *customer\_support\_contacts\_data* Customer support contact data.
    #     The data set will contain all changes (Creates, Updates, and
    #     Deletes) to customer support contact data from the date specified
    #     in the from\_date parameter.
    #   * *test\_customer\_support\_contacts\_data* An example data set
    #     containing static test data in the same format as
    #     customer\_support\_contacts\_data
    #   @return [String]
    #
    # @!attribute [rw] from_date
    #   The start date from which to retrieve the data set in UTC. This
    #   parameter only affects the customer\_support\_contacts\_data data
    #   set type.
    #   @return [Time]
    #
    # @!attribute [rw] role_name_arn
    #   The Amazon Resource Name (ARN) of the Role with an attached
    #   permissions policy to interact with the provided AWS services.
    #   @return [String]
    #
    # @!attribute [rw] destination_s3_bucket_name
    #   The name (friendly name, not ARN) of the destination S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] destination_s3_prefix
    #   (Optional) The desired S3 prefix for the published data set, similar
    #   to a directory path in standard file systems. For example, if given
    #   the bucket name "mybucket" and the prefix "myprefix/mydatasets",
    #   the output file "outputfile" would be published to
    #   "s3://mybucket/myprefix/mydatasets/outputfile". If the prefix
    #   directory structure does not exist, it will be created. If no prefix
    #   is provided, the data set will be published to the S3 bucket root.
    #   @return [String]
    #
    # @!attribute [rw] sns_topic_arn
    #   Amazon Resource Name (ARN) for the SNS Topic that will be notified
    #   when the data set has been published or if an error has occurred.
    #   @return [String]
    #
    # @!attribute [rw] customer_defined_values
    #   (Optional) Key-value pairs which will be returned, unmodified, in
    #   the Amazon SNS notification message and the data set metadata file.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplacecommerceanalytics-2015-07-01/StartSupportDataExportRequest AWS API Documentation
    #
    class StartSupportDataExportRequest < Struct.new(
      :data_set_type,
      :from_date,
      :role_name_arn,
      :destination_s3_bucket_name,
      :destination_s3_prefix,
      :sns_topic_arn,
      :customer_defined_values)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the result of the StartSupportDataExport operation.
    #
    # @!attribute [rw] data_set_request_id
    #   A unique identifier representing a specific request to the
    #   StartSupportDataExport operation. This identifier can be used to
    #   correlate a request with notifications from the SNS topic.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplacecommerceanalytics-2015-07-01/StartSupportDataExportResult AWS API Documentation
    #
    class StartSupportDataExportResult < Struct.new(
      :data_set_request_id)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
