# frozen_string_literal: true

# This is generated code!

module Aws::MarketplaceReporting
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacereporting#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    BadRequestException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacereporting#BadRequestException", name: "BadRequestException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DashboardIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplacereporting#DashboardIdentifier", name: "DashboardIdentifier", traits: {"aws.api#arnReference" => {"service" => "com.amazonaws.marketplacereporting#AWSMarketplaceReporting", "resource" => "com.amazonaws.marketplacereporting#Dashboard", "type" => "AWS::Service::Resource"}, "smithy.api#length" => {"min" => 1, "max" => 1023}, "smithy.api#pattern" => "^arn:aws:aws-marketplace::[0-9]{12}:AWSMarketplace/ReportingData/(Agreement_V1/Dashboard/AgreementSummary_V1|BillingEvent_V1/Dashboard/CostAnalysis_V1)$"})
    EmbeddingDomain = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplacereporting#EmbeddingDomain", name: "EmbeddingDomain", traits: {"smithy.api#length" => {"min" => 1, "max" => 2000}, "smithy.api#pattern" => "^(https://[a-zA-Z\\.\\*0-9\\-_]+[\\.]{1}[a-zA-Z]{1,}[a-zA-Z0-9&?/-_=]*[a-zA-Z\\*0-9/]+|http[s]*://localhost(:[0-9]{1,5})?)$"})
    EmbeddingDomains = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplacereporting#EmbeddingDomains", name: "EmbeddingDomains", traits: {"smithy.api#length" => {"min" => 1, "max" => 2}})
    GetBuyerDashboardInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacereporting#GetBuyerDashboardInput", name: "GetBuyerDashboardInput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.marketplacereporting#Dashboard", "ids" => {"dashboardIdentifier" => "dashboardIdentifier"}}]})
    GetBuyerDashboardOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacereporting#GetBuyerDashboardOutput", name: "GetBuyerDashboardOutput")
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacereporting#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    UnauthorizedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacereporting#UnauthorizedException", name: "UnauthorizedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 401})

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message"))
    AccessDeniedException.type = Types::AccessDeniedException
    BadRequestException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message"))
    BadRequestException.type = Types::BadRequestException
    EmbeddingDomains.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmbeddingDomain)
    GetBuyerDashboardInput.add_member(:dashboard_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DashboardIdentifier, location_name: "dashboardIdentifier", traits: {"smithy.api#required" => {}}))
    GetBuyerDashboardInput.add_member(:embedding_domains, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmbeddingDomains, location_name: "embeddingDomains", traits: {"smithy.api#required" => {}}))
    GetBuyerDashboardInput.type = Types::GetBuyerDashboardInput
    GetBuyerDashboardOutput.add_member(:embed_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "embedUrl", traits: {"smithy.api#required" => {}}))
    GetBuyerDashboardOutput.add_member(:dashboard_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DashboardIdentifier, location_name: "dashboardIdentifier", traits: {"smithy.api#required" => {}}))
    GetBuyerDashboardOutput.add_member(:embedding_domains, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmbeddingDomains, location_name: "embeddingDomains", traits: {"smithy.api#required" => {}}))
    GetBuyerDashboardOutput.type = Types::GetBuyerDashboardOutput
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message"))
    InternalServerException.type = Types::InternalServerException
    UnauthorizedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message"))
    UnauthorizedException.type = Types::UnauthorizedException

    AWSMarketplaceReporting = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.marketplacereporting#AWSMarketplaceReporting"
      service.name = "AWSMarketplaceReporting"
      service.version = "2018-05-10"
      service.traits = {"aws.api#service" => {"sdkId" => "Marketplace Reporting", "cloudTrailEventSource" => "reporting-marketplace.amazonaws.com", "arnNamespace" => "aws-marketplace", "endpointPrefix" => "reporting-marketplace"}, "aws.auth#sigv4" => {"name" => "aws-marketplace"}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"additionalExposedHeaders" => ["x-amzn-requestid", "x-amzn-errortype", "x-amzn-errormessage", "date"]}, "smithy.api#title" => "AWS Marketplace Reporting Service"}
      service.add_operation(:get_buyer_dashboard, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.marketplacereporting#GetBuyerDashboard"
        operation.name = "GetBuyerDashboard"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetBuyerDashboardInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetBuyerDashboardOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/getBuyerDashboard"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "GetBuyerDashboardUnauthorized", "params" => {"dashboardIdentifier" => "arn:aws:aws-marketplace::021234567890:AWSMarketplace/ReportingData/Agreement_V1/Dashboard/AgreementSummary_V1", "embeddingDomains" => ["https://localhost:8080"]}, "expect" => {"failure" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
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
