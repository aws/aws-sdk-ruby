# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::MarketplaceReporting
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    BadRequestException = Shapes::StructureShape.new(name: 'BadRequestException')
    DashboardIdentifier = Shapes::StringShape.new(name: 'DashboardIdentifier')
    EmbeddingDomain = Shapes::StringShape.new(name: 'EmbeddingDomain')
    EmbeddingDomains = Shapes::ListShape.new(name: 'EmbeddingDomains')
    GetBuyerDashboardInput = Shapes::StructureShape.new(name: 'GetBuyerDashboardInput')
    GetBuyerDashboardOutput = Shapes::StructureShape.new(name: 'GetBuyerDashboardOutput')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    String = Shapes::StringShape.new(name: 'String')
    UnauthorizedException = Shapes::StructureShape.new(name: 'UnauthorizedException')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    BadRequestException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    BadRequestException.struct_class = Types::BadRequestException

    EmbeddingDomains.member = Shapes::ShapeRef.new(shape: EmbeddingDomain)

    GetBuyerDashboardInput.add_member(:dashboard_identifier, Shapes::ShapeRef.new(shape: DashboardIdentifier, required: true, location_name: "dashboardIdentifier"))
    GetBuyerDashboardInput.add_member(:embedding_domains, Shapes::ShapeRef.new(shape: EmbeddingDomains, required: true, location_name: "embeddingDomains"))
    GetBuyerDashboardInput.struct_class = Types::GetBuyerDashboardInput

    GetBuyerDashboardOutput.add_member(:embed_url, Shapes::ShapeRef.new(shape: String, required: true, location_name: "embedUrl"))
    GetBuyerDashboardOutput.add_member(:dashboard_identifier, Shapes::ShapeRef.new(shape: DashboardIdentifier, required: true, location_name: "dashboardIdentifier"))
    GetBuyerDashboardOutput.add_member(:embedding_domains, Shapes::ShapeRef.new(shape: EmbeddingDomains, required: true, location_name: "embeddingDomains"))
    GetBuyerDashboardOutput.struct_class = Types::GetBuyerDashboardOutput

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    UnauthorizedException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    UnauthorizedException.struct_class = Types::UnauthorizedException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2018-05-10"

      api.metadata = {
        "apiVersion" => "2018-05-10",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "reporting-marketplace",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceFullName" => "AWS Marketplace Reporting Service",
        "serviceId" => "Marketplace Reporting",
        "signatureVersion" => "v4",
        "signingName" => "aws-marketplace",
        "uid" => "marketplace-reporting-2018-05-10",
      }

      api.add_operation(:get_buyer_dashboard, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetBuyerDashboard"
        o.http_method = "POST"
        o.http_request_uri = "/getBuyerDashboard"
        o.input = Shapes::ShapeRef.new(shape: GetBuyerDashboardInput)
        o.output = Shapes::ShapeRef.new(shape: GetBuyerDashboardOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
      end)
    end

  end
end
