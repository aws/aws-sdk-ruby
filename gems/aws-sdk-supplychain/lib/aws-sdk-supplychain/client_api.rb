# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::SupplyChain
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    BillOfMaterialsImportJob = Shapes::StructureShape.new(name: 'BillOfMaterialsImportJob')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    ConfigurationJobStatus = Shapes::StringShape.new(name: 'ConfigurationJobStatus')
    ConfigurationS3Uri = Shapes::StringShape.new(name: 'ConfigurationS3Uri')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateBillOfMaterialsImportJobRequest = Shapes::StructureShape.new(name: 'CreateBillOfMaterialsImportJobRequest')
    CreateBillOfMaterialsImportJobResponse = Shapes::StructureShape.new(name: 'CreateBillOfMaterialsImportJobResponse')
    GetBillOfMaterialsImportJobRequest = Shapes::StructureShape.new(name: 'GetBillOfMaterialsImportJobRequest')
    GetBillOfMaterialsImportJobResponse = Shapes::StructureShape.new(name: 'GetBillOfMaterialsImportJobResponse')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    String = Shapes::StringShape.new(name: 'String')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    UUID = Shapes::StringShape.new(name: 'UUID')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    BillOfMaterialsImportJob.add_member(:instance_id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "instanceId"))
    BillOfMaterialsImportJob.add_member(:job_id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "jobId"))
    BillOfMaterialsImportJob.add_member(:status, Shapes::ShapeRef.new(shape: ConfigurationJobStatus, required: true, location_name: "status"))
    BillOfMaterialsImportJob.add_member(:s3uri, Shapes::ShapeRef.new(shape: ConfigurationS3Uri, required: true, location_name: "s3uri"))
    BillOfMaterialsImportJob.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    BillOfMaterialsImportJob.struct_class = Types::BillOfMaterialsImportJob

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ConflictException.struct_class = Types::ConflictException

    CreateBillOfMaterialsImportJobRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "instanceId"))
    CreateBillOfMaterialsImportJobRequest.add_member(:s3uri, Shapes::ShapeRef.new(shape: ConfigurationS3Uri, required: true, location_name: "s3uri"))
    CreateBillOfMaterialsImportJobRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateBillOfMaterialsImportJobRequest.struct_class = Types::CreateBillOfMaterialsImportJobRequest

    CreateBillOfMaterialsImportJobResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "jobId"))
    CreateBillOfMaterialsImportJobResponse.struct_class = Types::CreateBillOfMaterialsImportJobResponse

    GetBillOfMaterialsImportJobRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "instanceId"))
    GetBillOfMaterialsImportJobRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "jobId"))
    GetBillOfMaterialsImportJobRequest.struct_class = Types::GetBillOfMaterialsImportJobRequest

    GetBillOfMaterialsImportJobResponse.add_member(:job, Shapes::ShapeRef.new(shape: BillOfMaterialsImportJob, required: true, location_name: "job"))
    GetBillOfMaterialsImportJobResponse.struct_class = Types::GetBillOfMaterialsImportJobResponse

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ValidationException.struct_class = Types::ValidationException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2024-01-01"

      api.metadata = {
        "apiVersion" => "2024-01-01",
        "endpointPrefix" => "scn",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceFullName" => "AWS Supply Chain",
        "serviceId" => "SupplyChain",
        "signatureVersion" => "v4",
        "signingName" => "scn",
        "uid" => "supplychain-2024-01-01",
      }

      api.add_operation(:create_bill_of_materials_import_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateBillOfMaterialsImportJob"
        o.http_method = "POST"
        o.http_request_uri = "/api/configuration/instances/{instanceId}/bill-of-materials-import-jobs"
        o.input = Shapes::ShapeRef.new(shape: CreateBillOfMaterialsImportJobRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateBillOfMaterialsImportJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:get_bill_of_materials_import_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetBillOfMaterialsImportJob"
        o.http_method = "GET"
        o.http_request_uri = "/api/configuration/instances/{instanceId}/bill-of-materials-import-jobs/{jobId}"
        o.input = Shapes::ShapeRef.new(shape: GetBillOfMaterialsImportJobRequest)
        o.output = Shapes::ShapeRef.new(shape: GetBillOfMaterialsImportJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)
    end

  end
end
