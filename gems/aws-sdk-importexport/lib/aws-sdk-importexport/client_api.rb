# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ImportExport
  # @api private
  module ClientApi

    include Seahorse::Model

    APIVersion = Shapes::StringShape.new(name: 'APIVersion')
    Artifact = Shapes::StructureShape.new(name: 'Artifact')
    ArtifactList = Shapes::ListShape.new(name: 'ArtifactList')
    BucketPermissionException = Shapes::StructureShape.new(name: 'BucketPermissionException')
    CancelJobInput = Shapes::StructureShape.new(name: 'CancelJobInput')
    CancelJobOutput = Shapes::StructureShape.new(name: 'CancelJobOutput')
    CanceledJobIdException = Shapes::StructureShape.new(name: 'CanceledJobIdException')
    Carrier = Shapes::StringShape.new(name: 'Carrier')
    CreateJobInput = Shapes::StructureShape.new(name: 'CreateJobInput')
    CreateJobOutput = Shapes::StructureShape.new(name: 'CreateJobOutput')
    CreateJobQuotaExceededException = Shapes::StructureShape.new(name: 'CreateJobQuotaExceededException')
    CreationDate = Shapes::TimestampShape.new(name: 'CreationDate')
    CurrentManifest = Shapes::StringShape.new(name: 'CurrentManifest')
    Description = Shapes::StringShape.new(name: 'Description')
    ErrorCount = Shapes::IntegerShape.new(name: 'ErrorCount')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    ExpiredJobIdException = Shapes::StructureShape.new(name: 'ExpiredJobIdException')
    GenericString = Shapes::StringShape.new(name: 'GenericString')
    GetShippingLabelInput = Shapes::StructureShape.new(name: 'GetShippingLabelInput')
    GetShippingLabelOutput = Shapes::StructureShape.new(name: 'GetShippingLabelOutput')
    GetStatusInput = Shapes::StructureShape.new(name: 'GetStatusInput')
    GetStatusOutput = Shapes::StructureShape.new(name: 'GetStatusOutput')
    InvalidAccessKeyIdException = Shapes::StructureShape.new(name: 'InvalidAccessKeyIdException')
    InvalidAddressException = Shapes::StructureShape.new(name: 'InvalidAddressException')
    InvalidCustomsException = Shapes::StructureShape.new(name: 'InvalidCustomsException')
    InvalidFileSystemException = Shapes::StructureShape.new(name: 'InvalidFileSystemException')
    InvalidJobIdException = Shapes::StructureShape.new(name: 'InvalidJobIdException')
    InvalidManifestFieldException = Shapes::StructureShape.new(name: 'InvalidManifestFieldException')
    InvalidParameterException = Shapes::StructureShape.new(name: 'InvalidParameterException')
    InvalidVersionException = Shapes::StructureShape.new(name: 'InvalidVersionException')
    IsCanceled = Shapes::BooleanShape.new(name: 'IsCanceled')
    IsTruncated = Shapes::BooleanShape.new(name: 'IsTruncated')
    Job = Shapes::StructureShape.new(name: 'Job')
    JobId = Shapes::StringShape.new(name: 'JobId')
    JobIdList = Shapes::ListShape.new(name: 'JobIdList')
    JobType = Shapes::StringShape.new(name: 'JobType')
    JobsList = Shapes::ListShape.new(name: 'JobsList')
    ListJobsInput = Shapes::StructureShape.new(name: 'ListJobsInput')
    ListJobsOutput = Shapes::StructureShape.new(name: 'ListJobsOutput')
    LocationCode = Shapes::StringShape.new(name: 'LocationCode')
    LocationMessage = Shapes::StringShape.new(name: 'LocationMessage')
    LogBucket = Shapes::StringShape.new(name: 'LogBucket')
    LogKey = Shapes::StringShape.new(name: 'LogKey')
    MalformedManifestException = Shapes::StructureShape.new(name: 'MalformedManifestException')
    Manifest = Shapes::StringShape.new(name: 'Manifest')
    ManifestAddendum = Shapes::StringShape.new(name: 'ManifestAddendum')
    Marker = Shapes::StringShape.new(name: 'Marker')
    MaxJobs = Shapes::IntegerShape.new(name: 'MaxJobs')
    MissingCustomsException = Shapes::StructureShape.new(name: 'MissingCustomsException')
    MissingManifestFieldException = Shapes::StructureShape.new(name: 'MissingManifestFieldException')
    MissingParameterException = Shapes::StructureShape.new(name: 'MissingParameterException')
    MultipleRegionsException = Shapes::StructureShape.new(name: 'MultipleRegionsException')
    NoSuchBucketException = Shapes::StructureShape.new(name: 'NoSuchBucketException')
    ProgressCode = Shapes::StringShape.new(name: 'ProgressCode')
    ProgressMessage = Shapes::StringShape.new(name: 'ProgressMessage')
    Signature = Shapes::StringShape.new(name: 'Signature')
    SignatureFileContents = Shapes::StringShape.new(name: 'SignatureFileContents')
    Success = Shapes::BooleanShape.new(name: 'Success')
    TrackingNumber = Shapes::StringShape.new(name: 'TrackingNumber')
    URL = Shapes::StringShape.new(name: 'URL')
    UnableToCancelJobIdException = Shapes::StructureShape.new(name: 'UnableToCancelJobIdException')
    UnableToUpdateJobIdException = Shapes::StructureShape.new(name: 'UnableToUpdateJobIdException')
    UpdateJobInput = Shapes::StructureShape.new(name: 'UpdateJobInput')
    UpdateJobOutput = Shapes::StructureShape.new(name: 'UpdateJobOutput')
    ValidateOnly = Shapes::BooleanShape.new(name: 'ValidateOnly')
    WarningMessage = Shapes::StringShape.new(name: 'WarningMessage')
    city = Shapes::StringShape.new(name: 'city')
    company = Shapes::StringShape.new(name: 'company')
    country = Shapes::StringShape.new(name: 'country')
    name = Shapes::StringShape.new(name: 'name')
    phoneNumber = Shapes::StringShape.new(name: 'phoneNumber')
    postalCode = Shapes::StringShape.new(name: 'postalCode')
    stateOrProvince = Shapes::StringShape.new(name: 'stateOrProvince')
    street1 = Shapes::StringShape.new(name: 'street1')
    street2 = Shapes::StringShape.new(name: 'street2')
    street3 = Shapes::StringShape.new(name: 'street3')

    Artifact.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    Artifact.add_member(:url, Shapes::ShapeRef.new(shape: URL, location_name: "URL"))
    Artifact.struct_class = Types::Artifact

    ArtifactList.member = Shapes::ShapeRef.new(shape: Artifact)

    CancelJobInput.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "JobId"))
    CancelJobInput.add_member(:api_version, Shapes::ShapeRef.new(shape: APIVersion, location_name: "APIVersion"))
    CancelJobInput.struct_class = Types::CancelJobInput

    CancelJobOutput.add_member(:success, Shapes::ShapeRef.new(shape: Success, location_name: "Success"))
    CancelJobOutput.struct_class = Types::CancelJobOutput

    CreateJobInput.add_member(:job_type, Shapes::ShapeRef.new(shape: JobType, required: true, location_name: "JobType"))
    CreateJobInput.add_member(:manifest, Shapes::ShapeRef.new(shape: Manifest, required: true, location_name: "Manifest"))
    CreateJobInput.add_member(:manifest_addendum, Shapes::ShapeRef.new(shape: ManifestAddendum, location_name: "ManifestAddendum"))
    CreateJobInput.add_member(:validate_only, Shapes::ShapeRef.new(shape: ValidateOnly, required: true, location_name: "ValidateOnly"))
    CreateJobInput.add_member(:api_version, Shapes::ShapeRef.new(shape: APIVersion, location_name: "APIVersion"))
    CreateJobInput.struct_class = Types::CreateJobInput

    CreateJobOutput.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, location_name: "JobId"))
    CreateJobOutput.add_member(:job_type, Shapes::ShapeRef.new(shape: JobType, location_name: "JobType"))
    CreateJobOutput.add_member(:signature, Shapes::ShapeRef.new(shape: Signature, location_name: "Signature"))
    CreateJobOutput.add_member(:signature_file_contents, Shapes::ShapeRef.new(shape: SignatureFileContents, location_name: "SignatureFileContents"))
    CreateJobOutput.add_member(:warning_message, Shapes::ShapeRef.new(shape: WarningMessage, location_name: "WarningMessage"))
    CreateJobOutput.add_member(:artifact_list, Shapes::ShapeRef.new(shape: ArtifactList, location_name: "ArtifactList"))
    CreateJobOutput.struct_class = Types::CreateJobOutput

    GetShippingLabelInput.add_member(:job_ids, Shapes::ShapeRef.new(shape: JobIdList, required: true, location_name: "jobIds"))
    GetShippingLabelInput.add_member(:name, Shapes::ShapeRef.new(shape: name, location_name: "name"))
    GetShippingLabelInput.add_member(:company, Shapes::ShapeRef.new(shape: company, location_name: "company"))
    GetShippingLabelInput.add_member(:phone_number, Shapes::ShapeRef.new(shape: phoneNumber, location_name: "phoneNumber"))
    GetShippingLabelInput.add_member(:country, Shapes::ShapeRef.new(shape: country, location_name: "country"))
    GetShippingLabelInput.add_member(:state_or_province, Shapes::ShapeRef.new(shape: stateOrProvince, location_name: "stateOrProvince"))
    GetShippingLabelInput.add_member(:city, Shapes::ShapeRef.new(shape: city, location_name: "city"))
    GetShippingLabelInput.add_member(:postal_code, Shapes::ShapeRef.new(shape: postalCode, location_name: "postalCode"))
    GetShippingLabelInput.add_member(:street1, Shapes::ShapeRef.new(shape: street1, location_name: "street1"))
    GetShippingLabelInput.add_member(:street2, Shapes::ShapeRef.new(shape: street2, location_name: "street2"))
    GetShippingLabelInput.add_member(:street3, Shapes::ShapeRef.new(shape: street3, location_name: "street3"))
    GetShippingLabelInput.add_member(:api_version, Shapes::ShapeRef.new(shape: APIVersion, location_name: "APIVersion"))
    GetShippingLabelInput.struct_class = Types::GetShippingLabelInput

    GetShippingLabelOutput.add_member(:shipping_label_url, Shapes::ShapeRef.new(shape: GenericString, location_name: "ShippingLabelURL"))
    GetShippingLabelOutput.add_member(:warning, Shapes::ShapeRef.new(shape: GenericString, location_name: "Warning"))
    GetShippingLabelOutput.struct_class = Types::GetShippingLabelOutput

    GetStatusInput.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "JobId"))
    GetStatusInput.add_member(:api_version, Shapes::ShapeRef.new(shape: APIVersion, location_name: "APIVersion"))
    GetStatusInput.struct_class = Types::GetStatusInput

    GetStatusOutput.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, location_name: "JobId"))
    GetStatusOutput.add_member(:job_type, Shapes::ShapeRef.new(shape: JobType, location_name: "JobType"))
    GetStatusOutput.add_member(:location_code, Shapes::ShapeRef.new(shape: LocationCode, location_name: "LocationCode"))
    GetStatusOutput.add_member(:location_message, Shapes::ShapeRef.new(shape: LocationMessage, location_name: "LocationMessage"))
    GetStatusOutput.add_member(:progress_code, Shapes::ShapeRef.new(shape: ProgressCode, location_name: "ProgressCode"))
    GetStatusOutput.add_member(:progress_message, Shapes::ShapeRef.new(shape: ProgressMessage, location_name: "ProgressMessage"))
    GetStatusOutput.add_member(:carrier, Shapes::ShapeRef.new(shape: Carrier, location_name: "Carrier"))
    GetStatusOutput.add_member(:tracking_number, Shapes::ShapeRef.new(shape: TrackingNumber, location_name: "TrackingNumber"))
    GetStatusOutput.add_member(:log_bucket, Shapes::ShapeRef.new(shape: LogBucket, location_name: "LogBucket"))
    GetStatusOutput.add_member(:log_key, Shapes::ShapeRef.new(shape: LogKey, location_name: "LogKey"))
    GetStatusOutput.add_member(:error_count, Shapes::ShapeRef.new(shape: ErrorCount, location_name: "ErrorCount"))
    GetStatusOutput.add_member(:signature, Shapes::ShapeRef.new(shape: Signature, location_name: "Signature"))
    GetStatusOutput.add_member(:signature_file_contents, Shapes::ShapeRef.new(shape: Signature, location_name: "SignatureFileContents"))
    GetStatusOutput.add_member(:current_manifest, Shapes::ShapeRef.new(shape: CurrentManifest, location_name: "CurrentManifest"))
    GetStatusOutput.add_member(:creation_date, Shapes::ShapeRef.new(shape: CreationDate, location_name: "CreationDate"))
    GetStatusOutput.add_member(:artifact_list, Shapes::ShapeRef.new(shape: ArtifactList, location_name: "ArtifactList"))
    GetStatusOutput.struct_class = Types::GetStatusOutput

    Job.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, location_name: "JobId"))
    Job.add_member(:creation_date, Shapes::ShapeRef.new(shape: CreationDate, location_name: "CreationDate"))
    Job.add_member(:is_canceled, Shapes::ShapeRef.new(shape: IsCanceled, location_name: "IsCanceled"))
    Job.add_member(:job_type, Shapes::ShapeRef.new(shape: JobType, location_name: "JobType"))
    Job.struct_class = Types::Job

    JobIdList.member = Shapes::ShapeRef.new(shape: GenericString)

    JobsList.member = Shapes::ShapeRef.new(shape: Job)

    ListJobsInput.add_member(:max_jobs, Shapes::ShapeRef.new(shape: MaxJobs, location_name: "MaxJobs"))
    ListJobsInput.add_member(:marker, Shapes::ShapeRef.new(shape: Marker, location_name: "Marker"))
    ListJobsInput.add_member(:api_version, Shapes::ShapeRef.new(shape: APIVersion, location_name: "APIVersion"))
    ListJobsInput.struct_class = Types::ListJobsInput

    ListJobsOutput.add_member(:jobs, Shapes::ShapeRef.new(shape: JobsList, location_name: "Jobs"))
    ListJobsOutput.add_member(:is_truncated, Shapes::ShapeRef.new(shape: IsTruncated, location_name: "IsTruncated"))
    ListJobsOutput.struct_class = Types::ListJobsOutput

    UpdateJobInput.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "JobId"))
    UpdateJobInput.add_member(:manifest, Shapes::ShapeRef.new(shape: Manifest, required: true, location_name: "Manifest"))
    UpdateJobInput.add_member(:job_type, Shapes::ShapeRef.new(shape: JobType, required: true, location_name: "JobType"))
    UpdateJobInput.add_member(:validate_only, Shapes::ShapeRef.new(shape: ValidateOnly, required: true, location_name: "ValidateOnly"))
    UpdateJobInput.add_member(:api_version, Shapes::ShapeRef.new(shape: APIVersion, location_name: "APIVersion"))
    UpdateJobInput.struct_class = Types::UpdateJobInput

    UpdateJobOutput.add_member(:success, Shapes::ShapeRef.new(shape: Success, location_name: "Success"))
    UpdateJobOutput.add_member(:warning_message, Shapes::ShapeRef.new(shape: WarningMessage, location_name: "WarningMessage"))
    UpdateJobOutput.add_member(:artifact_list, Shapes::ShapeRef.new(shape: ArtifactList, location_name: "ArtifactList"))
    UpdateJobOutput.struct_class = Types::UpdateJobOutput


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2010-06-01"

      api.metadata = {
        "apiVersion" => "2010-06-01",
        "endpointPrefix" => "importexport",
        "globalEndpoint" => "importexport.amazonaws.com",
        "protocol" => "query",
        "serviceFullName" => "AWS Import/Export",
        "signatureVersion" => "v2",
        "uid" => "importexport-2010-06-01",
        "xmlNamespace" => "http://importexport.amazonaws.com/doc/2010-06-01/",
      }

      api.add_operation(:cancel_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CancelJobInput)
        o.output = Shapes::ShapeRef.new(shape: CancelJobOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidJobIdException)
        o.errors << Shapes::ShapeRef.new(shape: ExpiredJobIdException)
        o.errors << Shapes::ShapeRef.new(shape: CanceledJobIdException)
        o.errors << Shapes::ShapeRef.new(shape: UnableToCancelJobIdException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccessKeyIdException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidVersionException)
      end)

      api.add_operation(:create_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateJobInput)
        o.output = Shapes::ShapeRef.new(shape: CreateJobOutput)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccessKeyIdException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAddressException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidManifestFieldException)
        o.errors << Shapes::ShapeRef.new(shape: MissingManifestFieldException)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchBucketException)
        o.errors << Shapes::ShapeRef.new(shape: MissingCustomsException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidCustomsException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidFileSystemException)
        o.errors << Shapes::ShapeRef.new(shape: MultipleRegionsException)
        o.errors << Shapes::ShapeRef.new(shape: BucketPermissionException)
        o.errors << Shapes::ShapeRef.new(shape: MalformedManifestException)
        o.errors << Shapes::ShapeRef.new(shape: CreateJobQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidJobIdException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidVersionException)
      end)

      api.add_operation(:get_shipping_label, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetShippingLabel"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetShippingLabelInput)
        o.output = Shapes::ShapeRef.new(shape: GetShippingLabelOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidJobIdException)
        o.errors << Shapes::ShapeRef.new(shape: ExpiredJobIdException)
        o.errors << Shapes::ShapeRef.new(shape: CanceledJobIdException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccessKeyIdException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAddressException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidVersionException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
      end)

      api.add_operation(:get_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetStatus"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetStatusInput)
        o.output = Shapes::ShapeRef.new(shape: GetStatusOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidJobIdException)
        o.errors << Shapes::ShapeRef.new(shape: ExpiredJobIdException)
        o.errors << Shapes::ShapeRef.new(shape: CanceledJobIdException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccessKeyIdException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidVersionException)
      end)

      api.add_operation(:list_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListJobs"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListJobsInput)
        o.output = Shapes::ShapeRef.new(shape: ListJobsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccessKeyIdException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidVersionException)
        o[:pager] = Aws::Pager.new(
          more_results: "is_truncated",
          limit_key: "max_jobs",
          tokens: {
            "jobs[-1].job_id" => "marker"
          }
        )
      end)

      api.add_operation(:update_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateJobInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateJobOutput)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccessKeyIdException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAddressException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidManifestFieldException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidJobIdException)
        o.errors << Shapes::ShapeRef.new(shape: MissingManifestFieldException)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchBucketException)
        o.errors << Shapes::ShapeRef.new(shape: ExpiredJobIdException)
        o.errors << Shapes::ShapeRef.new(shape: CanceledJobIdException)
        o.errors << Shapes::ShapeRef.new(shape: MissingCustomsException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidCustomsException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidFileSystemException)
        o.errors << Shapes::ShapeRef.new(shape: MultipleRegionsException)
        o.errors << Shapes::ShapeRef.new(shape: BucketPermissionException)
        o.errors << Shapes::ShapeRef.new(shape: MalformedManifestException)
        o.errors << Shapes::ShapeRef.new(shape: UnableToUpdateJobIdException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidVersionException)
      end)
    end

  end
end
