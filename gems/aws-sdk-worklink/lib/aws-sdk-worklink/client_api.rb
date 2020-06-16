# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::WorkLink
  # @api private
  module ClientApi

    include Seahorse::Model

    AcmCertificateArn = Shapes::StringShape.new(name: 'AcmCertificateArn')
    AssociateDomainRequest = Shapes::StructureShape.new(name: 'AssociateDomainRequest')
    AssociateDomainResponse = Shapes::StructureShape.new(name: 'AssociateDomainResponse')
    AssociateWebsiteAuthorizationProviderRequest = Shapes::StructureShape.new(name: 'AssociateWebsiteAuthorizationProviderRequest')
    AssociateWebsiteAuthorizationProviderResponse = Shapes::StructureShape.new(name: 'AssociateWebsiteAuthorizationProviderResponse')
    AssociateWebsiteCertificateAuthorityRequest = Shapes::StructureShape.new(name: 'AssociateWebsiteCertificateAuthorityRequest')
    AssociateWebsiteCertificateAuthorityResponse = Shapes::StructureShape.new(name: 'AssociateWebsiteCertificateAuthorityResponse')
    AuditStreamArn = Shapes::StringShape.new(name: 'AuditStreamArn')
    AuthorizationProviderType = Shapes::StringShape.new(name: 'AuthorizationProviderType')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    Certificate = Shapes::StringShape.new(name: 'Certificate')
    CertificateChain = Shapes::StringShape.new(name: 'CertificateChain')
    CompanyCode = Shapes::StringShape.new(name: 'CompanyCode')
    CreateFleetRequest = Shapes::StructureShape.new(name: 'CreateFleetRequest')
    CreateFleetResponse = Shapes::StructureShape.new(name: 'CreateFleetResponse')
    DateTime = Shapes::TimestampShape.new(name: 'DateTime')
    DeleteFleetRequest = Shapes::StructureShape.new(name: 'DeleteFleetRequest')
    DeleteFleetResponse = Shapes::StructureShape.new(name: 'DeleteFleetResponse')
    DescribeAuditStreamConfigurationRequest = Shapes::StructureShape.new(name: 'DescribeAuditStreamConfigurationRequest')
    DescribeAuditStreamConfigurationResponse = Shapes::StructureShape.new(name: 'DescribeAuditStreamConfigurationResponse')
    DescribeCompanyNetworkConfigurationRequest = Shapes::StructureShape.new(name: 'DescribeCompanyNetworkConfigurationRequest')
    DescribeCompanyNetworkConfigurationResponse = Shapes::StructureShape.new(name: 'DescribeCompanyNetworkConfigurationResponse')
    DescribeDevicePolicyConfigurationRequest = Shapes::StructureShape.new(name: 'DescribeDevicePolicyConfigurationRequest')
    DescribeDevicePolicyConfigurationResponse = Shapes::StructureShape.new(name: 'DescribeDevicePolicyConfigurationResponse')
    DescribeDeviceRequest = Shapes::StructureShape.new(name: 'DescribeDeviceRequest')
    DescribeDeviceResponse = Shapes::StructureShape.new(name: 'DescribeDeviceResponse')
    DescribeDomainRequest = Shapes::StructureShape.new(name: 'DescribeDomainRequest')
    DescribeDomainResponse = Shapes::StructureShape.new(name: 'DescribeDomainResponse')
    DescribeFleetMetadataRequest = Shapes::StructureShape.new(name: 'DescribeFleetMetadataRequest')
    DescribeFleetMetadataResponse = Shapes::StructureShape.new(name: 'DescribeFleetMetadataResponse')
    DescribeIdentityProviderConfigurationRequest = Shapes::StructureShape.new(name: 'DescribeIdentityProviderConfigurationRequest')
    DescribeIdentityProviderConfigurationResponse = Shapes::StructureShape.new(name: 'DescribeIdentityProviderConfigurationResponse')
    DescribeWebsiteCertificateAuthorityRequest = Shapes::StructureShape.new(name: 'DescribeWebsiteCertificateAuthorityRequest')
    DescribeWebsiteCertificateAuthorityResponse = Shapes::StructureShape.new(name: 'DescribeWebsiteCertificateAuthorityResponse')
    DeviceManufacturer = Shapes::StringShape.new(name: 'DeviceManufacturer')
    DeviceModel = Shapes::StringShape.new(name: 'DeviceModel')
    DeviceOperatingSystemName = Shapes::StringShape.new(name: 'DeviceOperatingSystemName')
    DeviceOperatingSystemVersion = Shapes::StringShape.new(name: 'DeviceOperatingSystemVersion')
    DevicePatchLevel = Shapes::StringShape.new(name: 'DevicePatchLevel')
    DeviceStatus = Shapes::StringShape.new(name: 'DeviceStatus')
    DeviceSummary = Shapes::StructureShape.new(name: 'DeviceSummary')
    DeviceSummaryList = Shapes::ListShape.new(name: 'DeviceSummaryList')
    DisassociateDomainRequest = Shapes::StructureShape.new(name: 'DisassociateDomainRequest')
    DisassociateDomainResponse = Shapes::StructureShape.new(name: 'DisassociateDomainResponse')
    DisassociateWebsiteAuthorizationProviderRequest = Shapes::StructureShape.new(name: 'DisassociateWebsiteAuthorizationProviderRequest')
    DisassociateWebsiteAuthorizationProviderResponse = Shapes::StructureShape.new(name: 'DisassociateWebsiteAuthorizationProviderResponse')
    DisassociateWebsiteCertificateAuthorityRequest = Shapes::StructureShape.new(name: 'DisassociateWebsiteCertificateAuthorityRequest')
    DisassociateWebsiteCertificateAuthorityResponse = Shapes::StructureShape.new(name: 'DisassociateWebsiteCertificateAuthorityResponse')
    DisplayName = Shapes::StringShape.new(name: 'DisplayName')
    DomainName = Shapes::StringShape.new(name: 'DomainName')
    DomainStatus = Shapes::StringShape.new(name: 'DomainStatus')
    DomainSummary = Shapes::StructureShape.new(name: 'DomainSummary')
    DomainSummaryList = Shapes::ListShape.new(name: 'DomainSummaryList')
    ExceptionMessage = Shapes::StringShape.new(name: 'ExceptionMessage')
    FleetArn = Shapes::StringShape.new(name: 'FleetArn')
    FleetName = Shapes::StringShape.new(name: 'FleetName')
    FleetStatus = Shapes::StringShape.new(name: 'FleetStatus')
    FleetSummary = Shapes::StructureShape.new(name: 'FleetSummary')
    FleetSummaryList = Shapes::ListShape.new(name: 'FleetSummaryList')
    Id = Shapes::StringShape.new(name: 'Id')
    IdentityProviderType = Shapes::StringShape.new(name: 'IdentityProviderType')
    InternalServerErrorException = Shapes::StructureShape.new(name: 'InternalServerErrorException')
    InvalidRequestException = Shapes::StructureShape.new(name: 'InvalidRequestException')
    ListDevicesRequest = Shapes::StructureShape.new(name: 'ListDevicesRequest')
    ListDevicesResponse = Shapes::StructureShape.new(name: 'ListDevicesResponse')
    ListDomainsRequest = Shapes::StructureShape.new(name: 'ListDomainsRequest')
    ListDomainsResponse = Shapes::StructureShape.new(name: 'ListDomainsResponse')
    ListFleetsRequest = Shapes::StructureShape.new(name: 'ListFleetsRequest')
    ListFleetsResponse = Shapes::StructureShape.new(name: 'ListFleetsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    ListWebsiteAuthorizationProvidersRequest = Shapes::StructureShape.new(name: 'ListWebsiteAuthorizationProvidersRequest')
    ListWebsiteAuthorizationProvidersResponse = Shapes::StructureShape.new(name: 'ListWebsiteAuthorizationProvidersResponse')
    ListWebsiteCertificateAuthoritiesRequest = Shapes::StructureShape.new(name: 'ListWebsiteCertificateAuthoritiesRequest')
    ListWebsiteCertificateAuthoritiesResponse = Shapes::StructureShape.new(name: 'ListWebsiteCertificateAuthoritiesResponse')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    ResourceAlreadyExistsException = Shapes::StructureShape.new(name: 'ResourceAlreadyExistsException')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    RestoreDomainAccessRequest = Shapes::StructureShape.new(name: 'RestoreDomainAccessRequest')
    RestoreDomainAccessResponse = Shapes::StructureShape.new(name: 'RestoreDomainAccessResponse')
    RevokeDomainAccessRequest = Shapes::StructureShape.new(name: 'RevokeDomainAccessRequest')
    RevokeDomainAccessResponse = Shapes::StructureShape.new(name: 'RevokeDomainAccessResponse')
    SamlMetadata = Shapes::StringShape.new(name: 'SamlMetadata')
    SecurityGroupId = Shapes::StringShape.new(name: 'SecurityGroupId')
    SecurityGroupIds = Shapes::ListShape.new(name: 'SecurityGroupIds')
    SignOutUserRequest = Shapes::StructureShape.new(name: 'SignOutUserRequest')
    SignOutUserResponse = Shapes::StructureShape.new(name: 'SignOutUserResponse')
    SubnetId = Shapes::StringShape.new(name: 'SubnetId')
    SubnetIds = Shapes::ListShape.new(name: 'SubnetIds')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagMap = Shapes::MapShape.new(name: 'TagMap')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TooManyRequestsException = Shapes::StructureShape.new(name: 'TooManyRequestsException')
    UnauthorizedException = Shapes::StructureShape.new(name: 'UnauthorizedException')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateAuditStreamConfigurationRequest = Shapes::StructureShape.new(name: 'UpdateAuditStreamConfigurationRequest')
    UpdateAuditStreamConfigurationResponse = Shapes::StructureShape.new(name: 'UpdateAuditStreamConfigurationResponse')
    UpdateCompanyNetworkConfigurationRequest = Shapes::StructureShape.new(name: 'UpdateCompanyNetworkConfigurationRequest')
    UpdateCompanyNetworkConfigurationResponse = Shapes::StructureShape.new(name: 'UpdateCompanyNetworkConfigurationResponse')
    UpdateDevicePolicyConfigurationRequest = Shapes::StructureShape.new(name: 'UpdateDevicePolicyConfigurationRequest')
    UpdateDevicePolicyConfigurationResponse = Shapes::StructureShape.new(name: 'UpdateDevicePolicyConfigurationResponse')
    UpdateDomainMetadataRequest = Shapes::StructureShape.new(name: 'UpdateDomainMetadataRequest')
    UpdateDomainMetadataResponse = Shapes::StructureShape.new(name: 'UpdateDomainMetadataResponse')
    UpdateFleetMetadataRequest = Shapes::StructureShape.new(name: 'UpdateFleetMetadataRequest')
    UpdateFleetMetadataResponse = Shapes::StructureShape.new(name: 'UpdateFleetMetadataResponse')
    UpdateIdentityProviderConfigurationRequest = Shapes::StructureShape.new(name: 'UpdateIdentityProviderConfigurationRequest')
    UpdateIdentityProviderConfigurationResponse = Shapes::StructureShape.new(name: 'UpdateIdentityProviderConfigurationResponse')
    Username = Shapes::StringShape.new(name: 'Username')
    VpcId = Shapes::StringShape.new(name: 'VpcId')
    WebsiteAuthorizationProviderSummary = Shapes::StructureShape.new(name: 'WebsiteAuthorizationProviderSummary')
    WebsiteAuthorizationProvidersSummaryList = Shapes::ListShape.new(name: 'WebsiteAuthorizationProvidersSummaryList')
    WebsiteCaSummary = Shapes::StructureShape.new(name: 'WebsiteCaSummary')
    WebsiteCaSummaryList = Shapes::ListShape.new(name: 'WebsiteCaSummaryList')

    AssociateDomainRequest.add_member(:fleet_arn, Shapes::ShapeRef.new(shape: FleetArn, required: true, location_name: "FleetArn"))
    AssociateDomainRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "DomainName"))
    AssociateDomainRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: DisplayName, location_name: "DisplayName"))
    AssociateDomainRequest.add_member(:acm_certificate_arn, Shapes::ShapeRef.new(shape: AcmCertificateArn, required: true, location_name: "AcmCertificateArn"))
    AssociateDomainRequest.struct_class = Types::AssociateDomainRequest

    AssociateDomainResponse.struct_class = Types::AssociateDomainResponse

    AssociateWebsiteAuthorizationProviderRequest.add_member(:fleet_arn, Shapes::ShapeRef.new(shape: FleetArn, required: true, location_name: "FleetArn"))
    AssociateWebsiteAuthorizationProviderRequest.add_member(:authorization_provider_type, Shapes::ShapeRef.new(shape: AuthorizationProviderType, required: true, location_name: "AuthorizationProviderType"))
    AssociateWebsiteAuthorizationProviderRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, location_name: "DomainName"))
    AssociateWebsiteAuthorizationProviderRequest.struct_class = Types::AssociateWebsiteAuthorizationProviderRequest

    AssociateWebsiteAuthorizationProviderResponse.add_member(:authorization_provider_id, Shapes::ShapeRef.new(shape: Id, location_name: "AuthorizationProviderId"))
    AssociateWebsiteAuthorizationProviderResponse.struct_class = Types::AssociateWebsiteAuthorizationProviderResponse

    AssociateWebsiteCertificateAuthorityRequest.add_member(:fleet_arn, Shapes::ShapeRef.new(shape: FleetArn, required: true, location_name: "FleetArn"))
    AssociateWebsiteCertificateAuthorityRequest.add_member(:certificate, Shapes::ShapeRef.new(shape: Certificate, required: true, location_name: "Certificate"))
    AssociateWebsiteCertificateAuthorityRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: DisplayName, location_name: "DisplayName"))
    AssociateWebsiteCertificateAuthorityRequest.struct_class = Types::AssociateWebsiteCertificateAuthorityRequest

    AssociateWebsiteCertificateAuthorityResponse.add_member(:website_ca_id, Shapes::ShapeRef.new(shape: Id, location_name: "WebsiteCaId"))
    AssociateWebsiteCertificateAuthorityResponse.struct_class = Types::AssociateWebsiteCertificateAuthorityResponse

    CreateFleetRequest.add_member(:fleet_name, Shapes::ShapeRef.new(shape: FleetName, required: true, location_name: "FleetName"))
    CreateFleetRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: DisplayName, location_name: "DisplayName"))
    CreateFleetRequest.add_member(:optimize_for_end_user_location, Shapes::ShapeRef.new(shape: Boolean, location_name: "OptimizeForEndUserLocation"))
    CreateFleetRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateFleetRequest.struct_class = Types::CreateFleetRequest

    CreateFleetResponse.add_member(:fleet_arn, Shapes::ShapeRef.new(shape: FleetArn, location_name: "FleetArn"))
    CreateFleetResponse.struct_class = Types::CreateFleetResponse

    DeleteFleetRequest.add_member(:fleet_arn, Shapes::ShapeRef.new(shape: FleetArn, required: true, location_name: "FleetArn"))
    DeleteFleetRequest.struct_class = Types::DeleteFleetRequest

    DeleteFleetResponse.struct_class = Types::DeleteFleetResponse

    DescribeAuditStreamConfigurationRequest.add_member(:fleet_arn, Shapes::ShapeRef.new(shape: FleetArn, required: true, location_name: "FleetArn"))
    DescribeAuditStreamConfigurationRequest.struct_class = Types::DescribeAuditStreamConfigurationRequest

    DescribeAuditStreamConfigurationResponse.add_member(:audit_stream_arn, Shapes::ShapeRef.new(shape: AuditStreamArn, location_name: "AuditStreamArn"))
    DescribeAuditStreamConfigurationResponse.struct_class = Types::DescribeAuditStreamConfigurationResponse

    DescribeCompanyNetworkConfigurationRequest.add_member(:fleet_arn, Shapes::ShapeRef.new(shape: FleetArn, required: true, location_name: "FleetArn"))
    DescribeCompanyNetworkConfigurationRequest.struct_class = Types::DescribeCompanyNetworkConfigurationRequest

    DescribeCompanyNetworkConfigurationResponse.add_member(:vpc_id, Shapes::ShapeRef.new(shape: VpcId, location_name: "VpcId"))
    DescribeCompanyNetworkConfigurationResponse.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: SubnetIds, location_name: "SubnetIds"))
    DescribeCompanyNetworkConfigurationResponse.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: SecurityGroupIds, location_name: "SecurityGroupIds"))
    DescribeCompanyNetworkConfigurationResponse.struct_class = Types::DescribeCompanyNetworkConfigurationResponse

    DescribeDevicePolicyConfigurationRequest.add_member(:fleet_arn, Shapes::ShapeRef.new(shape: FleetArn, required: true, location_name: "FleetArn"))
    DescribeDevicePolicyConfigurationRequest.struct_class = Types::DescribeDevicePolicyConfigurationRequest

    DescribeDevicePolicyConfigurationResponse.add_member(:device_ca_certificate, Shapes::ShapeRef.new(shape: Certificate, location_name: "DeviceCaCertificate"))
    DescribeDevicePolicyConfigurationResponse.struct_class = Types::DescribeDevicePolicyConfigurationResponse

    DescribeDeviceRequest.add_member(:fleet_arn, Shapes::ShapeRef.new(shape: FleetArn, required: true, location_name: "FleetArn"))
    DescribeDeviceRequest.add_member(:device_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "DeviceId"))
    DescribeDeviceRequest.struct_class = Types::DescribeDeviceRequest

    DescribeDeviceResponse.add_member(:status, Shapes::ShapeRef.new(shape: DeviceStatus, location_name: "Status"))
    DescribeDeviceResponse.add_member(:model, Shapes::ShapeRef.new(shape: DeviceModel, location_name: "Model"))
    DescribeDeviceResponse.add_member(:manufacturer, Shapes::ShapeRef.new(shape: DeviceManufacturer, location_name: "Manufacturer"))
    DescribeDeviceResponse.add_member(:operating_system, Shapes::ShapeRef.new(shape: DeviceOperatingSystemName, location_name: "OperatingSystem"))
    DescribeDeviceResponse.add_member(:operating_system_version, Shapes::ShapeRef.new(shape: DeviceOperatingSystemVersion, location_name: "OperatingSystemVersion"))
    DescribeDeviceResponse.add_member(:patch_level, Shapes::ShapeRef.new(shape: DevicePatchLevel, location_name: "PatchLevel"))
    DescribeDeviceResponse.add_member(:first_accessed_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "FirstAccessedTime"))
    DescribeDeviceResponse.add_member(:last_accessed_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "LastAccessedTime"))
    DescribeDeviceResponse.add_member(:username, Shapes::ShapeRef.new(shape: Username, location_name: "Username"))
    DescribeDeviceResponse.struct_class = Types::DescribeDeviceResponse

    DescribeDomainRequest.add_member(:fleet_arn, Shapes::ShapeRef.new(shape: FleetArn, required: true, location_name: "FleetArn"))
    DescribeDomainRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "DomainName"))
    DescribeDomainRequest.struct_class = Types::DescribeDomainRequest

    DescribeDomainResponse.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, location_name: "DomainName"))
    DescribeDomainResponse.add_member(:display_name, Shapes::ShapeRef.new(shape: DisplayName, location_name: "DisplayName"))
    DescribeDomainResponse.add_member(:created_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "CreatedTime"))
    DescribeDomainResponse.add_member(:domain_status, Shapes::ShapeRef.new(shape: DomainStatus, location_name: "DomainStatus"))
    DescribeDomainResponse.add_member(:acm_certificate_arn, Shapes::ShapeRef.new(shape: AcmCertificateArn, location_name: "AcmCertificateArn"))
    DescribeDomainResponse.struct_class = Types::DescribeDomainResponse

    DescribeFleetMetadataRequest.add_member(:fleet_arn, Shapes::ShapeRef.new(shape: FleetArn, required: true, location_name: "FleetArn"))
    DescribeFleetMetadataRequest.struct_class = Types::DescribeFleetMetadataRequest

    DescribeFleetMetadataResponse.add_member(:created_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "CreatedTime"))
    DescribeFleetMetadataResponse.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "LastUpdatedTime"))
    DescribeFleetMetadataResponse.add_member(:fleet_name, Shapes::ShapeRef.new(shape: FleetName, location_name: "FleetName"))
    DescribeFleetMetadataResponse.add_member(:display_name, Shapes::ShapeRef.new(shape: DisplayName, location_name: "DisplayName"))
    DescribeFleetMetadataResponse.add_member(:optimize_for_end_user_location, Shapes::ShapeRef.new(shape: Boolean, location_name: "OptimizeForEndUserLocation"))
    DescribeFleetMetadataResponse.add_member(:company_code, Shapes::ShapeRef.new(shape: CompanyCode, location_name: "CompanyCode"))
    DescribeFleetMetadataResponse.add_member(:fleet_status, Shapes::ShapeRef.new(shape: FleetStatus, location_name: "FleetStatus"))
    DescribeFleetMetadataResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    DescribeFleetMetadataResponse.struct_class = Types::DescribeFleetMetadataResponse

    DescribeIdentityProviderConfigurationRequest.add_member(:fleet_arn, Shapes::ShapeRef.new(shape: FleetArn, required: true, location_name: "FleetArn"))
    DescribeIdentityProviderConfigurationRequest.struct_class = Types::DescribeIdentityProviderConfigurationRequest

    DescribeIdentityProviderConfigurationResponse.add_member(:identity_provider_type, Shapes::ShapeRef.new(shape: IdentityProviderType, location_name: "IdentityProviderType"))
    DescribeIdentityProviderConfigurationResponse.add_member(:service_provider_saml_metadata, Shapes::ShapeRef.new(shape: SamlMetadata, location_name: "ServiceProviderSamlMetadata"))
    DescribeIdentityProviderConfigurationResponse.add_member(:identity_provider_saml_metadata, Shapes::ShapeRef.new(shape: SamlMetadata, location_name: "IdentityProviderSamlMetadata"))
    DescribeIdentityProviderConfigurationResponse.struct_class = Types::DescribeIdentityProviderConfigurationResponse

    DescribeWebsiteCertificateAuthorityRequest.add_member(:fleet_arn, Shapes::ShapeRef.new(shape: FleetArn, required: true, location_name: "FleetArn"))
    DescribeWebsiteCertificateAuthorityRequest.add_member(:website_ca_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "WebsiteCaId"))
    DescribeWebsiteCertificateAuthorityRequest.struct_class = Types::DescribeWebsiteCertificateAuthorityRequest

    DescribeWebsiteCertificateAuthorityResponse.add_member(:certificate, Shapes::ShapeRef.new(shape: Certificate, location_name: "Certificate"))
    DescribeWebsiteCertificateAuthorityResponse.add_member(:created_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "CreatedTime"))
    DescribeWebsiteCertificateAuthorityResponse.add_member(:display_name, Shapes::ShapeRef.new(shape: DisplayName, location_name: "DisplayName"))
    DescribeWebsiteCertificateAuthorityResponse.struct_class = Types::DescribeWebsiteCertificateAuthorityResponse

    DeviceSummary.add_member(:device_id, Shapes::ShapeRef.new(shape: Id, location_name: "DeviceId"))
    DeviceSummary.add_member(:device_status, Shapes::ShapeRef.new(shape: DeviceStatus, location_name: "DeviceStatus"))
    DeviceSummary.struct_class = Types::DeviceSummary

    DeviceSummaryList.member = Shapes::ShapeRef.new(shape: DeviceSummary)

    DisassociateDomainRequest.add_member(:fleet_arn, Shapes::ShapeRef.new(shape: FleetArn, required: true, location_name: "FleetArn"))
    DisassociateDomainRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "DomainName"))
    DisassociateDomainRequest.struct_class = Types::DisassociateDomainRequest

    DisassociateDomainResponse.struct_class = Types::DisassociateDomainResponse

    DisassociateWebsiteAuthorizationProviderRequest.add_member(:fleet_arn, Shapes::ShapeRef.new(shape: FleetArn, required: true, location_name: "FleetArn"))
    DisassociateWebsiteAuthorizationProviderRequest.add_member(:authorization_provider_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "AuthorizationProviderId"))
    DisassociateWebsiteAuthorizationProviderRequest.struct_class = Types::DisassociateWebsiteAuthorizationProviderRequest

    DisassociateWebsiteAuthorizationProviderResponse.struct_class = Types::DisassociateWebsiteAuthorizationProviderResponse

    DisassociateWebsiteCertificateAuthorityRequest.add_member(:fleet_arn, Shapes::ShapeRef.new(shape: FleetArn, required: true, location_name: "FleetArn"))
    DisassociateWebsiteCertificateAuthorityRequest.add_member(:website_ca_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "WebsiteCaId"))
    DisassociateWebsiteCertificateAuthorityRequest.struct_class = Types::DisassociateWebsiteCertificateAuthorityRequest

    DisassociateWebsiteCertificateAuthorityResponse.struct_class = Types::DisassociateWebsiteCertificateAuthorityResponse

    DomainSummary.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "DomainName"))
    DomainSummary.add_member(:display_name, Shapes::ShapeRef.new(shape: DisplayName, location_name: "DisplayName"))
    DomainSummary.add_member(:created_time, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "CreatedTime"))
    DomainSummary.add_member(:domain_status, Shapes::ShapeRef.new(shape: DomainStatus, required: true, location_name: "DomainStatus"))
    DomainSummary.struct_class = Types::DomainSummary

    DomainSummaryList.member = Shapes::ShapeRef.new(shape: DomainSummary)

    FleetSummary.add_member(:fleet_arn, Shapes::ShapeRef.new(shape: FleetArn, location_name: "FleetArn"))
    FleetSummary.add_member(:created_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "CreatedTime"))
    FleetSummary.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "LastUpdatedTime"))
    FleetSummary.add_member(:fleet_name, Shapes::ShapeRef.new(shape: FleetName, location_name: "FleetName"))
    FleetSummary.add_member(:display_name, Shapes::ShapeRef.new(shape: DisplayName, location_name: "DisplayName"))
    FleetSummary.add_member(:company_code, Shapes::ShapeRef.new(shape: CompanyCode, location_name: "CompanyCode"))
    FleetSummary.add_member(:fleet_status, Shapes::ShapeRef.new(shape: FleetStatus, location_name: "FleetStatus"))
    FleetSummary.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    FleetSummary.struct_class = Types::FleetSummary

    FleetSummaryList.member = Shapes::ShapeRef.new(shape: FleetSummary)

    InternalServerErrorException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    InternalServerErrorException.struct_class = Types::InternalServerErrorException

    InvalidRequestException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    InvalidRequestException.struct_class = Types::InvalidRequestException

    ListDevicesRequest.add_member(:fleet_arn, Shapes::ShapeRef.new(shape: FleetArn, required: true, location_name: "FleetArn"))
    ListDevicesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListDevicesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListDevicesRequest.struct_class = Types::ListDevicesRequest

    ListDevicesResponse.add_member(:devices, Shapes::ShapeRef.new(shape: DeviceSummaryList, location_name: "Devices"))
    ListDevicesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListDevicesResponse.struct_class = Types::ListDevicesResponse

    ListDomainsRequest.add_member(:fleet_arn, Shapes::ShapeRef.new(shape: FleetArn, required: true, location_name: "FleetArn"))
    ListDomainsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListDomainsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListDomainsRequest.struct_class = Types::ListDomainsRequest

    ListDomainsResponse.add_member(:domains, Shapes::ShapeRef.new(shape: DomainSummaryList, location_name: "Domains"))
    ListDomainsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListDomainsResponse.struct_class = Types::ListDomainsResponse

    ListFleetsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListFleetsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListFleetsRequest.struct_class = Types::ListFleetsRequest

    ListFleetsResponse.add_member(:fleet_summary_list, Shapes::ShapeRef.new(shape: FleetSummaryList, location_name: "FleetSummaryList"))
    ListFleetsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListFleetsResponse.struct_class = Types::ListFleetsResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: FleetArn, required: true, location: "uri", location_name: "ResourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    ListWebsiteAuthorizationProvidersRequest.add_member(:fleet_arn, Shapes::ShapeRef.new(shape: FleetArn, required: true, location_name: "FleetArn"))
    ListWebsiteAuthorizationProvidersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListWebsiteAuthorizationProvidersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListWebsiteAuthorizationProvidersRequest.struct_class = Types::ListWebsiteAuthorizationProvidersRequest

    ListWebsiteAuthorizationProvidersResponse.add_member(:website_authorization_providers, Shapes::ShapeRef.new(shape: WebsiteAuthorizationProvidersSummaryList, location_name: "WebsiteAuthorizationProviders"))
    ListWebsiteAuthorizationProvidersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListWebsiteAuthorizationProvidersResponse.struct_class = Types::ListWebsiteAuthorizationProvidersResponse

    ListWebsiteCertificateAuthoritiesRequest.add_member(:fleet_arn, Shapes::ShapeRef.new(shape: FleetArn, required: true, location_name: "FleetArn"))
    ListWebsiteCertificateAuthoritiesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListWebsiteCertificateAuthoritiesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListWebsiteCertificateAuthoritiesRequest.struct_class = Types::ListWebsiteCertificateAuthoritiesRequest

    ListWebsiteCertificateAuthoritiesResponse.add_member(:website_certificate_authorities, Shapes::ShapeRef.new(shape: WebsiteCaSummaryList, location_name: "WebsiteCertificateAuthorities"))
    ListWebsiteCertificateAuthoritiesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListWebsiteCertificateAuthoritiesResponse.struct_class = Types::ListWebsiteCertificateAuthoritiesResponse

    ResourceAlreadyExistsException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    ResourceAlreadyExistsException.struct_class = Types::ResourceAlreadyExistsException

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    RestoreDomainAccessRequest.add_member(:fleet_arn, Shapes::ShapeRef.new(shape: FleetArn, required: true, location_name: "FleetArn"))
    RestoreDomainAccessRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "DomainName"))
    RestoreDomainAccessRequest.struct_class = Types::RestoreDomainAccessRequest

    RestoreDomainAccessResponse.struct_class = Types::RestoreDomainAccessResponse

    RevokeDomainAccessRequest.add_member(:fleet_arn, Shapes::ShapeRef.new(shape: FleetArn, required: true, location_name: "FleetArn"))
    RevokeDomainAccessRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "DomainName"))
    RevokeDomainAccessRequest.struct_class = Types::RevokeDomainAccessRequest

    RevokeDomainAccessResponse.struct_class = Types::RevokeDomainAccessResponse

    SecurityGroupIds.member = Shapes::ShapeRef.new(shape: SecurityGroupId)

    SignOutUserRequest.add_member(:fleet_arn, Shapes::ShapeRef.new(shape: FleetArn, required: true, location_name: "FleetArn"))
    SignOutUserRequest.add_member(:username, Shapes::ShapeRef.new(shape: Username, required: true, location_name: "Username"))
    SignOutUserRequest.struct_class = Types::SignOutUserRequest

    SignOutUserResponse.struct_class = Types::SignOutUserResponse

    SubnetIds.member = Shapes::ShapeRef.new(shape: SubnetId)

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Shapes::ShapeRef.new(shape: TagValue)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: FleetArn, required: true, location: "uri", location_name: "ResourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "Tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    TooManyRequestsException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    TooManyRequestsException.struct_class = Types::TooManyRequestsException

    UnauthorizedException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    UnauthorizedException.struct_class = Types::UnauthorizedException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: FleetArn, required: true, location: "uri", location_name: "ResourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateAuditStreamConfigurationRequest.add_member(:fleet_arn, Shapes::ShapeRef.new(shape: FleetArn, required: true, location_name: "FleetArn"))
    UpdateAuditStreamConfigurationRequest.add_member(:audit_stream_arn, Shapes::ShapeRef.new(shape: AuditStreamArn, location_name: "AuditStreamArn"))
    UpdateAuditStreamConfigurationRequest.struct_class = Types::UpdateAuditStreamConfigurationRequest

    UpdateAuditStreamConfigurationResponse.struct_class = Types::UpdateAuditStreamConfigurationResponse

    UpdateCompanyNetworkConfigurationRequest.add_member(:fleet_arn, Shapes::ShapeRef.new(shape: FleetArn, required: true, location_name: "FleetArn"))
    UpdateCompanyNetworkConfigurationRequest.add_member(:vpc_id, Shapes::ShapeRef.new(shape: VpcId, required: true, location_name: "VpcId"))
    UpdateCompanyNetworkConfigurationRequest.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: SubnetIds, required: true, location_name: "SubnetIds"))
    UpdateCompanyNetworkConfigurationRequest.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: SecurityGroupIds, required: true, location_name: "SecurityGroupIds"))
    UpdateCompanyNetworkConfigurationRequest.struct_class = Types::UpdateCompanyNetworkConfigurationRequest

    UpdateCompanyNetworkConfigurationResponse.struct_class = Types::UpdateCompanyNetworkConfigurationResponse

    UpdateDevicePolicyConfigurationRequest.add_member(:fleet_arn, Shapes::ShapeRef.new(shape: FleetArn, required: true, location_name: "FleetArn"))
    UpdateDevicePolicyConfigurationRequest.add_member(:device_ca_certificate, Shapes::ShapeRef.new(shape: CertificateChain, location_name: "DeviceCaCertificate"))
    UpdateDevicePolicyConfigurationRequest.struct_class = Types::UpdateDevicePolicyConfigurationRequest

    UpdateDevicePolicyConfigurationResponse.struct_class = Types::UpdateDevicePolicyConfigurationResponse

    UpdateDomainMetadataRequest.add_member(:fleet_arn, Shapes::ShapeRef.new(shape: FleetArn, required: true, location_name: "FleetArn"))
    UpdateDomainMetadataRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "DomainName"))
    UpdateDomainMetadataRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: DisplayName, location_name: "DisplayName"))
    UpdateDomainMetadataRequest.struct_class = Types::UpdateDomainMetadataRequest

    UpdateDomainMetadataResponse.struct_class = Types::UpdateDomainMetadataResponse

    UpdateFleetMetadataRequest.add_member(:fleet_arn, Shapes::ShapeRef.new(shape: FleetArn, required: true, location_name: "FleetArn"))
    UpdateFleetMetadataRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: DisplayName, location_name: "DisplayName"))
    UpdateFleetMetadataRequest.add_member(:optimize_for_end_user_location, Shapes::ShapeRef.new(shape: Boolean, location_name: "OptimizeForEndUserLocation"))
    UpdateFleetMetadataRequest.struct_class = Types::UpdateFleetMetadataRequest

    UpdateFleetMetadataResponse.struct_class = Types::UpdateFleetMetadataResponse

    UpdateIdentityProviderConfigurationRequest.add_member(:fleet_arn, Shapes::ShapeRef.new(shape: FleetArn, required: true, location_name: "FleetArn"))
    UpdateIdentityProviderConfigurationRequest.add_member(:identity_provider_type, Shapes::ShapeRef.new(shape: IdentityProviderType, required: true, location_name: "IdentityProviderType"))
    UpdateIdentityProviderConfigurationRequest.add_member(:identity_provider_saml_metadata, Shapes::ShapeRef.new(shape: SamlMetadata, location_name: "IdentityProviderSamlMetadata"))
    UpdateIdentityProviderConfigurationRequest.struct_class = Types::UpdateIdentityProviderConfigurationRequest

    UpdateIdentityProviderConfigurationResponse.struct_class = Types::UpdateIdentityProviderConfigurationResponse

    WebsiteAuthorizationProviderSummary.add_member(:authorization_provider_id, Shapes::ShapeRef.new(shape: Id, location_name: "AuthorizationProviderId"))
    WebsiteAuthorizationProviderSummary.add_member(:authorization_provider_type, Shapes::ShapeRef.new(shape: AuthorizationProviderType, required: true, location_name: "AuthorizationProviderType"))
    WebsiteAuthorizationProviderSummary.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, location_name: "DomainName"))
    WebsiteAuthorizationProviderSummary.add_member(:created_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "CreatedTime"))
    WebsiteAuthorizationProviderSummary.struct_class = Types::WebsiteAuthorizationProviderSummary

    WebsiteAuthorizationProvidersSummaryList.member = Shapes::ShapeRef.new(shape: WebsiteAuthorizationProviderSummary)

    WebsiteCaSummary.add_member(:website_ca_id, Shapes::ShapeRef.new(shape: Id, location_name: "WebsiteCaId"))
    WebsiteCaSummary.add_member(:created_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "CreatedTime"))
    WebsiteCaSummary.add_member(:display_name, Shapes::ShapeRef.new(shape: DisplayName, location_name: "DisplayName"))
    WebsiteCaSummary.struct_class = Types::WebsiteCaSummary

    WebsiteCaSummaryList.member = Shapes::ShapeRef.new(shape: WebsiteCaSummary)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2018-09-25"

      api.metadata = {
        "apiVersion" => "2018-09-25",
        "endpointPrefix" => "worklink",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceAbbreviation" => "WorkLink",
        "serviceFullName" => "Amazon WorkLink",
        "serviceId" => "WorkLink",
        "signatureVersion" => "v4",
        "signingName" => "worklink",
        "uid" => "worklink-2018-09-25",
      }

      api.add_operation(:associate_domain, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateDomain"
        o.http_method = "POST"
        o.http_request_uri = "/associateDomain"
        o.input = Shapes::ShapeRef.new(shape: AssociateDomainRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateDomainResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:associate_website_authorization_provider, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateWebsiteAuthorizationProvider"
        o.http_method = "POST"
        o.http_request_uri = "/associateWebsiteAuthorizationProvider"
        o.input = Shapes::ShapeRef.new(shape: AssociateWebsiteAuthorizationProviderRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateWebsiteAuthorizationProviderResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:associate_website_certificate_authority, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateWebsiteCertificateAuthority"
        o.http_method = "POST"
        o.http_request_uri = "/associateWebsiteCertificateAuthority"
        o.input = Shapes::ShapeRef.new(shape: AssociateWebsiteCertificateAuthorityRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateWebsiteCertificateAuthorityResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:create_fleet, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateFleet"
        o.http_method = "POST"
        o.http_request_uri = "/createFleet"
        o.input = Shapes::ShapeRef.new(shape: CreateFleetRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateFleetResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:delete_fleet, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteFleet"
        o.http_method = "POST"
        o.http_request_uri = "/deleteFleet"
        o.input = Shapes::ShapeRef.new(shape: DeleteFleetRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteFleetResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:describe_audit_stream_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAuditStreamConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/describeAuditStreamConfiguration"
        o.input = Shapes::ShapeRef.new(shape: DescribeAuditStreamConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAuditStreamConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:describe_company_network_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeCompanyNetworkConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/describeCompanyNetworkConfiguration"
        o.input = Shapes::ShapeRef.new(shape: DescribeCompanyNetworkConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeCompanyNetworkConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:describe_device, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDevice"
        o.http_method = "POST"
        o.http_request_uri = "/describeDevice"
        o.input = Shapes::ShapeRef.new(shape: DescribeDeviceRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeDeviceResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:describe_device_policy_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDevicePolicyConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/describeDevicePolicyConfiguration"
        o.input = Shapes::ShapeRef.new(shape: DescribeDevicePolicyConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeDevicePolicyConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:describe_domain, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDomain"
        o.http_method = "POST"
        o.http_request_uri = "/describeDomain"
        o.input = Shapes::ShapeRef.new(shape: DescribeDomainRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeDomainResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:describe_fleet_metadata, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeFleetMetadata"
        o.http_method = "POST"
        o.http_request_uri = "/describeFleetMetadata"
        o.input = Shapes::ShapeRef.new(shape: DescribeFleetMetadataRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeFleetMetadataResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:describe_identity_provider_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeIdentityProviderConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/describeIdentityProviderConfiguration"
        o.input = Shapes::ShapeRef.new(shape: DescribeIdentityProviderConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeIdentityProviderConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:describe_website_certificate_authority, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeWebsiteCertificateAuthority"
        o.http_method = "POST"
        o.http_request_uri = "/describeWebsiteCertificateAuthority"
        o.input = Shapes::ShapeRef.new(shape: DescribeWebsiteCertificateAuthorityRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeWebsiteCertificateAuthorityResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:disassociate_domain, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateDomain"
        o.http_method = "POST"
        o.http_request_uri = "/disassociateDomain"
        o.input = Shapes::ShapeRef.new(shape: DisassociateDomainRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateDomainResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:disassociate_website_authorization_provider, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateWebsiteAuthorizationProvider"
        o.http_method = "POST"
        o.http_request_uri = "/disassociateWebsiteAuthorizationProvider"
        o.input = Shapes::ShapeRef.new(shape: DisassociateWebsiteAuthorizationProviderRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateWebsiteAuthorizationProviderResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:disassociate_website_certificate_authority, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateWebsiteCertificateAuthority"
        o.http_method = "POST"
        o.http_request_uri = "/disassociateWebsiteCertificateAuthority"
        o.input = Shapes::ShapeRef.new(shape: DisassociateWebsiteCertificateAuthorityRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateWebsiteCertificateAuthorityResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:list_devices, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDevices"
        o.http_method = "POST"
        o.http_request_uri = "/listDevices"
        o.input = Shapes::ShapeRef.new(shape: ListDevicesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDevicesResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_domains, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDomains"
        o.http_method = "POST"
        o.http_request_uri = "/listDomains"
        o.input = Shapes::ShapeRef.new(shape: ListDomainsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDomainsResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_fleets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListFleets"
        o.http_method = "POST"
        o.http_request_uri = "/listFleets"
        o.input = Shapes::ShapeRef.new(shape: ListFleetsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListFleetsResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "GET"
        o.http_request_uri = "/tags/{ResourceArn}"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:list_website_authorization_providers, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListWebsiteAuthorizationProviders"
        o.http_method = "POST"
        o.http_request_uri = "/listWebsiteAuthorizationProviders"
        o.input = Shapes::ShapeRef.new(shape: ListWebsiteAuthorizationProvidersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListWebsiteAuthorizationProvidersResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_website_certificate_authorities, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListWebsiteCertificateAuthorities"
        o.http_method = "POST"
        o.http_request_uri = "/listWebsiteCertificateAuthorities"
        o.input = Shapes::ShapeRef.new(shape: ListWebsiteCertificateAuthoritiesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListWebsiteCertificateAuthoritiesResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:restore_domain_access, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RestoreDomainAccess"
        o.http_method = "POST"
        o.http_request_uri = "/restoreDomainAccess"
        o.input = Shapes::ShapeRef.new(shape: RestoreDomainAccessRequest)
        o.output = Shapes::ShapeRef.new(shape: RestoreDomainAccessResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:revoke_domain_access, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RevokeDomainAccess"
        o.http_method = "POST"
        o.http_request_uri = "/revokeDomainAccess"
        o.input = Shapes::ShapeRef.new(shape: RevokeDomainAccessRequest)
        o.output = Shapes::ShapeRef.new(shape: RevokeDomainAccessResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:sign_out_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SignOutUser"
        o.http_method = "POST"
        o.http_request_uri = "/signOutUser"
        o.input = Shapes::ShapeRef.new(shape: SignOutUserRequest)
        o.output = Shapes::ShapeRef.new(shape: SignOutUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{ResourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{ResourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:update_audit_stream_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAuditStreamConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/updateAuditStreamConfiguration"
        o.input = Shapes::ShapeRef.new(shape: UpdateAuditStreamConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateAuditStreamConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:update_company_network_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateCompanyNetworkConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/updateCompanyNetworkConfiguration"
        o.input = Shapes::ShapeRef.new(shape: UpdateCompanyNetworkConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateCompanyNetworkConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:update_device_policy_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDevicePolicyConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/updateDevicePolicyConfiguration"
        o.input = Shapes::ShapeRef.new(shape: UpdateDevicePolicyConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateDevicePolicyConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:update_domain_metadata, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDomainMetadata"
        o.http_method = "POST"
        o.http_request_uri = "/updateDomainMetadata"
        o.input = Shapes::ShapeRef.new(shape: UpdateDomainMetadataRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateDomainMetadataResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:update_fleet_metadata, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateFleetMetadata"
        o.http_method = "POST"
        o.http_request_uri = "/UpdateFleetMetadata"
        o.input = Shapes::ShapeRef.new(shape: UpdateFleetMetadataRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateFleetMetadataResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:update_identity_provider_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateIdentityProviderConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/updateIdentityProviderConfiguration"
        o.input = Shapes::ShapeRef.new(shape: UpdateIdentityProviderConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateIdentityProviderConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)
    end

  end
end
