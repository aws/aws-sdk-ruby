# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::WorkSpacesWeb
  # @api private
  module ClientApi

    include Seahorse::Model

    ARN = Shapes::StringShape.new(name: 'ARN')
    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    ArnList = Shapes::ListShape.new(name: 'ArnList')
    AssociateBrowserSettingsRequest = Shapes::StructureShape.new(name: 'AssociateBrowserSettingsRequest')
    AssociateBrowserSettingsResponse = Shapes::StructureShape.new(name: 'AssociateBrowserSettingsResponse')
    AssociateDataProtectionSettingsRequest = Shapes::StructureShape.new(name: 'AssociateDataProtectionSettingsRequest')
    AssociateDataProtectionSettingsResponse = Shapes::StructureShape.new(name: 'AssociateDataProtectionSettingsResponse')
    AssociateIpAccessSettingsRequest = Shapes::StructureShape.new(name: 'AssociateIpAccessSettingsRequest')
    AssociateIpAccessSettingsResponse = Shapes::StructureShape.new(name: 'AssociateIpAccessSettingsResponse')
    AssociateNetworkSettingsRequest = Shapes::StructureShape.new(name: 'AssociateNetworkSettingsRequest')
    AssociateNetworkSettingsResponse = Shapes::StructureShape.new(name: 'AssociateNetworkSettingsResponse')
    AssociateSessionLoggerRequest = Shapes::StructureShape.new(name: 'AssociateSessionLoggerRequest')
    AssociateSessionLoggerResponse = Shapes::StructureShape.new(name: 'AssociateSessionLoggerResponse')
    AssociateTrustStoreRequest = Shapes::StructureShape.new(name: 'AssociateTrustStoreRequest')
    AssociateTrustStoreResponse = Shapes::StructureShape.new(name: 'AssociateTrustStoreResponse')
    AssociateUserAccessLoggingSettingsRequest = Shapes::StructureShape.new(name: 'AssociateUserAccessLoggingSettingsRequest')
    AssociateUserAccessLoggingSettingsResponse = Shapes::StructureShape.new(name: 'AssociateUserAccessLoggingSettingsResponse')
    AssociateUserSettingsRequest = Shapes::StructureShape.new(name: 'AssociateUserSettingsRequest')
    AssociateUserSettingsResponse = Shapes::StructureShape.new(name: 'AssociateUserSettingsResponse')
    AuthenticationType = Shapes::StringShape.new(name: 'AuthenticationType')
    BrowserPolicy = Shapes::StringShape.new(name: 'BrowserPolicy')
    BrowserSettings = Shapes::StructureShape.new(name: 'BrowserSettings')
    BrowserSettingsList = Shapes::ListShape.new(name: 'BrowserSettingsList')
    BrowserSettingsSummary = Shapes::StructureShape.new(name: 'BrowserSettingsSummary')
    BrowserType = Shapes::StringShape.new(name: 'BrowserType')
    BuiltInPatternId = Shapes::StringShape.new(name: 'BuiltInPatternId')
    Certificate = Shapes::StructureShape.new(name: 'Certificate')
    CertificateAuthorityBody = Shapes::BlobShape.new(name: 'CertificateAuthorityBody')
    CertificateList = Shapes::ListShape.new(name: 'CertificateList')
    CertificatePrincipal = Shapes::StringShape.new(name: 'CertificatePrincipal')
    CertificateSummary = Shapes::StructureShape.new(name: 'CertificateSummary')
    CertificateSummaryList = Shapes::ListShape.new(name: 'CertificateSummaryList')
    CertificateThumbprint = Shapes::StringShape.new(name: 'CertificateThumbprint')
    CertificateThumbprintList = Shapes::ListShape.new(name: 'CertificateThumbprintList')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    ConfidenceLevel = Shapes::IntegerShape.new(name: 'ConfidenceLevel')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CookieDomain = Shapes::StringShape.new(name: 'CookieDomain')
    CookieName = Shapes::StringShape.new(name: 'CookieName')
    CookiePath = Shapes::StringShape.new(name: 'CookiePath')
    CookieSpecification = Shapes::StructureShape.new(name: 'CookieSpecification')
    CookieSpecifications = Shapes::ListShape.new(name: 'CookieSpecifications')
    CookieSynchronizationConfiguration = Shapes::StructureShape.new(name: 'CookieSynchronizationConfiguration')
    CreateBrowserSettingsRequest = Shapes::StructureShape.new(name: 'CreateBrowserSettingsRequest')
    CreateBrowserSettingsResponse = Shapes::StructureShape.new(name: 'CreateBrowserSettingsResponse')
    CreateDataProtectionSettingsRequest = Shapes::StructureShape.new(name: 'CreateDataProtectionSettingsRequest')
    CreateDataProtectionSettingsResponse = Shapes::StructureShape.new(name: 'CreateDataProtectionSettingsResponse')
    CreateIdentityProviderRequest = Shapes::StructureShape.new(name: 'CreateIdentityProviderRequest')
    CreateIdentityProviderResponse = Shapes::StructureShape.new(name: 'CreateIdentityProviderResponse')
    CreateIpAccessSettingsRequest = Shapes::StructureShape.new(name: 'CreateIpAccessSettingsRequest')
    CreateIpAccessSettingsResponse = Shapes::StructureShape.new(name: 'CreateIpAccessSettingsResponse')
    CreateNetworkSettingsRequest = Shapes::StructureShape.new(name: 'CreateNetworkSettingsRequest')
    CreateNetworkSettingsResponse = Shapes::StructureShape.new(name: 'CreateNetworkSettingsResponse')
    CreatePortalRequest = Shapes::StructureShape.new(name: 'CreatePortalRequest')
    CreatePortalResponse = Shapes::StructureShape.new(name: 'CreatePortalResponse')
    CreateSessionLoggerRequest = Shapes::StructureShape.new(name: 'CreateSessionLoggerRequest')
    CreateSessionLoggerResponse = Shapes::StructureShape.new(name: 'CreateSessionLoggerResponse')
    CreateTrustStoreRequest = Shapes::StructureShape.new(name: 'CreateTrustStoreRequest')
    CreateTrustStoreResponse = Shapes::StructureShape.new(name: 'CreateTrustStoreResponse')
    CreateUserAccessLoggingSettingsRequest = Shapes::StructureShape.new(name: 'CreateUserAccessLoggingSettingsRequest')
    CreateUserAccessLoggingSettingsResponse = Shapes::StructureShape.new(name: 'CreateUserAccessLoggingSettingsResponse')
    CreateUserSettingsRequest = Shapes::StructureShape.new(name: 'CreateUserSettingsRequest')
    CreateUserSettingsResponse = Shapes::StructureShape.new(name: 'CreateUserSettingsResponse')
    CustomPattern = Shapes::StructureShape.new(name: 'CustomPattern')
    DataProtectionSettings = Shapes::StructureShape.new(name: 'DataProtectionSettings')
    DataProtectionSettingsList = Shapes::ListShape.new(name: 'DataProtectionSettingsList')
    DataProtectionSettingsSummary = Shapes::StructureShape.new(name: 'DataProtectionSettingsSummary')
    DeleteBrowserSettingsRequest = Shapes::StructureShape.new(name: 'DeleteBrowserSettingsRequest')
    DeleteBrowserSettingsResponse = Shapes::StructureShape.new(name: 'DeleteBrowserSettingsResponse')
    DeleteDataProtectionSettingsRequest = Shapes::StructureShape.new(name: 'DeleteDataProtectionSettingsRequest')
    DeleteDataProtectionSettingsResponse = Shapes::StructureShape.new(name: 'DeleteDataProtectionSettingsResponse')
    DeleteIdentityProviderRequest = Shapes::StructureShape.new(name: 'DeleteIdentityProviderRequest')
    DeleteIdentityProviderResponse = Shapes::StructureShape.new(name: 'DeleteIdentityProviderResponse')
    DeleteIpAccessSettingsRequest = Shapes::StructureShape.new(name: 'DeleteIpAccessSettingsRequest')
    DeleteIpAccessSettingsResponse = Shapes::StructureShape.new(name: 'DeleteIpAccessSettingsResponse')
    DeleteNetworkSettingsRequest = Shapes::StructureShape.new(name: 'DeleteNetworkSettingsRequest')
    DeleteNetworkSettingsResponse = Shapes::StructureShape.new(name: 'DeleteNetworkSettingsResponse')
    DeletePortalRequest = Shapes::StructureShape.new(name: 'DeletePortalRequest')
    DeletePortalResponse = Shapes::StructureShape.new(name: 'DeletePortalResponse')
    DeleteSessionLoggerRequest = Shapes::StructureShape.new(name: 'DeleteSessionLoggerRequest')
    DeleteSessionLoggerResponse = Shapes::StructureShape.new(name: 'DeleteSessionLoggerResponse')
    DeleteTrustStoreRequest = Shapes::StructureShape.new(name: 'DeleteTrustStoreRequest')
    DeleteTrustStoreResponse = Shapes::StructureShape.new(name: 'DeleteTrustStoreResponse')
    DeleteUserAccessLoggingSettingsRequest = Shapes::StructureShape.new(name: 'DeleteUserAccessLoggingSettingsRequest')
    DeleteUserAccessLoggingSettingsResponse = Shapes::StructureShape.new(name: 'DeleteUserAccessLoggingSettingsResponse')
    DeleteUserSettingsRequest = Shapes::StructureShape.new(name: 'DeleteUserSettingsRequest')
    DeleteUserSettingsResponse = Shapes::StructureShape.new(name: 'DeleteUserSettingsResponse')
    Description = Shapes::StringShape.new(name: 'Description')
    DescriptionSafe = Shapes::StringShape.new(name: 'DescriptionSafe')
    DisassociateBrowserSettingsRequest = Shapes::StructureShape.new(name: 'DisassociateBrowserSettingsRequest')
    DisassociateBrowserSettingsResponse = Shapes::StructureShape.new(name: 'DisassociateBrowserSettingsResponse')
    DisassociateDataProtectionSettingsRequest = Shapes::StructureShape.new(name: 'DisassociateDataProtectionSettingsRequest')
    DisassociateDataProtectionSettingsResponse = Shapes::StructureShape.new(name: 'DisassociateDataProtectionSettingsResponse')
    DisassociateIpAccessSettingsRequest = Shapes::StructureShape.new(name: 'DisassociateIpAccessSettingsRequest')
    DisassociateIpAccessSettingsResponse = Shapes::StructureShape.new(name: 'DisassociateIpAccessSettingsResponse')
    DisassociateNetworkSettingsRequest = Shapes::StructureShape.new(name: 'DisassociateNetworkSettingsRequest')
    DisassociateNetworkSettingsResponse = Shapes::StructureShape.new(name: 'DisassociateNetworkSettingsResponse')
    DisassociateSessionLoggerRequest = Shapes::StructureShape.new(name: 'DisassociateSessionLoggerRequest')
    DisassociateSessionLoggerResponse = Shapes::StructureShape.new(name: 'DisassociateSessionLoggerResponse')
    DisassociateTrustStoreRequest = Shapes::StructureShape.new(name: 'DisassociateTrustStoreRequest')
    DisassociateTrustStoreResponse = Shapes::StructureShape.new(name: 'DisassociateTrustStoreResponse')
    DisassociateUserAccessLoggingSettingsRequest = Shapes::StructureShape.new(name: 'DisassociateUserAccessLoggingSettingsRequest')
    DisassociateUserAccessLoggingSettingsResponse = Shapes::StructureShape.new(name: 'DisassociateUserAccessLoggingSettingsResponse')
    DisassociateUserSettingsRequest = Shapes::StructureShape.new(name: 'DisassociateUserSettingsRequest')
    DisassociateUserSettingsResponse = Shapes::StructureShape.new(name: 'DisassociateUserSettingsResponse')
    DisconnectTimeoutInMinutes = Shapes::IntegerShape.new(name: 'DisconnectTimeoutInMinutes')
    DisplayName = Shapes::StringShape.new(name: 'DisplayName')
    DisplayNameSafe = Shapes::StringShape.new(name: 'DisplayNameSafe')
    EnabledType = Shapes::StringShape.new(name: 'EnabledType')
    EncryptionContextMap = Shapes::MapShape.new(name: 'EncryptionContextMap')
    Event = Shapes::StringShape.new(name: 'Event')
    EventFilter = Shapes::UnionShape.new(name: 'EventFilter')
    Events = Shapes::ListShape.new(name: 'Events')
    ExceptionMessage = Shapes::StringShape.new(name: 'ExceptionMessage')
    ExpireSessionRequest = Shapes::StructureShape.new(name: 'ExpireSessionRequest')
    ExpireSessionResponse = Shapes::StructureShape.new(name: 'ExpireSessionResponse')
    FieldName = Shapes::StringShape.new(name: 'FieldName')
    FolderStructure = Shapes::StringShape.new(name: 'FolderStructure')
    GetBrowserSettingsRequest = Shapes::StructureShape.new(name: 'GetBrowserSettingsRequest')
    GetBrowserSettingsResponse = Shapes::StructureShape.new(name: 'GetBrowserSettingsResponse')
    GetDataProtectionSettingsRequest = Shapes::StructureShape.new(name: 'GetDataProtectionSettingsRequest')
    GetDataProtectionSettingsResponse = Shapes::StructureShape.new(name: 'GetDataProtectionSettingsResponse')
    GetIdentityProviderRequest = Shapes::StructureShape.new(name: 'GetIdentityProviderRequest')
    GetIdentityProviderResponse = Shapes::StructureShape.new(name: 'GetIdentityProviderResponse')
    GetIpAccessSettingsRequest = Shapes::StructureShape.new(name: 'GetIpAccessSettingsRequest')
    GetIpAccessSettingsResponse = Shapes::StructureShape.new(name: 'GetIpAccessSettingsResponse')
    GetNetworkSettingsRequest = Shapes::StructureShape.new(name: 'GetNetworkSettingsRequest')
    GetNetworkSettingsResponse = Shapes::StructureShape.new(name: 'GetNetworkSettingsResponse')
    GetPortalRequest = Shapes::StructureShape.new(name: 'GetPortalRequest')
    GetPortalResponse = Shapes::StructureShape.new(name: 'GetPortalResponse')
    GetPortalServiceProviderMetadataRequest = Shapes::StructureShape.new(name: 'GetPortalServiceProviderMetadataRequest')
    GetPortalServiceProviderMetadataResponse = Shapes::StructureShape.new(name: 'GetPortalServiceProviderMetadataResponse')
    GetSessionLoggerRequest = Shapes::StructureShape.new(name: 'GetSessionLoggerRequest')
    GetSessionLoggerResponse = Shapes::StructureShape.new(name: 'GetSessionLoggerResponse')
    GetSessionRequest = Shapes::StructureShape.new(name: 'GetSessionRequest')
    GetSessionResponse = Shapes::StructureShape.new(name: 'GetSessionResponse')
    GetTrustStoreCertificateRequest = Shapes::StructureShape.new(name: 'GetTrustStoreCertificateRequest')
    GetTrustStoreCertificateResponse = Shapes::StructureShape.new(name: 'GetTrustStoreCertificateResponse')
    GetTrustStoreRequest = Shapes::StructureShape.new(name: 'GetTrustStoreRequest')
    GetTrustStoreResponse = Shapes::StructureShape.new(name: 'GetTrustStoreResponse')
    GetUserAccessLoggingSettingsRequest = Shapes::StructureShape.new(name: 'GetUserAccessLoggingSettingsRequest')
    GetUserAccessLoggingSettingsResponse = Shapes::StructureShape.new(name: 'GetUserAccessLoggingSettingsResponse')
    GetUserSettingsRequest = Shapes::StructureShape.new(name: 'GetUserSettingsRequest')
    GetUserSettingsResponse = Shapes::StructureShape.new(name: 'GetUserSettingsResponse')
    GlobalInlineRedactionUrls = Shapes::ListShape.new(name: 'GlobalInlineRedactionUrls')
    HiddenToolbarItemList = Shapes::ListShape.new(name: 'HiddenToolbarItemList')
    IdentityProvider = Shapes::StructureShape.new(name: 'IdentityProvider')
    IdentityProviderDetails = Shapes::MapShape.new(name: 'IdentityProviderDetails')
    IdentityProviderList = Shapes::ListShape.new(name: 'IdentityProviderList')
    IdentityProviderName = Shapes::StringShape.new(name: 'IdentityProviderName')
    IdentityProviderSummary = Shapes::StructureShape.new(name: 'IdentityProviderSummary')
    IdentityProviderType = Shapes::StringShape.new(name: 'IdentityProviderType')
    IdleDisconnectTimeoutInMinutes = Shapes::IntegerShape.new(name: 'IdleDisconnectTimeoutInMinutes')
    InlineRedactionConfiguration = Shapes::StructureShape.new(name: 'InlineRedactionConfiguration')
    InlineRedactionPattern = Shapes::StructureShape.new(name: 'InlineRedactionPattern')
    InlineRedactionPatterns = Shapes::ListShape.new(name: 'InlineRedactionPatterns')
    InlineRedactionUrl = Shapes::StringShape.new(name: 'InlineRedactionUrl')
    InlineRedactionUrls = Shapes::ListShape.new(name: 'InlineRedactionUrls')
    InstanceType = Shapes::StringShape.new(name: 'InstanceType')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    IpAccessSettings = Shapes::StructureShape.new(name: 'IpAccessSettings')
    IpAccessSettingsList = Shapes::ListShape.new(name: 'IpAccessSettingsList')
    IpAccessSettingsSummary = Shapes::StructureShape.new(name: 'IpAccessSettingsSummary')
    IpAddress = Shapes::StringShape.new(name: 'IpAddress')
    IpAddressList = Shapes::ListShape.new(name: 'IpAddressList')
    IpRange = Shapes::StringShape.new(name: 'IpRange')
    IpRule = Shapes::StructureShape.new(name: 'IpRule')
    IpRuleList = Shapes::ListShape.new(name: 'IpRuleList')
    KinesisStreamArn = Shapes::StringShape.new(name: 'KinesisStreamArn')
    ListBrowserSettingsRequest = Shapes::StructureShape.new(name: 'ListBrowserSettingsRequest')
    ListBrowserSettingsResponse = Shapes::StructureShape.new(name: 'ListBrowserSettingsResponse')
    ListDataProtectionSettingsRequest = Shapes::StructureShape.new(name: 'ListDataProtectionSettingsRequest')
    ListDataProtectionSettingsResponse = Shapes::StructureShape.new(name: 'ListDataProtectionSettingsResponse')
    ListIdentityProvidersRequest = Shapes::StructureShape.new(name: 'ListIdentityProvidersRequest')
    ListIdentityProvidersResponse = Shapes::StructureShape.new(name: 'ListIdentityProvidersResponse')
    ListIpAccessSettingsRequest = Shapes::StructureShape.new(name: 'ListIpAccessSettingsRequest')
    ListIpAccessSettingsResponse = Shapes::StructureShape.new(name: 'ListIpAccessSettingsResponse')
    ListNetworkSettingsRequest = Shapes::StructureShape.new(name: 'ListNetworkSettingsRequest')
    ListNetworkSettingsResponse = Shapes::StructureShape.new(name: 'ListNetworkSettingsResponse')
    ListPortalsRequest = Shapes::StructureShape.new(name: 'ListPortalsRequest')
    ListPortalsResponse = Shapes::StructureShape.new(name: 'ListPortalsResponse')
    ListSessionLoggersRequest = Shapes::StructureShape.new(name: 'ListSessionLoggersRequest')
    ListSessionLoggersResponse = Shapes::StructureShape.new(name: 'ListSessionLoggersResponse')
    ListSessionsRequest = Shapes::StructureShape.new(name: 'ListSessionsRequest')
    ListSessionsResponse = Shapes::StructureShape.new(name: 'ListSessionsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    ListTrustStoreCertificatesRequest = Shapes::StructureShape.new(name: 'ListTrustStoreCertificatesRequest')
    ListTrustStoreCertificatesResponse = Shapes::StructureShape.new(name: 'ListTrustStoreCertificatesResponse')
    ListTrustStoresRequest = Shapes::StructureShape.new(name: 'ListTrustStoresRequest')
    ListTrustStoresResponse = Shapes::StructureShape.new(name: 'ListTrustStoresResponse')
    ListUserAccessLoggingSettingsRequest = Shapes::StructureShape.new(name: 'ListUserAccessLoggingSettingsRequest')
    ListUserAccessLoggingSettingsResponse = Shapes::StructureShape.new(name: 'ListUserAccessLoggingSettingsResponse')
    ListUserSettingsRequest = Shapes::StructureShape.new(name: 'ListUserSettingsRequest')
    ListUserSettingsResponse = Shapes::StructureShape.new(name: 'ListUserSettingsResponse')
    LogConfiguration = Shapes::StructureShape.new(name: 'LogConfiguration')
    LogFileFormat = Shapes::StringShape.new(name: 'LogFileFormat')
    MaxConcurrentSessions = Shapes::IntegerShape.new(name: 'MaxConcurrentSessions')
    MaxDisplayResolution = Shapes::StringShape.new(name: 'MaxDisplayResolution')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    NetworkSettings = Shapes::StructureShape.new(name: 'NetworkSettings')
    NetworkSettingsList = Shapes::ListShape.new(name: 'NetworkSettingsList')
    NetworkSettingsSummary = Shapes::StructureShape.new(name: 'NetworkSettingsSummary')
    PaginationToken = Shapes::StringShape.new(name: 'PaginationToken')
    PatternName = Shapes::StringShape.new(name: 'PatternName')
    Portal = Shapes::StructureShape.new(name: 'Portal')
    PortalEndpoint = Shapes::StringShape.new(name: 'PortalEndpoint')
    PortalId = Shapes::StringShape.new(name: 'PortalId')
    PortalList = Shapes::ListShape.new(name: 'PortalList')
    PortalStatus = Shapes::StringShape.new(name: 'PortalStatus')
    PortalSummary = Shapes::StructureShape.new(name: 'PortalSummary')
    QuotaCode = Shapes::StringShape.new(name: 'QuotaCode')
    RedactionPlaceHolder = Shapes::StructureShape.new(name: 'RedactionPlaceHolder')
    RedactionPlaceHolderText = Shapes::StringShape.new(name: 'RedactionPlaceHolderText')
    RedactionPlaceHolderType = Shapes::StringShape.new(name: 'RedactionPlaceHolderType')
    Regex = Shapes::StringShape.new(name: 'Regex')
    RendererType = Shapes::StringShape.new(name: 'RendererType')
    ResourceId = Shapes::StringShape.new(name: 'ResourceId')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceType = Shapes::StringShape.new(name: 'ResourceType')
    RetryAfterSeconds = Shapes::IntegerShape.new(name: 'RetryAfterSeconds')
    S3Bucket = Shapes::StringShape.new(name: 'S3Bucket')
    S3BucketOwner = Shapes::StringShape.new(name: 'S3BucketOwner')
    S3KeyPrefix = Shapes::StringShape.new(name: 'S3KeyPrefix')
    S3LogConfiguration = Shapes::StructureShape.new(name: 'S3LogConfiguration')
    SamlMetadata = Shapes::StringShape.new(name: 'SamlMetadata')
    SecurityGroupId = Shapes::StringShape.new(name: 'SecurityGroupId')
    SecurityGroupIdList = Shapes::ListShape.new(name: 'SecurityGroupIdList')
    ServiceCode = Shapes::StringShape.new(name: 'ServiceCode')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    Session = Shapes::StructureShape.new(name: 'Session')
    SessionId = Shapes::StringShape.new(name: 'SessionId')
    SessionLogger = Shapes::StructureShape.new(name: 'SessionLogger')
    SessionLoggerList = Shapes::ListShape.new(name: 'SessionLoggerList')
    SessionLoggerSummary = Shapes::StructureShape.new(name: 'SessionLoggerSummary')
    SessionSortBy = Shapes::StringShape.new(name: 'SessionSortBy')
    SessionStatus = Shapes::StringShape.new(name: 'SessionStatus')
    SessionSummary = Shapes::StructureShape.new(name: 'SessionSummary')
    SessionSummaryList = Shapes::ListShape.new(name: 'SessionSummaryList')
    StatusReason = Shapes::StringShape.new(name: 'StatusReason')
    StringType = Shapes::StringShape.new(name: 'StringType')
    SubnetId = Shapes::StringShape.new(name: 'SubnetId')
    SubnetIdList = Shapes::ListShape.new(name: 'SubnetIdList')
    SubresourceARN = Shapes::StringShape.new(name: 'SubresourceARN')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagExceptionMessage = Shapes::StringShape.new(name: 'TagExceptionMessage')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    TooManyTagsException = Shapes::StructureShape.new(name: 'TooManyTagsException')
    ToolbarConfiguration = Shapes::StructureShape.new(name: 'ToolbarConfiguration')
    ToolbarItem = Shapes::StringShape.new(name: 'ToolbarItem')
    ToolbarType = Shapes::StringShape.new(name: 'ToolbarType')
    TrustStore = Shapes::StructureShape.new(name: 'TrustStore')
    TrustStoreSummary = Shapes::StructureShape.new(name: 'TrustStoreSummary')
    TrustStoreSummaryList = Shapes::ListShape.new(name: 'TrustStoreSummaryList')
    Unit = Shapes::StructureShape.new(name: 'Unit')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateBrowserSettingsRequest = Shapes::StructureShape.new(name: 'UpdateBrowserSettingsRequest')
    UpdateBrowserSettingsResponse = Shapes::StructureShape.new(name: 'UpdateBrowserSettingsResponse')
    UpdateDataProtectionSettingsRequest = Shapes::StructureShape.new(name: 'UpdateDataProtectionSettingsRequest')
    UpdateDataProtectionSettingsResponse = Shapes::StructureShape.new(name: 'UpdateDataProtectionSettingsResponse')
    UpdateIdentityProviderRequest = Shapes::StructureShape.new(name: 'UpdateIdentityProviderRequest')
    UpdateIdentityProviderResponse = Shapes::StructureShape.new(name: 'UpdateIdentityProviderResponse')
    UpdateIpAccessSettingsRequest = Shapes::StructureShape.new(name: 'UpdateIpAccessSettingsRequest')
    UpdateIpAccessSettingsResponse = Shapes::StructureShape.new(name: 'UpdateIpAccessSettingsResponse')
    UpdateNetworkSettingsRequest = Shapes::StructureShape.new(name: 'UpdateNetworkSettingsRequest')
    UpdateNetworkSettingsResponse = Shapes::StructureShape.new(name: 'UpdateNetworkSettingsResponse')
    UpdatePortalRequest = Shapes::StructureShape.new(name: 'UpdatePortalRequest')
    UpdatePortalResponse = Shapes::StructureShape.new(name: 'UpdatePortalResponse')
    UpdateSessionLoggerRequest = Shapes::StructureShape.new(name: 'UpdateSessionLoggerRequest')
    UpdateSessionLoggerResponse = Shapes::StructureShape.new(name: 'UpdateSessionLoggerResponse')
    UpdateTrustStoreRequest = Shapes::StructureShape.new(name: 'UpdateTrustStoreRequest')
    UpdateTrustStoreResponse = Shapes::StructureShape.new(name: 'UpdateTrustStoreResponse')
    UpdateUserAccessLoggingSettingsRequest = Shapes::StructureShape.new(name: 'UpdateUserAccessLoggingSettingsRequest')
    UpdateUserAccessLoggingSettingsResponse = Shapes::StructureShape.new(name: 'UpdateUserAccessLoggingSettingsResponse')
    UpdateUserSettingsRequest = Shapes::StructureShape.new(name: 'UpdateUserSettingsRequest')
    UpdateUserSettingsResponse = Shapes::StructureShape.new(name: 'UpdateUserSettingsResponse')
    UserAccessLoggingSettings = Shapes::StructureShape.new(name: 'UserAccessLoggingSettings')
    UserAccessLoggingSettingsList = Shapes::ListShape.new(name: 'UserAccessLoggingSettingsList')
    UserAccessLoggingSettingsSummary = Shapes::StructureShape.new(name: 'UserAccessLoggingSettingsSummary')
    UserSettings = Shapes::StructureShape.new(name: 'UserSettings')
    UserSettingsList = Shapes::ListShape.new(name: 'UserSettingsList')
    UserSettingsSummary = Shapes::StructureShape.new(name: 'UserSettingsSummary')
    Username = Shapes::StringShape.new(name: 'Username')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionField = Shapes::StructureShape.new(name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Shapes::ListShape.new(name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = Shapes::StringShape.new(name: 'ValidationExceptionReason')
    VisualMode = Shapes::StringShape.new(name: 'VisualMode')
    VpcId = Shapes::StringShape.new(name: 'VpcId')
    keyArn = Shapes::StringShape.new(name: 'keyArn')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    ArnList.member = Shapes::ShapeRef.new(shape: ARN)

    AssociateBrowserSettingsRequest.add_member(:portal_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location: "uri", location_name: "portalArn"))
    AssociateBrowserSettingsRequest.add_member(:browser_settings_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location: "querystring", location_name: "browserSettingsArn"))
    AssociateBrowserSettingsRequest.struct_class = Types::AssociateBrowserSettingsRequest

    AssociateBrowserSettingsResponse.add_member(:portal_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "portalArn"))
    AssociateBrowserSettingsResponse.add_member(:browser_settings_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "browserSettingsArn"))
    AssociateBrowserSettingsResponse.struct_class = Types::AssociateBrowserSettingsResponse

    AssociateDataProtectionSettingsRequest.add_member(:portal_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location: "uri", location_name: "portalArn"))
    AssociateDataProtectionSettingsRequest.add_member(:data_protection_settings_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location: "querystring", location_name: "dataProtectionSettingsArn"))
    AssociateDataProtectionSettingsRequest.struct_class = Types::AssociateDataProtectionSettingsRequest

    AssociateDataProtectionSettingsResponse.add_member(:portal_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "portalArn"))
    AssociateDataProtectionSettingsResponse.add_member(:data_protection_settings_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "dataProtectionSettingsArn"))
    AssociateDataProtectionSettingsResponse.struct_class = Types::AssociateDataProtectionSettingsResponse

    AssociateIpAccessSettingsRequest.add_member(:portal_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location: "uri", location_name: "portalArn"))
    AssociateIpAccessSettingsRequest.add_member(:ip_access_settings_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location: "querystring", location_name: "ipAccessSettingsArn"))
    AssociateIpAccessSettingsRequest.struct_class = Types::AssociateIpAccessSettingsRequest

    AssociateIpAccessSettingsResponse.add_member(:portal_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "portalArn"))
    AssociateIpAccessSettingsResponse.add_member(:ip_access_settings_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "ipAccessSettingsArn"))
    AssociateIpAccessSettingsResponse.struct_class = Types::AssociateIpAccessSettingsResponse

    AssociateNetworkSettingsRequest.add_member(:portal_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location: "uri", location_name: "portalArn"))
    AssociateNetworkSettingsRequest.add_member(:network_settings_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location: "querystring", location_name: "networkSettingsArn"))
    AssociateNetworkSettingsRequest.struct_class = Types::AssociateNetworkSettingsRequest

    AssociateNetworkSettingsResponse.add_member(:portal_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "portalArn"))
    AssociateNetworkSettingsResponse.add_member(:network_settings_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "networkSettingsArn"))
    AssociateNetworkSettingsResponse.struct_class = Types::AssociateNetworkSettingsResponse

    AssociateSessionLoggerRequest.add_member(:portal_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location: "uri", location_name: "portalArn"))
    AssociateSessionLoggerRequest.add_member(:session_logger_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location: "querystring", location_name: "sessionLoggerArn"))
    AssociateSessionLoggerRequest.struct_class = Types::AssociateSessionLoggerRequest

    AssociateSessionLoggerResponse.add_member(:portal_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "portalArn"))
    AssociateSessionLoggerResponse.add_member(:session_logger_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "sessionLoggerArn"))
    AssociateSessionLoggerResponse.struct_class = Types::AssociateSessionLoggerResponse

    AssociateTrustStoreRequest.add_member(:portal_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location: "uri", location_name: "portalArn"))
    AssociateTrustStoreRequest.add_member(:trust_store_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location: "querystring", location_name: "trustStoreArn"))
    AssociateTrustStoreRequest.struct_class = Types::AssociateTrustStoreRequest

    AssociateTrustStoreResponse.add_member(:portal_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "portalArn"))
    AssociateTrustStoreResponse.add_member(:trust_store_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "trustStoreArn"))
    AssociateTrustStoreResponse.struct_class = Types::AssociateTrustStoreResponse

    AssociateUserAccessLoggingSettingsRequest.add_member(:portal_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location: "uri", location_name: "portalArn"))
    AssociateUserAccessLoggingSettingsRequest.add_member(:user_access_logging_settings_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location: "querystring", location_name: "userAccessLoggingSettingsArn"))
    AssociateUserAccessLoggingSettingsRequest.struct_class = Types::AssociateUserAccessLoggingSettingsRequest

    AssociateUserAccessLoggingSettingsResponse.add_member(:portal_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "portalArn"))
    AssociateUserAccessLoggingSettingsResponse.add_member(:user_access_logging_settings_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "userAccessLoggingSettingsArn"))
    AssociateUserAccessLoggingSettingsResponse.struct_class = Types::AssociateUserAccessLoggingSettingsResponse

    AssociateUserSettingsRequest.add_member(:portal_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location: "uri", location_name: "portalArn"))
    AssociateUserSettingsRequest.add_member(:user_settings_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location: "querystring", location_name: "userSettingsArn"))
    AssociateUserSettingsRequest.struct_class = Types::AssociateUserSettingsRequest

    AssociateUserSettingsResponse.add_member(:portal_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "portalArn"))
    AssociateUserSettingsResponse.add_member(:user_settings_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "userSettingsArn"))
    AssociateUserSettingsResponse.struct_class = Types::AssociateUserSettingsResponse

    BrowserSettings.add_member(:browser_settings_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "browserSettingsArn"))
    BrowserSettings.add_member(:associated_portal_arns, Shapes::ShapeRef.new(shape: ArnList, location_name: "associatedPortalArns"))
    BrowserSettings.add_member(:browser_policy, Shapes::ShapeRef.new(shape: BrowserPolicy, location_name: "browserPolicy"))
    BrowserSettings.add_member(:customer_managed_key, Shapes::ShapeRef.new(shape: keyArn, location_name: "customerManagedKey"))
    BrowserSettings.add_member(:additional_encryption_context, Shapes::ShapeRef.new(shape: EncryptionContextMap, location_name: "additionalEncryptionContext"))
    BrowserSettings.struct_class = Types::BrowserSettings

    BrowserSettingsList.member = Shapes::ShapeRef.new(shape: BrowserSettingsSummary)

    BrowserSettingsSummary.add_member(:browser_settings_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "browserSettingsArn"))
    BrowserSettingsSummary.struct_class = Types::BrowserSettingsSummary

    Certificate.add_member(:thumbprint, Shapes::ShapeRef.new(shape: CertificateThumbprint, location_name: "thumbprint"))
    Certificate.add_member(:subject, Shapes::ShapeRef.new(shape: CertificatePrincipal, location_name: "subject"))
    Certificate.add_member(:issuer, Shapes::ShapeRef.new(shape: CertificatePrincipal, location_name: "issuer"))
    Certificate.add_member(:not_valid_before, Shapes::ShapeRef.new(shape: Timestamp, location_name: "notValidBefore"))
    Certificate.add_member(:not_valid_after, Shapes::ShapeRef.new(shape: Timestamp, location_name: "notValidAfter"))
    Certificate.add_member(:body, Shapes::ShapeRef.new(shape: CertificateAuthorityBody, location_name: "body"))
    Certificate.struct_class = Types::Certificate

    CertificateList.member = Shapes::ShapeRef.new(shape: CertificateAuthorityBody)

    CertificateSummary.add_member(:thumbprint, Shapes::ShapeRef.new(shape: CertificateThumbprint, location_name: "thumbprint"))
    CertificateSummary.add_member(:subject, Shapes::ShapeRef.new(shape: CertificatePrincipal, location_name: "subject"))
    CertificateSummary.add_member(:issuer, Shapes::ShapeRef.new(shape: CertificatePrincipal, location_name: "issuer"))
    CertificateSummary.add_member(:not_valid_before, Shapes::ShapeRef.new(shape: Timestamp, location_name: "notValidBefore"))
    CertificateSummary.add_member(:not_valid_after, Shapes::ShapeRef.new(shape: Timestamp, location_name: "notValidAfter"))
    CertificateSummary.struct_class = Types::CertificateSummary

    CertificateSummaryList.member = Shapes::ShapeRef.new(shape: CertificateSummary)

    CertificateThumbprintList.member = Shapes::ShapeRef.new(shape: CertificateThumbprint)

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    ConflictException.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "resourceId"))
    ConflictException.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "resourceType"))
    ConflictException.struct_class = Types::ConflictException

    CookieSpecification.add_member(:domain, Shapes::ShapeRef.new(shape: CookieDomain, required: true, location_name: "domain"))
    CookieSpecification.add_member(:name, Shapes::ShapeRef.new(shape: CookieName, location_name: "name"))
    CookieSpecification.add_member(:path, Shapes::ShapeRef.new(shape: CookiePath, location_name: "path"))
    CookieSpecification.struct_class = Types::CookieSpecification

    CookieSpecifications.member = Shapes::ShapeRef.new(shape: CookieSpecification)

    CookieSynchronizationConfiguration.add_member(:allowlist, Shapes::ShapeRef.new(shape: CookieSpecifications, required: true, location_name: "allowlist"))
    CookieSynchronizationConfiguration.add_member(:blocklist, Shapes::ShapeRef.new(shape: CookieSpecifications, location_name: "blocklist"))
    CookieSynchronizationConfiguration.struct_class = Types::CookieSynchronizationConfiguration

    CreateBrowserSettingsRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateBrowserSettingsRequest.add_member(:customer_managed_key, Shapes::ShapeRef.new(shape: keyArn, location_name: "customerManagedKey"))
    CreateBrowserSettingsRequest.add_member(:additional_encryption_context, Shapes::ShapeRef.new(shape: EncryptionContextMap, location_name: "additionalEncryptionContext"))
    CreateBrowserSettingsRequest.add_member(:browser_policy, Shapes::ShapeRef.new(shape: BrowserPolicy, required: true, location_name: "browserPolicy"))
    CreateBrowserSettingsRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateBrowserSettingsRequest.struct_class = Types::CreateBrowserSettingsRequest

    CreateBrowserSettingsResponse.add_member(:browser_settings_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "browserSettingsArn"))
    CreateBrowserSettingsResponse.struct_class = Types::CreateBrowserSettingsResponse

    CreateDataProtectionSettingsRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: DisplayNameSafe, location_name: "displayName"))
    CreateDataProtectionSettingsRequest.add_member(:description, Shapes::ShapeRef.new(shape: DescriptionSafe, location_name: "description"))
    CreateDataProtectionSettingsRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateDataProtectionSettingsRequest.add_member(:customer_managed_key, Shapes::ShapeRef.new(shape: keyArn, location_name: "customerManagedKey"))
    CreateDataProtectionSettingsRequest.add_member(:additional_encryption_context, Shapes::ShapeRef.new(shape: EncryptionContextMap, location_name: "additionalEncryptionContext"))
    CreateDataProtectionSettingsRequest.add_member(:inline_redaction_configuration, Shapes::ShapeRef.new(shape: InlineRedactionConfiguration, location_name: "inlineRedactionConfiguration"))
    CreateDataProtectionSettingsRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateDataProtectionSettingsRequest.struct_class = Types::CreateDataProtectionSettingsRequest

    CreateDataProtectionSettingsResponse.add_member(:data_protection_settings_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "dataProtectionSettingsArn"))
    CreateDataProtectionSettingsResponse.struct_class = Types::CreateDataProtectionSettingsResponse

    CreateIdentityProviderRequest.add_member(:portal_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "portalArn"))
    CreateIdentityProviderRequest.add_member(:identity_provider_name, Shapes::ShapeRef.new(shape: IdentityProviderName, required: true, location_name: "identityProviderName"))
    CreateIdentityProviderRequest.add_member(:identity_provider_type, Shapes::ShapeRef.new(shape: IdentityProviderType, required: true, location_name: "identityProviderType"))
    CreateIdentityProviderRequest.add_member(:identity_provider_details, Shapes::ShapeRef.new(shape: IdentityProviderDetails, required: true, location_name: "identityProviderDetails"))
    CreateIdentityProviderRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateIdentityProviderRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateIdentityProviderRequest.struct_class = Types::CreateIdentityProviderRequest

    CreateIdentityProviderResponse.add_member(:identity_provider_arn, Shapes::ShapeRef.new(shape: SubresourceARN, required: true, location_name: "identityProviderArn"))
    CreateIdentityProviderResponse.struct_class = Types::CreateIdentityProviderResponse

    CreateIpAccessSettingsRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: DisplayName, location_name: "displayName"))
    CreateIpAccessSettingsRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateIpAccessSettingsRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateIpAccessSettingsRequest.add_member(:customer_managed_key, Shapes::ShapeRef.new(shape: keyArn, location_name: "customerManagedKey"))
    CreateIpAccessSettingsRequest.add_member(:additional_encryption_context, Shapes::ShapeRef.new(shape: EncryptionContextMap, location_name: "additionalEncryptionContext"))
    CreateIpAccessSettingsRequest.add_member(:ip_rules, Shapes::ShapeRef.new(shape: IpRuleList, required: true, location_name: "ipRules"))
    CreateIpAccessSettingsRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateIpAccessSettingsRequest.struct_class = Types::CreateIpAccessSettingsRequest

    CreateIpAccessSettingsResponse.add_member(:ip_access_settings_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "ipAccessSettingsArn"))
    CreateIpAccessSettingsResponse.struct_class = Types::CreateIpAccessSettingsResponse

    CreateNetworkSettingsRequest.add_member(:vpc_id, Shapes::ShapeRef.new(shape: VpcId, required: true, location_name: "vpcId"))
    CreateNetworkSettingsRequest.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: SubnetIdList, required: true, location_name: "subnetIds"))
    CreateNetworkSettingsRequest.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: SecurityGroupIdList, required: true, location_name: "securityGroupIds"))
    CreateNetworkSettingsRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateNetworkSettingsRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateNetworkSettingsRequest.struct_class = Types::CreateNetworkSettingsRequest

    CreateNetworkSettingsResponse.add_member(:network_settings_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "networkSettingsArn"))
    CreateNetworkSettingsResponse.struct_class = Types::CreateNetworkSettingsResponse

    CreatePortalRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: DisplayName, location_name: "displayName"))
    CreatePortalRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreatePortalRequest.add_member(:customer_managed_key, Shapes::ShapeRef.new(shape: keyArn, location_name: "customerManagedKey"))
    CreatePortalRequest.add_member(:additional_encryption_context, Shapes::ShapeRef.new(shape: EncryptionContextMap, location_name: "additionalEncryptionContext"))
    CreatePortalRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreatePortalRequest.add_member(:authentication_type, Shapes::ShapeRef.new(shape: AuthenticationType, location_name: "authenticationType"))
    CreatePortalRequest.add_member(:instance_type, Shapes::ShapeRef.new(shape: InstanceType, location_name: "instanceType"))
    CreatePortalRequest.add_member(:max_concurrent_sessions, Shapes::ShapeRef.new(shape: MaxConcurrentSessions, location_name: "maxConcurrentSessions"))
    CreatePortalRequest.struct_class = Types::CreatePortalRequest

    CreatePortalResponse.add_member(:portal_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "portalArn"))
    CreatePortalResponse.add_member(:portal_endpoint, Shapes::ShapeRef.new(shape: PortalEndpoint, required: true, location_name: "portalEndpoint"))
    CreatePortalResponse.struct_class = Types::CreatePortalResponse

    CreateSessionLoggerRequest.add_member(:event_filter, Shapes::ShapeRef.new(shape: EventFilter, required: true, location_name: "eventFilter"))
    CreateSessionLoggerRequest.add_member(:log_configuration, Shapes::ShapeRef.new(shape: LogConfiguration, required: true, location_name: "logConfiguration"))
    CreateSessionLoggerRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: DisplayNameSafe, location_name: "displayName"))
    CreateSessionLoggerRequest.add_member(:customer_managed_key, Shapes::ShapeRef.new(shape: keyArn, location_name: "customerManagedKey"))
    CreateSessionLoggerRequest.add_member(:additional_encryption_context, Shapes::ShapeRef.new(shape: EncryptionContextMap, location_name: "additionalEncryptionContext"))
    CreateSessionLoggerRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateSessionLoggerRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateSessionLoggerRequest.struct_class = Types::CreateSessionLoggerRequest

    CreateSessionLoggerResponse.add_member(:session_logger_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "sessionLoggerArn"))
    CreateSessionLoggerResponse.struct_class = Types::CreateSessionLoggerResponse

    CreateTrustStoreRequest.add_member(:certificate_list, Shapes::ShapeRef.new(shape: CertificateList, required: true, location_name: "certificateList"))
    CreateTrustStoreRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateTrustStoreRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateTrustStoreRequest.struct_class = Types::CreateTrustStoreRequest

    CreateTrustStoreResponse.add_member(:trust_store_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "trustStoreArn"))
    CreateTrustStoreResponse.struct_class = Types::CreateTrustStoreResponse

    CreateUserAccessLoggingSettingsRequest.add_member(:kinesis_stream_arn, Shapes::ShapeRef.new(shape: KinesisStreamArn, required: true, location_name: "kinesisStreamArn"))
    CreateUserAccessLoggingSettingsRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateUserAccessLoggingSettingsRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateUserAccessLoggingSettingsRequest.struct_class = Types::CreateUserAccessLoggingSettingsRequest

    CreateUserAccessLoggingSettingsResponse.add_member(:user_access_logging_settings_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "userAccessLoggingSettingsArn"))
    CreateUserAccessLoggingSettingsResponse.struct_class = Types::CreateUserAccessLoggingSettingsResponse

    CreateUserSettingsRequest.add_member(:copy_allowed, Shapes::ShapeRef.new(shape: EnabledType, required: true, location_name: "copyAllowed"))
    CreateUserSettingsRequest.add_member(:paste_allowed, Shapes::ShapeRef.new(shape: EnabledType, required: true, location_name: "pasteAllowed"))
    CreateUserSettingsRequest.add_member(:download_allowed, Shapes::ShapeRef.new(shape: EnabledType, required: true, location_name: "downloadAllowed"))
    CreateUserSettingsRequest.add_member(:upload_allowed, Shapes::ShapeRef.new(shape: EnabledType, required: true, location_name: "uploadAllowed"))
    CreateUserSettingsRequest.add_member(:print_allowed, Shapes::ShapeRef.new(shape: EnabledType, required: true, location_name: "printAllowed"))
    CreateUserSettingsRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateUserSettingsRequest.add_member(:disconnect_timeout_in_minutes, Shapes::ShapeRef.new(shape: DisconnectTimeoutInMinutes, location_name: "disconnectTimeoutInMinutes"))
    CreateUserSettingsRequest.add_member(:idle_disconnect_timeout_in_minutes, Shapes::ShapeRef.new(shape: IdleDisconnectTimeoutInMinutes, location_name: "idleDisconnectTimeoutInMinutes"))
    CreateUserSettingsRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateUserSettingsRequest.add_member(:cookie_synchronization_configuration, Shapes::ShapeRef.new(shape: CookieSynchronizationConfiguration, location_name: "cookieSynchronizationConfiguration"))
    CreateUserSettingsRequest.add_member(:customer_managed_key, Shapes::ShapeRef.new(shape: keyArn, location_name: "customerManagedKey"))
    CreateUserSettingsRequest.add_member(:additional_encryption_context, Shapes::ShapeRef.new(shape: EncryptionContextMap, location_name: "additionalEncryptionContext"))
    CreateUserSettingsRequest.add_member(:deep_link_allowed, Shapes::ShapeRef.new(shape: EnabledType, location_name: "deepLinkAllowed"))
    CreateUserSettingsRequest.add_member(:toolbar_configuration, Shapes::ShapeRef.new(shape: ToolbarConfiguration, location_name: "toolbarConfiguration"))
    CreateUserSettingsRequest.struct_class = Types::CreateUserSettingsRequest

    CreateUserSettingsResponse.add_member(:user_settings_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "userSettingsArn"))
    CreateUserSettingsResponse.struct_class = Types::CreateUserSettingsResponse

    CustomPattern.add_member(:pattern_name, Shapes::ShapeRef.new(shape: PatternName, required: true, location_name: "patternName"))
    CustomPattern.add_member(:pattern_regex, Shapes::ShapeRef.new(shape: Regex, required: true, location_name: "patternRegex"))
    CustomPattern.add_member(:pattern_description, Shapes::ShapeRef.new(shape: DescriptionSafe, location_name: "patternDescription"))
    CustomPattern.add_member(:keyword_regex, Shapes::ShapeRef.new(shape: Regex, location_name: "keywordRegex"))
    CustomPattern.struct_class = Types::CustomPattern

    DataProtectionSettings.add_member(:data_protection_settings_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "dataProtectionSettingsArn"))
    DataProtectionSettings.add_member(:inline_redaction_configuration, Shapes::ShapeRef.new(shape: InlineRedactionConfiguration, location_name: "inlineRedactionConfiguration"))
    DataProtectionSettings.add_member(:associated_portal_arns, Shapes::ShapeRef.new(shape: ArnList, location_name: "associatedPortalArns"))
    DataProtectionSettings.add_member(:display_name, Shapes::ShapeRef.new(shape: DisplayNameSafe, location_name: "displayName"))
    DataProtectionSettings.add_member(:description, Shapes::ShapeRef.new(shape: DescriptionSafe, location_name: "description"))
    DataProtectionSettings.add_member(:creation_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationDate"))
    DataProtectionSettings.add_member(:customer_managed_key, Shapes::ShapeRef.new(shape: keyArn, location_name: "customerManagedKey"))
    DataProtectionSettings.add_member(:additional_encryption_context, Shapes::ShapeRef.new(shape: EncryptionContextMap, location_name: "additionalEncryptionContext"))
    DataProtectionSettings.struct_class = Types::DataProtectionSettings

    DataProtectionSettingsList.member = Shapes::ShapeRef.new(shape: DataProtectionSettingsSummary)

    DataProtectionSettingsSummary.add_member(:data_protection_settings_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "dataProtectionSettingsArn"))
    DataProtectionSettingsSummary.add_member(:display_name, Shapes::ShapeRef.new(shape: DisplayNameSafe, location_name: "displayName"))
    DataProtectionSettingsSummary.add_member(:description, Shapes::ShapeRef.new(shape: DescriptionSafe, location_name: "description"))
    DataProtectionSettingsSummary.add_member(:creation_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationDate"))
    DataProtectionSettingsSummary.struct_class = Types::DataProtectionSettingsSummary

    DeleteBrowserSettingsRequest.add_member(:browser_settings_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location: "uri", location_name: "browserSettingsArn"))
    DeleteBrowserSettingsRequest.struct_class = Types::DeleteBrowserSettingsRequest

    DeleteBrowserSettingsResponse.struct_class = Types::DeleteBrowserSettingsResponse

    DeleteDataProtectionSettingsRequest.add_member(:data_protection_settings_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location: "uri", location_name: "dataProtectionSettingsArn"))
    DeleteDataProtectionSettingsRequest.struct_class = Types::DeleteDataProtectionSettingsRequest

    DeleteDataProtectionSettingsResponse.struct_class = Types::DeleteDataProtectionSettingsResponse

    DeleteIdentityProviderRequest.add_member(:identity_provider_arn, Shapes::ShapeRef.new(shape: SubresourceARN, required: true, location: "uri", location_name: "identityProviderArn"))
    DeleteIdentityProviderRequest.struct_class = Types::DeleteIdentityProviderRequest

    DeleteIdentityProviderResponse.struct_class = Types::DeleteIdentityProviderResponse

    DeleteIpAccessSettingsRequest.add_member(:ip_access_settings_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location: "uri", location_name: "ipAccessSettingsArn"))
    DeleteIpAccessSettingsRequest.struct_class = Types::DeleteIpAccessSettingsRequest

    DeleteIpAccessSettingsResponse.struct_class = Types::DeleteIpAccessSettingsResponse

    DeleteNetworkSettingsRequest.add_member(:network_settings_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location: "uri", location_name: "networkSettingsArn"))
    DeleteNetworkSettingsRequest.struct_class = Types::DeleteNetworkSettingsRequest

    DeleteNetworkSettingsResponse.struct_class = Types::DeleteNetworkSettingsResponse

    DeletePortalRequest.add_member(:portal_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location: "uri", location_name: "portalArn"))
    DeletePortalRequest.struct_class = Types::DeletePortalRequest

    DeletePortalResponse.struct_class = Types::DeletePortalResponse

    DeleteSessionLoggerRequest.add_member(:session_logger_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location: "uri", location_name: "sessionLoggerArn"))
    DeleteSessionLoggerRequest.struct_class = Types::DeleteSessionLoggerRequest

    DeleteSessionLoggerResponse.struct_class = Types::DeleteSessionLoggerResponse

    DeleteTrustStoreRequest.add_member(:trust_store_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location: "uri", location_name: "trustStoreArn"))
    DeleteTrustStoreRequest.struct_class = Types::DeleteTrustStoreRequest

    DeleteTrustStoreResponse.struct_class = Types::DeleteTrustStoreResponse

    DeleteUserAccessLoggingSettingsRequest.add_member(:user_access_logging_settings_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location: "uri", location_name: "userAccessLoggingSettingsArn"))
    DeleteUserAccessLoggingSettingsRequest.struct_class = Types::DeleteUserAccessLoggingSettingsRequest

    DeleteUserAccessLoggingSettingsResponse.struct_class = Types::DeleteUserAccessLoggingSettingsResponse

    DeleteUserSettingsRequest.add_member(:user_settings_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location: "uri", location_name: "userSettingsArn"))
    DeleteUserSettingsRequest.struct_class = Types::DeleteUserSettingsRequest

    DeleteUserSettingsResponse.struct_class = Types::DeleteUserSettingsResponse

    DisassociateBrowserSettingsRequest.add_member(:portal_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location: "uri", location_name: "portalArn"))
    DisassociateBrowserSettingsRequest.struct_class = Types::DisassociateBrowserSettingsRequest

    DisassociateBrowserSettingsResponse.struct_class = Types::DisassociateBrowserSettingsResponse

    DisassociateDataProtectionSettingsRequest.add_member(:portal_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location: "uri", location_name: "portalArn"))
    DisassociateDataProtectionSettingsRequest.struct_class = Types::DisassociateDataProtectionSettingsRequest

    DisassociateDataProtectionSettingsResponse.struct_class = Types::DisassociateDataProtectionSettingsResponse

    DisassociateIpAccessSettingsRequest.add_member(:portal_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location: "uri", location_name: "portalArn"))
    DisassociateIpAccessSettingsRequest.struct_class = Types::DisassociateIpAccessSettingsRequest

    DisassociateIpAccessSettingsResponse.struct_class = Types::DisassociateIpAccessSettingsResponse

    DisassociateNetworkSettingsRequest.add_member(:portal_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location: "uri", location_name: "portalArn"))
    DisassociateNetworkSettingsRequest.struct_class = Types::DisassociateNetworkSettingsRequest

    DisassociateNetworkSettingsResponse.struct_class = Types::DisassociateNetworkSettingsResponse

    DisassociateSessionLoggerRequest.add_member(:portal_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location: "uri", location_name: "portalArn"))
    DisassociateSessionLoggerRequest.struct_class = Types::DisassociateSessionLoggerRequest

    DisassociateSessionLoggerResponse.struct_class = Types::DisassociateSessionLoggerResponse

    DisassociateTrustStoreRequest.add_member(:portal_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location: "uri", location_name: "portalArn"))
    DisassociateTrustStoreRequest.struct_class = Types::DisassociateTrustStoreRequest

    DisassociateTrustStoreResponse.struct_class = Types::DisassociateTrustStoreResponse

    DisassociateUserAccessLoggingSettingsRequest.add_member(:portal_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location: "uri", location_name: "portalArn"))
    DisassociateUserAccessLoggingSettingsRequest.struct_class = Types::DisassociateUserAccessLoggingSettingsRequest

    DisassociateUserAccessLoggingSettingsResponse.struct_class = Types::DisassociateUserAccessLoggingSettingsResponse

    DisassociateUserSettingsRequest.add_member(:portal_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location: "uri", location_name: "portalArn"))
    DisassociateUserSettingsRequest.struct_class = Types::DisassociateUserSettingsRequest

    DisassociateUserSettingsResponse.struct_class = Types::DisassociateUserSettingsResponse

    EncryptionContextMap.key = Shapes::ShapeRef.new(shape: StringType)
    EncryptionContextMap.value = Shapes::ShapeRef.new(shape: StringType)

    EventFilter.add_member(:all, Shapes::ShapeRef.new(shape: Unit, location_name: "all"))
    EventFilter.add_member(:include, Shapes::ShapeRef.new(shape: Events, location_name: "include"))
    EventFilter.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    EventFilter.add_member_subclass(:all, Types::EventFilter::All)
    EventFilter.add_member_subclass(:include, Types::EventFilter::Include)
    EventFilter.add_member_subclass(:unknown, Types::EventFilter::Unknown)
    EventFilter.struct_class = Types::EventFilter

    Events.member = Shapes::ShapeRef.new(shape: Event)

    ExpireSessionRequest.add_member(:portal_id, Shapes::ShapeRef.new(shape: PortalId, required: true, location: "uri", location_name: "portalId"))
    ExpireSessionRequest.add_member(:session_id, Shapes::ShapeRef.new(shape: SessionId, required: true, location: "uri", location_name: "sessionId"))
    ExpireSessionRequest.struct_class = Types::ExpireSessionRequest

    ExpireSessionResponse.struct_class = Types::ExpireSessionResponse

    GetBrowserSettingsRequest.add_member(:browser_settings_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location: "uri", location_name: "browserSettingsArn"))
    GetBrowserSettingsRequest.struct_class = Types::GetBrowserSettingsRequest

    GetBrowserSettingsResponse.add_member(:browser_settings, Shapes::ShapeRef.new(shape: BrowserSettings, location_name: "browserSettings"))
    GetBrowserSettingsResponse.struct_class = Types::GetBrowserSettingsResponse

    GetDataProtectionSettingsRequest.add_member(:data_protection_settings_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location: "uri", location_name: "dataProtectionSettingsArn"))
    GetDataProtectionSettingsRequest.struct_class = Types::GetDataProtectionSettingsRequest

    GetDataProtectionSettingsResponse.add_member(:data_protection_settings, Shapes::ShapeRef.new(shape: DataProtectionSettings, location_name: "dataProtectionSettings"))
    GetDataProtectionSettingsResponse.struct_class = Types::GetDataProtectionSettingsResponse

    GetIdentityProviderRequest.add_member(:identity_provider_arn, Shapes::ShapeRef.new(shape: SubresourceARN, required: true, location: "uri", location_name: "identityProviderArn"))
    GetIdentityProviderRequest.struct_class = Types::GetIdentityProviderRequest

    GetIdentityProviderResponse.add_member(:identity_provider, Shapes::ShapeRef.new(shape: IdentityProvider, location_name: "identityProvider"))
    GetIdentityProviderResponse.struct_class = Types::GetIdentityProviderResponse

    GetIpAccessSettingsRequest.add_member(:ip_access_settings_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location: "uri", location_name: "ipAccessSettingsArn"))
    GetIpAccessSettingsRequest.struct_class = Types::GetIpAccessSettingsRequest

    GetIpAccessSettingsResponse.add_member(:ip_access_settings, Shapes::ShapeRef.new(shape: IpAccessSettings, location_name: "ipAccessSettings"))
    GetIpAccessSettingsResponse.struct_class = Types::GetIpAccessSettingsResponse

    GetNetworkSettingsRequest.add_member(:network_settings_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location: "uri", location_name: "networkSettingsArn"))
    GetNetworkSettingsRequest.struct_class = Types::GetNetworkSettingsRequest

    GetNetworkSettingsResponse.add_member(:network_settings, Shapes::ShapeRef.new(shape: NetworkSettings, location_name: "networkSettings"))
    GetNetworkSettingsResponse.struct_class = Types::GetNetworkSettingsResponse

    GetPortalRequest.add_member(:portal_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location: "uri", location_name: "portalArn"))
    GetPortalRequest.struct_class = Types::GetPortalRequest

    GetPortalResponse.add_member(:portal, Shapes::ShapeRef.new(shape: Portal, location_name: "portal"))
    GetPortalResponse.struct_class = Types::GetPortalResponse

    GetPortalServiceProviderMetadataRequest.add_member(:portal_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location: "uri", location_name: "portalArn"))
    GetPortalServiceProviderMetadataRequest.struct_class = Types::GetPortalServiceProviderMetadataRequest

    GetPortalServiceProviderMetadataResponse.add_member(:portal_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "portalArn"))
    GetPortalServiceProviderMetadataResponse.add_member(:service_provider_saml_metadata, Shapes::ShapeRef.new(shape: SamlMetadata, location_name: "serviceProviderSamlMetadata"))
    GetPortalServiceProviderMetadataResponse.struct_class = Types::GetPortalServiceProviderMetadataResponse

    GetSessionLoggerRequest.add_member(:session_logger_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location: "uri", location_name: "sessionLoggerArn"))
    GetSessionLoggerRequest.struct_class = Types::GetSessionLoggerRequest

    GetSessionLoggerResponse.add_member(:session_logger, Shapes::ShapeRef.new(shape: SessionLogger, location_name: "sessionLogger"))
    GetSessionLoggerResponse.struct_class = Types::GetSessionLoggerResponse

    GetSessionRequest.add_member(:portal_id, Shapes::ShapeRef.new(shape: PortalId, required: true, location: "uri", location_name: "portalId"))
    GetSessionRequest.add_member(:session_id, Shapes::ShapeRef.new(shape: SessionId, required: true, location: "uri", location_name: "sessionId"))
    GetSessionRequest.struct_class = Types::GetSessionRequest

    GetSessionResponse.add_member(:session, Shapes::ShapeRef.new(shape: Session, location_name: "session"))
    GetSessionResponse.struct_class = Types::GetSessionResponse

    GetTrustStoreCertificateRequest.add_member(:trust_store_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location: "uri", location_name: "trustStoreArn"))
    GetTrustStoreCertificateRequest.add_member(:thumbprint, Shapes::ShapeRef.new(shape: CertificateThumbprint, required: true, location: "querystring", location_name: "thumbprint"))
    GetTrustStoreCertificateRequest.struct_class = Types::GetTrustStoreCertificateRequest

    GetTrustStoreCertificateResponse.add_member(:trust_store_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "trustStoreArn"))
    GetTrustStoreCertificateResponse.add_member(:certificate, Shapes::ShapeRef.new(shape: Certificate, location_name: "certificate"))
    GetTrustStoreCertificateResponse.struct_class = Types::GetTrustStoreCertificateResponse

    GetTrustStoreRequest.add_member(:trust_store_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location: "uri", location_name: "trustStoreArn"))
    GetTrustStoreRequest.struct_class = Types::GetTrustStoreRequest

    GetTrustStoreResponse.add_member(:trust_store, Shapes::ShapeRef.new(shape: TrustStore, location_name: "trustStore"))
    GetTrustStoreResponse.struct_class = Types::GetTrustStoreResponse

    GetUserAccessLoggingSettingsRequest.add_member(:user_access_logging_settings_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location: "uri", location_name: "userAccessLoggingSettingsArn"))
    GetUserAccessLoggingSettingsRequest.struct_class = Types::GetUserAccessLoggingSettingsRequest

    GetUserAccessLoggingSettingsResponse.add_member(:user_access_logging_settings, Shapes::ShapeRef.new(shape: UserAccessLoggingSettings, location_name: "userAccessLoggingSettings"))
    GetUserAccessLoggingSettingsResponse.struct_class = Types::GetUserAccessLoggingSettingsResponse

    GetUserSettingsRequest.add_member(:user_settings_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location: "uri", location_name: "userSettingsArn"))
    GetUserSettingsRequest.struct_class = Types::GetUserSettingsRequest

    GetUserSettingsResponse.add_member(:user_settings, Shapes::ShapeRef.new(shape: UserSettings, location_name: "userSettings"))
    GetUserSettingsResponse.struct_class = Types::GetUserSettingsResponse

    GlobalInlineRedactionUrls.member = Shapes::ShapeRef.new(shape: InlineRedactionUrl)

    HiddenToolbarItemList.member = Shapes::ShapeRef.new(shape: ToolbarItem)

    IdentityProvider.add_member(:identity_provider_arn, Shapes::ShapeRef.new(shape: SubresourceARN, required: true, location_name: "identityProviderArn"))
    IdentityProvider.add_member(:identity_provider_name, Shapes::ShapeRef.new(shape: IdentityProviderName, location_name: "identityProviderName"))
    IdentityProvider.add_member(:identity_provider_type, Shapes::ShapeRef.new(shape: IdentityProviderType, location_name: "identityProviderType"))
    IdentityProvider.add_member(:identity_provider_details, Shapes::ShapeRef.new(shape: IdentityProviderDetails, location_name: "identityProviderDetails"))
    IdentityProvider.struct_class = Types::IdentityProvider

    IdentityProviderDetails.key = Shapes::ShapeRef.new(shape: StringType)
    IdentityProviderDetails.value = Shapes::ShapeRef.new(shape: StringType)

    IdentityProviderList.member = Shapes::ShapeRef.new(shape: IdentityProviderSummary)

    IdentityProviderSummary.add_member(:identity_provider_arn, Shapes::ShapeRef.new(shape: SubresourceARN, required: true, location_name: "identityProviderArn"))
    IdentityProviderSummary.add_member(:identity_provider_name, Shapes::ShapeRef.new(shape: IdentityProviderName, location_name: "identityProviderName"))
    IdentityProviderSummary.add_member(:identity_provider_type, Shapes::ShapeRef.new(shape: IdentityProviderType, location_name: "identityProviderType"))
    IdentityProviderSummary.struct_class = Types::IdentityProviderSummary

    InlineRedactionConfiguration.add_member(:inline_redaction_patterns, Shapes::ShapeRef.new(shape: InlineRedactionPatterns, required: true, location_name: "inlineRedactionPatterns"))
    InlineRedactionConfiguration.add_member(:global_enforced_urls, Shapes::ShapeRef.new(shape: GlobalInlineRedactionUrls, location_name: "globalEnforcedUrls"))
    InlineRedactionConfiguration.add_member(:global_exempt_urls, Shapes::ShapeRef.new(shape: GlobalInlineRedactionUrls, location_name: "globalExemptUrls"))
    InlineRedactionConfiguration.add_member(:global_confidence_level, Shapes::ShapeRef.new(shape: ConfidenceLevel, location_name: "globalConfidenceLevel"))
    InlineRedactionConfiguration.struct_class = Types::InlineRedactionConfiguration

    InlineRedactionPattern.add_member(:built_in_pattern_id, Shapes::ShapeRef.new(shape: BuiltInPatternId, location_name: "builtInPatternId"))
    InlineRedactionPattern.add_member(:custom_pattern, Shapes::ShapeRef.new(shape: CustomPattern, location_name: "customPattern"))
    InlineRedactionPattern.add_member(:redaction_place_holder, Shapes::ShapeRef.new(shape: RedactionPlaceHolder, required: true, location_name: "redactionPlaceHolder"))
    InlineRedactionPattern.add_member(:enforced_urls, Shapes::ShapeRef.new(shape: InlineRedactionUrls, location_name: "enforcedUrls"))
    InlineRedactionPattern.add_member(:exempt_urls, Shapes::ShapeRef.new(shape: InlineRedactionUrls, location_name: "exemptUrls"))
    InlineRedactionPattern.add_member(:confidence_level, Shapes::ShapeRef.new(shape: ConfidenceLevel, location_name: "confidenceLevel"))
    InlineRedactionPattern.struct_class = Types::InlineRedactionPattern

    InlineRedactionPatterns.member = Shapes::ShapeRef.new(shape: InlineRedactionPattern)

    InlineRedactionUrls.member = Shapes::ShapeRef.new(shape: InlineRedactionUrl)

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    InternalServerException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: RetryAfterSeconds, location: "header", location_name: "Retry-After"))
    InternalServerException.struct_class = Types::InternalServerException

    IpAccessSettings.add_member(:ip_access_settings_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "ipAccessSettingsArn"))
    IpAccessSettings.add_member(:associated_portal_arns, Shapes::ShapeRef.new(shape: ArnList, location_name: "associatedPortalArns"))
    IpAccessSettings.add_member(:ip_rules, Shapes::ShapeRef.new(shape: IpRuleList, location_name: "ipRules"))
    IpAccessSettings.add_member(:display_name, Shapes::ShapeRef.new(shape: DisplayName, location_name: "displayName"))
    IpAccessSettings.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    IpAccessSettings.add_member(:creation_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationDate"))
    IpAccessSettings.add_member(:customer_managed_key, Shapes::ShapeRef.new(shape: keyArn, location_name: "customerManagedKey"))
    IpAccessSettings.add_member(:additional_encryption_context, Shapes::ShapeRef.new(shape: EncryptionContextMap, location_name: "additionalEncryptionContext"))
    IpAccessSettings.struct_class = Types::IpAccessSettings

    IpAccessSettingsList.member = Shapes::ShapeRef.new(shape: IpAccessSettingsSummary)

    IpAccessSettingsSummary.add_member(:ip_access_settings_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "ipAccessSettingsArn"))
    IpAccessSettingsSummary.add_member(:display_name, Shapes::ShapeRef.new(shape: DisplayName, location_name: "displayName"))
    IpAccessSettingsSummary.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    IpAccessSettingsSummary.add_member(:creation_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationDate"))
    IpAccessSettingsSummary.struct_class = Types::IpAccessSettingsSummary

    IpAddressList.member = Shapes::ShapeRef.new(shape: IpAddress)

    IpRule.add_member(:ip_range, Shapes::ShapeRef.new(shape: IpRange, required: true, location_name: "ipRange"))
    IpRule.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    IpRule.struct_class = Types::IpRule

    IpRuleList.member = Shapes::ShapeRef.new(shape: IpRule)

    ListBrowserSettingsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListBrowserSettingsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListBrowserSettingsRequest.struct_class = Types::ListBrowserSettingsRequest

    ListBrowserSettingsResponse.add_member(:browser_settings, Shapes::ShapeRef.new(shape: BrowserSettingsList, location_name: "browserSettings"))
    ListBrowserSettingsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListBrowserSettingsResponse.struct_class = Types::ListBrowserSettingsResponse

    ListDataProtectionSettingsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListDataProtectionSettingsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListDataProtectionSettingsRequest.struct_class = Types::ListDataProtectionSettingsRequest

    ListDataProtectionSettingsResponse.add_member(:data_protection_settings, Shapes::ShapeRef.new(shape: DataProtectionSettingsList, location_name: "dataProtectionSettings"))
    ListDataProtectionSettingsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListDataProtectionSettingsResponse.struct_class = Types::ListDataProtectionSettingsResponse

    ListIdentityProvidersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListIdentityProvidersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListIdentityProvidersRequest.add_member(:portal_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location: "uri", location_name: "portalArn"))
    ListIdentityProvidersRequest.struct_class = Types::ListIdentityProvidersRequest

    ListIdentityProvidersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListIdentityProvidersResponse.add_member(:identity_providers, Shapes::ShapeRef.new(shape: IdentityProviderList, location_name: "identityProviders"))
    ListIdentityProvidersResponse.struct_class = Types::ListIdentityProvidersResponse

    ListIpAccessSettingsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListIpAccessSettingsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListIpAccessSettingsRequest.struct_class = Types::ListIpAccessSettingsRequest

    ListIpAccessSettingsResponse.add_member(:ip_access_settings, Shapes::ShapeRef.new(shape: IpAccessSettingsList, location_name: "ipAccessSettings"))
    ListIpAccessSettingsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListIpAccessSettingsResponse.struct_class = Types::ListIpAccessSettingsResponse

    ListNetworkSettingsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListNetworkSettingsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListNetworkSettingsRequest.struct_class = Types::ListNetworkSettingsRequest

    ListNetworkSettingsResponse.add_member(:network_settings, Shapes::ShapeRef.new(shape: NetworkSettingsList, location_name: "networkSettings"))
    ListNetworkSettingsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListNetworkSettingsResponse.struct_class = Types::ListNetworkSettingsResponse

    ListPortalsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListPortalsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListPortalsRequest.struct_class = Types::ListPortalsRequest

    ListPortalsResponse.add_member(:portals, Shapes::ShapeRef.new(shape: PortalList, location_name: "portals"))
    ListPortalsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListPortalsResponse.struct_class = Types::ListPortalsResponse

    ListSessionLoggersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListSessionLoggersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListSessionLoggersRequest.struct_class = Types::ListSessionLoggersRequest

    ListSessionLoggersResponse.add_member(:session_loggers, Shapes::ShapeRef.new(shape: SessionLoggerList, location_name: "sessionLoggers"))
    ListSessionLoggersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListSessionLoggersResponse.struct_class = Types::ListSessionLoggersResponse

    ListSessionsRequest.add_member(:portal_id, Shapes::ShapeRef.new(shape: PortalId, required: true, location: "uri", location_name: "portalId"))
    ListSessionsRequest.add_member(:username, Shapes::ShapeRef.new(shape: Username, location: "querystring", location_name: "username"))
    ListSessionsRequest.add_member(:session_id, Shapes::ShapeRef.new(shape: SessionId, location: "querystring", location_name: "sessionId"))
    ListSessionsRequest.add_member(:sort_by, Shapes::ShapeRef.new(shape: SessionSortBy, location: "querystring", location_name: "sortBy"))
    ListSessionsRequest.add_member(:status, Shapes::ShapeRef.new(shape: SessionStatus, location: "querystring", location_name: "status"))
    ListSessionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListSessionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListSessionsRequest.struct_class = Types::ListSessionsRequest

    ListSessionsResponse.add_member(:sessions, Shapes::ShapeRef.new(shape: SessionSummaryList, required: true, location_name: "sessions"))
    ListSessionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListSessionsResponse.struct_class = Types::ListSessionsResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    ListTrustStoreCertificatesRequest.add_member(:trust_store_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location: "uri", location_name: "trustStoreArn"))
    ListTrustStoreCertificatesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListTrustStoreCertificatesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListTrustStoreCertificatesRequest.struct_class = Types::ListTrustStoreCertificatesRequest

    ListTrustStoreCertificatesResponse.add_member(:certificate_list, Shapes::ShapeRef.new(shape: CertificateSummaryList, location_name: "certificateList"))
    ListTrustStoreCertificatesResponse.add_member(:trust_store_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "trustStoreArn"))
    ListTrustStoreCertificatesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListTrustStoreCertificatesResponse.struct_class = Types::ListTrustStoreCertificatesResponse

    ListTrustStoresRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListTrustStoresRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListTrustStoresRequest.struct_class = Types::ListTrustStoresRequest

    ListTrustStoresResponse.add_member(:trust_stores, Shapes::ShapeRef.new(shape: TrustStoreSummaryList, location_name: "trustStores"))
    ListTrustStoresResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListTrustStoresResponse.struct_class = Types::ListTrustStoresResponse

    ListUserAccessLoggingSettingsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListUserAccessLoggingSettingsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListUserAccessLoggingSettingsRequest.struct_class = Types::ListUserAccessLoggingSettingsRequest

    ListUserAccessLoggingSettingsResponse.add_member(:user_access_logging_settings, Shapes::ShapeRef.new(shape: UserAccessLoggingSettingsList, location_name: "userAccessLoggingSettings"))
    ListUserAccessLoggingSettingsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListUserAccessLoggingSettingsResponse.struct_class = Types::ListUserAccessLoggingSettingsResponse

    ListUserSettingsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListUserSettingsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListUserSettingsRequest.struct_class = Types::ListUserSettingsRequest

    ListUserSettingsResponse.add_member(:user_settings, Shapes::ShapeRef.new(shape: UserSettingsList, location_name: "userSettings"))
    ListUserSettingsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListUserSettingsResponse.struct_class = Types::ListUserSettingsResponse

    LogConfiguration.add_member(:s3, Shapes::ShapeRef.new(shape: S3LogConfiguration, location_name: "s3"))
    LogConfiguration.struct_class = Types::LogConfiguration

    NetworkSettings.add_member(:network_settings_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "networkSettingsArn"))
    NetworkSettings.add_member(:associated_portal_arns, Shapes::ShapeRef.new(shape: ArnList, location_name: "associatedPortalArns"))
    NetworkSettings.add_member(:vpc_id, Shapes::ShapeRef.new(shape: VpcId, location_name: "vpcId"))
    NetworkSettings.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: SubnetIdList, location_name: "subnetIds"))
    NetworkSettings.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: SecurityGroupIdList, location_name: "securityGroupIds"))
    NetworkSettings.struct_class = Types::NetworkSettings

    NetworkSettingsList.member = Shapes::ShapeRef.new(shape: NetworkSettingsSummary)

    NetworkSettingsSummary.add_member(:network_settings_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "networkSettingsArn"))
    NetworkSettingsSummary.add_member(:vpc_id, Shapes::ShapeRef.new(shape: VpcId, location_name: "vpcId"))
    NetworkSettingsSummary.struct_class = Types::NetworkSettingsSummary

    Portal.add_member(:portal_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "portalArn"))
    Portal.add_member(:renderer_type, Shapes::ShapeRef.new(shape: RendererType, location_name: "rendererType"))
    Portal.add_member(:browser_type, Shapes::ShapeRef.new(shape: BrowserType, location_name: "browserType"))
    Portal.add_member(:portal_status, Shapes::ShapeRef.new(shape: PortalStatus, location_name: "portalStatus"))
    Portal.add_member(:portal_endpoint, Shapes::ShapeRef.new(shape: PortalEndpoint, location_name: "portalEndpoint"))
    Portal.add_member(:display_name, Shapes::ShapeRef.new(shape: DisplayName, location_name: "displayName"))
    Portal.add_member(:creation_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationDate"))
    Portal.add_member(:browser_settings_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "browserSettingsArn"))
    Portal.add_member(:data_protection_settings_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "dataProtectionSettingsArn"))
    Portal.add_member(:user_settings_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "userSettingsArn"))
    Portal.add_member(:network_settings_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "networkSettingsArn"))
    Portal.add_member(:session_logger_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "sessionLoggerArn"))
    Portal.add_member(:trust_store_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "trustStoreArn"))
    Portal.add_member(:status_reason, Shapes::ShapeRef.new(shape: StatusReason, location_name: "statusReason"))
    Portal.add_member(:user_access_logging_settings_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "userAccessLoggingSettingsArn"))
    Portal.add_member(:authentication_type, Shapes::ShapeRef.new(shape: AuthenticationType, location_name: "authenticationType"))
    Portal.add_member(:ip_access_settings_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "ipAccessSettingsArn"))
    Portal.add_member(:customer_managed_key, Shapes::ShapeRef.new(shape: keyArn, location_name: "customerManagedKey"))
    Portal.add_member(:additional_encryption_context, Shapes::ShapeRef.new(shape: EncryptionContextMap, location_name: "additionalEncryptionContext"))
    Portal.add_member(:instance_type, Shapes::ShapeRef.new(shape: InstanceType, location_name: "instanceType"))
    Portal.add_member(:max_concurrent_sessions, Shapes::ShapeRef.new(shape: MaxConcurrentSessions, location_name: "maxConcurrentSessions"))
    Portal.struct_class = Types::Portal

    PortalList.member = Shapes::ShapeRef.new(shape: PortalSummary)

    PortalSummary.add_member(:portal_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "portalArn"))
    PortalSummary.add_member(:renderer_type, Shapes::ShapeRef.new(shape: RendererType, location_name: "rendererType"))
    PortalSummary.add_member(:browser_type, Shapes::ShapeRef.new(shape: BrowserType, location_name: "browserType"))
    PortalSummary.add_member(:portal_status, Shapes::ShapeRef.new(shape: PortalStatus, location_name: "portalStatus"))
    PortalSummary.add_member(:portal_endpoint, Shapes::ShapeRef.new(shape: PortalEndpoint, location_name: "portalEndpoint"))
    PortalSummary.add_member(:display_name, Shapes::ShapeRef.new(shape: DisplayName, location_name: "displayName"))
    PortalSummary.add_member(:creation_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationDate"))
    PortalSummary.add_member(:browser_settings_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "browserSettingsArn"))
    PortalSummary.add_member(:data_protection_settings_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "dataProtectionSettingsArn"))
    PortalSummary.add_member(:user_settings_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "userSettingsArn"))
    PortalSummary.add_member(:network_settings_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "networkSettingsArn"))
    PortalSummary.add_member(:session_logger_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "sessionLoggerArn"))
    PortalSummary.add_member(:trust_store_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "trustStoreArn"))
    PortalSummary.add_member(:user_access_logging_settings_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "userAccessLoggingSettingsArn"))
    PortalSummary.add_member(:authentication_type, Shapes::ShapeRef.new(shape: AuthenticationType, location_name: "authenticationType"))
    PortalSummary.add_member(:ip_access_settings_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "ipAccessSettingsArn"))
    PortalSummary.add_member(:instance_type, Shapes::ShapeRef.new(shape: InstanceType, location_name: "instanceType"))
    PortalSummary.add_member(:max_concurrent_sessions, Shapes::ShapeRef.new(shape: MaxConcurrentSessions, location_name: "maxConcurrentSessions"))
    PortalSummary.struct_class = Types::PortalSummary

    RedactionPlaceHolder.add_member(:redaction_place_holder_type, Shapes::ShapeRef.new(shape: RedactionPlaceHolderType, required: true, location_name: "redactionPlaceHolderType"))
    RedactionPlaceHolder.add_member(:redaction_place_holder_text, Shapes::ShapeRef.new(shape: RedactionPlaceHolderText, location_name: "redactionPlaceHolderText"))
    RedactionPlaceHolder.struct_class = Types::RedactionPlaceHolder

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    ResourceNotFoundException.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "resourceId"))
    ResourceNotFoundException.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "resourceType"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    S3LogConfiguration.add_member(:bucket, Shapes::ShapeRef.new(shape: S3Bucket, required: true, location_name: "bucket"))
    S3LogConfiguration.add_member(:key_prefix, Shapes::ShapeRef.new(shape: S3KeyPrefix, location_name: "keyPrefix"))
    S3LogConfiguration.add_member(:bucket_owner, Shapes::ShapeRef.new(shape: S3BucketOwner, location_name: "bucketOwner"))
    S3LogConfiguration.add_member(:log_file_format, Shapes::ShapeRef.new(shape: LogFileFormat, required: true, location_name: "logFileFormat"))
    S3LogConfiguration.add_member(:folder_structure, Shapes::ShapeRef.new(shape: FolderStructure, required: true, location_name: "folderStructure"))
    S3LogConfiguration.struct_class = Types::S3LogConfiguration

    SecurityGroupIdList.member = Shapes::ShapeRef.new(shape: SecurityGroupId)

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    ServiceQuotaExceededException.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "resourceId"))
    ServiceQuotaExceededException.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "resourceType"))
    ServiceQuotaExceededException.add_member(:service_code, Shapes::ShapeRef.new(shape: ServiceCode, location_name: "serviceCode"))
    ServiceQuotaExceededException.add_member(:quota_code, Shapes::ShapeRef.new(shape: QuotaCode, location_name: "quotaCode"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    Session.add_member(:portal_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "portalArn"))
    Session.add_member(:session_id, Shapes::ShapeRef.new(shape: StringType, location_name: "sessionId"))
    Session.add_member(:username, Shapes::ShapeRef.new(shape: Username, location_name: "username"))
    Session.add_member(:client_ip_addresses, Shapes::ShapeRef.new(shape: IpAddressList, location_name: "clientIpAddresses"))
    Session.add_member(:status, Shapes::ShapeRef.new(shape: SessionStatus, location_name: "status"))
    Session.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "startTime"))
    Session.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "endTime"))
    Session.struct_class = Types::Session

    SessionLogger.add_member(:session_logger_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "sessionLoggerArn"))
    SessionLogger.add_member(:event_filter, Shapes::ShapeRef.new(shape: EventFilter, location_name: "eventFilter"))
    SessionLogger.add_member(:log_configuration, Shapes::ShapeRef.new(shape: LogConfiguration, location_name: "logConfiguration"))
    SessionLogger.add_member(:customer_managed_key, Shapes::ShapeRef.new(shape: keyArn, location_name: "customerManagedKey"))
    SessionLogger.add_member(:additional_encryption_context, Shapes::ShapeRef.new(shape: EncryptionContextMap, location_name: "additionalEncryptionContext"))
    SessionLogger.add_member(:associated_portal_arns, Shapes::ShapeRef.new(shape: ArnList, location_name: "associatedPortalArns"))
    SessionLogger.add_member(:display_name, Shapes::ShapeRef.new(shape: DisplayNameSafe, location_name: "displayName"))
    SessionLogger.add_member(:creation_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationDate"))
    SessionLogger.struct_class = Types::SessionLogger

    SessionLoggerList.member = Shapes::ShapeRef.new(shape: SessionLoggerSummary)

    SessionLoggerSummary.add_member(:session_logger_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "sessionLoggerArn"))
    SessionLoggerSummary.add_member(:log_configuration, Shapes::ShapeRef.new(shape: LogConfiguration, location_name: "logConfiguration"))
    SessionLoggerSummary.add_member(:display_name, Shapes::ShapeRef.new(shape: DisplayNameSafe, location_name: "displayName"))
    SessionLoggerSummary.add_member(:creation_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationDate"))
    SessionLoggerSummary.struct_class = Types::SessionLoggerSummary

    SessionSummary.add_member(:portal_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "portalArn"))
    SessionSummary.add_member(:session_id, Shapes::ShapeRef.new(shape: StringType, location_name: "sessionId"))
    SessionSummary.add_member(:username, Shapes::ShapeRef.new(shape: Username, location_name: "username"))
    SessionSummary.add_member(:status, Shapes::ShapeRef.new(shape: SessionStatus, location_name: "status"))
    SessionSummary.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "startTime"))
    SessionSummary.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "endTime"))
    SessionSummary.struct_class = Types::SessionSummary

    SessionSummaryList.member = Shapes::ShapeRef.new(shape: SessionSummary)

    SubnetIdList.member = Shapes::ShapeRef.new(shape: SubnetId)

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, required: true, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "tags"))
    TagResourceRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    ThrottlingException.add_member(:service_code, Shapes::ShapeRef.new(shape: ServiceCode, location_name: "serviceCode"))
    ThrottlingException.add_member(:quota_code, Shapes::ShapeRef.new(shape: QuotaCode, location_name: "quotaCode"))
    ThrottlingException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: RetryAfterSeconds, location: "header", location_name: "Retry-After"))
    ThrottlingException.struct_class = Types::ThrottlingException

    TooManyTagsException.add_member(:message, Shapes::ShapeRef.new(shape: TagExceptionMessage, location_name: "message"))
    TooManyTagsException.add_member(:resource_name, Shapes::ShapeRef.new(shape: ARN, location_name: "resourceName"))
    TooManyTagsException.struct_class = Types::TooManyTagsException

    ToolbarConfiguration.add_member(:toolbar_type, Shapes::ShapeRef.new(shape: ToolbarType, location_name: "toolbarType"))
    ToolbarConfiguration.add_member(:visual_mode, Shapes::ShapeRef.new(shape: VisualMode, location_name: "visualMode"))
    ToolbarConfiguration.add_member(:hidden_toolbar_items, Shapes::ShapeRef.new(shape: HiddenToolbarItemList, location_name: "hiddenToolbarItems"))
    ToolbarConfiguration.add_member(:max_display_resolution, Shapes::ShapeRef.new(shape: MaxDisplayResolution, location_name: "maxDisplayResolution"))
    ToolbarConfiguration.struct_class = Types::ToolbarConfiguration

    TrustStore.add_member(:associated_portal_arns, Shapes::ShapeRef.new(shape: ArnList, location_name: "associatedPortalArns"))
    TrustStore.add_member(:trust_store_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "trustStoreArn"))
    TrustStore.struct_class = Types::TrustStore

    TrustStoreSummary.add_member(:trust_store_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "trustStoreArn"))
    TrustStoreSummary.struct_class = Types::TrustStoreSummary

    TrustStoreSummaryList.member = Shapes::ShapeRef.new(shape: TrustStoreSummary)

    Unit.struct_class = Types::Unit

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateBrowserSettingsRequest.add_member(:browser_settings_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location: "uri", location_name: "browserSettingsArn"))
    UpdateBrowserSettingsRequest.add_member(:browser_policy, Shapes::ShapeRef.new(shape: BrowserPolicy, location_name: "browserPolicy"))
    UpdateBrowserSettingsRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    UpdateBrowserSettingsRequest.struct_class = Types::UpdateBrowserSettingsRequest

    UpdateBrowserSettingsResponse.add_member(:browser_settings, Shapes::ShapeRef.new(shape: BrowserSettings, required: true, location_name: "browserSettings"))
    UpdateBrowserSettingsResponse.struct_class = Types::UpdateBrowserSettingsResponse

    UpdateDataProtectionSettingsRequest.add_member(:data_protection_settings_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location: "uri", location_name: "dataProtectionSettingsArn"))
    UpdateDataProtectionSettingsRequest.add_member(:inline_redaction_configuration, Shapes::ShapeRef.new(shape: InlineRedactionConfiguration, location_name: "inlineRedactionConfiguration"))
    UpdateDataProtectionSettingsRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: DisplayNameSafe, location_name: "displayName"))
    UpdateDataProtectionSettingsRequest.add_member(:description, Shapes::ShapeRef.new(shape: DescriptionSafe, location_name: "description"))
    UpdateDataProtectionSettingsRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    UpdateDataProtectionSettingsRequest.struct_class = Types::UpdateDataProtectionSettingsRequest

    UpdateDataProtectionSettingsResponse.add_member(:data_protection_settings, Shapes::ShapeRef.new(shape: DataProtectionSettings, required: true, location_name: "dataProtectionSettings"))
    UpdateDataProtectionSettingsResponse.struct_class = Types::UpdateDataProtectionSettingsResponse

    UpdateIdentityProviderRequest.add_member(:identity_provider_arn, Shapes::ShapeRef.new(shape: SubresourceARN, required: true, location: "uri", location_name: "identityProviderArn"))
    UpdateIdentityProviderRequest.add_member(:identity_provider_name, Shapes::ShapeRef.new(shape: IdentityProviderName, location_name: "identityProviderName"))
    UpdateIdentityProviderRequest.add_member(:identity_provider_type, Shapes::ShapeRef.new(shape: IdentityProviderType, location_name: "identityProviderType"))
    UpdateIdentityProviderRequest.add_member(:identity_provider_details, Shapes::ShapeRef.new(shape: IdentityProviderDetails, location_name: "identityProviderDetails"))
    UpdateIdentityProviderRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    UpdateIdentityProviderRequest.struct_class = Types::UpdateIdentityProviderRequest

    UpdateIdentityProviderResponse.add_member(:identity_provider, Shapes::ShapeRef.new(shape: IdentityProvider, required: true, location_name: "identityProvider"))
    UpdateIdentityProviderResponse.struct_class = Types::UpdateIdentityProviderResponse

    UpdateIpAccessSettingsRequest.add_member(:ip_access_settings_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location: "uri", location_name: "ipAccessSettingsArn"))
    UpdateIpAccessSettingsRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: DisplayName, location_name: "displayName"))
    UpdateIpAccessSettingsRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    UpdateIpAccessSettingsRequest.add_member(:ip_rules, Shapes::ShapeRef.new(shape: IpRuleList, location_name: "ipRules"))
    UpdateIpAccessSettingsRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    UpdateIpAccessSettingsRequest.struct_class = Types::UpdateIpAccessSettingsRequest

    UpdateIpAccessSettingsResponse.add_member(:ip_access_settings, Shapes::ShapeRef.new(shape: IpAccessSettings, required: true, location_name: "ipAccessSettings"))
    UpdateIpAccessSettingsResponse.struct_class = Types::UpdateIpAccessSettingsResponse

    UpdateNetworkSettingsRequest.add_member(:network_settings_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location: "uri", location_name: "networkSettingsArn"))
    UpdateNetworkSettingsRequest.add_member(:vpc_id, Shapes::ShapeRef.new(shape: VpcId, location_name: "vpcId"))
    UpdateNetworkSettingsRequest.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: SubnetIdList, location_name: "subnetIds"))
    UpdateNetworkSettingsRequest.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: SecurityGroupIdList, location_name: "securityGroupIds"))
    UpdateNetworkSettingsRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    UpdateNetworkSettingsRequest.struct_class = Types::UpdateNetworkSettingsRequest

    UpdateNetworkSettingsResponse.add_member(:network_settings, Shapes::ShapeRef.new(shape: NetworkSettings, required: true, location_name: "networkSettings"))
    UpdateNetworkSettingsResponse.struct_class = Types::UpdateNetworkSettingsResponse

    UpdatePortalRequest.add_member(:portal_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location: "uri", location_name: "portalArn"))
    UpdatePortalRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: DisplayName, location_name: "displayName"))
    UpdatePortalRequest.add_member(:authentication_type, Shapes::ShapeRef.new(shape: AuthenticationType, location_name: "authenticationType"))
    UpdatePortalRequest.add_member(:instance_type, Shapes::ShapeRef.new(shape: InstanceType, location_name: "instanceType"))
    UpdatePortalRequest.add_member(:max_concurrent_sessions, Shapes::ShapeRef.new(shape: MaxConcurrentSessions, location_name: "maxConcurrentSessions"))
    UpdatePortalRequest.struct_class = Types::UpdatePortalRequest

    UpdatePortalResponse.add_member(:portal, Shapes::ShapeRef.new(shape: Portal, location_name: "portal"))
    UpdatePortalResponse.struct_class = Types::UpdatePortalResponse

    UpdateSessionLoggerRequest.add_member(:session_logger_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location: "uri", location_name: "sessionLoggerArn"))
    UpdateSessionLoggerRequest.add_member(:event_filter, Shapes::ShapeRef.new(shape: EventFilter, location_name: "eventFilter"))
    UpdateSessionLoggerRequest.add_member(:log_configuration, Shapes::ShapeRef.new(shape: LogConfiguration, location_name: "logConfiguration"))
    UpdateSessionLoggerRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: DisplayNameSafe, location_name: "displayName"))
    UpdateSessionLoggerRequest.struct_class = Types::UpdateSessionLoggerRequest

    UpdateSessionLoggerResponse.add_member(:session_logger, Shapes::ShapeRef.new(shape: SessionLogger, required: true, location_name: "sessionLogger"))
    UpdateSessionLoggerResponse.struct_class = Types::UpdateSessionLoggerResponse

    UpdateTrustStoreRequest.add_member(:trust_store_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location: "uri", location_name: "trustStoreArn"))
    UpdateTrustStoreRequest.add_member(:certificates_to_add, Shapes::ShapeRef.new(shape: CertificateList, location_name: "certificatesToAdd"))
    UpdateTrustStoreRequest.add_member(:certificates_to_delete, Shapes::ShapeRef.new(shape: CertificateThumbprintList, location_name: "certificatesToDelete"))
    UpdateTrustStoreRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    UpdateTrustStoreRequest.struct_class = Types::UpdateTrustStoreRequest

    UpdateTrustStoreResponse.add_member(:trust_store_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "trustStoreArn"))
    UpdateTrustStoreResponse.struct_class = Types::UpdateTrustStoreResponse

    UpdateUserAccessLoggingSettingsRequest.add_member(:user_access_logging_settings_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location: "uri", location_name: "userAccessLoggingSettingsArn"))
    UpdateUserAccessLoggingSettingsRequest.add_member(:kinesis_stream_arn, Shapes::ShapeRef.new(shape: KinesisStreamArn, location_name: "kinesisStreamArn"))
    UpdateUserAccessLoggingSettingsRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    UpdateUserAccessLoggingSettingsRequest.struct_class = Types::UpdateUserAccessLoggingSettingsRequest

    UpdateUserAccessLoggingSettingsResponse.add_member(:user_access_logging_settings, Shapes::ShapeRef.new(shape: UserAccessLoggingSettings, required: true, location_name: "userAccessLoggingSettings"))
    UpdateUserAccessLoggingSettingsResponse.struct_class = Types::UpdateUserAccessLoggingSettingsResponse

    UpdateUserSettingsRequest.add_member(:user_settings_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location: "uri", location_name: "userSettingsArn"))
    UpdateUserSettingsRequest.add_member(:copy_allowed, Shapes::ShapeRef.new(shape: EnabledType, location_name: "copyAllowed"))
    UpdateUserSettingsRequest.add_member(:paste_allowed, Shapes::ShapeRef.new(shape: EnabledType, location_name: "pasteAllowed"))
    UpdateUserSettingsRequest.add_member(:download_allowed, Shapes::ShapeRef.new(shape: EnabledType, location_name: "downloadAllowed"))
    UpdateUserSettingsRequest.add_member(:upload_allowed, Shapes::ShapeRef.new(shape: EnabledType, location_name: "uploadAllowed"))
    UpdateUserSettingsRequest.add_member(:print_allowed, Shapes::ShapeRef.new(shape: EnabledType, location_name: "printAllowed"))
    UpdateUserSettingsRequest.add_member(:disconnect_timeout_in_minutes, Shapes::ShapeRef.new(shape: DisconnectTimeoutInMinutes, location_name: "disconnectTimeoutInMinutes"))
    UpdateUserSettingsRequest.add_member(:idle_disconnect_timeout_in_minutes, Shapes::ShapeRef.new(shape: IdleDisconnectTimeoutInMinutes, location_name: "idleDisconnectTimeoutInMinutes"))
    UpdateUserSettingsRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    UpdateUserSettingsRequest.add_member(:cookie_synchronization_configuration, Shapes::ShapeRef.new(shape: CookieSynchronizationConfiguration, location_name: "cookieSynchronizationConfiguration"))
    UpdateUserSettingsRequest.add_member(:deep_link_allowed, Shapes::ShapeRef.new(shape: EnabledType, location_name: "deepLinkAllowed"))
    UpdateUserSettingsRequest.add_member(:toolbar_configuration, Shapes::ShapeRef.new(shape: ToolbarConfiguration, location_name: "toolbarConfiguration"))
    UpdateUserSettingsRequest.struct_class = Types::UpdateUserSettingsRequest

    UpdateUserSettingsResponse.add_member(:user_settings, Shapes::ShapeRef.new(shape: UserSettings, required: true, location_name: "userSettings"))
    UpdateUserSettingsResponse.struct_class = Types::UpdateUserSettingsResponse

    UserAccessLoggingSettings.add_member(:user_access_logging_settings_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "userAccessLoggingSettingsArn"))
    UserAccessLoggingSettings.add_member(:associated_portal_arns, Shapes::ShapeRef.new(shape: ArnList, location_name: "associatedPortalArns"))
    UserAccessLoggingSettings.add_member(:kinesis_stream_arn, Shapes::ShapeRef.new(shape: KinesisStreamArn, location_name: "kinesisStreamArn"))
    UserAccessLoggingSettings.struct_class = Types::UserAccessLoggingSettings

    UserAccessLoggingSettingsList.member = Shapes::ShapeRef.new(shape: UserAccessLoggingSettingsSummary)

    UserAccessLoggingSettingsSummary.add_member(:user_access_logging_settings_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "userAccessLoggingSettingsArn"))
    UserAccessLoggingSettingsSummary.add_member(:kinesis_stream_arn, Shapes::ShapeRef.new(shape: KinesisStreamArn, location_name: "kinesisStreamArn"))
    UserAccessLoggingSettingsSummary.struct_class = Types::UserAccessLoggingSettingsSummary

    UserSettings.add_member(:user_settings_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "userSettingsArn"))
    UserSettings.add_member(:associated_portal_arns, Shapes::ShapeRef.new(shape: ArnList, location_name: "associatedPortalArns"))
    UserSettings.add_member(:copy_allowed, Shapes::ShapeRef.new(shape: EnabledType, location_name: "copyAllowed"))
    UserSettings.add_member(:paste_allowed, Shapes::ShapeRef.new(shape: EnabledType, location_name: "pasteAllowed"))
    UserSettings.add_member(:download_allowed, Shapes::ShapeRef.new(shape: EnabledType, location_name: "downloadAllowed"))
    UserSettings.add_member(:upload_allowed, Shapes::ShapeRef.new(shape: EnabledType, location_name: "uploadAllowed"))
    UserSettings.add_member(:print_allowed, Shapes::ShapeRef.new(shape: EnabledType, location_name: "printAllowed"))
    UserSettings.add_member(:disconnect_timeout_in_minutes, Shapes::ShapeRef.new(shape: DisconnectTimeoutInMinutes, location_name: "disconnectTimeoutInMinutes"))
    UserSettings.add_member(:idle_disconnect_timeout_in_minutes, Shapes::ShapeRef.new(shape: IdleDisconnectTimeoutInMinutes, location_name: "idleDisconnectTimeoutInMinutes"))
    UserSettings.add_member(:cookie_synchronization_configuration, Shapes::ShapeRef.new(shape: CookieSynchronizationConfiguration, location_name: "cookieSynchronizationConfiguration"))
    UserSettings.add_member(:customer_managed_key, Shapes::ShapeRef.new(shape: keyArn, location_name: "customerManagedKey"))
    UserSettings.add_member(:additional_encryption_context, Shapes::ShapeRef.new(shape: EncryptionContextMap, location_name: "additionalEncryptionContext"))
    UserSettings.add_member(:deep_link_allowed, Shapes::ShapeRef.new(shape: EnabledType, location_name: "deepLinkAllowed"))
    UserSettings.add_member(:toolbar_configuration, Shapes::ShapeRef.new(shape: ToolbarConfiguration, location_name: "toolbarConfiguration"))
    UserSettings.struct_class = Types::UserSettings

    UserSettingsList.member = Shapes::ShapeRef.new(shape: UserSettingsSummary)

    UserSettingsSummary.add_member(:user_settings_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "userSettingsArn"))
    UserSettingsSummary.add_member(:copy_allowed, Shapes::ShapeRef.new(shape: EnabledType, location_name: "copyAllowed"))
    UserSettingsSummary.add_member(:paste_allowed, Shapes::ShapeRef.new(shape: EnabledType, location_name: "pasteAllowed"))
    UserSettingsSummary.add_member(:download_allowed, Shapes::ShapeRef.new(shape: EnabledType, location_name: "downloadAllowed"))
    UserSettingsSummary.add_member(:upload_allowed, Shapes::ShapeRef.new(shape: EnabledType, location_name: "uploadAllowed"))
    UserSettingsSummary.add_member(:print_allowed, Shapes::ShapeRef.new(shape: EnabledType, location_name: "printAllowed"))
    UserSettingsSummary.add_member(:disconnect_timeout_in_minutes, Shapes::ShapeRef.new(shape: DisconnectTimeoutInMinutes, location_name: "disconnectTimeoutInMinutes"))
    UserSettingsSummary.add_member(:idle_disconnect_timeout_in_minutes, Shapes::ShapeRef.new(shape: IdleDisconnectTimeoutInMinutes, location_name: "idleDisconnectTimeoutInMinutes"))
    UserSettingsSummary.add_member(:cookie_synchronization_configuration, Shapes::ShapeRef.new(shape: CookieSynchronizationConfiguration, location_name: "cookieSynchronizationConfiguration"))
    UserSettingsSummary.add_member(:deep_link_allowed, Shapes::ShapeRef.new(shape: EnabledType, location_name: "deepLinkAllowed"))
    UserSettingsSummary.add_member(:toolbar_configuration, Shapes::ShapeRef.new(shape: ToolbarConfiguration, location_name: "toolbarConfiguration"))
    UserSettingsSummary.struct_class = Types::UserSettingsSummary

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    ValidationException.add_member(:reason, Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: "reason"))
    ValidationException.add_member(:field_list, Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: "fieldList"))
    ValidationException.struct_class = Types::ValidationException

    ValidationExceptionField.add_member(:name, Shapes::ShapeRef.new(shape: FieldName, required: true, location_name: "name"))
    ValidationExceptionField.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, required: true, location_name: "message"))
    ValidationExceptionField.struct_class = Types::ValidationExceptionField

    ValidationExceptionFieldList.member = Shapes::ShapeRef.new(shape: ValidationExceptionField)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2020-07-08"

      api.metadata = {
        "apiVersion" => "2020-07-08",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "workspaces-web",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceFullName" => "Amazon WorkSpaces Web",
        "serviceId" => "WorkSpaces Web",
        "signatureVersion" => "v4",
        "signingName" => "workspaces-web",
        "uid" => "workspaces-web-2020-07-08",
      }

      api.add_operation(:associate_browser_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateBrowserSettings"
        o.http_method = "PUT"
        o.http_request_uri = "/portals/{portalArn+}/browserSettings"
        o.input = Shapes::ShapeRef.new(shape: AssociateBrowserSettingsRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateBrowserSettingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:associate_data_protection_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateDataProtectionSettings"
        o.http_method = "PUT"
        o.http_request_uri = "/portals/{portalArn+}/dataProtectionSettings"
        o.input = Shapes::ShapeRef.new(shape: AssociateDataProtectionSettingsRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateDataProtectionSettingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:associate_ip_access_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateIpAccessSettings"
        o.http_method = "PUT"
        o.http_request_uri = "/portals/{portalArn+}/ipAccessSettings"
        o.input = Shapes::ShapeRef.new(shape: AssociateIpAccessSettingsRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateIpAccessSettingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:associate_network_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateNetworkSettings"
        o.http_method = "PUT"
        o.http_request_uri = "/portals/{portalArn+}/networkSettings"
        o.input = Shapes::ShapeRef.new(shape: AssociateNetworkSettingsRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateNetworkSettingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:associate_session_logger, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateSessionLogger"
        o.http_method = "PUT"
        o.http_request_uri = "/portals/{portalArn+}/sessionLogger"
        o.input = Shapes::ShapeRef.new(shape: AssociateSessionLoggerRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateSessionLoggerResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:associate_trust_store, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateTrustStore"
        o.http_method = "PUT"
        o.http_request_uri = "/portals/{portalArn+}/trustStores"
        o.input = Shapes::ShapeRef.new(shape: AssociateTrustStoreRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateTrustStoreResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:associate_user_access_logging_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateUserAccessLoggingSettings"
        o.http_method = "PUT"
        o.http_request_uri = "/portals/{portalArn+}/userAccessLoggingSettings"
        o.input = Shapes::ShapeRef.new(shape: AssociateUserAccessLoggingSettingsRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateUserAccessLoggingSettingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:associate_user_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateUserSettings"
        o.http_method = "PUT"
        o.http_request_uri = "/portals/{portalArn+}/userSettings"
        o.input = Shapes::ShapeRef.new(shape: AssociateUserSettingsRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateUserSettingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:create_browser_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateBrowserSettings"
        o.http_method = "POST"
        o.http_request_uri = "/browserSettings"
        o.input = Shapes::ShapeRef.new(shape: CreateBrowserSettingsRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateBrowserSettingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:create_data_protection_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDataProtectionSettings"
        o.http_method = "POST"
        o.http_request_uri = "/dataProtectionSettings"
        o.input = Shapes::ShapeRef.new(shape: CreateDataProtectionSettingsRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateDataProtectionSettingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:create_identity_provider, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateIdentityProvider"
        o.http_method = "POST"
        o.http_request_uri = "/identityProviders"
        o.input = Shapes::ShapeRef.new(shape: CreateIdentityProviderRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateIdentityProviderResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:create_ip_access_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateIpAccessSettings"
        o.http_method = "POST"
        o.http_request_uri = "/ipAccessSettings"
        o.input = Shapes::ShapeRef.new(shape: CreateIpAccessSettingsRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateIpAccessSettingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:create_network_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateNetworkSettings"
        o.http_method = "POST"
        o.http_request_uri = "/networkSettings"
        o.input = Shapes::ShapeRef.new(shape: CreateNetworkSettingsRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateNetworkSettingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:create_portal, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreatePortal"
        o.http_method = "POST"
        o.http_request_uri = "/portals"
        o.input = Shapes::ShapeRef.new(shape: CreatePortalRequest)
        o.output = Shapes::ShapeRef.new(shape: CreatePortalResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:create_session_logger, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateSessionLogger"
        o.http_method = "POST"
        o.http_request_uri = "/sessionLoggers"
        o.input = Shapes::ShapeRef.new(shape: CreateSessionLoggerRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateSessionLoggerResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:create_trust_store, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateTrustStore"
        o.http_method = "POST"
        o.http_request_uri = "/trustStores"
        o.input = Shapes::ShapeRef.new(shape: CreateTrustStoreRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateTrustStoreResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:create_user_access_logging_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateUserAccessLoggingSettings"
        o.http_method = "POST"
        o.http_request_uri = "/userAccessLoggingSettings"
        o.input = Shapes::ShapeRef.new(shape: CreateUserAccessLoggingSettingsRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateUserAccessLoggingSettingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:create_user_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateUserSettings"
        o.http_method = "POST"
        o.http_request_uri = "/userSettings"
        o.input = Shapes::ShapeRef.new(shape: CreateUserSettingsRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateUserSettingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_browser_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteBrowserSettings"
        o.http_method = "DELETE"
        o.http_request_uri = "/browserSettings/{browserSettingsArn+}"
        o.input = Shapes::ShapeRef.new(shape: DeleteBrowserSettingsRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteBrowserSettingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_data_protection_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDataProtectionSettings"
        o.http_method = "DELETE"
        o.http_request_uri = "/dataProtectionSettings/{dataProtectionSettingsArn+}"
        o.input = Shapes::ShapeRef.new(shape: DeleteDataProtectionSettingsRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteDataProtectionSettingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_identity_provider, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteIdentityProvider"
        o.http_method = "DELETE"
        o.http_request_uri = "/identityProviders/{identityProviderArn+}"
        o.input = Shapes::ShapeRef.new(shape: DeleteIdentityProviderRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteIdentityProviderResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_ip_access_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteIpAccessSettings"
        o.http_method = "DELETE"
        o.http_request_uri = "/ipAccessSettings/{ipAccessSettingsArn+}"
        o.input = Shapes::ShapeRef.new(shape: DeleteIpAccessSettingsRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteIpAccessSettingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_network_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteNetworkSettings"
        o.http_method = "DELETE"
        o.http_request_uri = "/networkSettings/{networkSettingsArn+}"
        o.input = Shapes::ShapeRef.new(shape: DeleteNetworkSettingsRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteNetworkSettingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_portal, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeletePortal"
        o.http_method = "DELETE"
        o.http_request_uri = "/portals/{portalArn+}"
        o.input = Shapes::ShapeRef.new(shape: DeletePortalRequest)
        o.output = Shapes::ShapeRef.new(shape: DeletePortalResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_session_logger, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteSessionLogger"
        o.http_method = "DELETE"
        o.http_request_uri = "/sessionLoggers/{sessionLoggerArn+}"
        o.input = Shapes::ShapeRef.new(shape: DeleteSessionLoggerRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteSessionLoggerResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_trust_store, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteTrustStore"
        o.http_method = "DELETE"
        o.http_request_uri = "/trustStores/{trustStoreArn+}"
        o.input = Shapes::ShapeRef.new(shape: DeleteTrustStoreRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteTrustStoreResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_user_access_logging_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteUserAccessLoggingSettings"
        o.http_method = "DELETE"
        o.http_request_uri = "/userAccessLoggingSettings/{userAccessLoggingSettingsArn+}"
        o.input = Shapes::ShapeRef.new(shape: DeleteUserAccessLoggingSettingsRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteUserAccessLoggingSettingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_user_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteUserSettings"
        o.http_method = "DELETE"
        o.http_request_uri = "/userSettings/{userSettingsArn+}"
        o.input = Shapes::ShapeRef.new(shape: DeleteUserSettingsRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteUserSettingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:disassociate_browser_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateBrowserSettings"
        o.http_method = "DELETE"
        o.http_request_uri = "/portals/{portalArn+}/browserSettings"
        o.input = Shapes::ShapeRef.new(shape: DisassociateBrowserSettingsRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateBrowserSettingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:disassociate_data_protection_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateDataProtectionSettings"
        o.http_method = "DELETE"
        o.http_request_uri = "/portals/{portalArn+}/dataProtectionSettings"
        o.input = Shapes::ShapeRef.new(shape: DisassociateDataProtectionSettingsRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateDataProtectionSettingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:disassociate_ip_access_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateIpAccessSettings"
        o.http_method = "DELETE"
        o.http_request_uri = "/portals/{portalArn+}/ipAccessSettings"
        o.input = Shapes::ShapeRef.new(shape: DisassociateIpAccessSettingsRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateIpAccessSettingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:disassociate_network_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateNetworkSettings"
        o.http_method = "DELETE"
        o.http_request_uri = "/portals/{portalArn+}/networkSettings"
        o.input = Shapes::ShapeRef.new(shape: DisassociateNetworkSettingsRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateNetworkSettingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:disassociate_session_logger, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateSessionLogger"
        o.http_method = "DELETE"
        o.http_request_uri = "/portals/{portalArn+}/sessionLogger"
        o.input = Shapes::ShapeRef.new(shape: DisassociateSessionLoggerRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateSessionLoggerResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:disassociate_trust_store, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateTrustStore"
        o.http_method = "DELETE"
        o.http_request_uri = "/portals/{portalArn+}/trustStores"
        o.input = Shapes::ShapeRef.new(shape: DisassociateTrustStoreRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateTrustStoreResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:disassociate_user_access_logging_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateUserAccessLoggingSettings"
        o.http_method = "DELETE"
        o.http_request_uri = "/portals/{portalArn+}/userAccessLoggingSettings"
        o.input = Shapes::ShapeRef.new(shape: DisassociateUserAccessLoggingSettingsRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateUserAccessLoggingSettingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:disassociate_user_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateUserSettings"
        o.http_method = "DELETE"
        o.http_request_uri = "/portals/{portalArn+}/userSettings"
        o.input = Shapes::ShapeRef.new(shape: DisassociateUserSettingsRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateUserSettingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:expire_session, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ExpireSession"
        o.http_method = "DELETE"
        o.http_request_uri = "/portals/{portalId}/sessions/{sessionId}"
        o.input = Shapes::ShapeRef.new(shape: ExpireSessionRequest)
        o.output = Shapes::ShapeRef.new(shape: ExpireSessionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_browser_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetBrowserSettings"
        o.http_method = "GET"
        o.http_request_uri = "/browserSettings/{browserSettingsArn+}"
        o.input = Shapes::ShapeRef.new(shape: GetBrowserSettingsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetBrowserSettingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_data_protection_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDataProtectionSettings"
        o.http_method = "GET"
        o.http_request_uri = "/dataProtectionSettings/{dataProtectionSettingsArn+}"
        o.input = Shapes::ShapeRef.new(shape: GetDataProtectionSettingsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDataProtectionSettingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_identity_provider, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetIdentityProvider"
        o.http_method = "GET"
        o.http_request_uri = "/identityProviders/{identityProviderArn+}"
        o.input = Shapes::ShapeRef.new(shape: GetIdentityProviderRequest)
        o.output = Shapes::ShapeRef.new(shape: GetIdentityProviderResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_ip_access_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetIpAccessSettings"
        o.http_method = "GET"
        o.http_request_uri = "/ipAccessSettings/{ipAccessSettingsArn+}"
        o.input = Shapes::ShapeRef.new(shape: GetIpAccessSettingsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetIpAccessSettingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_network_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetNetworkSettings"
        o.http_method = "GET"
        o.http_request_uri = "/networkSettings/{networkSettingsArn+}"
        o.input = Shapes::ShapeRef.new(shape: GetNetworkSettingsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetNetworkSettingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_portal, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPortal"
        o.http_method = "GET"
        o.http_request_uri = "/portals/{portalArn+}"
        o.input = Shapes::ShapeRef.new(shape: GetPortalRequest)
        o.output = Shapes::ShapeRef.new(shape: GetPortalResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_portal_service_provider_metadata, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPortalServiceProviderMetadata"
        o.http_method = "GET"
        o.http_request_uri = "/portalIdp/{portalArn+}"
        o.input = Shapes::ShapeRef.new(shape: GetPortalServiceProviderMetadataRequest)
        o.output = Shapes::ShapeRef.new(shape: GetPortalServiceProviderMetadataResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_session, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSession"
        o.http_method = "GET"
        o.http_request_uri = "/portals/{portalId}/sessions/{sessionId}"
        o.input = Shapes::ShapeRef.new(shape: GetSessionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetSessionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_session_logger, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSessionLogger"
        o.http_method = "GET"
        o.http_request_uri = "/sessionLoggers/{sessionLoggerArn+}"
        o.input = Shapes::ShapeRef.new(shape: GetSessionLoggerRequest)
        o.output = Shapes::ShapeRef.new(shape: GetSessionLoggerResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_trust_store, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTrustStore"
        o.http_method = "GET"
        o.http_request_uri = "/trustStores/{trustStoreArn+}"
        o.input = Shapes::ShapeRef.new(shape: GetTrustStoreRequest)
        o.output = Shapes::ShapeRef.new(shape: GetTrustStoreResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_trust_store_certificate, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTrustStoreCertificate"
        o.http_method = "GET"
        o.http_request_uri = "/trustStores/{trustStoreArn+}/certificate"
        o.input = Shapes::ShapeRef.new(shape: GetTrustStoreCertificateRequest)
        o.output = Shapes::ShapeRef.new(shape: GetTrustStoreCertificateResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_user_access_logging_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetUserAccessLoggingSettings"
        o.http_method = "GET"
        o.http_request_uri = "/userAccessLoggingSettings/{userAccessLoggingSettingsArn+}"
        o.input = Shapes::ShapeRef.new(shape: GetUserAccessLoggingSettingsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetUserAccessLoggingSettingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_user_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetUserSettings"
        o.http_method = "GET"
        o.http_request_uri = "/userSettings/{userSettingsArn+}"
        o.input = Shapes::ShapeRef.new(shape: GetUserSettingsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetUserSettingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:list_browser_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListBrowserSettings"
        o.http_method = "GET"
        o.http_request_uri = "/browserSettings"
        o.input = Shapes::ShapeRef.new(shape: ListBrowserSettingsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListBrowserSettingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_data_protection_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDataProtectionSettings"
        o.http_method = "GET"
        o.http_request_uri = "/dataProtectionSettings"
        o.input = Shapes::ShapeRef.new(shape: ListDataProtectionSettingsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDataProtectionSettingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_identity_providers, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListIdentityProviders"
        o.http_method = "GET"
        o.http_request_uri = "/portals/{portalArn+}/identityProviders"
        o.input = Shapes::ShapeRef.new(shape: ListIdentityProvidersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListIdentityProvidersResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_ip_access_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListIpAccessSettings"
        o.http_method = "GET"
        o.http_request_uri = "/ipAccessSettings"
        o.input = Shapes::ShapeRef.new(shape: ListIpAccessSettingsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListIpAccessSettingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_network_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListNetworkSettings"
        o.http_method = "GET"
        o.http_request_uri = "/networkSettings"
        o.input = Shapes::ShapeRef.new(shape: ListNetworkSettingsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListNetworkSettingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_portals, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPortals"
        o.http_method = "GET"
        o.http_request_uri = "/portals"
        o.input = Shapes::ShapeRef.new(shape: ListPortalsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPortalsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_session_loggers, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSessionLoggers"
        o.http_method = "GET"
        o.http_request_uri = "/sessionLoggers"
        o.input = Shapes::ShapeRef.new(shape: ListSessionLoggersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListSessionLoggersResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_sessions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSessions"
        o.http_method = "GET"
        o.http_request_uri = "/portals/{portalId}/sessions"
        o.input = Shapes::ShapeRef.new(shape: ListSessionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListSessionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
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
        o.http_request_uri = "/tags/{resourceArn+}"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:list_trust_store_certificates, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTrustStoreCertificates"
        o.http_method = "GET"
        o.http_request_uri = "/trustStores/{trustStoreArn+}/certificates"
        o.input = Shapes::ShapeRef.new(shape: ListTrustStoreCertificatesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTrustStoreCertificatesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_trust_stores, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTrustStores"
        o.http_method = "GET"
        o.http_request_uri = "/trustStores"
        o.input = Shapes::ShapeRef.new(shape: ListTrustStoresRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTrustStoresResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_user_access_logging_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListUserAccessLoggingSettings"
        o.http_method = "GET"
        o.http_request_uri = "/userAccessLoggingSettings"
        o.input = Shapes::ShapeRef.new(shape: ListUserAccessLoggingSettingsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListUserAccessLoggingSettingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_user_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListUserSettings"
        o.http_method = "GET"
        o.http_request_uri = "/userSettings"
        o.input = Shapes::ShapeRef.new(shape: ListUserSettingsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListUserSettingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{resourceArn+}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTagsException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{resourceArn+}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:update_browser_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateBrowserSettings"
        o.http_method = "PATCH"
        o.http_request_uri = "/browserSettings/{browserSettingsArn+}"
        o.input = Shapes::ShapeRef.new(shape: UpdateBrowserSettingsRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateBrowserSettingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:update_data_protection_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDataProtectionSettings"
        o.http_method = "PATCH"
        o.http_request_uri = "/dataProtectionSettings/{dataProtectionSettingsArn+}"
        o.input = Shapes::ShapeRef.new(shape: UpdateDataProtectionSettingsRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateDataProtectionSettingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:update_identity_provider, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateIdentityProvider"
        o.http_method = "PATCH"
        o.http_request_uri = "/identityProviders/{identityProviderArn+}"
        o.input = Shapes::ShapeRef.new(shape: UpdateIdentityProviderRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateIdentityProviderResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:update_ip_access_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateIpAccessSettings"
        o.http_method = "PATCH"
        o.http_request_uri = "/ipAccessSettings/{ipAccessSettingsArn+}"
        o.input = Shapes::ShapeRef.new(shape: UpdateIpAccessSettingsRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateIpAccessSettingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:update_network_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateNetworkSettings"
        o.http_method = "PATCH"
        o.http_request_uri = "/networkSettings/{networkSettingsArn+}"
        o.input = Shapes::ShapeRef.new(shape: UpdateNetworkSettingsRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateNetworkSettingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:update_portal, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdatePortal"
        o.http_method = "PUT"
        o.http_request_uri = "/portals/{portalArn+}"
        o.input = Shapes::ShapeRef.new(shape: UpdatePortalRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdatePortalResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:update_session_logger, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateSessionLogger"
        o.http_method = "POST"
        o.http_request_uri = "/sessionLoggers/{sessionLoggerArn+}"
        o.input = Shapes::ShapeRef.new(shape: UpdateSessionLoggerRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateSessionLoggerResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:update_trust_store, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateTrustStore"
        o.http_method = "PATCH"
        o.http_request_uri = "/trustStores/{trustStoreArn+}"
        o.input = Shapes::ShapeRef.new(shape: UpdateTrustStoreRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateTrustStoreResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:update_user_access_logging_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateUserAccessLoggingSettings"
        o.http_method = "PATCH"
        o.http_request_uri = "/userAccessLoggingSettings/{userAccessLoggingSettingsArn+}"
        o.input = Shapes::ShapeRef.new(shape: UpdateUserAccessLoggingSettingsRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateUserAccessLoggingSettingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:update_user_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateUserSettings"
        o.http_method = "PATCH"
        o.http_request_uri = "/userSettings/{userSettingsArn+}"
        o.input = Shapes::ShapeRef.new(shape: UpdateUserSettingsRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateUserSettingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)
    end

  end
end
