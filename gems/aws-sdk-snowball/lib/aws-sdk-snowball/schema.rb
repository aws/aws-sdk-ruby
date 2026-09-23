# frozen_string_literal: true

# This is generated code!

module Aws::Snowball
  # This module contains a schema composed of shapes used by the client.
  module Schema

    Address = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowball#Address", name: "Address")
    AddressId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.snowball#AddressId", name: "AddressId", traits: {"smithy.api#length" => {"min" => 40, "max" => 40}, "smithy.api#pattern" => "^ADID[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$"})
    AddressList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.snowball#AddressList", name: "AddressList")
    AddressType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.snowball#AddressType", name: "AddressType")
    AmiId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.snowball#AmiId", name: "AmiId", traits: {"smithy.api#length" => {"min" => 12, "max" => 21}, "smithy.api#pattern" => "^(ami-[0-9a-f]{8})|(ami-[0-9a-f]{17})$"})
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.snowball#Boolean", name: "Boolean", traits: {"smithy.api#default" => false})
    CancelClusterRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowball#CancelClusterRequest", name: "CancelClusterRequest")
    CancelClusterResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowball#CancelClusterResult", name: "CancelClusterResult")
    CancelJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowball#CancelJobRequest", name: "CancelJobRequest")
    CancelJobResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowball#CancelJobResult", name: "CancelJobResult")
    ClusterId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.snowball#ClusterId", name: "ClusterId", traits: {"smithy.api#length" => {"min" => 39, "max" => 39}, "smithy.api#pattern" => "^CID[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$"})
    ClusterLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowball#ClusterLimitExceededException", name: "ClusterLimitExceededException", traits: {"smithy.api#error" => "client"})
    ClusterListEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowball#ClusterListEntry", name: "ClusterListEntry")
    ClusterListEntryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.snowball#ClusterListEntryList", name: "ClusterListEntryList")
    ClusterMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowball#ClusterMetadata", name: "ClusterMetadata")
    ClusterState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.snowball#ClusterState", name: "ClusterState")
    CompatibleImage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowball#CompatibleImage", name: "CompatibleImage")
    CompatibleImageList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.snowball#CompatibleImageList", name: "CompatibleImageList")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowball#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client"})
    CreateAddressRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowball#CreateAddressRequest", name: "CreateAddressRequest")
    CreateAddressResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowball#CreateAddressResult", name: "CreateAddressResult")
    CreateClusterRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowball#CreateClusterRequest", name: "CreateClusterRequest")
    CreateClusterResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowball#CreateClusterResult", name: "CreateClusterResult")
    CreateJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowball#CreateJobRequest", name: "CreateJobRequest")
    CreateJobResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowball#CreateJobResult", name: "CreateJobResult")
    CreateLongTermPricingRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowball#CreateLongTermPricingRequest", name: "CreateLongTermPricingRequest")
    CreateLongTermPricingResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowball#CreateLongTermPricingResult", name: "CreateLongTermPricingResult")
    CreateReturnShippingLabelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowball#CreateReturnShippingLabelRequest", name: "CreateReturnShippingLabelRequest")
    CreateReturnShippingLabelResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowball#CreateReturnShippingLabelResult", name: "CreateReturnShippingLabelResult")
    DataTransfer = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowball#DataTransfer", name: "DataTransfer")
    DependentService = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowball#DependentService", name: "DependentService")
    DependentServiceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.snowball#DependentServiceList", name: "DependentServiceList")
    DescribeAddressRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowball#DescribeAddressRequest", name: "DescribeAddressRequest")
    DescribeAddressResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowball#DescribeAddressResult", name: "DescribeAddressResult")
    DescribeAddressesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowball#DescribeAddressesRequest", name: "DescribeAddressesRequest")
    DescribeAddressesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowball#DescribeAddressesResult", name: "DescribeAddressesResult")
    DescribeClusterRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowball#DescribeClusterRequest", name: "DescribeClusterRequest")
    DescribeClusterResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowball#DescribeClusterResult", name: "DescribeClusterResult")
    DescribeJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowball#DescribeJobRequest", name: "DescribeJobRequest")
    DescribeJobResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowball#DescribeJobResult", name: "DescribeJobResult")
    DescribeReturnShippingLabelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowball#DescribeReturnShippingLabelRequest", name: "DescribeReturnShippingLabelRequest")
    DescribeReturnShippingLabelResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowball#DescribeReturnShippingLabelResult", name: "DescribeReturnShippingLabelResult")
    DeviceConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowball#DeviceConfiguration", name: "DeviceConfiguration")
    DevicePickupId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.snowball#DevicePickupId", name: "DevicePickupId", traits: {"smithy.api#length" => {"min" => 40, "max" => 40}, "smithy.api#pattern" => "^DPID[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$"})
    DeviceServiceName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.snowball#DeviceServiceName", name: "DeviceServiceName")
    EKSOnDeviceServiceConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowball#EKSOnDeviceServiceConfiguration", name: "EKSOnDeviceServiceConfiguration")
    Ec2AmiResource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowball#Ec2AmiResource", name: "Ec2AmiResource")
    Ec2AmiResourceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.snowball#Ec2AmiResourceList", name: "Ec2AmiResourceList")
    Ec2RequestFailedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowball#Ec2RequestFailedException", name: "Ec2RequestFailedException", traits: {"smithy.api#error" => "client"})
    Email = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.snowball#Email", name: "Email", traits: {"smithy.api#length" => {"min" => 3, "max" => 320}, "smithy.api#pattern" => "^(?=.{3,100}$).+@.+[.].+$", "smithy.api#sensitive" => {}})
    EventTriggerDefinition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowball#EventTriggerDefinition", name: "EventTriggerDefinition")
    EventTriggerDefinitionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.snowball#EventTriggerDefinitionList", name: "EventTriggerDefinitionList")
    GSTIN = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.snowball#GSTIN", name: "GSTIN", traits: {"smithy.api#length" => {"min" => 15, "max" => 15}, "smithy.api#pattern" => "^\\d{2}[A-Z]{5}\\d{4}[A-Z]{1}[A-Z\\d]{1}[Z]{1}[A-Z\\d]{1}$"})
    GetJobManifestRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowball#GetJobManifestRequest", name: "GetJobManifestRequest")
    GetJobManifestResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowball#GetJobManifestResult", name: "GetJobManifestResult")
    GetJobUnlockCodeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowball#GetJobUnlockCodeRequest", name: "GetJobUnlockCodeRequest")
    GetJobUnlockCodeResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowball#GetJobUnlockCodeResult", name: "GetJobUnlockCodeResult")
    GetSnowballUsageRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowball#GetSnowballUsageRequest", name: "GetSnowballUsageRequest")
    GetSnowballUsageResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowball#GetSnowballUsageResult", name: "GetSnowballUsageResult")
    GetSoftwareUpdatesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowball#GetSoftwareUpdatesRequest", name: "GetSoftwareUpdatesRequest")
    GetSoftwareUpdatesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowball#GetSoftwareUpdatesResult", name: "GetSoftwareUpdatesResult")
    INDTaxDocuments = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowball#INDTaxDocuments", name: "INDTaxDocuments")
    ImpactLevel = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.snowball#ImpactLevel", name: "ImpactLevel")
    InitialClusterSize = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.snowball#InitialClusterSize", name: "InitialClusterSize", traits: {"smithy.api#range" => {"min" => 0, "max" => 16}})
    Integer = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.snowball#Integer", name: "Integer")
    InvalidAddressException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowball#InvalidAddressException", name: "InvalidAddressException", traits: {"smithy.api#error" => "client"})
    InvalidInputCombinationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowball#InvalidInputCombinationException", name: "InvalidInputCombinationException", traits: {"smithy.api#error" => "client"})
    InvalidJobStateException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowball#InvalidJobStateException", name: "InvalidJobStateException", traits: {"smithy.api#error" => "client"})
    InvalidNextTokenException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowball#InvalidNextTokenException", name: "InvalidNextTokenException", traits: {"smithy.api#error" => "client"})
    InvalidResourceException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowball#InvalidResourceException", name: "InvalidResourceException", traits: {"smithy.api#error" => "client"})
    JavaBoolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.snowball#JavaBoolean", name: "JavaBoolean")
    JobId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.snowball#JobId", name: "JobId", traits: {"smithy.api#length" => {"min" => 39, "max" => 39}, "smithy.api#pattern" => "^(M|J)ID[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$"})
    JobListEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowball#JobListEntry", name: "JobListEntry")
    JobListEntryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.snowball#JobListEntryList", name: "JobListEntryList")
    JobLogs = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowball#JobLogs", name: "JobLogs")
    JobMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowball#JobMetadata", name: "JobMetadata")
    JobMetadataList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.snowball#JobMetadataList", name: "JobMetadataList")
    JobResource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowball#JobResource", name: "JobResource")
    JobState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.snowball#JobState", name: "JobState")
    JobStateList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.snowball#JobStateList", name: "JobStateList")
    JobType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.snowball#JobType", name: "JobType")
    KMSRequestFailedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowball#KMSRequestFailedException", name: "KMSRequestFailedException", traits: {"smithy.api#error" => "client"})
    KeyRange = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowball#KeyRange", name: "KeyRange")
    KmsKeyARN = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.snowball#KmsKeyARN", name: "KmsKeyARN", traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^arn:aws.*:kms:.*:[0-9]{12}:key/"})
    LambdaResource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowball#LambdaResource", name: "LambdaResource")
    LambdaResourceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.snowball#LambdaResourceList", name: "LambdaResourceList")
    ListClusterJobsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowball#ListClusterJobsRequest", name: "ListClusterJobsRequest")
    ListClusterJobsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowball#ListClusterJobsResult", name: "ListClusterJobsResult")
    ListClustersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowball#ListClustersRequest", name: "ListClustersRequest")
    ListClustersResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowball#ListClustersResult", name: "ListClustersResult")
    ListCompatibleImagesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowball#ListCompatibleImagesRequest", name: "ListCompatibleImagesRequest")
    ListCompatibleImagesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowball#ListCompatibleImagesResult", name: "ListCompatibleImagesResult")
    ListJobsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowball#ListJobsRequest", name: "ListJobsRequest")
    ListJobsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowball#ListJobsResult", name: "ListJobsResult")
    ListLimit = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.snowball#ListLimit", name: "ListLimit", traits: {"smithy.api#range" => {"min" => 0, "max" => 100}})
    ListLongTermPricingRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowball#ListLongTermPricingRequest", name: "ListLongTermPricingRequest")
    ListLongTermPricingResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowball#ListLongTermPricingResult", name: "ListLongTermPricingResult")
    ListPickupLocationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowball#ListPickupLocationsRequest", name: "ListPickupLocationsRequest")
    ListPickupLocationsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowball#ListPickupLocationsResult", name: "ListPickupLocationsResult")
    ListServiceVersionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowball#ListServiceVersionsRequest", name: "ListServiceVersionsRequest")
    ListServiceVersionsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowball#ListServiceVersionsResult", name: "ListServiceVersionsResult")
    Long = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.snowball#Long", name: "Long", traits: {"smithy.api#default" => 0})
    LongTermPricingAssociatedJobIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.snowball#LongTermPricingAssociatedJobIdList", name: "LongTermPricingAssociatedJobIdList")
    LongTermPricingEntryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.snowball#LongTermPricingEntryList", name: "LongTermPricingEntryList")
    LongTermPricingId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.snowball#LongTermPricingId", name: "LongTermPricingId", traits: {"smithy.api#length" => {"min" => 41, "max" => 41}, "smithy.api#pattern" => "^LTPID[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$"})
    LongTermPricingIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.snowball#LongTermPricingIdList", name: "LongTermPricingIdList")
    LongTermPricingListEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowball#LongTermPricingListEntry", name: "LongTermPricingListEntry")
    LongTermPricingType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.snowball#LongTermPricingType", name: "LongTermPricingType")
    NFSOnDeviceServiceConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowball#NFSOnDeviceServiceConfiguration", name: "NFSOnDeviceServiceConfiguration")
    NodeFaultTolerance = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.snowball#NodeFaultTolerance", name: "NodeFaultTolerance", traits: {"smithy.api#range" => {"min" => 1, "max" => 4}})
    Notification = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowball#Notification", name: "Notification")
    OnDeviceServiceConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowball#OnDeviceServiceConfiguration", name: "OnDeviceServiceConfiguration")
    PhoneNumber = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.snowball#PhoneNumber", name: "PhoneNumber", traits: {"smithy.api#length" => {"min" => 7, "max" => 30}, "smithy.api#pattern" => "^\\s*(?:\\+?(\\d{1,3}))?[-. (]*(\\d{3})[-. )]*(\\d{3})[-. ]*(\\d{4})(?: *x(\\d+))?\\s*$", "smithy.api#sensitive" => {}})
    PickupDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowball#PickupDetails", name: "PickupDetails")
    RemoteManagement = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.snowball#RemoteManagement", name: "RemoteManagement")
    ResourceARN = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.snowball#ResourceARN", name: "ResourceARN", traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^arn:aws.*:*$"})
    ReturnShippingLabelAlreadyExistsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowball#ReturnShippingLabelAlreadyExistsException", name: "ReturnShippingLabelAlreadyExistsException", traits: {"smithy.api#error" => "client"})
    RoleARN = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.snowball#RoleARN", name: "RoleARN", traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^arn:aws.*:iam::[0-9]{12}:role/"})
    S3OnDeviceServiceConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowball#S3OnDeviceServiceConfiguration", name: "S3OnDeviceServiceConfiguration")
    S3Resource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowball#S3Resource", name: "S3Resource")
    S3ResourceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.snowball#S3ResourceList", name: "S3ResourceList")
    S3StorageLimit = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.snowball#S3StorageLimit", name: "S3StorageLimit", traits: {"smithy.api#range" => {"min" => 0.0}})
    ServiceName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.snowball#ServiceName", name: "ServiceName")
    ServiceSize = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.snowball#ServiceSize", name: "ServiceSize", traits: {"smithy.api#range" => {"min" => 3, "max" => 16}})
    ServiceVersion = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowball#ServiceVersion", name: "ServiceVersion")
    ServiceVersionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.snowball#ServiceVersionList", name: "ServiceVersionList")
    Shipment = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowball#Shipment", name: "Shipment")
    ShipmentState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.snowball#ShipmentState", name: "ShipmentState")
    ShippingDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowball#ShippingDetails", name: "ShippingDetails")
    ShippingLabelStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.snowball#ShippingLabelStatus", name: "ShippingLabelStatus")
    ShippingOption = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.snowball#ShippingOption", name: "ShippingOption")
    SnowballCapacity = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.snowball#SnowballCapacity", name: "SnowballCapacity")
    SnowballType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.snowball#SnowballType", name: "SnowballType")
    SnowconeDeviceConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowball#SnowconeDeviceConfiguration", name: "SnowconeDeviceConfiguration")
    SnsTopicARN = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.snowball#SnsTopicARN", name: "SnsTopicARN", traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^arn:aws.*:sns:.*:[0-9]{12}:"})
    StorageLimit = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.snowball#StorageLimit", name: "StorageLimit", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}})
    StorageUnit = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.snowball#StorageUnit", name: "StorageUnit")
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.snowball#String", name: "String", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => ".*"})
    TGWOnDeviceServiceConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowball#TGWOnDeviceServiceConfiguration", name: "TGWOnDeviceServiceConfiguration")
    TargetOnDeviceService = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowball#TargetOnDeviceService", name: "TargetOnDeviceService")
    TargetOnDeviceServiceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.snowball#TargetOnDeviceServiceList", name: "TargetOnDeviceServiceList")
    TaxDocuments = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowball#TaxDocuments", name: "TaxDocuments")
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.snowball#Timestamp", name: "Timestamp")
    TransferOption = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.snowball#TransferOption", name: "TransferOption")
    UnsupportedAddressException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowball#UnsupportedAddressException", name: "UnsupportedAddressException", traits: {"smithy.api#error" => "client"})
    UpdateClusterRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowball#UpdateClusterRequest", name: "UpdateClusterRequest")
    UpdateClusterResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowball#UpdateClusterResult", name: "UpdateClusterResult")
    UpdateJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowball#UpdateJobRequest", name: "UpdateJobRequest")
    UpdateJobResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowball#UpdateJobResult", name: "UpdateJobResult")
    UpdateJobShipmentStateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowball#UpdateJobShipmentStateRequest", name: "UpdateJobShipmentStateRequest")
    UpdateJobShipmentStateResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowball#UpdateJobShipmentStateResult", name: "UpdateJobShipmentStateResult")
    UpdateLongTermPricingRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowball#UpdateLongTermPricingRequest", name: "UpdateLongTermPricingRequest")
    UpdateLongTermPricingResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowball#UpdateLongTermPricingResult", name: "UpdateLongTermPricingResult")
    WirelessConnection = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowball#WirelessConnection", name: "WirelessConnection")

    Address.add_member(:address_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AddressId, name: "AddressId"))
    Address.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name"))
    Address.add_member(:company, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Company"))
    Address.add_member(:street1, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Street1"))
    Address.add_member(:street2, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Street2"))
    Address.add_member(:street3, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Street3"))
    Address.add_member(:city, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "City"))
    Address.add_member(:state_or_province, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "StateOrProvince"))
    Address.add_member(:prefecture_or_district, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PrefectureOrDistrict"))
    Address.add_member(:landmark, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Landmark"))
    Address.add_member(:country, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Country"))
    Address.add_member(:postal_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PostalCode"))
    Address.add_member(:phone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PhoneNumber"))
    Address.add_member(:is_restricted, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "IsRestricted", traits: {"smithy.api#default" => false}))
    Address.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: AddressType, name: "Type"))
    Address.type = Types::Address
    AddressList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Address, name: "member"))
    AddressType.add_member(:cust_pickup, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CUST_PICKUP", traits: {"smithy.api#enumValue" => "CUST_PICKUP"}))
    AddressType.add_member(:aws_ship, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_SHIP", traits: {"smithy.api#enumValue" => "AWS_SHIP"}))
    CancelClusterRequest.add_member(:cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterId, name: "ClusterId", traits: {"smithy.api#required" => {}}))
    CancelClusterRequest.type = Types::CancelClusterRequest
    CancelClusterResult.type = Types::CancelClusterResult
    CancelJobRequest.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "JobId", traits: {"smithy.api#required" => {}}))
    CancelJobRequest.type = Types::CancelJobRequest
    CancelJobResult.type = Types::CancelJobResult
    ClusterLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    ClusterLimitExceededException.type = Types::ClusterLimitExceededException
    ClusterListEntry.add_member(:cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterId"))
    ClusterListEntry.add_member(:cluster_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterState, name: "ClusterState"))
    ClusterListEntry.add_member(:creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationDate"))
    ClusterListEntry.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description"))
    ClusterListEntry.type = Types::ClusterListEntry
    ClusterListEntryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterListEntry, name: "member"))
    ClusterMetadata.add_member(:cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterId"))
    ClusterMetadata.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description"))
    ClusterMetadata.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyARN, name: "KmsKeyARN"))
    ClusterMetadata.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleARN, name: "RoleARN"))
    ClusterMetadata.add_member(:cluster_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterState, name: "ClusterState"))
    ClusterMetadata.add_member(:job_type, ::Smithy::Schema::Shapes::MemberShape.new(target: JobType, name: "JobType"))
    ClusterMetadata.add_member(:snowball_type, ::Smithy::Schema::Shapes::MemberShape.new(target: SnowballType, name: "SnowballType"))
    ClusterMetadata.add_member(:creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationDate"))
    ClusterMetadata.add_member(:resources, ::Smithy::Schema::Shapes::MemberShape.new(target: JobResource, name: "Resources"))
    ClusterMetadata.add_member(:address_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AddressId, name: "AddressId"))
    ClusterMetadata.add_member(:shipping_option, ::Smithy::Schema::Shapes::MemberShape.new(target: ShippingOption, name: "ShippingOption"))
    ClusterMetadata.add_member(:notification, ::Smithy::Schema::Shapes::MemberShape.new(target: Notification, name: "Notification"))
    ClusterMetadata.add_member(:forwarding_address_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AddressId, name: "ForwardingAddressId"))
    ClusterMetadata.add_member(:tax_documents, ::Smithy::Schema::Shapes::MemberShape.new(target: TaxDocuments, name: "TaxDocuments"))
    ClusterMetadata.add_member(:on_device_service_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: OnDeviceServiceConfiguration, name: "OnDeviceServiceConfiguration"))
    ClusterMetadata.type = Types::ClusterMetadata
    ClusterState.add_member(:awaiting_quorum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWAITING_QUORUM", traits: {"smithy.api#enumValue" => "AwaitingQuorum"}))
    ClusterState.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "Pending"}))
    ClusterState.add_member(:in_use, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_USE", traits: {"smithy.api#enumValue" => "InUse"}))
    ClusterState.add_member(:complete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETE", traits: {"smithy.api#enumValue" => "Complete"}))
    ClusterState.add_member(:cancelled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCELLED", traits: {"smithy.api#enumValue" => "Cancelled"}))
    CompatibleImage.add_member(:ami_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AmiId"))
    CompatibleImage.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name"))
    CompatibleImage.type = Types::CompatibleImage
    CompatibleImageList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CompatibleImage, name: "member"))
    ConflictException.add_member(:conflict_resource, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ConflictResource"))
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    ConflictException.type = Types::ConflictException
    CreateAddressRequest.add_member(:address, ::Smithy::Schema::Shapes::MemberShape.new(target: Address, name: "Address", traits: {"smithy.api#required" => {}}))
    CreateAddressRequest.type = Types::CreateAddressRequest
    CreateAddressResult.add_member(:address_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AddressId"))
    CreateAddressResult.type = Types::CreateAddressResult
    CreateClusterRequest.add_member(:job_type, ::Smithy::Schema::Shapes::MemberShape.new(target: JobType, name: "JobType", traits: {"smithy.api#required" => {}}))
    CreateClusterRequest.add_member(:resources, ::Smithy::Schema::Shapes::MemberShape.new(target: JobResource, name: "Resources"))
    CreateClusterRequest.add_member(:on_device_service_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: OnDeviceServiceConfiguration, name: "OnDeviceServiceConfiguration"))
    CreateClusterRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description"))
    CreateClusterRequest.add_member(:address_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AddressId, name: "AddressId", traits: {"smithy.api#required" => {}}))
    CreateClusterRequest.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyARN, name: "KmsKeyARN"))
    CreateClusterRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleARN, name: "RoleARN"))
    CreateClusterRequest.add_member(:snowball_type, ::Smithy::Schema::Shapes::MemberShape.new(target: SnowballType, name: "SnowballType", traits: {"smithy.api#required" => {}}))
    CreateClusterRequest.add_member(:shipping_option, ::Smithy::Schema::Shapes::MemberShape.new(target: ShippingOption, name: "ShippingOption", traits: {"smithy.api#required" => {}}))
    CreateClusterRequest.add_member(:notification, ::Smithy::Schema::Shapes::MemberShape.new(target: Notification, name: "Notification"))
    CreateClusterRequest.add_member(:forwarding_address_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AddressId, name: "ForwardingAddressId"))
    CreateClusterRequest.add_member(:tax_documents, ::Smithy::Schema::Shapes::MemberShape.new(target: TaxDocuments, name: "TaxDocuments"))
    CreateClusterRequest.add_member(:remote_management, ::Smithy::Schema::Shapes::MemberShape.new(target: RemoteManagement, name: "RemoteManagement"))
    CreateClusterRequest.add_member(:initial_cluster_size, ::Smithy::Schema::Shapes::MemberShape.new(target: InitialClusterSize, name: "InitialClusterSize"))
    CreateClusterRequest.add_member(:force_create_jobs, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "ForceCreateJobs", traits: {"smithy.api#default" => false}))
    CreateClusterRequest.add_member(:long_term_pricing_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: LongTermPricingIdList, name: "LongTermPricingIds"))
    CreateClusterRequest.add_member(:snowball_capacity_preference, ::Smithy::Schema::Shapes::MemberShape.new(target: SnowballCapacity, name: "SnowballCapacityPreference"))
    CreateClusterRequest.type = Types::CreateClusterRequest
    CreateClusterResult.add_member(:cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterId, name: "ClusterId"))
    CreateClusterResult.add_member(:job_list_entries, ::Smithy::Schema::Shapes::MemberShape.new(target: JobListEntryList, name: "JobListEntries"))
    CreateClusterResult.type = Types::CreateClusterResult
    CreateJobRequest.add_member(:job_type, ::Smithy::Schema::Shapes::MemberShape.new(target: JobType, name: "JobType"))
    CreateJobRequest.add_member(:resources, ::Smithy::Schema::Shapes::MemberShape.new(target: JobResource, name: "Resources"))
    CreateJobRequest.add_member(:on_device_service_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: OnDeviceServiceConfiguration, name: "OnDeviceServiceConfiguration"))
    CreateJobRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description"))
    CreateJobRequest.add_member(:address_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AddressId, name: "AddressId"))
    CreateJobRequest.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyARN, name: "KmsKeyARN"))
    CreateJobRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleARN, name: "RoleARN"))
    CreateJobRequest.add_member(:snowball_capacity_preference, ::Smithy::Schema::Shapes::MemberShape.new(target: SnowballCapacity, name: "SnowballCapacityPreference"))
    CreateJobRequest.add_member(:shipping_option, ::Smithy::Schema::Shapes::MemberShape.new(target: ShippingOption, name: "ShippingOption"))
    CreateJobRequest.add_member(:notification, ::Smithy::Schema::Shapes::MemberShape.new(target: Notification, name: "Notification"))
    CreateJobRequest.add_member(:cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterId, name: "ClusterId"))
    CreateJobRequest.add_member(:snowball_type, ::Smithy::Schema::Shapes::MemberShape.new(target: SnowballType, name: "SnowballType"))
    CreateJobRequest.add_member(:forwarding_address_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AddressId, name: "ForwardingAddressId"))
    CreateJobRequest.add_member(:tax_documents, ::Smithy::Schema::Shapes::MemberShape.new(target: TaxDocuments, name: "TaxDocuments"))
    CreateJobRequest.add_member(:device_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceConfiguration, name: "DeviceConfiguration"))
    CreateJobRequest.add_member(:remote_management, ::Smithy::Schema::Shapes::MemberShape.new(target: RemoteManagement, name: "RemoteManagement"))
    CreateJobRequest.add_member(:long_term_pricing_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LongTermPricingId, name: "LongTermPricingId"))
    CreateJobRequest.add_member(:impact_level, ::Smithy::Schema::Shapes::MemberShape.new(target: ImpactLevel, name: "ImpactLevel"))
    CreateJobRequest.add_member(:pickup_details, ::Smithy::Schema::Shapes::MemberShape.new(target: PickupDetails, name: "PickupDetails"))
    CreateJobRequest.type = Types::CreateJobRequest
    CreateJobResult.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "JobId"))
    CreateJobResult.type = Types::CreateJobResult
    CreateLongTermPricingRequest.add_member(:long_term_pricing_type, ::Smithy::Schema::Shapes::MemberShape.new(target: LongTermPricingType, name: "LongTermPricingType", traits: {"smithy.api#required" => {}}))
    CreateLongTermPricingRequest.add_member(:is_long_term_pricing_auto_renew, ::Smithy::Schema::Shapes::MemberShape.new(target: JavaBoolean, name: "IsLongTermPricingAutoRenew"))
    CreateLongTermPricingRequest.add_member(:snowball_type, ::Smithy::Schema::Shapes::MemberShape.new(target: SnowballType, name: "SnowballType", traits: {"smithy.api#required" => {}}))
    CreateLongTermPricingRequest.type = Types::CreateLongTermPricingRequest
    CreateLongTermPricingResult.add_member(:long_term_pricing_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LongTermPricingId, name: "LongTermPricingId"))
    CreateLongTermPricingResult.type = Types::CreateLongTermPricingResult
    CreateReturnShippingLabelRequest.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "JobId", traits: {"smithy.api#required" => {}}))
    CreateReturnShippingLabelRequest.add_member(:shipping_option, ::Smithy::Schema::Shapes::MemberShape.new(target: ShippingOption, name: "ShippingOption"))
    CreateReturnShippingLabelRequest.type = Types::CreateReturnShippingLabelRequest
    CreateReturnShippingLabelResult.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ShippingLabelStatus, name: "Status"))
    CreateReturnShippingLabelResult.type = Types::CreateReturnShippingLabelResult
    DataTransfer.add_member(:bytes_transferred, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "BytesTransferred", traits: {"smithy.api#default" => 0}))
    DataTransfer.add_member(:objects_transferred, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "ObjectsTransferred", traits: {"smithy.api#default" => 0}))
    DataTransfer.add_member(:total_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "TotalBytes", traits: {"smithy.api#default" => 0}))
    DataTransfer.add_member(:total_objects, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "TotalObjects", traits: {"smithy.api#default" => 0}))
    DataTransfer.type = Types::DataTransfer
    DependentService.add_member(:service_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceName, name: "ServiceName"))
    DependentService.add_member(:service_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceVersion, name: "ServiceVersion"))
    DependentService.type = Types::DependentService
    DependentServiceList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DependentService, name: "member"))
    DescribeAddressRequest.add_member(:address_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AddressId, name: "AddressId", traits: {"smithy.api#required" => {}}))
    DescribeAddressRequest.type = Types::DescribeAddressRequest
    DescribeAddressResult.add_member(:address, ::Smithy::Schema::Shapes::MemberShape.new(target: Address, name: "Address"))
    DescribeAddressResult.type = Types::DescribeAddressResult
    DescribeAddressesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListLimit, name: "MaxResults"))
    DescribeAddressesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    DescribeAddressesRequest.type = Types::DescribeAddressesRequest
    DescribeAddressesResult.add_member(:addresses, ::Smithy::Schema::Shapes::MemberShape.new(target: AddressList, name: "Addresses"))
    DescribeAddressesResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    DescribeAddressesResult.type = Types::DescribeAddressesResult
    DescribeClusterRequest.add_member(:cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterId, name: "ClusterId", traits: {"smithy.api#required" => {}}))
    DescribeClusterRequest.type = Types::DescribeClusterRequest
    DescribeClusterResult.add_member(:cluster_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterMetadata, name: "ClusterMetadata"))
    DescribeClusterResult.type = Types::DescribeClusterResult
    DescribeJobRequest.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "JobId", traits: {"smithy.api#required" => {}}))
    DescribeJobRequest.type = Types::DescribeJobRequest
    DescribeJobResult.add_member(:job_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: JobMetadata, name: "JobMetadata"))
    DescribeJobResult.add_member(:sub_job_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: JobMetadataList, name: "SubJobMetadata"))
    DescribeJobResult.type = Types::DescribeJobResult
    DescribeReturnShippingLabelRequest.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "JobId", traits: {"smithy.api#required" => {}}))
    DescribeReturnShippingLabelRequest.type = Types::DescribeReturnShippingLabelRequest
    DescribeReturnShippingLabelResult.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ShippingLabelStatus, name: "Status"))
    DescribeReturnShippingLabelResult.add_member(:expiration_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "ExpirationDate"))
    DescribeReturnShippingLabelResult.add_member(:return_shipping_label_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReturnShippingLabelURI"))
    DescribeReturnShippingLabelResult.type = Types::DescribeReturnShippingLabelResult
    DeviceConfiguration.add_member(:snowcone_device_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SnowconeDeviceConfiguration, name: "SnowconeDeviceConfiguration"))
    DeviceConfiguration.type = Types::DeviceConfiguration
    DeviceServiceName.add_member(:nfs_on_device_service, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NFS_ON_DEVICE_SERVICE", traits: {"smithy.api#enumValue" => "NFS_ON_DEVICE_SERVICE"}))
    DeviceServiceName.add_member(:s3_on_device_service, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "S3_ON_DEVICE_SERVICE", traits: {"smithy.api#enumValue" => "S3_ON_DEVICE_SERVICE"}))
    EKSOnDeviceServiceConfiguration.add_member(:kubernetes_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "KubernetesVersion"))
    EKSOnDeviceServiceConfiguration.add_member(:eks_anywhere_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EKSAnywhereVersion"))
    EKSOnDeviceServiceConfiguration.type = Types::EKSOnDeviceServiceConfiguration
    Ec2AmiResource.add_member(:ami_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AmiId, name: "AmiId", traits: {"smithy.api#required" => {}}))
    Ec2AmiResource.add_member(:snowball_ami_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SnowballAmiId"))
    Ec2AmiResource.type = Types::Ec2AmiResource
    Ec2AmiResourceList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Ec2AmiResource, name: "member"))
    Ec2RequestFailedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    Ec2RequestFailedException.type = Types::Ec2RequestFailedException
    EventTriggerDefinition.add_member(:event_resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceARN, name: "EventResourceARN"))
    EventTriggerDefinition.type = Types::EventTriggerDefinition
    EventTriggerDefinitionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EventTriggerDefinition, name: "member"))
    GetJobManifestRequest.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "JobId", traits: {"smithy.api#required" => {}}))
    GetJobManifestRequest.type = Types::GetJobManifestRequest
    GetJobManifestResult.add_member(:manifest_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ManifestURI"))
    GetJobManifestResult.type = Types::GetJobManifestResult
    GetJobUnlockCodeRequest.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "JobId", traits: {"smithy.api#required" => {}}))
    GetJobUnlockCodeRequest.type = Types::GetJobUnlockCodeRequest
    GetJobUnlockCodeResult.add_member(:unlock_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "UnlockCode"))
    GetJobUnlockCodeResult.type = Types::GetJobUnlockCodeResult
    GetSnowballUsageRequest.type = Types::GetSnowballUsageRequest
    GetSnowballUsageResult.add_member(:snowball_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "SnowballLimit"))
    GetSnowballUsageResult.add_member(:snowballs_in_use, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "SnowballsInUse"))
    GetSnowballUsageResult.type = Types::GetSnowballUsageResult
    GetSoftwareUpdatesRequest.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "JobId", traits: {"smithy.api#required" => {}}))
    GetSoftwareUpdatesRequest.type = Types::GetSoftwareUpdatesRequest
    GetSoftwareUpdatesResult.add_member(:updates_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "UpdatesURI"))
    GetSoftwareUpdatesResult.type = Types::GetSoftwareUpdatesResult
    INDTaxDocuments.add_member(:gstin, ::Smithy::Schema::Shapes::MemberShape.new(target: GSTIN, name: "GSTIN"))
    INDTaxDocuments.type = Types::INDTaxDocuments
    ImpactLevel.add_member(:il2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IL2", traits: {"smithy.api#enumValue" => "IL2"}))
    ImpactLevel.add_member(:il4, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IL4", traits: {"smithy.api#enumValue" => "IL4"}))
    ImpactLevel.add_member(:il5, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IL5", traits: {"smithy.api#enumValue" => "IL5"}))
    ImpactLevel.add_member(:il6, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IL6", traits: {"smithy.api#enumValue" => "IL6"}))
    ImpactLevel.add_member(:il99, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IL99", traits: {"smithy.api#enumValue" => "IL99"}))
    InvalidAddressException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    InvalidAddressException.type = Types::InvalidAddressException
    InvalidInputCombinationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    InvalidInputCombinationException.type = Types::InvalidInputCombinationException
    InvalidJobStateException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    InvalidJobStateException.type = Types::InvalidJobStateException
    InvalidNextTokenException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    InvalidNextTokenException.type = Types::InvalidNextTokenException
    InvalidResourceException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    InvalidResourceException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceType"))
    InvalidResourceException.type = Types::InvalidResourceException
    JobListEntry.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "JobId"))
    JobListEntry.add_member(:job_state, ::Smithy::Schema::Shapes::MemberShape.new(target: JobState, name: "JobState"))
    JobListEntry.add_member(:is_master, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "IsMaster", traits: {"smithy.api#default" => false}))
    JobListEntry.add_member(:job_type, ::Smithy::Schema::Shapes::MemberShape.new(target: JobType, name: "JobType"))
    JobListEntry.add_member(:snowball_type, ::Smithy::Schema::Shapes::MemberShape.new(target: SnowballType, name: "SnowballType"))
    JobListEntry.add_member(:creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationDate"))
    JobListEntry.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description"))
    JobListEntry.type = Types::JobListEntry
    JobListEntryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: JobListEntry, name: "member"))
    JobLogs.add_member(:job_completion_report_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "JobCompletionReportURI"))
    JobLogs.add_member(:job_success_log_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "JobSuccessLogURI"))
    JobLogs.add_member(:job_failure_log_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "JobFailureLogURI"))
    JobLogs.type = Types::JobLogs
    JobMetadata.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "JobId"))
    JobMetadata.add_member(:job_state, ::Smithy::Schema::Shapes::MemberShape.new(target: JobState, name: "JobState"))
    JobMetadata.add_member(:job_type, ::Smithy::Schema::Shapes::MemberShape.new(target: JobType, name: "JobType"))
    JobMetadata.add_member(:snowball_type, ::Smithy::Schema::Shapes::MemberShape.new(target: SnowballType, name: "SnowballType"))
    JobMetadata.add_member(:creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationDate"))
    JobMetadata.add_member(:resources, ::Smithy::Schema::Shapes::MemberShape.new(target: JobResource, name: "Resources"))
    JobMetadata.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description"))
    JobMetadata.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyARN, name: "KmsKeyARN"))
    JobMetadata.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleARN, name: "RoleARN"))
    JobMetadata.add_member(:address_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AddressId, name: "AddressId"))
    JobMetadata.add_member(:shipping_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ShippingDetails, name: "ShippingDetails"))
    JobMetadata.add_member(:snowball_capacity_preference, ::Smithy::Schema::Shapes::MemberShape.new(target: SnowballCapacity, name: "SnowballCapacityPreference"))
    JobMetadata.add_member(:notification, ::Smithy::Schema::Shapes::MemberShape.new(target: Notification, name: "Notification"))
    JobMetadata.add_member(:data_transfer_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: DataTransfer, name: "DataTransferProgress"))
    JobMetadata.add_member(:job_log_info, ::Smithy::Schema::Shapes::MemberShape.new(target: JobLogs, name: "JobLogInfo"))
    JobMetadata.add_member(:cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterId"))
    JobMetadata.add_member(:forwarding_address_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AddressId, name: "ForwardingAddressId"))
    JobMetadata.add_member(:tax_documents, ::Smithy::Schema::Shapes::MemberShape.new(target: TaxDocuments, name: "TaxDocuments"))
    JobMetadata.add_member(:device_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceConfiguration, name: "DeviceConfiguration"))
    JobMetadata.add_member(:remote_management, ::Smithy::Schema::Shapes::MemberShape.new(target: RemoteManagement, name: "RemoteManagement"))
    JobMetadata.add_member(:long_term_pricing_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LongTermPricingId, name: "LongTermPricingId"))
    JobMetadata.add_member(:on_device_service_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: OnDeviceServiceConfiguration, name: "OnDeviceServiceConfiguration"))
    JobMetadata.add_member(:impact_level, ::Smithy::Schema::Shapes::MemberShape.new(target: ImpactLevel, name: "ImpactLevel"))
    JobMetadata.add_member(:pickup_details, ::Smithy::Schema::Shapes::MemberShape.new(target: PickupDetails, name: "PickupDetails"))
    JobMetadata.add_member(:snowball_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SnowballId"))
    JobMetadata.type = Types::JobMetadata
    JobMetadataList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: JobMetadata, name: "member"))
    JobResource.add_member(:s3_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: S3ResourceList, name: "S3Resources"))
    JobResource.add_member(:lambda_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaResourceList, name: "LambdaResources"))
    JobResource.add_member(:ec2_ami_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: Ec2AmiResourceList, name: "Ec2AmiResources"))
    JobResource.type = Types::JobResource
    JobState.add_member(:new, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NEW", traits: {"smithy.api#enumValue" => "New"}))
    JobState.add_member(:preparing_appliance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PREPARING_APPLIANCE", traits: {"smithy.api#enumValue" => "PreparingAppliance"}))
    JobState.add_member(:preparing_shipment, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PREPARING_SHIPMENT", traits: {"smithy.api#enumValue" => "PreparingShipment"}))
    JobState.add_member(:in_transit_to_customer, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_TRANSIT_TO_CUSTOMER", traits: {"smithy.api#enumValue" => "InTransitToCustomer"}))
    JobState.add_member(:with_customer, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WITH_CUSTOMER", traits: {"smithy.api#enumValue" => "WithCustomer"}))
    JobState.add_member(:in_transit_to_aws, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_TRANSIT_TO_AWS", traits: {"smithy.api#enumValue" => "InTransitToAWS"}))
    JobState.add_member(:with_aws_sorting_facility, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WITH_AWS_SORTING_FACILITY", traits: {"smithy.api#enumValue" => "WithAWSSortingFacility"}))
    JobState.add_member(:with_aws, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WITH_AWS", traits: {"smithy.api#enumValue" => "WithAWS"}))
    JobState.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "InProgress"}))
    JobState.add_member(:complete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETE", traits: {"smithy.api#enumValue" => "Complete"}))
    JobState.add_member(:cancelled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCELLED", traits: {"smithy.api#enumValue" => "Cancelled"}))
    JobState.add_member(:listing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LISTING", traits: {"smithy.api#enumValue" => "Listing"}))
    JobState.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "Pending"}))
    JobStateList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: JobState, name: "member"))
    JobType.add_member(:import, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IMPORT", traits: {"smithy.api#enumValue" => "IMPORT"}))
    JobType.add_member(:export, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXPORT", traits: {"smithy.api#enumValue" => "EXPORT"}))
    JobType.add_member(:local_use, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOCAL_USE", traits: {"smithy.api#enumValue" => "LOCAL_USE"}))
    KMSRequestFailedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    KMSRequestFailedException.type = Types::KMSRequestFailedException
    KeyRange.add_member(:begin_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "BeginMarker"))
    KeyRange.add_member(:end_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EndMarker"))
    KeyRange.type = Types::KeyRange
    LambdaResource.add_member(:lambda_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceARN, name: "LambdaArn"))
    LambdaResource.add_member(:event_triggers, ::Smithy::Schema::Shapes::MemberShape.new(target: EventTriggerDefinitionList, name: "EventTriggers"))
    LambdaResource.type = Types::LambdaResource
    LambdaResourceList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaResource, name: "member"))
    ListClusterJobsRequest.add_member(:cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterId, name: "ClusterId", traits: {"smithy.api#required" => {}}))
    ListClusterJobsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListLimit, name: "MaxResults"))
    ListClusterJobsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListClusterJobsRequest.type = Types::ListClusterJobsRequest
    ListClusterJobsResult.add_member(:job_list_entries, ::Smithy::Schema::Shapes::MemberShape.new(target: JobListEntryList, name: "JobListEntries"))
    ListClusterJobsResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListClusterJobsResult.type = Types::ListClusterJobsResult
    ListClustersRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListLimit, name: "MaxResults"))
    ListClustersRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListClustersRequest.type = Types::ListClustersRequest
    ListClustersResult.add_member(:cluster_list_entries, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterListEntryList, name: "ClusterListEntries"))
    ListClustersResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListClustersResult.type = Types::ListClustersResult
    ListCompatibleImagesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListLimit, name: "MaxResults"))
    ListCompatibleImagesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListCompatibleImagesRequest.type = Types::ListCompatibleImagesRequest
    ListCompatibleImagesResult.add_member(:compatible_images, ::Smithy::Schema::Shapes::MemberShape.new(target: CompatibleImageList, name: "CompatibleImages"))
    ListCompatibleImagesResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListCompatibleImagesResult.type = Types::ListCompatibleImagesResult
    ListJobsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListLimit, name: "MaxResults"))
    ListJobsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListJobsRequest.type = Types::ListJobsRequest
    ListJobsResult.add_member(:job_list_entries, ::Smithy::Schema::Shapes::MemberShape.new(target: JobListEntryList, name: "JobListEntries"))
    ListJobsResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListJobsResult.type = Types::ListJobsResult
    ListLongTermPricingRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListLimit, name: "MaxResults"))
    ListLongTermPricingRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListLongTermPricingRequest.type = Types::ListLongTermPricingRequest
    ListLongTermPricingResult.add_member(:long_term_pricing_entries, ::Smithy::Schema::Shapes::MemberShape.new(target: LongTermPricingEntryList, name: "LongTermPricingEntries"))
    ListLongTermPricingResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListLongTermPricingResult.type = Types::ListLongTermPricingResult
    ListPickupLocationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListLimit, name: "MaxResults"))
    ListPickupLocationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListPickupLocationsRequest.type = Types::ListPickupLocationsRequest
    ListPickupLocationsResult.add_member(:addresses, ::Smithy::Schema::Shapes::MemberShape.new(target: AddressList, name: "Addresses"))
    ListPickupLocationsResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListPickupLocationsResult.type = Types::ListPickupLocationsResult
    ListServiceVersionsRequest.add_member(:service_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceName, name: "ServiceName", traits: {"smithy.api#required" => {}}))
    ListServiceVersionsRequest.add_member(:dependent_services, ::Smithy::Schema::Shapes::MemberShape.new(target: DependentServiceList, name: "DependentServices"))
    ListServiceVersionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListLimit, name: "MaxResults"))
    ListServiceVersionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListServiceVersionsRequest.type = Types::ListServiceVersionsRequest
    ListServiceVersionsResult.add_member(:service_versions, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceVersionList, name: "ServiceVersions", traits: {"smithy.api#required" => {}}))
    ListServiceVersionsResult.add_member(:service_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceName, name: "ServiceName", traits: {"smithy.api#required" => {}}))
    ListServiceVersionsResult.add_member(:dependent_services, ::Smithy::Schema::Shapes::MemberShape.new(target: DependentServiceList, name: "DependentServices"))
    ListServiceVersionsResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListServiceVersionsResult.type = Types::ListServiceVersionsResult
    LongTermPricingAssociatedJobIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "member"))
    LongTermPricingEntryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LongTermPricingListEntry, name: "member"))
    LongTermPricingIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LongTermPricingId, name: "member"))
    LongTermPricingListEntry.add_member(:long_term_pricing_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LongTermPricingId, name: "LongTermPricingId"))
    LongTermPricingListEntry.add_member(:long_term_pricing_end_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LongTermPricingEndDate"))
    LongTermPricingListEntry.add_member(:long_term_pricing_start_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LongTermPricingStartDate"))
    LongTermPricingListEntry.add_member(:long_term_pricing_type, ::Smithy::Schema::Shapes::MemberShape.new(target: LongTermPricingType, name: "LongTermPricingType"))
    LongTermPricingListEntry.add_member(:current_active_job, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "CurrentActiveJob"))
    LongTermPricingListEntry.add_member(:replacement_job, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "ReplacementJob"))
    LongTermPricingListEntry.add_member(:is_long_term_pricing_auto_renew, ::Smithy::Schema::Shapes::MemberShape.new(target: JavaBoolean, name: "IsLongTermPricingAutoRenew"))
    LongTermPricingListEntry.add_member(:long_term_pricing_status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LongTermPricingStatus"))
    LongTermPricingListEntry.add_member(:snowball_type, ::Smithy::Schema::Shapes::MemberShape.new(target: SnowballType, name: "SnowballType"))
    LongTermPricingListEntry.add_member(:job_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: LongTermPricingAssociatedJobIdList, name: "JobIds"))
    LongTermPricingListEntry.type = Types::LongTermPricingListEntry
    LongTermPricingType.add_member(:one_year, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ONE_YEAR", traits: {"smithy.api#enumValue" => "OneYear"}))
    LongTermPricingType.add_member(:three_year, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "THREE_YEAR", traits: {"smithy.api#enumValue" => "ThreeYear"}))
    LongTermPricingType.add_member(:one_month, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ONE_MONTH", traits: {"smithy.api#enumValue" => "OneMonth"}))
    NFSOnDeviceServiceConfiguration.add_member(:storage_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageLimit, name: "StorageLimit", traits: {"smithy.api#default" => 0}))
    NFSOnDeviceServiceConfiguration.add_member(:storage_unit, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageUnit, name: "StorageUnit"))
    NFSOnDeviceServiceConfiguration.type = Types::NFSOnDeviceServiceConfiguration
    Notification.add_member(:sns_topic_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SnsTopicARN, name: "SnsTopicARN"))
    Notification.add_member(:job_states_to_notify, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStateList, name: "JobStatesToNotify"))
    Notification.add_member(:notify_all, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "NotifyAll", traits: {"smithy.api#default" => false}))
    Notification.add_member(:device_pickup_sns_topic_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SnsTopicARN, name: "DevicePickupSnsTopicARN"))
    Notification.type = Types::Notification
    OnDeviceServiceConfiguration.add_member(:nfs_on_device_service, ::Smithy::Schema::Shapes::MemberShape.new(target: NFSOnDeviceServiceConfiguration, name: "NFSOnDeviceService"))
    OnDeviceServiceConfiguration.add_member(:tgw_on_device_service, ::Smithy::Schema::Shapes::MemberShape.new(target: TGWOnDeviceServiceConfiguration, name: "TGWOnDeviceService"))
    OnDeviceServiceConfiguration.add_member(:eks_on_device_service, ::Smithy::Schema::Shapes::MemberShape.new(target: EKSOnDeviceServiceConfiguration, name: "EKSOnDeviceService"))
    OnDeviceServiceConfiguration.add_member(:s3_on_device_service, ::Smithy::Schema::Shapes::MemberShape.new(target: S3OnDeviceServiceConfiguration, name: "S3OnDeviceService"))
    OnDeviceServiceConfiguration.type = Types::OnDeviceServiceConfiguration
    PickupDetails.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name"))
    PickupDetails.add_member(:phone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumber, name: "PhoneNumber"))
    PickupDetails.add_member(:email, ::Smithy::Schema::Shapes::MemberShape.new(target: Email, name: "Email"))
    PickupDetails.add_member(:identification_number, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "IdentificationNumber"))
    PickupDetails.add_member(:identification_expiration_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "IdentificationExpirationDate"))
    PickupDetails.add_member(:identification_issuing_org, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "IdentificationIssuingOrg"))
    PickupDetails.add_member(:device_pickup_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DevicePickupId, name: "DevicePickupId"))
    PickupDetails.type = Types::PickupDetails
    RemoteManagement.add_member(:installed_only, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INSTALLED_ONLY", traits: {"smithy.api#enumValue" => "INSTALLED_ONLY"}))
    RemoteManagement.add_member(:installed_autostart, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INSTALLED_AUTOSTART", traits: {"smithy.api#enumValue" => "INSTALLED_AUTOSTART"}))
    RemoteManagement.add_member(:not_installed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_INSTALLED", traits: {"smithy.api#enumValue" => "NOT_INSTALLED"}))
    ReturnShippingLabelAlreadyExistsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    ReturnShippingLabelAlreadyExistsException.type = Types::ReturnShippingLabelAlreadyExistsException
    S3OnDeviceServiceConfiguration.add_member(:storage_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: S3StorageLimit, name: "StorageLimit"))
    S3OnDeviceServiceConfiguration.add_member(:storage_unit, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageUnit, name: "StorageUnit"))
    S3OnDeviceServiceConfiguration.add_member(:service_size, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceSize, name: "ServiceSize"))
    S3OnDeviceServiceConfiguration.add_member(:fault_tolerance, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeFaultTolerance, name: "FaultTolerance"))
    S3OnDeviceServiceConfiguration.type = Types::S3OnDeviceServiceConfiguration
    S3Resource.add_member(:bucket_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceARN, name: "BucketArn"))
    S3Resource.add_member(:key_range, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyRange, name: "KeyRange"))
    S3Resource.add_member(:target_on_device_services, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetOnDeviceServiceList, name: "TargetOnDeviceServices"))
    S3Resource.type = Types::S3Resource
    S3ResourceList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Resource, name: "member"))
    ServiceName.add_member(:kubernetes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KUBERNETES", traits: {"smithy.api#enumValue" => "KUBERNETES"}))
    ServiceName.add_member(:eks_anywhere, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EKS_ANYWHERE", traits: {"smithy.api#enumValue" => "EKS_ANYWHERE"}))
    ServiceVersion.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Version"))
    ServiceVersion.type = Types::ServiceVersion
    ServiceVersionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceVersion, name: "member"))
    Shipment.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status"))
    Shipment.add_member(:tracking_number, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TrackingNumber"))
    Shipment.type = Types::Shipment
    ShipmentState.add_member(:received, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECEIVED", traits: {"smithy.api#enumValue" => "RECEIVED"}))
    ShipmentState.add_member(:returned, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RETURNED", traits: {"smithy.api#enumValue" => "RETURNED"}))
    ShippingDetails.add_member(:shipping_option, ::Smithy::Schema::Shapes::MemberShape.new(target: ShippingOption, name: "ShippingOption"))
    ShippingDetails.add_member(:inbound_shipment, ::Smithy::Schema::Shapes::MemberShape.new(target: Shipment, name: "InboundShipment"))
    ShippingDetails.add_member(:outbound_shipment, ::Smithy::Schema::Shapes::MemberShape.new(target: Shipment, name: "OutboundShipment"))
    ShippingDetails.type = Types::ShippingDetails
    ShippingLabelStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "InProgress"}))
    ShippingLabelStatus.add_member(:timed_out, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TIMED_OUT", traits: {"smithy.api#enumValue" => "TimedOut"}))
    ShippingLabelStatus.add_member(:succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCEEDED", traits: {"smithy.api#enumValue" => "Succeeded"}))
    ShippingLabelStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "Failed"}))
    ShippingOption.add_member(:second_day, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SECOND_DAY", traits: {"smithy.api#enumValue" => "SECOND_DAY"}))
    ShippingOption.add_member(:next_day, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NEXT_DAY", traits: {"smithy.api#enumValue" => "NEXT_DAY"}))
    ShippingOption.add_member(:express, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXPRESS", traits: {"smithy.api#enumValue" => "EXPRESS"}))
    ShippingOption.add_member(:standard, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STANDARD", traits: {"smithy.api#enumValue" => "STANDARD"}))
    SnowballCapacity.add_member(:t50, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "T50", traits: {"smithy.api#enumValue" => "T50"}))
    SnowballCapacity.add_member(:t80, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "T80", traits: {"smithy.api#enumValue" => "T80"}))
    SnowballCapacity.add_member(:t100, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "T100", traits: {"smithy.api#enumValue" => "T100"}))
    SnowballCapacity.add_member(:t42, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "T42", traits: {"smithy.api#enumValue" => "T42"}))
    SnowballCapacity.add_member(:t98, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "T98", traits: {"smithy.api#enumValue" => "T98"}))
    SnowballCapacity.add_member(:t8, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "T8", traits: {"smithy.api#enumValue" => "T8"}))
    SnowballCapacity.add_member(:t14, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "T14", traits: {"smithy.api#enumValue" => "T14"}))
    SnowballCapacity.add_member(:t32, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "T32", traits: {"smithy.api#enumValue" => "T32"}))
    SnowballCapacity.add_member(:no_preference, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NO_PREFERENCE", traits: {"smithy.api#enumValue" => "NoPreference"}))
    SnowballCapacity.add_member(:t240, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "T240", traits: {"smithy.api#enumValue" => "T240"}))
    SnowballCapacity.add_member(:t13, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "T13", traits: {"smithy.api#enumValue" => "T13"}))
    SnowballType.add_member(:standard, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STANDARD", traits: {"smithy.api#enumValue" => "STANDARD"}))
    SnowballType.add_member(:edge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EDGE", traits: {"smithy.api#enumValue" => "EDGE"}))
    SnowballType.add_member(:edge_c, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EDGE_C", traits: {"smithy.api#enumValue" => "EDGE_C"}))
    SnowballType.add_member(:edge_cg, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EDGE_CG", traits: {"smithy.api#enumValue" => "EDGE_CG"}))
    SnowballType.add_member(:edge_s, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EDGE_S", traits: {"smithy.api#enumValue" => "EDGE_S"}))
    SnowballType.add_member(:snc1_hdd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SNC1_HDD", traits: {"smithy.api#enumValue" => "SNC1_HDD"}))
    SnowballType.add_member(:snc1_ssd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SNC1_SSD", traits: {"smithy.api#enumValue" => "SNC1_SSD"}))
    SnowballType.add_member(:v3_5_c, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "V3_5C", traits: {"smithy.api#enumValue" => "V3_5C"}))
    SnowballType.add_member(:v3_5_s, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "V3_5S", traits: {"smithy.api#enumValue" => "V3_5S"}))
    SnowballType.add_member(:rack_5_u_c, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RACK_5U_C", traits: {"smithy.api#enumValue" => "RACK_5U_C"}))
    SnowconeDeviceConfiguration.add_member(:wireless_connection, ::Smithy::Schema::Shapes::MemberShape.new(target: WirelessConnection, name: "WirelessConnection"))
    SnowconeDeviceConfiguration.type = Types::SnowconeDeviceConfiguration
    StorageUnit.add_member(:tb, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TB", traits: {"smithy.api#enumValue" => "TB"}))
    TGWOnDeviceServiceConfiguration.add_member(:storage_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageLimit, name: "StorageLimit", traits: {"smithy.api#default" => 0}))
    TGWOnDeviceServiceConfiguration.add_member(:storage_unit, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageUnit, name: "StorageUnit"))
    TGWOnDeviceServiceConfiguration.type = Types::TGWOnDeviceServiceConfiguration
    TargetOnDeviceService.add_member(:service_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceServiceName, name: "ServiceName"))
    TargetOnDeviceService.add_member(:transfer_option, ::Smithy::Schema::Shapes::MemberShape.new(target: TransferOption, name: "TransferOption"))
    TargetOnDeviceService.type = Types::TargetOnDeviceService
    TargetOnDeviceServiceList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetOnDeviceService, name: "member"))
    TaxDocuments.add_member(:ind, ::Smithy::Schema::Shapes::MemberShape.new(target: INDTaxDocuments, name: "IND"))
    TaxDocuments.type = Types::TaxDocuments
    TransferOption.add_member(:import, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IMPORT", traits: {"smithy.api#enumValue" => "IMPORT"}))
    TransferOption.add_member(:export, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXPORT", traits: {"smithy.api#enumValue" => "EXPORT"}))
    TransferOption.add_member(:local_use, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOCAL_USE", traits: {"smithy.api#enumValue" => "LOCAL_USE"}))
    UnsupportedAddressException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    UnsupportedAddressException.type = Types::UnsupportedAddressException
    UpdateClusterRequest.add_member(:cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterId, name: "ClusterId", traits: {"smithy.api#required" => {}}))
    UpdateClusterRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleARN, name: "RoleARN"))
    UpdateClusterRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description"))
    UpdateClusterRequest.add_member(:resources, ::Smithy::Schema::Shapes::MemberShape.new(target: JobResource, name: "Resources"))
    UpdateClusterRequest.add_member(:on_device_service_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: OnDeviceServiceConfiguration, name: "OnDeviceServiceConfiguration"))
    UpdateClusterRequest.add_member(:address_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AddressId, name: "AddressId"))
    UpdateClusterRequest.add_member(:shipping_option, ::Smithy::Schema::Shapes::MemberShape.new(target: ShippingOption, name: "ShippingOption"))
    UpdateClusterRequest.add_member(:notification, ::Smithy::Schema::Shapes::MemberShape.new(target: Notification, name: "Notification"))
    UpdateClusterRequest.add_member(:forwarding_address_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AddressId, name: "ForwardingAddressId"))
    UpdateClusterRequest.type = Types::UpdateClusterRequest
    UpdateClusterResult.type = Types::UpdateClusterResult
    UpdateJobRequest.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "JobId", traits: {"smithy.api#required" => {}}))
    UpdateJobRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleARN, name: "RoleARN"))
    UpdateJobRequest.add_member(:notification, ::Smithy::Schema::Shapes::MemberShape.new(target: Notification, name: "Notification"))
    UpdateJobRequest.add_member(:resources, ::Smithy::Schema::Shapes::MemberShape.new(target: JobResource, name: "Resources"))
    UpdateJobRequest.add_member(:on_device_service_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: OnDeviceServiceConfiguration, name: "OnDeviceServiceConfiguration"))
    UpdateJobRequest.add_member(:address_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AddressId, name: "AddressId"))
    UpdateJobRequest.add_member(:shipping_option, ::Smithy::Schema::Shapes::MemberShape.new(target: ShippingOption, name: "ShippingOption"))
    UpdateJobRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description"))
    UpdateJobRequest.add_member(:snowball_capacity_preference, ::Smithy::Schema::Shapes::MemberShape.new(target: SnowballCapacity, name: "SnowballCapacityPreference"))
    UpdateJobRequest.add_member(:forwarding_address_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AddressId, name: "ForwardingAddressId"))
    UpdateJobRequest.add_member(:pickup_details, ::Smithy::Schema::Shapes::MemberShape.new(target: PickupDetails, name: "PickupDetails"))
    UpdateJobRequest.type = Types::UpdateJobRequest
    UpdateJobResult.type = Types::UpdateJobResult
    UpdateJobShipmentStateRequest.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "JobId", traits: {"smithy.api#required" => {}}))
    UpdateJobShipmentStateRequest.add_member(:shipment_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ShipmentState, name: "ShipmentState", traits: {"smithy.api#required" => {}}))
    UpdateJobShipmentStateRequest.type = Types::UpdateJobShipmentStateRequest
    UpdateJobShipmentStateResult.type = Types::UpdateJobShipmentStateResult
    UpdateLongTermPricingRequest.add_member(:long_term_pricing_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LongTermPricingId, name: "LongTermPricingId", traits: {"smithy.api#required" => {}}))
    UpdateLongTermPricingRequest.add_member(:replacement_job, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "ReplacementJob"))
    UpdateLongTermPricingRequest.add_member(:is_long_term_pricing_auto_renew, ::Smithy::Schema::Shapes::MemberShape.new(target: JavaBoolean, name: "IsLongTermPricingAutoRenew"))
    UpdateLongTermPricingRequest.type = Types::UpdateLongTermPricingRequest
    UpdateLongTermPricingResult.type = Types::UpdateLongTermPricingResult
    WirelessConnection.add_member(:is_wifi_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "IsWifiEnabled", traits: {"smithy.api#default" => false}))
    WirelessConnection.type = Types::WirelessConnection

    AWSIESnowballJobManagementService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.snowball#AWSIESnowballJobManagementService"
      service.name = "AWSIESnowballJobManagementService"
      service.version = "2016-06-30"
      service.traits = {"aws.api#service" => {"sdkId" => "Snowball", "arnNamespace" => "snowball", "cloudFormationName" => "Snowball", "cloudTrailEventSource" => "snowball.amazonaws.com", "endpointPrefix" => "snowball"}, "aws.auth#sigv4" => {"name" => "snowball"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "Amazon Import/Export Snowball"}
      service.add_operation(:cancel_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.snowball#CancelCluster"
        operation.name = "CancelCluster"
        operation.input = CancelClusterRequest
        operation.output = CancelClusterResult
        operation.errors << InvalidJobStateException
        operation.errors << InvalidResourceException
        operation.errors << KMSRequestFailedException
        operation.traits = {}
      end)
      service.add_operation(:cancel_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.snowball#CancelJob"
        operation.name = "CancelJob"
        operation.input = CancelJobRequest
        operation.output = CancelJobResult
        operation.errors << InvalidJobStateException
        operation.errors << InvalidResourceException
        operation.errors << KMSRequestFailedException
        operation.traits = {}
      end)
      service.add_operation(:create_address, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.snowball#CreateAddress"
        operation.name = "CreateAddress"
        operation.input = CreateAddressRequest
        operation.output = CreateAddressResult
        operation.errors << InvalidAddressException
        operation.errors << UnsupportedAddressException
        operation.traits = {}
      end)
      service.add_operation(:create_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.snowball#CreateCluster"
        operation.name = "CreateCluster"
        operation.input = CreateClusterRequest
        operation.output = CreateClusterResult
        operation.errors << Ec2RequestFailedException
        operation.errors << InvalidInputCombinationException
        operation.errors << InvalidResourceException
        operation.errors << KMSRequestFailedException
        operation.traits = {}
      end)
      service.add_operation(:create_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.snowball#CreateJob"
        operation.name = "CreateJob"
        operation.input = CreateJobRequest
        operation.output = CreateJobResult
        operation.errors << ClusterLimitExceededException
        operation.errors << Ec2RequestFailedException
        operation.errors << InvalidInputCombinationException
        operation.errors << InvalidResourceException
        operation.errors << KMSRequestFailedException
        operation.traits = {}
      end)
      service.add_operation(:create_long_term_pricing, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.snowball#CreateLongTermPricing"
        operation.name = "CreateLongTermPricing"
        operation.input = CreateLongTermPricingRequest
        operation.output = CreateLongTermPricingResult
        operation.errors << InvalidResourceException
        operation.traits = {}
      end)
      service.add_operation(:create_return_shipping_label, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.snowball#CreateReturnShippingLabel"
        operation.name = "CreateReturnShippingLabel"
        operation.input = CreateReturnShippingLabelRequest
        operation.output = CreateReturnShippingLabelResult
        operation.errors << ConflictException
        operation.errors << InvalidInputCombinationException
        operation.errors << InvalidJobStateException
        operation.errors << InvalidResourceException
        operation.errors << ReturnShippingLabelAlreadyExistsException
        operation.traits = {}
      end)
      service.add_operation(:describe_address, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.snowball#DescribeAddress"
        operation.name = "DescribeAddress"
        operation.input = DescribeAddressRequest
        operation.output = DescribeAddressResult
        operation.errors << InvalidResourceException
        operation.traits = {}
      end)
      service.add_operation(:describe_addresses, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.snowball#DescribeAddresses"
        operation.name = "DescribeAddresses"
        operation.input = DescribeAddressesRequest
        operation.output = DescribeAddressesResult
        operation.errors << InvalidNextTokenException
        operation.errors << InvalidResourceException
        operation.traits = {"smithy.test#smokeTests" => [{"id" => "DescribeAddressesSuccess", "params" => {}, "vendorParams" => {"region" => "us-west-2"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"success" => {}}}]}
        operation[:paginator] = Paginators::DescribeAddresses.new
      end)
      service.add_operation(:describe_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.snowball#DescribeCluster"
        operation.name = "DescribeCluster"
        operation.input = DescribeClusterRequest
        operation.output = DescribeClusterResult
        operation.errors << InvalidResourceException
        operation.traits = {}
      end)
      service.add_operation(:describe_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.snowball#DescribeJob"
        operation.name = "DescribeJob"
        operation.input = DescribeJobRequest
        operation.output = DescribeJobResult
        operation.errors << InvalidResourceException
        operation.traits = {}
      end)
      service.add_operation(:describe_return_shipping_label, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.snowball#DescribeReturnShippingLabel"
        operation.name = "DescribeReturnShippingLabel"
        operation.input = DescribeReturnShippingLabelRequest
        operation.output = DescribeReturnShippingLabelResult
        operation.errors << ConflictException
        operation.errors << InvalidJobStateException
        operation.errors << InvalidResourceException
        operation.traits = {}
      end)
      service.add_operation(:get_job_manifest, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.snowball#GetJobManifest"
        operation.name = "GetJobManifest"
        operation.input = GetJobManifestRequest
        operation.output = GetJobManifestResult
        operation.errors << InvalidJobStateException
        operation.errors << InvalidResourceException
        operation.traits = {}
      end)
      service.add_operation(:get_job_unlock_code, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.snowball#GetJobUnlockCode"
        operation.name = "GetJobUnlockCode"
        operation.input = GetJobUnlockCodeRequest
        operation.output = GetJobUnlockCodeResult
        operation.errors << InvalidJobStateException
        operation.errors << InvalidResourceException
        operation.traits = {}
      end)
      service.add_operation(:get_snowball_usage, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.snowball#GetSnowballUsage"
        operation.name = "GetSnowballUsage"
        operation.input = GetSnowballUsageRequest
        operation.output = GetSnowballUsageResult
        operation.traits = {}
      end)
      service.add_operation(:get_software_updates, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.snowball#GetSoftwareUpdates"
        operation.name = "GetSoftwareUpdates"
        operation.input = GetSoftwareUpdatesRequest
        operation.output = GetSoftwareUpdatesResult
        operation.errors << InvalidJobStateException
        operation.errors << InvalidResourceException
        operation.traits = {}
      end)
      service.add_operation(:list_cluster_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.snowball#ListClusterJobs"
        operation.name = "ListClusterJobs"
        operation.input = ListClusterJobsRequest
        operation.output = ListClusterJobsResult
        operation.errors << InvalidNextTokenException
        operation.errors << InvalidResourceException
        operation.traits = {}
        operation[:paginator] = Paginators::ListClusterJobs.new
      end)
      service.add_operation(:list_clusters, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.snowball#ListClusters"
        operation.name = "ListClusters"
        operation.input = ListClustersRequest
        operation.output = ListClustersResult
        operation.errors << InvalidNextTokenException
        operation.traits = {}
        operation[:paginator] = Paginators::ListClusters.new
      end)
      service.add_operation(:list_compatible_images, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.snowball#ListCompatibleImages"
        operation.name = "ListCompatibleImages"
        operation.input = ListCompatibleImagesRequest
        operation.output = ListCompatibleImagesResult
        operation.errors << Ec2RequestFailedException
        operation.errors << InvalidNextTokenException
        operation.traits = {}
        operation[:paginator] = Paginators::ListCompatibleImages.new
      end)
      service.add_operation(:list_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.snowball#ListJobs"
        operation.name = "ListJobs"
        operation.input = ListJobsRequest
        operation.output = ListJobsResult
        operation.errors << InvalidNextTokenException
        operation.traits = {}
        operation[:paginator] = Paginators::ListJobs.new
      end)
      service.add_operation(:list_long_term_pricing, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.snowball#ListLongTermPricing"
        operation.name = "ListLongTermPricing"
        operation.input = ListLongTermPricingRequest
        operation.output = ListLongTermPricingResult
        operation.errors << InvalidNextTokenException
        operation.errors << InvalidResourceException
        operation.traits = {}
        operation[:paginator] = Paginators::ListLongTermPricing.new
      end)
      service.add_operation(:list_pickup_locations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.snowball#ListPickupLocations"
        operation.name = "ListPickupLocations"
        operation.input = ListPickupLocationsRequest
        operation.output = ListPickupLocationsResult
        operation.errors << InvalidResourceException
        operation.traits = {}
        operation[:paginator] = Paginators::ListPickupLocations.new
      end)
      service.add_operation(:list_service_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.snowball#ListServiceVersions"
        operation.name = "ListServiceVersions"
        operation.input = ListServiceVersionsRequest
        operation.output = ListServiceVersionsResult
        operation.errors << InvalidNextTokenException
        operation.errors << InvalidResourceException
        operation.traits = {}
      end)
      service.add_operation(:update_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.snowball#UpdateCluster"
        operation.name = "UpdateCluster"
        operation.input = UpdateClusterRequest
        operation.output = UpdateClusterResult
        operation.errors << Ec2RequestFailedException
        operation.errors << InvalidInputCombinationException
        operation.errors << InvalidJobStateException
        operation.errors << InvalidResourceException
        operation.errors << KMSRequestFailedException
        operation.traits = {}
      end)
      service.add_operation(:update_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.snowball#UpdateJob"
        operation.name = "UpdateJob"
        operation.input = UpdateJobRequest
        operation.output = UpdateJobResult
        operation.errors << ClusterLimitExceededException
        operation.errors << Ec2RequestFailedException
        operation.errors << InvalidInputCombinationException
        operation.errors << InvalidJobStateException
        operation.errors << InvalidResourceException
        operation.errors << KMSRequestFailedException
        operation.traits = {}
      end)
      service.add_operation(:update_job_shipment_state, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.snowball#UpdateJobShipmentState"
        operation.name = "UpdateJobShipmentState"
        operation.input = UpdateJobShipmentStateRequest
        operation.output = UpdateJobShipmentStateResult
        operation.errors << InvalidJobStateException
        operation.errors << InvalidResourceException
        operation.traits = {}
      end)
      service.add_operation(:update_long_term_pricing, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.snowball#UpdateLongTermPricing"
        operation.name = "UpdateLongTermPricing"
        operation.input = UpdateLongTermPricingRequest
        operation.output = UpdateLongTermPricingResult
        operation.errors << InvalidResourceException
        operation.traits = {}
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
