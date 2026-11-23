# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::AgentDiscovery
  # @api private
  module ClientApi

    include Seahorse::Model

    ArdErrorCode = Shapes::StringShape.new(name: 'ArdErrorCode')
    DescriptorEntry = Shapes::StructureShape.new(name: 'DescriptorEntry')
    DescriptorMap = Shapes::MapShape.new(name: 'DescriptorMap')
    DescriptorSource = Shapes::StructureShape.new(name: 'DescriptorSource')
    DescriptorSourceUrl = Shapes::StructureShape.new(name: 'DescriptorSourceUrl')
    DomainName = Shapes::StringShape.new(name: 'DomainName')
    Identifier = Shapes::UnionShape.new(name: 'Identifier')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    ProvenanceLink = Shapes::StructureShape.new(name: 'ProvenanceLink')
    ProvenanceLinkList = Shapes::ListShape.new(name: 'ProvenanceLinkList')
    ProvenanceRelation = Shapes::StringShape.new(name: 'ProvenanceRelation')
    PublicRecord = Shapes::StructureShape.new(name: 'PublicRecord')
    PublicRecordList = Shapes::ListShape.new(name: 'PublicRecordList')
    RecordType = Shapes::StringShape.new(name: 'RecordType')
    SearchFilterExpression = Shapes::DocumentShape.new(name: 'SearchFilterExpression', document: true)
    SearchPublicRecordsRequest = Shapes::StructureShape.new(name: 'SearchPublicRecordsRequest')
    SearchPublicRecordsResponse = Shapes::StructureShape.new(name: 'SearchPublicRecordsResponse')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    TrustManifest = Shapes::StructureShape.new(name: 'TrustManifest')
    TrustManifestList = Shapes::ListShape.new(name: 'TrustManifestList')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    description = Shapes::StringShape.new(name: 'description')
    descriptorData = Shapes::StringShape.new(name: 'descriptorData')
    descriptorSlotKey = Shapes::StringShape.new(name: 'descriptorSlotKey')
    descriptorTypeVersion = Shapes::StringShape.new(name: 'descriptorTypeVersion')
    displayName = Shapes::StringShape.new(name: 'displayName')
    errorMessage = Shapes::StringShape.new(name: 'errorMessage')
    identifierUri = Shapes::StringShape.new(name: 'identifierUri')
    maxResults = Shapes::IntegerShape.new(name: 'maxResults')
    nextToken = Shapes::StringShape.new(name: 'nextToken')
    recordVersion = Shapes::StringShape.new(name: 'recordVersion')
    searchQuery = Shapes::StringShape.new(name: 'searchQuery')
    trustUri = Shapes::StringShape.new(name: 'trustUri')
    url = Shapes::StringShape.new(name: 'url')

    DescriptorEntry.add_member(:data, Shapes::ShapeRef.new(shape: descriptorData, location_name: "data"))
    DescriptorEntry.add_member(:version, Shapes::ShapeRef.new(shape: descriptorTypeVersion, location_name: "version"))
    DescriptorEntry.add_member(:source, Shapes::ShapeRef.new(shape: DescriptorSource, location_name: "source"))
    DescriptorEntry.add_member(:additional_data, Shapes::ShapeRef.new(shape: DescriptorMap, location_name: "additionalData"))
    DescriptorEntry.struct_class = Types::DescriptorEntry

    DescriptorMap.key = Shapes::ShapeRef.new(shape: descriptorSlotKey)
    DescriptorMap.value = Shapes::ShapeRef.new(shape: DescriptorEntry)

    DescriptorSource.add_member(:from_url, Shapes::ShapeRef.new(shape: DescriptorSourceUrl, location_name: "fromUrl"))
    DescriptorSource.struct_class = Types::DescriptorSource

    DescriptorSourceUrl.add_member(:url, Shapes::ShapeRef.new(shape: url, required: true, location_name: "url"))
    DescriptorSourceUrl.struct_class = Types::DescriptorSourceUrl

    Identifier.add_member(:domain, Shapes::ShapeRef.new(shape: DomainName, location_name: "domain"))
    Identifier.add_member(:uri, Shapes::ShapeRef.new(shape: identifierUri, location_name: "uri"))
    Identifier.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    Identifier.add_member_subclass(:domain, Types::Identifier::Domain)
    Identifier.add_member_subclass(:uri, Types::Identifier::Uri)
    Identifier.add_member_subclass(:unknown, Types::Identifier::Unknown)
    Identifier.struct_class = Types::Identifier

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    InternalServerException.add_member(:error_code, Shapes::ShapeRef.new(shape: ArdErrorCode, location_name: "errorCode"))
    InternalServerException.struct_class = Types::InternalServerException

    ProvenanceLink.add_member(:relation, Shapes::ShapeRef.new(shape: ProvenanceRelation, required: true, location_name: "relation"))
    ProvenanceLink.add_member(:source_id, Shapes::ShapeRef.new(shape: trustUri, required: true, location_name: "sourceId"))
    ProvenanceLink.struct_class = Types::ProvenanceLink

    ProvenanceLinkList.member = Shapes::ShapeRef.new(shape: ProvenanceLink)

    PublicRecord.add_member(:identifier, Shapes::ShapeRef.new(shape: Identifier, required: true, location_name: "identifier"))
    PublicRecord.add_member(:display_name, Shapes::ShapeRef.new(shape: displayName, required: true, location_name: "displayName"))
    PublicRecord.add_member(:description, Shapes::ShapeRef.new(shape: description, location_name: "description"))
    PublicRecord.add_member(:record_type, Shapes::ShapeRef.new(shape: RecordType, required: true, location_name: "recordType"))
    PublicRecord.add_member(:domain, Shapes::ShapeRef.new(shape: DomainName, location_name: "domain"))
    PublicRecord.add_member(:descriptors, Shapes::ShapeRef.new(shape: DescriptorMap, location_name: "descriptors"))
    PublicRecord.add_member(:trust_manifests, Shapes::ShapeRef.new(shape: TrustManifestList, location_name: "trustManifests"))
    PublicRecord.add_member(:record_version, Shapes::ShapeRef.new(shape: recordVersion, location_name: "recordVersion"))
    PublicRecord.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    PublicRecord.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    PublicRecord.struct_class = Types::PublicRecord

    PublicRecordList.member = Shapes::ShapeRef.new(shape: PublicRecord)

    SearchPublicRecordsRequest.add_member(:search_query, Shapes::ShapeRef.new(shape: searchQuery, location_name: "query"))
    SearchPublicRecordsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: SearchFilterExpression, location_name: "filters"))
    SearchPublicRecordsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: maxResults, location_name: "maxResults"))
    SearchPublicRecordsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: nextToken, location_name: "nextToken"))
    SearchPublicRecordsRequest.struct_class = Types::SearchPublicRecordsRequest

    SearchPublicRecordsResponse.add_member(:records, Shapes::ShapeRef.new(shape: PublicRecordList, required: true, location_name: "records"))
    SearchPublicRecordsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: nextToken, location_name: "nextToken"))
    SearchPublicRecordsResponse.struct_class = Types::SearchPublicRecordsResponse

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    ThrottlingException.add_member(:error_code, Shapes::ShapeRef.new(shape: ArdErrorCode, location_name: "errorCode"))
    ThrottlingException.struct_class = Types::ThrottlingException

    TrustManifest.add_member(:contributor, Shapes::ShapeRef.new(shape: trustUri, required: true, location_name: "contributor"))
    TrustManifest.add_member(:provenance, Shapes::ShapeRef.new(shape: ProvenanceLinkList, location_name: "provenance"))
    TrustManifest.struct_class = Types::TrustManifest

    TrustManifestList.member = Shapes::ShapeRef.new(shape: TrustManifest)

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    ValidationException.add_member(:error_code, Shapes::ShapeRef.new(shape: ArdErrorCode, location_name: "errorCode"))
    ValidationException.struct_class = Types::ValidationException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2022-07-26"

      api.metadata = {
        "apiVersion" => "2022-07-26",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "agent-discovery",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceFullName" => "Agent Discovery",
        "serviceId" => "Agent Discovery",
        "signatureVersion" => "v4",
        "signingName" => "agent-discovery",
        "uid" => "agent-discovery-2022-07-26",
      }

      api.add_operation(:search_public_records, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SearchPublicRecords"
        o.http_method = "POST"
        o.http_request_uri = "/records/search"
        o.input = Shapes::ShapeRef.new(shape: SearchPublicRecordsRequest)
        o.output = Shapes::ShapeRef.new(shape: SearchPublicRecordsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)
    end

  end
end
