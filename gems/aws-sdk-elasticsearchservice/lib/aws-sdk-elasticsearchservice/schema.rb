# frozen_string_literal: true

# This is generated code!

module Aws::ElasticsearchService
  # This module contains a schema composed of shapes used by the client.
  module Schema

    ARN = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticsearchservice#ARN", name: "ARN")
    AWSAccount = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticsearchservice#AWSAccount", name: "AWSAccount", traits: {"smithy.api#pattern" => "^[0-9]+$"})
    AcceptInboundCrossClusterSearchConnectionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#AcceptInboundCrossClusterSearchConnectionRequest", name: "AcceptInboundCrossClusterSearchConnectionRequest")
    AcceptInboundCrossClusterSearchConnectionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#AcceptInboundCrossClusterSearchConnectionResponse", name: "AcceptInboundCrossClusterSearchConnectionResponse")
    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccessPoliciesStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#AccessPoliciesStatus", name: "AccessPoliciesStatus")
    AddTagsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#AddTagsRequest", name: "AddTagsRequest")
    AdditionalLimit = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#AdditionalLimit", name: "AdditionalLimit")
    AdditionalLimitList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticsearchservice#AdditionalLimitList", name: "AdditionalLimitList")
    AdvancedOptions = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.elasticsearchservice#AdvancedOptions", name: "AdvancedOptions")
    AdvancedOptionsStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#AdvancedOptionsStatus", name: "AdvancedOptionsStatus")
    AdvancedSecurityOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#AdvancedSecurityOptions", name: "AdvancedSecurityOptions")
    AdvancedSecurityOptionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#AdvancedSecurityOptionsInput", name: "AdvancedSecurityOptionsInput")
    AdvancedSecurityOptionsStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#AdvancedSecurityOptionsStatus", name: "AdvancedSecurityOptionsStatus")
    AssociatePackageRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#AssociatePackageRequest", name: "AssociatePackageRequest")
    AssociatePackageResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#AssociatePackageResponse", name: "AssociatePackageResponse")
    AuthorizeVpcEndpointAccessRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#AuthorizeVpcEndpointAccessRequest", name: "AuthorizeVpcEndpointAccessRequest")
    AuthorizeVpcEndpointAccessResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#AuthorizeVpcEndpointAccessResponse", name: "AuthorizeVpcEndpointAccessResponse")
    AuthorizedPrincipal = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#AuthorizedPrincipal", name: "AuthorizedPrincipal")
    AuthorizedPrincipalList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticsearchservice#AuthorizedPrincipalList", name: "AuthorizedPrincipalList")
    AutoTune = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#AutoTune", name: "AutoTune")
    AutoTuneDate = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.elasticsearchservice#AutoTuneDate", name: "AutoTuneDate")
    AutoTuneDesiredState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.elasticsearchservice#AutoTuneDesiredState", name: "AutoTuneDesiredState")
    AutoTuneDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#AutoTuneDetails", name: "AutoTuneDetails")
    AutoTuneList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticsearchservice#AutoTuneList", name: "AutoTuneList")
    AutoTuneMaintenanceSchedule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#AutoTuneMaintenanceSchedule", name: "AutoTuneMaintenanceSchedule")
    AutoTuneMaintenanceScheduleList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticsearchservice#AutoTuneMaintenanceScheduleList", name: "AutoTuneMaintenanceScheduleList", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    AutoTuneOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#AutoTuneOptions", name: "AutoTuneOptions")
    AutoTuneOptionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#AutoTuneOptionsInput", name: "AutoTuneOptionsInput")
    AutoTuneOptionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#AutoTuneOptionsOutput", name: "AutoTuneOptionsOutput")
    AutoTuneOptionsStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#AutoTuneOptionsStatus", name: "AutoTuneOptionsStatus")
    AutoTuneState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.elasticsearchservice#AutoTuneState", name: "AutoTuneState")
    AutoTuneStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#AutoTuneStatus", name: "AutoTuneStatus")
    AutoTuneType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.elasticsearchservice#AutoTuneType", name: "AutoTuneType")
    BackendRole = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticsearchservice#BackendRole", name: "BackendRole", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    BaseException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#BaseException", name: "BaseException", traits: {"smithy.api#error" => "client"})
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.elasticsearchservice#Boolean", name: "Boolean")
    CancelDomainConfigChangeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#CancelDomainConfigChangeRequest", name: "CancelDomainConfigChangeRequest")
    CancelDomainConfigChangeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#CancelDomainConfigChangeResponse", name: "CancelDomainConfigChangeResponse")
    CancelElasticsearchServiceSoftwareUpdateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#CancelElasticsearchServiceSoftwareUpdateRequest", name: "CancelElasticsearchServiceSoftwareUpdateRequest")
    CancelElasticsearchServiceSoftwareUpdateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#CancelElasticsearchServiceSoftwareUpdateResponse", name: "CancelElasticsearchServiceSoftwareUpdateResponse")
    CancelledChangeProperty = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#CancelledChangeProperty", name: "CancelledChangeProperty")
    CancelledChangePropertyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticsearchservice#CancelledChangePropertyList", name: "CancelledChangePropertyList")
    ChangeProgressDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#ChangeProgressDetails", name: "ChangeProgressDetails")
    ChangeProgressStage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#ChangeProgressStage", name: "ChangeProgressStage")
    ChangeProgressStageList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticsearchservice#ChangeProgressStageList", name: "ChangeProgressStageList")
    ChangeProgressStageName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticsearchservice#ChangeProgressStageName", name: "ChangeProgressStageName", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    ChangeProgressStageStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticsearchservice#ChangeProgressStageStatus", name: "ChangeProgressStageStatus", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    ChangeProgressStatusDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#ChangeProgressStatusDetails", name: "ChangeProgressStatusDetails")
    ClientToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticsearchservice#ClientToken", name: "ClientToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    CloudWatchLogsLogGroupArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticsearchservice#CloudWatchLogsLogGroupArn", name: "CloudWatchLogsLogGroupArn")
    CognitoOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#CognitoOptions", name: "CognitoOptions")
    CognitoOptionsStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#CognitoOptionsStatus", name: "CognitoOptionsStatus")
    ColdStorageOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#ColdStorageOptions", name: "ColdStorageOptions")
    CommitMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticsearchservice#CommitMessage", name: "CommitMessage", traits: {"smithy.api#length" => {"min" => 0, "max" => 160}})
    CompatibleElasticsearchVersionsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticsearchservice#CompatibleElasticsearchVersionsList", name: "CompatibleElasticsearchVersionsList")
    CompatibleVersionsMap = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#CompatibleVersionsMap", name: "CompatibleVersionsMap")
    ConfigChangeStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.elasticsearchservice#ConfigChangeStatus", name: "ConfigChangeStatus")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConnectionAlias = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticsearchservice#ConnectionAlias", name: "ConnectionAlias", traits: {"smithy.api#length" => {"min" => 0, "max" => 20}})
    CreateElasticsearchDomainRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#CreateElasticsearchDomainRequest", name: "CreateElasticsearchDomainRequest")
    CreateElasticsearchDomainResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#CreateElasticsearchDomainResponse", name: "CreateElasticsearchDomainResponse")
    CreateOutboundCrossClusterSearchConnectionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#CreateOutboundCrossClusterSearchConnectionRequest", name: "CreateOutboundCrossClusterSearchConnectionRequest")
    CreateOutboundCrossClusterSearchConnectionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#CreateOutboundCrossClusterSearchConnectionResponse", name: "CreateOutboundCrossClusterSearchConnectionResponse")
    CreatePackageRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#CreatePackageRequest", name: "CreatePackageRequest")
    CreatePackageResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#CreatePackageResponse", name: "CreatePackageResponse")
    CreateVpcEndpointRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#CreateVpcEndpointRequest", name: "CreateVpcEndpointRequest")
    CreateVpcEndpointResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#CreateVpcEndpointResponse", name: "CreateVpcEndpointResponse")
    CreatedAt = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.elasticsearchservice#CreatedAt", name: "CreatedAt")
    CrossClusterSearchConnectionId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticsearchservice#CrossClusterSearchConnectionId", name: "CrossClusterSearchConnectionId")
    CrossClusterSearchConnectionStatusMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticsearchservice#CrossClusterSearchConnectionStatusMessage", name: "CrossClusterSearchConnectionStatusMessage")
    DeleteElasticsearchDomainRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#DeleteElasticsearchDomainRequest", name: "DeleteElasticsearchDomainRequest")
    DeleteElasticsearchDomainResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#DeleteElasticsearchDomainResponse", name: "DeleteElasticsearchDomainResponse")
    DeleteInboundCrossClusterSearchConnectionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#DeleteInboundCrossClusterSearchConnectionRequest", name: "DeleteInboundCrossClusterSearchConnectionRequest")
    DeleteInboundCrossClusterSearchConnectionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#DeleteInboundCrossClusterSearchConnectionResponse", name: "DeleteInboundCrossClusterSearchConnectionResponse")
    DeleteOutboundCrossClusterSearchConnectionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#DeleteOutboundCrossClusterSearchConnectionRequest", name: "DeleteOutboundCrossClusterSearchConnectionRequest")
    DeleteOutboundCrossClusterSearchConnectionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#DeleteOutboundCrossClusterSearchConnectionResponse", name: "DeleteOutboundCrossClusterSearchConnectionResponse")
    DeletePackageRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#DeletePackageRequest", name: "DeletePackageRequest")
    DeletePackageResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#DeletePackageResponse", name: "DeletePackageResponse")
    DeleteVpcEndpointRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#DeleteVpcEndpointRequest", name: "DeleteVpcEndpointRequest")
    DeleteVpcEndpointResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#DeleteVpcEndpointResponse", name: "DeleteVpcEndpointResponse")
    DeploymentCloseDateTimeStamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.elasticsearchservice#DeploymentCloseDateTimeStamp", name: "DeploymentCloseDateTimeStamp")
    DeploymentStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.elasticsearchservice#DeploymentStatus", name: "DeploymentStatus")
    DeploymentType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticsearchservice#DeploymentType", name: "DeploymentType", traits: {"smithy.api#length" => {"min" => 2, "max" => 128}})
    DescribeDomainAutoTunesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#DescribeDomainAutoTunesRequest", name: "DescribeDomainAutoTunesRequest")
    DescribeDomainAutoTunesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#DescribeDomainAutoTunesResponse", name: "DescribeDomainAutoTunesResponse")
    DescribeDomainChangeProgressRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#DescribeDomainChangeProgressRequest", name: "DescribeDomainChangeProgressRequest")
    DescribeDomainChangeProgressResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#DescribeDomainChangeProgressResponse", name: "DescribeDomainChangeProgressResponse")
    DescribeElasticsearchDomainConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#DescribeElasticsearchDomainConfigRequest", name: "DescribeElasticsearchDomainConfigRequest")
    DescribeElasticsearchDomainConfigResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#DescribeElasticsearchDomainConfigResponse", name: "DescribeElasticsearchDomainConfigResponse")
    DescribeElasticsearchDomainRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#DescribeElasticsearchDomainRequest", name: "DescribeElasticsearchDomainRequest")
    DescribeElasticsearchDomainResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#DescribeElasticsearchDomainResponse", name: "DescribeElasticsearchDomainResponse")
    DescribeElasticsearchDomainsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#DescribeElasticsearchDomainsRequest", name: "DescribeElasticsearchDomainsRequest")
    DescribeElasticsearchDomainsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#DescribeElasticsearchDomainsResponse", name: "DescribeElasticsearchDomainsResponse")
    DescribeElasticsearchInstanceTypeLimitsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#DescribeElasticsearchInstanceTypeLimitsRequest", name: "DescribeElasticsearchInstanceTypeLimitsRequest")
    DescribeElasticsearchInstanceTypeLimitsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#DescribeElasticsearchInstanceTypeLimitsResponse", name: "DescribeElasticsearchInstanceTypeLimitsResponse")
    DescribeInboundCrossClusterSearchConnectionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#DescribeInboundCrossClusterSearchConnectionsRequest", name: "DescribeInboundCrossClusterSearchConnectionsRequest")
    DescribeInboundCrossClusterSearchConnectionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#DescribeInboundCrossClusterSearchConnectionsResponse", name: "DescribeInboundCrossClusterSearchConnectionsResponse")
    DescribeOutboundCrossClusterSearchConnectionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#DescribeOutboundCrossClusterSearchConnectionsRequest", name: "DescribeOutboundCrossClusterSearchConnectionsRequest")
    DescribeOutboundCrossClusterSearchConnectionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#DescribeOutboundCrossClusterSearchConnectionsResponse", name: "DescribeOutboundCrossClusterSearchConnectionsResponse")
    DescribePackagesFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#DescribePackagesFilter", name: "DescribePackagesFilter")
    DescribePackagesFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticsearchservice#DescribePackagesFilterList", name: "DescribePackagesFilterList")
    DescribePackagesFilterName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.elasticsearchservice#DescribePackagesFilterName", name: "DescribePackagesFilterName")
    DescribePackagesFilterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticsearchservice#DescribePackagesFilterValue", name: "DescribePackagesFilterValue", traits: {"smithy.api#pattern" => "^[0-9a-zA-Z\\*\\.\\\\/\\?-]*$"})
    DescribePackagesFilterValues = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticsearchservice#DescribePackagesFilterValues", name: "DescribePackagesFilterValues", traits: {"smithy.api#length" => {"min" => 1}})
    DescribePackagesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#DescribePackagesRequest", name: "DescribePackagesRequest")
    DescribePackagesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#DescribePackagesResponse", name: "DescribePackagesResponse")
    DescribeReservedElasticsearchInstanceOfferingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#DescribeReservedElasticsearchInstanceOfferingsRequest", name: "DescribeReservedElasticsearchInstanceOfferingsRequest")
    DescribeReservedElasticsearchInstanceOfferingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#DescribeReservedElasticsearchInstanceOfferingsResponse", name: "DescribeReservedElasticsearchInstanceOfferingsResponse")
    DescribeReservedElasticsearchInstancesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#DescribeReservedElasticsearchInstancesRequest", name: "DescribeReservedElasticsearchInstancesRequest")
    DescribeReservedElasticsearchInstancesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#DescribeReservedElasticsearchInstancesResponse", name: "DescribeReservedElasticsearchInstancesResponse")
    DescribeVpcEndpointsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#DescribeVpcEndpointsRequest", name: "DescribeVpcEndpointsRequest")
    DescribeVpcEndpointsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#DescribeVpcEndpointsResponse", name: "DescribeVpcEndpointsResponse")
    Description = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticsearchservice#Description", name: "Description")
    DisableTimestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.elasticsearchservice#DisableTimestamp", name: "DisableTimestamp")
    DisabledOperationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#DisabledOperationException", name: "DisabledOperationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    DissociatePackageRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#DissociatePackageRequest", name: "DissociatePackageRequest")
    DissociatePackageResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#DissociatePackageResponse", name: "DissociatePackageResponse")
    DomainArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticsearchservice#DomainArn", name: "DomainArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^arn:aws[a-z\\-]*:[a-z]+:[a-z0-9\\-]+:[0-9]+:domain\\/[a-z0-9\\-]+$"})
    DomainEndpointOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#DomainEndpointOptions", name: "DomainEndpointOptions")
    DomainEndpointOptionsStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#DomainEndpointOptionsStatus", name: "DomainEndpointOptionsStatus")
    DomainId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticsearchservice#DomainId", name: "DomainId", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    DomainInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#DomainInfo", name: "DomainInfo")
    DomainInfoList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticsearchservice#DomainInfoList", name: "DomainInfoList")
    DomainInformation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#DomainInformation", name: "DomainInformation")
    DomainName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticsearchservice#DomainName", name: "DomainName", traits: {"smithy.api#length" => {"min" => 3, "max" => 28}, "smithy.api#pattern" => "^[a-z][a-z0-9\\-]+$"})
    DomainNameFqdn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticsearchservice#DomainNameFqdn", name: "DomainNameFqdn", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^(((?!-)[A-Za-z0-9-]{0,62}[A-Za-z0-9])\\.)+((?!-)[A-Za-z0-9-]{1,62}[A-Za-z0-9])$"})
    DomainNameList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticsearchservice#DomainNameList", name: "DomainNameList")
    DomainPackageDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#DomainPackageDetails", name: "DomainPackageDetails")
    DomainPackageDetailsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticsearchservice#DomainPackageDetailsList", name: "DomainPackageDetailsList")
    DomainPackageStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.elasticsearchservice#DomainPackageStatus", name: "DomainPackageStatus")
    DomainProcessingStatusType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.elasticsearchservice#DomainProcessingStatusType", name: "DomainProcessingStatusType")
    Double = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.elasticsearchservice#Double", name: "Double")
    DryRun = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.elasticsearchservice#DryRun", name: "DryRun")
    DryRunResults = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#DryRunResults", name: "DryRunResults")
    Duration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#Duration", name: "Duration")
    DurationValue = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.elasticsearchservice#DurationValue", name: "DurationValue", traits: {"smithy.api#range" => {"min" => 1, "max" => 24}})
    EBSOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#EBSOptions", name: "EBSOptions")
    EBSOptionsStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#EBSOptionsStatus", name: "EBSOptionsStatus")
    ESPartitionInstanceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.elasticsearchservice#ESPartitionInstanceType", name: "ESPartitionInstanceType")
    ESWarmPartitionInstanceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.elasticsearchservice#ESWarmPartitionInstanceType", name: "ESWarmPartitionInstanceType")
    ElasticsearchClusterConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#ElasticsearchClusterConfig", name: "ElasticsearchClusterConfig")
    ElasticsearchClusterConfigStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#ElasticsearchClusterConfigStatus", name: "ElasticsearchClusterConfigStatus")
    ElasticsearchDomainConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#ElasticsearchDomainConfig", name: "ElasticsearchDomainConfig")
    ElasticsearchDomainStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#ElasticsearchDomainStatus", name: "ElasticsearchDomainStatus")
    ElasticsearchDomainStatusList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticsearchservice#ElasticsearchDomainStatusList", name: "ElasticsearchDomainStatusList")
    ElasticsearchInstanceTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticsearchservice#ElasticsearchInstanceTypeList", name: "ElasticsearchInstanceTypeList")
    ElasticsearchVersionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticsearchservice#ElasticsearchVersionList", name: "ElasticsearchVersionList")
    ElasticsearchVersionStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#ElasticsearchVersionStatus", name: "ElasticsearchVersionStatus")
    ElasticsearchVersionString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticsearchservice#ElasticsearchVersionString", name: "ElasticsearchVersionString", traits: {"smithy.api#pattern" => "^[0-9]{1}\\.[0-9]{1,2}$|^OpenSearch_[0-9]{1,2}\\.[0-9]{1,2}$|^OS_[0-9]{1,2}\\.[0-9]{1,2}$"})
    EncryptionAtRestOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#EncryptionAtRestOptions", name: "EncryptionAtRestOptions")
    EncryptionAtRestOptionsStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#EncryptionAtRestOptionsStatus", name: "EncryptionAtRestOptionsStatus")
    Endpoint = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticsearchservice#Endpoint", name: "Endpoint", traits: {"smithy.api#pattern" => "^[A-Za-z0-9\\-\\.]+$"})
    EndpointsMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.elasticsearchservice#EndpointsMap", name: "EndpointsMap")
    EngineType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.elasticsearchservice#EngineType", name: "EngineType")
    ErrorDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#ErrorDetails", name: "ErrorDetails")
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticsearchservice#ErrorMessage", name: "ErrorMessage")
    ErrorType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticsearchservice#ErrorType", name: "ErrorType")
    Filter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#Filter", name: "Filter")
    FilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticsearchservice#FilterList", name: "FilterList")
    GUID = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticsearchservice#GUID", name: "GUID", traits: {"smithy.api#pattern" => "^\\p{XDigit}{8}-\\p{XDigit}{4}-\\p{XDigit}{4}-\\p{XDigit}{4}-\\p{XDigit}{12}$"})
    GUIDList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticsearchservice#GUIDList", name: "GUIDList")
    GetCompatibleElasticsearchVersionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#GetCompatibleElasticsearchVersionsRequest", name: "GetCompatibleElasticsearchVersionsRequest")
    GetCompatibleElasticsearchVersionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#GetCompatibleElasticsearchVersionsResponse", name: "GetCompatibleElasticsearchVersionsResponse")
    GetPackageVersionHistoryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#GetPackageVersionHistoryRequest", name: "GetPackageVersionHistoryRequest")
    GetPackageVersionHistoryResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#GetPackageVersionHistoryResponse", name: "GetPackageVersionHistoryResponse")
    GetUpgradeHistoryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#GetUpgradeHistoryRequest", name: "GetUpgradeHistoryRequest")
    GetUpgradeHistoryResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#GetUpgradeHistoryResponse", name: "GetUpgradeHistoryResponse")
    GetUpgradeStatusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#GetUpgradeStatusRequest", name: "GetUpgradeStatusRequest")
    GetUpgradeStatusResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#GetUpgradeStatusResponse", name: "GetUpgradeStatusResponse")
    IdentityPoolId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticsearchservice#IdentityPoolId", name: "IdentityPoolId", traits: {"smithy.api#length" => {"min" => 1, "max" => 55}, "smithy.api#pattern" => "^[\\w-]+:[0-9a-f-]+$"})
    InboundCrossClusterSearchConnection = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#InboundCrossClusterSearchConnection", name: "InboundCrossClusterSearchConnection")
    InboundCrossClusterSearchConnectionStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#InboundCrossClusterSearchConnectionStatus", name: "InboundCrossClusterSearchConnectionStatus")
    InboundCrossClusterSearchConnectionStatusCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.elasticsearchservice#InboundCrossClusterSearchConnectionStatusCode", name: "InboundCrossClusterSearchConnectionStatusCode")
    InboundCrossClusterSearchConnections = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticsearchservice#InboundCrossClusterSearchConnections", name: "InboundCrossClusterSearchConnections")
    InitiatedBy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.elasticsearchservice#InitiatedBy", name: "InitiatedBy")
    InstanceCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.elasticsearchservice#InstanceCount", name: "InstanceCount", traits: {"smithy.api#range" => {"min" => 1}})
    InstanceCountLimits = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#InstanceCountLimits", name: "InstanceCountLimits")
    InstanceLimits = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#InstanceLimits", name: "InstanceLimits")
    InstanceRole = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticsearchservice#InstanceRole", name: "InstanceRole")
    Integer = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.elasticsearchservice#Integer", name: "Integer", traits: {"smithy.api#default" => 0})
    IntegerClass = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.elasticsearchservice#IntegerClass", name: "IntegerClass")
    InternalException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#InternalException", name: "InternalException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    InvalidPaginationTokenException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#InvalidPaginationTokenException", name: "InvalidPaginationTokenException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidTypeException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#InvalidTypeException", name: "InvalidTypeException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    Issue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticsearchservice#Issue", name: "Issue")
    Issues = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticsearchservice#Issues", name: "Issues")
    KmsKeyId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticsearchservice#KmsKeyId", name: "KmsKeyId", traits: {"smithy.api#length" => {"min" => 1, "max" => 500}})
    LastUpdated = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.elasticsearchservice#LastUpdated", name: "LastUpdated")
    LimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#LimitExceededException", name: "LimitExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    LimitName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticsearchservice#LimitName", name: "LimitName")
    LimitValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticsearchservice#LimitValue", name: "LimitValue")
    LimitValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticsearchservice#LimitValueList", name: "LimitValueList")
    Limits = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#Limits", name: "Limits")
    LimitsByRole = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.elasticsearchservice#LimitsByRole", name: "LimitsByRole")
    ListDomainNamesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#ListDomainNamesRequest", name: "ListDomainNamesRequest")
    ListDomainNamesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#ListDomainNamesResponse", name: "ListDomainNamesResponse")
    ListDomainsForPackageRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#ListDomainsForPackageRequest", name: "ListDomainsForPackageRequest")
    ListDomainsForPackageResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#ListDomainsForPackageResponse", name: "ListDomainsForPackageResponse")
    ListElasticsearchInstanceTypesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#ListElasticsearchInstanceTypesRequest", name: "ListElasticsearchInstanceTypesRequest")
    ListElasticsearchInstanceTypesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#ListElasticsearchInstanceTypesResponse", name: "ListElasticsearchInstanceTypesResponse")
    ListElasticsearchVersionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#ListElasticsearchVersionsRequest", name: "ListElasticsearchVersionsRequest")
    ListElasticsearchVersionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#ListElasticsearchVersionsResponse", name: "ListElasticsearchVersionsResponse")
    ListPackagesForDomainRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#ListPackagesForDomainRequest", name: "ListPackagesForDomainRequest")
    ListPackagesForDomainResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#ListPackagesForDomainResponse", name: "ListPackagesForDomainResponse")
    ListTagsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#ListTagsRequest", name: "ListTagsRequest")
    ListTagsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#ListTagsResponse", name: "ListTagsResponse")
    ListVpcEndpointAccessRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#ListVpcEndpointAccessRequest", name: "ListVpcEndpointAccessRequest")
    ListVpcEndpointAccessResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#ListVpcEndpointAccessResponse", name: "ListVpcEndpointAccessResponse")
    ListVpcEndpointsForDomainRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#ListVpcEndpointsForDomainRequest", name: "ListVpcEndpointsForDomainRequest")
    ListVpcEndpointsForDomainResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#ListVpcEndpointsForDomainResponse", name: "ListVpcEndpointsForDomainResponse")
    ListVpcEndpointsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#ListVpcEndpointsRequest", name: "ListVpcEndpointsRequest")
    ListVpcEndpointsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#ListVpcEndpointsResponse", name: "ListVpcEndpointsResponse")
    LogPublishingOption = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#LogPublishingOption", name: "LogPublishingOption")
    LogPublishingOptions = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.elasticsearchservice#LogPublishingOptions", name: "LogPublishingOptions")
    LogPublishingOptionsStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#LogPublishingOptionsStatus", name: "LogPublishingOptionsStatus")
    LogType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.elasticsearchservice#LogType", name: "LogType")
    MasterUserOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#MasterUserOptions", name: "MasterUserOptions")
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.elasticsearchservice#MaxResults", name: "MaxResults", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"max" => 100}})
    MaximumInstanceCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.elasticsearchservice#MaximumInstanceCount", name: "MaximumInstanceCount", traits: {"smithy.api#default" => 0})
    Message = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticsearchservice#Message", name: "Message", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    MinimumInstanceCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.elasticsearchservice#MinimumInstanceCount", name: "MinimumInstanceCount", traits: {"smithy.api#default" => 0})
    ModifyingProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#ModifyingProperties", name: "ModifyingProperties")
    ModifyingPropertiesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticsearchservice#ModifyingPropertiesList", name: "ModifyingPropertiesList")
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticsearchservice#NextToken", name: "NextToken")
    NodeToNodeEncryptionOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#NodeToNodeEncryptionOptions", name: "NodeToNodeEncryptionOptions")
    NodeToNodeEncryptionOptionsStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#NodeToNodeEncryptionOptionsStatus", name: "NodeToNodeEncryptionOptionsStatus")
    NonEmptyString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticsearchservice#NonEmptyString", name: "NonEmptyString", traits: {"smithy.api#length" => {"min" => 1}})
    OptionState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.elasticsearchservice#OptionState", name: "OptionState")
    OptionStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#OptionStatus", name: "OptionStatus")
    OutboundCrossClusterSearchConnection = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#OutboundCrossClusterSearchConnection", name: "OutboundCrossClusterSearchConnection")
    OutboundCrossClusterSearchConnectionStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#OutboundCrossClusterSearchConnectionStatus", name: "OutboundCrossClusterSearchConnectionStatus")
    OutboundCrossClusterSearchConnectionStatusCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.elasticsearchservice#OutboundCrossClusterSearchConnectionStatusCode", name: "OutboundCrossClusterSearchConnectionStatusCode")
    OutboundCrossClusterSearchConnections = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticsearchservice#OutboundCrossClusterSearchConnections", name: "OutboundCrossClusterSearchConnections")
    OverallChangeStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.elasticsearchservice#OverallChangeStatus", name: "OverallChangeStatus")
    OwnerId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticsearchservice#OwnerId", name: "OwnerId", traits: {"smithy.api#length" => {"min" => 12, "max" => 12}})
    PackageDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticsearchservice#PackageDescription", name: "PackageDescription", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    PackageDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#PackageDetails", name: "PackageDetails")
    PackageDetailsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticsearchservice#PackageDetailsList", name: "PackageDetailsList")
    PackageID = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticsearchservice#PackageID", name: "PackageID")
    PackageName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticsearchservice#PackageName", name: "PackageName", traits: {"smithy.api#length" => {"min" => 3, "max" => 28}, "smithy.api#pattern" => "^[a-z][a-z0-9\\-]+$"})
    PackageSource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#PackageSource", name: "PackageSource")
    PackageStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.elasticsearchservice#PackageStatus", name: "PackageStatus")
    PackageType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.elasticsearchservice#PackageType", name: "PackageType")
    PackageVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticsearchservice#PackageVersion", name: "PackageVersion")
    PackageVersionHistory = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#PackageVersionHistory", name: "PackageVersionHistory")
    PackageVersionHistoryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticsearchservice#PackageVersionHistoryList", name: "PackageVersionHistoryList")
    Password = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticsearchservice#Password", name: "Password", traits: {"smithy.api#length" => {"min" => 8}, "smithy.api#sensitive" => {}})
    PolicyDocument = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticsearchservice#PolicyDocument", name: "PolicyDocument")
    PrincipalType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.elasticsearchservice#PrincipalType", name: "PrincipalType")
    PropertyValueType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.elasticsearchservice#PropertyValueType", name: "PropertyValueType")
    PurchaseReservedElasticsearchInstanceOfferingRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#PurchaseReservedElasticsearchInstanceOfferingRequest", name: "PurchaseReservedElasticsearchInstanceOfferingRequest")
    PurchaseReservedElasticsearchInstanceOfferingResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#PurchaseReservedElasticsearchInstanceOfferingResponse", name: "PurchaseReservedElasticsearchInstanceOfferingResponse")
    RecurringCharge = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#RecurringCharge", name: "RecurringCharge")
    RecurringChargeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticsearchservice#RecurringChargeList", name: "RecurringChargeList")
    ReferencePath = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticsearchservice#ReferencePath", name: "ReferencePath")
    Region = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticsearchservice#Region", name: "Region")
    RejectInboundCrossClusterSearchConnectionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#RejectInboundCrossClusterSearchConnectionRequest", name: "RejectInboundCrossClusterSearchConnectionRequest")
    RejectInboundCrossClusterSearchConnectionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#RejectInboundCrossClusterSearchConnectionResponse", name: "RejectInboundCrossClusterSearchConnectionResponse")
    RemoveTagsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#RemoveTagsRequest", name: "RemoveTagsRequest")
    ReservationToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticsearchservice#ReservationToken", name: "ReservationToken", traits: {"smithy.api#length" => {"min" => 5, "max" => 64}})
    ReservedElasticsearchInstance = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#ReservedElasticsearchInstance", name: "ReservedElasticsearchInstance")
    ReservedElasticsearchInstanceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticsearchservice#ReservedElasticsearchInstanceList", name: "ReservedElasticsearchInstanceList")
    ReservedElasticsearchInstanceOffering = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#ReservedElasticsearchInstanceOffering", name: "ReservedElasticsearchInstanceOffering")
    ReservedElasticsearchInstanceOfferingList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticsearchservice#ReservedElasticsearchInstanceOfferingList", name: "ReservedElasticsearchInstanceOfferingList")
    ReservedElasticsearchInstancePaymentOption = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.elasticsearchservice#ReservedElasticsearchInstancePaymentOption", name: "ReservedElasticsearchInstancePaymentOption")
    ResourceAlreadyExistsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#ResourceAlreadyExistsException", name: "ResourceAlreadyExistsException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    RevokeVpcEndpointAccessRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#RevokeVpcEndpointAccessRequest", name: "RevokeVpcEndpointAccessRequest")
    RevokeVpcEndpointAccessResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#RevokeVpcEndpointAccessResponse", name: "RevokeVpcEndpointAccessResponse")
    RoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticsearchservice#RoleArn", name: "RoleArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}})
    RollbackOnDisable = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.elasticsearchservice#RollbackOnDisable", name: "RollbackOnDisable")
    S3BucketName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticsearchservice#S3BucketName", name: "S3BucketName", traits: {"smithy.api#length" => {"min" => 3, "max" => 63}})
    S3Key = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticsearchservice#S3Key", name: "S3Key")
    SAMLEntityId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticsearchservice#SAMLEntityId", name: "SAMLEntityId", traits: {"smithy.api#length" => {"min" => 8, "max" => 512}})
    SAMLIdp = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#SAMLIdp", name: "SAMLIdp")
    SAMLMetadata = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticsearchservice#SAMLMetadata", name: "SAMLMetadata", traits: {"smithy.api#length" => {"min" => 1, "max" => 1048576}})
    SAMLOptionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#SAMLOptionsInput", name: "SAMLOptionsInput")
    SAMLOptionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#SAMLOptionsOutput", name: "SAMLOptionsOutput")
    ScheduledAutoTuneActionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.elasticsearchservice#ScheduledAutoTuneActionType", name: "ScheduledAutoTuneActionType")
    ScheduledAutoTuneDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticsearchservice#ScheduledAutoTuneDescription", name: "ScheduledAutoTuneDescription")
    ScheduledAutoTuneDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#ScheduledAutoTuneDetails", name: "ScheduledAutoTuneDetails")
    ScheduledAutoTuneSeverityType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.elasticsearchservice#ScheduledAutoTuneSeverityType", name: "ScheduledAutoTuneSeverityType")
    ServiceSoftwareOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#ServiceSoftwareOptions", name: "ServiceSoftwareOptions")
    ServiceUrl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticsearchservice#ServiceUrl", name: "ServiceUrl")
    SnapshotOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#SnapshotOptions", name: "SnapshotOptions")
    SnapshotOptionsStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#SnapshotOptionsStatus", name: "SnapshotOptionsStatus")
    StartAt = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.elasticsearchservice#StartAt", name: "StartAt")
    StartElasticsearchServiceSoftwareUpdateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#StartElasticsearchServiceSoftwareUpdateRequest", name: "StartElasticsearchServiceSoftwareUpdateRequest")
    StartElasticsearchServiceSoftwareUpdateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#StartElasticsearchServiceSoftwareUpdateResponse", name: "StartElasticsearchServiceSoftwareUpdateResponse")
    StartTimestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.elasticsearchservice#StartTimestamp", name: "StartTimestamp")
    StorageSubTypeName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticsearchservice#StorageSubTypeName", name: "StorageSubTypeName")
    StorageType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#StorageType", name: "StorageType")
    StorageTypeLimit = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#StorageTypeLimit", name: "StorageTypeLimit")
    StorageTypeLimitList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticsearchservice#StorageTypeLimitList", name: "StorageTypeLimitList")
    StorageTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticsearchservice#StorageTypeList", name: "StorageTypeList")
    StorageTypeName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticsearchservice#StorageTypeName", name: "StorageTypeName")
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticsearchservice#String", name: "String")
    StringList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticsearchservice#StringList", name: "StringList")
    TLSSecurityPolicy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.elasticsearchservice#TLSSecurityPolicy", name: "TLSSecurityPolicy")
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#Tag", name: "Tag")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticsearchservice#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticsearchservice#TagList", name: "TagList")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticsearchservice#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    TimeUnit = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.elasticsearchservice#TimeUnit", name: "TimeUnit")
    TotalNumberOfStages = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.elasticsearchservice#TotalNumberOfStages", name: "TotalNumberOfStages", traits: {"smithy.api#default" => 0})
    UIntValue = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.elasticsearchservice#UIntValue", name: "UIntValue", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}})
    UpdateElasticsearchDomainConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#UpdateElasticsearchDomainConfigRequest", name: "UpdateElasticsearchDomainConfigRequest")
    UpdateElasticsearchDomainConfigResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#UpdateElasticsearchDomainConfigResponse", name: "UpdateElasticsearchDomainConfigResponse")
    UpdatePackageRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#UpdatePackageRequest", name: "UpdatePackageRequest")
    UpdatePackageResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#UpdatePackageResponse", name: "UpdatePackageResponse")
    UpdateTimestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.elasticsearchservice#UpdateTimestamp", name: "UpdateTimestamp")
    UpdateVpcEndpointRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#UpdateVpcEndpointRequest", name: "UpdateVpcEndpointRequest")
    UpdateVpcEndpointResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#UpdateVpcEndpointResponse", name: "UpdateVpcEndpointResponse")
    UpgradeElasticsearchDomainRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#UpgradeElasticsearchDomainRequest", name: "UpgradeElasticsearchDomainRequest")
    UpgradeElasticsearchDomainResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#UpgradeElasticsearchDomainResponse", name: "UpgradeElasticsearchDomainResponse")
    UpgradeHistory = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#UpgradeHistory", name: "UpgradeHistory")
    UpgradeHistoryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticsearchservice#UpgradeHistoryList", name: "UpgradeHistoryList")
    UpgradeName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticsearchservice#UpgradeName", name: "UpgradeName")
    UpgradeStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.elasticsearchservice#UpgradeStatus", name: "UpgradeStatus")
    UpgradeStep = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.elasticsearchservice#UpgradeStep", name: "UpgradeStep")
    UpgradeStepItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#UpgradeStepItem", name: "UpgradeStepItem")
    UpgradeStepsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticsearchservice#UpgradeStepsList", name: "UpgradeStepsList")
    UserPoolId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticsearchservice#UserPoolId", name: "UserPoolId", traits: {"smithy.api#length" => {"min" => 1, "max" => 55}, "smithy.api#pattern" => "^[\\w-]+_[0-9a-zA-Z]+$"})
    Username = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticsearchservice#Username", name: "Username", traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#sensitive" => {}})
    VPCDerivedInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#VPCDerivedInfo", name: "VPCDerivedInfo")
    VPCDerivedInfoStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#VPCDerivedInfoStatus", name: "VPCDerivedInfoStatus")
    VPCOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#VPCOptions", name: "VPCOptions")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValueStringList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticsearchservice#ValueStringList", name: "ValueStringList", traits: {"smithy.api#length" => {"min" => 1}})
    VolumeType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.elasticsearchservice#VolumeType", name: "VolumeType")
    VpcEndpoint = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#VpcEndpoint", name: "VpcEndpoint")
    VpcEndpointError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#VpcEndpointError", name: "VpcEndpointError")
    VpcEndpointErrorCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.elasticsearchservice#VpcEndpointErrorCode", name: "VpcEndpointErrorCode")
    VpcEndpointErrorList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticsearchservice#VpcEndpointErrorList", name: "VpcEndpointErrorList")
    VpcEndpointId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticsearchservice#VpcEndpointId", name: "VpcEndpointId", traits: {"smithy.api#length" => {"min" => 5, "max" => 256}, "smithy.api#pattern" => "^aos-[a-zA-Z0-9]*$"})
    VpcEndpointIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticsearchservice#VpcEndpointIdList", name: "VpcEndpointIdList")
    VpcEndpointStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.elasticsearchservice#VpcEndpointStatus", name: "VpcEndpointStatus")
    VpcEndpointSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#VpcEndpointSummary", name: "VpcEndpointSummary")
    VpcEndpointSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticsearchservice#VpcEndpointSummaryList", name: "VpcEndpointSummaryList")
    VpcEndpoints = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticsearchservice#VpcEndpoints", name: "VpcEndpoints")
    ZoneAwarenessConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticsearchservice#ZoneAwarenessConfig", name: "ZoneAwarenessConfig")

    AcceptInboundCrossClusterSearchConnectionRequest.add_member(:cross_cluster_search_connection_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CrossClusterSearchConnectionId, location_name: "CrossClusterSearchConnectionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AcceptInboundCrossClusterSearchConnectionRequest.type = Types::AcceptInboundCrossClusterSearchConnectionRequest
    AcceptInboundCrossClusterSearchConnectionResponse.add_member(:cross_cluster_search_connection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InboundCrossClusterSearchConnection, location_name: "CrossClusterSearchConnection"))
    AcceptInboundCrossClusterSearchConnectionResponse.type = Types::AcceptInboundCrossClusterSearchConnectionResponse
    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    AccessDeniedException.type = Types::AccessDeniedException
    AccessPoliciesStatus.add_member(:options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyDocument, location_name: "Options", traits: {"smithy.api#required" => {}}))
    AccessPoliciesStatus.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptionStatus, location_name: "Status", traits: {"smithy.api#required" => {}}))
    AccessPoliciesStatus.type = Types::AccessPoliciesStatus
    AddTagsRequest.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: "ARN", traits: {"smithy.api#required" => {}}))
    AddTagsRequest.add_member(:tag_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "TagList", traits: {"smithy.api#required" => {}}))
    AddTagsRequest.type = Types::AddTagsRequest
    AdditionalLimit.add_member(:limit_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitName, location_name: "LimitName"))
    AdditionalLimit.add_member(:limit_values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitValueList, location_name: "LimitValues"))
    AdditionalLimit.type = Types::AdditionalLimit
    AdditionalLimitList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdditionalLimit)
    AdvancedOptions.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    AdvancedOptions.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    AdvancedOptionsStatus.add_member(:options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdvancedOptions, location_name: "Options", traits: {"smithy.api#required" => {}}))
    AdvancedOptionsStatus.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptionStatus, location_name: "Status", traits: {"smithy.api#required" => {}}))
    AdvancedOptionsStatus.type = Types::AdvancedOptionsStatus
    AdvancedSecurityOptions.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "Enabled"))
    AdvancedSecurityOptions.add_member(:internal_user_database_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "InternalUserDatabaseEnabled"))
    AdvancedSecurityOptions.add_member(:saml_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SAMLOptionsOutput, location_name: "SAMLOptions"))
    AdvancedSecurityOptions.add_member(:anonymous_auth_disable_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisableTimestamp, location_name: "AnonymousAuthDisableDate"))
    AdvancedSecurityOptions.add_member(:anonymous_auth_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "AnonymousAuthEnabled"))
    AdvancedSecurityOptions.type = Types::AdvancedSecurityOptions
    AdvancedSecurityOptionsInput.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "Enabled"))
    AdvancedSecurityOptionsInput.add_member(:internal_user_database_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "InternalUserDatabaseEnabled"))
    AdvancedSecurityOptionsInput.add_member(:master_user_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MasterUserOptions, location_name: "MasterUserOptions"))
    AdvancedSecurityOptionsInput.add_member(:saml_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SAMLOptionsInput, location_name: "SAMLOptions"))
    AdvancedSecurityOptionsInput.add_member(:anonymous_auth_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "AnonymousAuthEnabled"))
    AdvancedSecurityOptionsInput.type = Types::AdvancedSecurityOptionsInput
    AdvancedSecurityOptionsStatus.add_member(:options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdvancedSecurityOptions, location_name: "Options", traits: {"smithy.api#required" => {}}))
    AdvancedSecurityOptionsStatus.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptionStatus, location_name: "Status", traits: {"smithy.api#required" => {}}))
    AdvancedSecurityOptionsStatus.type = Types::AdvancedSecurityOptionsStatus
    AssociatePackageRequest.add_member(:package_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PackageID, location_name: "PackageID", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociatePackageRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociatePackageRequest.type = Types::AssociatePackageRequest
    AssociatePackageResponse.add_member(:domain_package_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainPackageDetails, location_name: "DomainPackageDetails"))
    AssociatePackageResponse.type = Types::AssociatePackageResponse
    AuthorizeVpcEndpointAccessRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AuthorizeVpcEndpointAccessRequest.add_member(:account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSAccount, location_name: "Account", traits: {"smithy.api#required" => {}}))
    AuthorizeVpcEndpointAccessRequest.type = Types::AuthorizeVpcEndpointAccessRequest
    AuthorizeVpcEndpointAccessResponse.add_member(:authorized_principal, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizedPrincipal, location_name: "AuthorizedPrincipal", traits: {"smithy.api#required" => {}}))
    AuthorizeVpcEndpointAccessResponse.type = Types::AuthorizeVpcEndpointAccessResponse
    AuthorizedPrincipal.add_member(:principal_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PrincipalType, location_name: "PrincipalType"))
    AuthorizedPrincipal.add_member(:principal, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Principal"))
    AuthorizedPrincipal.type = Types::AuthorizedPrincipal
    AuthorizedPrincipalList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizedPrincipal)
    AutoTune.add_member(:auto_tune_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutoTuneType, location_name: "AutoTuneType"))
    AutoTune.add_member(:auto_tune_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutoTuneDetails, location_name: "AutoTuneDetails"))
    AutoTune.type = Types::AutoTune
    AutoTuneDesiredState.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    AutoTuneDesiredState.add_member(:disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    AutoTuneDetails.add_member(:scheduled_auto_tune_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledAutoTuneDetails, location_name: "ScheduledAutoTuneDetails"))
    AutoTuneDetails.type = Types::AutoTuneDetails
    AutoTuneList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutoTune)
    AutoTuneMaintenanceSchedule.add_member(:start_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartAt, location_name: "StartAt"))
    AutoTuneMaintenanceSchedule.add_member(:duration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Duration, location_name: "Duration"))
    AutoTuneMaintenanceSchedule.add_member(:cron_expression_for_recurrence, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "CronExpressionForRecurrence"))
    AutoTuneMaintenanceSchedule.type = Types::AutoTuneMaintenanceSchedule
    AutoTuneMaintenanceScheduleList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutoTuneMaintenanceSchedule)
    AutoTuneOptions.add_member(:desired_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutoTuneDesiredState, location_name: "DesiredState"))
    AutoTuneOptions.add_member(:rollback_on_disable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RollbackOnDisable, location_name: "RollbackOnDisable"))
    AutoTuneOptions.add_member(:maintenance_schedules, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutoTuneMaintenanceScheduleList, location_name: "MaintenanceSchedules"))
    AutoTuneOptions.type = Types::AutoTuneOptions
    AutoTuneOptionsInput.add_member(:desired_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutoTuneDesiredState, location_name: "DesiredState"))
    AutoTuneOptionsInput.add_member(:maintenance_schedules, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutoTuneMaintenanceScheduleList, location_name: "MaintenanceSchedules"))
    AutoTuneOptionsInput.type = Types::AutoTuneOptionsInput
    AutoTuneOptionsOutput.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutoTuneState, location_name: "State"))
    AutoTuneOptionsOutput.add_member(:error_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ErrorMessage"))
    AutoTuneOptionsOutput.type = Types::AutoTuneOptionsOutput
    AutoTuneOptionsStatus.add_member(:options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutoTuneOptions, location_name: "Options"))
    AutoTuneOptionsStatus.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutoTuneStatus, location_name: "Status"))
    AutoTuneOptionsStatus.type = Types::AutoTuneOptionsStatus
    AutoTuneState.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    AutoTuneState.add_member(:disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    AutoTuneState.add_member(:enable_in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ENABLE_IN_PROGRESS", traits: {"smithy.api#enumValue" => "ENABLE_IN_PROGRESS"}))
    AutoTuneState.add_member(:disable_in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISABLE_IN_PROGRESS", traits: {"smithy.api#enumValue" => "DISABLE_IN_PROGRESS"}))
    AutoTuneState.add_member(:disabled_and_rollback_scheduled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISABLED_AND_ROLLBACK_SCHEDULED", traits: {"smithy.api#enumValue" => "DISABLED_AND_ROLLBACK_SCHEDULED"}))
    AutoTuneState.add_member(:disabled_and_rollback_in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISABLED_AND_ROLLBACK_IN_PROGRESS", traits: {"smithy.api#enumValue" => "DISABLED_AND_ROLLBACK_IN_PROGRESS"}))
    AutoTuneState.add_member(:disabled_and_rollback_complete, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISABLED_AND_ROLLBACK_COMPLETE", traits: {"smithy.api#enumValue" => "DISABLED_AND_ROLLBACK_COMPLETE"}))
    AutoTuneState.add_member(:disabled_and_rollback_error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISABLED_AND_ROLLBACK_ERROR", traits: {"smithy.api#enumValue" => "DISABLED_AND_ROLLBACK_ERROR"}))
    AutoTuneState.add_member(:error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ERROR", traits: {"smithy.api#enumValue" => "ERROR"}))
    AutoTuneStatus.add_member(:creation_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTimestamp, location_name: "CreationDate", traits: {"smithy.api#required" => {}}))
    AutoTuneStatus.add_member(:update_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTimestamp, location_name: "UpdateDate", traits: {"smithy.api#required" => {}}))
    AutoTuneStatus.add_member(:update_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UIntValue, location_name: "UpdateVersion", traits: {"smithy.api#default" => 0}))
    AutoTuneStatus.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutoTuneState, location_name: "State", traits: {"smithy.api#required" => {}}))
    AutoTuneStatus.add_member(:error_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ErrorMessage"))
    AutoTuneStatus.add_member(:pending_deletion, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "PendingDeletion"))
    AutoTuneStatus.type = Types::AutoTuneStatus
    AutoTuneType.add_member(:scheduled_action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SCHEDULED_ACTION", traits: {"smithy.api#enumValue" => "SCHEDULED_ACTION"}))
    BaseException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    BaseException.type = Types::BaseException
    CancelDomainConfigChangeRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CancelDomainConfigChangeRequest.add_member(:dry_run, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DryRun, location_name: "DryRun"))
    CancelDomainConfigChangeRequest.type = Types::CancelDomainConfigChangeRequest
    CancelDomainConfigChangeResponse.add_member(:dry_run, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DryRun, location_name: "DryRun"))
    CancelDomainConfigChangeResponse.add_member(:cancelled_change_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GUIDList, location_name: "CancelledChangeIds"))
    CancelDomainConfigChangeResponse.add_member(:cancelled_change_properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CancelledChangePropertyList, location_name: "CancelledChangeProperties"))
    CancelDomainConfigChangeResponse.type = Types::CancelDomainConfigChangeResponse
    CancelElasticsearchServiceSoftwareUpdateRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: "DomainName", traits: {"smithy.api#required" => {}}))
    CancelElasticsearchServiceSoftwareUpdateRequest.type = Types::CancelElasticsearchServiceSoftwareUpdateRequest
    CancelElasticsearchServiceSoftwareUpdateResponse.add_member(:service_software_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceSoftwareOptions, location_name: "ServiceSoftwareOptions"))
    CancelElasticsearchServiceSoftwareUpdateResponse.type = Types::CancelElasticsearchServiceSoftwareUpdateResponse
    CancelledChangeProperty.add_member(:property_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "PropertyName"))
    CancelledChangeProperty.add_member(:cancelled_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "CancelledValue"))
    CancelledChangeProperty.add_member(:active_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ActiveValue"))
    CancelledChangeProperty.type = Types::CancelledChangeProperty
    CancelledChangePropertyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CancelledChangeProperty)
    ChangeProgressDetails.add_member(:change_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GUID, location_name: "ChangeId"))
    ChangeProgressDetails.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    ChangeProgressDetails.add_member(:config_change_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigChangeStatus, location_name: "ConfigChangeStatus"))
    ChangeProgressDetails.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTimestamp, location_name: "StartTime"))
    ChangeProgressDetails.add_member(:last_updated_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTimestamp, location_name: "LastUpdatedTime"))
    ChangeProgressDetails.add_member(:initiated_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InitiatedBy, location_name: "InitiatedBy"))
    ChangeProgressDetails.type = Types::ChangeProgressDetails
    ChangeProgressStage.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeProgressStageName, location_name: "Name"))
    ChangeProgressStage.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeProgressStageStatus, location_name: "Status"))
    ChangeProgressStage.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    ChangeProgressStage.add_member(:last_updated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LastUpdated, location_name: "LastUpdated"))
    ChangeProgressStage.type = Types::ChangeProgressStage
    ChangeProgressStageList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeProgressStage)
    ChangeProgressStatusDetails.add_member(:change_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GUID, location_name: "ChangeId"))
    ChangeProgressStatusDetails.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTimestamp, location_name: "StartTime"))
    ChangeProgressStatusDetails.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OverallChangeStatus, location_name: "Status"))
    ChangeProgressStatusDetails.add_member(:pending_properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: "PendingProperties"))
    ChangeProgressStatusDetails.add_member(:completed_properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: "CompletedProperties"))
    ChangeProgressStatusDetails.add_member(:total_number_of_stages, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TotalNumberOfStages, location_name: "TotalNumberOfStages", traits: {"smithy.api#default" => 0}))
    ChangeProgressStatusDetails.add_member(:change_progress_stages, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeProgressStageList, location_name: "ChangeProgressStages"))
    ChangeProgressStatusDetails.add_member(:config_change_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigChangeStatus, location_name: "ConfigChangeStatus"))
    ChangeProgressStatusDetails.add_member(:last_updated_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTimestamp, location_name: "LastUpdatedTime"))
    ChangeProgressStatusDetails.add_member(:initiated_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InitiatedBy, location_name: "InitiatedBy"))
    ChangeProgressStatusDetails.type = Types::ChangeProgressStatusDetails
    CognitoOptions.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "Enabled"))
    CognitoOptions.add_member(:user_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolId, location_name: "UserPoolId"))
    CognitoOptions.add_member(:identity_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityPoolId, location_name: "IdentityPoolId"))
    CognitoOptions.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: "RoleArn"))
    CognitoOptions.type = Types::CognitoOptions
    CognitoOptionsStatus.add_member(:options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CognitoOptions, location_name: "Options", traits: {"smithy.api#required" => {}}))
    CognitoOptionsStatus.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptionStatus, location_name: "Status", traits: {"smithy.api#required" => {}}))
    CognitoOptionsStatus.type = Types::CognitoOptionsStatus
    ColdStorageOptions.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "Enabled", traits: {"smithy.api#required" => {}}))
    ColdStorageOptions.type = Types::ColdStorageOptions
    CompatibleElasticsearchVersionsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CompatibleVersionsMap)
    CompatibleVersionsMap.add_member(:source_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ElasticsearchVersionString, location_name: "SourceVersion"))
    CompatibleVersionsMap.add_member(:target_versions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ElasticsearchVersionList, location_name: "TargetVersions"))
    CompatibleVersionsMap.type = Types::CompatibleVersionsMap
    ConfigChangeStatus.add_member(:pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PENDING", traits: {"smithy.api#enumValue" => "Pending"}))
    ConfigChangeStatus.add_member(:initializing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INITIALIZING", traits: {"smithy.api#enumValue" => "Initializing"}))
    ConfigChangeStatus.add_member(:validating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VALIDATING", traits: {"smithy.api#enumValue" => "Validating"}))
    ConfigChangeStatus.add_member(:validation_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VALIDATION_FAILED", traits: {"smithy.api#enumValue" => "ValidationFailed"}))
    ConfigChangeStatus.add_member(:applying_changes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "APPLYING_CHANGES", traits: {"smithy.api#enumValue" => "ApplyingChanges"}))
    ConfigChangeStatus.add_member(:completed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "COMPLETED", traits: {"smithy.api#enumValue" => "Completed"}))
    ConfigChangeStatus.add_member(:pending_user_input, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PENDING_USER_INPUT", traits: {"smithy.api#enumValue" => "PendingUserInput"}))
    ConfigChangeStatus.add_member(:cancelled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CANCELLED", traits: {"smithy.api#enumValue" => "Cancelled"}))
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ConflictException.type = Types::ConflictException
    CreateElasticsearchDomainRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: "DomainName", traits: {"smithy.api#required" => {}}))
    CreateElasticsearchDomainRequest.add_member(:elasticsearch_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ElasticsearchVersionString, location_name: "ElasticsearchVersion"))
    CreateElasticsearchDomainRequest.add_member(:elasticsearch_cluster_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ElasticsearchClusterConfig, location_name: "ElasticsearchClusterConfig"))
    CreateElasticsearchDomainRequest.add_member(:ebs_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EBSOptions, location_name: "EBSOptions"))
    CreateElasticsearchDomainRequest.add_member(:access_policies, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyDocument, location_name: "AccessPolicies"))
    CreateElasticsearchDomainRequest.add_member(:snapshot_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotOptions, location_name: "SnapshotOptions"))
    CreateElasticsearchDomainRequest.add_member(:vpc_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VPCOptions, location_name: "VPCOptions"))
    CreateElasticsearchDomainRequest.add_member(:cognito_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CognitoOptions, location_name: "CognitoOptions"))
    CreateElasticsearchDomainRequest.add_member(:encryption_at_rest_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionAtRestOptions, location_name: "EncryptionAtRestOptions"))
    CreateElasticsearchDomainRequest.add_member(:node_to_node_encryption_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NodeToNodeEncryptionOptions, location_name: "NodeToNodeEncryptionOptions"))
    CreateElasticsearchDomainRequest.add_member(:advanced_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdvancedOptions, location_name: "AdvancedOptions"))
    CreateElasticsearchDomainRequest.add_member(:log_publishing_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogPublishingOptions, location_name: "LogPublishingOptions"))
    CreateElasticsearchDomainRequest.add_member(:domain_endpoint_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainEndpointOptions, location_name: "DomainEndpointOptions"))
    CreateElasticsearchDomainRequest.add_member(:advanced_security_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdvancedSecurityOptionsInput, location_name: "AdvancedSecurityOptions"))
    CreateElasticsearchDomainRequest.add_member(:auto_tune_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutoTuneOptionsInput, location_name: "AutoTuneOptions"))
    CreateElasticsearchDomainRequest.add_member(:tag_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "TagList"))
    CreateElasticsearchDomainRequest.type = Types::CreateElasticsearchDomainRequest
    CreateElasticsearchDomainResponse.add_member(:domain_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ElasticsearchDomainStatus, location_name: "DomainStatus"))
    CreateElasticsearchDomainResponse.type = Types::CreateElasticsearchDomainResponse
    CreateOutboundCrossClusterSearchConnectionRequest.add_member(:source_domain_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainInformation, location_name: "SourceDomainInfo", traits: {"smithy.api#required" => {}}))
    CreateOutboundCrossClusterSearchConnectionRequest.add_member(:destination_domain_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainInformation, location_name: "DestinationDomainInfo", traits: {"smithy.api#required" => {}}))
    CreateOutboundCrossClusterSearchConnectionRequest.add_member(:connection_alias, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionAlias, location_name: "ConnectionAlias", traits: {"smithy.api#required" => {}}))
    CreateOutboundCrossClusterSearchConnectionRequest.type = Types::CreateOutboundCrossClusterSearchConnectionRequest
    CreateOutboundCrossClusterSearchConnectionResponse.add_member(:source_domain_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainInformation, location_name: "SourceDomainInfo"))
    CreateOutboundCrossClusterSearchConnectionResponse.add_member(:destination_domain_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainInformation, location_name: "DestinationDomainInfo"))
    CreateOutboundCrossClusterSearchConnectionResponse.add_member(:connection_alias, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionAlias, location_name: "ConnectionAlias"))
    CreateOutboundCrossClusterSearchConnectionResponse.add_member(:connection_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutboundCrossClusterSearchConnectionStatus, location_name: "ConnectionStatus"))
    CreateOutboundCrossClusterSearchConnectionResponse.add_member(:cross_cluster_search_connection_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CrossClusterSearchConnectionId, location_name: "CrossClusterSearchConnectionId"))
    CreateOutboundCrossClusterSearchConnectionResponse.type = Types::CreateOutboundCrossClusterSearchConnectionResponse
    CreatePackageRequest.add_member(:package_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PackageName, location_name: "PackageName", traits: {"smithy.api#required" => {}}))
    CreatePackageRequest.add_member(:package_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PackageType, location_name: "PackageType", traits: {"smithy.api#required" => {}}))
    CreatePackageRequest.add_member(:package_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PackageDescription, location_name: "PackageDescription"))
    CreatePackageRequest.add_member(:package_source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PackageSource, location_name: "PackageSource", traits: {"smithy.api#required" => {}}))
    CreatePackageRequest.type = Types::CreatePackageRequest
    CreatePackageResponse.add_member(:package_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PackageDetails, location_name: "PackageDetails"))
    CreatePackageResponse.type = Types::CreatePackageResponse
    CreateVpcEndpointRequest.add_member(:domain_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainArn, location_name: "DomainArn", traits: {"smithy.api#required" => {}}))
    CreateVpcEndpointRequest.add_member(:vpc_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VPCOptions, location_name: "VpcOptions", traits: {"smithy.api#required" => {}}))
    CreateVpcEndpointRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken"))
    CreateVpcEndpointRequest.type = Types::CreateVpcEndpointRequest
    CreateVpcEndpointResponse.add_member(:vpc_endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpoint, location_name: "VpcEndpoint", traits: {"smithy.api#required" => {}}))
    CreateVpcEndpointResponse.type = Types::CreateVpcEndpointResponse
    DeleteElasticsearchDomainRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteElasticsearchDomainRequest.type = Types::DeleteElasticsearchDomainRequest
    DeleteElasticsearchDomainResponse.add_member(:domain_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ElasticsearchDomainStatus, location_name: "DomainStatus"))
    DeleteElasticsearchDomainResponse.type = Types::DeleteElasticsearchDomainResponse
    DeleteInboundCrossClusterSearchConnectionRequest.add_member(:cross_cluster_search_connection_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CrossClusterSearchConnectionId, location_name: "CrossClusterSearchConnectionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteInboundCrossClusterSearchConnectionRequest.type = Types::DeleteInboundCrossClusterSearchConnectionRequest
    DeleteInboundCrossClusterSearchConnectionResponse.add_member(:cross_cluster_search_connection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InboundCrossClusterSearchConnection, location_name: "CrossClusterSearchConnection"))
    DeleteInboundCrossClusterSearchConnectionResponse.type = Types::DeleteInboundCrossClusterSearchConnectionResponse
    DeleteOutboundCrossClusterSearchConnectionRequest.add_member(:cross_cluster_search_connection_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CrossClusterSearchConnectionId, location_name: "CrossClusterSearchConnectionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteOutboundCrossClusterSearchConnectionRequest.type = Types::DeleteOutboundCrossClusterSearchConnectionRequest
    DeleteOutboundCrossClusterSearchConnectionResponse.add_member(:cross_cluster_search_connection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutboundCrossClusterSearchConnection, location_name: "CrossClusterSearchConnection"))
    DeleteOutboundCrossClusterSearchConnectionResponse.type = Types::DeleteOutboundCrossClusterSearchConnectionResponse
    DeletePackageRequest.add_member(:package_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PackageID, location_name: "PackageID", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeletePackageRequest.type = Types::DeletePackageRequest
    DeletePackageResponse.add_member(:package_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PackageDetails, location_name: "PackageDetails"))
    DeletePackageResponse.type = Types::DeletePackageResponse
    DeleteVpcEndpointRequest.add_member(:vpc_endpoint_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpointId, location_name: "VpcEndpointId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteVpcEndpointRequest.type = Types::DeleteVpcEndpointRequest
    DeleteVpcEndpointResponse.add_member(:vpc_endpoint_summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpointSummary, location_name: "VpcEndpointSummary", traits: {"smithy.api#required" => {}}))
    DeleteVpcEndpointResponse.type = Types::DeleteVpcEndpointResponse
    DeploymentStatus.add_member(:pending_update, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PENDING_UPDATE", traits: {"smithy.api#enumValue" => "PENDING_UPDATE"}))
    DeploymentStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    DeploymentStatus.add_member(:completed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    DeploymentStatus.add_member(:not_eligible, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NOT_ELIGIBLE", traits: {"smithy.api#enumValue" => "NOT_ELIGIBLE"}))
    DeploymentStatus.add_member(:eligible, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ELIGIBLE", traits: {"smithy.api#enumValue" => "ELIGIBLE"}))
    DescribeDomainAutoTunesRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeDomainAutoTunesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", traits: {"smithy.api#default" => 0}))
    DescribeDomainAutoTunesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeDomainAutoTunesRequest.type = Types::DescribeDomainAutoTunesRequest
    DescribeDomainAutoTunesResponse.add_member(:auto_tunes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutoTuneList, location_name: "AutoTunes"))
    DescribeDomainAutoTunesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeDomainAutoTunesResponse.type = Types::DescribeDomainAutoTunesResponse
    DescribeDomainChangeProgressRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeDomainChangeProgressRequest.add_member(:change_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GUID, location_name: "ChangeId", traits: {"smithy.api#httpQuery" => "changeid"}))
    DescribeDomainChangeProgressRequest.type = Types::DescribeDomainChangeProgressRequest
    DescribeDomainChangeProgressResponse.add_member(:change_progress_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeProgressStatusDetails, location_name: "ChangeProgressStatus"))
    DescribeDomainChangeProgressResponse.type = Types::DescribeDomainChangeProgressResponse
    DescribeElasticsearchDomainConfigRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeElasticsearchDomainConfigRequest.type = Types::DescribeElasticsearchDomainConfigRequest
    DescribeElasticsearchDomainConfigResponse.add_member(:domain_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ElasticsearchDomainConfig, location_name: "DomainConfig", traits: {"smithy.api#required" => {}}))
    DescribeElasticsearchDomainConfigResponse.type = Types::DescribeElasticsearchDomainConfigResponse
    DescribeElasticsearchDomainRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeElasticsearchDomainRequest.type = Types::DescribeElasticsearchDomainRequest
    DescribeElasticsearchDomainResponse.add_member(:domain_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ElasticsearchDomainStatus, location_name: "DomainStatus", traits: {"smithy.api#required" => {}}))
    DescribeElasticsearchDomainResponse.type = Types::DescribeElasticsearchDomainResponse
    DescribeElasticsearchDomainsRequest.add_member(:domain_names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainNameList, location_name: "DomainNames", traits: {"smithy.api#required" => {}}))
    DescribeElasticsearchDomainsRequest.type = Types::DescribeElasticsearchDomainsRequest
    DescribeElasticsearchDomainsResponse.add_member(:domain_status_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ElasticsearchDomainStatusList, location_name: "DomainStatusList", traits: {"smithy.api#required" => {}}))
    DescribeElasticsearchDomainsResponse.type = Types::DescribeElasticsearchDomainsResponse
    DescribeElasticsearchInstanceTypeLimitsRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: "DomainName", traits: {"smithy.api#httpQuery" => "domainName"}))
    DescribeElasticsearchInstanceTypeLimitsRequest.add_member(:instance_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ESPartitionInstanceType, location_name: "InstanceType", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeElasticsearchInstanceTypeLimitsRequest.add_member(:elasticsearch_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ElasticsearchVersionString, location_name: "ElasticsearchVersion", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeElasticsearchInstanceTypeLimitsRequest.type = Types::DescribeElasticsearchInstanceTypeLimitsRequest
    DescribeElasticsearchInstanceTypeLimitsResponse.add_member(:limits_by_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitsByRole, location_name: "LimitsByRole"))
    DescribeElasticsearchInstanceTypeLimitsResponse.type = Types::DescribeElasticsearchInstanceTypeLimitsResponse
    DescribeInboundCrossClusterSearchConnectionsRequest.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeInboundCrossClusterSearchConnectionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", traits: {"smithy.api#default" => 0}))
    DescribeInboundCrossClusterSearchConnectionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeInboundCrossClusterSearchConnectionsRequest.type = Types::DescribeInboundCrossClusterSearchConnectionsRequest
    DescribeInboundCrossClusterSearchConnectionsResponse.add_member(:cross_cluster_search_connections, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InboundCrossClusterSearchConnections, location_name: "CrossClusterSearchConnections"))
    DescribeInboundCrossClusterSearchConnectionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeInboundCrossClusterSearchConnectionsResponse.type = Types::DescribeInboundCrossClusterSearchConnectionsResponse
    DescribeOutboundCrossClusterSearchConnectionsRequest.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeOutboundCrossClusterSearchConnectionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", traits: {"smithy.api#default" => 0}))
    DescribeOutboundCrossClusterSearchConnectionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeOutboundCrossClusterSearchConnectionsRequest.type = Types::DescribeOutboundCrossClusterSearchConnectionsRequest
    DescribeOutboundCrossClusterSearchConnectionsResponse.add_member(:cross_cluster_search_connections, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutboundCrossClusterSearchConnections, location_name: "CrossClusterSearchConnections"))
    DescribeOutboundCrossClusterSearchConnectionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeOutboundCrossClusterSearchConnectionsResponse.type = Types::DescribeOutboundCrossClusterSearchConnectionsResponse
    DescribePackagesFilter.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribePackagesFilterName, location_name: "Name"))
    DescribePackagesFilter.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribePackagesFilterValues, location_name: "Value"))
    DescribePackagesFilter.type = Types::DescribePackagesFilter
    DescribePackagesFilterList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribePackagesFilter)
    DescribePackagesFilterName.add_member(:package_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PackageID", traits: {"smithy.api#enumValue" => "PackageID"}))
    DescribePackagesFilterName.add_member(:package_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PackageName", traits: {"smithy.api#enumValue" => "PackageName"}))
    DescribePackagesFilterName.add_member(:package_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PackageStatus", traits: {"smithy.api#enumValue" => "PackageStatus"}))
    DescribePackagesFilterValues.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribePackagesFilterValue)
    DescribePackagesRequest.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribePackagesFilterList, location_name: "Filters"))
    DescribePackagesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", traits: {"smithy.api#default" => 0}))
    DescribePackagesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribePackagesRequest.type = Types::DescribePackagesRequest
    DescribePackagesResponse.add_member(:package_details_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PackageDetailsList, location_name: "PackageDetailsList"))
    DescribePackagesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribePackagesResponse.type = Types::DescribePackagesResponse
    DescribeReservedElasticsearchInstanceOfferingsRequest.add_member(:reserved_elasticsearch_instance_offering_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GUID, location_name: "ReservedElasticsearchInstanceOfferingId", traits: {"smithy.api#httpQuery" => "offeringId"}))
    DescribeReservedElasticsearchInstanceOfferingsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "maxResults"}))
    DescribeReservedElasticsearchInstanceOfferingsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    DescribeReservedElasticsearchInstanceOfferingsRequest.type = Types::DescribeReservedElasticsearchInstanceOfferingsRequest
    DescribeReservedElasticsearchInstanceOfferingsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeReservedElasticsearchInstanceOfferingsResponse.add_member(:reserved_elasticsearch_instance_offerings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedElasticsearchInstanceOfferingList, location_name: "ReservedElasticsearchInstanceOfferings"))
    DescribeReservedElasticsearchInstanceOfferingsResponse.type = Types::DescribeReservedElasticsearchInstanceOfferingsResponse
    DescribeReservedElasticsearchInstancesRequest.add_member(:reserved_elasticsearch_instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GUID, location_name: "ReservedElasticsearchInstanceId", traits: {"smithy.api#httpQuery" => "reservationId"}))
    DescribeReservedElasticsearchInstancesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "maxResults"}))
    DescribeReservedElasticsearchInstancesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    DescribeReservedElasticsearchInstancesRequest.type = Types::DescribeReservedElasticsearchInstancesRequest
    DescribeReservedElasticsearchInstancesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeReservedElasticsearchInstancesResponse.add_member(:reserved_elasticsearch_instances, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedElasticsearchInstanceList, location_name: "ReservedElasticsearchInstances"))
    DescribeReservedElasticsearchInstancesResponse.type = Types::DescribeReservedElasticsearchInstancesResponse
    DescribeVpcEndpointsRequest.add_member(:vpc_endpoint_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpointIdList, location_name: "VpcEndpointIds", traits: {"smithy.api#required" => {}}))
    DescribeVpcEndpointsRequest.type = Types::DescribeVpcEndpointsRequest
    DescribeVpcEndpointsResponse.add_member(:vpc_endpoints, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpoints, location_name: "VpcEndpoints", traits: {"smithy.api#required" => {}}))
    DescribeVpcEndpointsResponse.add_member(:vpc_endpoint_errors, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpointErrorList, location_name: "VpcEndpointErrors", traits: {"smithy.api#required" => {}}))
    DescribeVpcEndpointsResponse.type = Types::DescribeVpcEndpointsResponse
    DisabledOperationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    DisabledOperationException.type = Types::DisabledOperationException
    DissociatePackageRequest.add_member(:package_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PackageID, location_name: "PackageID", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DissociatePackageRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DissociatePackageRequest.type = Types::DissociatePackageRequest
    DissociatePackageResponse.add_member(:domain_package_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainPackageDetails, location_name: "DomainPackageDetails"))
    DissociatePackageResponse.type = Types::DissociatePackageResponse
    DomainEndpointOptions.add_member(:enforce_https, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "EnforceHTTPS"))
    DomainEndpointOptions.add_member(:tls_security_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TLSSecurityPolicy, location_name: "TLSSecurityPolicy"))
    DomainEndpointOptions.add_member(:custom_endpoint_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "CustomEndpointEnabled"))
    DomainEndpointOptions.add_member(:custom_endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainNameFqdn, location_name: "CustomEndpoint"))
    DomainEndpointOptions.add_member(:custom_endpoint_certificate_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: "CustomEndpointCertificateArn"))
    DomainEndpointOptions.type = Types::DomainEndpointOptions
    DomainEndpointOptionsStatus.add_member(:options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainEndpointOptions, location_name: "Options", traits: {"smithy.api#required" => {}}))
    DomainEndpointOptionsStatus.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptionStatus, location_name: "Status", traits: {"smithy.api#required" => {}}))
    DomainEndpointOptionsStatus.type = Types::DomainEndpointOptionsStatus
    DomainInfo.add_member(:domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: "DomainName"))
    DomainInfo.add_member(:engine_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EngineType, location_name: "EngineType"))
    DomainInfo.type = Types::DomainInfo
    DomainInfoList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainInfo)
    DomainInformation.add_member(:owner_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OwnerId, location_name: "OwnerId"))
    DomainInformation.add_member(:domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: "DomainName", traits: {"smithy.api#required" => {}}))
    DomainInformation.add_member(:region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Region, location_name: "Region"))
    DomainInformation.type = Types::DomainInformation
    DomainNameList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName)
    DomainPackageDetails.add_member(:package_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PackageID, location_name: "PackageID"))
    DomainPackageDetails.add_member(:package_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PackageName, location_name: "PackageName"))
    DomainPackageDetails.add_member(:package_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PackageType, location_name: "PackageType"))
    DomainPackageDetails.add_member(:last_updated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LastUpdated, location_name: "LastUpdated"))
    DomainPackageDetails.add_member(:domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: "DomainName"))
    DomainPackageDetails.add_member(:domain_package_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainPackageStatus, location_name: "DomainPackageStatus"))
    DomainPackageDetails.add_member(:package_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PackageVersion, location_name: "PackageVersion"))
    DomainPackageDetails.add_member(:reference_path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReferencePath, location_name: "ReferencePath"))
    DomainPackageDetails.add_member(:error_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDetails, location_name: "ErrorDetails"))
    DomainPackageDetails.type = Types::DomainPackageDetails
    DomainPackageDetailsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainPackageDetails)
    DomainPackageStatus.add_member(:associating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ASSOCIATING", traits: {"smithy.api#enumValue" => "ASSOCIATING"}))
    DomainPackageStatus.add_member(:association_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ASSOCIATION_FAILED", traits: {"smithy.api#enumValue" => "ASSOCIATION_FAILED"}))
    DomainPackageStatus.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    DomainPackageStatus.add_member(:dissociating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISSOCIATING", traits: {"smithy.api#enumValue" => "DISSOCIATING"}))
    DomainPackageStatus.add_member(:dissociation_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISSOCIATION_FAILED", traits: {"smithy.api#enumValue" => "DISSOCIATION_FAILED"}))
    DomainProcessingStatusType.add_member(:creating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CREATING", traits: {"smithy.api#enumValue" => "Creating"}))
    DomainProcessingStatusType.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACTIVE", traits: {"smithy.api#enumValue" => "Active"}))
    DomainProcessingStatusType.add_member(:modifying, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MODIFYING", traits: {"smithy.api#enumValue" => "Modifying"}))
    DomainProcessingStatusType.add_member(:upgrading, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UPGRADING", traits: {"smithy.api#enumValue" => "UpgradingEngineVersion"}))
    DomainProcessingStatusType.add_member(:updating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UPDATING", traits: {"smithy.api#enumValue" => "UpdatingServiceSoftware"}))
    DomainProcessingStatusType.add_member(:isolated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ISOLATED", traits: {"smithy.api#enumValue" => "Isolated"}))
    DomainProcessingStatusType.add_member(:deleting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETING", traits: {"smithy.api#enumValue" => "Deleting"}))
    DryRunResults.add_member(:deployment_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentType, location_name: "DeploymentType"))
    DryRunResults.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    DryRunResults.type = Types::DryRunResults
    Duration.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DurationValue, location_name: "Value"))
    Duration.add_member(:unit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimeUnit, location_name: "Unit"))
    Duration.type = Types::Duration
    EBSOptions.add_member(:ebs_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "EBSEnabled"))
    EBSOptions.add_member(:volume_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VolumeType, location_name: "VolumeType"))
    EBSOptions.add_member(:volume_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerClass, location_name: "VolumeSize"))
    EBSOptions.add_member(:iops, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerClass, location_name: "Iops"))
    EBSOptions.add_member(:throughput, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerClass, location_name: "Throughput"))
    EBSOptions.type = Types::EBSOptions
    EBSOptionsStatus.add_member(:options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EBSOptions, location_name: "Options", traits: {"smithy.api#required" => {}}))
    EBSOptionsStatus.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptionStatus, location_name: "Status", traits: {"smithy.api#required" => {}}))
    EBSOptionsStatus.type = Types::EBSOptionsStatus
    ESPartitionInstanceType.add_member(:m3_medium_elasticsearch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m3_medium_elasticsearch", traits: {"smithy.api#enumValue" => "m3.medium.elasticsearch"}))
    ESPartitionInstanceType.add_member(:m3_large_elasticsearch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m3_large_elasticsearch", traits: {"smithy.api#enumValue" => "m3.large.elasticsearch"}))
    ESPartitionInstanceType.add_member(:m3_xlarge_elasticsearch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m3_xlarge_elasticsearch", traits: {"smithy.api#enumValue" => "m3.xlarge.elasticsearch"}))
    ESPartitionInstanceType.add_member(:m3_2xlarge_elasticsearch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m3_2xlarge_elasticsearch", traits: {"smithy.api#enumValue" => "m3.2xlarge.elasticsearch"}))
    ESPartitionInstanceType.add_member(:m4_large_elasticsearch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m4_large_elasticsearch", traits: {"smithy.api#enumValue" => "m4.large.elasticsearch"}))
    ESPartitionInstanceType.add_member(:m4_xlarge_elasticsearch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m4_xlarge_elasticsearch", traits: {"smithy.api#enumValue" => "m4.xlarge.elasticsearch"}))
    ESPartitionInstanceType.add_member(:m4_2xlarge_elasticsearch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m4_2xlarge_elasticsearch", traits: {"smithy.api#enumValue" => "m4.2xlarge.elasticsearch"}))
    ESPartitionInstanceType.add_member(:m4_4xlarge_elasticsearch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m4_4xlarge_elasticsearch", traits: {"smithy.api#enumValue" => "m4.4xlarge.elasticsearch"}))
    ESPartitionInstanceType.add_member(:m4_10xlarge_elasticsearch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m4_10xlarge_elasticsearch", traits: {"smithy.api#enumValue" => "m4.10xlarge.elasticsearch"}))
    ESPartitionInstanceType.add_member(:m5_large_elasticsearch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m5_large_elasticsearch", traits: {"smithy.api#enumValue" => "m5.large.elasticsearch"}))
    ESPartitionInstanceType.add_member(:m5_xlarge_elasticsearch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m5_xlarge_elasticsearch", traits: {"smithy.api#enumValue" => "m5.xlarge.elasticsearch"}))
    ESPartitionInstanceType.add_member(:m5_2xlarge_elasticsearch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m5_2xlarge_elasticsearch", traits: {"smithy.api#enumValue" => "m5.2xlarge.elasticsearch"}))
    ESPartitionInstanceType.add_member(:m5_4xlarge_elasticsearch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m5_4xlarge_elasticsearch", traits: {"smithy.api#enumValue" => "m5.4xlarge.elasticsearch"}))
    ESPartitionInstanceType.add_member(:m5_12xlarge_elasticsearch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m5_12xlarge_elasticsearch", traits: {"smithy.api#enumValue" => "m5.12xlarge.elasticsearch"}))
    ESPartitionInstanceType.add_member(:r5_large_elasticsearch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r5_large_elasticsearch", traits: {"smithy.api#enumValue" => "r5.large.elasticsearch"}))
    ESPartitionInstanceType.add_member(:r5_xlarge_elasticsearch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r5_xlarge_elasticsearch", traits: {"smithy.api#enumValue" => "r5.xlarge.elasticsearch"}))
    ESPartitionInstanceType.add_member(:r5_2xlarge_elasticsearch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r5_2xlarge_elasticsearch", traits: {"smithy.api#enumValue" => "r5.2xlarge.elasticsearch"}))
    ESPartitionInstanceType.add_member(:r5_4xlarge_elasticsearch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r5_4xlarge_elasticsearch", traits: {"smithy.api#enumValue" => "r5.4xlarge.elasticsearch"}))
    ESPartitionInstanceType.add_member(:r5_12xlarge_elasticsearch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r5_12xlarge_elasticsearch", traits: {"smithy.api#enumValue" => "r5.12xlarge.elasticsearch"}))
    ESPartitionInstanceType.add_member(:c5_large_elasticsearch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c5_large_elasticsearch", traits: {"smithy.api#enumValue" => "c5.large.elasticsearch"}))
    ESPartitionInstanceType.add_member(:c5_xlarge_elasticsearch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c5_xlarge_elasticsearch", traits: {"smithy.api#enumValue" => "c5.xlarge.elasticsearch"}))
    ESPartitionInstanceType.add_member(:c5_2xlarge_elasticsearch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c5_2xlarge_elasticsearch", traits: {"smithy.api#enumValue" => "c5.2xlarge.elasticsearch"}))
    ESPartitionInstanceType.add_member(:c5_4xlarge_elasticsearch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c5_4xlarge_elasticsearch", traits: {"smithy.api#enumValue" => "c5.4xlarge.elasticsearch"}))
    ESPartitionInstanceType.add_member(:c5_9xlarge_elasticsearch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c5_9xlarge_elasticsearch", traits: {"smithy.api#enumValue" => "c5.9xlarge.elasticsearch"}))
    ESPartitionInstanceType.add_member(:c5_18xlarge_elasticsearch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c5_18xlarge_elasticsearch", traits: {"smithy.api#enumValue" => "c5.18xlarge.elasticsearch"}))
    ESPartitionInstanceType.add_member(:ultrawarm1_medium_elasticsearch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ultrawarm1_medium_elasticsearch", traits: {"smithy.api#enumValue" => "ultrawarm1.medium.elasticsearch"}))
    ESPartitionInstanceType.add_member(:ultrawarm1_large_elasticsearch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ultrawarm1_large_elasticsearch", traits: {"smithy.api#enumValue" => "ultrawarm1.large.elasticsearch"}))
    ESPartitionInstanceType.add_member(:t2_micro_elasticsearch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "t2_micro_elasticsearch", traits: {"smithy.api#enumValue" => "t2.micro.elasticsearch"}))
    ESPartitionInstanceType.add_member(:t2_small_elasticsearch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "t2_small_elasticsearch", traits: {"smithy.api#enumValue" => "t2.small.elasticsearch"}))
    ESPartitionInstanceType.add_member(:t2_medium_elasticsearch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "t2_medium_elasticsearch", traits: {"smithy.api#enumValue" => "t2.medium.elasticsearch"}))
    ESPartitionInstanceType.add_member(:r3_large_elasticsearch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r3_large_elasticsearch", traits: {"smithy.api#enumValue" => "r3.large.elasticsearch"}))
    ESPartitionInstanceType.add_member(:r3_xlarge_elasticsearch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r3_xlarge_elasticsearch", traits: {"smithy.api#enumValue" => "r3.xlarge.elasticsearch"}))
    ESPartitionInstanceType.add_member(:r3_2xlarge_elasticsearch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r3_2xlarge_elasticsearch", traits: {"smithy.api#enumValue" => "r3.2xlarge.elasticsearch"}))
    ESPartitionInstanceType.add_member(:r3_4xlarge_elasticsearch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r3_4xlarge_elasticsearch", traits: {"smithy.api#enumValue" => "r3.4xlarge.elasticsearch"}))
    ESPartitionInstanceType.add_member(:r3_8xlarge_elasticsearch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r3_8xlarge_elasticsearch", traits: {"smithy.api#enumValue" => "r3.8xlarge.elasticsearch"}))
    ESPartitionInstanceType.add_member(:i2_xlarge_elasticsearch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "i2_xlarge_elasticsearch", traits: {"smithy.api#enumValue" => "i2.xlarge.elasticsearch"}))
    ESPartitionInstanceType.add_member(:i2_2xlarge_elasticsearch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "i2_2xlarge_elasticsearch", traits: {"smithy.api#enumValue" => "i2.2xlarge.elasticsearch"}))
    ESPartitionInstanceType.add_member(:d2_xlarge_elasticsearch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "d2_xlarge_elasticsearch", traits: {"smithy.api#enumValue" => "d2.xlarge.elasticsearch"}))
    ESPartitionInstanceType.add_member(:d2_2xlarge_elasticsearch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "d2_2xlarge_elasticsearch", traits: {"smithy.api#enumValue" => "d2.2xlarge.elasticsearch"}))
    ESPartitionInstanceType.add_member(:d2_4xlarge_elasticsearch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "d2_4xlarge_elasticsearch", traits: {"smithy.api#enumValue" => "d2.4xlarge.elasticsearch"}))
    ESPartitionInstanceType.add_member(:d2_8xlarge_elasticsearch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "d2_8xlarge_elasticsearch", traits: {"smithy.api#enumValue" => "d2.8xlarge.elasticsearch"}))
    ESPartitionInstanceType.add_member(:c4_large_elasticsearch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c4_large_elasticsearch", traits: {"smithy.api#enumValue" => "c4.large.elasticsearch"}))
    ESPartitionInstanceType.add_member(:c4_xlarge_elasticsearch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c4_xlarge_elasticsearch", traits: {"smithy.api#enumValue" => "c4.xlarge.elasticsearch"}))
    ESPartitionInstanceType.add_member(:c4_2xlarge_elasticsearch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c4_2xlarge_elasticsearch", traits: {"smithy.api#enumValue" => "c4.2xlarge.elasticsearch"}))
    ESPartitionInstanceType.add_member(:c4_4xlarge_elasticsearch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c4_4xlarge_elasticsearch", traits: {"smithy.api#enumValue" => "c4.4xlarge.elasticsearch"}))
    ESPartitionInstanceType.add_member(:c4_8xlarge_elasticsearch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c4_8xlarge_elasticsearch", traits: {"smithy.api#enumValue" => "c4.8xlarge.elasticsearch"}))
    ESPartitionInstanceType.add_member(:r4_large_elasticsearch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r4_large_elasticsearch", traits: {"smithy.api#enumValue" => "r4.large.elasticsearch"}))
    ESPartitionInstanceType.add_member(:r4_xlarge_elasticsearch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r4_xlarge_elasticsearch", traits: {"smithy.api#enumValue" => "r4.xlarge.elasticsearch"}))
    ESPartitionInstanceType.add_member(:r4_2xlarge_elasticsearch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r4_2xlarge_elasticsearch", traits: {"smithy.api#enumValue" => "r4.2xlarge.elasticsearch"}))
    ESPartitionInstanceType.add_member(:r4_4xlarge_elasticsearch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r4_4xlarge_elasticsearch", traits: {"smithy.api#enumValue" => "r4.4xlarge.elasticsearch"}))
    ESPartitionInstanceType.add_member(:r4_8xlarge_elasticsearch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r4_8xlarge_elasticsearch", traits: {"smithy.api#enumValue" => "r4.8xlarge.elasticsearch"}))
    ESPartitionInstanceType.add_member(:r4_16xlarge_elasticsearch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r4_16xlarge_elasticsearch", traits: {"smithy.api#enumValue" => "r4.16xlarge.elasticsearch"}))
    ESPartitionInstanceType.add_member(:i3_large_elasticsearch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "i3_large_elasticsearch", traits: {"smithy.api#enumValue" => "i3.large.elasticsearch"}))
    ESPartitionInstanceType.add_member(:i3_xlarge_elasticsearch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "i3_xlarge_elasticsearch", traits: {"smithy.api#enumValue" => "i3.xlarge.elasticsearch"}))
    ESPartitionInstanceType.add_member(:i3_2xlarge_elasticsearch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "i3_2xlarge_elasticsearch", traits: {"smithy.api#enumValue" => "i3.2xlarge.elasticsearch"}))
    ESPartitionInstanceType.add_member(:i3_4xlarge_elasticsearch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "i3_4xlarge_elasticsearch", traits: {"smithy.api#enumValue" => "i3.4xlarge.elasticsearch"}))
    ESPartitionInstanceType.add_member(:i3_8xlarge_elasticsearch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "i3_8xlarge_elasticsearch", traits: {"smithy.api#enumValue" => "i3.8xlarge.elasticsearch"}))
    ESPartitionInstanceType.add_member(:i3_16xlarge_elasticsearch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "i3_16xlarge_elasticsearch", traits: {"smithy.api#enumValue" => "i3.16xlarge.elasticsearch"}))
    ESWarmPartitionInstanceType.add_member(:ultrawarm1_medium_elasticsearch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ultrawarm1_medium_elasticsearch", traits: {"smithy.api#enumValue" => "ultrawarm1.medium.elasticsearch"}))
    ESWarmPartitionInstanceType.add_member(:ultrawarm1_large_elasticsearch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ultrawarm1_large_elasticsearch", traits: {"smithy.api#enumValue" => "ultrawarm1.large.elasticsearch"}))
    ElasticsearchClusterConfig.add_member(:instance_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ESPartitionInstanceType, location_name: "InstanceType"))
    ElasticsearchClusterConfig.add_member(:instance_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerClass, location_name: "InstanceCount"))
    ElasticsearchClusterConfig.add_member(:dedicated_master_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "DedicatedMasterEnabled"))
    ElasticsearchClusterConfig.add_member(:zone_awareness_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "ZoneAwarenessEnabled"))
    ElasticsearchClusterConfig.add_member(:zone_awareness_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ZoneAwarenessConfig, location_name: "ZoneAwarenessConfig"))
    ElasticsearchClusterConfig.add_member(:dedicated_master_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ESPartitionInstanceType, location_name: "DedicatedMasterType"))
    ElasticsearchClusterConfig.add_member(:dedicated_master_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerClass, location_name: "DedicatedMasterCount"))
    ElasticsearchClusterConfig.add_member(:warm_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "WarmEnabled"))
    ElasticsearchClusterConfig.add_member(:warm_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ESWarmPartitionInstanceType, location_name: "WarmType"))
    ElasticsearchClusterConfig.add_member(:warm_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerClass, location_name: "WarmCount"))
    ElasticsearchClusterConfig.add_member(:cold_storage_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ColdStorageOptions, location_name: "ColdStorageOptions"))
    ElasticsearchClusterConfig.type = Types::ElasticsearchClusterConfig
    ElasticsearchClusterConfigStatus.add_member(:options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ElasticsearchClusterConfig, location_name: "Options", traits: {"smithy.api#required" => {}}))
    ElasticsearchClusterConfigStatus.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptionStatus, location_name: "Status", traits: {"smithy.api#required" => {}}))
    ElasticsearchClusterConfigStatus.type = Types::ElasticsearchClusterConfigStatus
    ElasticsearchDomainConfig.add_member(:elasticsearch_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ElasticsearchVersionStatus, location_name: "ElasticsearchVersion"))
    ElasticsearchDomainConfig.add_member(:elasticsearch_cluster_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ElasticsearchClusterConfigStatus, location_name: "ElasticsearchClusterConfig"))
    ElasticsearchDomainConfig.add_member(:ebs_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EBSOptionsStatus, location_name: "EBSOptions"))
    ElasticsearchDomainConfig.add_member(:access_policies, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPoliciesStatus, location_name: "AccessPolicies"))
    ElasticsearchDomainConfig.add_member(:snapshot_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotOptionsStatus, location_name: "SnapshotOptions"))
    ElasticsearchDomainConfig.add_member(:vpc_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VPCDerivedInfoStatus, location_name: "VPCOptions"))
    ElasticsearchDomainConfig.add_member(:cognito_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CognitoOptionsStatus, location_name: "CognitoOptions"))
    ElasticsearchDomainConfig.add_member(:encryption_at_rest_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionAtRestOptionsStatus, location_name: "EncryptionAtRestOptions"))
    ElasticsearchDomainConfig.add_member(:node_to_node_encryption_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NodeToNodeEncryptionOptionsStatus, location_name: "NodeToNodeEncryptionOptions"))
    ElasticsearchDomainConfig.add_member(:advanced_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdvancedOptionsStatus, location_name: "AdvancedOptions"))
    ElasticsearchDomainConfig.add_member(:log_publishing_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogPublishingOptionsStatus, location_name: "LogPublishingOptions"))
    ElasticsearchDomainConfig.add_member(:domain_endpoint_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainEndpointOptionsStatus, location_name: "DomainEndpointOptions"))
    ElasticsearchDomainConfig.add_member(:advanced_security_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdvancedSecurityOptionsStatus, location_name: "AdvancedSecurityOptions"))
    ElasticsearchDomainConfig.add_member(:auto_tune_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutoTuneOptionsStatus, location_name: "AutoTuneOptions"))
    ElasticsearchDomainConfig.add_member(:change_progress_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeProgressDetails, location_name: "ChangeProgressDetails"))
    ElasticsearchDomainConfig.add_member(:modifying_properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyingPropertiesList, location_name: "ModifyingProperties"))
    ElasticsearchDomainConfig.type = Types::ElasticsearchDomainConfig
    ElasticsearchDomainStatus.add_member(:domain_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainId, location_name: "DomainId", traits: {"smithy.api#required" => {}}))
    ElasticsearchDomainStatus.add_member(:domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: "DomainName", traits: {"smithy.api#required" => {}}))
    ElasticsearchDomainStatus.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: "ARN", traits: {"smithy.api#required" => {}}))
    ElasticsearchDomainStatus.add_member(:created, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "Created"))
    ElasticsearchDomainStatus.add_member(:deleted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "Deleted"))
    ElasticsearchDomainStatus.add_member(:endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUrl, location_name: "Endpoint"))
    ElasticsearchDomainStatus.add_member(:endpoints, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointsMap, location_name: "Endpoints"))
    ElasticsearchDomainStatus.add_member(:processing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "Processing"))
    ElasticsearchDomainStatus.add_member(:upgrade_processing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "UpgradeProcessing"))
    ElasticsearchDomainStatus.add_member(:elasticsearch_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ElasticsearchVersionString, location_name: "ElasticsearchVersion"))
    ElasticsearchDomainStatus.add_member(:elasticsearch_cluster_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ElasticsearchClusterConfig, location_name: "ElasticsearchClusterConfig", traits: {"smithy.api#required" => {}}))
    ElasticsearchDomainStatus.add_member(:ebs_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EBSOptions, location_name: "EBSOptions"))
    ElasticsearchDomainStatus.add_member(:access_policies, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyDocument, location_name: "AccessPolicies"))
    ElasticsearchDomainStatus.add_member(:snapshot_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotOptions, location_name: "SnapshotOptions"))
    ElasticsearchDomainStatus.add_member(:vpc_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VPCDerivedInfo, location_name: "VPCOptions"))
    ElasticsearchDomainStatus.add_member(:cognito_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CognitoOptions, location_name: "CognitoOptions"))
    ElasticsearchDomainStatus.add_member(:encryption_at_rest_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionAtRestOptions, location_name: "EncryptionAtRestOptions"))
    ElasticsearchDomainStatus.add_member(:node_to_node_encryption_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NodeToNodeEncryptionOptions, location_name: "NodeToNodeEncryptionOptions"))
    ElasticsearchDomainStatus.add_member(:advanced_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdvancedOptions, location_name: "AdvancedOptions"))
    ElasticsearchDomainStatus.add_member(:log_publishing_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogPublishingOptions, location_name: "LogPublishingOptions"))
    ElasticsearchDomainStatus.add_member(:service_software_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceSoftwareOptions, location_name: "ServiceSoftwareOptions"))
    ElasticsearchDomainStatus.add_member(:domain_endpoint_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainEndpointOptions, location_name: "DomainEndpointOptions"))
    ElasticsearchDomainStatus.add_member(:advanced_security_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdvancedSecurityOptions, location_name: "AdvancedSecurityOptions"))
    ElasticsearchDomainStatus.add_member(:auto_tune_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutoTuneOptionsOutput, location_name: "AutoTuneOptions"))
    ElasticsearchDomainStatus.add_member(:change_progress_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeProgressDetails, location_name: "ChangeProgressDetails"))
    ElasticsearchDomainStatus.add_member(:domain_processing_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainProcessingStatusType, location_name: "DomainProcessingStatus"))
    ElasticsearchDomainStatus.add_member(:modifying_properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyingPropertiesList, location_name: "ModifyingProperties"))
    ElasticsearchDomainStatus.type = Types::ElasticsearchDomainStatus
    ElasticsearchDomainStatusList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ElasticsearchDomainStatus)
    ElasticsearchInstanceTypeList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ESPartitionInstanceType)
    ElasticsearchVersionList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ElasticsearchVersionString)
    ElasticsearchVersionStatus.add_member(:options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ElasticsearchVersionString, location_name: "Options", traits: {"smithy.api#required" => {}}))
    ElasticsearchVersionStatus.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptionStatus, location_name: "Status", traits: {"smithy.api#required" => {}}))
    ElasticsearchVersionStatus.type = Types::ElasticsearchVersionStatus
    EncryptionAtRestOptions.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "Enabled"))
    EncryptionAtRestOptions.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "KmsKeyId"))
    EncryptionAtRestOptions.type = Types::EncryptionAtRestOptions
    EncryptionAtRestOptionsStatus.add_member(:options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionAtRestOptions, location_name: "Options", traits: {"smithy.api#required" => {}}))
    EncryptionAtRestOptionsStatus.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptionStatus, location_name: "Status", traits: {"smithy.api#required" => {}}))
    EncryptionAtRestOptionsStatus.type = Types::EncryptionAtRestOptionsStatus
    EndpointsMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    EndpointsMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUrl)
    EngineType.add_member(:open_search, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "OpenSearch", traits: {"smithy.api#enumValue" => "OpenSearch"}))
    EngineType.add_member(:elasticsearch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Elasticsearch", traits: {"smithy.api#enumValue" => "Elasticsearch"}))
    ErrorDetails.add_member(:error_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorType, location_name: "ErrorType"))
    ErrorDetails.add_member(:error_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "ErrorMessage"))
    ErrorDetails.type = Types::ErrorDetails
    Filter.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Name"))
    Filter.add_member(:values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValueStringList, location_name: "Values"))
    Filter.type = Types::Filter
    FilterList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Filter)
    GUIDList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GUID)
    GetCompatibleElasticsearchVersionsRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: "DomainName", traits: {"smithy.api#httpQuery" => "domainName"}))
    GetCompatibleElasticsearchVersionsRequest.type = Types::GetCompatibleElasticsearchVersionsRequest
    GetCompatibleElasticsearchVersionsResponse.add_member(:compatible_elasticsearch_versions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CompatibleElasticsearchVersionsList, location_name: "CompatibleElasticsearchVersions"))
    GetCompatibleElasticsearchVersionsResponse.type = Types::GetCompatibleElasticsearchVersionsResponse
    GetPackageVersionHistoryRequest.add_member(:package_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PackageID, location_name: "PackageID", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetPackageVersionHistoryRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "maxResults"}))
    GetPackageVersionHistoryRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    GetPackageVersionHistoryRequest.type = Types::GetPackageVersionHistoryRequest
    GetPackageVersionHistoryResponse.add_member(:package_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PackageID, location_name: "PackageID"))
    GetPackageVersionHistoryResponse.add_member(:package_version_history_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PackageVersionHistoryList, location_name: "PackageVersionHistoryList"))
    GetPackageVersionHistoryResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    GetPackageVersionHistoryResponse.type = Types::GetPackageVersionHistoryResponse
    GetUpgradeHistoryRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetUpgradeHistoryRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "maxResults"}))
    GetUpgradeHistoryRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    GetUpgradeHistoryRequest.type = Types::GetUpgradeHistoryRequest
    GetUpgradeHistoryResponse.add_member(:upgrade_histories, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpgradeHistoryList, location_name: "UpgradeHistories"))
    GetUpgradeHistoryResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    GetUpgradeHistoryResponse.type = Types::GetUpgradeHistoryResponse
    GetUpgradeStatusRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetUpgradeStatusRequest.type = Types::GetUpgradeStatusRequest
    GetUpgradeStatusResponse.add_member(:upgrade_step, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpgradeStep, location_name: "UpgradeStep"))
    GetUpgradeStatusResponse.add_member(:step_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpgradeStatus, location_name: "StepStatus"))
    GetUpgradeStatusResponse.add_member(:upgrade_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpgradeName, location_name: "UpgradeName"))
    GetUpgradeStatusResponse.type = Types::GetUpgradeStatusResponse
    InboundCrossClusterSearchConnection.add_member(:source_domain_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainInformation, location_name: "SourceDomainInfo"))
    InboundCrossClusterSearchConnection.add_member(:destination_domain_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainInformation, location_name: "DestinationDomainInfo"))
    InboundCrossClusterSearchConnection.add_member(:cross_cluster_search_connection_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CrossClusterSearchConnectionId, location_name: "CrossClusterSearchConnectionId"))
    InboundCrossClusterSearchConnection.add_member(:connection_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InboundCrossClusterSearchConnectionStatus, location_name: "ConnectionStatus"))
    InboundCrossClusterSearchConnection.type = Types::InboundCrossClusterSearchConnection
    InboundCrossClusterSearchConnectionStatus.add_member(:status_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InboundCrossClusterSearchConnectionStatusCode, location_name: "StatusCode"))
    InboundCrossClusterSearchConnectionStatus.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CrossClusterSearchConnectionStatusMessage, location_name: "Message"))
    InboundCrossClusterSearchConnectionStatus.type = Types::InboundCrossClusterSearchConnectionStatus
    InboundCrossClusterSearchConnectionStatusCode.add_member(:pending_acceptance, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PENDING_ACCEPTANCE", traits: {"smithy.api#enumValue" => "PENDING_ACCEPTANCE"}))
    InboundCrossClusterSearchConnectionStatusCode.add_member(:approved, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "APPROVED", traits: {"smithy.api#enumValue" => "APPROVED"}))
    InboundCrossClusterSearchConnectionStatusCode.add_member(:rejecting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "REJECTING", traits: {"smithy.api#enumValue" => "REJECTING"}))
    InboundCrossClusterSearchConnectionStatusCode.add_member(:rejected, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "REJECTED", traits: {"smithy.api#enumValue" => "REJECTED"}))
    InboundCrossClusterSearchConnectionStatusCode.add_member(:deleting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    InboundCrossClusterSearchConnectionStatusCode.add_member(:deleted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETED", traits: {"smithy.api#enumValue" => "DELETED"}))
    InboundCrossClusterSearchConnections.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: InboundCrossClusterSearchConnection)
    InitiatedBy.add_member(:customer, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CUSTOMER", traits: {"smithy.api#enumValue" => "CUSTOMER"}))
    InitiatedBy.add_member(:service, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SERVICE", traits: {"smithy.api#enumValue" => "SERVICE"}))
    InstanceCountLimits.add_member(:minimum_instance_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MinimumInstanceCount, location_name: "MinimumInstanceCount", traits: {"smithy.api#default" => 0}))
    InstanceCountLimits.add_member(:maximum_instance_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaximumInstanceCount, location_name: "MaximumInstanceCount", traits: {"smithy.api#default" => 0}))
    InstanceCountLimits.type = Types::InstanceCountLimits
    InstanceLimits.add_member(:instance_count_limits, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceCountLimits, location_name: "InstanceCountLimits"))
    InstanceLimits.type = Types::InstanceLimits
    InternalException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    InternalException.type = Types::InternalException
    InvalidPaginationTokenException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    InvalidPaginationTokenException.type = Types::InvalidPaginationTokenException
    InvalidTypeException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    InvalidTypeException.type = Types::InvalidTypeException
    Issues.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Issue)
    LimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    LimitExceededException.type = Types::LimitExceededException
    LimitValueList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitValue)
    Limits.add_member(:storage_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StorageTypeList, location_name: "StorageTypes"))
    Limits.add_member(:instance_limits, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceLimits, location_name: "InstanceLimits"))
    Limits.add_member(:additional_limits, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdditionalLimitList, location_name: "AdditionalLimits"))
    Limits.type = Types::Limits
    LimitsByRole.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceRole)
    LimitsByRole.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Limits)
    ListDomainNamesRequest.add_member(:engine_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EngineType, location_name: "EngineType", traits: {"smithy.api#httpQuery" => "engineType"}))
    ListDomainNamesRequest.type = Types::ListDomainNamesRequest
    ListDomainNamesResponse.add_member(:domain_names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainInfoList, location_name: "DomainNames"))
    ListDomainNamesResponse.type = Types::ListDomainNamesResponse
    ListDomainsForPackageRequest.add_member(:package_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PackageID, location_name: "PackageID", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListDomainsForPackageRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "maxResults"}))
    ListDomainsForPackageRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListDomainsForPackageRequest.type = Types::ListDomainsForPackageRequest
    ListDomainsForPackageResponse.add_member(:domain_package_details_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainPackageDetailsList, location_name: "DomainPackageDetailsList"))
    ListDomainsForPackageResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListDomainsForPackageResponse.type = Types::ListDomainsForPackageResponse
    ListElasticsearchInstanceTypesRequest.add_member(:elasticsearch_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ElasticsearchVersionString, location_name: "ElasticsearchVersion", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListElasticsearchInstanceTypesRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: "DomainName", traits: {"smithy.api#httpQuery" => "domainName"}))
    ListElasticsearchInstanceTypesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "maxResults"}))
    ListElasticsearchInstanceTypesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListElasticsearchInstanceTypesRequest.type = Types::ListElasticsearchInstanceTypesRequest
    ListElasticsearchInstanceTypesResponse.add_member(:elasticsearch_instance_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ElasticsearchInstanceTypeList, location_name: "ElasticsearchInstanceTypes"))
    ListElasticsearchInstanceTypesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListElasticsearchInstanceTypesResponse.type = Types::ListElasticsearchInstanceTypesResponse
    ListElasticsearchVersionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "maxResults"}))
    ListElasticsearchVersionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListElasticsearchVersionsRequest.type = Types::ListElasticsearchVersionsRequest
    ListElasticsearchVersionsResponse.add_member(:elasticsearch_versions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ElasticsearchVersionList, location_name: "ElasticsearchVersions"))
    ListElasticsearchVersionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListElasticsearchVersionsResponse.type = Types::ListElasticsearchVersionsResponse
    ListPackagesForDomainRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListPackagesForDomainRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "maxResults"}))
    ListPackagesForDomainRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListPackagesForDomainRequest.type = Types::ListPackagesForDomainRequest
    ListPackagesForDomainResponse.add_member(:domain_package_details_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainPackageDetailsList, location_name: "DomainPackageDetailsList"))
    ListPackagesForDomainResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListPackagesForDomainResponse.type = Types::ListPackagesForDomainResponse
    ListTagsRequest.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: "ARN", traits: {"smithy.api#httpQuery" => "arn", "smithy.api#required" => {}}))
    ListTagsRequest.type = Types::ListTagsRequest
    ListTagsResponse.add_member(:tag_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "TagList"))
    ListTagsResponse.type = Types::ListTagsResponse
    ListVpcEndpointAccessRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListVpcEndpointAccessRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListVpcEndpointAccessRequest.type = Types::ListVpcEndpointAccessRequest
    ListVpcEndpointAccessResponse.add_member(:authorized_principal_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizedPrincipalList, location_name: "AuthorizedPrincipalList", traits: {"smithy.api#required" => {}}))
    ListVpcEndpointAccessResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken", traits: {"smithy.api#required" => {}}))
    ListVpcEndpointAccessResponse.type = Types::ListVpcEndpointAccessResponse
    ListVpcEndpointsForDomainRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListVpcEndpointsForDomainRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListVpcEndpointsForDomainRequest.type = Types::ListVpcEndpointsForDomainRequest
    ListVpcEndpointsForDomainResponse.add_member(:vpc_endpoint_summary_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpointSummaryList, location_name: "VpcEndpointSummaryList", traits: {"smithy.api#required" => {}}))
    ListVpcEndpointsForDomainResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken", traits: {"smithy.api#required" => {}}))
    ListVpcEndpointsForDomainResponse.type = Types::ListVpcEndpointsForDomainResponse
    ListVpcEndpointsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListVpcEndpointsRequest.type = Types::ListVpcEndpointsRequest
    ListVpcEndpointsResponse.add_member(:vpc_endpoint_summary_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpointSummaryList, location_name: "VpcEndpointSummaryList", traits: {"smithy.api#required" => {}}))
    ListVpcEndpointsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken", traits: {"smithy.api#required" => {}}))
    ListVpcEndpointsResponse.type = Types::ListVpcEndpointsResponse
    LogPublishingOption.add_member(:cloud_watch_logs_log_group_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchLogsLogGroupArn, location_name: "CloudWatchLogsLogGroupArn"))
    LogPublishingOption.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "Enabled"))
    LogPublishingOption.type = Types::LogPublishingOption
    LogPublishingOptions.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogType)
    LogPublishingOptions.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogPublishingOption)
    LogPublishingOptionsStatus.add_member(:options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogPublishingOptions, location_name: "Options"))
    LogPublishingOptionsStatus.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptionStatus, location_name: "Status"))
    LogPublishingOptionsStatus.type = Types::LogPublishingOptionsStatus
    LogType.add_member(:index_slow_logs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INDEX_SLOW_LOGS", traits: {"smithy.api#enumValue" => "INDEX_SLOW_LOGS"}))
    LogType.add_member(:search_slow_logs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SEARCH_SLOW_LOGS", traits: {"smithy.api#enumValue" => "SEARCH_SLOW_LOGS"}))
    LogType.add_member(:es_application_logs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ES_APPLICATION_LOGS", traits: {"smithy.api#enumValue" => "ES_APPLICATION_LOGS"}))
    LogType.add_member(:audit_logs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AUDIT_LOGS", traits: {"smithy.api#enumValue" => "AUDIT_LOGS"}))
    MasterUserOptions.add_member(:master_user_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: "MasterUserARN"))
    MasterUserOptions.add_member(:master_user_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Username, location_name: "MasterUserName"))
    MasterUserOptions.add_member(:master_user_password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Password, location_name: "MasterUserPassword"))
    MasterUserOptions.type = Types::MasterUserOptions
    ModifyingProperties.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    ModifyingProperties.add_member(:active_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ActiveValue"))
    ModifyingProperties.add_member(:pending_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "PendingValue"))
    ModifyingProperties.add_member(:value_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PropertyValueType, location_name: "ValueType"))
    ModifyingProperties.type = Types::ModifyingProperties
    ModifyingPropertiesList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyingProperties)
    NodeToNodeEncryptionOptions.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "Enabled"))
    NodeToNodeEncryptionOptions.type = Types::NodeToNodeEncryptionOptions
    NodeToNodeEncryptionOptionsStatus.add_member(:options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NodeToNodeEncryptionOptions, location_name: "Options", traits: {"smithy.api#required" => {}}))
    NodeToNodeEncryptionOptionsStatus.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptionStatus, location_name: "Status", traits: {"smithy.api#required" => {}}))
    NodeToNodeEncryptionOptionsStatus.type = Types::NodeToNodeEncryptionOptionsStatus
    OptionState.add_member(:requires_index_documents, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RequiresIndexDocuments", traits: {"smithy.api#enumValue" => "RequiresIndexDocuments"}))
    OptionState.add_member(:processing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Processing", traits: {"smithy.api#enumValue" => "Processing"}))
    OptionState.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Active", traits: {"smithy.api#enumValue" => "Active"}))
    OptionStatus.add_member(:creation_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTimestamp, location_name: "CreationDate", traits: {"smithy.api#required" => {}}))
    OptionStatus.add_member(:update_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTimestamp, location_name: "UpdateDate", traits: {"smithy.api#required" => {}}))
    OptionStatus.add_member(:update_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UIntValue, location_name: "UpdateVersion", traits: {"smithy.api#default" => 0}))
    OptionStatus.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptionState, location_name: "State", traits: {"smithy.api#required" => {}}))
    OptionStatus.add_member(:pending_deletion, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "PendingDeletion"))
    OptionStatus.type = Types::OptionStatus
    OutboundCrossClusterSearchConnection.add_member(:source_domain_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainInformation, location_name: "SourceDomainInfo"))
    OutboundCrossClusterSearchConnection.add_member(:destination_domain_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainInformation, location_name: "DestinationDomainInfo"))
    OutboundCrossClusterSearchConnection.add_member(:cross_cluster_search_connection_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CrossClusterSearchConnectionId, location_name: "CrossClusterSearchConnectionId"))
    OutboundCrossClusterSearchConnection.add_member(:connection_alias, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionAlias, location_name: "ConnectionAlias"))
    OutboundCrossClusterSearchConnection.add_member(:connection_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutboundCrossClusterSearchConnectionStatus, location_name: "ConnectionStatus"))
    OutboundCrossClusterSearchConnection.type = Types::OutboundCrossClusterSearchConnection
    OutboundCrossClusterSearchConnectionStatus.add_member(:status_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutboundCrossClusterSearchConnectionStatusCode, location_name: "StatusCode"))
    OutboundCrossClusterSearchConnectionStatus.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CrossClusterSearchConnectionStatusMessage, location_name: "Message"))
    OutboundCrossClusterSearchConnectionStatus.type = Types::OutboundCrossClusterSearchConnectionStatus
    OutboundCrossClusterSearchConnectionStatusCode.add_member(:pending_acceptance, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PENDING_ACCEPTANCE", traits: {"smithy.api#enumValue" => "PENDING_ACCEPTANCE"}))
    OutboundCrossClusterSearchConnectionStatusCode.add_member(:validating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VALIDATING", traits: {"smithy.api#enumValue" => "VALIDATING"}))
    OutboundCrossClusterSearchConnectionStatusCode.add_member(:validation_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VALIDATION_FAILED", traits: {"smithy.api#enumValue" => "VALIDATION_FAILED"}))
    OutboundCrossClusterSearchConnectionStatusCode.add_member(:provisioning, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PROVISIONING", traits: {"smithy.api#enumValue" => "PROVISIONING"}))
    OutboundCrossClusterSearchConnectionStatusCode.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    OutboundCrossClusterSearchConnectionStatusCode.add_member(:rejected, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "REJECTED", traits: {"smithy.api#enumValue" => "REJECTED"}))
    OutboundCrossClusterSearchConnectionStatusCode.add_member(:deleting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    OutboundCrossClusterSearchConnectionStatusCode.add_member(:deleted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETED", traits: {"smithy.api#enumValue" => "DELETED"}))
    OutboundCrossClusterSearchConnections.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutboundCrossClusterSearchConnection)
    OverallChangeStatus.add_member(:pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    OverallChangeStatus.add_member(:processing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PROCESSING", traits: {"smithy.api#enumValue" => "PROCESSING"}))
    OverallChangeStatus.add_member(:completed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    OverallChangeStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    PackageDetails.add_member(:package_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PackageID, location_name: "PackageID"))
    PackageDetails.add_member(:package_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PackageName, location_name: "PackageName"))
    PackageDetails.add_member(:package_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PackageType, location_name: "PackageType"))
    PackageDetails.add_member(:package_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PackageDescription, location_name: "PackageDescription"))
    PackageDetails.add_member(:package_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PackageStatus, location_name: "PackageStatus"))
    PackageDetails.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedAt, location_name: "CreatedAt"))
    PackageDetails.add_member(:last_updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LastUpdated, location_name: "LastUpdatedAt"))
    PackageDetails.add_member(:available_package_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PackageVersion, location_name: "AvailablePackageVersion"))
    PackageDetails.add_member(:error_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDetails, location_name: "ErrorDetails"))
    PackageDetails.type = Types::PackageDetails
    PackageDetailsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PackageDetails)
    PackageSource.add_member(:s3_bucket_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketName, location_name: "S3BucketName"))
    PackageSource.add_member(:s3_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Key, location_name: "S3Key"))
    PackageSource.type = Types::PackageSource
    PackageStatus.add_member(:copying, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "COPYING", traits: {"smithy.api#enumValue" => "COPYING"}))
    PackageStatus.add_member(:copy_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "COPY_FAILED", traits: {"smithy.api#enumValue" => "COPY_FAILED"}))
    PackageStatus.add_member(:validating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VALIDATING", traits: {"smithy.api#enumValue" => "VALIDATING"}))
    PackageStatus.add_member(:validation_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VALIDATION_FAILED", traits: {"smithy.api#enumValue" => "VALIDATION_FAILED"}))
    PackageStatus.add_member(:available, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AVAILABLE", traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    PackageStatus.add_member(:deleting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    PackageStatus.add_member(:deleted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETED", traits: {"smithy.api#enumValue" => "DELETED"}))
    PackageStatus.add_member(:delete_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETE_FAILED", traits: {"smithy.api#enumValue" => "DELETE_FAILED"}))
    PackageType.add_member(:txt_dictionary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TXT_DICTIONARY", traits: {"smithy.api#enumValue" => "TXT-DICTIONARY"}))
    PackageVersionHistory.add_member(:package_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PackageVersion, location_name: "PackageVersion"))
    PackageVersionHistory.add_member(:commit_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CommitMessage, location_name: "CommitMessage"))
    PackageVersionHistory.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedAt, location_name: "CreatedAt"))
    PackageVersionHistory.type = Types::PackageVersionHistory
    PackageVersionHistoryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PackageVersionHistory)
    PrincipalType.add_member(:aws_account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AWS_ACCOUNT", traits: {"smithy.api#enumValue" => "AWS_ACCOUNT"}))
    PrincipalType.add_member(:aws_service, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AWS_SERVICE", traits: {"smithy.api#enumValue" => "AWS_SERVICE"}))
    PropertyValueType.add_member(:plain_text, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PLAIN_TEXT", traits: {"smithy.api#enumValue" => "PLAIN_TEXT"}))
    PropertyValueType.add_member(:stringified_json, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STRINGIFIED_JSON", traits: {"smithy.api#enumValue" => "STRINGIFIED_JSON"}))
    PurchaseReservedElasticsearchInstanceOfferingRequest.add_member(:reserved_elasticsearch_instance_offering_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GUID, location_name: "ReservedElasticsearchInstanceOfferingId", traits: {"smithy.api#required" => {}}))
    PurchaseReservedElasticsearchInstanceOfferingRequest.add_member(:reservation_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReservationToken, location_name: "ReservationName", traits: {"smithy.api#required" => {}}))
    PurchaseReservedElasticsearchInstanceOfferingRequest.add_member(:instance_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceCount, location_name: "InstanceCount"))
    PurchaseReservedElasticsearchInstanceOfferingRequest.type = Types::PurchaseReservedElasticsearchInstanceOfferingRequest
    PurchaseReservedElasticsearchInstanceOfferingResponse.add_member(:reserved_elasticsearch_instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GUID, location_name: "ReservedElasticsearchInstanceId"))
    PurchaseReservedElasticsearchInstanceOfferingResponse.add_member(:reservation_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReservationToken, location_name: "ReservationName"))
    PurchaseReservedElasticsearchInstanceOfferingResponse.type = Types::PurchaseReservedElasticsearchInstanceOfferingResponse
    RecurringCharge.add_member(:recurring_charge_amount, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: "RecurringChargeAmount"))
    RecurringCharge.add_member(:recurring_charge_frequency, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "RecurringChargeFrequency"))
    RecurringCharge.type = Types::RecurringCharge
    RecurringChargeList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecurringCharge, traits: {"smithy.api#xmlName" => "RecurringCharge"})
    RejectInboundCrossClusterSearchConnectionRequest.add_member(:cross_cluster_search_connection_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CrossClusterSearchConnectionId, location_name: "CrossClusterSearchConnectionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RejectInboundCrossClusterSearchConnectionRequest.type = Types::RejectInboundCrossClusterSearchConnectionRequest
    RejectInboundCrossClusterSearchConnectionResponse.add_member(:cross_cluster_search_connection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InboundCrossClusterSearchConnection, location_name: "CrossClusterSearchConnection"))
    RejectInboundCrossClusterSearchConnectionResponse.type = Types::RejectInboundCrossClusterSearchConnectionResponse
    RemoveTagsRequest.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: "ARN", traits: {"smithy.api#required" => {}}))
    RemoveTagsRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: "TagKeys", traits: {"smithy.api#required" => {}}))
    RemoveTagsRequest.type = Types::RemoveTagsRequest
    ReservedElasticsearchInstance.add_member(:reservation_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReservationToken, location_name: "ReservationName"))
    ReservedElasticsearchInstance.add_member(:reserved_elasticsearch_instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GUID, location_name: "ReservedElasticsearchInstanceId"))
    ReservedElasticsearchInstance.add_member(:reserved_elasticsearch_instance_offering_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ReservedElasticsearchInstanceOfferingId"))
    ReservedElasticsearchInstance.add_member(:elasticsearch_instance_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ESPartitionInstanceType, location_name: "ElasticsearchInstanceType"))
    ReservedElasticsearchInstance.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTimestamp, location_name: "StartTime"))
    ReservedElasticsearchInstance.add_member(:duration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: "Duration", traits: {"smithy.api#default" => 0}))
    ReservedElasticsearchInstance.add_member(:fixed_price, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: "FixedPrice"))
    ReservedElasticsearchInstance.add_member(:usage_price, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: "UsagePrice"))
    ReservedElasticsearchInstance.add_member(:currency_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "CurrencyCode"))
    ReservedElasticsearchInstance.add_member(:elasticsearch_instance_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: "ElasticsearchInstanceCount", traits: {"smithy.api#default" => 0}))
    ReservedElasticsearchInstance.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "State"))
    ReservedElasticsearchInstance.add_member(:payment_option, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedElasticsearchInstancePaymentOption, location_name: "PaymentOption"))
    ReservedElasticsearchInstance.add_member(:recurring_charges, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecurringChargeList, location_name: "RecurringCharges"))
    ReservedElasticsearchInstance.type = Types::ReservedElasticsearchInstance
    ReservedElasticsearchInstanceList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedElasticsearchInstance)
    ReservedElasticsearchInstanceOffering.add_member(:reserved_elasticsearch_instance_offering_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GUID, location_name: "ReservedElasticsearchInstanceOfferingId"))
    ReservedElasticsearchInstanceOffering.add_member(:elasticsearch_instance_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ESPartitionInstanceType, location_name: "ElasticsearchInstanceType"))
    ReservedElasticsearchInstanceOffering.add_member(:duration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: "Duration", traits: {"smithy.api#default" => 0}))
    ReservedElasticsearchInstanceOffering.add_member(:fixed_price, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: "FixedPrice"))
    ReservedElasticsearchInstanceOffering.add_member(:usage_price, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: "UsagePrice"))
    ReservedElasticsearchInstanceOffering.add_member(:currency_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "CurrencyCode"))
    ReservedElasticsearchInstanceOffering.add_member(:payment_option, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedElasticsearchInstancePaymentOption, location_name: "PaymentOption"))
    ReservedElasticsearchInstanceOffering.add_member(:recurring_charges, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecurringChargeList, location_name: "RecurringCharges"))
    ReservedElasticsearchInstanceOffering.type = Types::ReservedElasticsearchInstanceOffering
    ReservedElasticsearchInstanceOfferingList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedElasticsearchInstanceOffering, traits: {"smithy.api#xmlName" => "ReservedElasticsearchInstanceOffering"})
    ReservedElasticsearchInstancePaymentOption.add_member(:all_upfront, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ALL_UPFRONT", traits: {"smithy.api#enumValue" => "ALL_UPFRONT"}))
    ReservedElasticsearchInstancePaymentOption.add_member(:partial_upfront, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PARTIAL_UPFRONT", traits: {"smithy.api#enumValue" => "PARTIAL_UPFRONT"}))
    ReservedElasticsearchInstancePaymentOption.add_member(:no_upfront, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NO_UPFRONT", traits: {"smithy.api#enumValue" => "NO_UPFRONT"}))
    ResourceAlreadyExistsException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ResourceAlreadyExistsException.type = Types::ResourceAlreadyExistsException
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    RevokeVpcEndpointAccessRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RevokeVpcEndpointAccessRequest.add_member(:account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSAccount, location_name: "Account", traits: {"smithy.api#required" => {}}))
    RevokeVpcEndpointAccessRequest.type = Types::RevokeVpcEndpointAccessRequest
    RevokeVpcEndpointAccessResponse.type = Types::RevokeVpcEndpointAccessResponse
    RollbackOnDisable.add_member(:no_rollback, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NO_ROLLBACK", traits: {"smithy.api#enumValue" => "NO_ROLLBACK"}))
    RollbackOnDisable.add_member(:default_rollback, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DEFAULT_ROLLBACK", traits: {"smithy.api#enumValue" => "DEFAULT_ROLLBACK"}))
    SAMLIdp.add_member(:metadata_content, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SAMLMetadata, location_name: "MetadataContent", traits: {"smithy.api#required" => {}}))
    SAMLIdp.add_member(:entity_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SAMLEntityId, location_name: "EntityId", traits: {"smithy.api#required" => {}}))
    SAMLIdp.type = Types::SAMLIdp
    SAMLOptionsInput.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "Enabled"))
    SAMLOptionsInput.add_member(:idp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SAMLIdp, location_name: "Idp"))
    SAMLOptionsInput.add_member(:master_user_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Username, location_name: "MasterUserName"))
    SAMLOptionsInput.add_member(:master_backend_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackendRole, location_name: "MasterBackendRole"))
    SAMLOptionsInput.add_member(:subject_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "SubjectKey"))
    SAMLOptionsInput.add_member(:roles_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "RolesKey"))
    SAMLOptionsInput.add_member(:session_timeout_minutes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerClass, location_name: "SessionTimeoutMinutes"))
    SAMLOptionsInput.type = Types::SAMLOptionsInput
    SAMLOptionsOutput.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "Enabled"))
    SAMLOptionsOutput.add_member(:idp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SAMLIdp, location_name: "Idp"))
    SAMLOptionsOutput.add_member(:subject_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "SubjectKey"))
    SAMLOptionsOutput.add_member(:roles_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "RolesKey"))
    SAMLOptionsOutput.add_member(:session_timeout_minutes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerClass, location_name: "SessionTimeoutMinutes"))
    SAMLOptionsOutput.type = Types::SAMLOptionsOutput
    ScheduledAutoTuneActionType.add_member(:jvm_heap_size_tuning, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "JVM_HEAP_SIZE_TUNING", traits: {"smithy.api#enumValue" => "JVM_HEAP_SIZE_TUNING"}))
    ScheduledAutoTuneActionType.add_member(:jvm_young_gen_tuning, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "JVM_YOUNG_GEN_TUNING", traits: {"smithy.api#enumValue" => "JVM_YOUNG_GEN_TUNING"}))
    ScheduledAutoTuneDetails.add_member(:date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutoTuneDate, location_name: "Date"))
    ScheduledAutoTuneDetails.add_member(:action_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledAutoTuneActionType, location_name: "ActionType"))
    ScheduledAutoTuneDetails.add_member(:action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledAutoTuneDescription, location_name: "Action"))
    ScheduledAutoTuneDetails.add_member(:severity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledAutoTuneSeverityType, location_name: "Severity"))
    ScheduledAutoTuneDetails.type = Types::ScheduledAutoTuneDetails
    ScheduledAutoTuneSeverityType.add_member(:low, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LOW", traits: {"smithy.api#enumValue" => "LOW"}))
    ScheduledAutoTuneSeverityType.add_member(:medium, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MEDIUM", traits: {"smithy.api#enumValue" => "MEDIUM"}))
    ScheduledAutoTuneSeverityType.add_member(:high, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HIGH", traits: {"smithy.api#enumValue" => "HIGH"}))
    ServiceSoftwareOptions.add_member(:current_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "CurrentVersion"))
    ServiceSoftwareOptions.add_member(:new_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "NewVersion"))
    ServiceSoftwareOptions.add_member(:update_available, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "UpdateAvailable"))
    ServiceSoftwareOptions.add_member(:cancellable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "Cancellable"))
    ServiceSoftwareOptions.add_member(:update_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentStatus, location_name: "UpdateStatus"))
    ServiceSoftwareOptions.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    ServiceSoftwareOptions.add_member(:automated_update_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentCloseDateTimeStamp, location_name: "AutomatedUpdateDate"))
    ServiceSoftwareOptions.add_member(:optional_deployment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "OptionalDeployment"))
    ServiceSoftwareOptions.type = Types::ServiceSoftwareOptions
    SnapshotOptions.add_member(:automated_snapshot_start_hour, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerClass, location_name: "AutomatedSnapshotStartHour"))
    SnapshotOptions.type = Types::SnapshotOptions
    SnapshotOptionsStatus.add_member(:options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotOptions, location_name: "Options", traits: {"smithy.api#required" => {}}))
    SnapshotOptionsStatus.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptionStatus, location_name: "Status", traits: {"smithy.api#required" => {}}))
    SnapshotOptionsStatus.type = Types::SnapshotOptionsStatus
    StartElasticsearchServiceSoftwareUpdateRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: "DomainName", traits: {"smithy.api#required" => {}}))
    StartElasticsearchServiceSoftwareUpdateRequest.type = Types::StartElasticsearchServiceSoftwareUpdateRequest
    StartElasticsearchServiceSoftwareUpdateResponse.add_member(:service_software_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceSoftwareOptions, location_name: "ServiceSoftwareOptions"))
    StartElasticsearchServiceSoftwareUpdateResponse.type = Types::StartElasticsearchServiceSoftwareUpdateResponse
    StorageType.add_member(:storage_type_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StorageTypeName, location_name: "StorageTypeName"))
    StorageType.add_member(:storage_sub_type_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StorageSubTypeName, location_name: "StorageSubTypeName"))
    StorageType.add_member(:storage_type_limits, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StorageTypeLimitList, location_name: "StorageTypeLimits"))
    StorageType.type = Types::StorageType
    StorageTypeLimit.add_member(:limit_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitName, location_name: "LimitName"))
    StorageTypeLimit.add_member(:limit_values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitValueList, location_name: "LimitValues"))
    StorageTypeLimit.type = Types::StorageTypeLimit
    StorageTypeLimitList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StorageTypeLimit)
    StorageTypeList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StorageType)
    StringList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    TLSSecurityPolicy.add_member(:policy_min_tls_1_0_2019_07, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "POLICY_MIN_TLS_1_0_2019_07", traits: {"smithy.api#enumValue" => "Policy-Min-TLS-1-0-2019-07"}))
    TLSSecurityPolicy.add_member(:policy_min_tls_1_2_2019_07, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "POLICY_MIN_TLS_1_2_2019_07", traits: {"smithy.api#enumValue" => "Policy-Min-TLS-1-2-2019-07"}))
    TLSSecurityPolicy.add_member(:policy_min_tls_1_2_pfs_2023_10, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "POLICY_MIN_TLS_1_2_PFS_2023_10", traits: {"smithy.api#enumValue" => "Policy-Min-TLS-1-2-PFS-2023-10"}))
    Tag.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: "Key", traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: "Value", traits: {"smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    TimeUnit.add_member(:hours, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HOURS", traits: {"smithy.api#enumValue" => "HOURS"}))
    UpdateElasticsearchDomainConfigRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateElasticsearchDomainConfigRequest.add_member(:elasticsearch_cluster_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ElasticsearchClusterConfig, location_name: "ElasticsearchClusterConfig"))
    UpdateElasticsearchDomainConfigRequest.add_member(:ebs_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EBSOptions, location_name: "EBSOptions"))
    UpdateElasticsearchDomainConfigRequest.add_member(:snapshot_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotOptions, location_name: "SnapshotOptions"))
    UpdateElasticsearchDomainConfigRequest.add_member(:vpc_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VPCOptions, location_name: "VPCOptions"))
    UpdateElasticsearchDomainConfigRequest.add_member(:cognito_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CognitoOptions, location_name: "CognitoOptions"))
    UpdateElasticsearchDomainConfigRequest.add_member(:advanced_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdvancedOptions, location_name: "AdvancedOptions"))
    UpdateElasticsearchDomainConfigRequest.add_member(:access_policies, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyDocument, location_name: "AccessPolicies"))
    UpdateElasticsearchDomainConfigRequest.add_member(:log_publishing_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogPublishingOptions, location_name: "LogPublishingOptions"))
    UpdateElasticsearchDomainConfigRequest.add_member(:domain_endpoint_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainEndpointOptions, location_name: "DomainEndpointOptions"))
    UpdateElasticsearchDomainConfigRequest.add_member(:advanced_security_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdvancedSecurityOptionsInput, location_name: "AdvancedSecurityOptions"))
    UpdateElasticsearchDomainConfigRequest.add_member(:node_to_node_encryption_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NodeToNodeEncryptionOptions, location_name: "NodeToNodeEncryptionOptions"))
    UpdateElasticsearchDomainConfigRequest.add_member(:encryption_at_rest_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionAtRestOptions, location_name: "EncryptionAtRestOptions"))
    UpdateElasticsearchDomainConfigRequest.add_member(:auto_tune_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutoTuneOptions, location_name: "AutoTuneOptions"))
    UpdateElasticsearchDomainConfigRequest.add_member(:dry_run, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DryRun, location_name: "DryRun"))
    UpdateElasticsearchDomainConfigRequest.type = Types::UpdateElasticsearchDomainConfigRequest
    UpdateElasticsearchDomainConfigResponse.add_member(:domain_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ElasticsearchDomainConfig, location_name: "DomainConfig", traits: {"smithy.api#required" => {}}))
    UpdateElasticsearchDomainConfigResponse.add_member(:dry_run_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DryRunResults, location_name: "DryRunResults"))
    UpdateElasticsearchDomainConfigResponse.type = Types::UpdateElasticsearchDomainConfigResponse
    UpdatePackageRequest.add_member(:package_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PackageID, location_name: "PackageID", traits: {"smithy.api#required" => {}}))
    UpdatePackageRequest.add_member(:package_source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PackageSource, location_name: "PackageSource", traits: {"smithy.api#required" => {}}))
    UpdatePackageRequest.add_member(:package_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PackageDescription, location_name: "PackageDescription"))
    UpdatePackageRequest.add_member(:commit_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CommitMessage, location_name: "CommitMessage"))
    UpdatePackageRequest.type = Types::UpdatePackageRequest
    UpdatePackageResponse.add_member(:package_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PackageDetails, location_name: "PackageDetails"))
    UpdatePackageResponse.type = Types::UpdatePackageResponse
    UpdateVpcEndpointRequest.add_member(:vpc_endpoint_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpointId, location_name: "VpcEndpointId", traits: {"smithy.api#required" => {}}))
    UpdateVpcEndpointRequest.add_member(:vpc_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VPCOptions, location_name: "VpcOptions", traits: {"smithy.api#required" => {}}))
    UpdateVpcEndpointRequest.type = Types::UpdateVpcEndpointRequest
    UpdateVpcEndpointResponse.add_member(:vpc_endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpoint, location_name: "VpcEndpoint", traits: {"smithy.api#required" => {}}))
    UpdateVpcEndpointResponse.type = Types::UpdateVpcEndpointResponse
    UpgradeElasticsearchDomainRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: "DomainName", traits: {"smithy.api#required" => {}}))
    UpgradeElasticsearchDomainRequest.add_member(:target_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ElasticsearchVersionString, location_name: "TargetVersion", traits: {"smithy.api#required" => {}}))
    UpgradeElasticsearchDomainRequest.add_member(:perform_check_only, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "PerformCheckOnly"))
    UpgradeElasticsearchDomainRequest.type = Types::UpgradeElasticsearchDomainRequest
    UpgradeElasticsearchDomainResponse.add_member(:domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: "DomainName"))
    UpgradeElasticsearchDomainResponse.add_member(:target_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ElasticsearchVersionString, location_name: "TargetVersion"))
    UpgradeElasticsearchDomainResponse.add_member(:perform_check_only, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "PerformCheckOnly"))
    UpgradeElasticsearchDomainResponse.add_member(:change_progress_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeProgressDetails, location_name: "ChangeProgressDetails"))
    UpgradeElasticsearchDomainResponse.type = Types::UpgradeElasticsearchDomainResponse
    UpgradeHistory.add_member(:upgrade_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpgradeName, location_name: "UpgradeName"))
    UpgradeHistory.add_member(:start_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartTimestamp, location_name: "StartTimestamp"))
    UpgradeHistory.add_member(:upgrade_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpgradeStatus, location_name: "UpgradeStatus"))
    UpgradeHistory.add_member(:steps_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpgradeStepsList, location_name: "StepsList"))
    UpgradeHistory.type = Types::UpgradeHistory
    UpgradeHistoryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpgradeHistory)
    UpgradeStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    UpgradeStatus.add_member(:succeeded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SUCCEEDED", traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    UpgradeStatus.add_member(:succeeded_with_issues, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SUCCEEDED_WITH_ISSUES", traits: {"smithy.api#enumValue" => "SUCCEEDED_WITH_ISSUES"}))
    UpgradeStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    UpgradeStep.add_member(:pre_upgrade_check, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PRE_UPGRADE_CHECK", traits: {"smithy.api#enumValue" => "PRE_UPGRADE_CHECK"}))
    UpgradeStep.add_member(:snapshot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SNAPSHOT", traits: {"smithy.api#enumValue" => "SNAPSHOT"}))
    UpgradeStep.add_member(:upgrade, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UPGRADE", traits: {"smithy.api#enumValue" => "UPGRADE"}))
    UpgradeStepItem.add_member(:upgrade_step, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpgradeStep, location_name: "UpgradeStep"))
    UpgradeStepItem.add_member(:upgrade_step_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpgradeStatus, location_name: "UpgradeStepStatus"))
    UpgradeStepItem.add_member(:issues, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Issues, location_name: "Issues"))
    UpgradeStepItem.add_member(:progress_percent, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: "ProgressPercent"))
    UpgradeStepItem.type = Types::UpgradeStepItem
    UpgradeStepsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpgradeStepItem)
    VPCDerivedInfo.add_member(:vpc_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "VPCId"))
    VPCDerivedInfo.add_member(:subnet_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: "SubnetIds"))
    VPCDerivedInfo.add_member(:availability_zones, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: "AvailabilityZones"))
    VPCDerivedInfo.add_member(:security_group_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: "SecurityGroupIds"))
    VPCDerivedInfo.type = Types::VPCDerivedInfo
    VPCDerivedInfoStatus.add_member(:options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VPCDerivedInfo, location_name: "Options", traits: {"smithy.api#required" => {}}))
    VPCDerivedInfoStatus.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptionStatus, location_name: "Status", traits: {"smithy.api#required" => {}}))
    VPCDerivedInfoStatus.type = Types::VPCDerivedInfoStatus
    VPCOptions.add_member(:subnet_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: "SubnetIds"))
    VPCOptions.add_member(:security_group_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: "SecurityGroupIds"))
    VPCOptions.type = Types::VPCOptions
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ValidationException.type = Types::ValidationException
    ValueStringList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString)
    VolumeType.add_member(:standard, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "standard", traits: {"smithy.api#enumValue" => "standard"}))
    VolumeType.add_member(:gp2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "gp2", traits: {"smithy.api#enumValue" => "gp2"}))
    VolumeType.add_member(:io1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "io1", traits: {"smithy.api#enumValue" => "io1"}))
    VolumeType.add_member(:gp3, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "gp3", traits: {"smithy.api#enumValue" => "gp3"}))
    VpcEndpoint.add_member(:vpc_endpoint_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpointId, location_name: "VpcEndpointId"))
    VpcEndpoint.add_member(:vpc_endpoint_owner, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSAccount, location_name: "VpcEndpointOwner"))
    VpcEndpoint.add_member(:domain_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainArn, location_name: "DomainArn"))
    VpcEndpoint.add_member(:vpc_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VPCDerivedInfo, location_name: "VpcOptions"))
    VpcEndpoint.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpointStatus, location_name: "Status"))
    VpcEndpoint.add_member(:endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Endpoint, location_name: "Endpoint"))
    VpcEndpoint.type = Types::VpcEndpoint
    VpcEndpointError.add_member(:vpc_endpoint_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpointId, location_name: "VpcEndpointId"))
    VpcEndpointError.add_member(:error_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpointErrorCode, location_name: "ErrorCode"))
    VpcEndpointError.add_member(:error_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ErrorMessage"))
    VpcEndpointError.type = Types::VpcEndpointError
    VpcEndpointErrorCode.add_member(:endpoint_not_found, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ENDPOINT_NOT_FOUND", traits: {"smithy.api#enumValue" => "ENDPOINT_NOT_FOUND"}))
    VpcEndpointErrorCode.add_member(:server_error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SERVER_ERROR", traits: {"smithy.api#enumValue" => "SERVER_ERROR"}))
    VpcEndpointErrorList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpointError)
    VpcEndpointIdList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpointId)
    VpcEndpointStatus.add_member(:creating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    VpcEndpointStatus.add_member(:create_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CREATE_FAILED", traits: {"smithy.api#enumValue" => "CREATE_FAILED"}))
    VpcEndpointStatus.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    VpcEndpointStatus.add_member(:updating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    VpcEndpointStatus.add_member(:update_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UPDATE_FAILED", traits: {"smithy.api#enumValue" => "UPDATE_FAILED"}))
    VpcEndpointStatus.add_member(:deleting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    VpcEndpointStatus.add_member(:delete_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETE_FAILED", traits: {"smithy.api#enumValue" => "DELETE_FAILED"}))
    VpcEndpointSummary.add_member(:vpc_endpoint_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpointId, location_name: "VpcEndpointId"))
    VpcEndpointSummary.add_member(:vpc_endpoint_owner, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "VpcEndpointOwner"))
    VpcEndpointSummary.add_member(:domain_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainArn, location_name: "DomainArn"))
    VpcEndpointSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpointStatus, location_name: "Status"))
    VpcEndpointSummary.type = Types::VpcEndpointSummary
    VpcEndpointSummaryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpointSummary)
    VpcEndpoints.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpoint)
    ZoneAwarenessConfig.add_member(:availability_zone_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerClass, location_name: "AvailabilityZoneCount"))
    ZoneAwarenessConfig.type = Types::ZoneAwarenessConfig

    AmazonElasticsearchService2015 = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.elasticsearchservice#AmazonElasticsearchService2015"
      service.name = "AmazonElasticsearchService2015"
      service.version = "2015-01-01"
      service.traits = {"aws.api#service" => {"sdkId" => "Elasticsearch Service", "arnNamespace" => "es", "cloudFormationName" => "Elasticsearch", "cloudTrailEventSource" => "elasticsearchservice.amazonaws.com", "docId" => "es-2015-01-01", "endpointPrefix" => "es"}, "aws.auth#sigv4" => {"name" => "es"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "Amazon Elasticsearch Service", "smithy.api#xmlNamespace" => {"uri" => "http://es.amazonaws.com/doc/2015-01-01/"}}
      service.add_operation(:accept_inbound_cross_cluster_search_connection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticsearchservice#AcceptInboundCrossClusterSearchConnection"
        operation.name = "AcceptInboundCrossClusterSearchConnection"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptInboundCrossClusterSearchConnectionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptInboundCrossClusterSearchConnectionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/2015-01-01/es/ccs/inboundConnection/{CrossClusterSearchConnectionId}/accept", "code" => 200}}
      end)
      service.add_operation(:add_tags, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticsearchservice#AddTags"
        operation.name = "AddTags"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddTagsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2015-01-01/tags", "code" => 200}}
      end)
      service.add_operation(:associate_package, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticsearchservice#AssociatePackage"
        operation.name = "AssociatePackage"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociatePackageRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociatePackageResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2015-01-01/packages/associate/{PackageID}/{DomainName}", "code" => 200}}
      end)
      service.add_operation(:authorize_vpc_endpoint_access, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticsearchservice#AuthorizeVpcEndpointAccess"
        operation.name = "AuthorizeVpcEndpointAccess"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizeVpcEndpointAccessRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizeVpcEndpointAccessResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2015-01-01/es/domain/{DomainName}/authorizeVpcEndpointAccess", "code" => 200}}
      end)
      service.add_operation(:cancel_domain_config_change, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticsearchservice#CancelDomainConfigChange"
        operation.name = "CancelDomainConfigChange"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CancelDomainConfigChangeRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CancelDomainConfigChangeResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2015-01-01/es/domain/{DomainName}/config/cancel", "code" => 200}}
      end)
      service.add_operation(:cancel_elasticsearch_service_software_update, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticsearchservice#CancelElasticsearchServiceSoftwareUpdate"
        operation.name = "CancelElasticsearchServiceSoftwareUpdate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CancelElasticsearchServiceSoftwareUpdateRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CancelElasticsearchServiceSoftwareUpdateResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2015-01-01/es/serviceSoftwareUpdate/cancel", "code" => 200}}
      end)
      service.add_operation(:create_elasticsearch_domain, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticsearchservice#CreateElasticsearchDomain"
        operation.name = "CreateElasticsearchDomain"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateElasticsearchDomainRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateElasticsearchDomainResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTypeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2015-01-01/es/domain", "code" => 200}}
      end)
      service.add_operation(:create_outbound_cross_cluster_search_connection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticsearchservice#CreateOutboundCrossClusterSearchConnection"
        operation.name = "CreateOutboundCrossClusterSearchConnection"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateOutboundCrossClusterSearchConnectionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateOutboundCrossClusterSearchConnectionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2015-01-01/es/ccs/outboundConnection", "code" => 200}}
      end)
      service.add_operation(:create_package, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticsearchservice#CreatePackage"
        operation.name = "CreatePackage"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreatePackageRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreatePackageResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTypeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2015-01-01/packages", "code" => 200}}
      end)
      service.add_operation(:create_vpc_endpoint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticsearchservice#CreateVpcEndpoint"
        operation.name = "CreateVpcEndpoint"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateVpcEndpointRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateVpcEndpointResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2015-01-01/es/vpcEndpoints", "code" => 200}}
      end)
      service.add_operation(:delete_elasticsearch_domain, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticsearchservice#DeleteElasticsearchDomain"
        operation.name = "DeleteElasticsearchDomain"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteElasticsearchDomainRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteElasticsearchDomainResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/2015-01-01/es/domain/{DomainName}", "code" => 200}}
      end)
      service.add_operation(:delete_elasticsearch_service_role, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticsearchservice#DeleteElasticsearchServiceRole"
        operation.name = "DeleteElasticsearchServiceRole"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/2015-01-01/es/role", "code" => 200}}
      end)
      service.add_operation(:delete_inbound_cross_cluster_search_connection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticsearchservice#DeleteInboundCrossClusterSearchConnection"
        operation.name = "DeleteInboundCrossClusterSearchConnection"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteInboundCrossClusterSearchConnectionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteInboundCrossClusterSearchConnectionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/2015-01-01/es/ccs/inboundConnection/{CrossClusterSearchConnectionId}", "code" => 200}}
      end)
      service.add_operation(:delete_outbound_cross_cluster_search_connection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticsearchservice#DeleteOutboundCrossClusterSearchConnection"
        operation.name = "DeleteOutboundCrossClusterSearchConnection"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteOutboundCrossClusterSearchConnectionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteOutboundCrossClusterSearchConnectionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/2015-01-01/es/ccs/outboundConnection/{CrossClusterSearchConnectionId}", "code" => 200}}
      end)
      service.add_operation(:delete_package, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticsearchservice#DeletePackage"
        operation.name = "DeletePackage"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePackageRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePackageResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/2015-01-01/packages/{PackageID}", "code" => 200}}
      end)
      service.add_operation(:delete_vpc_endpoint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticsearchservice#DeleteVpcEndpoint"
        operation.name = "DeleteVpcEndpoint"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteVpcEndpointRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteVpcEndpointResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/2015-01-01/es/vpcEndpoints/{VpcEndpointId}", "code" => 200}}
      end)
      service.add_operation(:describe_domain_auto_tunes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticsearchservice#DescribeDomainAutoTunes"
        operation.name = "DescribeDomainAutoTunes"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDomainAutoTunesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDomainAutoTunesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2015-01-01/es/domain/{DomainName}/autoTunes", "code" => 200}}
        operation[:paginator] = Paginators::DescribeDomainAutoTunes.new
      end)
      service.add_operation(:describe_domain_change_progress, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticsearchservice#DescribeDomainChangeProgress"
        operation.name = "DescribeDomainChangeProgress"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDomainChangeProgressRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDomainChangeProgressResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2015-01-01/es/domain/{DomainName}/progress", "code" => 200}}
      end)
      service.add_operation(:describe_elasticsearch_domain, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticsearchservice#DescribeElasticsearchDomain"
        operation.name = "DescribeElasticsearchDomain"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeElasticsearchDomainRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeElasticsearchDomainResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2015-01-01/es/domain/{DomainName}", "code" => 200}}
      end)
      service.add_operation(:describe_elasticsearch_domain_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticsearchservice#DescribeElasticsearchDomainConfig"
        operation.name = "DescribeElasticsearchDomainConfig"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeElasticsearchDomainConfigRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeElasticsearchDomainConfigResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2015-01-01/es/domain/{DomainName}/config", "code" => 200}}
      end)
      service.add_operation(:describe_elasticsearch_domains, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticsearchservice#DescribeElasticsearchDomains"
        operation.name = "DescribeElasticsearchDomains"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeElasticsearchDomainsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeElasticsearchDomainsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2015-01-01/es/domain-info", "code" => 200}}
      end)
      service.add_operation(:describe_elasticsearch_instance_type_limits, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticsearchservice#DescribeElasticsearchInstanceTypeLimits"
        operation.name = "DescribeElasticsearchInstanceTypeLimits"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeElasticsearchInstanceTypeLimitsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeElasticsearchInstanceTypeLimitsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTypeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2015-01-01/es/instanceTypeLimits/{ElasticsearchVersion}/{InstanceType}", "code" => 200}}
      end)
      service.add_operation(:describe_inbound_cross_cluster_search_connections, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticsearchservice#DescribeInboundCrossClusterSearchConnections"
        operation.name = "DescribeInboundCrossClusterSearchConnections"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeInboundCrossClusterSearchConnectionsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeInboundCrossClusterSearchConnectionsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPaginationTokenException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2015-01-01/es/ccs/inboundConnection/search", "code" => 200}}
        operation[:paginator] = Paginators::DescribeInboundCrossClusterSearchConnections.new
      end)
      service.add_operation(:describe_outbound_cross_cluster_search_connections, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticsearchservice#DescribeOutboundCrossClusterSearchConnections"
        operation.name = "DescribeOutboundCrossClusterSearchConnections"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeOutboundCrossClusterSearchConnectionsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeOutboundCrossClusterSearchConnectionsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPaginationTokenException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2015-01-01/es/ccs/outboundConnection/search", "code" => 200}}
        operation[:paginator] = Paginators::DescribeOutboundCrossClusterSearchConnections.new
      end)
      service.add_operation(:describe_packages, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticsearchservice#DescribePackages"
        operation.name = "DescribePackages"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribePackagesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribePackagesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2015-01-01/packages/describe", "code" => 200}}
        operation[:paginator] = Paginators::DescribePackages.new
      end)
      service.add_operation(:describe_reserved_elasticsearch_instance_offerings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticsearchservice#DescribeReservedElasticsearchInstanceOfferings"
        operation.name = "DescribeReservedElasticsearchInstanceOfferings"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeReservedElasticsearchInstanceOfferingsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeReservedElasticsearchInstanceOfferingsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2015-01-01/es/reservedInstanceOfferings", "code" => 200}}
        operation[:paginator] = Paginators::DescribeReservedElasticsearchInstanceOfferings.new
      end)
      service.add_operation(:describe_reserved_elasticsearch_instances, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticsearchservice#DescribeReservedElasticsearchInstances"
        operation.name = "DescribeReservedElasticsearchInstances"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeReservedElasticsearchInstancesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeReservedElasticsearchInstancesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2015-01-01/es/reservedInstances", "code" => 200}}
        operation[:paginator] = Paginators::DescribeReservedElasticsearchInstances.new
      end)
      service.add_operation(:describe_vpc_endpoints, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticsearchservice#DescribeVpcEndpoints"
        operation.name = "DescribeVpcEndpoints"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeVpcEndpointsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeVpcEndpointsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2015-01-01/es/vpcEndpoints/describe", "code" => 200}}
      end)
      service.add_operation(:dissociate_package, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticsearchservice#DissociatePackage"
        operation.name = "DissociatePackage"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DissociatePackageRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DissociatePackageResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2015-01-01/packages/dissociate/{PackageID}/{DomainName}", "code" => 200}}
      end)
      service.add_operation(:get_compatible_elasticsearch_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticsearchservice#GetCompatibleElasticsearchVersions"
        operation.name = "GetCompatibleElasticsearchVersions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetCompatibleElasticsearchVersionsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetCompatibleElasticsearchVersionsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2015-01-01/es/compatibleVersions", "code" => 200}}
      end)
      service.add_operation(:get_package_version_history, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticsearchservice#GetPackageVersionHistory"
        operation.name = "GetPackageVersionHistory"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetPackageVersionHistoryRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetPackageVersionHistoryResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2015-01-01/packages/{PackageID}/history", "code" => 200}}
        operation[:paginator] = Paginators::GetPackageVersionHistory.new
      end)
      service.add_operation(:get_upgrade_history, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticsearchservice#GetUpgradeHistory"
        operation.name = "GetUpgradeHistory"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetUpgradeHistoryRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetUpgradeHistoryResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2015-01-01/es/upgradeDomain/{DomainName}/history", "code" => 200}}
        operation[:paginator] = Paginators::GetUpgradeHistory.new
      end)
      service.add_operation(:get_upgrade_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticsearchservice#GetUpgradeStatus"
        operation.name = "GetUpgradeStatus"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetUpgradeStatusRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetUpgradeStatusResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2015-01-01/es/upgradeDomain/{DomainName}/status", "code" => 200}}
      end)
      service.add_operation(:list_domain_names, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticsearchservice#ListDomainNames"
        operation.name = "ListDomainNames"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListDomainNamesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListDomainNamesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2015-01-01/domain", "code" => 200}, "smithy.test#smokeTests" => [{"id" => "ListDomainNamesSuccess", "params" => {}, "vendorParams" => {"region" => "us-west-2"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"success" => {}}}]}
      end)
      service.add_operation(:list_domains_for_package, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticsearchservice#ListDomainsForPackage"
        operation.name = "ListDomainsForPackage"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListDomainsForPackageRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListDomainsForPackageResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2015-01-01/packages/{PackageID}/domains", "code" => 200}}
        operation[:paginator] = Paginators::ListDomainsForPackage.new
      end)
      service.add_operation(:list_elasticsearch_instance_types, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticsearchservice#ListElasticsearchInstanceTypes"
        operation.name = "ListElasticsearchInstanceTypes"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListElasticsearchInstanceTypesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListElasticsearchInstanceTypesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2015-01-01/es/instanceTypes/{ElasticsearchVersion}", "code" => 200}}
        operation[:paginator] = Paginators::ListElasticsearchInstanceTypes.new
      end)
      service.add_operation(:list_elasticsearch_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticsearchservice#ListElasticsearchVersions"
        operation.name = "ListElasticsearchVersions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListElasticsearchVersionsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListElasticsearchVersionsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2015-01-01/es/versions", "code" => 200}}
        operation[:paginator] = Paginators::ListElasticsearchVersions.new
      end)
      service.add_operation(:list_packages_for_domain, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticsearchservice#ListPackagesForDomain"
        operation.name = "ListPackagesForDomain"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListPackagesForDomainRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListPackagesForDomainResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2015-01-01/domain/{DomainName}/packages", "code" => 200}}
        operation[:paginator] = Paginators::ListPackagesForDomain.new
      end)
      service.add_operation(:list_tags, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticsearchservice#ListTags"
        operation.name = "ListTags"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2015-01-01/tags", "code" => 200}}
      end)
      service.add_operation(:list_vpc_endpoint_access, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticsearchservice#ListVpcEndpointAccess"
        operation.name = "ListVpcEndpointAccess"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListVpcEndpointAccessRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListVpcEndpointAccessResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2015-01-01/es/domain/{DomainName}/listVpcEndpointAccess", "code" => 200}}
      end)
      service.add_operation(:list_vpc_endpoints, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticsearchservice#ListVpcEndpoints"
        operation.name = "ListVpcEndpoints"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListVpcEndpointsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListVpcEndpointsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2015-01-01/es/vpcEndpoints", "code" => 200}}
      end)
      service.add_operation(:list_vpc_endpoints_for_domain, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticsearchservice#ListVpcEndpointsForDomain"
        operation.name = "ListVpcEndpointsForDomain"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListVpcEndpointsForDomainRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListVpcEndpointsForDomainResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2015-01-01/es/domain/{DomainName}/vpcEndpoints", "code" => 200}}
      end)
      service.add_operation(:purchase_reserved_elasticsearch_instance_offering, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticsearchservice#PurchaseReservedElasticsearchInstanceOffering"
        operation.name = "PurchaseReservedElasticsearchInstanceOffering"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PurchaseReservedElasticsearchInstanceOfferingRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PurchaseReservedElasticsearchInstanceOfferingResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2015-01-01/es/purchaseReservedInstanceOffering", "code" => 200}}
      end)
      service.add_operation(:reject_inbound_cross_cluster_search_connection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticsearchservice#RejectInboundCrossClusterSearchConnection"
        operation.name = "RejectInboundCrossClusterSearchConnection"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RejectInboundCrossClusterSearchConnectionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RejectInboundCrossClusterSearchConnectionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/2015-01-01/es/ccs/inboundConnection/{CrossClusterSearchConnectionId}/reject", "code" => 200}}
      end)
      service.add_operation(:remove_tags, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticsearchservice#RemoveTags"
        operation.name = "RemoveTags"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RemoveTagsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2015-01-01/tags-removal", "code" => 200}}
      end)
      service.add_operation(:revoke_vpc_endpoint_access, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticsearchservice#RevokeVpcEndpointAccess"
        operation.name = "RevokeVpcEndpointAccess"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RevokeVpcEndpointAccessRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RevokeVpcEndpointAccessResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2015-01-01/es/domain/{DomainName}/revokeVpcEndpointAccess", "code" => 200}}
      end)
      service.add_operation(:start_elasticsearch_service_software_update, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticsearchservice#StartElasticsearchServiceSoftwareUpdate"
        operation.name = "StartElasticsearchServiceSoftwareUpdate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartElasticsearchServiceSoftwareUpdateRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartElasticsearchServiceSoftwareUpdateResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2015-01-01/es/serviceSoftwareUpdate/start", "code" => 200}}
      end)
      service.add_operation(:update_elasticsearch_domain_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticsearchservice#UpdateElasticsearchDomainConfig"
        operation.name = "UpdateElasticsearchDomainConfig"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateElasticsearchDomainConfigRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateElasticsearchDomainConfigResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTypeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2015-01-01/es/domain/{DomainName}/config", "code" => 200}}
      end)
      service.add_operation(:update_package, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticsearchservice#UpdatePackage"
        operation.name = "UpdatePackage"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePackageRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePackageResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2015-01-01/packages/update", "code" => 200}}
      end)
      service.add_operation(:update_vpc_endpoint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticsearchservice#UpdateVpcEndpoint"
        operation.name = "UpdateVpcEndpoint"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateVpcEndpointRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateVpcEndpointResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2015-01-01/es/vpcEndpoints/update", "code" => 200}}
      end)
      service.add_operation(:upgrade_elasticsearch_domain, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticsearchservice#UpgradeElasticsearchDomain"
        operation.name = "UpgradeElasticsearchDomain"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpgradeElasticsearchDomainRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpgradeElasticsearchDomainResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2015-01-01/es/upgradeDomain", "code" => 200}}
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
