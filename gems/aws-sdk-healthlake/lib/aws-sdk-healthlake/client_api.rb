# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::HealthLake
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    BoundedLengthString = Shapes::StringShape.new(name: 'BoundedLengthString')
    ClientTokenString = Shapes::StringShape.new(name: 'ClientTokenString')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateFHIRDatastoreRequest = Shapes::StructureShape.new(name: 'CreateFHIRDatastoreRequest')
    CreateFHIRDatastoreResponse = Shapes::StructureShape.new(name: 'CreateFHIRDatastoreResponse')
    DatastoreArn = Shapes::StringShape.new(name: 'DatastoreArn')
    DatastoreFilter = Shapes::StructureShape.new(name: 'DatastoreFilter')
    DatastoreId = Shapes::StringShape.new(name: 'DatastoreId')
    DatastoreName = Shapes::StringShape.new(name: 'DatastoreName')
    DatastoreProperties = Shapes::StructureShape.new(name: 'DatastoreProperties')
    DatastorePropertiesList = Shapes::ListShape.new(name: 'DatastorePropertiesList')
    DatastoreStatus = Shapes::StringShape.new(name: 'DatastoreStatus')
    DeleteFHIRDatastoreRequest = Shapes::StructureShape.new(name: 'DeleteFHIRDatastoreRequest')
    DeleteFHIRDatastoreResponse = Shapes::StructureShape.new(name: 'DeleteFHIRDatastoreResponse')
    DescribeFHIRDatastoreRequest = Shapes::StructureShape.new(name: 'DescribeFHIRDatastoreRequest')
    DescribeFHIRDatastoreResponse = Shapes::StructureShape.new(name: 'DescribeFHIRDatastoreResponse')
    DescribeFHIRExportJobRequest = Shapes::StructureShape.new(name: 'DescribeFHIRExportJobRequest')
    DescribeFHIRExportJobResponse = Shapes::StructureShape.new(name: 'DescribeFHIRExportJobResponse')
    DescribeFHIRImportJobRequest = Shapes::StructureShape.new(name: 'DescribeFHIRImportJobRequest')
    DescribeFHIRImportJobResponse = Shapes::StructureShape.new(name: 'DescribeFHIRImportJobResponse')
    ExportJobProperties = Shapes::StructureShape.new(name: 'ExportJobProperties')
    FHIRVersion = Shapes::StringShape.new(name: 'FHIRVersion')
    IamRoleArn = Shapes::StringShape.new(name: 'IamRoleArn')
    ImportJobProperties = Shapes::StructureShape.new(name: 'ImportJobProperties')
    InputDataConfig = Shapes::StructureShape.new(name: 'InputDataConfig')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    JobId = Shapes::StringShape.new(name: 'JobId')
    JobName = Shapes::StringShape.new(name: 'JobName')
    JobStatus = Shapes::StringShape.new(name: 'JobStatus')
    ListFHIRDatastoresRequest = Shapes::StructureShape.new(name: 'ListFHIRDatastoresRequest')
    ListFHIRDatastoresResponse = Shapes::StructureShape.new(name: 'ListFHIRDatastoresResponse')
    MaxResultsInteger = Shapes::IntegerShape.new(name: 'MaxResultsInteger')
    Message = Shapes::StringShape.new(name: 'Message')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    OutputDataConfig = Shapes::StructureShape.new(name: 'OutputDataConfig')
    PreloadDataConfig = Shapes::StructureShape.new(name: 'PreloadDataConfig')
    PreloadDataType = Shapes::StringShape.new(name: 'PreloadDataType')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    S3Uri = Shapes::StringShape.new(name: 'S3Uri')
    StartFHIRExportJobRequest = Shapes::StructureShape.new(name: 'StartFHIRExportJobRequest')
    StartFHIRExportJobResponse = Shapes::StructureShape.new(name: 'StartFHIRExportJobResponse')
    StartFHIRImportJobRequest = Shapes::StructureShape.new(name: 'StartFHIRImportJobRequest')
    StartFHIRImportJobResponse = Shapes::StructureShape.new(name: 'StartFHIRImportJobResponse')
    String = Shapes::StringShape.new(name: 'String')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ConflictException.struct_class = Types::ConflictException

    CreateFHIRDatastoreRequest.add_member(:datastore_name, Shapes::ShapeRef.new(shape: DatastoreName, location_name: "DatastoreName"))
    CreateFHIRDatastoreRequest.add_member(:datastore_type_version, Shapes::ShapeRef.new(shape: FHIRVersion, required: true, location_name: "DatastoreTypeVersion"))
    CreateFHIRDatastoreRequest.add_member(:preload_data_config, Shapes::ShapeRef.new(shape: PreloadDataConfig, location_name: "PreloadDataConfig"))
    CreateFHIRDatastoreRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientTokenString, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    CreateFHIRDatastoreRequest.struct_class = Types::CreateFHIRDatastoreRequest

    CreateFHIRDatastoreResponse.add_member(:datastore_id, Shapes::ShapeRef.new(shape: DatastoreId, required: true, location_name: "DatastoreId"))
    CreateFHIRDatastoreResponse.add_member(:datastore_arn, Shapes::ShapeRef.new(shape: DatastoreArn, required: true, location_name: "DatastoreArn"))
    CreateFHIRDatastoreResponse.add_member(:datastore_status, Shapes::ShapeRef.new(shape: DatastoreStatus, required: true, location_name: "DatastoreStatus"))
    CreateFHIRDatastoreResponse.add_member(:datastore_endpoint, Shapes::ShapeRef.new(shape: BoundedLengthString, required: true, location_name: "DatastoreEndpoint"))
    CreateFHIRDatastoreResponse.struct_class = Types::CreateFHIRDatastoreResponse

    DatastoreFilter.add_member(:datastore_name, Shapes::ShapeRef.new(shape: DatastoreName, location_name: "DatastoreName"))
    DatastoreFilter.add_member(:datastore_status, Shapes::ShapeRef.new(shape: DatastoreStatus, location_name: "DatastoreStatus"))
    DatastoreFilter.add_member(:created_before, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedBefore"))
    DatastoreFilter.add_member(:created_after, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAfter"))
    DatastoreFilter.struct_class = Types::DatastoreFilter

    DatastoreProperties.add_member(:datastore_id, Shapes::ShapeRef.new(shape: DatastoreId, required: true, location_name: "DatastoreId"))
    DatastoreProperties.add_member(:datastore_arn, Shapes::ShapeRef.new(shape: DatastoreArn, required: true, location_name: "DatastoreArn"))
    DatastoreProperties.add_member(:datastore_name, Shapes::ShapeRef.new(shape: DatastoreName, location_name: "DatastoreName"))
    DatastoreProperties.add_member(:datastore_status, Shapes::ShapeRef.new(shape: DatastoreStatus, required: true, location_name: "DatastoreStatus"))
    DatastoreProperties.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    DatastoreProperties.add_member(:datastore_type_version, Shapes::ShapeRef.new(shape: FHIRVersion, required: true, location_name: "DatastoreTypeVersion"))
    DatastoreProperties.add_member(:datastore_endpoint, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DatastoreEndpoint"))
    DatastoreProperties.add_member(:preload_data_config, Shapes::ShapeRef.new(shape: PreloadDataConfig, location_name: "PreloadDataConfig"))
    DatastoreProperties.struct_class = Types::DatastoreProperties

    DatastorePropertiesList.member = Shapes::ShapeRef.new(shape: DatastoreProperties)

    DeleteFHIRDatastoreRequest.add_member(:datastore_id, Shapes::ShapeRef.new(shape: DatastoreId, location_name: "DatastoreId"))
    DeleteFHIRDatastoreRequest.struct_class = Types::DeleteFHIRDatastoreRequest

    DeleteFHIRDatastoreResponse.add_member(:datastore_id, Shapes::ShapeRef.new(shape: DatastoreId, required: true, location_name: "DatastoreId"))
    DeleteFHIRDatastoreResponse.add_member(:datastore_arn, Shapes::ShapeRef.new(shape: DatastoreArn, required: true, location_name: "DatastoreArn"))
    DeleteFHIRDatastoreResponse.add_member(:datastore_status, Shapes::ShapeRef.new(shape: DatastoreStatus, required: true, location_name: "DatastoreStatus"))
    DeleteFHIRDatastoreResponse.add_member(:datastore_endpoint, Shapes::ShapeRef.new(shape: BoundedLengthString, required: true, location_name: "DatastoreEndpoint"))
    DeleteFHIRDatastoreResponse.struct_class = Types::DeleteFHIRDatastoreResponse

    DescribeFHIRDatastoreRequest.add_member(:datastore_id, Shapes::ShapeRef.new(shape: DatastoreId, location_name: "DatastoreId"))
    DescribeFHIRDatastoreRequest.struct_class = Types::DescribeFHIRDatastoreRequest

    DescribeFHIRDatastoreResponse.add_member(:datastore_properties, Shapes::ShapeRef.new(shape: DatastoreProperties, required: true, location_name: "DatastoreProperties"))
    DescribeFHIRDatastoreResponse.struct_class = Types::DescribeFHIRDatastoreResponse

    DescribeFHIRExportJobRequest.add_member(:datastore_id, Shapes::ShapeRef.new(shape: DatastoreId, required: true, location_name: "DatastoreId"))
    DescribeFHIRExportJobRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "JobId"))
    DescribeFHIRExportJobRequest.struct_class = Types::DescribeFHIRExportJobRequest

    DescribeFHIRExportJobResponse.add_member(:export_job_properties, Shapes::ShapeRef.new(shape: ExportJobProperties, required: true, location_name: "ExportJobProperties"))
    DescribeFHIRExportJobResponse.struct_class = Types::DescribeFHIRExportJobResponse

    DescribeFHIRImportJobRequest.add_member(:datastore_id, Shapes::ShapeRef.new(shape: DatastoreId, required: true, location_name: "DatastoreId"))
    DescribeFHIRImportJobRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "JobId"))
    DescribeFHIRImportJobRequest.struct_class = Types::DescribeFHIRImportJobRequest

    DescribeFHIRImportJobResponse.add_member(:import_job_properties, Shapes::ShapeRef.new(shape: ImportJobProperties, required: true, location_name: "ImportJobProperties"))
    DescribeFHIRImportJobResponse.struct_class = Types::DescribeFHIRImportJobResponse

    ExportJobProperties.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "JobId"))
    ExportJobProperties.add_member(:job_name, Shapes::ShapeRef.new(shape: JobName, location_name: "JobName"))
    ExportJobProperties.add_member(:job_status, Shapes::ShapeRef.new(shape: JobStatus, required: true, location_name: "JobStatus"))
    ExportJobProperties.add_member(:submit_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "SubmitTime"))
    ExportJobProperties.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "EndTime"))
    ExportJobProperties.add_member(:datastore_id, Shapes::ShapeRef.new(shape: DatastoreId, required: true, location_name: "DatastoreId"))
    ExportJobProperties.add_member(:output_data_config, Shapes::ShapeRef.new(shape: OutputDataConfig, required: true, location_name: "OutputDataConfig"))
    ExportJobProperties.add_member(:data_access_role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, location_name: "DataAccessRoleArn"))
    ExportJobProperties.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    ExportJobProperties.struct_class = Types::ExportJobProperties

    ImportJobProperties.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "JobId"))
    ImportJobProperties.add_member(:job_name, Shapes::ShapeRef.new(shape: JobName, location_name: "JobName"))
    ImportJobProperties.add_member(:job_status, Shapes::ShapeRef.new(shape: JobStatus, required: true, location_name: "JobStatus"))
    ImportJobProperties.add_member(:submit_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "SubmitTime"))
    ImportJobProperties.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "EndTime"))
    ImportJobProperties.add_member(:datastore_id, Shapes::ShapeRef.new(shape: DatastoreId, required: true, location_name: "DatastoreId"))
    ImportJobProperties.add_member(:input_data_config, Shapes::ShapeRef.new(shape: InputDataConfig, required: true, location_name: "InputDataConfig"))
    ImportJobProperties.add_member(:data_access_role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, location_name: "DataAccessRoleArn"))
    ImportJobProperties.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    ImportJobProperties.struct_class = Types::ImportJobProperties

    InputDataConfig.add_member(:s3_uri, Shapes::ShapeRef.new(shape: S3Uri, location_name: "S3Uri"))
    InputDataConfig.struct_class = Types::InputDataConfig

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InternalServerException.struct_class = Types::InternalServerException

    ListFHIRDatastoresRequest.add_member(:filter, Shapes::ShapeRef.new(shape: DatastoreFilter, location_name: "Filter"))
    ListFHIRDatastoresRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListFHIRDatastoresRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsInteger, location_name: "MaxResults"))
    ListFHIRDatastoresRequest.struct_class = Types::ListFHIRDatastoresRequest

    ListFHIRDatastoresResponse.add_member(:datastore_properties_list, Shapes::ShapeRef.new(shape: DatastorePropertiesList, required: true, location_name: "DatastorePropertiesList"))
    ListFHIRDatastoresResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListFHIRDatastoresResponse.struct_class = Types::ListFHIRDatastoresResponse

    OutputDataConfig.add_member(:s3_uri, Shapes::ShapeRef.new(shape: S3Uri, location_name: "S3Uri"))
    OutputDataConfig.struct_class = Types::OutputDataConfig

    PreloadDataConfig.add_member(:preload_data_type, Shapes::ShapeRef.new(shape: PreloadDataType, required: true, location_name: "PreloadDataType"))
    PreloadDataConfig.struct_class = Types::PreloadDataConfig

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    StartFHIRExportJobRequest.add_member(:job_name, Shapes::ShapeRef.new(shape: JobName, location_name: "JobName"))
    StartFHIRExportJobRequest.add_member(:output_data_config, Shapes::ShapeRef.new(shape: OutputDataConfig, required: true, location_name: "OutputDataConfig"))
    StartFHIRExportJobRequest.add_member(:datastore_id, Shapes::ShapeRef.new(shape: DatastoreId, required: true, location_name: "DatastoreId"))
    StartFHIRExportJobRequest.add_member(:data_access_role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, required: true, location_name: "DataAccessRoleArn"))
    StartFHIRExportJobRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientTokenString, required: true, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    StartFHIRExportJobRequest.struct_class = Types::StartFHIRExportJobRequest

    StartFHIRExportJobResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "JobId"))
    StartFHIRExportJobResponse.add_member(:job_status, Shapes::ShapeRef.new(shape: JobStatus, required: true, location_name: "JobStatus"))
    StartFHIRExportJobResponse.add_member(:datastore_id, Shapes::ShapeRef.new(shape: DatastoreId, location_name: "DatastoreId"))
    StartFHIRExportJobResponse.struct_class = Types::StartFHIRExportJobResponse

    StartFHIRImportJobRequest.add_member(:job_name, Shapes::ShapeRef.new(shape: JobName, location_name: "JobName"))
    StartFHIRImportJobRequest.add_member(:input_data_config, Shapes::ShapeRef.new(shape: InputDataConfig, required: true, location_name: "InputDataConfig"))
    StartFHIRImportJobRequest.add_member(:datastore_id, Shapes::ShapeRef.new(shape: DatastoreId, required: true, location_name: "DatastoreId"))
    StartFHIRImportJobRequest.add_member(:data_access_role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, required: true, location_name: "DataAccessRoleArn"))
    StartFHIRImportJobRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientTokenString, required: true, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    StartFHIRImportJobRequest.struct_class = Types::StartFHIRImportJobRequest

    StartFHIRImportJobResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "JobId"))
    StartFHIRImportJobResponse.add_member(:job_status, Shapes::ShapeRef.new(shape: JobStatus, required: true, location_name: "JobStatus"))
    StartFHIRImportJobResponse.add_member(:datastore_id, Shapes::ShapeRef.new(shape: DatastoreId, location_name: "DatastoreId"))
    StartFHIRImportJobResponse.struct_class = Types::StartFHIRImportJobResponse

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ValidationException.struct_class = Types::ValidationException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2017-07-01"

      api.metadata = {
        "apiVersion" => "2017-07-01",
        "endpointPrefix" => "healthlake",
        "jsonVersion" => "1.0",
        "protocol" => "json",
        "serviceAbbreviation" => "HealthLake",
        "serviceFullName" => "Amazon HealthLake",
        "serviceId" => "HealthLake",
        "signatureVersion" => "v4",
        "signingName" => "healthlake",
        "targetPrefix" => "HealthLake",
        "uid" => "healthlake-2017-07-01",
      }

      api.add_operation(:create_fhir_datastore, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateFHIRDatastore"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateFHIRDatastoreRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateFHIRDatastoreResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_fhir_datastore, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteFHIRDatastore"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteFHIRDatastoreRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteFHIRDatastoreResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:describe_fhir_datastore, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeFHIRDatastore"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeFHIRDatastoreRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeFHIRDatastoreResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:describe_fhir_export_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeFHIRExportJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeFHIRExportJobRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeFHIRExportJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:describe_fhir_import_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeFHIRImportJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeFHIRImportJobRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeFHIRImportJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:list_fhir_datastores, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListFHIRDatastores"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListFHIRDatastoresRequest)
        o.output = Shapes::ShapeRef.new(shape: ListFHIRDatastoresResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:start_fhir_export_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartFHIRExportJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartFHIRExportJobRequest)
        o.output = Shapes::ShapeRef.new(shape: StartFHIRExportJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:start_fhir_import_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartFHIRImportJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartFHIRImportJobRequest)
        o.output = Shapes::ShapeRef.new(shape: StartFHIRImportJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)
    end

  end
end
