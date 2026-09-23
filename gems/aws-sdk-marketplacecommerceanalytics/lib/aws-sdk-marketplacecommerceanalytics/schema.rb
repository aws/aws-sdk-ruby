# frozen_string_literal: true

# This is generated code!

module Aws::MarketplaceCommerceAnalytics
  # This module contains a schema composed of shapes used by the client.
  module Schema

    CustomerDefinedValues = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.marketplacecommerceanalytics#CustomerDefinedValues", name: "CustomerDefinedValues", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    DataSetPublicationDate = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.marketplacecommerceanalytics#DataSetPublicationDate", name: "DataSetPublicationDate")
    DataSetRequestId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplacecommerceanalytics#DataSetRequestId", name: "DataSetRequestId")
    DataSetType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.marketplacecommerceanalytics#DataSetType", name: "DataSetType", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    DestinationS3BucketName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplacecommerceanalytics#DestinationS3BucketName", name: "DestinationS3BucketName", traits: {"smithy.api#length" => {"min" => 1, "max" => 63}})
    DestinationS3Prefix = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplacecommerceanalytics#DestinationS3Prefix", name: "DestinationS3Prefix")
    ExceptionMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplacecommerceanalytics#ExceptionMessage", name: "ExceptionMessage")
    FromDate = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.marketplacecommerceanalytics#FromDate", name: "FromDate")
    GenerateDataSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecommerceanalytics#GenerateDataSetRequest", name: "GenerateDataSetRequest")
    GenerateDataSetResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecommerceanalytics#GenerateDataSetResult", name: "GenerateDataSetResult")
    MarketplaceCommerceAnalyticsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecommerceanalytics#MarketplaceCommerceAnalyticsException", name: "MarketplaceCommerceAnalyticsException", traits: {"smithy.api#error" => "server"})
    OptionalKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplacecommerceanalytics#OptionalKey", name: "OptionalKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    OptionalValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplacecommerceanalytics#OptionalValue", name: "OptionalValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    RoleNameArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplacecommerceanalytics#RoleNameArn", name: "RoleNameArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    SnsTopicArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplacecommerceanalytics#SnsTopicArn", name: "SnsTopicArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    StartSupportDataExportRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecommerceanalytics#StartSupportDataExportRequest", name: "StartSupportDataExportRequest", traits: {"smithy.api#deprecated" => {"message" => "This target has been deprecated. As of December 2022 Product Support Connection is no longer supported."}})
    StartSupportDataExportResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecommerceanalytics#StartSupportDataExportResult", name: "StartSupportDataExportResult", traits: {"smithy.api#deprecated" => {"message" => "This target has been deprecated. As of December 2022 Product Support Connection is no longer supported."}})
    SupportDataSetType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.marketplacecommerceanalytics#SupportDataSetType", name: "SupportDataSetType", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})

    CustomerDefinedValues.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: OptionalKey, name: "key"))
    CustomerDefinedValues.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: OptionalValue, name: "value"))
    DataSetType.add_member(:customer_subscriber_hourly_monthly_subscriptions, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CUSTOMER_SUBSCRIBER_HOURLY_MONTHLY_SUBSCRIPTIONS", traits: {"smithy.api#enumValue" => "customer_subscriber_hourly_monthly_subscriptions"}))
    DataSetType.add_member(:customer_subscriber_annual_subscriptions, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CUSTOMER_SUBSCRIBER_ANNUAL_SUBSCRIPTIONS", traits: {"smithy.api#enumValue" => "customer_subscriber_annual_subscriptions"}))
    DataSetType.add_member(:daily_business_usage_by_instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DAILY_BUSINESS_USAGE_BY_INSTANCE_TYPE", traits: {"smithy.api#enumValue" => "daily_business_usage_by_instance_type"}))
    DataSetType.add_member(:daily_business_fees, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DAILY_BUSINESS_FEES", traits: {"smithy.api#enumValue" => "daily_business_fees"}))
    DataSetType.add_member(:daily_business_free_trial_conversions, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DAILY_BUSINESS_FREE_TRIAL_CONVERSIONS", traits: {"smithy.api#enumValue" => "daily_business_free_trial_conversions"}))
    DataSetType.add_member(:daily_business_new_instances, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DAILY_BUSINESS_NEW_INSTANCES", traits: {"smithy.api#enumValue" => "daily_business_new_instances"}))
    DataSetType.add_member(:daily_business_new_product_subscribers, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DAILY_BUSINESS_NEW_PRODUCT_SUBSCRIBERS", traits: {"smithy.api#enumValue" => "daily_business_new_product_subscribers"}))
    DataSetType.add_member(:daily_business_canceled_product_subscribers, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DAILY_BUSINESS_CANCELED_PRODUCT_SUBSCRIBERS", traits: {"smithy.api#enumValue" => "daily_business_canceled_product_subscribers"}))
    DataSetType.add_member(:monthly_revenue_billing_and_revenue_data, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MONTHLY_REVENUE_BILLING_AND_REVENUE_DATA", traits: {"smithy.api#enumValue" => "monthly_revenue_billing_and_revenue_data"}))
    DataSetType.add_member(:monthly_revenue_annual_subscriptions, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MONTHLY_REVENUE_ANNUAL_SUBSCRIPTIONS", traits: {"smithy.api#enumValue" => "monthly_revenue_annual_subscriptions"}))
    DataSetType.add_member(:monthly_revenue_field_demonstration_usage, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MONTHLY_REVENUE_FIELD_DEMONSTRATION_USAGE", traits: {"smithy.api#enumValue" => "monthly_revenue_field_demonstration_usage"}))
    DataSetType.add_member(:monthly_revenue_flexible_payment_schedule, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MONTHLY_REVENUE_FLEXIBLE_PAYMENT_SCHEDULE", traits: {"smithy.api#enumValue" => "monthly_revenue_flexible_payment_schedule"}))
    DataSetType.add_member(:disbursed_amount_by_product, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISBURSED_AMOUNT_BY_PRODUCT", traits: {"smithy.api#enumValue" => "disbursed_amount_by_product"}))
    DataSetType.add_member(:disbursed_amount_by_product_with_uncollected_funds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISBURSED_AMOUNT_BY_PRODUCT_WITH_UNCOLLECTED_FUNDS", traits: {"smithy.api#enumValue" => "disbursed_amount_by_product_with_uncollected_funds"}))
    DataSetType.add_member(:disbursed_amount_by_instance_hours, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISBURSED_AMOUNT_BY_INSTANCE_HOURS", traits: {"smithy.api#enumValue" => "disbursed_amount_by_instance_hours"}))
    DataSetType.add_member(:disbursed_amount_by_customer_geo, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISBURSED_AMOUNT_BY_CUSTOMER_GEO", traits: {"smithy.api#enumValue" => "disbursed_amount_by_customer_geo"}))
    DataSetType.add_member(:disbursed_amount_by_age_of_uncollected_funds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISBURSED_AMOUNT_BY_AGE_OF_UNCOLLECTED_FUNDS", traits: {"smithy.api#enumValue" => "disbursed_amount_by_age_of_uncollected_funds"}))
    DataSetType.add_member(:disbursed_amount_by_age_of_disbursed_funds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISBURSED_AMOUNT_BY_AGE_OF_DISBURSED_FUNDS", traits: {"smithy.api#enumValue" => "disbursed_amount_by_age_of_disbursed_funds"}))
    DataSetType.add_member(:disbursed_amount_by_age_of_past_due_funds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISBURSED_AMOUNT_BY_AGE_OF_PAST_DUE_FUNDS", traits: {"smithy.api#enumValue" => "disbursed_amount_by_age_of_past_due_funds"}))
    DataSetType.add_member(:disbursed_amount_by_uncollected_funds_breakdown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISBURSED_AMOUNT_BY_UNCOLLECTED_FUNDS_BREAKDOWN", traits: {"smithy.api#enumValue" => "disbursed_amount_by_uncollected_funds_breakdown"}))
    DataSetType.add_member(:customer_profile_by_industry, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CUSTOMER_PROFILE_BY_INDUSTRY", traits: {"smithy.api#enumValue" => "customer_profile_by_industry"}))
    DataSetType.add_member(:customer_profile_by_revenue, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CUSTOMER_PROFILE_BY_REVENUE", traits: {"smithy.api#enumValue" => "customer_profile_by_revenue"}))
    DataSetType.add_member(:customer_profile_by_geography, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CUSTOMER_PROFILE_BY_GEOGRAPHY", traits: {"smithy.api#enumValue" => "customer_profile_by_geography"}))
    DataSetType.add_member(:sales_compensation_billed_revenue, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SALES_COMPENSATION_BILLED_REVENUE", traits: {"smithy.api#enumValue" => "sales_compensation_billed_revenue"}))
    DataSetType.add_member(:us_sales_and_use_tax_records, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "US_SALES_AND_USE_TAX_RECORDS", traits: {"smithy.api#enumValue" => "us_sales_and_use_tax_records"}))
    GenerateDataSetRequest.add_member(:data_set_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSetType, name: "dataSetType", traits: {"smithy.api#required" => {}}))
    GenerateDataSetRequest.add_member(:data_set_publication_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSetPublicationDate, name: "dataSetPublicationDate", traits: {"smithy.api#required" => {}}))
    GenerateDataSetRequest.add_member(:role_name_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleNameArn, name: "roleNameArn", traits: {"smithy.api#required" => {}}))
    GenerateDataSetRequest.add_member(:destination_s3_bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationS3BucketName, name: "destinationS3BucketName", traits: {"smithy.api#required" => {}}))
    GenerateDataSetRequest.add_member(:destination_s3_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationS3Prefix, name: "destinationS3Prefix"))
    GenerateDataSetRequest.add_member(:sns_topic_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SnsTopicArn, name: "snsTopicArn", traits: {"smithy.api#required" => {}}))
    GenerateDataSetRequest.add_member(:customer_defined_values, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerDefinedValues, name: "customerDefinedValues"))
    GenerateDataSetRequest.type = Types::GenerateDataSetRequest
    GenerateDataSetResult.add_member(:data_set_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSetRequestId, name: "dataSetRequestId"))
    GenerateDataSetResult.type = Types::GenerateDataSetResult
    MarketplaceCommerceAnalyticsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    MarketplaceCommerceAnalyticsException.type = Types::MarketplaceCommerceAnalyticsException
    StartSupportDataExportRequest.add_member(:data_set_type, ::Smithy::Schema::Shapes::MemberShape.new(target: SupportDataSetType, name: "dataSetType", traits: {"smithy.api#required" => {}}))
    StartSupportDataExportRequest.add_member(:from_date, ::Smithy::Schema::Shapes::MemberShape.new(target: FromDate, name: "fromDate", traits: {"smithy.api#required" => {}}))
    StartSupportDataExportRequest.add_member(:role_name_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleNameArn, name: "roleNameArn", traits: {"smithy.api#required" => {}}))
    StartSupportDataExportRequest.add_member(:destination_s3_bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationS3BucketName, name: "destinationS3BucketName", traits: {"smithy.api#required" => {}}))
    StartSupportDataExportRequest.add_member(:destination_s3_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationS3Prefix, name: "destinationS3Prefix"))
    StartSupportDataExportRequest.add_member(:sns_topic_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SnsTopicArn, name: "snsTopicArn", traits: {"smithy.api#required" => {}}))
    StartSupportDataExportRequest.add_member(:customer_defined_values, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerDefinedValues, name: "customerDefinedValues"))
    StartSupportDataExportRequest.type = Types::StartSupportDataExportRequest
    StartSupportDataExportResult.add_member(:data_set_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSetRequestId, name: "dataSetRequestId"))
    StartSupportDataExportResult.type = Types::StartSupportDataExportResult
    SupportDataSetType.add_member(:customer_support_contacts_data, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "customer_support_contacts_data", traits: {"smithy.api#enumValue" => "customer_support_contacts_data"}))
    SupportDataSetType.add_member(:test_customer_support_contacts_data, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "test_customer_support_contacts_data", traits: {"smithy.api#enumValue" => "test_customer_support_contacts_data"}))

    MarketplaceCommerceAnalytics20150701 = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.marketplacecommerceanalytics#MarketplaceCommerceAnalytics20150701"
      service.name = "MarketplaceCommerceAnalytics20150701"
      service.version = "2015-07-01"
      service.traits = {"aws.api#service" => {"sdkId" => "Marketplace Commerce Analytics", "arnNamespace" => "marketplacecommerceanalytics", "cloudFormationName" => "MarketplaceCommerceAnalytics", "cloudTrailEventSource" => "marketplacecommerceanalytics.amazonaws.com", "docId" => "marketplacecommerceanalytics-2015-07-01", "endpointPrefix" => "marketplacecommerceanalytics"}, "aws.auth#sigv4" => {"name" => "marketplacecommerceanalytics"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "AWS Marketplace Commerce Analytics"}
      service.add_operation(:generate_data_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.marketplacecommerceanalytics#GenerateDataSet"
        operation.name = "GenerateDataSet"
        operation.input = GenerateDataSetRequest
        operation.output = GenerateDataSetResult
        operation.errors << MarketplaceCommerceAnalyticsException
        operation.traits = {}
      end)
      service.add_operation(:start_support_data_export, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.marketplacecommerceanalytics#StartSupportDataExport"
        operation.name = "StartSupportDataExport"
        operation.input = StartSupportDataExportRequest
        operation.output = StartSupportDataExportResult
        operation.errors << MarketplaceCommerceAnalyticsException
        operation.traits = {"smithy.api#deprecated" => {"message" => "This target has been deprecated. As of December 2022 Product Support Connection is no longer supported."}}
      end)
    end

    class << self
      def type_registry
        return @type_registry if @type_registry

        shapes = constants.map { |sym| const_get(sym) }.select { |const| const.is_a?(::Smithy::Schema::Shapes::StructureShape) }
        @type_registry = ::Smithy::Schema::TypeRegistry.new(shapes)
      end
    end
  end
end
