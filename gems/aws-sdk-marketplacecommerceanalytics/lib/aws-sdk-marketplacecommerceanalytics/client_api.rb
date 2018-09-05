# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::MarketplaceCommerceAnalytics
  # @api private
  module ClientApi

    include Seahorse::Model

    CustomerDefinedValues = Shapes::MapShape.new(name: 'CustomerDefinedValues')
    DataSetPublicationDate = Shapes::TimestampShape.new(name: 'DataSetPublicationDate')
    DataSetRequestId = Shapes::StringShape.new(name: 'DataSetRequestId')
    DataSetType = Shapes::StringShape.new(name: 'DataSetType')
    DestinationS3BucketName = Shapes::StringShape.new(name: 'DestinationS3BucketName')
    DestinationS3Prefix = Shapes::StringShape.new(name: 'DestinationS3Prefix')
    ExceptionMessage = Shapes::StringShape.new(name: 'ExceptionMessage')
    FromDate = Shapes::TimestampShape.new(name: 'FromDate')
    GenerateDataSetRequest = Shapes::StructureShape.new(name: 'GenerateDataSetRequest')
    GenerateDataSetResult = Shapes::StructureShape.new(name: 'GenerateDataSetResult')
    MarketplaceCommerceAnalyticsException = Shapes::StructureShape.new(name: 'MarketplaceCommerceAnalyticsException')
    OptionalKey = Shapes::StringShape.new(name: 'OptionalKey')
    OptionalValue = Shapes::StringShape.new(name: 'OptionalValue')
    RoleNameArn = Shapes::StringShape.new(name: 'RoleNameArn')
    SnsTopicArn = Shapes::StringShape.new(name: 'SnsTopicArn')
    StartSupportDataExportRequest = Shapes::StructureShape.new(name: 'StartSupportDataExportRequest')
    StartSupportDataExportResult = Shapes::StructureShape.new(name: 'StartSupportDataExportResult')
    SupportDataSetType = Shapes::StringShape.new(name: 'SupportDataSetType')

    CustomerDefinedValues.key = Shapes::ShapeRef.new(shape: OptionalKey)
    CustomerDefinedValues.value = Shapes::ShapeRef.new(shape: OptionalValue)

    GenerateDataSetRequest.add_member(:data_set_type, Shapes::ShapeRef.new(shape: DataSetType, required: true, location_name: "dataSetType"))
    GenerateDataSetRequest.add_member(:data_set_publication_date, Shapes::ShapeRef.new(shape: DataSetPublicationDate, required: true, location_name: "dataSetPublicationDate"))
    GenerateDataSetRequest.add_member(:role_name_arn, Shapes::ShapeRef.new(shape: RoleNameArn, required: true, location_name: "roleNameArn"))
    GenerateDataSetRequest.add_member(:destination_s3_bucket_name, Shapes::ShapeRef.new(shape: DestinationS3BucketName, required: true, location_name: "destinationS3BucketName"))
    GenerateDataSetRequest.add_member(:destination_s3_prefix, Shapes::ShapeRef.new(shape: DestinationS3Prefix, location_name: "destinationS3Prefix"))
    GenerateDataSetRequest.add_member(:sns_topic_arn, Shapes::ShapeRef.new(shape: SnsTopicArn, required: true, location_name: "snsTopicArn"))
    GenerateDataSetRequest.add_member(:customer_defined_values, Shapes::ShapeRef.new(shape: CustomerDefinedValues, location_name: "customerDefinedValues"))
    GenerateDataSetRequest.struct_class = Types::GenerateDataSetRequest

    GenerateDataSetResult.add_member(:data_set_request_id, Shapes::ShapeRef.new(shape: DataSetRequestId, location_name: "dataSetRequestId"))
    GenerateDataSetResult.struct_class = Types::GenerateDataSetResult

    StartSupportDataExportRequest.add_member(:data_set_type, Shapes::ShapeRef.new(shape: SupportDataSetType, required: true, location_name: "dataSetType"))
    StartSupportDataExportRequest.add_member(:from_date, Shapes::ShapeRef.new(shape: FromDate, required: true, location_name: "fromDate"))
    StartSupportDataExportRequest.add_member(:role_name_arn, Shapes::ShapeRef.new(shape: RoleNameArn, required: true, location_name: "roleNameArn"))
    StartSupportDataExportRequest.add_member(:destination_s3_bucket_name, Shapes::ShapeRef.new(shape: DestinationS3BucketName, required: true, location_name: "destinationS3BucketName"))
    StartSupportDataExportRequest.add_member(:destination_s3_prefix, Shapes::ShapeRef.new(shape: DestinationS3Prefix, location_name: "destinationS3Prefix"))
    StartSupportDataExportRequest.add_member(:sns_topic_arn, Shapes::ShapeRef.new(shape: SnsTopicArn, required: true, location_name: "snsTopicArn"))
    StartSupportDataExportRequest.add_member(:customer_defined_values, Shapes::ShapeRef.new(shape: CustomerDefinedValues, location_name: "customerDefinedValues"))
    StartSupportDataExportRequest.struct_class = Types::StartSupportDataExportRequest

    StartSupportDataExportResult.add_member(:data_set_request_id, Shapes::ShapeRef.new(shape: DataSetRequestId, location_name: "dataSetRequestId"))
    StartSupportDataExportResult.struct_class = Types::StartSupportDataExportResult


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2015-07-01"

      api.metadata = {
        "apiVersion" => "2015-07-01",
        "endpointPrefix" => "marketplacecommerceanalytics",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "serviceFullName" => "AWS Marketplace Commerce Analytics",
        "signatureVersion" => "v4",
        "signingName" => "marketplacecommerceanalytics",
        "targetPrefix" => "MarketplaceCommerceAnalytics20150701",
        "uid" => "marketplacecommerceanalytics-2015-07-01",
      }

      api.add_operation(:generate_data_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GenerateDataSet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GenerateDataSetRequest)
        o.output = Shapes::ShapeRef.new(shape: GenerateDataSetResult)
        o.errors << Shapes::ShapeRef.new(shape: MarketplaceCommerceAnalyticsException)
      end)

      api.add_operation(:start_support_data_export, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartSupportDataExport"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartSupportDataExportRequest)
        o.output = Shapes::ShapeRef.new(shape: StartSupportDataExportResult)
        o.errors << Shapes::ShapeRef.new(shape: MarketplaceCommerceAnalyticsException)
      end)
    end

  end
end
