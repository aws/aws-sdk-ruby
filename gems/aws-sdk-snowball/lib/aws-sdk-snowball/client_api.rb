# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Snowball
  # @api private
  module ClientApi

    include Seahorse::Model

    Address = Shapes::StructureShape.new(name: 'Address')
    AddressId = Shapes::StringShape.new(name: 'AddressId')
    AddressList = Shapes::ListShape.new(name: 'AddressList')
    AmiId = Shapes::StringShape.new(name: 'AmiId')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    CancelClusterRequest = Shapes::StructureShape.new(name: 'CancelClusterRequest')
    CancelClusterResult = Shapes::StructureShape.new(name: 'CancelClusterResult')
    CancelJobRequest = Shapes::StructureShape.new(name: 'CancelJobRequest')
    CancelJobResult = Shapes::StructureShape.new(name: 'CancelJobResult')
    ClusterId = Shapes::StringShape.new(name: 'ClusterId')
    ClusterLimitExceededException = Shapes::StructureShape.new(name: 'ClusterLimitExceededException')
    ClusterListEntry = Shapes::StructureShape.new(name: 'ClusterListEntry')
    ClusterListEntryList = Shapes::ListShape.new(name: 'ClusterListEntryList')
    ClusterMetadata = Shapes::StructureShape.new(name: 'ClusterMetadata')
    ClusterState = Shapes::StringShape.new(name: 'ClusterState')
    CompatibleImage = Shapes::StructureShape.new(name: 'CompatibleImage')
    CompatibleImageList = Shapes::ListShape.new(name: 'CompatibleImageList')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateAddressRequest = Shapes::StructureShape.new(name: 'CreateAddressRequest')
    CreateAddressResult = Shapes::StructureShape.new(name: 'CreateAddressResult')
    CreateClusterRequest = Shapes::StructureShape.new(name: 'CreateClusterRequest')
    CreateClusterResult = Shapes::StructureShape.new(name: 'CreateClusterResult')
    CreateJobRequest = Shapes::StructureShape.new(name: 'CreateJobRequest')
    CreateJobResult = Shapes::StructureShape.new(name: 'CreateJobResult')
    CreateLongTermPricingRequest = Shapes::StructureShape.new(name: 'CreateLongTermPricingRequest')
    CreateLongTermPricingResult = Shapes::StructureShape.new(name: 'CreateLongTermPricingResult')
    CreateReturnShippingLabelRequest = Shapes::StructureShape.new(name: 'CreateReturnShippingLabelRequest')
    CreateReturnShippingLabelResult = Shapes::StructureShape.new(name: 'CreateReturnShippingLabelResult')
    DataTransfer = Shapes::StructureShape.new(name: 'DataTransfer')
    DependentService = Shapes::StructureShape.new(name: 'DependentService')
    DependentServiceList = Shapes::ListShape.new(name: 'DependentServiceList')
    DescribeAddressRequest = Shapes::StructureShape.new(name: 'DescribeAddressRequest')
    DescribeAddressResult = Shapes::StructureShape.new(name: 'DescribeAddressResult')
    DescribeAddressesRequest = Shapes::StructureShape.new(name: 'DescribeAddressesRequest')
    DescribeAddressesResult = Shapes::StructureShape.new(name: 'DescribeAddressesResult')
    DescribeClusterRequest = Shapes::StructureShape.new(name: 'DescribeClusterRequest')
    DescribeClusterResult = Shapes::StructureShape.new(name: 'DescribeClusterResult')
    DescribeJobRequest = Shapes::StructureShape.new(name: 'DescribeJobRequest')
    DescribeJobResult = Shapes::StructureShape.new(name: 'DescribeJobResult')
    DescribeReturnShippingLabelRequest = Shapes::StructureShape.new(name: 'DescribeReturnShippingLabelRequest')
    DescribeReturnShippingLabelResult = Shapes::StructureShape.new(name: 'DescribeReturnShippingLabelResult')
    DeviceConfiguration = Shapes::StructureShape.new(name: 'DeviceConfiguration')
    DeviceServiceName = Shapes::StringShape.new(name: 'DeviceServiceName')
    EKSOnDeviceServiceConfiguration = Shapes::StructureShape.new(name: 'EKSOnDeviceServiceConfiguration')
    Ec2AmiResource = Shapes::StructureShape.new(name: 'Ec2AmiResource')
    Ec2AmiResourceList = Shapes::ListShape.new(name: 'Ec2AmiResourceList')
    Ec2RequestFailedException = Shapes::StructureShape.new(name: 'Ec2RequestFailedException')
    EventTriggerDefinition = Shapes::StructureShape.new(name: 'EventTriggerDefinition')
    EventTriggerDefinitionList = Shapes::ListShape.new(name: 'EventTriggerDefinitionList')
    GSTIN = Shapes::StringShape.new(name: 'GSTIN')
    GetJobManifestRequest = Shapes::StructureShape.new(name: 'GetJobManifestRequest')
    GetJobManifestResult = Shapes::StructureShape.new(name: 'GetJobManifestResult')
    GetJobUnlockCodeRequest = Shapes::StructureShape.new(name: 'GetJobUnlockCodeRequest')
    GetJobUnlockCodeResult = Shapes::StructureShape.new(name: 'GetJobUnlockCodeResult')
    GetSnowballUsageRequest = Shapes::StructureShape.new(name: 'GetSnowballUsageRequest')
    GetSnowballUsageResult = Shapes::StructureShape.new(name: 'GetSnowballUsageResult')
    GetSoftwareUpdatesRequest = Shapes::StructureShape.new(name: 'GetSoftwareUpdatesRequest')
    GetSoftwareUpdatesResult = Shapes::StructureShape.new(name: 'GetSoftwareUpdatesResult')
    INDTaxDocuments = Shapes::StructureShape.new(name: 'INDTaxDocuments')
    InitialClusterSize = Shapes::IntegerShape.new(name: 'InitialClusterSize')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InvalidAddressException = Shapes::StructureShape.new(name: 'InvalidAddressException')
    InvalidInputCombinationException = Shapes::StructureShape.new(name: 'InvalidInputCombinationException')
    InvalidJobStateException = Shapes::StructureShape.new(name: 'InvalidJobStateException')
    InvalidNextTokenException = Shapes::StructureShape.new(name: 'InvalidNextTokenException')
    InvalidResourceException = Shapes::StructureShape.new(name: 'InvalidResourceException')
    JavaBoolean = Shapes::BooleanShape.new(name: 'JavaBoolean')
    JobId = Shapes::StringShape.new(name: 'JobId')
    JobListEntry = Shapes::StructureShape.new(name: 'JobListEntry')
    JobListEntryList = Shapes::ListShape.new(name: 'JobListEntryList')
    JobLogs = Shapes::StructureShape.new(name: 'JobLogs')
    JobMetadata = Shapes::StructureShape.new(name: 'JobMetadata')
    JobMetadataList = Shapes::ListShape.new(name: 'JobMetadataList')
    JobResource = Shapes::StructureShape.new(name: 'JobResource')
    JobState = Shapes::StringShape.new(name: 'JobState')
    JobStateList = Shapes::ListShape.new(name: 'JobStateList')
    JobType = Shapes::StringShape.new(name: 'JobType')
    KMSRequestFailedException = Shapes::StructureShape.new(name: 'KMSRequestFailedException')
    KeyRange = Shapes::StructureShape.new(name: 'KeyRange')
    KmsKeyARN = Shapes::StringShape.new(name: 'KmsKeyARN')
    LambdaResource = Shapes::StructureShape.new(name: 'LambdaResource')
    LambdaResourceList = Shapes::ListShape.new(name: 'LambdaResourceList')
    ListClusterJobsRequest = Shapes::StructureShape.new(name: 'ListClusterJobsRequest')
    ListClusterJobsResult = Shapes::StructureShape.new(name: 'ListClusterJobsResult')
    ListClustersRequest = Shapes::StructureShape.new(name: 'ListClustersRequest')
    ListClustersResult = Shapes::StructureShape.new(name: 'ListClustersResult')
    ListCompatibleImagesRequest = Shapes::StructureShape.new(name: 'ListCompatibleImagesRequest')
    ListCompatibleImagesResult = Shapes::StructureShape.new(name: 'ListCompatibleImagesResult')
    ListJobsRequest = Shapes::StructureShape.new(name: 'ListJobsRequest')
    ListJobsResult = Shapes::StructureShape.new(name: 'ListJobsResult')
    ListLimit = Shapes::IntegerShape.new(name: 'ListLimit')
    ListLongTermPricingRequest = Shapes::StructureShape.new(name: 'ListLongTermPricingRequest')
    ListLongTermPricingResult = Shapes::StructureShape.new(name: 'ListLongTermPricingResult')
    ListServiceVersionsRequest = Shapes::StructureShape.new(name: 'ListServiceVersionsRequest')
    ListServiceVersionsResult = Shapes::StructureShape.new(name: 'ListServiceVersionsResult')
    Long = Shapes::IntegerShape.new(name: 'Long')
    LongTermPricingAssociatedJobIdList = Shapes::ListShape.new(name: 'LongTermPricingAssociatedJobIdList')
    LongTermPricingEntryList = Shapes::ListShape.new(name: 'LongTermPricingEntryList')
    LongTermPricingId = Shapes::StringShape.new(name: 'LongTermPricingId')
    LongTermPricingIdList = Shapes::ListShape.new(name: 'LongTermPricingIdList')
    LongTermPricingListEntry = Shapes::StructureShape.new(name: 'LongTermPricingListEntry')
    LongTermPricingType = Shapes::StringShape.new(name: 'LongTermPricingType')
    NFSOnDeviceServiceConfiguration = Shapes::StructureShape.new(name: 'NFSOnDeviceServiceConfiguration')
    NodeFaultTolerance = Shapes::IntegerShape.new(name: 'NodeFaultTolerance')
    Notification = Shapes::StructureShape.new(name: 'Notification')
    OnDeviceServiceConfiguration = Shapes::StructureShape.new(name: 'OnDeviceServiceConfiguration')
    RemoteManagement = Shapes::StringShape.new(name: 'RemoteManagement')
    ResourceARN = Shapes::StringShape.new(name: 'ResourceARN')
    ReturnShippingLabelAlreadyExistsException = Shapes::StructureShape.new(name: 'ReturnShippingLabelAlreadyExistsException')
    RoleARN = Shapes::StringShape.new(name: 'RoleARN')
    S3OnDeviceServiceConfiguration = Shapes::StructureShape.new(name: 'S3OnDeviceServiceConfiguration')
    S3Resource = Shapes::StructureShape.new(name: 'S3Resource')
    S3ResourceList = Shapes::ListShape.new(name: 'S3ResourceList')
    S3StorageLimit = Shapes::FloatShape.new(name: 'S3StorageLimit')
    ServiceName = Shapes::StringShape.new(name: 'ServiceName')
    ServiceSize = Shapes::IntegerShape.new(name: 'ServiceSize')
    ServiceVersion = Shapes::StructureShape.new(name: 'ServiceVersion')
    ServiceVersionList = Shapes::ListShape.new(name: 'ServiceVersionList')
    Shipment = Shapes::StructureShape.new(name: 'Shipment')
    ShipmentState = Shapes::StringShape.new(name: 'ShipmentState')
    ShippingDetails = Shapes::StructureShape.new(name: 'ShippingDetails')
    ShippingLabelStatus = Shapes::StringShape.new(name: 'ShippingLabelStatus')
    ShippingOption = Shapes::StringShape.new(name: 'ShippingOption')
    SnowballCapacity = Shapes::StringShape.new(name: 'SnowballCapacity')
    SnowballType = Shapes::StringShape.new(name: 'SnowballType')
    SnowconeDeviceConfiguration = Shapes::StructureShape.new(name: 'SnowconeDeviceConfiguration')
    SnsTopicARN = Shapes::StringShape.new(name: 'SnsTopicARN')
    StorageLimit = Shapes::IntegerShape.new(name: 'StorageLimit')
    StorageUnit = Shapes::StringShape.new(name: 'StorageUnit')
    String = Shapes::StringShape.new(name: 'String')
    TGWOnDeviceServiceConfiguration = Shapes::StructureShape.new(name: 'TGWOnDeviceServiceConfiguration')
    TargetOnDeviceService = Shapes::StructureShape.new(name: 'TargetOnDeviceService')
    TargetOnDeviceServiceList = Shapes::ListShape.new(name: 'TargetOnDeviceServiceList')
    TaxDocuments = Shapes::StructureShape.new(name: 'TaxDocuments')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    TransferOption = Shapes::StringShape.new(name: 'TransferOption')
    UnsupportedAddressException = Shapes::StructureShape.new(name: 'UnsupportedAddressException')
    UpdateClusterRequest = Shapes::StructureShape.new(name: 'UpdateClusterRequest')
    UpdateClusterResult = Shapes::StructureShape.new(name: 'UpdateClusterResult')
    UpdateJobRequest = Shapes::StructureShape.new(name: 'UpdateJobRequest')
    UpdateJobResult = Shapes::StructureShape.new(name: 'UpdateJobResult')
    UpdateJobShipmentStateRequest = Shapes::StructureShape.new(name: 'UpdateJobShipmentStateRequest')
    UpdateJobShipmentStateResult = Shapes::StructureShape.new(name: 'UpdateJobShipmentStateResult')
    UpdateLongTermPricingRequest = Shapes::StructureShape.new(name: 'UpdateLongTermPricingRequest')
    UpdateLongTermPricingResult = Shapes::StructureShape.new(name: 'UpdateLongTermPricingResult')
    WirelessConnection = Shapes::StructureShape.new(name: 'WirelessConnection')

    Address.add_member(:address_id, Shapes::ShapeRef.new(shape: AddressId, location_name: "AddressId"))
    Address.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    Address.add_member(:company, Shapes::ShapeRef.new(shape: String, location_name: "Company"))
    Address.add_member(:street_1, Shapes::ShapeRef.new(shape: String, location_name: "Street1"))
    Address.add_member(:street_2, Shapes::ShapeRef.new(shape: String, location_name: "Street2"))
    Address.add_member(:street_3, Shapes::ShapeRef.new(shape: String, location_name: "Street3"))
    Address.add_member(:city, Shapes::ShapeRef.new(shape: String, location_name: "City"))
    Address.add_member(:state_or_province, Shapes::ShapeRef.new(shape: String, location_name: "StateOrProvince"))
    Address.add_member(:prefecture_or_district, Shapes::ShapeRef.new(shape: String, location_name: "PrefectureOrDistrict"))
    Address.add_member(:landmark, Shapes::ShapeRef.new(shape: String, location_name: "Landmark"))
    Address.add_member(:country, Shapes::ShapeRef.new(shape: String, location_name: "Country"))
    Address.add_member(:postal_code, Shapes::ShapeRef.new(shape: String, location_name: "PostalCode"))
    Address.add_member(:phone_number, Shapes::ShapeRef.new(shape: String, location_name: "PhoneNumber"))
    Address.add_member(:is_restricted, Shapes::ShapeRef.new(shape: Boolean, location_name: "IsRestricted"))
    Address.struct_class = Types::Address

    AddressList.member = Shapes::ShapeRef.new(shape: Address)

    CancelClusterRequest.add_member(:cluster_id, Shapes::ShapeRef.new(shape: ClusterId, required: true, location_name: "ClusterId"))
    CancelClusterRequest.struct_class = Types::CancelClusterRequest

    CancelClusterResult.struct_class = Types::CancelClusterResult

    CancelJobRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "JobId"))
    CancelJobRequest.struct_class = Types::CancelJobRequest

    CancelJobResult.struct_class = Types::CancelJobResult

    ClusterLimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ClusterLimitExceededException.struct_class = Types::ClusterLimitExceededException

    ClusterListEntry.add_member(:cluster_id, Shapes::ShapeRef.new(shape: String, location_name: "ClusterId"))
    ClusterListEntry.add_member(:cluster_state, Shapes::ShapeRef.new(shape: ClusterState, location_name: "ClusterState"))
    ClusterListEntry.add_member(:creation_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationDate"))
    ClusterListEntry.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    ClusterListEntry.struct_class = Types::ClusterListEntry

    ClusterListEntryList.member = Shapes::ShapeRef.new(shape: ClusterListEntry)

    ClusterMetadata.add_member(:cluster_id, Shapes::ShapeRef.new(shape: String, location_name: "ClusterId"))
    ClusterMetadata.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    ClusterMetadata.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyARN, location_name: "KmsKeyARN"))
    ClusterMetadata.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleARN, location_name: "RoleARN"))
    ClusterMetadata.add_member(:cluster_state, Shapes::ShapeRef.new(shape: ClusterState, location_name: "ClusterState"))
    ClusterMetadata.add_member(:job_type, Shapes::ShapeRef.new(shape: JobType, location_name: "JobType"))
    ClusterMetadata.add_member(:snowball_type, Shapes::ShapeRef.new(shape: SnowballType, location_name: "SnowballType"))
    ClusterMetadata.add_member(:creation_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationDate"))
    ClusterMetadata.add_member(:resources, Shapes::ShapeRef.new(shape: JobResource, location_name: "Resources"))
    ClusterMetadata.add_member(:address_id, Shapes::ShapeRef.new(shape: AddressId, location_name: "AddressId"))
    ClusterMetadata.add_member(:shipping_option, Shapes::ShapeRef.new(shape: ShippingOption, location_name: "ShippingOption"))
    ClusterMetadata.add_member(:notification, Shapes::ShapeRef.new(shape: Notification, location_name: "Notification"))
    ClusterMetadata.add_member(:forwarding_address_id, Shapes::ShapeRef.new(shape: AddressId, location_name: "ForwardingAddressId"))
    ClusterMetadata.add_member(:tax_documents, Shapes::ShapeRef.new(shape: TaxDocuments, location_name: "TaxDocuments"))
    ClusterMetadata.add_member(:on_device_service_configuration, Shapes::ShapeRef.new(shape: OnDeviceServiceConfiguration, location_name: "OnDeviceServiceConfiguration"))
    ClusterMetadata.struct_class = Types::ClusterMetadata

    CompatibleImage.add_member(:ami_id, Shapes::ShapeRef.new(shape: String, location_name: "AmiId"))
    CompatibleImage.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    CompatibleImage.struct_class = Types::CompatibleImage

    CompatibleImageList.member = Shapes::ShapeRef.new(shape: CompatibleImage)

    ConflictException.add_member(:conflict_resource, Shapes::ShapeRef.new(shape: String, location_name: "ConflictResource"))
    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ConflictException.struct_class = Types::ConflictException

    CreateAddressRequest.add_member(:address, Shapes::ShapeRef.new(shape: Address, required: true, location_name: "Address"))
    CreateAddressRequest.struct_class = Types::CreateAddressRequest

    CreateAddressResult.add_member(:address_id, Shapes::ShapeRef.new(shape: String, location_name: "AddressId"))
    CreateAddressResult.struct_class = Types::CreateAddressResult

    CreateClusterRequest.add_member(:job_type, Shapes::ShapeRef.new(shape: JobType, required: true, location_name: "JobType"))
    CreateClusterRequest.add_member(:resources, Shapes::ShapeRef.new(shape: JobResource, location_name: "Resources"))
    CreateClusterRequest.add_member(:on_device_service_configuration, Shapes::ShapeRef.new(shape: OnDeviceServiceConfiguration, location_name: "OnDeviceServiceConfiguration"))
    CreateClusterRequest.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    CreateClusterRequest.add_member(:address_id, Shapes::ShapeRef.new(shape: AddressId, required: true, location_name: "AddressId"))
    CreateClusterRequest.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyARN, location_name: "KmsKeyARN"))
    CreateClusterRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleARN, location_name: "RoleARN"))
    CreateClusterRequest.add_member(:snowball_type, Shapes::ShapeRef.new(shape: SnowballType, required: true, location_name: "SnowballType"))
    CreateClusterRequest.add_member(:shipping_option, Shapes::ShapeRef.new(shape: ShippingOption, required: true, location_name: "ShippingOption"))
    CreateClusterRequest.add_member(:notification, Shapes::ShapeRef.new(shape: Notification, location_name: "Notification"))
    CreateClusterRequest.add_member(:forwarding_address_id, Shapes::ShapeRef.new(shape: AddressId, location_name: "ForwardingAddressId"))
    CreateClusterRequest.add_member(:tax_documents, Shapes::ShapeRef.new(shape: TaxDocuments, location_name: "TaxDocuments"))
    CreateClusterRequest.add_member(:remote_management, Shapes::ShapeRef.new(shape: RemoteManagement, location_name: "RemoteManagement"))
    CreateClusterRequest.add_member(:initial_cluster_size, Shapes::ShapeRef.new(shape: InitialClusterSize, location_name: "InitialClusterSize"))
    CreateClusterRequest.add_member(:force_create_jobs, Shapes::ShapeRef.new(shape: Boolean, location_name: "ForceCreateJobs"))
    CreateClusterRequest.add_member(:long_term_pricing_ids, Shapes::ShapeRef.new(shape: LongTermPricingIdList, location_name: "LongTermPricingIds"))
    CreateClusterRequest.add_member(:snowball_capacity_preference, Shapes::ShapeRef.new(shape: SnowballCapacity, location_name: "SnowballCapacityPreference"))
    CreateClusterRequest.struct_class = Types::CreateClusterRequest

    CreateClusterResult.add_member(:cluster_id, Shapes::ShapeRef.new(shape: ClusterId, location_name: "ClusterId"))
    CreateClusterResult.add_member(:job_list_entries, Shapes::ShapeRef.new(shape: JobListEntryList, location_name: "JobListEntries"))
    CreateClusterResult.struct_class = Types::CreateClusterResult

    CreateJobRequest.add_member(:job_type, Shapes::ShapeRef.new(shape: JobType, location_name: "JobType"))
    CreateJobRequest.add_member(:resources, Shapes::ShapeRef.new(shape: JobResource, location_name: "Resources"))
    CreateJobRequest.add_member(:on_device_service_configuration, Shapes::ShapeRef.new(shape: OnDeviceServiceConfiguration, location_name: "OnDeviceServiceConfiguration"))
    CreateJobRequest.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    CreateJobRequest.add_member(:address_id, Shapes::ShapeRef.new(shape: AddressId, location_name: "AddressId"))
    CreateJobRequest.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyARN, location_name: "KmsKeyARN"))
    CreateJobRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleARN, location_name: "RoleARN"))
    CreateJobRequest.add_member(:snowball_capacity_preference, Shapes::ShapeRef.new(shape: SnowballCapacity, location_name: "SnowballCapacityPreference"))
    CreateJobRequest.add_member(:shipping_option, Shapes::ShapeRef.new(shape: ShippingOption, location_name: "ShippingOption"))
    CreateJobRequest.add_member(:notification, Shapes::ShapeRef.new(shape: Notification, location_name: "Notification"))
    CreateJobRequest.add_member(:cluster_id, Shapes::ShapeRef.new(shape: ClusterId, location_name: "ClusterId"))
    CreateJobRequest.add_member(:snowball_type, Shapes::ShapeRef.new(shape: SnowballType, location_name: "SnowballType"))
    CreateJobRequest.add_member(:forwarding_address_id, Shapes::ShapeRef.new(shape: AddressId, location_name: "ForwardingAddressId"))
    CreateJobRequest.add_member(:tax_documents, Shapes::ShapeRef.new(shape: TaxDocuments, location_name: "TaxDocuments"))
    CreateJobRequest.add_member(:device_configuration, Shapes::ShapeRef.new(shape: DeviceConfiguration, location_name: "DeviceConfiguration"))
    CreateJobRequest.add_member(:remote_management, Shapes::ShapeRef.new(shape: RemoteManagement, location_name: "RemoteManagement"))
    CreateJobRequest.add_member(:long_term_pricing_id, Shapes::ShapeRef.new(shape: LongTermPricingId, location_name: "LongTermPricingId"))
    CreateJobRequest.struct_class = Types::CreateJobRequest

    CreateJobResult.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, location_name: "JobId"))
    CreateJobResult.struct_class = Types::CreateJobResult

    CreateLongTermPricingRequest.add_member(:long_term_pricing_type, Shapes::ShapeRef.new(shape: LongTermPricingType, required: true, location_name: "LongTermPricingType"))
    CreateLongTermPricingRequest.add_member(:is_long_term_pricing_auto_renew, Shapes::ShapeRef.new(shape: JavaBoolean, location_name: "IsLongTermPricingAutoRenew"))
    CreateLongTermPricingRequest.add_member(:snowball_type, Shapes::ShapeRef.new(shape: SnowballType, location_name: "SnowballType"))
    CreateLongTermPricingRequest.struct_class = Types::CreateLongTermPricingRequest

    CreateLongTermPricingResult.add_member(:long_term_pricing_id, Shapes::ShapeRef.new(shape: LongTermPricingId, location_name: "LongTermPricingId"))
    CreateLongTermPricingResult.struct_class = Types::CreateLongTermPricingResult

    CreateReturnShippingLabelRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "JobId"))
    CreateReturnShippingLabelRequest.add_member(:shipping_option, Shapes::ShapeRef.new(shape: ShippingOption, location_name: "ShippingOption"))
    CreateReturnShippingLabelRequest.struct_class = Types::CreateReturnShippingLabelRequest

    CreateReturnShippingLabelResult.add_member(:status, Shapes::ShapeRef.new(shape: ShippingLabelStatus, location_name: "Status"))
    CreateReturnShippingLabelResult.struct_class = Types::CreateReturnShippingLabelResult

    DataTransfer.add_member(:bytes_transferred, Shapes::ShapeRef.new(shape: Long, location_name: "BytesTransferred"))
    DataTransfer.add_member(:objects_transferred, Shapes::ShapeRef.new(shape: Long, location_name: "ObjectsTransferred"))
    DataTransfer.add_member(:total_bytes, Shapes::ShapeRef.new(shape: Long, location_name: "TotalBytes"))
    DataTransfer.add_member(:total_objects, Shapes::ShapeRef.new(shape: Long, location_name: "TotalObjects"))
    DataTransfer.struct_class = Types::DataTransfer

    DependentService.add_member(:service_name, Shapes::ShapeRef.new(shape: ServiceName, location_name: "ServiceName"))
    DependentService.add_member(:service_version, Shapes::ShapeRef.new(shape: ServiceVersion, location_name: "ServiceVersion"))
    DependentService.struct_class = Types::DependentService

    DependentServiceList.member = Shapes::ShapeRef.new(shape: DependentService)

    DescribeAddressRequest.add_member(:address_id, Shapes::ShapeRef.new(shape: AddressId, required: true, location_name: "AddressId"))
    DescribeAddressRequest.struct_class = Types::DescribeAddressRequest

    DescribeAddressResult.add_member(:address, Shapes::ShapeRef.new(shape: Address, location_name: "Address"))
    DescribeAddressResult.struct_class = Types::DescribeAddressResult

    DescribeAddressesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListLimit, location_name: "MaxResults"))
    DescribeAddressesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeAddressesRequest.struct_class = Types::DescribeAddressesRequest

    DescribeAddressesResult.add_member(:addresses, Shapes::ShapeRef.new(shape: AddressList, location_name: "Addresses"))
    DescribeAddressesResult.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeAddressesResult.struct_class = Types::DescribeAddressesResult

    DescribeClusterRequest.add_member(:cluster_id, Shapes::ShapeRef.new(shape: ClusterId, required: true, location_name: "ClusterId"))
    DescribeClusterRequest.struct_class = Types::DescribeClusterRequest

    DescribeClusterResult.add_member(:cluster_metadata, Shapes::ShapeRef.new(shape: ClusterMetadata, location_name: "ClusterMetadata"))
    DescribeClusterResult.struct_class = Types::DescribeClusterResult

    DescribeJobRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "JobId"))
    DescribeJobRequest.struct_class = Types::DescribeJobRequest

    DescribeJobResult.add_member(:job_metadata, Shapes::ShapeRef.new(shape: JobMetadata, location_name: "JobMetadata"))
    DescribeJobResult.add_member(:sub_job_metadata, Shapes::ShapeRef.new(shape: JobMetadataList, location_name: "SubJobMetadata"))
    DescribeJobResult.struct_class = Types::DescribeJobResult

    DescribeReturnShippingLabelRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "JobId"))
    DescribeReturnShippingLabelRequest.struct_class = Types::DescribeReturnShippingLabelRequest

    DescribeReturnShippingLabelResult.add_member(:status, Shapes::ShapeRef.new(shape: ShippingLabelStatus, location_name: "Status"))
    DescribeReturnShippingLabelResult.add_member(:expiration_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "ExpirationDate"))
    DescribeReturnShippingLabelResult.add_member(:return_shipping_label_uri, Shapes::ShapeRef.new(shape: String, location_name: "ReturnShippingLabelURI"))
    DescribeReturnShippingLabelResult.struct_class = Types::DescribeReturnShippingLabelResult

    DeviceConfiguration.add_member(:snowcone_device_configuration, Shapes::ShapeRef.new(shape: SnowconeDeviceConfiguration, location_name: "SnowconeDeviceConfiguration"))
    DeviceConfiguration.struct_class = Types::DeviceConfiguration

    EKSOnDeviceServiceConfiguration.add_member(:kubernetes_version, Shapes::ShapeRef.new(shape: String, location_name: "KubernetesVersion"))
    EKSOnDeviceServiceConfiguration.add_member(:eks_anywhere_version, Shapes::ShapeRef.new(shape: String, location_name: "EKSAnywhereVersion"))
    EKSOnDeviceServiceConfiguration.struct_class = Types::EKSOnDeviceServiceConfiguration

    Ec2AmiResource.add_member(:ami_id, Shapes::ShapeRef.new(shape: AmiId, required: true, location_name: "AmiId"))
    Ec2AmiResource.add_member(:snowball_ami_id, Shapes::ShapeRef.new(shape: String, location_name: "SnowballAmiId"))
    Ec2AmiResource.struct_class = Types::Ec2AmiResource

    Ec2AmiResourceList.member = Shapes::ShapeRef.new(shape: Ec2AmiResource)

    Ec2RequestFailedException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    Ec2RequestFailedException.struct_class = Types::Ec2RequestFailedException

    EventTriggerDefinition.add_member(:event_resource_arn, Shapes::ShapeRef.new(shape: ResourceARN, location_name: "EventResourceARN"))
    EventTriggerDefinition.struct_class = Types::EventTriggerDefinition

    EventTriggerDefinitionList.member = Shapes::ShapeRef.new(shape: EventTriggerDefinition)

    GetJobManifestRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "JobId"))
    GetJobManifestRequest.struct_class = Types::GetJobManifestRequest

    GetJobManifestResult.add_member(:manifest_uri, Shapes::ShapeRef.new(shape: String, location_name: "ManifestURI"))
    GetJobManifestResult.struct_class = Types::GetJobManifestResult

    GetJobUnlockCodeRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "JobId"))
    GetJobUnlockCodeRequest.struct_class = Types::GetJobUnlockCodeRequest

    GetJobUnlockCodeResult.add_member(:unlock_code, Shapes::ShapeRef.new(shape: String, location_name: "UnlockCode"))
    GetJobUnlockCodeResult.struct_class = Types::GetJobUnlockCodeResult

    GetSnowballUsageRequest.struct_class = Types::GetSnowballUsageRequest

    GetSnowballUsageResult.add_member(:snowball_limit, Shapes::ShapeRef.new(shape: Integer, location_name: "SnowballLimit"))
    GetSnowballUsageResult.add_member(:snowballs_in_use, Shapes::ShapeRef.new(shape: Integer, location_name: "SnowballsInUse"))
    GetSnowballUsageResult.struct_class = Types::GetSnowballUsageResult

    GetSoftwareUpdatesRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "JobId"))
    GetSoftwareUpdatesRequest.struct_class = Types::GetSoftwareUpdatesRequest

    GetSoftwareUpdatesResult.add_member(:updates_uri, Shapes::ShapeRef.new(shape: String, location_name: "UpdatesURI"))
    GetSoftwareUpdatesResult.struct_class = Types::GetSoftwareUpdatesResult

    INDTaxDocuments.add_member(:gstin, Shapes::ShapeRef.new(shape: GSTIN, location_name: "GSTIN"))
    INDTaxDocuments.struct_class = Types::INDTaxDocuments

    InvalidAddressException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InvalidAddressException.struct_class = Types::InvalidAddressException

    InvalidInputCombinationException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InvalidInputCombinationException.struct_class = Types::InvalidInputCombinationException

    InvalidJobStateException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InvalidJobStateException.struct_class = Types::InvalidJobStateException

    InvalidNextTokenException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InvalidNextTokenException.struct_class = Types::InvalidNextTokenException

    InvalidResourceException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InvalidResourceException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, location_name: "ResourceType"))
    InvalidResourceException.struct_class = Types::InvalidResourceException

    JobListEntry.add_member(:job_id, Shapes::ShapeRef.new(shape: String, location_name: "JobId"))
    JobListEntry.add_member(:job_state, Shapes::ShapeRef.new(shape: JobState, location_name: "JobState"))
    JobListEntry.add_member(:is_master, Shapes::ShapeRef.new(shape: Boolean, location_name: "IsMaster"))
    JobListEntry.add_member(:job_type, Shapes::ShapeRef.new(shape: JobType, location_name: "JobType"))
    JobListEntry.add_member(:snowball_type, Shapes::ShapeRef.new(shape: SnowballType, location_name: "SnowballType"))
    JobListEntry.add_member(:creation_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationDate"))
    JobListEntry.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    JobListEntry.struct_class = Types::JobListEntry

    JobListEntryList.member = Shapes::ShapeRef.new(shape: JobListEntry)

    JobLogs.add_member(:job_completion_report_uri, Shapes::ShapeRef.new(shape: String, location_name: "JobCompletionReportURI"))
    JobLogs.add_member(:job_success_log_uri, Shapes::ShapeRef.new(shape: String, location_name: "JobSuccessLogURI"))
    JobLogs.add_member(:job_failure_log_uri, Shapes::ShapeRef.new(shape: String, location_name: "JobFailureLogURI"))
    JobLogs.struct_class = Types::JobLogs

    JobMetadata.add_member(:job_id, Shapes::ShapeRef.new(shape: String, location_name: "JobId"))
    JobMetadata.add_member(:job_state, Shapes::ShapeRef.new(shape: JobState, location_name: "JobState"))
    JobMetadata.add_member(:job_type, Shapes::ShapeRef.new(shape: JobType, location_name: "JobType"))
    JobMetadata.add_member(:snowball_type, Shapes::ShapeRef.new(shape: SnowballType, location_name: "SnowballType"))
    JobMetadata.add_member(:creation_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationDate"))
    JobMetadata.add_member(:resources, Shapes::ShapeRef.new(shape: JobResource, location_name: "Resources"))
    JobMetadata.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    JobMetadata.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyARN, location_name: "KmsKeyARN"))
    JobMetadata.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleARN, location_name: "RoleARN"))
    JobMetadata.add_member(:address_id, Shapes::ShapeRef.new(shape: AddressId, location_name: "AddressId"))
    JobMetadata.add_member(:shipping_details, Shapes::ShapeRef.new(shape: ShippingDetails, location_name: "ShippingDetails"))
    JobMetadata.add_member(:snowball_capacity_preference, Shapes::ShapeRef.new(shape: SnowballCapacity, location_name: "SnowballCapacityPreference"))
    JobMetadata.add_member(:notification, Shapes::ShapeRef.new(shape: Notification, location_name: "Notification"))
    JobMetadata.add_member(:data_transfer_progress, Shapes::ShapeRef.new(shape: DataTransfer, location_name: "DataTransferProgress"))
    JobMetadata.add_member(:job_log_info, Shapes::ShapeRef.new(shape: JobLogs, location_name: "JobLogInfo"))
    JobMetadata.add_member(:cluster_id, Shapes::ShapeRef.new(shape: String, location_name: "ClusterId"))
    JobMetadata.add_member(:forwarding_address_id, Shapes::ShapeRef.new(shape: AddressId, location_name: "ForwardingAddressId"))
    JobMetadata.add_member(:tax_documents, Shapes::ShapeRef.new(shape: TaxDocuments, location_name: "TaxDocuments"))
    JobMetadata.add_member(:device_configuration, Shapes::ShapeRef.new(shape: DeviceConfiguration, location_name: "DeviceConfiguration"))
    JobMetadata.add_member(:remote_management, Shapes::ShapeRef.new(shape: RemoteManagement, location_name: "RemoteManagement"))
    JobMetadata.add_member(:long_term_pricing_id, Shapes::ShapeRef.new(shape: LongTermPricingId, location_name: "LongTermPricingId"))
    JobMetadata.add_member(:on_device_service_configuration, Shapes::ShapeRef.new(shape: OnDeviceServiceConfiguration, location_name: "OnDeviceServiceConfiguration"))
    JobMetadata.struct_class = Types::JobMetadata

    JobMetadataList.member = Shapes::ShapeRef.new(shape: JobMetadata)

    JobResource.add_member(:s3_resources, Shapes::ShapeRef.new(shape: S3ResourceList, location_name: "S3Resources"))
    JobResource.add_member(:lambda_resources, Shapes::ShapeRef.new(shape: LambdaResourceList, location_name: "LambdaResources"))
    JobResource.add_member(:ec2_ami_resources, Shapes::ShapeRef.new(shape: Ec2AmiResourceList, location_name: "Ec2AmiResources"))
    JobResource.struct_class = Types::JobResource

    JobStateList.member = Shapes::ShapeRef.new(shape: JobState)

    KMSRequestFailedException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    KMSRequestFailedException.struct_class = Types::KMSRequestFailedException

    KeyRange.add_member(:begin_marker, Shapes::ShapeRef.new(shape: String, location_name: "BeginMarker"))
    KeyRange.add_member(:end_marker, Shapes::ShapeRef.new(shape: String, location_name: "EndMarker"))
    KeyRange.struct_class = Types::KeyRange

    LambdaResource.add_member(:lambda_arn, Shapes::ShapeRef.new(shape: ResourceARN, location_name: "LambdaArn"))
    LambdaResource.add_member(:event_triggers, Shapes::ShapeRef.new(shape: EventTriggerDefinitionList, location_name: "EventTriggers"))
    LambdaResource.struct_class = Types::LambdaResource

    LambdaResourceList.member = Shapes::ShapeRef.new(shape: LambdaResource)

    ListClusterJobsRequest.add_member(:cluster_id, Shapes::ShapeRef.new(shape: ClusterId, required: true, location_name: "ClusterId"))
    ListClusterJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListLimit, location_name: "MaxResults"))
    ListClusterJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListClusterJobsRequest.struct_class = Types::ListClusterJobsRequest

    ListClusterJobsResult.add_member(:job_list_entries, Shapes::ShapeRef.new(shape: JobListEntryList, location_name: "JobListEntries"))
    ListClusterJobsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListClusterJobsResult.struct_class = Types::ListClusterJobsResult

    ListClustersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListLimit, location_name: "MaxResults"))
    ListClustersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListClustersRequest.struct_class = Types::ListClustersRequest

    ListClustersResult.add_member(:cluster_list_entries, Shapes::ShapeRef.new(shape: ClusterListEntryList, location_name: "ClusterListEntries"))
    ListClustersResult.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListClustersResult.struct_class = Types::ListClustersResult

    ListCompatibleImagesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListLimit, location_name: "MaxResults"))
    ListCompatibleImagesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListCompatibleImagesRequest.struct_class = Types::ListCompatibleImagesRequest

    ListCompatibleImagesResult.add_member(:compatible_images, Shapes::ShapeRef.new(shape: CompatibleImageList, location_name: "CompatibleImages"))
    ListCompatibleImagesResult.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListCompatibleImagesResult.struct_class = Types::ListCompatibleImagesResult

    ListJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListLimit, location_name: "MaxResults"))
    ListJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListJobsRequest.struct_class = Types::ListJobsRequest

    ListJobsResult.add_member(:job_list_entries, Shapes::ShapeRef.new(shape: JobListEntryList, location_name: "JobListEntries"))
    ListJobsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListJobsResult.struct_class = Types::ListJobsResult

    ListLongTermPricingRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListLimit, location_name: "MaxResults"))
    ListLongTermPricingRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListLongTermPricingRequest.struct_class = Types::ListLongTermPricingRequest

    ListLongTermPricingResult.add_member(:long_term_pricing_entries, Shapes::ShapeRef.new(shape: LongTermPricingEntryList, location_name: "LongTermPricingEntries"))
    ListLongTermPricingResult.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListLongTermPricingResult.struct_class = Types::ListLongTermPricingResult

    ListServiceVersionsRequest.add_member(:service_name, Shapes::ShapeRef.new(shape: ServiceName, required: true, location_name: "ServiceName"))
    ListServiceVersionsRequest.add_member(:dependent_services, Shapes::ShapeRef.new(shape: DependentServiceList, location_name: "DependentServices"))
    ListServiceVersionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListLimit, location_name: "MaxResults"))
    ListServiceVersionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListServiceVersionsRequest.struct_class = Types::ListServiceVersionsRequest

    ListServiceVersionsResult.add_member(:service_versions, Shapes::ShapeRef.new(shape: ServiceVersionList, required: true, location_name: "ServiceVersions"))
    ListServiceVersionsResult.add_member(:service_name, Shapes::ShapeRef.new(shape: ServiceName, required: true, location_name: "ServiceName"))
    ListServiceVersionsResult.add_member(:dependent_services, Shapes::ShapeRef.new(shape: DependentServiceList, location_name: "DependentServices"))
    ListServiceVersionsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListServiceVersionsResult.struct_class = Types::ListServiceVersionsResult

    LongTermPricingAssociatedJobIdList.member = Shapes::ShapeRef.new(shape: JobId)

    LongTermPricingEntryList.member = Shapes::ShapeRef.new(shape: LongTermPricingListEntry)

    LongTermPricingIdList.member = Shapes::ShapeRef.new(shape: LongTermPricingId)

    LongTermPricingListEntry.add_member(:long_term_pricing_id, Shapes::ShapeRef.new(shape: LongTermPricingId, location_name: "LongTermPricingId"))
    LongTermPricingListEntry.add_member(:long_term_pricing_end_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LongTermPricingEndDate"))
    LongTermPricingListEntry.add_member(:long_term_pricing_start_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LongTermPricingStartDate"))
    LongTermPricingListEntry.add_member(:long_term_pricing_type, Shapes::ShapeRef.new(shape: LongTermPricingType, location_name: "LongTermPricingType"))
    LongTermPricingListEntry.add_member(:current_active_job, Shapes::ShapeRef.new(shape: JobId, location_name: "CurrentActiveJob"))
    LongTermPricingListEntry.add_member(:replacement_job, Shapes::ShapeRef.new(shape: JobId, location_name: "ReplacementJob"))
    LongTermPricingListEntry.add_member(:is_long_term_pricing_auto_renew, Shapes::ShapeRef.new(shape: JavaBoolean, location_name: "IsLongTermPricingAutoRenew"))
    LongTermPricingListEntry.add_member(:long_term_pricing_status, Shapes::ShapeRef.new(shape: String, location_name: "LongTermPricingStatus"))
    LongTermPricingListEntry.add_member(:snowball_type, Shapes::ShapeRef.new(shape: SnowballType, location_name: "SnowballType"))
    LongTermPricingListEntry.add_member(:job_ids, Shapes::ShapeRef.new(shape: LongTermPricingAssociatedJobIdList, location_name: "JobIds"))
    LongTermPricingListEntry.struct_class = Types::LongTermPricingListEntry

    NFSOnDeviceServiceConfiguration.add_member(:storage_limit, Shapes::ShapeRef.new(shape: StorageLimit, location_name: "StorageLimit"))
    NFSOnDeviceServiceConfiguration.add_member(:storage_unit, Shapes::ShapeRef.new(shape: StorageUnit, location_name: "StorageUnit"))
    NFSOnDeviceServiceConfiguration.struct_class = Types::NFSOnDeviceServiceConfiguration

    Notification.add_member(:sns_topic_arn, Shapes::ShapeRef.new(shape: SnsTopicARN, location_name: "SnsTopicARN"))
    Notification.add_member(:job_states_to_notify, Shapes::ShapeRef.new(shape: JobStateList, location_name: "JobStatesToNotify"))
    Notification.add_member(:notify_all, Shapes::ShapeRef.new(shape: Boolean, location_name: "NotifyAll"))
    Notification.struct_class = Types::Notification

    OnDeviceServiceConfiguration.add_member(:nfs_on_device_service, Shapes::ShapeRef.new(shape: NFSOnDeviceServiceConfiguration, location_name: "NFSOnDeviceService"))
    OnDeviceServiceConfiguration.add_member(:tgw_on_device_service, Shapes::ShapeRef.new(shape: TGWOnDeviceServiceConfiguration, location_name: "TGWOnDeviceService"))
    OnDeviceServiceConfiguration.add_member(:eks_on_device_service, Shapes::ShapeRef.new(shape: EKSOnDeviceServiceConfiguration, location_name: "EKSOnDeviceService"))
    OnDeviceServiceConfiguration.add_member(:s3_on_device_service, Shapes::ShapeRef.new(shape: S3OnDeviceServiceConfiguration, location_name: "S3OnDeviceService"))
    OnDeviceServiceConfiguration.struct_class = Types::OnDeviceServiceConfiguration

    ReturnShippingLabelAlreadyExistsException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ReturnShippingLabelAlreadyExistsException.struct_class = Types::ReturnShippingLabelAlreadyExistsException

    S3OnDeviceServiceConfiguration.add_member(:storage_limit, Shapes::ShapeRef.new(shape: S3StorageLimit, location_name: "StorageLimit"))
    S3OnDeviceServiceConfiguration.add_member(:storage_unit, Shapes::ShapeRef.new(shape: StorageUnit, location_name: "StorageUnit"))
    S3OnDeviceServiceConfiguration.add_member(:service_size, Shapes::ShapeRef.new(shape: ServiceSize, location_name: "ServiceSize"))
    S3OnDeviceServiceConfiguration.add_member(:fault_tolerance, Shapes::ShapeRef.new(shape: NodeFaultTolerance, location_name: "FaultTolerance"))
    S3OnDeviceServiceConfiguration.struct_class = Types::S3OnDeviceServiceConfiguration

    S3Resource.add_member(:bucket_arn, Shapes::ShapeRef.new(shape: ResourceARN, location_name: "BucketArn"))
    S3Resource.add_member(:key_range, Shapes::ShapeRef.new(shape: KeyRange, location_name: "KeyRange"))
    S3Resource.add_member(:target_on_device_services, Shapes::ShapeRef.new(shape: TargetOnDeviceServiceList, location_name: "TargetOnDeviceServices"))
    S3Resource.struct_class = Types::S3Resource

    S3ResourceList.member = Shapes::ShapeRef.new(shape: S3Resource)

    ServiceVersion.add_member(:version, Shapes::ShapeRef.new(shape: String, location_name: "Version"))
    ServiceVersion.struct_class = Types::ServiceVersion

    ServiceVersionList.member = Shapes::ShapeRef.new(shape: ServiceVersion)

    Shipment.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    Shipment.add_member(:tracking_number, Shapes::ShapeRef.new(shape: String, location_name: "TrackingNumber"))
    Shipment.struct_class = Types::Shipment

    ShippingDetails.add_member(:shipping_option, Shapes::ShapeRef.new(shape: ShippingOption, location_name: "ShippingOption"))
    ShippingDetails.add_member(:inbound_shipment, Shapes::ShapeRef.new(shape: Shipment, location_name: "InboundShipment"))
    ShippingDetails.add_member(:outbound_shipment, Shapes::ShapeRef.new(shape: Shipment, location_name: "OutboundShipment"))
    ShippingDetails.struct_class = Types::ShippingDetails

    SnowconeDeviceConfiguration.add_member(:wireless_connection, Shapes::ShapeRef.new(shape: WirelessConnection, location_name: "WirelessConnection"))
    SnowconeDeviceConfiguration.struct_class = Types::SnowconeDeviceConfiguration

    TGWOnDeviceServiceConfiguration.add_member(:storage_limit, Shapes::ShapeRef.new(shape: StorageLimit, location_name: "StorageLimit"))
    TGWOnDeviceServiceConfiguration.add_member(:storage_unit, Shapes::ShapeRef.new(shape: StorageUnit, location_name: "StorageUnit"))
    TGWOnDeviceServiceConfiguration.struct_class = Types::TGWOnDeviceServiceConfiguration

    TargetOnDeviceService.add_member(:service_name, Shapes::ShapeRef.new(shape: DeviceServiceName, location_name: "ServiceName"))
    TargetOnDeviceService.add_member(:transfer_option, Shapes::ShapeRef.new(shape: TransferOption, location_name: "TransferOption"))
    TargetOnDeviceService.struct_class = Types::TargetOnDeviceService

    TargetOnDeviceServiceList.member = Shapes::ShapeRef.new(shape: TargetOnDeviceService)

    TaxDocuments.add_member(:ind, Shapes::ShapeRef.new(shape: INDTaxDocuments, location_name: "IND"))
    TaxDocuments.struct_class = Types::TaxDocuments

    UnsupportedAddressException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    UnsupportedAddressException.struct_class = Types::UnsupportedAddressException

    UpdateClusterRequest.add_member(:cluster_id, Shapes::ShapeRef.new(shape: ClusterId, required: true, location_name: "ClusterId"))
    UpdateClusterRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleARN, location_name: "RoleARN"))
    UpdateClusterRequest.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    UpdateClusterRequest.add_member(:resources, Shapes::ShapeRef.new(shape: JobResource, location_name: "Resources"))
    UpdateClusterRequest.add_member(:on_device_service_configuration, Shapes::ShapeRef.new(shape: OnDeviceServiceConfiguration, location_name: "OnDeviceServiceConfiguration"))
    UpdateClusterRequest.add_member(:address_id, Shapes::ShapeRef.new(shape: AddressId, location_name: "AddressId"))
    UpdateClusterRequest.add_member(:shipping_option, Shapes::ShapeRef.new(shape: ShippingOption, location_name: "ShippingOption"))
    UpdateClusterRequest.add_member(:notification, Shapes::ShapeRef.new(shape: Notification, location_name: "Notification"))
    UpdateClusterRequest.add_member(:forwarding_address_id, Shapes::ShapeRef.new(shape: AddressId, location_name: "ForwardingAddressId"))
    UpdateClusterRequest.struct_class = Types::UpdateClusterRequest

    UpdateClusterResult.struct_class = Types::UpdateClusterResult

    UpdateJobRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "JobId"))
    UpdateJobRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleARN, location_name: "RoleARN"))
    UpdateJobRequest.add_member(:notification, Shapes::ShapeRef.new(shape: Notification, location_name: "Notification"))
    UpdateJobRequest.add_member(:resources, Shapes::ShapeRef.new(shape: JobResource, location_name: "Resources"))
    UpdateJobRequest.add_member(:on_device_service_configuration, Shapes::ShapeRef.new(shape: OnDeviceServiceConfiguration, location_name: "OnDeviceServiceConfiguration"))
    UpdateJobRequest.add_member(:address_id, Shapes::ShapeRef.new(shape: AddressId, location_name: "AddressId"))
    UpdateJobRequest.add_member(:shipping_option, Shapes::ShapeRef.new(shape: ShippingOption, location_name: "ShippingOption"))
    UpdateJobRequest.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    UpdateJobRequest.add_member(:snowball_capacity_preference, Shapes::ShapeRef.new(shape: SnowballCapacity, location_name: "SnowballCapacityPreference"))
    UpdateJobRequest.add_member(:forwarding_address_id, Shapes::ShapeRef.new(shape: AddressId, location_name: "ForwardingAddressId"))
    UpdateJobRequest.struct_class = Types::UpdateJobRequest

    UpdateJobResult.struct_class = Types::UpdateJobResult

    UpdateJobShipmentStateRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "JobId"))
    UpdateJobShipmentStateRequest.add_member(:shipment_state, Shapes::ShapeRef.new(shape: ShipmentState, required: true, location_name: "ShipmentState"))
    UpdateJobShipmentStateRequest.struct_class = Types::UpdateJobShipmentStateRequest

    UpdateJobShipmentStateResult.struct_class = Types::UpdateJobShipmentStateResult

    UpdateLongTermPricingRequest.add_member(:long_term_pricing_id, Shapes::ShapeRef.new(shape: LongTermPricingId, required: true, location_name: "LongTermPricingId"))
    UpdateLongTermPricingRequest.add_member(:replacement_job, Shapes::ShapeRef.new(shape: JobId, location_name: "ReplacementJob"))
    UpdateLongTermPricingRequest.add_member(:is_long_term_pricing_auto_renew, Shapes::ShapeRef.new(shape: JavaBoolean, location_name: "IsLongTermPricingAutoRenew"))
    UpdateLongTermPricingRequest.struct_class = Types::UpdateLongTermPricingRequest

    UpdateLongTermPricingResult.struct_class = Types::UpdateLongTermPricingResult

    WirelessConnection.add_member(:is_wifi_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "IsWifiEnabled"))
    WirelessConnection.struct_class = Types::WirelessConnection


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2016-06-30"

      api.metadata = {
        "apiVersion" => "2016-06-30",
        "endpointPrefix" => "snowball",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "serviceAbbreviation" => "Amazon Snowball",
        "serviceFullName" => "Amazon Import/Export Snowball",
        "serviceId" => "Snowball",
        "signatureVersion" => "v4",
        "targetPrefix" => "AWSIESnowballJobManagementService",
        "uid" => "snowball-2016-06-30",
      }

      api.add_operation(:cancel_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelCluster"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CancelClusterRequest)
        o.output = Shapes::ShapeRef.new(shape: CancelClusterResult)
        o.errors << Shapes::ShapeRef.new(shape: KMSRequestFailedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidJobStateException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceException)
      end)

      api.add_operation(:cancel_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CancelJobRequest)
        o.output = Shapes::ShapeRef.new(shape: CancelJobResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidJobStateException)
        o.errors << Shapes::ShapeRef.new(shape: KMSRequestFailedException)
      end)

      api.add_operation(:create_address, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAddress"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateAddressRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateAddressResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAddressException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedAddressException)
      end)

      api.add_operation(:create_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateCluster"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateClusterRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateClusterResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceException)
        o.errors << Shapes::ShapeRef.new(shape: KMSRequestFailedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputCombinationException)
        o.errors << Shapes::ShapeRef.new(shape: Ec2RequestFailedException)
      end)

      api.add_operation(:create_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateJobRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateJobResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceException)
        o.errors << Shapes::ShapeRef.new(shape: KMSRequestFailedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputCombinationException)
        o.errors << Shapes::ShapeRef.new(shape: ClusterLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: Ec2RequestFailedException)
      end)

      api.add_operation(:create_long_term_pricing, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateLongTermPricing"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateLongTermPricingRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateLongTermPricingResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceException)
      end)

      api.add_operation(:create_return_shipping_label, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateReturnShippingLabel"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateReturnShippingLabelRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateReturnShippingLabelResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidJobStateException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputCombinationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ReturnShippingLabelAlreadyExistsException)
      end)

      api.add_operation(:describe_address, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAddress"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeAddressRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAddressResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceException)
      end)

      api.add_operation(:describe_addresses, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAddresses"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeAddressesRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAddressesResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeCluster"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeClusterRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeClusterResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceException)
      end)

      api.add_operation(:describe_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeJobRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeJobResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceException)
      end)

      api.add_operation(:describe_return_shipping_label, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeReturnShippingLabel"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeReturnShippingLabelRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeReturnShippingLabelResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidJobStateException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:get_job_manifest, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetJobManifest"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetJobManifestRequest)
        o.output = Shapes::ShapeRef.new(shape: GetJobManifestResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidJobStateException)
      end)

      api.add_operation(:get_job_unlock_code, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetJobUnlockCode"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetJobUnlockCodeRequest)
        o.output = Shapes::ShapeRef.new(shape: GetJobUnlockCodeResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidJobStateException)
      end)

      api.add_operation(:get_snowball_usage, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSnowballUsage"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetSnowballUsageRequest)
        o.output = Shapes::ShapeRef.new(shape: GetSnowballUsageResult)
      end)

      api.add_operation(:get_software_updates, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSoftwareUpdates"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetSoftwareUpdatesRequest)
        o.output = Shapes::ShapeRef.new(shape: GetSoftwareUpdatesResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidJobStateException)
      end)

      api.add_operation(:list_cluster_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListClusterJobs"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListClusterJobsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListClusterJobsResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_clusters, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListClusters"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListClustersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListClustersResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_compatible_images, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCompatibleImages"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListCompatibleImagesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListCompatibleImagesResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: Ec2RequestFailedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListJobs"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListJobsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListJobsResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_long_term_pricing, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListLongTermPricing"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListLongTermPricingRequest)
        o.output = Shapes::ShapeRef.new(shape: ListLongTermPricingResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_service_versions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListServiceVersions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListServiceVersionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListServiceVersionsResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceException)
      end)

      api.add_operation(:update_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateCluster"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateClusterRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateClusterResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidJobStateException)
        o.errors << Shapes::ShapeRef.new(shape: KMSRequestFailedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputCombinationException)
        o.errors << Shapes::ShapeRef.new(shape: Ec2RequestFailedException)
      end)

      api.add_operation(:update_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateJobRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateJobResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidJobStateException)
        o.errors << Shapes::ShapeRef.new(shape: KMSRequestFailedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputCombinationException)
        o.errors << Shapes::ShapeRef.new(shape: ClusterLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: Ec2RequestFailedException)
      end)

      api.add_operation(:update_job_shipment_state, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateJobShipmentState"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateJobShipmentStateRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateJobShipmentStateResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidJobStateException)
      end)

      api.add_operation(:update_long_term_pricing, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateLongTermPricing"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateLongTermPricingRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateLongTermPricingResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceException)
      end)
    end

  end
end
