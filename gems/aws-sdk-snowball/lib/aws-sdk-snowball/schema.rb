# frozen_string_literal: true

# This is generated code!

module Aws::Snowball
  # This module contains a schema composed of shapes used by the client.
  module Schema

    Address = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowball#Address', name: 'Address')
    AddressId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.snowball#AddressId', name: 'AddressId', traits: {"smithy.api#length" => {"min" => 40, "max" => 40}, "smithy.api#pattern" => "^ADID[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$"})
    AddressList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.snowball#AddressList', name: 'AddressList')
    AddressType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.snowball#AddressType', name: 'AddressType')
    AmiId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.snowball#AmiId', name: 'AmiId', traits: {"smithy.api#length" => {"min" => 12, "max" => 21}, "smithy.api#pattern" => "^(ami-[0-9a-f]{8})|(ami-[0-9a-f]{17})$"})
    Boolean = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.snowball#Boolean', name: 'Boolean', traits: {"smithy.api#default" => false})
    CancelClusterRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowball#CancelClusterRequest', name: 'CancelClusterRequest')
    CancelClusterResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowball#CancelClusterResult', name: 'CancelClusterResult')
    CancelJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowball#CancelJobRequest', name: 'CancelJobRequest')
    CancelJobResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowball#CancelJobResult', name: 'CancelJobResult')
    ClusterId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.snowball#ClusterId', name: 'ClusterId', traits: {"smithy.api#length" => {"min" => 39, "max" => 39}, "smithy.api#pattern" => "^CID[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$"})
    ClusterLimitExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowball#ClusterLimitExceededException', name: 'ClusterLimitExceededException', traits: {"smithy.api#error" => "client"})
    ClusterListEntry = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowball#ClusterListEntry', name: 'ClusterListEntry')
    ClusterListEntryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.snowball#ClusterListEntryList', name: 'ClusterListEntryList')
    ClusterMetadata = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowball#ClusterMetadata', name: 'ClusterMetadata')
    ClusterState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.snowball#ClusterState', name: 'ClusterState')
    CompatibleImage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowball#CompatibleImage', name: 'CompatibleImage')
    CompatibleImageList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.snowball#CompatibleImageList', name: 'CompatibleImageList')
    ConflictException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowball#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client"})
    CreateAddressRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowball#CreateAddressRequest', name: 'CreateAddressRequest')
    CreateAddressResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowball#CreateAddressResult', name: 'CreateAddressResult')
    CreateClusterRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowball#CreateClusterRequest', name: 'CreateClusterRequest')
    CreateClusterResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowball#CreateClusterResult', name: 'CreateClusterResult')
    CreateJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowball#CreateJobRequest', name: 'CreateJobRequest')
    CreateJobResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowball#CreateJobResult', name: 'CreateJobResult')
    CreateLongTermPricingRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowball#CreateLongTermPricingRequest', name: 'CreateLongTermPricingRequest')
    CreateLongTermPricingResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowball#CreateLongTermPricingResult', name: 'CreateLongTermPricingResult')
    CreateReturnShippingLabelRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowball#CreateReturnShippingLabelRequest', name: 'CreateReturnShippingLabelRequest')
    CreateReturnShippingLabelResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowball#CreateReturnShippingLabelResult', name: 'CreateReturnShippingLabelResult')
    DataTransfer = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowball#DataTransfer', name: 'DataTransfer')
    DependentService = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowball#DependentService', name: 'DependentService')
    DependentServiceList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.snowball#DependentServiceList', name: 'DependentServiceList')
    DescribeAddressRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowball#DescribeAddressRequest', name: 'DescribeAddressRequest')
    DescribeAddressResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowball#DescribeAddressResult', name: 'DescribeAddressResult')
    DescribeAddressesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowball#DescribeAddressesRequest', name: 'DescribeAddressesRequest')
    DescribeAddressesResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowball#DescribeAddressesResult', name: 'DescribeAddressesResult')
    DescribeClusterRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowball#DescribeClusterRequest', name: 'DescribeClusterRequest')
    DescribeClusterResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowball#DescribeClusterResult', name: 'DescribeClusterResult')
    DescribeJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowball#DescribeJobRequest', name: 'DescribeJobRequest')
    DescribeJobResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowball#DescribeJobResult', name: 'DescribeJobResult')
    DescribeReturnShippingLabelRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowball#DescribeReturnShippingLabelRequest', name: 'DescribeReturnShippingLabelRequest')
    DescribeReturnShippingLabelResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowball#DescribeReturnShippingLabelResult', name: 'DescribeReturnShippingLabelResult')
    DeviceConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowball#DeviceConfiguration', name: 'DeviceConfiguration')
    DevicePickupId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.snowball#DevicePickupId', name: 'DevicePickupId', traits: {"smithy.api#length" => {"min" => 40, "max" => 40}, "smithy.api#pattern" => "^DPID[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$"})
    DeviceServiceName = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.snowball#DeviceServiceName', name: 'DeviceServiceName')
    EKSOnDeviceServiceConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowball#EKSOnDeviceServiceConfiguration', name: 'EKSOnDeviceServiceConfiguration')
    Ec2AmiResource = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowball#Ec2AmiResource', name: 'Ec2AmiResource')
    Ec2AmiResourceList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.snowball#Ec2AmiResourceList', name: 'Ec2AmiResourceList')
    Ec2RequestFailedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowball#Ec2RequestFailedException', name: 'Ec2RequestFailedException', traits: {"smithy.api#error" => "client"})
    Email = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.snowball#Email', name: 'Email', traits: {"smithy.api#length" => {"min" => 3, "max" => 320}, "smithy.api#pattern" => "^(?=.{3,100}$).+@.+[.].+$", "smithy.api#sensitive" => {}})
    EventTriggerDefinition = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowball#EventTriggerDefinition', name: 'EventTriggerDefinition')
    EventTriggerDefinitionList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.snowball#EventTriggerDefinitionList', name: 'EventTriggerDefinitionList')
    GSTIN = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.snowball#GSTIN', name: 'GSTIN', traits: {"smithy.api#length" => {"min" => 15, "max" => 15}, "smithy.api#pattern" => "^\\d{2}[A-Z]{5}\\d{4}[A-Z]{1}[A-Z\\d]{1}[Z]{1}[A-Z\\d]{1}$"})
    GetJobManifestRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowball#GetJobManifestRequest', name: 'GetJobManifestRequest')
    GetJobManifestResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowball#GetJobManifestResult', name: 'GetJobManifestResult')
    GetJobUnlockCodeRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowball#GetJobUnlockCodeRequest', name: 'GetJobUnlockCodeRequest')
    GetJobUnlockCodeResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowball#GetJobUnlockCodeResult', name: 'GetJobUnlockCodeResult')
    GetSnowballUsageRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowball#GetSnowballUsageRequest', name: 'GetSnowballUsageRequest')
    GetSnowballUsageResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowball#GetSnowballUsageResult', name: 'GetSnowballUsageResult')
    GetSoftwareUpdatesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowball#GetSoftwareUpdatesRequest', name: 'GetSoftwareUpdatesRequest')
    GetSoftwareUpdatesResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowball#GetSoftwareUpdatesResult', name: 'GetSoftwareUpdatesResult')
    INDTaxDocuments = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowball#INDTaxDocuments', name: 'INDTaxDocuments')
    ImpactLevel = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.snowball#ImpactLevel', name: 'ImpactLevel')
    InitialClusterSize = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.snowball#InitialClusterSize', name: 'InitialClusterSize', traits: {"smithy.api#range" => {"min" => 0, "max" => 16}})
    Integer = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.snowball#Integer', name: 'Integer')
    InvalidAddressException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowball#InvalidAddressException', name: 'InvalidAddressException', traits: {"smithy.api#error" => "client"})
    InvalidInputCombinationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowball#InvalidInputCombinationException', name: 'InvalidInputCombinationException', traits: {"smithy.api#error" => "client"})
    InvalidJobStateException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowball#InvalidJobStateException', name: 'InvalidJobStateException', traits: {"smithy.api#error" => "client"})
    InvalidNextTokenException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowball#InvalidNextTokenException', name: 'InvalidNextTokenException', traits: {"smithy.api#error" => "client"})
    InvalidResourceException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowball#InvalidResourceException', name: 'InvalidResourceException', traits: {"smithy.api#error" => "client"})
    JavaBoolean = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.snowball#JavaBoolean', name: 'JavaBoolean')
    JobId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.snowball#JobId', name: 'JobId', traits: {"smithy.api#length" => {"min" => 39, "max" => 39}, "smithy.api#pattern" => "^(M|J)ID[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$"})
    JobListEntry = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowball#JobListEntry', name: 'JobListEntry')
    JobListEntryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.snowball#JobListEntryList', name: 'JobListEntryList')
    JobLogs = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowball#JobLogs', name: 'JobLogs')
    JobMetadata = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowball#JobMetadata', name: 'JobMetadata')
    JobMetadataList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.snowball#JobMetadataList', name: 'JobMetadataList')
    JobResource = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowball#JobResource', name: 'JobResource')
    JobState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.snowball#JobState', name: 'JobState')
    JobStateList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.snowball#JobStateList', name: 'JobStateList')
    JobType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.snowball#JobType', name: 'JobType')
    KMSRequestFailedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowball#KMSRequestFailedException', name: 'KMSRequestFailedException', traits: {"smithy.api#error" => "client"})
    KeyRange = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowball#KeyRange', name: 'KeyRange')
    KmsKeyARN = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.snowball#KmsKeyARN', name: 'KmsKeyARN', traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^arn:aws.*:kms:.*:[0-9]{12}:key/"})
    LambdaResource = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowball#LambdaResource', name: 'LambdaResource')
    LambdaResourceList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.snowball#LambdaResourceList', name: 'LambdaResourceList')
    ListClusterJobsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowball#ListClusterJobsRequest', name: 'ListClusterJobsRequest')
    ListClusterJobsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowball#ListClusterJobsResult', name: 'ListClusterJobsResult')
    ListClustersRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowball#ListClustersRequest', name: 'ListClustersRequest')
    ListClustersResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowball#ListClustersResult', name: 'ListClustersResult')
    ListCompatibleImagesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowball#ListCompatibleImagesRequest', name: 'ListCompatibleImagesRequest')
    ListCompatibleImagesResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowball#ListCompatibleImagesResult', name: 'ListCompatibleImagesResult')
    ListJobsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowball#ListJobsRequest', name: 'ListJobsRequest')
    ListJobsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowball#ListJobsResult', name: 'ListJobsResult')
    ListLimit = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.snowball#ListLimit', name: 'ListLimit', traits: {"smithy.api#range" => {"min" => 0, "max" => 100}})
    ListLongTermPricingRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowball#ListLongTermPricingRequest', name: 'ListLongTermPricingRequest')
    ListLongTermPricingResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowball#ListLongTermPricingResult', name: 'ListLongTermPricingResult')
    ListPickupLocationsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowball#ListPickupLocationsRequest', name: 'ListPickupLocationsRequest')
    ListPickupLocationsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowball#ListPickupLocationsResult', name: 'ListPickupLocationsResult')
    ListServiceVersionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowball#ListServiceVersionsRequest', name: 'ListServiceVersionsRequest')
    ListServiceVersionsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowball#ListServiceVersionsResult', name: 'ListServiceVersionsResult')
    Long = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.snowball#Long', name: 'Long', traits: {"smithy.api#default" => 0})
    LongTermPricingAssociatedJobIdList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.snowball#LongTermPricingAssociatedJobIdList', name: 'LongTermPricingAssociatedJobIdList')
    LongTermPricingEntryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.snowball#LongTermPricingEntryList', name: 'LongTermPricingEntryList')
    LongTermPricingId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.snowball#LongTermPricingId', name: 'LongTermPricingId', traits: {"smithy.api#length" => {"min" => 41, "max" => 41}, "smithy.api#pattern" => "^LTPID[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$"})
    LongTermPricingIdList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.snowball#LongTermPricingIdList', name: 'LongTermPricingIdList')
    LongTermPricingListEntry = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowball#LongTermPricingListEntry', name: 'LongTermPricingListEntry')
    LongTermPricingType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.snowball#LongTermPricingType', name: 'LongTermPricingType')
    NFSOnDeviceServiceConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowball#NFSOnDeviceServiceConfiguration', name: 'NFSOnDeviceServiceConfiguration')
    NodeFaultTolerance = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.snowball#NodeFaultTolerance', name: 'NodeFaultTolerance', traits: {"smithy.api#range" => {"min" => 1, "max" => 4}})
    Notification = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowball#Notification', name: 'Notification')
    OnDeviceServiceConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowball#OnDeviceServiceConfiguration', name: 'OnDeviceServiceConfiguration')
    PhoneNumber = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.snowball#PhoneNumber', name: 'PhoneNumber', traits: {"smithy.api#length" => {"min" => 7, "max" => 30}, "smithy.api#pattern" => "^\\s*(?:\\+?(\\d{1,3}))?[-. (]*(\\d{3})[-. )]*(\\d{3})[-. ]*(\\d{4})(?: *x(\\d+))?\\s*$", "smithy.api#sensitive" => {}})
    PickupDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowball#PickupDetails', name: 'PickupDetails')
    RemoteManagement = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.snowball#RemoteManagement', name: 'RemoteManagement')
    ResourceARN = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.snowball#ResourceARN', name: 'ResourceARN', traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^arn:aws.*:*$"})
    ReturnShippingLabelAlreadyExistsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowball#ReturnShippingLabelAlreadyExistsException', name: 'ReturnShippingLabelAlreadyExistsException', traits: {"smithy.api#error" => "client"})
    RoleARN = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.snowball#RoleARN', name: 'RoleARN', traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^arn:aws.*:iam::[0-9]{12}:role/"})
    S3OnDeviceServiceConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowball#S3OnDeviceServiceConfiguration', name: 'S3OnDeviceServiceConfiguration')
    S3Resource = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowball#S3Resource', name: 'S3Resource')
    S3ResourceList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.snowball#S3ResourceList', name: 'S3ResourceList')
    S3StorageLimit = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.snowball#S3StorageLimit', name: 'S3StorageLimit', traits: {"smithy.api#range" => {"min" => 0.0}})
    ServiceName = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.snowball#ServiceName', name: 'ServiceName')
    ServiceSize = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.snowball#ServiceSize', name: 'ServiceSize', traits: {"smithy.api#range" => {"min" => 3, "max" => 16}})
    ServiceVersion = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowball#ServiceVersion', name: 'ServiceVersion')
    ServiceVersionList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.snowball#ServiceVersionList', name: 'ServiceVersionList')
    Shipment = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowball#Shipment', name: 'Shipment')
    ShipmentState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.snowball#ShipmentState', name: 'ShipmentState')
    ShippingDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowball#ShippingDetails', name: 'ShippingDetails')
    ShippingLabelStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.snowball#ShippingLabelStatus', name: 'ShippingLabelStatus')
    ShippingOption = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.snowball#ShippingOption', name: 'ShippingOption')
    SnowballCapacity = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.snowball#SnowballCapacity', name: 'SnowballCapacity')
    SnowballType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.snowball#SnowballType', name: 'SnowballType')
    SnowconeDeviceConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowball#SnowconeDeviceConfiguration', name: 'SnowconeDeviceConfiguration')
    SnsTopicARN = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.snowball#SnsTopicARN', name: 'SnsTopicARN', traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^arn:aws.*:sns:.*:[0-9]{12}:"})
    StorageLimit = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.snowball#StorageLimit', name: 'StorageLimit', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}})
    StorageUnit = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.snowball#StorageUnit', name: 'StorageUnit')
    String = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.snowball#String', name: 'String', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => ".*"})
    TGWOnDeviceServiceConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowball#TGWOnDeviceServiceConfiguration', name: 'TGWOnDeviceServiceConfiguration')
    TargetOnDeviceService = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowball#TargetOnDeviceService', name: 'TargetOnDeviceService')
    TargetOnDeviceServiceList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.snowball#TargetOnDeviceServiceList', name: 'TargetOnDeviceServiceList')
    TaxDocuments = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowball#TaxDocuments', name: 'TaxDocuments')
    Timestamp = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.snowball#Timestamp', name: 'Timestamp')
    TransferOption = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.snowball#TransferOption', name: 'TransferOption')
    UnsupportedAddressException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowball#UnsupportedAddressException', name: 'UnsupportedAddressException', traits: {"smithy.api#error" => "client"})
    UpdateClusterRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowball#UpdateClusterRequest', name: 'UpdateClusterRequest')
    UpdateClusterResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowball#UpdateClusterResult', name: 'UpdateClusterResult')
    UpdateJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowball#UpdateJobRequest', name: 'UpdateJobRequest')
    UpdateJobResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowball#UpdateJobResult', name: 'UpdateJobResult')
    UpdateJobShipmentStateRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowball#UpdateJobShipmentStateRequest', name: 'UpdateJobShipmentStateRequest')
    UpdateJobShipmentStateResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowball#UpdateJobShipmentStateResult', name: 'UpdateJobShipmentStateResult')
    UpdateLongTermPricingRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowball#UpdateLongTermPricingRequest', name: 'UpdateLongTermPricingRequest')
    UpdateLongTermPricingResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowball#UpdateLongTermPricingResult', name: 'UpdateLongTermPricingResult')
    WirelessConnection = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowball#WirelessConnection', name: 'WirelessConnection')

    Address.add_member(:address_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AddressId, location_name: 'AddressId', traits: {"smithy.api#documentation" => "<p>The unique ID for an address.</p>"}))
    Address.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of a person to receive a Snow device at an address.</p>"}))
    Address.add_member(:company, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Company', traits: {"smithy.api#documentation" => "<p>The name of the company to receive a Snow device at an address.</p>"}))
    Address.add_member(:street1, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Street1', traits: {"smithy.api#documentation" => "<p>The first line in a street address that a Snow device is to be delivered\n      to.</p>"}))
    Address.add_member(:street2, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Street2', traits: {"smithy.api#documentation" => "<p>The second line in a street address that a Snow device is to be delivered\n      to.</p>"}))
    Address.add_member(:street3, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Street3', traits: {"smithy.api#documentation" => "<p>The third line in a street address that a Snow device is to be delivered\n      to.</p>"}))
    Address.add_member(:city, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'City', traits: {"smithy.api#documentation" => "<p>The city in an address that a Snow device is to be delivered to.</p>"}))
    Address.add_member(:state_or_province, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StateOrProvince', traits: {"smithy.api#documentation" => "<p>The state or province in an address that a Snow device is to be delivered to.</p>"}))
    Address.add_member(:prefecture_or_district, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PrefectureOrDistrict', traits: {"smithy.api#documentation" => "<p>This field is no longer used and the value is ignored.</p>"}))
    Address.add_member(:landmark, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Landmark', traits: {"smithy.api#documentation" => "<p>This field is no longer used and the value is ignored.</p>"}))
    Address.add_member(:country, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Country', traits: {"smithy.api#documentation" => "<p>The country in an address that a Snow device is to be delivered to.</p>"}))
    Address.add_member(:postal_code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PostalCode', traits: {"smithy.api#documentation" => "<p>The postal code in an address that a Snow device is to be delivered to.</p>"}))
    Address.add_member(:phone_number, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PhoneNumber', traits: {"smithy.api#documentation" => "<p>The phone number associated with an address that a Snow device is to be delivered\n      to.</p>"}))
    Address.add_member(:is_restricted, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IsRestricted', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>If the address you are creating is a primary address, then set this option to\n      true. This field is not supported in most regions.</p>"}))
    Address.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: AddressType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>Differentiates between delivery address and pickup address in the customer account. Provided at job creation.</p>"}))
    Address.type = Types::Address
    AddressList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Address)
    AddressType.add_member(:cust_pickup, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CUST_PICKUP', traits: {"smithy.api#enumValue" => "CUST_PICKUP"}))
    AddressType.add_member(:aws_ship, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_SHIP', traits: {"smithy.api#enumValue" => "AWS_SHIP"}))
    CancelClusterRequest.add_member(:cluster_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterId, location_name: 'ClusterId', traits: {"smithy.api#documentation" => "<p>The 39-character ID for the cluster that you want to cancel, for example\n        <code>CID123e4567-e89b-12d3-a456-426655440000</code>.</p>", "smithy.api#required" => {}}))
    CancelClusterRequest.type = Types::CancelClusterRequest
    CancelClusterResult.type = Types::CancelClusterResult
    CancelJobRequest.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The 39-character job ID for the job that you want to cancel, for example\n        <code>JID123e4567-e89b-12d3-a456-426655440000</code>.</p>", "smithy.api#required" => {}}))
    CancelJobRequest.type = Types::CancelJobRequest
    CancelJobResult.type = Types::CancelJobResult
    ClusterLimitExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    ClusterLimitExceededException.type = Types::ClusterLimitExceededException
    ClusterListEntry.add_member(:cluster_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterId', traits: {"smithy.api#documentation" => "<p>The 39-character ID for the cluster that you want to list, for example\n        <code>CID123e4567-e89b-12d3-a456-426655440000</code>.</p>"}))
    ClusterListEntry.add_member(:cluster_state, Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterState, location_name: 'ClusterState', traits: {"smithy.api#documentation" => "<p>The current state of this cluster. For information about the state of a specific node,\n      see <a>JobListEntry$JobState</a>.</p>"}))
    ClusterListEntry.add_member(:creation_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationDate', traits: {"smithy.api#documentation" => "<p>The creation date for this cluster.</p>"}))
    ClusterListEntry.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>Defines an optional description of the cluster, for example <code>Environmental Data\n        Cluster-01</code>.</p>"}))
    ClusterListEntry.type = Types::ClusterListEntry
    ClusterListEntryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterListEntry)
    ClusterMetadata.add_member(:cluster_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterId', traits: {"smithy.api#documentation" => "<p>The automatically generated ID for a cluster.</p>"}))
    ClusterMetadata.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The optional description of the cluster.</p>"}))
    ClusterMetadata.add_member(:kms_key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyARN, location_name: 'KmsKeyARN', traits: {"smithy.api#documentation" => "<p>The <code>KmsKeyARN</code> Amazon Resource Name (ARN) associated with this cluster.\n      This ARN was created using the <a href=\"https://docs.aws.amazon.com/kms/latest/APIReference/API_CreateKey.html\">CreateKey</a> API action in Key Management Service (KMS.</p>"}))
    ClusterMetadata.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleARN, location_name: 'RoleARN', traits: {"smithy.api#documentation" => "<p>The role ARN associated with this cluster. This ARN was created using the <a href=\"https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateRole.html\">CreateRole</a>\n      API action in Identity and Access Management (IAM).</p>"}))
    ClusterMetadata.add_member(:cluster_state, Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterState, location_name: 'ClusterState', traits: {"smithy.api#documentation" => "<p>The current status of the cluster.</p>"}))
    ClusterMetadata.add_member(:job_type, Smithy::Schema::Shapes::ShapeRef.new(shape: JobType, location_name: 'JobType', traits: {"smithy.api#documentation" => "<p>The type of job for this cluster. Currently, the only job type supported for clusters\n      is <code>LOCAL_USE</code>.</p>"}))
    ClusterMetadata.add_member(:snowball_type, Smithy::Schema::Shapes::ShapeRef.new(shape: SnowballType, location_name: 'SnowballType', traits: {"smithy.api#documentation" => "<p>The type of Snowcone device to use for this cluster.\n      </p>\n         <note>\n            <p>For cluster jobs, Amazon Web Services Snow Family currently supports only the\n          <code>EDGE</code> device type.</p>\n         </note>"}))
    ClusterMetadata.add_member(:creation_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationDate', traits: {"smithy.api#documentation" => "<p>The creation date for this cluster.</p>"}))
    ClusterMetadata.add_member(:resources, Smithy::Schema::Shapes::ShapeRef.new(shape: JobResource, location_name: 'Resources', traits: {"smithy.api#documentation" => "<p>The arrays of <a>JobResource</a> objects that can include updated <a>S3Resource</a> objects or <a>LambdaResource</a> objects.</p>"}))
    ClusterMetadata.add_member(:address_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AddressId, location_name: 'AddressId', traits: {"smithy.api#documentation" => "<p>The automatically generated ID for a specific address.</p>"}))
    ClusterMetadata.add_member(:shipping_option, Smithy::Schema::Shapes::ShapeRef.new(shape: ShippingOption, location_name: 'ShippingOption', traits: {"smithy.api#documentation" => "<p>The shipping speed for each node in this cluster. This speed doesn't dictate how soon\n      you'll get each device, rather it represents how quickly each device moves to its destination\n      while in transit. Regional shipping speeds are as follows:</p>\n         <ul>\n            <li>\n               <p>In Australia, you have access to express shipping. Typically, devices shipped\n          express are delivered in about a day.</p>\n            </li>\n            <li>\n               <p>In the European Union (EU), you have access to express shipping. Typically, Snow\n          devices shipped express are delivered in about a day. In addition, most countries in the\n          EU have access to standard shipping, which typically takes less than a week, one\n          way.</p>\n            </li>\n            <li>\n               <p>In India, Snow devices are delivered in one to seven days.</p>\n            </li>\n            <li>\n               <p>In the US, you have access to one-day shipping and two-day shipping.</p>\n            </li>\n         </ul>"}))
    ClusterMetadata.add_member(:notification, Smithy::Schema::Shapes::ShapeRef.new(shape: Notification, location_name: 'Notification', traits: {"smithy.api#documentation" => "<p>The Amazon Simple Notification Service (Amazon SNS) notification settings for this\n      cluster.</p>"}))
    ClusterMetadata.add_member(:forwarding_address_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AddressId, location_name: 'ForwardingAddressId', traits: {"smithy.api#documentation" => "<p>The ID of the address that you want a cluster shipped to, after it will be\n      shipped to its primary address. This field is not supported in most regions.</p>"}))
    ClusterMetadata.add_member(:tax_documents, Smithy::Schema::Shapes::ShapeRef.new(shape: TaxDocuments, location_name: 'TaxDocuments', traits: {"smithy.api#documentation" => "<p>The tax documents required in your Amazon Web Services Region.</p>"}))
    ClusterMetadata.add_member(:on_device_service_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: OnDeviceServiceConfiguration, location_name: 'OnDeviceServiceConfiguration', traits: {"smithy.api#documentation" => "<p>Represents metadata and configuration settings for services on an Amazon Web Services Snow Family\n      device.</p>"}))
    ClusterMetadata.type = Types::ClusterMetadata
    ClusterState.add_member(:awaiting_quorum, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWAITING_QUORUM', traits: {"smithy.api#enumValue" => "AwaitingQuorum"}))
    ClusterState.add_member(:pending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "Pending"}))
    ClusterState.add_member(:in_use, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_USE', traits: {"smithy.api#enumValue" => "InUse"}))
    ClusterState.add_member(:complete, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETE', traits: {"smithy.api#enumValue" => "Complete"}))
    ClusterState.add_member(:cancelled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANCELLED', traits: {"smithy.api#enumValue" => "Cancelled"}))
    CompatibleImage.add_member(:ami_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AmiId', traits: {"smithy.api#documentation" => "<p>The unique identifier for an individual Snow device AMI.</p>"}))
    CompatibleImage.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The optional name of a compatible image.</p>"}))
    CompatibleImage.type = Types::CompatibleImage
    CompatibleImageList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CompatibleImage)
    ConflictException.add_member(:conflict_resource, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ConflictResource', traits: {"smithy.api#documentation" => "<p>You get this resource when you call <code>CreateReturnShippingLabel</code> more than once when other requests are not completed. .</p>"}))
    ConflictException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    ConflictException.type = Types::ConflictException
    CreateAddressRequest.add_member(:address, Smithy::Schema::Shapes::ShapeRef.new(shape: Address, location_name: 'Address', traits: {"smithy.api#documentation" => "<p>The address that you want the Snow device shipped to.</p>", "smithy.api#required" => {}}))
    CreateAddressRequest.type = Types::CreateAddressRequest
    CreateAddressResult.add_member(:address_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AddressId', traits: {"smithy.api#documentation" => "<p>The automatically generated ID for a specific address. You'll use this ID when you\n      create a job to specify which address you want the Snow device for that job shipped\n      to.</p>"}))
    CreateAddressResult.type = Types::CreateAddressResult
    CreateClusterRequest.add_member(:job_type, Smithy::Schema::Shapes::ShapeRef.new(shape: JobType, location_name: 'JobType', traits: {"smithy.api#documentation" => "<p>The type of job for this cluster. Currently, the only job type supported for clusters\n      is <code>LOCAL_USE</code>.</p>\n         <p>For more information, see\n      \"https://docs.aws.amazon.com/snowball/latest/snowcone-guide/snow-device-types.html\" (Snow\n      Family Devices and Capacity) in the <i>Snowcone User Guide</i> or\n      \"https://docs.aws.amazon.com/snowball/latest/developer-guide/snow-device-types.html\" (Snow\n      Family Devices and Capacity) in the <i>Snowcone User Guide</i>.</p>", "smithy.api#required" => {}}))
    CreateClusterRequest.add_member(:resources, Smithy::Schema::Shapes::ShapeRef.new(shape: JobResource, location_name: 'Resources', traits: {"smithy.api#documentation" => "<p>The resources associated with the cluster job. These resources include Amazon S3\n      buckets and optional Lambda functions written in the Python language.\n    </p>"}))
    CreateClusterRequest.add_member(:on_device_service_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: OnDeviceServiceConfiguration, location_name: 'OnDeviceServiceConfiguration', traits: {"smithy.api#documentation" => "<p>Specifies the service or services on the Snow Family device that your transferred data\n      will be exported from or imported into. Amazon Web Services Snow Family device clusters support Amazon S3 and NFS\n      (Network File System).</p>"}))
    CreateClusterRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>An optional description of this specific cluster, for example <code>Environmental Data\n        Cluster-01</code>.</p>"}))
    CreateClusterRequest.add_member(:address_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AddressId, location_name: 'AddressId', traits: {"smithy.api#documentation" => "<p>The ID for the address that you want the cluster shipped to.</p>", "smithy.api#required" => {}}))
    CreateClusterRequest.add_member(:kms_key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyARN, location_name: 'KmsKeyARN', traits: {"smithy.api#documentation" => "<p>The <code>KmsKeyARN</code> value that you want to associate with this cluster.\n        <code>KmsKeyARN</code> values are created by using the <a href=\"https://docs.aws.amazon.com/kms/latest/APIReference/API_CreateKey.html\">CreateKey</a> API action in Key Management Service (KMS). </p>"}))
    CreateClusterRequest.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleARN, location_name: 'RoleARN', traits: {"smithy.api#documentation" => "<p>The <code>RoleARN</code> that you want to associate with this cluster.\n        <code>RoleArn</code> values are created by using the <a href=\"https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateRole.html\">CreateRole</a> API action in Identity and Access Management (IAM).</p>"}))
    CreateClusterRequest.add_member(:snowball_type, Smithy::Schema::Shapes::ShapeRef.new(shape: SnowballType, location_name: 'SnowballType', traits: {"smithy.api#documentation" => "<p>The type of Snow Family devices to use for this cluster. </p>\n         <note>\n            <p>For cluster jobs, Amazon Web Services Snow Family currently supports only the\n          <code>EDGE</code> device type.</p>\n         </note>\n         <p>For more information, see\n      \"https://docs.aws.amazon.com/snowball/latest/snowcone-guide/snow-device-types.html\" (Snow\n      Family Devices and Capacity) in the <i>Snowcone User Guide</i> or\n      \"https://docs.aws.amazon.com/snowball/latest/developer-guide/snow-device-types.html\" (Snow\n      Family Devices and Capacity) in the <i>Snowcone User Guide</i>.</p>", "smithy.api#required" => {}}))
    CreateClusterRequest.add_member(:shipping_option, Smithy::Schema::Shapes::ShapeRef.new(shape: ShippingOption, location_name: 'ShippingOption', traits: {"smithy.api#documentation" => "<p>The shipping speed for each node in this cluster. This speed doesn't dictate how soon\n      you'll get each Snowball Edge device, rather it represents how quickly each device moves to\n      its destination while in transit. Regional shipping speeds are as follows: </p>\n         <ul>\n            <li>\n               <p>In Australia, you have access to express shipping. Typically, Snow devices shipped\n          express are delivered in about a day.</p>\n            </li>\n            <li>\n               <p>In the European Union (EU), you have access to express shipping. Typically, Snow\n          devices shipped express are delivered in about a day. In addition, most countries in the\n          EU have access to standard shipping, which typically takes less than a week, one\n          way.</p>\n            </li>\n            <li>\n               <p>In India, Snow devices are delivered in one to seven days.</p>\n            </li>\n            <li>\n               <p>In the United States of America (US), you have access to one-day shipping and\n          two-day shipping.</p>\n            </li>\n         </ul>\n         <ul>\n            <li>\n               <p>In Australia, you have access to express shipping. Typically, devices shipped\n          express are delivered in about a day.</p>\n            </li>\n            <li>\n               <p>In the European Union (EU), you have access to express shipping. Typically, Snow\n          devices shipped express are delivered in about a day. In addition, most countries in the\n          EU have access to standard shipping, which typically takes less than a week, one\n          way.</p>\n            </li>\n            <li>\n               <p>In India, Snow devices are delivered in one to seven days.</p>\n            </li>\n            <li>\n               <p>In the US, you have access to one-day shipping and two-day shipping.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    CreateClusterRequest.add_member(:notification, Smithy::Schema::Shapes::ShapeRef.new(shape: Notification, location_name: 'Notification', traits: {"smithy.api#documentation" => "<p>The Amazon Simple Notification Service (Amazon SNS) notification settings for this\n      cluster.</p>"}))
    CreateClusterRequest.add_member(:forwarding_address_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AddressId, location_name: 'ForwardingAddressId', traits: {"smithy.api#documentation" => "<p>The forwarding address ID for a cluster. This field is not supported in most\n      regions.</p>"}))
    CreateClusterRequest.add_member(:tax_documents, Smithy::Schema::Shapes::ShapeRef.new(shape: TaxDocuments, location_name: 'TaxDocuments', traits: {"smithy.api#documentation" => "<p>The tax documents required in your Amazon Web Services Region.</p>"}))
    CreateClusterRequest.add_member(:remote_management, Smithy::Schema::Shapes::ShapeRef.new(shape: RemoteManagement, location_name: 'RemoteManagement', traits: {"smithy.api#documentation" => "<p>Allows you to securely operate and manage Snow devices in a cluster remotely from outside\n      of your internal network. When set to <code>INSTALLED_AUTOSTART</code>, remote management will\n      automatically be available when the device arrives at your location. Otherwise, you need to\n      use the Snowball Client to manage the device.</p>"}))
    CreateClusterRequest.add_member(:initial_cluster_size, Smithy::Schema::Shapes::ShapeRef.new(shape: InitialClusterSize, location_name: 'InitialClusterSize', traits: {"smithy.api#documentation" => "<p>If provided, each job will be automatically created and associated with the new cluster. If not provided, will be treated as 0.</p>"}))
    CreateClusterRequest.add_member(:force_create_jobs, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'ForceCreateJobs', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Force to create cluster when user attempts to overprovision or underprovision a cluster. A cluster is overprovisioned or underprovisioned if the initial size of the cluster is more (overprovisioned) or less (underprovisioned) than what \n      needed to meet capacity requirement specified with <code>OnDeviceServiceConfiguration</code>.</p>"}))
    CreateClusterRequest.add_member(:long_term_pricing_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: LongTermPricingIdList, location_name: 'LongTermPricingIds', traits: {"smithy.api#documentation" => "<p>Lists long-term pricing id that will be used to associate with jobs automatically created for the new cluster.</p>"}))
    CreateClusterRequest.add_member(:snowball_capacity_preference, Smithy::Schema::Shapes::ShapeRef.new(shape: SnowballCapacity, location_name: 'SnowballCapacityPreference', traits: {"smithy.api#documentation" => "<p>If your job is being created in one of the US regions, you have the option of\n      specifying what size Snow device you'd like for this job. In all other regions, Snowballs come\n      with 80 TB in storage capacity.</p>\n         <p>For more information, see\n      \"https://docs.aws.amazon.com/snowball/latest/snowcone-guide/snow-device-types.html\" (Snow\n      Family Devices and Capacity) in the <i>Snowcone User Guide</i> or\n      \"https://docs.aws.amazon.com/snowball/latest/developer-guide/snow-device-types.html\" (Snow\n      Family Devices and Capacity) in the <i>Snowcone User Guide</i>.</p>"}))
    CreateClusterRequest.type = Types::CreateClusterRequest
    CreateClusterResult.add_member(:cluster_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterId, location_name: 'ClusterId', traits: {"smithy.api#documentation" => "<p>The automatically generated ID for a cluster.</p>"}))
    CreateClusterResult.add_member(:job_list_entries, Smithy::Schema::Shapes::ShapeRef.new(shape: JobListEntryList, location_name: 'JobListEntries', traits: {"smithy.api#documentation" => "<p>List of jobs created for this cluster. For syntax, see <a href=\"http://amazonaws.com/snowball/latest/api-reference/API_ListJobs.html#API_ListJobs_ResponseSyntax\">ListJobsResult$JobListEntries</a> in this guide.</p>"}))
    CreateClusterResult.type = Types::CreateClusterResult
    CreateJobRequest.add_member(:job_type, Smithy::Schema::Shapes::ShapeRef.new(shape: JobType, location_name: 'JobType', traits: {"smithy.api#documentation" => "<p>Defines the type of job that you're creating.\n      </p>"}))
    CreateJobRequest.add_member(:resources, Smithy::Schema::Shapes::ShapeRef.new(shape: JobResource, location_name: 'Resources', traits: {"smithy.api#documentation" => "<p>Defines the Amazon S3 buckets associated with this job.</p>\n         <p>With <code>IMPORT</code> jobs, you specify the bucket or buckets that your transferred\n      data will be imported into.</p>\n         <p>With <code>EXPORT</code> jobs, you specify the bucket or buckets that your transferred\n      data will be exported from. Optionally, you can also specify a <code>KeyRange</code> value. If\n      you choose to export a range, you define the length of the range by providing either an\n      inclusive <code>BeginMarker</code> value, an inclusive <code>EndMarker</code> value, or both.\n      Ranges are UTF-8 binary sorted.</p>"}))
    CreateJobRequest.add_member(:on_device_service_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: OnDeviceServiceConfiguration, location_name: 'OnDeviceServiceConfiguration', traits: {"smithy.api#documentation" => "<p>Specifies the service or services on the Snow Family device that your transferred data\n      will be exported from or imported into. Amazon Web Services Snow Family supports Amazon S3 and NFS (Network File\n      System) and the Amazon Web Services Storage Gateway service Tape Gateway type.</p>"}))
    CreateJobRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>Defines an optional description of this specific job, for example <code>Important\n        Photos 2016-08-11</code>.</p>"}))
    CreateJobRequest.add_member(:address_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AddressId, location_name: 'AddressId', traits: {"smithy.api#documentation" => "<p>The ID for the address that you want the Snow device shipped to.</p>"}))
    CreateJobRequest.add_member(:kms_key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyARN, location_name: 'KmsKeyARN', traits: {"smithy.api#documentation" => "<p>The <code>KmsKeyARN</code> that you want to associate with this job.\n        <code>KmsKeyARN</code>s are created using the <a href=\"https://docs.aws.amazon.com/kms/latest/APIReference/API_CreateKey.html\">CreateKey</a>\n      Key Management Service (KMS) API action.</p>"}))
    CreateJobRequest.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleARN, location_name: 'RoleARN', traits: {"smithy.api#documentation" => "<p>The <code>RoleARN</code> that you want to associate with this job.\n      <code>RoleArn</code>s are created using the <a href=\"https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateRole.html\">CreateRole</a>\n      Identity and Access Management (IAM) API action.</p>"}))
    CreateJobRequest.add_member(:snowball_capacity_preference, Smithy::Schema::Shapes::ShapeRef.new(shape: SnowballCapacity, location_name: 'SnowballCapacityPreference', traits: {"smithy.api#documentation" => "<p>If your job is being created in one of the US regions, you have the option of\n      specifying what size Snow device you'd like for this job. In all other regions, Snowballs come\n      with 80 TB in storage capacity.</p>\n         <p>For more information, see\n      \"https://docs.aws.amazon.com/snowball/latest/snowcone-guide/snow-device-types.html\" (Snow\n      Family Devices and Capacity) in the <i>Snowcone User Guide</i> or\n      \"https://docs.aws.amazon.com/snowball/latest/developer-guide/snow-device-types.html\" (Snow\n      Family Devices and Capacity) in the <i>Snowcone User Guide</i>.</p>"}))
    CreateJobRequest.add_member(:shipping_option, Smithy::Schema::Shapes::ShapeRef.new(shape: ShippingOption, location_name: 'ShippingOption', traits: {"smithy.api#documentation" => "<p>The shipping speed for this job. This speed doesn't dictate how soon you'll get the\n      Snow device, rather it represents how quickly the Snow device moves to its destination while\n      in transit. Regional shipping speeds are as follows:</p>\n         <ul>\n            <li>\n               <p>In Australia, you have access to express shipping. Typically, Snow devices shipped\n          express are delivered in about a day.</p>\n            </li>\n            <li>\n               <p>In the European Union (EU), you have access to express shipping. Typically, Snow\n          devices shipped express are delivered in about a day. In addition, most countries in the\n          EU have access to standard shipping, which typically takes less than a week, one\n          way.</p>\n            </li>\n            <li>\n               <p>In India, Snow devices are delivered in one to seven days.</p>\n            </li>\n            <li>\n               <p>In the US, you have access to one-day shipping and two-day shipping.</p>\n            </li>\n         </ul>"}))
    CreateJobRequest.add_member(:notification, Smithy::Schema::Shapes::ShapeRef.new(shape: Notification, location_name: 'Notification', traits: {"smithy.api#documentation" => "<p>Defines the Amazon Simple Notification Service (Amazon SNS) notification settings for\n      this job.</p>"}))
    CreateJobRequest.add_member(:cluster_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterId, location_name: 'ClusterId', traits: {"smithy.api#documentation" => "<p>The ID of a cluster. If you're creating a job for a node in a cluster, you need to\n      provide only this <code>clusterId</code> value. The other job attributes are inherited from\n      the cluster.</p>"}))
    CreateJobRequest.add_member(:snowball_type, Smithy::Schema::Shapes::ShapeRef.new(shape: SnowballType, location_name: 'SnowballType', traits: {"smithy.api#documentation" => "<p>The type of Snow Family devices to use for this job.\n      </p>\n         <note>\n            <p>For cluster jobs, Amazon Web Services Snow Family currently supports only the\n          <code>EDGE</code> device type.</p>\n         </note>\n         <p>The type of Amazon Web Services Snow device to use for this job. Currently, the only\n      supported device type for cluster jobs is <code>EDGE</code>.</p>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/snowball/latest/developer-guide/device-differences.html\">Snowball Edge Device\n        Options</a> in the Snowball Edge Developer Guide.</p>\n         <p>For more information, see\n      \"https://docs.aws.amazon.com/snowball/latest/snowcone-guide/snow-device-types.html\" (Snow\n      Family Devices and Capacity) in the <i>Snowcone User Guide</i> or\n      \"https://docs.aws.amazon.com/snowball/latest/developer-guide/snow-device-types.html\" (Snow\n      Family Devices and Capacity) in the <i>Snowcone User Guide</i>.</p>"}))
    CreateJobRequest.add_member(:forwarding_address_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AddressId, location_name: 'ForwardingAddressId', traits: {"smithy.api#documentation" => "<p>The forwarding address ID for a job. This field is not supported in most\n      Regions.</p>"}))
    CreateJobRequest.add_member(:tax_documents, Smithy::Schema::Shapes::ShapeRef.new(shape: TaxDocuments, location_name: 'TaxDocuments', traits: {"smithy.api#documentation" => "<p>The tax documents required in your Amazon Web Services Region.</p>"}))
    CreateJobRequest.add_member(:device_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceConfiguration, location_name: 'DeviceConfiguration', traits: {"smithy.api#documentation" => "<p>Defines the device configuration for an Snowcone job.</p>\n         <p>For more information, see\n      \"https://docs.aws.amazon.com/snowball/latest/snowcone-guide/snow-device-types.html\" (Snow\n      Family Devices and Capacity) in the <i>Snowcone User Guide</i> or\n      \"https://docs.aws.amazon.com/snowball/latest/developer-guide/snow-device-types.html\" (Snow\n      Family Devices and Capacity) in the <i>Snowcone User Guide</i>.</p>"}))
    CreateJobRequest.add_member(:remote_management, Smithy::Schema::Shapes::ShapeRef.new(shape: RemoteManagement, location_name: 'RemoteManagement', traits: {"smithy.api#documentation" => "<p>Allows you to securely operate and manage Snowcone devices remotely from outside of your\n      internal network. When set to <code>INSTALLED_AUTOSTART</code>, remote management will\n      automatically be available when the device arrives at your location. Otherwise, you need to\n      use the Snowball Edge client to manage the device. When set to <code>NOT_INSTALLED</code>, remote management will not be available on the device. </p>"}))
    CreateJobRequest.add_member(:long_term_pricing_id, Smithy::Schema::Shapes::ShapeRef.new(shape: LongTermPricingId, location_name: 'LongTermPricingId', traits: {"smithy.api#documentation" => "<p>The ID of the long-term pricing type for the device.</p>"}))
    CreateJobRequest.add_member(:impact_level, Smithy::Schema::Shapes::ShapeRef.new(shape: ImpactLevel, location_name: 'ImpactLevel', traits: {"smithy.api#documentation" => "<p>The highest impact level of data that will be stored or processed on the device, provided at job creation.</p>"}))
    CreateJobRequest.add_member(:pickup_details, Smithy::Schema::Shapes::ShapeRef.new(shape: PickupDetails, location_name: 'PickupDetails', traits: {"smithy.api#documentation" => "<p>Information identifying the person picking up the device.</p>"}))
    CreateJobRequest.type = Types::CreateJobRequest
    CreateJobResult.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The automatically generated ID for a job, for example\n        <code>JID123e4567-e89b-12d3-a456-426655440000</code>.</p>"}))
    CreateJobResult.type = Types::CreateJobResult
    CreateLongTermPricingRequest.add_member(:long_term_pricing_type, Smithy::Schema::Shapes::ShapeRef.new(shape: LongTermPricingType, location_name: 'LongTermPricingType', traits: {"smithy.api#documentation" => "<p>The type of long-term pricing option you want for the device, either 1-year or 3-year\n      long-term pricing.</p>", "smithy.api#required" => {}}))
    CreateLongTermPricingRequest.add_member(:is_long_term_pricing_auto_renew, Smithy::Schema::Shapes::ShapeRef.new(shape: JavaBoolean, location_name: 'IsLongTermPricingAutoRenew', traits: {"smithy.api#documentation" => "<p>Specifies whether the current long-term pricing type for the device should be\n      renewed.</p>"}))
    CreateLongTermPricingRequest.add_member(:snowball_type, Smithy::Schema::Shapes::ShapeRef.new(shape: SnowballType, location_name: 'SnowballType', traits: {"smithy.api#documentation" => "<p>The type of Snow Family devices to use for the long-term pricing job.</p>", "smithy.api#required" => {}}))
    CreateLongTermPricingRequest.type = Types::CreateLongTermPricingRequest
    CreateLongTermPricingResult.add_member(:long_term_pricing_id, Smithy::Schema::Shapes::ShapeRef.new(shape: LongTermPricingId, location_name: 'LongTermPricingId', traits: {"smithy.api#documentation" => "<p>The ID of the long-term pricing type for the device.</p>"}))
    CreateLongTermPricingResult.type = Types::CreateLongTermPricingResult
    CreateReturnShippingLabelRequest.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The ID for a job that you want to create the return shipping label for; for example,\n        <code>JID123e4567-e89b-12d3-a456-426655440000</code>.</p>", "smithy.api#required" => {}}))
    CreateReturnShippingLabelRequest.add_member(:shipping_option, Smithy::Schema::Shapes::ShapeRef.new(shape: ShippingOption, location_name: 'ShippingOption', traits: {"smithy.api#documentation" => "<p>The shipping speed for a particular job. This speed doesn't dictate how soon the device\n      is returned to Amazon Web Services. This speed represents how quickly it moves to its\n      destination while in transit. Regional shipping speeds are as follows:</p>"}))
    CreateReturnShippingLabelRequest.type = Types::CreateReturnShippingLabelRequest
    CreateReturnShippingLabelResult.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ShippingLabelStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status information of the task on a Snow device that is being returned to Amazon Web Services.</p>"}))
    CreateReturnShippingLabelResult.type = Types::CreateReturnShippingLabelResult
    DataTransfer.add_member(:bytes_transferred, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'BytesTransferred', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The number of bytes transferred between a Snow device and Amazon S3.</p>"}))
    DataTransfer.add_member(:objects_transferred, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'ObjectsTransferred', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The number of objects transferred between a Snow device and Amazon S3.</p>"}))
    DataTransfer.add_member(:total_bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'TotalBytes', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The total bytes of data for a transfer between a Snow device and Amazon S3. This value\n      is set to 0 (zero) until all the keys that will be transferred have been listed.</p>"}))
    DataTransfer.add_member(:total_objects, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'TotalObjects', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The total number of objects for a transfer between a Snow device and Amazon S3. This\n      value is set to 0 (zero) until all the keys that will be transferred have been\n      listed.</p>"}))
    DataTransfer.type = Types::DataTransfer
    DependentService.add_member(:service_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceName, location_name: 'ServiceName', traits: {"smithy.api#documentation" => "<p>The name of the dependent service.</p>"}))
    DependentService.add_member(:service_version, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceVersion, location_name: 'ServiceVersion', traits: {"smithy.api#documentation" => "<p>The version of the dependent service.</p>"}))
    DependentService.type = Types::DependentService
    DependentServiceList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DependentService)
    DescribeAddressRequest.add_member(:address_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AddressId, location_name: 'AddressId', traits: {"smithy.api#documentation" => "<p>The automatically generated ID for a specific address.</p>", "smithy.api#required" => {}}))
    DescribeAddressRequest.type = Types::DescribeAddressRequest
    DescribeAddressResult.add_member(:address, Smithy::Schema::Shapes::ShapeRef.new(shape: Address, location_name: 'Address', traits: {"smithy.api#documentation" => "<p>The address that you want the Snow device(s) associated with a specific job to be\n      shipped to.</p>"}))
    DescribeAddressResult.type = Types::DescribeAddressResult
    DescribeAddressesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ListLimit, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The number of <code>ADDRESS</code> objects to return.</p>"}))
    DescribeAddressesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>HTTP requests are stateless. To identify what object comes \"next\" in the list of\n        <code>ADDRESS</code> objects, you have the option of specifying a value for\n        <code>NextToken</code> as the starting point for your list of returned addresses.</p>"}))
    DescribeAddressesRequest.type = Types::DescribeAddressesRequest
    DescribeAddressesResult.add_member(:addresses, Smithy::Schema::Shapes::ShapeRef.new(shape: AddressList, location_name: 'Addresses', traits: {"smithy.api#documentation" => "<p>The Snow device shipping addresses that were created for this account.</p>"}))
    DescribeAddressesResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>HTTP requests are stateless. If you use the automatically generated\n        <code>NextToken</code> value in your next <code>DescribeAddresses</code> call, your list of\n      returned addresses will start from this point in the array.</p>"}))
    DescribeAddressesResult.type = Types::DescribeAddressesResult
    DescribeClusterRequest.add_member(:cluster_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterId, location_name: 'ClusterId', traits: {"smithy.api#documentation" => "<p>The automatically generated ID for a cluster.</p>", "smithy.api#required" => {}}))
    DescribeClusterRequest.type = Types::DescribeClusterRequest
    DescribeClusterResult.add_member(:cluster_metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterMetadata, location_name: 'ClusterMetadata', traits: {"smithy.api#documentation" => "<p>Information about a specific cluster, including shipping information, cluster status,\n      and other important metadata.</p>"}))
    DescribeClusterResult.type = Types::DescribeClusterResult
    DescribeJobRequest.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The automatically generated ID for a job, for example\n        <code>JID123e4567-e89b-12d3-a456-426655440000</code>.</p>", "smithy.api#required" => {}}))
    DescribeJobRequest.type = Types::DescribeJobRequest
    DescribeJobResult.add_member(:job_metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: JobMetadata, location_name: 'JobMetadata', traits: {"smithy.api#documentation" => "<p>Information about a specific job, including shipping information, job status, and other\n      important metadata.</p>"}))
    DescribeJobResult.add_member(:sub_job_metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: JobMetadataList, location_name: 'SubJobMetadata', traits: {"smithy.api#documentation" => "<p>Information about a specific job part (in the case of an export job), including\n      shipping information, job status, and other important metadata.</p>"}))
    DescribeJobResult.type = Types::DescribeJobResult
    DescribeReturnShippingLabelRequest.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The automatically generated ID for a job, for example\n        <code>JID123e4567-e89b-12d3-a456-426655440000</code>.</p>", "smithy.api#required" => {}}))
    DescribeReturnShippingLabelRequest.type = Types::DescribeReturnShippingLabelRequest
    DescribeReturnShippingLabelResult.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ShippingLabelStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status information of the task on a Snow device that is being returned to Amazon Web Services.</p>"}))
    DescribeReturnShippingLabelResult.add_member(:expiration_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'ExpirationDate', traits: {"smithy.api#documentation" => "<p>The expiration date of the current return shipping label.</p>"}))
    DescribeReturnShippingLabelResult.add_member(:return_shipping_label_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReturnShippingLabelURI', traits: {"smithy.api#documentation" => "<p>The pre-signed Amazon S3 URI used to download the return shipping label.</p>"}))
    DescribeReturnShippingLabelResult.type = Types::DescribeReturnShippingLabelResult
    DeviceConfiguration.add_member(:snowcone_device_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: SnowconeDeviceConfiguration, location_name: 'SnowconeDeviceConfiguration', traits: {"smithy.api#documentation" => "<p>Returns information about the device configuration for an Snowcone\n      job.</p>"}))
    DeviceConfiguration.type = Types::DeviceConfiguration
    DeviceServiceName.add_member(:nfs_on_device_service, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NFS_ON_DEVICE_SERVICE', traits: {"smithy.api#enumValue" => "NFS_ON_DEVICE_SERVICE"}))
    DeviceServiceName.add_member(:s3_on_device_service, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'S3_ON_DEVICE_SERVICE', traits: {"smithy.api#enumValue" => "S3_ON_DEVICE_SERVICE"}))
    EKSOnDeviceServiceConfiguration.add_member(:kubernetes_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KubernetesVersion', traits: {"smithy.api#documentation" => "<p>The Kubernetes version for EKS Anywhere on the Snow Family device.</p>"}))
    EKSOnDeviceServiceConfiguration.add_member(:eks_anywhere_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EKSAnywhereVersion', traits: {"smithy.api#documentation" => "<p>The optional version of EKS Anywhere on the Snow Family device.</p>"}))
    EKSOnDeviceServiceConfiguration.type = Types::EKSOnDeviceServiceConfiguration
    Ec2AmiResource.add_member(:ami_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AmiId, location_name: 'AmiId', traits: {"smithy.api#documentation" => "<p>The ID of the AMI in Amazon EC2.</p>", "smithy.api#required" => {}}))
    Ec2AmiResource.add_member(:snowball_ami_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnowballAmiId', traits: {"smithy.api#documentation" => "<p>The ID of the AMI on the Snow device.</p>"}))
    Ec2AmiResource.type = Types::Ec2AmiResource
    Ec2AmiResourceList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Ec2AmiResource)
    Ec2RequestFailedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    Ec2RequestFailedException.type = Types::Ec2RequestFailedException
    EventTriggerDefinition.add_member(:event_resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'EventResourceARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) for any local Amazon S3 resource that is an Lambda function's event trigger associated with this job.</p>"}))
    EventTriggerDefinition.type = Types::EventTriggerDefinition
    EventTriggerDefinitionList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EventTriggerDefinition)
    GetJobManifestRequest.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The ID for a job that you want to get the manifest file for, for example\n        <code>JID123e4567-e89b-12d3-a456-426655440000</code>.</p>", "smithy.api#required" => {}}))
    GetJobManifestRequest.type = Types::GetJobManifestRequest
    GetJobManifestResult.add_member(:manifest_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ManifestURI', traits: {"smithy.api#documentation" => "<p>The Amazon S3 presigned URL for the manifest file associated with the specified\n        <code>JobId</code> value.</p>"}))
    GetJobManifestResult.type = Types::GetJobManifestResult
    GetJobUnlockCodeRequest.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The ID for the job that you want to get the <code>UnlockCode</code> value for, for\n      example <code>JID123e4567-e89b-12d3-a456-426655440000</code>.</p>", "smithy.api#required" => {}}))
    GetJobUnlockCodeRequest.type = Types::GetJobUnlockCodeRequest
    GetJobUnlockCodeResult.add_member(:unlock_code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'UnlockCode', traits: {"smithy.api#documentation" => "<p>The <code>UnlockCode</code> value for the specified job. The <code>UnlockCode</code>\n      value can be accessed for up to 360 days after the job has been created.</p>"}))
    GetJobUnlockCodeResult.type = Types::GetJobUnlockCodeResult
    GetSnowballUsageRequest.type = Types::GetSnowballUsageRequest
    GetSnowballUsageResult.add_member(:snowball_limit, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'SnowballLimit', traits: {"smithy.api#documentation" => "<p>The service limit for number of Snow devices this account can have at once. The default\n      service limit is 1 (one).</p>"}))
    GetSnowballUsageResult.add_member(:snowballs_in_use, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'SnowballsInUse', traits: {"smithy.api#documentation" => "<p>The number of Snow devices that this account is currently using.</p>"}))
    GetSnowballUsageResult.type = Types::GetSnowballUsageResult
    GetSoftwareUpdatesRequest.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The ID for a job that you want to get the software update file for, for example\n        <code>JID123e4567-e89b-12d3-a456-426655440000</code>.</p>", "smithy.api#required" => {}}))
    GetSoftwareUpdatesRequest.type = Types::GetSoftwareUpdatesRequest
    GetSoftwareUpdatesResult.add_member(:updates_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'UpdatesURI', traits: {"smithy.api#documentation" => "<p>The Amazon S3 presigned URL for the update file associated with the specified\n        <code>JobId</code> value. The software update will be available for 2 days after this\n      request is made. To access an update after the 2 days have passed, you'll have to make another\n      call to <code>GetSoftwareUpdates</code>.</p>"}))
    GetSoftwareUpdatesResult.type = Types::GetSoftwareUpdatesResult
    INDTaxDocuments.add_member(:gstin, Smithy::Schema::Shapes::ShapeRef.new(shape: GSTIN, location_name: 'GSTIN', traits: {"smithy.api#documentation" => "<p>The Goods and Services Tax (GST) documents required in Amazon Web Services Region in\n      India.</p>"}))
    INDTaxDocuments.type = Types::INDTaxDocuments
    ImpactLevel.add_member(:il2, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IL2', traits: {"smithy.api#enumValue" => "IL2"}))
    ImpactLevel.add_member(:il4, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IL4', traits: {"smithy.api#enumValue" => "IL4"}))
    ImpactLevel.add_member(:il5, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IL5', traits: {"smithy.api#enumValue" => "IL5"}))
    ImpactLevel.add_member(:il6, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IL6', traits: {"smithy.api#enumValue" => "IL6"}))
    ImpactLevel.add_member(:il99, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IL99', traits: {"smithy.api#enumValue" => "IL99"}))
    InvalidAddressException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    InvalidAddressException.type = Types::InvalidAddressException
    InvalidInputCombinationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    InvalidInputCombinationException.type = Types::InvalidInputCombinationException
    InvalidJobStateException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    InvalidJobStateException.type = Types::InvalidJobStateException
    InvalidNextTokenException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    InvalidNextTokenException.type = Types::InvalidNextTokenException
    InvalidResourceException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    InvalidResourceException.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceType', traits: {"smithy.api#documentation" => "<p>The provided resource value is invalid.</p>"}))
    InvalidResourceException.type = Types::InvalidResourceException
    JobListEntry.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The automatically generated ID for a job, for example\n        <code>JID123e4567-e89b-12d3-a456-426655440000</code>.</p>"}))
    JobListEntry.add_member(:job_state, Smithy::Schema::Shapes::ShapeRef.new(shape: JobState, location_name: 'JobState', traits: {"smithy.api#documentation" => "<p>The current state of this job.</p>"}))
    JobListEntry.add_member(:is_master, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IsMaster', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>A value that indicates that this job is a main job. A main job represents a successful\n      request to create an export job. Main jobs aren't associated with any Snowballs. Instead, each\n      main job will have at least one job part, and each job part is associated with a Snowball. It\n      might take some time before the job parts associated with a particular main job are listed,\n      because they are created after the main job is created.</p>"}))
    JobListEntry.add_member(:job_type, Smithy::Schema::Shapes::ShapeRef.new(shape: JobType, location_name: 'JobType', traits: {"smithy.api#documentation" => "<p>The type of job.</p>"}))
    JobListEntry.add_member(:snowball_type, Smithy::Schema::Shapes::ShapeRef.new(shape: SnowballType, location_name: 'SnowballType', traits: {"smithy.api#documentation" => "<p>The type of device used with this job.</p>"}))
    JobListEntry.add_member(:creation_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationDate', traits: {"smithy.api#documentation" => "<p>The creation date for this job.</p>"}))
    JobListEntry.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The optional description of this specific job, for example <code>Important Photos\n        2016-08-11</code>.</p>"}))
    JobListEntry.type = Types::JobListEntry
    JobListEntryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: JobListEntry)
    JobLogs.add_member(:job_completion_report_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'JobCompletionReportURI', traits: {"smithy.api#documentation" => "<p>A link to an Amazon S3 presigned URL where the job completion report is\n      located.</p>"}))
    JobLogs.add_member(:job_success_log_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'JobSuccessLogURI', traits: {"smithy.api#documentation" => "<p>A link to an Amazon S3 presigned URL where the job success log is located.</p>"}))
    JobLogs.add_member(:job_failure_log_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'JobFailureLogURI', traits: {"smithy.api#documentation" => "<p>A link to an Amazon S3 presigned URL where the job failure log is located.</p>"}))
    JobLogs.type = Types::JobLogs
    JobMetadata.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The automatically generated ID for a job, for example\n        <code>JID123e4567-e89b-12d3-a456-426655440000</code>.</p>"}))
    JobMetadata.add_member(:job_state, Smithy::Schema::Shapes::ShapeRef.new(shape: JobState, location_name: 'JobState', traits: {"smithy.api#documentation" => "<p>The current status of the jobs.</p>"}))
    JobMetadata.add_member(:job_type, Smithy::Schema::Shapes::ShapeRef.new(shape: JobType, location_name: 'JobType', traits: {"smithy.api#documentation" => "<p>The type of job.</p>"}))
    JobMetadata.add_member(:snowball_type, Smithy::Schema::Shapes::ShapeRef.new(shape: SnowballType, location_name: 'SnowballType', traits: {"smithy.api#documentation" => "<p>The type of device used with this job.</p>"}))
    JobMetadata.add_member(:creation_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationDate', traits: {"smithy.api#documentation" => "<p>The creation date for this job.</p>"}))
    JobMetadata.add_member(:resources, Smithy::Schema::Shapes::ShapeRef.new(shape: JobResource, location_name: 'Resources', traits: {"smithy.api#documentation" => "<p>An array of <code>S3Resource</code> objects. Each <code>S3Resource</code> object\n      represents an Amazon S3 bucket that your transferred data will be exported from or imported\n      into.</p>"}))
    JobMetadata.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the job, provided at job creation.</p>"}))
    JobMetadata.add_member(:kms_key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyARN, location_name: 'KmsKeyARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) for the Key Management Service (KMS) key\n      associated with this job. This ARN was created using the <a href=\"https://docs.aws.amazon.com/kms/latest/APIReference/API_CreateKey.html\">CreateKey</a> API action in KMS.</p>"}))
    JobMetadata.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleARN, location_name: 'RoleARN', traits: {"smithy.api#documentation" => "<p>The role ARN associated with this job. This ARN was created using the <a href=\"https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateRole.html\">CreateRole</a>\n      API action in Identity and Access Management.</p>"}))
    JobMetadata.add_member(:address_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AddressId, location_name: 'AddressId', traits: {"smithy.api#documentation" => "<p>The ID for the address that you want the Snow device shipped to.</p>"}))
    JobMetadata.add_member(:shipping_details, Smithy::Schema::Shapes::ShapeRef.new(shape: ShippingDetails, location_name: 'ShippingDetails', traits: {"smithy.api#documentation" => "<p>A job's shipping information, including inbound and outbound tracking numbers and\n      shipping speed options.</p>"}))
    JobMetadata.add_member(:snowball_capacity_preference, Smithy::Schema::Shapes::ShapeRef.new(shape: SnowballCapacity, location_name: 'SnowballCapacityPreference', traits: {"smithy.api#documentation" => "<p>The Snow device capacity preference for this job, specified at job creation. In US\n      regions, you can choose between 50 TB and 80 TB Snowballs. All other regions use 80 TB\n      capacity Snowballs.</p>\n         <p>For more information, see\n      \"https://docs.aws.amazon.com/snowball/latest/snowcone-guide/snow-device-types.html\" (Snow\n      Family Devices and Capacity) in the <i>Snowcone User Guide</i> or\n      \"https://docs.aws.amazon.com/snowball/latest/developer-guide/snow-device-types.html\" (Snow\n      Family Devices and Capacity) in the <i>Snowcone User Guide</i>.</p>"}))
    JobMetadata.add_member(:notification, Smithy::Schema::Shapes::ShapeRef.new(shape: Notification, location_name: 'Notification', traits: {"smithy.api#documentation" => "<p>The Amazon Simple Notification Service (Amazon SNS) notification settings associated\n      with a specific job. The <code>Notification</code> object is returned as a part of the\n      response syntax of the <code>DescribeJob</code> action in the <code>JobMetadata</code> data\n      type.</p>"}))
    JobMetadata.add_member(:data_transfer_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: DataTransfer, location_name: 'DataTransferProgress', traits: {"smithy.api#documentation" => "<p>A value that defines the real-time status of a Snow device's data transfer while the\n      device is at Amazon Web Services. This data is only available while a job has a\n        <code>JobState</code> value of <code>InProgress</code>, for both import and export\n      jobs.</p>"}))
    JobMetadata.add_member(:job_log_info, Smithy::Schema::Shapes::ShapeRef.new(shape: JobLogs, location_name: 'JobLogInfo', traits: {"smithy.api#documentation" => "<p>Links to Amazon S3 presigned URLs for the job report and logs. For import jobs, the PDF\n      job report becomes available at the end of the import process. For export jobs, your job\n      report typically becomes available while the Snow device for your job part is being delivered\n      to you.</p>"}))
    JobMetadata.add_member(:cluster_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterId', traits: {"smithy.api#documentation" => "<p>The 39-character ID for the cluster, for example\n        <code>CID123e4567-e89b-12d3-a456-426655440000</code>.</p>"}))
    JobMetadata.add_member(:forwarding_address_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AddressId, location_name: 'ForwardingAddressId', traits: {"smithy.api#documentation" => "<p>The ID of the address that you want a job shipped to, after it will be\n      shipped to its primary address. This field is not supported in most regions.</p>"}))
    JobMetadata.add_member(:tax_documents, Smithy::Schema::Shapes::ShapeRef.new(shape: TaxDocuments, location_name: 'TaxDocuments', traits: {"smithy.api#documentation" => "<p>The metadata associated with the tax documents required in your Amazon Web Services Region.</p>"}))
    JobMetadata.add_member(:device_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceConfiguration, location_name: 'DeviceConfiguration'))
    JobMetadata.add_member(:remote_management, Smithy::Schema::Shapes::ShapeRef.new(shape: RemoteManagement, location_name: 'RemoteManagement', traits: {"smithy.api#documentation" => "<p>Allows you to securely operate and manage Snowcone devices remotely from outside of your\n      internal network. When set to <code>INSTALLED_AUTOSTART</code>, remote management will\n      automatically be available when the device arrives at your location. Otherwise, you need to\n      use the Snowball Client to manage the device.</p>"}))
    JobMetadata.add_member(:long_term_pricing_id, Smithy::Schema::Shapes::ShapeRef.new(shape: LongTermPricingId, location_name: 'LongTermPricingId', traits: {"smithy.api#documentation" => "<p>The ID of the long-term pricing type for the device.</p>"}))
    JobMetadata.add_member(:on_device_service_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: OnDeviceServiceConfiguration, location_name: 'OnDeviceServiceConfiguration', traits: {"smithy.api#documentation" => "<p>Represents metadata and configuration settings for services on an Amazon Web Services Snow Family\n      device.</p>"}))
    JobMetadata.add_member(:impact_level, Smithy::Schema::Shapes::ShapeRef.new(shape: ImpactLevel, location_name: 'ImpactLevel', traits: {"smithy.api#documentation" => "<p>The highest impact level of data that will be stored or processed on the device, provided at job creation.</p>"}))
    JobMetadata.add_member(:pickup_details, Smithy::Schema::Shapes::ShapeRef.new(shape: PickupDetails, location_name: 'PickupDetails', traits: {"smithy.api#documentation" => "<p>Information identifying the person picking up the device.</p>"}))
    JobMetadata.add_member(:snowball_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnowballId', traits: {"smithy.api#documentation" => "<p>Unique ID associated with a device.</p>"}))
    JobMetadata.type = Types::JobMetadata
    JobMetadataList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: JobMetadata)
    JobResource.add_member(:s3_resources, Smithy::Schema::Shapes::ShapeRef.new(shape: S3ResourceList, location_name: 'S3Resources', traits: {"smithy.api#documentation" => "<p>An array of <code>S3Resource</code> objects.</p>"}))
    JobResource.add_member(:lambda_resources, Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaResourceList, location_name: 'LambdaResources', traits: {"smithy.api#documentation" => "<p>The Python-language Lambda functions for this job.</p>"}))
    JobResource.add_member(:ec2_ami_resources, Smithy::Schema::Shapes::ShapeRef.new(shape: Ec2AmiResourceList, location_name: 'Ec2AmiResources', traits: {"smithy.api#documentation" => "<p>The Amazon Machine Images (AMIs) associated with this job.</p>"}))
    JobResource.type = Types::JobResource
    JobState.add_member(:new, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NEW', traits: {"smithy.api#enumValue" => "New"}))
    JobState.add_member(:preparing_appliance, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PREPARING_APPLIANCE', traits: {"smithy.api#enumValue" => "PreparingAppliance"}))
    JobState.add_member(:preparing_shipment, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PREPARING_SHIPMENT', traits: {"smithy.api#enumValue" => "PreparingShipment"}))
    JobState.add_member(:in_transit_to_customer, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_TRANSIT_TO_CUSTOMER', traits: {"smithy.api#enumValue" => "InTransitToCustomer"}))
    JobState.add_member(:with_customer, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WITH_CUSTOMER', traits: {"smithy.api#enumValue" => "WithCustomer"}))
    JobState.add_member(:in_transit_to_aws, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_TRANSIT_TO_AWS', traits: {"smithy.api#enumValue" => "InTransitToAWS"}))
    JobState.add_member(:with_aws_sorting_facility, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WITH_AWS_SORTING_FACILITY', traits: {"smithy.api#enumValue" => "WithAWSSortingFacility"}))
    JobState.add_member(:with_aws, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WITH_AWS', traits: {"smithy.api#enumValue" => "WithAWS"}))
    JobState.add_member(:in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PROGRESS', traits: {"smithy.api#enumValue" => "InProgress"}))
    JobState.add_member(:complete, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETE', traits: {"smithy.api#enumValue" => "Complete"}))
    JobState.add_member(:cancelled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANCELLED', traits: {"smithy.api#enumValue" => "Cancelled"}))
    JobState.add_member(:listing, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LISTING', traits: {"smithy.api#enumValue" => "Listing"}))
    JobState.add_member(:pending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "Pending"}))
    JobStateList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: JobState)
    JobType.add_member(:import, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IMPORT', traits: {"smithy.api#enumValue" => "IMPORT"}))
    JobType.add_member(:export, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXPORT', traits: {"smithy.api#enumValue" => "EXPORT"}))
    JobType.add_member(:local_use, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LOCAL_USE', traits: {"smithy.api#enumValue" => "LOCAL_USE"}))
    KMSRequestFailedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    KMSRequestFailedException.type = Types::KMSRequestFailedException
    KeyRange.add_member(:begin_marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BeginMarker', traits: {"smithy.api#documentation" => "<p>The key that starts an optional key range for an export job. Ranges are inclusive and\n      UTF-8 binary sorted.</p>"}))
    KeyRange.add_member(:end_marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EndMarker', traits: {"smithy.api#documentation" => "<p>The key that ends an optional key range for an export job. Ranges are inclusive and\n      UTF-8 binary sorted.</p>"}))
    KeyRange.type = Types::KeyRange
    LambdaResource.add_member(:lambda_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'LambdaArn', traits: {"smithy.api#documentation" => "<p>An Amazon Resource Name (ARN) that represents an Lambda function to be\n      triggered by PUT object actions on the associated local Amazon S3 resource.</p>"}))
    LambdaResource.add_member(:event_triggers, Smithy::Schema::Shapes::ShapeRef.new(shape: EventTriggerDefinitionList, location_name: 'EventTriggers', traits: {"smithy.api#documentation" => "<p>The array of ARNs for <a>S3Resource</a> objects to trigger the <a>LambdaResource</a> objects associated with this job.</p>"}))
    LambdaResource.type = Types::LambdaResource
    LambdaResourceList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaResource)
    ListClusterJobsRequest.add_member(:cluster_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterId, location_name: 'ClusterId', traits: {"smithy.api#documentation" => "<p>The 39-character ID for the cluster that you want to list, for example\n        <code>CID123e4567-e89b-12d3-a456-426655440000</code>.</p>", "smithy.api#required" => {}}))
    ListClusterJobsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ListLimit, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The number of <code>JobListEntry</code> objects to return.</p>"}))
    ListClusterJobsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>HTTP requests are stateless. To identify what object comes \"next\" in the list of\n        <code>JobListEntry</code> objects, you have the option of specifying <code>NextToken</code>\n      as the starting point for your returned list.</p>"}))
    ListClusterJobsRequest.type = Types::ListClusterJobsRequest
    ListClusterJobsResult.add_member(:job_list_entries, Smithy::Schema::Shapes::ShapeRef.new(shape: JobListEntryList, location_name: 'JobListEntries', traits: {"smithy.api#documentation" => "<p>Each <code>JobListEntry</code> object contains a job's state, a job's ID, and a value\n      that indicates whether the job is a job part, in the case of export jobs. </p>"}))
    ListClusterJobsResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>HTTP requests are stateless. If you use the automatically generated\n        <code>NextToken</code> value in your next <code>ListClusterJobsResult</code> call, your list\n      of returned jobs will start from this point in the array.</p>"}))
    ListClusterJobsResult.type = Types::ListClusterJobsResult
    ListClustersRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ListLimit, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The number of <code>ClusterListEntry</code> objects to return.</p>"}))
    ListClustersRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>HTTP requests are stateless. To identify what object comes \"next\" in the list of\n        <code>ClusterListEntry</code> objects, you have the option of specifying\n        <code>NextToken</code> as the starting point for your returned list.</p>"}))
    ListClustersRequest.type = Types::ListClustersRequest
    ListClustersResult.add_member(:cluster_list_entries, Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterListEntryList, location_name: 'ClusterListEntries', traits: {"smithy.api#documentation" => "<p>Each <code>ClusterListEntry</code> object contains a cluster's state, a cluster's ID,\n      and other important status information.</p>"}))
    ListClustersResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>HTTP requests are stateless. If you use the automatically generated\n        <code>NextToken</code> value in your next <code>ClusterListEntry</code> call, your list of\n      returned clusters will start from this point in the array.</p>"}))
    ListClustersResult.type = Types::ListClustersResult
    ListCompatibleImagesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ListLimit, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results for the list of compatible images. Currently, a Snowball\n      Edge device can store 10 AMIs.</p>"}))
    ListCompatibleImagesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>HTTP requests are stateless. To identify what object comes \"next\" in the list of\n      compatible images, you can specify a value for <code>NextToken</code> as the starting point\n      for your list of returned images.</p>"}))
    ListCompatibleImagesRequest.type = Types::ListCompatibleImagesRequest
    ListCompatibleImagesResult.add_member(:compatible_images, Smithy::Schema::Shapes::ShapeRef.new(shape: CompatibleImageList, location_name: 'CompatibleImages', traits: {"smithy.api#documentation" => "<p>A JSON-formatted object that describes a compatible AMI, including the ID and name for\n      a Snow device AMI.</p>"}))
    ListCompatibleImagesResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Because HTTP requests are stateless, this is the starting point for your next list of\n      returned images.</p>"}))
    ListCompatibleImagesResult.type = Types::ListCompatibleImagesResult
    ListJobsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ListLimit, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The number of <code>JobListEntry</code> objects to return.</p>"}))
    ListJobsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>HTTP requests are stateless. To identify what object comes \"next\" in the list of\n        <code>JobListEntry</code> objects, you have the option of specifying <code>NextToken</code>\n      as the starting point for your returned list.</p>"}))
    ListJobsRequest.type = Types::ListJobsRequest
    ListJobsResult.add_member(:job_list_entries, Smithy::Schema::Shapes::ShapeRef.new(shape: JobListEntryList, location_name: 'JobListEntries', traits: {"smithy.api#documentation" => "<p>Each <code>JobListEntry</code> object contains a job's state, a job's ID, and a value\n      that indicates whether the job is a job part, in the case of export jobs. </p>"}))
    ListJobsResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>HTTP requests are stateless. If you use this automatically generated\n        <code>NextToken</code> value in your next <code>ListJobs</code> call, your returned\n        <code>JobListEntry</code> objects will start from this point in the array.</p>"}))
    ListJobsResult.type = Types::ListJobsResult
    ListLongTermPricingRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ListLimit, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of <code>ListLongTermPricing</code> objects to return.</p>"}))
    ListLongTermPricingRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Because HTTP requests are stateless, this is the starting point for your next list of\n        <code>ListLongTermPricing</code> to return.</p>"}))
    ListLongTermPricingRequest.type = Types::ListLongTermPricingRequest
    ListLongTermPricingResult.add_member(:long_term_pricing_entries, Smithy::Schema::Shapes::ShapeRef.new(shape: LongTermPricingEntryList, location_name: 'LongTermPricingEntries', traits: {"smithy.api#documentation" => "<p>Each <code>LongTermPricingEntry</code> object contains a status, ID, and other information\n      about the <code>LongTermPricing</code> type. </p>"}))
    ListLongTermPricingResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Because HTTP requests are stateless, this is the starting point for your next list of\n      returned <code>ListLongTermPricing</code> list.</p>"}))
    ListLongTermPricingResult.type = Types::ListLongTermPricingResult
    ListPickupLocationsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ListLimit, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of locations to list per page.</p>"}))
    ListPickupLocationsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>HTTP requests are stateless. To identify what object comes \"next\" in the list of <code>ListPickupLocationsRequest</code> objects, you have the option of specifying <code>NextToken</code> as the starting point for your returned list.</p>"}))
    ListPickupLocationsRequest.type = Types::ListPickupLocationsRequest
    ListPickupLocationsResult.add_member(:addresses, Smithy::Schema::Shapes::ShapeRef.new(shape: AddressList, location_name: 'Addresses', traits: {"smithy.api#documentation" => "<p>Information about the address of pickup locations.</p>"}))
    ListPickupLocationsResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>HTTP requests are stateless. To identify what object comes \"next\" in the list of <code>ListPickupLocationsResult</code> objects, you have the option of specifying <code>NextToken</code> as the starting point for your returned list.</p>"}))
    ListPickupLocationsResult.type = Types::ListPickupLocationsResult
    ListServiceVersionsRequest.add_member(:service_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceName, location_name: 'ServiceName', traits: {"smithy.api#documentation" => "<p>The name of the service for which you're requesting supported versions.</p>", "smithy.api#required" => {}}))
    ListServiceVersionsRequest.add_member(:dependent_services, Smithy::Schema::Shapes::ShapeRef.new(shape: DependentServiceList, location_name: 'DependentServices', traits: {"smithy.api#documentation" => "<p>A list of names and versions of dependant services of the requested service.</p>"}))
    ListServiceVersionsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ListLimit, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of <code>ListServiceVersions</code> objects to return.</p>"}))
    ListServiceVersionsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Because HTTP requests are stateless, this is the starting point for the next list of returned \n      <code>ListServiceVersionsRequest</code> versions.</p>"}))
    ListServiceVersionsRequest.type = Types::ListServiceVersionsRequest
    ListServiceVersionsResult.add_member(:service_versions, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceVersionList, location_name: 'ServiceVersions', traits: {"smithy.api#documentation" => "<p>A list of supported versions.</p>", "smithy.api#required" => {}}))
    ListServiceVersionsResult.add_member(:service_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceName, location_name: 'ServiceName', traits: {"smithy.api#documentation" => "<p>The name of the service for which the system provided supported versions.</p>", "smithy.api#required" => {}}))
    ListServiceVersionsResult.add_member(:dependent_services, Smithy::Schema::Shapes::ShapeRef.new(shape: DependentServiceList, location_name: 'DependentServices', traits: {"smithy.api#documentation" => "<p>A list of names and versions of dependant services of the service for which the system provided supported versions.</p>"}))
    ListServiceVersionsResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Because HTTP requests are stateless, this is the starting point of the next list of returned \n      <code>ListServiceVersionsResult</code> results.</p>"}))
    ListServiceVersionsResult.type = Types::ListServiceVersionsResult
    LongTermPricingAssociatedJobIdList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: JobId)
    LongTermPricingEntryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LongTermPricingListEntry)
    LongTermPricingIdList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LongTermPricingId)
    LongTermPricingListEntry.add_member(:long_term_pricing_id, Smithy::Schema::Shapes::ShapeRef.new(shape: LongTermPricingId, location_name: 'LongTermPricingId', traits: {"smithy.api#documentation" => "<p>The ID of the long-term pricing type for the device.</p>"}))
    LongTermPricingListEntry.add_member(:long_term_pricing_end_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LongTermPricingEndDate', traits: {"smithy.api#documentation" => "<p>The end date the long-term pricing contract.</p>"}))
    LongTermPricingListEntry.add_member(:long_term_pricing_start_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LongTermPricingStartDate', traits: {"smithy.api#documentation" => "<p>The start date of the long-term pricing contract.</p>"}))
    LongTermPricingListEntry.add_member(:long_term_pricing_type, Smithy::Schema::Shapes::ShapeRef.new(shape: LongTermPricingType, location_name: 'LongTermPricingType', traits: {"smithy.api#documentation" => "<p>The type of long-term pricing that was selected for the device.</p>"}))
    LongTermPricingListEntry.add_member(:current_active_job, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'CurrentActiveJob', traits: {"smithy.api#documentation" => "<p>The current active jobs on the device the long-term pricing type.</p>"}))
    LongTermPricingListEntry.add_member(:replacement_job, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'ReplacementJob', traits: {"smithy.api#documentation" => "<p>A new device that replaces a device that is ordered with long-term pricing.</p>"}))
    LongTermPricingListEntry.add_member(:is_long_term_pricing_auto_renew, Smithy::Schema::Shapes::ShapeRef.new(shape: JavaBoolean, location_name: 'IsLongTermPricingAutoRenew', traits: {"smithy.api#documentation" => "<p>If set to <code>true</code>, specifies that the current long-term pricing type for the\n      device should be automatically renewed before the long-term pricing contract expires.</p>"}))
    LongTermPricingListEntry.add_member(:long_term_pricing_status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LongTermPricingStatus', traits: {"smithy.api#documentation" => "<p>The status of the long-term pricing type.</p>"}))
    LongTermPricingListEntry.add_member(:snowball_type, Smithy::Schema::Shapes::ShapeRef.new(shape: SnowballType, location_name: 'SnowballType', traits: {"smithy.api#documentation" => "<p>The type of Snow Family devices associated with this long-term pricing job.</p>"}))
    LongTermPricingListEntry.add_member(:job_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: LongTermPricingAssociatedJobIdList, location_name: 'JobIds', traits: {"smithy.api#documentation" => "<p>The IDs of the jobs that are associated with a long-term pricing type.</p>"}))
    LongTermPricingListEntry.type = Types::LongTermPricingListEntry
    LongTermPricingType.add_member(:one_year, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ONE_YEAR', traits: {"smithy.api#enumValue" => "OneYear"}))
    LongTermPricingType.add_member(:three_year, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'THREE_YEAR', traits: {"smithy.api#enumValue" => "ThreeYear"}))
    LongTermPricingType.add_member(:one_month, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ONE_MONTH', traits: {"smithy.api#enumValue" => "OneMonth"}))
    NFSOnDeviceServiceConfiguration.add_member(:storage_limit, Smithy::Schema::Shapes::ShapeRef.new(shape: StorageLimit, location_name: 'StorageLimit', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum NFS storage for one Snow Family device.</p>"}))
    NFSOnDeviceServiceConfiguration.add_member(:storage_unit, Smithy::Schema::Shapes::ShapeRef.new(shape: StorageUnit, location_name: 'StorageUnit', traits: {"smithy.api#documentation" => "<p>The scale unit of the NFS storage on the device.</p>\n         <p>Valid values: TB.</p>"}))
    NFSOnDeviceServiceConfiguration.type = Types::NFSOnDeviceServiceConfiguration
    Notification.add_member(:sns_topic_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SnsTopicARN, location_name: 'SnsTopicARN', traits: {"smithy.api#documentation" => "<p>The new SNS <code>TopicArn</code> that you want to associate with this job. You can\n      create Amazon Resource Names (ARNs) for topics by using the <a href=\"https://docs.aws.amazon.com/sns/latest/api/API_CreateTopic.html\">CreateTopic</a> Amazon SNS API\n      action.</p>\n         <p>You can subscribe email addresses to an Amazon SNS topic through the Amazon Web Services Management Console, or by using the <a href=\"https://docs.aws.amazon.com/sns/latest/api/API_Subscribe.html\">Subscribe</a> Amazon Simple Notification\n      Service (Amazon SNS) API action.</p>"}))
    Notification.add_member(:job_states_to_notify, Smithy::Schema::Shapes::ShapeRef.new(shape: JobStateList, location_name: 'JobStatesToNotify', traits: {"smithy.api#documentation" => "<p>The list of job states that will trigger a notification for this job.</p>"}))
    Notification.add_member(:notify_all, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'NotifyAll', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Any change in job state will trigger a notification for this job.</p>"}))
    Notification.add_member(:device_pickup_sns_topic_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SnsTopicARN, location_name: 'DevicePickupSnsTopicARN', traits: {"smithy.api#documentation" => "<p>Used to send SNS notifications for the person picking up the device (identified during job creation).</p>"}))
    Notification.type = Types::Notification
    OnDeviceServiceConfiguration.add_member(:nfs_on_device_service, Smithy::Schema::Shapes::ShapeRef.new(shape: NFSOnDeviceServiceConfiguration, location_name: 'NFSOnDeviceService', traits: {"smithy.api#documentation" => "<p>Represents the NFS (Network File System) service on a Snow Family device.</p>"}))
    OnDeviceServiceConfiguration.add_member(:tgw_on_device_service, Smithy::Schema::Shapes::ShapeRef.new(shape: TGWOnDeviceServiceConfiguration, location_name: 'TGWOnDeviceService', traits: {"smithy.api#documentation" => "<p>Represents the Storage Gateway service Tape Gateway type on a Snow Family device.</p>"}))
    OnDeviceServiceConfiguration.add_member(:eks_on_device_service, Smithy::Schema::Shapes::ShapeRef.new(shape: EKSOnDeviceServiceConfiguration, location_name: 'EKSOnDeviceService', traits: {"smithy.api#documentation" => "<p>The configuration of EKS Anywhere on the Snow Family device.</p>"}))
    OnDeviceServiceConfiguration.add_member(:s3_on_device_service, Smithy::Schema::Shapes::ShapeRef.new(shape: S3OnDeviceServiceConfiguration, location_name: 'S3OnDeviceService', traits: {"smithy.api#documentation" => "<p>Configuration for Amazon S3 compatible storage on Snow family devices.</p>"}))
    OnDeviceServiceConfiguration.type = Types::OnDeviceServiceConfiguration
    PickupDetails.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the person picking up the device.</p>"}))
    PickupDetails.add_member(:phone_number, Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumber, location_name: 'PhoneNumber', traits: {"smithy.api#documentation" => "<p>The phone number of the person picking up the device.</p>"}))
    PickupDetails.add_member(:email, Smithy::Schema::Shapes::ShapeRef.new(shape: Email, location_name: 'Email', traits: {"smithy.api#documentation" => "<p>The email address of the person picking up the device.</p>"}))
    PickupDetails.add_member(:identification_number, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IdentificationNumber', traits: {"smithy.api#documentation" => "<p>The number on the credential identifying the person picking up the device.</p>"}))
    PickupDetails.add_member(:identification_expiration_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'IdentificationExpirationDate', traits: {"smithy.api#documentation" => "<p>Expiration date of the credential identifying the person picking up the device.</p>"}))
    PickupDetails.add_member(:identification_issuing_org, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IdentificationIssuingOrg', traits: {"smithy.api#documentation" => "<p>Organization that issued the credential identifying the person picking up the device.</p>"}))
    PickupDetails.add_member(:device_pickup_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DevicePickupId, location_name: 'DevicePickupId', traits: {"smithy.api#documentation" => "<p>The unique ID for a device that will be picked up.</p>"}))
    PickupDetails.type = Types::PickupDetails
    RemoteManagement.add_member(:installed_only, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INSTALLED_ONLY', traits: {"smithy.api#enumValue" => "INSTALLED_ONLY"}))
    RemoteManagement.add_member(:installed_autostart, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INSTALLED_AUTOSTART', traits: {"smithy.api#enumValue" => "INSTALLED_AUTOSTART"}))
    RemoteManagement.add_member(:not_installed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOT_INSTALLED', traits: {"smithy.api#enumValue" => "NOT_INSTALLED"}))
    ReturnShippingLabelAlreadyExistsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    ReturnShippingLabelAlreadyExistsException.type = Types::ReturnShippingLabelAlreadyExistsException
    S3OnDeviceServiceConfiguration.add_member(:storage_limit, Smithy::Schema::Shapes::ShapeRef.new(shape: S3StorageLimit, location_name: 'StorageLimit', traits: {"smithy.api#documentation" => "<p>If the specified storage limit value matches storage limit of one of the defined configurations, that configuration will be used. \n      If the specified storage limit value does not match any defined configuration, the request will fail. If more than one configuration has \n      the same storage limit as specified, the other input need to be provided.</p>"}))
    S3OnDeviceServiceConfiguration.add_member(:storage_unit, Smithy::Schema::Shapes::ShapeRef.new(shape: StorageUnit, location_name: 'StorageUnit', traits: {"smithy.api#documentation" => "<p>Storage unit. Currently the only supported unit is TB.</p>"}))
    S3OnDeviceServiceConfiguration.add_member(:service_size, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceSize, location_name: 'ServiceSize', traits: {"smithy.api#documentation" => "<p>Applicable when creating a cluster. Specifies how many nodes are needed for Amazon S3 compatible storage on Snow family devices. If specified, the other input can be omitted.</p>"}))
    S3OnDeviceServiceConfiguration.add_member(:fault_tolerance, Smithy::Schema::Shapes::ShapeRef.new(shape: NodeFaultTolerance, location_name: 'FaultTolerance', traits: {"smithy.api#documentation" => "<p>>Fault tolerance level of the cluster. This indicates the number of nodes that can go down without degrading the performance of the cluster. This additional input helps when the specified <code>StorageLimit</code> matches more than one Amazon S3 compatible storage on Snow family devices service configuration.</p>"}))
    S3OnDeviceServiceConfiguration.type = Types::S3OnDeviceServiceConfiguration
    S3Resource.add_member(:bucket_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'BucketArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of an Amazon S3 bucket.</p>"}))
    S3Resource.add_member(:key_range, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyRange, location_name: 'KeyRange', traits: {"smithy.api#documentation" => "<p>For export jobs, you can provide an optional <code>KeyRange</code> within a specific\n      Amazon S3 bucket. The length of the range is defined at job creation, and has either an\n      inclusive <code>BeginMarker</code>, an inclusive <code>EndMarker</code>, or both. Ranges are\n      UTF-8 binary sorted.</p>"}))
    S3Resource.add_member(:target_on_device_services, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetOnDeviceServiceList, location_name: 'TargetOnDeviceServices', traits: {"smithy.api#documentation" => "<p>Specifies the service or services on the Snow Family device that your transferred data\n      will be exported from or imported into. Amazon Web Services Snow Family supports Amazon S3 and NFS (Network File\n      System).</p>"}))
    S3Resource.type = Types::S3Resource
    S3ResourceList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: S3Resource)
    ServiceName.add_member(:kubernetes, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'KUBERNETES', traits: {"smithy.api#enumValue" => "KUBERNETES"}))
    ServiceName.add_member(:eks_anywhere, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EKS_ANYWHERE', traits: {"smithy.api#enumValue" => "EKS_ANYWHERE"}))
    ServiceVersion.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Version', traits: {"smithy.api#documentation" => "<p>The version number of the requested service.</p>"}))
    ServiceVersion.type = Types::ServiceVersion
    ServiceVersionList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceVersion)
    Shipment.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>Status information for a shipment.</p>"}))
    Shipment.add_member(:tracking_number, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TrackingNumber', traits: {"smithy.api#documentation" => "<p>The tracking number for this job. Using this tracking number with your region's\n      carrier's website, you can track a Snow device as the carrier transports it.</p>\n         <p>For India, the carrier is Amazon Logistics. For all other regions, UPS is the\n      carrier.</p>"}))
    Shipment.type = Types::Shipment
    ShipmentState.add_member(:received, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RECEIVED', traits: {"smithy.api#enumValue" => "RECEIVED"}))
    ShipmentState.add_member(:returned, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RETURNED', traits: {"smithy.api#enumValue" => "RETURNED"}))
    ShippingDetails.add_member(:shipping_option, Smithy::Schema::Shapes::ShapeRef.new(shape: ShippingOption, location_name: 'ShippingOption', traits: {"smithy.api#documentation" => "<p>The shipping speed for a particular job. This speed doesn't dictate how soon you'll get\n      the Snow device from the job's creation date. This speed represents how quickly it moves to\n      its destination while in transit. Regional shipping speeds are as follows:</p>\n         <ul>\n            <li>\n               <p>In Australia, you have access to express shipping. Typically, Snow devices shipped\n          express are delivered in about a day.</p>\n            </li>\n            <li>\n               <p>In the European Union (EU), you have access to express shipping. Typically, Snow\n          devices shipped express are delivered in about a day. In addition, most countries in the\n          EU have access to standard shipping, which typically takes less than a week, one\n          way.</p>\n            </li>\n            <li>\n               <p>In India, Snow devices are delivered in one to seven days.</p>\n            </li>\n            <li>\n               <p>In the United States of America (US), you have access to one-day shipping and\n          two-day shipping.</p>\n            </li>\n         </ul>"}))
    ShippingDetails.add_member(:inbound_shipment, Smithy::Schema::Shapes::ShapeRef.new(shape: Shipment, location_name: 'InboundShipment', traits: {"smithy.api#documentation" => "<p>The <code>Status</code> and <code>TrackingNumber</code> values for a Snow device being\n      returned to Amazon Web Services for a particular job.</p>"}))
    ShippingDetails.add_member(:outbound_shipment, Smithy::Schema::Shapes::ShapeRef.new(shape: Shipment, location_name: 'OutboundShipment', traits: {"smithy.api#documentation" => "<p>The <code>Status</code> and <code>TrackingNumber</code> values for a Snow device being\n      delivered to the address that you specified for a particular job.</p>"}))
    ShippingDetails.type = Types::ShippingDetails
    ShippingLabelStatus.add_member(:in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PROGRESS', traits: {"smithy.api#enumValue" => "InProgress"}))
    ShippingLabelStatus.add_member(:timed_out, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TIMED_OUT', traits: {"smithy.api#enumValue" => "TimedOut"}))
    ShippingLabelStatus.add_member(:succeeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCEEDED', traits: {"smithy.api#enumValue" => "Succeeded"}))
    ShippingLabelStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "Failed"}))
    ShippingOption.add_member(:second_day, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SECOND_DAY', traits: {"smithy.api#enumValue" => "SECOND_DAY"}))
    ShippingOption.add_member(:next_day, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NEXT_DAY', traits: {"smithy.api#enumValue" => "NEXT_DAY"}))
    ShippingOption.add_member(:express, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXPRESS', traits: {"smithy.api#enumValue" => "EXPRESS"}))
    ShippingOption.add_member(:standard, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STANDARD', traits: {"smithy.api#enumValue" => "STANDARD"}))
    SnowballCapacity.add_member(:t50, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'T50', traits: {"smithy.api#enumValue" => "T50"}))
    SnowballCapacity.add_member(:t80, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'T80', traits: {"smithy.api#enumValue" => "T80"}))
    SnowballCapacity.add_member(:t100, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'T100', traits: {"smithy.api#enumValue" => "T100"}))
    SnowballCapacity.add_member(:t42, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'T42', traits: {"smithy.api#enumValue" => "T42"}))
    SnowballCapacity.add_member(:t98, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'T98', traits: {"smithy.api#enumValue" => "T98"}))
    SnowballCapacity.add_member(:t8, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'T8', traits: {"smithy.api#enumValue" => "T8"}))
    SnowballCapacity.add_member(:t14, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'T14', traits: {"smithy.api#enumValue" => "T14"}))
    SnowballCapacity.add_member(:t32, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'T32', traits: {"smithy.api#enumValue" => "T32"}))
    SnowballCapacity.add_member(:no_preference, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NO_PREFERENCE', traits: {"smithy.api#enumValue" => "NoPreference"}))
    SnowballCapacity.add_member(:t240, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'T240', traits: {"smithy.api#enumValue" => "T240"}))
    SnowballCapacity.add_member(:t13, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'T13', traits: {"smithy.api#enumValue" => "T13"}))
    SnowballType.add_member(:standard, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STANDARD', traits: {"smithy.api#enumValue" => "STANDARD"}))
    SnowballType.add_member(:edge, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EDGE', traits: {"smithy.api#enumValue" => "EDGE"}))
    SnowballType.add_member(:edge_c, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EDGE_C', traits: {"smithy.api#enumValue" => "EDGE_C"}))
    SnowballType.add_member(:edge_cg, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EDGE_CG', traits: {"smithy.api#enumValue" => "EDGE_CG"}))
    SnowballType.add_member(:edge_s, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EDGE_S', traits: {"smithy.api#enumValue" => "EDGE_S"}))
    SnowballType.add_member(:snc1_hdd, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SNC1_HDD', traits: {"smithy.api#enumValue" => "SNC1_HDD"}))
    SnowballType.add_member(:snc1_ssd, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SNC1_SSD', traits: {"smithy.api#enumValue" => "SNC1_SSD"}))
    SnowballType.add_member(:v3_5_c, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'V3_5C', traits: {"smithy.api#enumValue" => "V3_5C"}))
    SnowballType.add_member(:v3_5_s, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'V3_5S', traits: {"smithy.api#enumValue" => "V3_5S"}))
    SnowballType.add_member(:rack_5_u_c, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RACK_5U_C', traits: {"smithy.api#enumValue" => "RACK_5U_C"}))
    SnowconeDeviceConfiguration.add_member(:wireless_connection, Smithy::Schema::Shapes::ShapeRef.new(shape: WirelessConnection, location_name: 'WirelessConnection', traits: {"smithy.api#documentation" => "<p>Configures the wireless connection for the Snowcone device.</p>"}))
    SnowconeDeviceConfiguration.type = Types::SnowconeDeviceConfiguration
    StorageUnit.add_member(:tb, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TB', traits: {"smithy.api#enumValue" => "TB"}))
    TGWOnDeviceServiceConfiguration.add_member(:storage_limit, Smithy::Schema::Shapes::ShapeRef.new(shape: StorageLimit, location_name: 'StorageLimit', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum number of virtual tapes to store on one Snow Family device. Due to physical\n      resource limitations, this value must be set to 80 for Snowball Edge.</p>"}))
    TGWOnDeviceServiceConfiguration.add_member(:storage_unit, Smithy::Schema::Shapes::ShapeRef.new(shape: StorageUnit, location_name: 'StorageUnit', traits: {"smithy.api#documentation" => "<p>The scale unit of the virtual tapes on the device.</p>"}))
    TGWOnDeviceServiceConfiguration.type = Types::TGWOnDeviceServiceConfiguration
    TargetOnDeviceService.add_member(:service_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceServiceName, location_name: 'ServiceName', traits: {"smithy.api#documentation" => "<p>Specifies the name of the service on the Snow Family device that your transferred data\n      will be exported from or imported into.</p>"}))
    TargetOnDeviceService.add_member(:transfer_option, Smithy::Schema::Shapes::ShapeRef.new(shape: TransferOption, location_name: 'TransferOption', traits: {"smithy.api#documentation" => "<p>Specifies whether the data is being imported or exported. You can import or export the\n      data, or use it locally on the device.</p>"}))
    TargetOnDeviceService.type = Types::TargetOnDeviceService
    TargetOnDeviceServiceList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TargetOnDeviceService)
    TaxDocuments.add_member(:ind, Smithy::Schema::Shapes::ShapeRef.new(shape: INDTaxDocuments, location_name: 'IND'))
    TaxDocuments.type = Types::TaxDocuments
    TransferOption.add_member(:import, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IMPORT', traits: {"smithy.api#enumValue" => "IMPORT"}))
    TransferOption.add_member(:export, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXPORT', traits: {"smithy.api#enumValue" => "EXPORT"}))
    TransferOption.add_member(:local_use, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LOCAL_USE', traits: {"smithy.api#enumValue" => "LOCAL_USE"}))
    UnsupportedAddressException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    UnsupportedAddressException.type = Types::UnsupportedAddressException
    UpdateClusterRequest.add_member(:cluster_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterId, location_name: 'ClusterId', traits: {"smithy.api#documentation" => "<p>The cluster ID of the cluster that you want to update, for example\n        <code>CID123e4567-e89b-12d3-a456-426655440000</code>.</p>", "smithy.api#required" => {}}))
    UpdateClusterRequest.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleARN, location_name: 'RoleARN', traits: {"smithy.api#documentation" => "<p>The new role Amazon Resource Name (ARN) that you want to associate with this cluster.\n      To create a role ARN, use the <a href=\"https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateRole.html\">CreateRole</a> API action in Identity and Access Management (IAM).</p>"}))
    UpdateClusterRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The updated description of this cluster.</p>"}))
    UpdateClusterRequest.add_member(:resources, Smithy::Schema::Shapes::ShapeRef.new(shape: JobResource, location_name: 'Resources', traits: {"smithy.api#documentation" => "<p>The updated arrays of <a>JobResource</a> objects that can include updated\n        <a>S3Resource</a> objects or <a>LambdaResource</a> objects.</p>"}))
    UpdateClusterRequest.add_member(:on_device_service_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: OnDeviceServiceConfiguration, location_name: 'OnDeviceServiceConfiguration', traits: {"smithy.api#documentation" => "<p>Specifies the service or services on the Snow Family device that your transferred data\n      will be exported from or imported into. Amazon Web Services Snow Family device clusters support Amazon S3 and NFS\n      (Network File System).</p>"}))
    UpdateClusterRequest.add_member(:address_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AddressId, location_name: 'AddressId', traits: {"smithy.api#documentation" => "<p>The ID of the updated <a>Address</a> object.</p>"}))
    UpdateClusterRequest.add_member(:shipping_option, Smithy::Schema::Shapes::ShapeRef.new(shape: ShippingOption, location_name: 'ShippingOption', traits: {"smithy.api#documentation" => "<p>The updated shipping option value of this cluster's <a>ShippingDetails</a>\n      object.</p>"}))
    UpdateClusterRequest.add_member(:notification, Smithy::Schema::Shapes::ShapeRef.new(shape: Notification, location_name: 'Notification', traits: {"smithy.api#documentation" => "<p>The new or updated <a>Notification</a> object.</p>"}))
    UpdateClusterRequest.add_member(:forwarding_address_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AddressId, location_name: 'ForwardingAddressId', traits: {"smithy.api#documentation" => "<p>The updated ID for the forwarding address for a cluster. This field is not\n      supported in most regions.</p>"}))
    UpdateClusterRequest.type = Types::UpdateClusterRequest
    UpdateClusterResult.type = Types::UpdateClusterResult
    UpdateJobRequest.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The job ID of the job that you want to update, for example\n        <code>JID123e4567-e89b-12d3-a456-426655440000</code>.</p>", "smithy.api#required" => {}}))
    UpdateJobRequest.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleARN, location_name: 'RoleARN', traits: {"smithy.api#documentation" => "<p>The new role Amazon Resource Name (ARN) that you want to associate with this job. To\n      create a role ARN, use the <a href=\"https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateRole.html\">CreateRole</a>Identity and Access Management\n      (IAM) API action.</p>"}))
    UpdateJobRequest.add_member(:notification, Smithy::Schema::Shapes::ShapeRef.new(shape: Notification, location_name: 'Notification', traits: {"smithy.api#documentation" => "<p>The new or updated <a>Notification</a> object.</p>"}))
    UpdateJobRequest.add_member(:resources, Smithy::Schema::Shapes::ShapeRef.new(shape: JobResource, location_name: 'Resources', traits: {"smithy.api#documentation" => "<p>The updated <code>JobResource</code> object, or the updated <a>JobResource</a> object. </p>"}))
    UpdateJobRequest.add_member(:on_device_service_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: OnDeviceServiceConfiguration, location_name: 'OnDeviceServiceConfiguration', traits: {"smithy.api#documentation" => "<p>Specifies the service or services on the Snow Family device that your transferred data\n      will be exported from or imported into. Amazon Web Services Snow Family supports Amazon S3 and NFS (Network File\n      System) and the Amazon Web Services Storage Gateway service Tape Gateway type.</p>"}))
    UpdateJobRequest.add_member(:address_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AddressId, location_name: 'AddressId', traits: {"smithy.api#documentation" => "<p>The ID of the updated <a>Address</a> object.</p>"}))
    UpdateJobRequest.add_member(:shipping_option, Smithy::Schema::Shapes::ShapeRef.new(shape: ShippingOption, location_name: 'ShippingOption', traits: {"smithy.api#documentation" => "<p>The updated shipping option value of this job's <a>ShippingDetails</a>\n      object.</p>"}))
    UpdateJobRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The updated description of this job's <a>JobMetadata</a> object.</p>"}))
    UpdateJobRequest.add_member(:snowball_capacity_preference, Smithy::Schema::Shapes::ShapeRef.new(shape: SnowballCapacity, location_name: 'SnowballCapacityPreference', traits: {"smithy.api#documentation" => "<p>The updated <code>SnowballCapacityPreference</code> of this job's <a>JobMetadata</a> object. The 50 TB Snowballs are only available in the US\n      regions.</p>\n         <p>For more information, see\n      \"https://docs.aws.amazon.com/snowball/latest/snowcone-guide/snow-device-types.html\" (Snow\n      Family Devices and Capacity) in the <i>Snowcone User Guide</i> or\n      \"https://docs.aws.amazon.com/snowball/latest/developer-guide/snow-device-types.html\" (Snow\n      Family Devices and Capacity) in the <i>Snowcone User Guide</i>.</p>"}))
    UpdateJobRequest.add_member(:forwarding_address_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AddressId, location_name: 'ForwardingAddressId', traits: {"smithy.api#documentation" => "<p>The updated ID for the forwarding address for a job. This field is not\n      supported in most regions.</p>"}))
    UpdateJobRequest.add_member(:pickup_details, Smithy::Schema::Shapes::ShapeRef.new(shape: PickupDetails, location_name: 'PickupDetails'))
    UpdateJobRequest.type = Types::UpdateJobRequest
    UpdateJobResult.type = Types::UpdateJobResult
    UpdateJobShipmentStateRequest.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The job ID of the job whose shipment date you want to update, for example\n        <code>JID123e4567-e89b-12d3-a456-426655440000</code>.</p>", "smithy.api#required" => {}}))
    UpdateJobShipmentStateRequest.add_member(:shipment_state, Smithy::Schema::Shapes::ShapeRef.new(shape: ShipmentState, location_name: 'ShipmentState', traits: {"smithy.api#documentation" => "<p>The state of a device when it is being shipped. </p>\n         <p>Set to <code>RECEIVED</code> when the device arrives at your location.</p>\n         <p>Set to <code>RETURNED</code> when you have returned the device to Amazon Web Services.</p>", "smithy.api#required" => {}}))
    UpdateJobShipmentStateRequest.type = Types::UpdateJobShipmentStateRequest
    UpdateJobShipmentStateResult.type = Types::UpdateJobShipmentStateResult
    UpdateLongTermPricingRequest.add_member(:long_term_pricing_id, Smithy::Schema::Shapes::ShapeRef.new(shape: LongTermPricingId, location_name: 'LongTermPricingId', traits: {"smithy.api#documentation" => "<p>The ID of the long-term pricing type for the device.</p>", "smithy.api#required" => {}}))
    UpdateLongTermPricingRequest.add_member(:replacement_job, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'ReplacementJob', traits: {"smithy.api#documentation" => "<p>Specifies that a device that is ordered with long-term pricing should be replaced with a\n      new device.</p>"}))
    UpdateLongTermPricingRequest.add_member(:is_long_term_pricing_auto_renew, Smithy::Schema::Shapes::ShapeRef.new(shape: JavaBoolean, location_name: 'IsLongTermPricingAutoRenew', traits: {"smithy.api#documentation" => "<p>If set to <code>true</code>, specifies that the current long-term pricing type for the\n      device should be automatically renewed before the long-term pricing contract expires.</p>"}))
    UpdateLongTermPricingRequest.type = Types::UpdateLongTermPricingRequest
    UpdateLongTermPricingResult.type = Types::UpdateLongTermPricingResult
    WirelessConnection.add_member(:is_wifi_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IsWifiEnabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Enables the Wi-Fi adapter on an Snowcone device.</p>"}))
    WirelessConnection.type = Types::WirelessConnection

    AWSIESnowballJobManagementService = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.snowball#AWSIESnowballJobManagementService"
      service.name = "AWSIESnowballJobManagementService"
      service.version = "2016-06-30"
      service.traits = {"aws.api#service" => {"sdkId" => "Snowball", "arnNamespace" => "snowball", "cloudFormationName" => "Snowball", "cloudTrailEventSource" => "snowball.amazonaws.com", "endpointPrefix" => "snowball"}, "aws.auth#sigv4" => {"name" => "snowball"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "Amazon Import/Export Snowball"}
      service.add_operation(:cancel_cluster, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.snowball#CancelCluster"
        operation.name = "CancelCluster"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CancelClusterRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CancelClusterResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidJobStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: KMSRequestFailedException)
        operation.traits = {}
      end)
      service.add_operation(:cancel_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.snowball#CancelJob"
        operation.name = "CancelJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CancelJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CancelJobResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidJobStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: KMSRequestFailedException)
        operation.traits = {}
      end)
      service.add_operation(:create_address, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.snowball#CreateAddress"
        operation.name = "CreateAddress"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAddressRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAddressResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidAddressException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedAddressException)
        operation.traits = {}
      end)
      service.add_operation(:create_cluster, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.snowball#CreateCluster"
        operation.name = "CreateCluster"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateClusterRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateClusterResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: Ec2RequestFailedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputCombinationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: KMSRequestFailedException)
        operation.traits = {}
      end)
      service.add_operation(:create_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.snowball#CreateJob"
        operation.name = "CreateJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateJobResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: Ec2RequestFailedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputCombinationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: KMSRequestFailedException)
        operation.traits = {}
      end)
      service.add_operation(:create_long_term_pricing, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.snowball#CreateLongTermPricing"
        operation.name = "CreateLongTermPricing"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLongTermPricingRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLongTermPricingResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceException)
        operation.traits = {}
      end)
      service.add_operation(:create_return_shipping_label, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.snowball#CreateReturnShippingLabel"
        operation.name = "CreateReturnShippingLabel"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateReturnShippingLabelRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateReturnShippingLabelResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputCombinationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidJobStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ReturnShippingLabelAlreadyExistsException)
        operation.traits = {}
      end)
      service.add_operation(:describe_address, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.snowball#DescribeAddress"
        operation.name = "DescribeAddress"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAddressRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAddressResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceException)
        operation.traits = {}
      end)
      service.add_operation(:describe_addresses, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.snowball#DescribeAddresses"
        operation.name = "DescribeAddresses"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAddressesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAddressesResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceException)
        operation.traits = {"smithy.test#smokeTests" => [{"id" => "DescribeAddressesSuccess", "params" => {}, "vendorParams" => {"region" => "us-west-2"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"success" => {}}}]}
        operation[:paginator] = Paginators::DescribeAddresses.new
      end)
      service.add_operation(:describe_cluster, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.snowball#DescribeCluster"
        operation.name = "DescribeCluster"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeClusterRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeClusterResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceException)
        operation.traits = {}
      end)
      service.add_operation(:describe_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.snowball#DescribeJob"
        operation.name = "DescribeJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeJobResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceException)
        operation.traits = {}
      end)
      service.add_operation(:describe_return_shipping_label, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.snowball#DescribeReturnShippingLabel"
        operation.name = "DescribeReturnShippingLabel"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeReturnShippingLabelRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeReturnShippingLabelResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidJobStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceException)
        operation.traits = {}
      end)
      service.add_operation(:get_job_manifest, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.snowball#GetJobManifest"
        operation.name = "GetJobManifest"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetJobManifestRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetJobManifestResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidJobStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceException)
        operation.traits = {}
      end)
      service.add_operation(:get_job_unlock_code, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.snowball#GetJobUnlockCode"
        operation.name = "GetJobUnlockCode"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetJobUnlockCodeRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetJobUnlockCodeResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidJobStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceException)
        operation.traits = {}
      end)
      service.add_operation(:get_snowball_usage, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.snowball#GetSnowballUsage"
        operation.name = "GetSnowballUsage"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSnowballUsageRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSnowballUsageResult)
        operation.traits = {}
      end)
      service.add_operation(:get_software_updates, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.snowball#GetSoftwareUpdates"
        operation.name = "GetSoftwareUpdates"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSoftwareUpdatesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSoftwareUpdatesResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidJobStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceException)
        operation.traits = {}
      end)
      service.add_operation(:list_cluster_jobs, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.snowball#ListClusterJobs"
        operation.name = "ListClusterJobs"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListClusterJobsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListClusterJobsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListClusterJobs.new
      end)
      service.add_operation(:list_clusters, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.snowball#ListClusters"
        operation.name = "ListClusters"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListClustersRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListClustersResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListClusters.new
      end)
      service.add_operation(:list_compatible_images, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.snowball#ListCompatibleImages"
        operation.name = "ListCompatibleImages"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListCompatibleImagesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListCompatibleImagesResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: Ec2RequestFailedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListCompatibleImages.new
      end)
      service.add_operation(:list_jobs, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.snowball#ListJobs"
        operation.name = "ListJobs"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListJobsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListJobsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListJobs.new
      end)
      service.add_operation(:list_long_term_pricing, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.snowball#ListLongTermPricing"
        operation.name = "ListLongTermPricing"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListLongTermPricingRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListLongTermPricingResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListLongTermPricing.new
      end)
      service.add_operation(:list_pickup_locations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.snowball#ListPickupLocations"
        operation.name = "ListPickupLocations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPickupLocationsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPickupLocationsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListPickupLocations.new
      end)
      service.add_operation(:list_service_versions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.snowball#ListServiceVersions"
        operation.name = "ListServiceVersions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListServiceVersionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListServiceVersionsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceException)
        operation.traits = {}
      end)
      service.add_operation(:update_cluster, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.snowball#UpdateCluster"
        operation.name = "UpdateCluster"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateClusterRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateClusterResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: Ec2RequestFailedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputCombinationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidJobStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: KMSRequestFailedException)
        operation.traits = {}
      end)
      service.add_operation(:update_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.snowball#UpdateJob"
        operation.name = "UpdateJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateJobResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: Ec2RequestFailedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputCombinationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidJobStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: KMSRequestFailedException)
        operation.traits = {}
      end)
      service.add_operation(:update_job_shipment_state, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.snowball#UpdateJobShipmentState"
        operation.name = "UpdateJobShipmentState"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateJobShipmentStateRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateJobShipmentStateResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidJobStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceException)
        operation.traits = {}
      end)
      service.add_operation(:update_long_term_pricing, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.snowball#UpdateLongTermPricing"
        operation.name = "UpdateLongTermPricing"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateLongTermPricingRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateLongTermPricingResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceException)
        operation.traits = {}
      end)

    end

    class << self
      def type_registry
        return @type_registry if @type_registry

        shapes = constants.map { |sym| const_get(sym) }.select { |const| const.is_a?(Smithy::Schema::Shapes::StructureShape) }
        @type_registry = Smithy::Schema::TypeRegistry.new(shapes)
      end
    end
  end
end
