# frozen_string_literal: true

# This is generated code!

module Aws::WorkSpacesWeb
  # This module contains a schema composed of shapes used by the client.
  module Schema

    ARN = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspacesweb#ARN', name: 'ARN', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:[\\w+=\\/,.@-]+:[a-zA-Z0-9\\-]+:[a-zA-Z0-9\\-]*:[a-zA-Z0-9]{1,12}:[a-zA-Z]+(\\/[a-fA-F0-9\\-]{36})+$"})
    AccessDeniedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    ArnList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workspacesweb#ArnList', name: 'ArnList')
    AssociateBrowserSettingsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#AssociateBrowserSettingsRequest', name: 'AssociateBrowserSettingsRequest')
    AssociateBrowserSettingsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#AssociateBrowserSettingsResponse', name: 'AssociateBrowserSettingsResponse')
    AssociateDataProtectionSettingsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#AssociateDataProtectionSettingsRequest', name: 'AssociateDataProtectionSettingsRequest')
    AssociateDataProtectionSettingsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#AssociateDataProtectionSettingsResponse', name: 'AssociateDataProtectionSettingsResponse')
    AssociateIpAccessSettingsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#AssociateIpAccessSettingsRequest', name: 'AssociateIpAccessSettingsRequest')
    AssociateIpAccessSettingsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#AssociateIpAccessSettingsResponse', name: 'AssociateIpAccessSettingsResponse')
    AssociateNetworkSettingsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#AssociateNetworkSettingsRequest', name: 'AssociateNetworkSettingsRequest')
    AssociateNetworkSettingsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#AssociateNetworkSettingsResponse', name: 'AssociateNetworkSettingsResponse')
    AssociateSessionLoggerRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#AssociateSessionLoggerRequest', name: 'AssociateSessionLoggerRequest', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.workspacesweb#PortalResource"}, {"resource" => "com.amazonaws.workspacesweb#SessionLoggerResource"}]})
    AssociateSessionLoggerResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#AssociateSessionLoggerResponse', name: 'AssociateSessionLoggerResponse', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.workspacesweb#PortalResource"}, {"resource" => "com.amazonaws.workspacesweb#SessionLoggerResource"}]})
    AssociateTrustStoreRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#AssociateTrustStoreRequest', name: 'AssociateTrustStoreRequest')
    AssociateTrustStoreResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#AssociateTrustStoreResponse', name: 'AssociateTrustStoreResponse')
    AssociateUserAccessLoggingSettingsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#AssociateUserAccessLoggingSettingsRequest', name: 'AssociateUserAccessLoggingSettingsRequest')
    AssociateUserAccessLoggingSettingsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#AssociateUserAccessLoggingSettingsResponse', name: 'AssociateUserAccessLoggingSettingsResponse')
    AssociateUserSettingsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#AssociateUserSettingsRequest', name: 'AssociateUserSettingsRequest')
    AssociateUserSettingsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#AssociateUserSettingsResponse', name: 'AssociateUserSettingsResponse')
    AuthenticationType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspacesweb#AuthenticationType', name: 'AuthenticationType', traits: {"smithy.api#enum" => [{"value" => "Standard", "name" => "STANDARD"}, {"value" => "IAM_Identity_Center", "name" => "IAM_IDENTITY_CENTER"}]})
    BrowserPolicy = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspacesweb#BrowserPolicy', name: 'BrowserPolicy', traits: {"smithy.api#length" => {"min" => 2, "max" => 131072}, "smithy.api#pattern" => "^\\{[\\S\\s]*\\}\\s*$", "smithy.api#sensitive" => {}})
    BrowserSettings = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#BrowserSettings', name: 'BrowserSettings')
    BrowserSettingsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workspacesweb#BrowserSettingsList', name: 'BrowserSettingsList')
    BrowserSettingsSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#BrowserSettingsSummary', name: 'BrowserSettingsSummary')
    BrowserType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspacesweb#BrowserType', name: 'BrowserType', traits: {"smithy.api#enum" => [{"value" => "Chrome", "name" => "CHROME"}]})
    BuiltInPatternId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspacesweb#BuiltInPatternId', name: 'BuiltInPatternId', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#pattern" => "^[_\\-\\d\\w]+$", "smithy.api#sensitive" => {}})
    Certificate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#Certificate', name: 'Certificate')
    CertificateAuthorityBody = Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.workspacesweb#CertificateAuthorityBody', name: 'CertificateAuthorityBody', traits: {"smithy.api#length" => {"min" => 1, "max" => 32768}})
    CertificateList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workspacesweb#CertificateList', name: 'CertificateList')
    CertificatePrincipal = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspacesweb#CertificatePrincipal', name: 'CertificatePrincipal', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^\\S+$"})
    CertificateSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#CertificateSummary', name: 'CertificateSummary')
    CertificateSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workspacesweb#CertificateSummaryList', name: 'CertificateSummaryList')
    CertificateThumbprint = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspacesweb#CertificateThumbprint', name: 'CertificateThumbprint', traits: {"smithy.api#length" => {"min" => 64, "max" => 64}, "smithy.api#pattern" => "^[A-Fa-f0-9]{64}$"})
    CertificateThumbprintList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workspacesweb#CertificateThumbprintList', name: 'CertificateThumbprintList')
    ClientToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspacesweb#ClientToken', name: 'ClientToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 512}})
    ConfidenceLevel = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.workspacesweb#ConfidenceLevel', name: 'ConfidenceLevel', traits: {"smithy.api#range" => {"min" => 1, "max" => 3}})
    ConflictException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CookieDomain = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspacesweb#CookieDomain', name: 'CookieDomain', traits: {"smithy.api#length" => {"min" => 0, "max" => 253}, "smithy.api#pattern" => "^(\\.?)(?:[a-z0-9](?:[a-z0-9-]{0,61}[a-z0-9])?\\.)*[a-z0-9][a-z0-9-]{0,61}[a-z0-9]$", "smithy.api#sensitive" => {}})
    CookieName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspacesweb#CookieName', name: 'CookieName', traits: {"smithy.api#length" => {"min" => 0, "max" => 4096}, "smithy.api#sensitive" => {}})
    CookiePath = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspacesweb#CookiePath', name: 'CookiePath', traits: {"smithy.api#length" => {"min" => 0, "max" => 2000}, "smithy.api#pattern" => "^/(\\S)*$", "smithy.api#sensitive" => {}})
    CookieSpecification = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#CookieSpecification', name: 'CookieSpecification')
    CookieSpecifications = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workspacesweb#CookieSpecifications', name: 'CookieSpecifications', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    CookieSynchronizationConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#CookieSynchronizationConfiguration', name: 'CookieSynchronizationConfiguration', traits: {"smithy.api#sensitive" => {}})
    CreateBrowserSettingsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#CreateBrowserSettingsRequest', name: 'CreateBrowserSettingsRequest')
    CreateBrowserSettingsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#CreateBrowserSettingsResponse', name: 'CreateBrowserSettingsResponse')
    CreateDataProtectionSettingsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#CreateDataProtectionSettingsRequest', name: 'CreateDataProtectionSettingsRequest')
    CreateDataProtectionSettingsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#CreateDataProtectionSettingsResponse', name: 'CreateDataProtectionSettingsResponse')
    CreateIdentityProviderRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#CreateIdentityProviderRequest', name: 'CreateIdentityProviderRequest')
    CreateIdentityProviderResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#CreateIdentityProviderResponse', name: 'CreateIdentityProviderResponse')
    CreateIpAccessSettingsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#CreateIpAccessSettingsRequest', name: 'CreateIpAccessSettingsRequest')
    CreateIpAccessSettingsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#CreateIpAccessSettingsResponse', name: 'CreateIpAccessSettingsResponse')
    CreateNetworkSettingsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#CreateNetworkSettingsRequest', name: 'CreateNetworkSettingsRequest')
    CreateNetworkSettingsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#CreateNetworkSettingsResponse', name: 'CreateNetworkSettingsResponse')
    CreatePortalRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#CreatePortalRequest', name: 'CreatePortalRequest')
    CreatePortalResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#CreatePortalResponse', name: 'CreatePortalResponse')
    CreateSessionLoggerRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#CreateSessionLoggerRequest', name: 'CreateSessionLoggerRequest')
    CreateSessionLoggerResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#CreateSessionLoggerResponse', name: 'CreateSessionLoggerResponse', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.workspacesweb#SessionLoggerResource"}]})
    CreateTrustStoreRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#CreateTrustStoreRequest', name: 'CreateTrustStoreRequest')
    CreateTrustStoreResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#CreateTrustStoreResponse', name: 'CreateTrustStoreResponse')
    CreateUserAccessLoggingSettingsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#CreateUserAccessLoggingSettingsRequest', name: 'CreateUserAccessLoggingSettingsRequest')
    CreateUserAccessLoggingSettingsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#CreateUserAccessLoggingSettingsResponse', name: 'CreateUserAccessLoggingSettingsResponse')
    CreateUserSettingsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#CreateUserSettingsRequest', name: 'CreateUserSettingsRequest')
    CreateUserSettingsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#CreateUserSettingsResponse', name: 'CreateUserSettingsResponse')
    CustomPattern = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#CustomPattern', name: 'CustomPattern')
    DataProtectionSettings = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#DataProtectionSettings', name: 'DataProtectionSettings')
    DataProtectionSettingsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workspacesweb#DataProtectionSettingsList', name: 'DataProtectionSettingsList')
    DataProtectionSettingsSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#DataProtectionSettingsSummary', name: 'DataProtectionSettingsSummary')
    DeleteBrowserSettingsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#DeleteBrowserSettingsRequest', name: 'DeleteBrowserSettingsRequest')
    DeleteBrowserSettingsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#DeleteBrowserSettingsResponse', name: 'DeleteBrowserSettingsResponse')
    DeleteDataProtectionSettingsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#DeleteDataProtectionSettingsRequest', name: 'DeleteDataProtectionSettingsRequest')
    DeleteDataProtectionSettingsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#DeleteDataProtectionSettingsResponse', name: 'DeleteDataProtectionSettingsResponse')
    DeleteIdentityProviderRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#DeleteIdentityProviderRequest', name: 'DeleteIdentityProviderRequest')
    DeleteIdentityProviderResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#DeleteIdentityProviderResponse', name: 'DeleteIdentityProviderResponse')
    DeleteIpAccessSettingsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#DeleteIpAccessSettingsRequest', name: 'DeleteIpAccessSettingsRequest')
    DeleteIpAccessSettingsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#DeleteIpAccessSettingsResponse', name: 'DeleteIpAccessSettingsResponse')
    DeleteNetworkSettingsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#DeleteNetworkSettingsRequest', name: 'DeleteNetworkSettingsRequest')
    DeleteNetworkSettingsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#DeleteNetworkSettingsResponse', name: 'DeleteNetworkSettingsResponse')
    DeletePortalRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#DeletePortalRequest', name: 'DeletePortalRequest')
    DeletePortalResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#DeletePortalResponse', name: 'DeletePortalResponse')
    DeleteSessionLoggerRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#DeleteSessionLoggerRequest', name: 'DeleteSessionLoggerRequest', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.workspacesweb#SessionLoggerResource"}]})
    DeleteSessionLoggerResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#DeleteSessionLoggerResponse', name: 'DeleteSessionLoggerResponse')
    DeleteTrustStoreRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#DeleteTrustStoreRequest', name: 'DeleteTrustStoreRequest')
    DeleteTrustStoreResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#DeleteTrustStoreResponse', name: 'DeleteTrustStoreResponse')
    DeleteUserAccessLoggingSettingsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#DeleteUserAccessLoggingSettingsRequest', name: 'DeleteUserAccessLoggingSettingsRequest')
    DeleteUserAccessLoggingSettingsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#DeleteUserAccessLoggingSettingsResponse', name: 'DeleteUserAccessLoggingSettingsResponse')
    DeleteUserSettingsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#DeleteUserSettingsRequest', name: 'DeleteUserSettingsRequest')
    DeleteUserSettingsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#DeleteUserSettingsResponse', name: 'DeleteUserSettingsResponse')
    Description = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspacesweb#Description', name: 'Description', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^.+$", "smithy.api#sensitive" => {}})
    DescriptionSafe = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspacesweb#DescriptionSafe', name: 'DescriptionSafe', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[ _\\-\\d\\w]+$", "smithy.api#sensitive" => {}})
    DisassociateBrowserSettingsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#DisassociateBrowserSettingsRequest', name: 'DisassociateBrowserSettingsRequest')
    DisassociateBrowserSettingsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#DisassociateBrowserSettingsResponse', name: 'DisassociateBrowserSettingsResponse')
    DisassociateDataProtectionSettingsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#DisassociateDataProtectionSettingsRequest', name: 'DisassociateDataProtectionSettingsRequest')
    DisassociateDataProtectionSettingsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#DisassociateDataProtectionSettingsResponse', name: 'DisassociateDataProtectionSettingsResponse')
    DisassociateIpAccessSettingsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#DisassociateIpAccessSettingsRequest', name: 'DisassociateIpAccessSettingsRequest')
    DisassociateIpAccessSettingsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#DisassociateIpAccessSettingsResponse', name: 'DisassociateIpAccessSettingsResponse')
    DisassociateNetworkSettingsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#DisassociateNetworkSettingsRequest', name: 'DisassociateNetworkSettingsRequest')
    DisassociateNetworkSettingsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#DisassociateNetworkSettingsResponse', name: 'DisassociateNetworkSettingsResponse')
    DisassociateSessionLoggerRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#DisassociateSessionLoggerRequest', name: 'DisassociateSessionLoggerRequest', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.workspacesweb#PortalResource"}]})
    DisassociateSessionLoggerResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#DisassociateSessionLoggerResponse', name: 'DisassociateSessionLoggerResponse')
    DisassociateTrustStoreRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#DisassociateTrustStoreRequest', name: 'DisassociateTrustStoreRequest')
    DisassociateTrustStoreResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#DisassociateTrustStoreResponse', name: 'DisassociateTrustStoreResponse')
    DisassociateUserAccessLoggingSettingsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#DisassociateUserAccessLoggingSettingsRequest', name: 'DisassociateUserAccessLoggingSettingsRequest')
    DisassociateUserAccessLoggingSettingsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#DisassociateUserAccessLoggingSettingsResponse', name: 'DisassociateUserAccessLoggingSettingsResponse')
    DisassociateUserSettingsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#DisassociateUserSettingsRequest', name: 'DisassociateUserSettingsRequest')
    DisassociateUserSettingsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#DisassociateUserSettingsResponse', name: 'DisassociateUserSettingsResponse')
    DisconnectTimeoutInMinutes = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.workspacesweb#DisconnectTimeoutInMinutes', name: 'DisconnectTimeoutInMinutes', traits: {"smithy.api#range" => {"min" => 1, "max" => 600}})
    DisplayName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspacesweb#DisplayName', name: 'DisplayName', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^.+$", "smithy.api#sensitive" => {}})
    DisplayNameSafe = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspacesweb#DisplayNameSafe', name: 'DisplayNameSafe', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[ _\\-\\d\\w]+$", "smithy.api#sensitive" => {}})
    EnabledType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspacesweb#EnabledType', name: 'EnabledType', traits: {"smithy.api#enum" => [{"value" => "Disabled", "name" => "DISABLED"}, {"value" => "Enabled", "name" => "ENABLED"}]})
    EncryptionContextMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.workspacesweb#EncryptionContextMap', name: 'EncryptionContextMap')
    Event = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workspacesweb#Event', name: 'Event')
    EventFilter = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.workspacesweb#EventFilter', name: 'EventFilter')
    Events = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workspacesweb#Events', name: 'Events', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#uniqueItems" => {}})
    ExceptionMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspacesweb#ExceptionMessage', name: 'ExceptionMessage')
    ExpireSessionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#ExpireSessionRequest', name: 'ExpireSessionRequest')
    ExpireSessionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#ExpireSessionResponse', name: 'ExpireSessionResponse')
    FieldName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspacesweb#FieldName', name: 'FieldName')
    FolderStructure = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workspacesweb#FolderStructure', name: 'FolderStructure')
    GetBrowserSettingsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#GetBrowserSettingsRequest', name: 'GetBrowserSettingsRequest')
    GetBrowserSettingsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#GetBrowserSettingsResponse', name: 'GetBrowserSettingsResponse')
    GetDataProtectionSettingsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#GetDataProtectionSettingsRequest', name: 'GetDataProtectionSettingsRequest')
    GetDataProtectionSettingsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#GetDataProtectionSettingsResponse', name: 'GetDataProtectionSettingsResponse')
    GetIdentityProviderRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#GetIdentityProviderRequest', name: 'GetIdentityProviderRequest')
    GetIdentityProviderResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#GetIdentityProviderResponse', name: 'GetIdentityProviderResponse')
    GetIpAccessSettingsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#GetIpAccessSettingsRequest', name: 'GetIpAccessSettingsRequest')
    GetIpAccessSettingsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#GetIpAccessSettingsResponse', name: 'GetIpAccessSettingsResponse')
    GetNetworkSettingsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#GetNetworkSettingsRequest', name: 'GetNetworkSettingsRequest')
    GetNetworkSettingsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#GetNetworkSettingsResponse', name: 'GetNetworkSettingsResponse')
    GetPortalRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#GetPortalRequest', name: 'GetPortalRequest')
    GetPortalResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#GetPortalResponse', name: 'GetPortalResponse')
    GetPortalServiceProviderMetadataRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#GetPortalServiceProviderMetadataRequest', name: 'GetPortalServiceProviderMetadataRequest')
    GetPortalServiceProviderMetadataResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#GetPortalServiceProviderMetadataResponse', name: 'GetPortalServiceProviderMetadataResponse')
    GetSessionLoggerRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#GetSessionLoggerRequest', name: 'GetSessionLoggerRequest', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.workspacesweb#SessionLoggerResource"}]})
    GetSessionLoggerResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#GetSessionLoggerResponse', name: 'GetSessionLoggerResponse')
    GetSessionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#GetSessionRequest', name: 'GetSessionRequest')
    GetSessionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#GetSessionResponse', name: 'GetSessionResponse')
    GetTrustStoreCertificateRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#GetTrustStoreCertificateRequest', name: 'GetTrustStoreCertificateRequest')
    GetTrustStoreCertificateResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#GetTrustStoreCertificateResponse', name: 'GetTrustStoreCertificateResponse')
    GetTrustStoreRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#GetTrustStoreRequest', name: 'GetTrustStoreRequest')
    GetTrustStoreResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#GetTrustStoreResponse', name: 'GetTrustStoreResponse')
    GetUserAccessLoggingSettingsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#GetUserAccessLoggingSettingsRequest', name: 'GetUserAccessLoggingSettingsRequest')
    GetUserAccessLoggingSettingsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#GetUserAccessLoggingSettingsResponse', name: 'GetUserAccessLoggingSettingsResponse')
    GetUserSettingsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#GetUserSettingsRequest', name: 'GetUserSettingsRequest')
    GetUserSettingsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#GetUserSettingsResponse', name: 'GetUserSettingsResponse')
    GlobalInlineRedactionUrls = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workspacesweb#GlobalInlineRedactionUrls', name: 'GlobalInlineRedactionUrls', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    HiddenToolbarItemList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workspacesweb#HiddenToolbarItemList', name: 'HiddenToolbarItemList')
    IdentityProvider = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#IdentityProvider', name: 'IdentityProvider')
    IdentityProviderDetails = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.workspacesweb#IdentityProviderDetails', name: 'IdentityProviderDetails', traits: {"smithy.api#sensitive" => {}})
    IdentityProviderList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workspacesweb#IdentityProviderList', name: 'IdentityProviderList')
    IdentityProviderName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspacesweb#IdentityProviderName', name: 'IdentityProviderName', traits: {"smithy.api#length" => {"min" => 1, "max" => 32}, "smithy.api#pattern" => "^[^_][\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}][^_]+$", "smithy.api#sensitive" => {}})
    IdentityProviderSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#IdentityProviderSummary', name: 'IdentityProviderSummary')
    IdentityProviderType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspacesweb#IdentityProviderType', name: 'IdentityProviderType', traits: {"smithy.api#enum" => [{"value" => "SAML", "name" => "SAML"}, {"value" => "Facebook", "name" => "Facebook"}, {"value" => "Google", "name" => "Google"}, {"value" => "LoginWithAmazon", "name" => "LoginWithAmazon"}, {"value" => "SignInWithApple", "name" => "SignInWithApple"}, {"value" => "OIDC", "name" => "OIDC"}]})
    IdleDisconnectTimeoutInMinutes = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.workspacesweb#IdleDisconnectTimeoutInMinutes', name: 'IdleDisconnectTimeoutInMinutes', traits: {"smithy.api#range" => {"min" => 0, "max" => 60}})
    InlineRedactionConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#InlineRedactionConfiguration', name: 'InlineRedactionConfiguration')
    InlineRedactionPattern = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#InlineRedactionPattern', name: 'InlineRedactionPattern')
    InlineRedactionPatterns = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workspacesweb#InlineRedactionPatterns', name: 'InlineRedactionPatterns', traits: {"smithy.api#length" => {"min" => 0, "max" => 150}})
    InlineRedactionUrl = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspacesweb#InlineRedactionUrl', name: 'InlineRedactionUrl', traits: {"smithy.api#pattern" => "^((([a-zA-Z][a-zA-Z0-9+.-]*):\\/\\/(\\*|[\\w%._\\-\\+~#=@]+)?(\\/[^@\\s]*)?(?:\\?([^*\\s]+(?:\\*?)))?)|(\\*|[\\w%._\\-\\+~#=@]+\\.[\\w%._\\-\\+~#=@]+)(?::(\\d{1,5}))?(\\/[^@\\s]*)?(?:\\?([^*\\s]+(?:\\*?)))?|(([a-zA-Z][a-zA-Z0-9+.-]*):(\\/\\/)?\\*))$", "smithy.api#sensitive" => {}})
    InlineRedactionUrls = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workspacesweb#InlineRedactionUrls', name: 'InlineRedactionUrls', traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    InstanceType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspacesweb#InstanceType', name: 'InstanceType', traits: {"smithy.api#enum" => [{"value" => "standard.regular", "name" => "STANDARD_REGULAR"}, {"value" => "standard.large", "name" => "STANDARD_LARGE"}, {"value" => "standard.xlarge", "name" => "STANDARD_XLARGE"}]})
    InternalServerException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    IpAccessSettings = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#IpAccessSettings', name: 'IpAccessSettings')
    IpAccessSettingsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workspacesweb#IpAccessSettingsList', name: 'IpAccessSettingsList')
    IpAccessSettingsSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#IpAccessSettingsSummary', name: 'IpAccessSettingsSummary')
    IpAddress = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspacesweb#IpAddress', name: 'IpAddress', traits: {"smithy.api#length" => {"min" => 1, "max" => 15}, "smithy.api#pattern" => "^((([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])\\.){3}([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5]))$|^(([0-9a-fA-F]{1,4}:){7,7}[0-9a-fA-F]{1,4}|([0-9a-fA-F]{1,4}:){1,7}:|([0-9a-fA-F]{1,4}:){1,6}:[0-9a-fA-F]{1,4}|([0-9a-fA-F]{1,4}:){1,5}(:[0-9a-fA-F]{1,4}){1,2}|([0-9a-fA-F]{1,4}:){1,4}(:[0-9a-fA-F]{1,4}){1,3}|([0-9a-fA-F]{1,4}:){1,3}(:[0-9a-fA-F]{1,4}){1,4}|([0-9a-fA-F]{1,4}:){1,2}(:[0-9a-fA-F]{1,4}){1,5}|[0-9a-fA-F]{1,4}:((:[0-9a-fA-F]{1,4}){1,6})|:((:[0-9a-fA-F]{1,4}){1,7}|:)|fe80:(:[0-9a-fA-F]{0,4}){0,4}%[0-9a-zA-Z]{1,}|::(ffff(:0{1,4}){0,1}:){0,1}((25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9])\\.){3,3}(25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9])|([0-9a-fA-F]{1,4}:){1,4}:((25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9])\\.){3,3}(25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9]))$", "smithy.api#sensitive" => {}})
    IpAddressList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workspacesweb#IpAddressList', name: 'IpAddressList', traits: {"smithy.api#length" => {"min" => 1, "max" => 45}})
    IpRange = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspacesweb#IpRange', name: 'IpRange', traits: {"smithy.api#pattern" => "^\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}(?:/([0-9]|[12][0-9]|3[0-2])|)$", "smithy.api#sensitive" => {}})
    IpRule = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#IpRule', name: 'IpRule')
    IpRuleList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workspacesweb#IpRuleList', name: 'IpRuleList', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#sensitive" => {}})
    KinesisStreamArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspacesweb#KinesisStreamArn', name: 'KinesisStreamArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:[\\w+=/,.@-]+:kinesis:[a-zA-Z0-9\\-]*:[a-zA-Z0-9]{1,12}:stream/.+$"})
    ListBrowserSettingsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#ListBrowserSettingsRequest', name: 'ListBrowserSettingsRequest')
    ListBrowserSettingsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#ListBrowserSettingsResponse', name: 'ListBrowserSettingsResponse')
    ListDataProtectionSettingsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#ListDataProtectionSettingsRequest', name: 'ListDataProtectionSettingsRequest')
    ListDataProtectionSettingsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#ListDataProtectionSettingsResponse', name: 'ListDataProtectionSettingsResponse')
    ListIdentityProvidersRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#ListIdentityProvidersRequest', name: 'ListIdentityProvidersRequest')
    ListIdentityProvidersResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#ListIdentityProvidersResponse', name: 'ListIdentityProvidersResponse')
    ListIpAccessSettingsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#ListIpAccessSettingsRequest', name: 'ListIpAccessSettingsRequest')
    ListIpAccessSettingsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#ListIpAccessSettingsResponse', name: 'ListIpAccessSettingsResponse')
    ListNetworkSettingsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#ListNetworkSettingsRequest', name: 'ListNetworkSettingsRequest')
    ListNetworkSettingsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#ListNetworkSettingsResponse', name: 'ListNetworkSettingsResponse')
    ListPortalsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#ListPortalsRequest', name: 'ListPortalsRequest')
    ListPortalsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#ListPortalsResponse', name: 'ListPortalsResponse')
    ListSessionLoggersRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#ListSessionLoggersRequest', name: 'ListSessionLoggersRequest')
    ListSessionLoggersResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#ListSessionLoggersResponse', name: 'ListSessionLoggersResponse')
    ListSessionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#ListSessionsRequest', name: 'ListSessionsRequest')
    ListSessionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#ListSessionsResponse', name: 'ListSessionsResponse')
    ListTagsForResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    ListTrustStoreCertificatesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#ListTrustStoreCertificatesRequest', name: 'ListTrustStoreCertificatesRequest')
    ListTrustStoreCertificatesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#ListTrustStoreCertificatesResponse', name: 'ListTrustStoreCertificatesResponse')
    ListTrustStoresRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#ListTrustStoresRequest', name: 'ListTrustStoresRequest')
    ListTrustStoresResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#ListTrustStoresResponse', name: 'ListTrustStoresResponse')
    ListUserAccessLoggingSettingsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#ListUserAccessLoggingSettingsRequest', name: 'ListUserAccessLoggingSettingsRequest')
    ListUserAccessLoggingSettingsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#ListUserAccessLoggingSettingsResponse', name: 'ListUserAccessLoggingSettingsResponse')
    ListUserSettingsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#ListUserSettingsRequest', name: 'ListUserSettingsRequest')
    ListUserSettingsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#ListUserSettingsResponse', name: 'ListUserSettingsResponse')
    LogConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#LogConfiguration', name: 'LogConfiguration')
    LogFileFormat = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workspacesweb#LogFileFormat', name: 'LogFileFormat')
    MaxConcurrentSessions = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.workspacesweb#MaxConcurrentSessions', name: 'MaxConcurrentSessions', traits: {"smithy.api#range" => {"min" => 1, "max" => 5000}})
    MaxDisplayResolution = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspacesweb#MaxDisplayResolution', name: 'MaxDisplayResolution', traits: {"smithy.api#enum" => [{"value" => "size4096X2160", "name" => "RESOLUTION_DCI_4K"}, {"value" => "size3840X2160", "name" => "RESOLUTION_UHD_4K"}, {"value" => "size3440X1440", "name" => "RESOLUTION_1440P_ULTRA_WIDE"}, {"value" => "size2560X1440", "name" => "RESOLUTION_1440P"}, {"value" => "size1920X1080", "name" => "RESOLUTION_1080P"}, {"value" => "size1280X720", "name" => "RESOLUTION_720P"}, {"value" => "size1024X768", "name" => "RESOLUTION_768P"}, {"value" => "size800X600", "name" => "RESOLUTION_600P"}]})
    MaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.workspacesweb#MaxResults', name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 1}})
    NetworkSettings = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#NetworkSettings', name: 'NetworkSettings')
    NetworkSettingsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workspacesweb#NetworkSettingsList', name: 'NetworkSettingsList')
    NetworkSettingsSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#NetworkSettingsSummary', name: 'NetworkSettingsSummary')
    PaginationToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspacesweb#PaginationToken', name: 'PaginationToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^\\S+$"})
    PatternName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspacesweb#PatternName', name: 'PatternName', traits: {"smithy.api#length" => {"min" => 1, "max" => 20}, "smithy.api#pattern" => "^[_\\-\\d\\w]+$", "smithy.api#sensitive" => {}})
    Portal = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#Portal', name: 'Portal', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.workspacesweb#SessionLoggerResource"}]})
    PortalEndpoint = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspacesweb#PortalEndpoint', name: 'PortalEndpoint', traits: {"smithy.api#length" => {"min" => 1, "max" => 253}, "smithy.api#pattern" => "^[a-zA-Z0-9]?((?!-)([A-Za-z0-9-]*[A-Za-z0-9])\\.)+[a-zA-Z0-9]+$"})
    PortalId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspacesweb#PortalId', name: 'PortalId', traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[a-zA-Z0-9\\-]+$"})
    PortalList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workspacesweb#PortalList', name: 'PortalList')
    PortalStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspacesweb#PortalStatus', name: 'PortalStatus', traits: {"smithy.api#enum" => [{"value" => "Incomplete", "name" => "INCOMPLETE"}, {"value" => "Pending", "name" => "PENDING"}, {"value" => "Active", "name" => "ACTIVE"}]})
    PortalSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#PortalSummary', name: 'PortalSummary', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.workspacesweb#SessionLoggerResource"}]})
    QuotaCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspacesweb#QuotaCode', name: 'QuotaCode')
    RedactionPlaceHolder = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#RedactionPlaceHolder', name: 'RedactionPlaceHolder')
    RedactionPlaceHolderText = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspacesweb#RedactionPlaceHolderText', name: 'RedactionPlaceHolderText', traits: {"smithy.api#length" => {"min" => 1, "max" => 20}, "smithy.api#pattern" => "^[*_\\-\\d\\w]+$", "smithy.api#sensitive" => {}})
    RedactionPlaceHolderType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspacesweb#RedactionPlaceHolderType', name: 'RedactionPlaceHolderType', traits: {"smithy.api#enum" => [{"value" => "CustomText", "name" => "CUSTOM_TEXT"}]})
    Regex = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspacesweb#Regex', name: 'Regex', traits: {"smithy.api#length" => {"min" => 0, "max" => 300}, "smithy.api#pattern" => "^\\/((?:[^\\n])+)\\/([gimsuyvd]{0,8})$", "smithy.api#sensitive" => {}})
    RendererType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspacesweb#RendererType', name: 'RendererType', traits: {"smithy.api#enum" => [{"value" => "AppStream", "name" => "APPSTREAM"}]})
    ResourceId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspacesweb#ResourceId', name: 'ResourceId')
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspacesweb#ResourceType', name: 'ResourceType')
    RetryAfterSeconds = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.workspacesweb#RetryAfterSeconds', name: 'RetryAfterSeconds', traits: {"smithy.api#default" => 0})
    S3Bucket = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspacesweb#S3Bucket', name: 'S3Bucket', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-z0-9][\\.\\-a-z0-9]{1,61}[a-z0-9]$", "smithy.api#sensitive" => {}})
    S3BucketOwner = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspacesweb#S3BucketOwner', name: 'S3BucketOwner', traits: {"smithy.api#pattern" => "^[0-9]{12}$"})
    S3KeyPrefix = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspacesweb#S3KeyPrefix', name: 'S3KeyPrefix', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[\\d\\w\\-_/!().*']+$", "smithy.api#sensitive" => {}})
    S3LogConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#S3LogConfiguration', name: 'S3LogConfiguration')
    SamlMetadata = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspacesweb#SamlMetadata', name: 'SamlMetadata', traits: {"smithy.api#length" => {"min" => 1, "max" => 204800}, "smithy.api#pattern" => "^.+$"})
    SecurityGroupId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspacesweb#SecurityGroupId', name: 'SecurityGroupId', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\w+\\-]+$"})
    SecurityGroupIdList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workspacesweb#SecurityGroupIdList', name: 'SecurityGroupIdList', traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    ServiceCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspacesweb#ServiceCode', name: 'ServiceCode')
    ServiceQuotaExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    Session = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#Session', name: 'Session')
    SessionId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspacesweb#SessionId', name: 'SessionId', traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[a-zA-Z0-9\\-]+$"})
    SessionLogger = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#SessionLogger', name: 'SessionLogger')
    SessionLoggerList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workspacesweb#SessionLoggerList', name: 'SessionLoggerList')
    SessionLoggerSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#SessionLoggerSummary', name: 'SessionLoggerSummary')
    SessionSortBy = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workspacesweb#SessionSortBy', name: 'SessionSortBy')
    SessionStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workspacesweb#SessionStatus', name: 'SessionStatus')
    SessionSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#SessionSummary', name: 'SessionSummary')
    SessionSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workspacesweb#SessionSummaryList', name: 'SessionSummaryList')
    StatusReason = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspacesweb#StatusReason', name: 'StatusReason', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^.*$"})
    StringType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspacesweb#StringType', name: 'StringType', traits: {"smithy.api#length" => {"min" => 0, "max" => 131072}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    SubnetId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspacesweb#SubnetId', name: 'SubnetId', traits: {"smithy.api#length" => {"min" => 1, "max" => 32}, "smithy.api#pattern" => "^subnet-([0-9a-f]{8}|[0-9a-f]{17})$"})
    SubnetIdList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workspacesweb#SubnetIdList', name: 'SubnetIdList', traits: {"smithy.api#length" => {"min" => 2, "max" => 5}})
    SubresourceARN = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspacesweb#SubresourceARN', name: 'SubresourceARN', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:[\\w+=\\/,.@-]+:[a-zA-Z0-9\\-]+:[a-zA-Z0-9\\-]*:[a-zA-Z0-9]{1,12}:[a-zA-Z]+(\\/[a-fA-F0-9\\-]{36}){2,}$"})
    Tag = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#Tag', name: 'Tag', traits: {"smithy.api#sensitive" => {}})
    TagExceptionMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspacesweb#TagExceptionMessage', name: 'TagExceptionMessage')
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspacesweb#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$", "smithy.api#sensitive" => {}})
    TagKeyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workspacesweb#TagKeyList', name: 'TagKeyList', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workspacesweb#TagList', name: 'TagList', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#TagResourceRequest', name: 'TagResourceRequest')
    TagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#TagResourceResponse', name: 'TagResourceResponse')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspacesweb#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$", "smithy.api#sensitive" => {}})
    ThrottlingException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    Timestamp = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.workspacesweb#Timestamp', name: 'Timestamp')
    TooManyTagsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#TooManyTagsException', name: 'TooManyTagsException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ToolbarConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#ToolbarConfiguration', name: 'ToolbarConfiguration')
    ToolbarItem = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspacesweb#ToolbarItem', name: 'ToolbarItem', traits: {"smithy.api#enum" => [{"value" => "Windows", "name" => "WINDOWS"}, {"value" => "DualMonitor", "name" => "DUAL_MONITOR"}, {"value" => "FullScreen", "name" => "FULL_SCREEN"}, {"value" => "Webcam", "name" => "WEBCAM"}, {"value" => "Microphone", "name" => "MICROPHONE"}]})
    ToolbarType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspacesweb#ToolbarType', name: 'ToolbarType', traits: {"smithy.api#enum" => [{"value" => "Floating", "name" => "FLOATING"}, {"value" => "Docked", "name" => "DOCKED"}]})
    TrustStore = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#TrustStore', name: 'TrustStore')
    TrustStoreSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#TrustStoreSummary', name: 'TrustStoreSummary')
    TrustStoreSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workspacesweb#TrustStoreSummaryList', name: 'TrustStoreSummaryList')
    UntagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#UntagResourceRequest', name: 'UntagResourceRequest')
    UntagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#UntagResourceResponse', name: 'UntagResourceResponse')
    UpdateBrowserSettingsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#UpdateBrowserSettingsRequest', name: 'UpdateBrowserSettingsRequest')
    UpdateBrowserSettingsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#UpdateBrowserSettingsResponse', name: 'UpdateBrowserSettingsResponse')
    UpdateDataProtectionSettingsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#UpdateDataProtectionSettingsRequest', name: 'UpdateDataProtectionSettingsRequest')
    UpdateDataProtectionSettingsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#UpdateDataProtectionSettingsResponse', name: 'UpdateDataProtectionSettingsResponse')
    UpdateIdentityProviderRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#UpdateIdentityProviderRequest', name: 'UpdateIdentityProviderRequest')
    UpdateIdentityProviderResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#UpdateIdentityProviderResponse', name: 'UpdateIdentityProviderResponse')
    UpdateIpAccessSettingsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#UpdateIpAccessSettingsRequest', name: 'UpdateIpAccessSettingsRequest')
    UpdateIpAccessSettingsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#UpdateIpAccessSettingsResponse', name: 'UpdateIpAccessSettingsResponse')
    UpdateNetworkSettingsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#UpdateNetworkSettingsRequest', name: 'UpdateNetworkSettingsRequest')
    UpdateNetworkSettingsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#UpdateNetworkSettingsResponse', name: 'UpdateNetworkSettingsResponse')
    UpdatePortalRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#UpdatePortalRequest', name: 'UpdatePortalRequest')
    UpdatePortalResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#UpdatePortalResponse', name: 'UpdatePortalResponse')
    UpdateSessionLoggerRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#UpdateSessionLoggerRequest', name: 'UpdateSessionLoggerRequest', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.workspacesweb#SessionLoggerResource"}]})
    UpdateSessionLoggerResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#UpdateSessionLoggerResponse', name: 'UpdateSessionLoggerResponse')
    UpdateTrustStoreRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#UpdateTrustStoreRequest', name: 'UpdateTrustStoreRequest')
    UpdateTrustStoreResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#UpdateTrustStoreResponse', name: 'UpdateTrustStoreResponse')
    UpdateUserAccessLoggingSettingsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#UpdateUserAccessLoggingSettingsRequest', name: 'UpdateUserAccessLoggingSettingsRequest')
    UpdateUserAccessLoggingSettingsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#UpdateUserAccessLoggingSettingsResponse', name: 'UpdateUserAccessLoggingSettingsResponse')
    UpdateUserSettingsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#UpdateUserSettingsRequest', name: 'UpdateUserSettingsRequest')
    UpdateUserSettingsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#UpdateUserSettingsResponse', name: 'UpdateUserSettingsResponse')
    UserAccessLoggingSettings = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#UserAccessLoggingSettings', name: 'UserAccessLoggingSettings')
    UserAccessLoggingSettingsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workspacesweb#UserAccessLoggingSettingsList', name: 'UserAccessLoggingSettingsList')
    UserAccessLoggingSettingsSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#UserAccessLoggingSettingsSummary', name: 'UserAccessLoggingSettingsSummary')
    UserSettings = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#UserSettings', name: 'UserSettings')
    UserSettingsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workspacesweb#UserSettingsList', name: 'UserSettingsList')
    UserSettingsSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#UserSettingsSummary', name: 'UserSettingsSummary')
    Username = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspacesweb#Username', name: 'Username', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[\\s\\S]*$", "smithy.api#sensitive" => {}})
    ValidationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionField = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesweb#ValidationExceptionField', name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workspacesweb#ValidationExceptionFieldList', name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspacesweb#ValidationExceptionReason', name: 'ValidationExceptionReason', traits: {"smithy.api#enum" => [{"value" => "unknownOperation", "name" => "UNKNOWN_OPERATION"}, {"value" => "cannotParse", "name" => "CANNOT_PARSE"}, {"value" => "fieldValidationFailed", "name" => "FIELD_VALIDATION_FAILED"}, {"value" => "other", "name" => "OTHER"}]})
    VisualMode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspacesweb#VisualMode', name: 'VisualMode', traits: {"smithy.api#enum" => [{"value" => "Dark", "name" => "DARK"}, {"value" => "Light", "name" => "LIGHT"}]})
    VpcId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspacesweb#VpcId', name: 'VpcId', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^vpc-[0-9a-z]*$"})
    KeyArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspacesweb#keyArn', name: 'KeyArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:[\\w+=\\/,.@-]+:kms:[a-zA-Z0-9\\-]*:[a-zA-Z0-9]{1,12}:key\\/[a-zA-Z0-9-]+$"})

    AccessDeniedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    AccessDeniedException.type = Types::AccessDeniedException
    ArnList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ARN)
    AssociateBrowserSettingsRequest.add_member(:portal_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'portalArn', traits: {"smithy.api#documentation" => "<p>The ARN of the web portal.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateBrowserSettingsRequest.add_member(:browser_settings_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'browserSettingsArn', traits: {"aws.cloudformation#cfnMutability" => "full", "smithy.api#documentation" => "<p>The ARN of the browser settings.</p>", "smithy.api#httpQuery" => "browserSettingsArn", "smithy.api#required" => {}}))
    AssociateBrowserSettingsRequest.type = Types::AssociateBrowserSettingsRequest
    AssociateBrowserSettingsResponse.add_member(:portal_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'portalArn', traits: {"smithy.api#documentation" => "<p>The ARN of the web portal.</p>", "smithy.api#required" => {}}))
    AssociateBrowserSettingsResponse.add_member(:browser_settings_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'browserSettingsArn', traits: {"smithy.api#documentation" => "<p>The ARN of the browser settings.</p>", "smithy.api#required" => {}}))
    AssociateBrowserSettingsResponse.type = Types::AssociateBrowserSettingsResponse
    AssociateDataProtectionSettingsRequest.add_member(:portal_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'portalArn', traits: {"smithy.api#documentation" => "<p>The ARN of the web portal.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateDataProtectionSettingsRequest.add_member(:data_protection_settings_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'dataProtectionSettingsArn', traits: {"aws.cloudformation#cfnMutability" => "full", "smithy.api#documentation" => "<p>The ARN of the data protection settings.</p>", "smithy.api#httpQuery" => "dataProtectionSettingsArn", "smithy.api#required" => {}}))
    AssociateDataProtectionSettingsRequest.type = Types::AssociateDataProtectionSettingsRequest
    AssociateDataProtectionSettingsResponse.add_member(:portal_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'portalArn', traits: {"smithy.api#documentation" => "<p>The ARN of the web portal.</p>", "smithy.api#required" => {}}))
    AssociateDataProtectionSettingsResponse.add_member(:data_protection_settings_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'dataProtectionSettingsArn', traits: {"smithy.api#documentation" => "<p>The ARN of the data protection settings resource.</p>", "smithy.api#required" => {}}))
    AssociateDataProtectionSettingsResponse.type = Types::AssociateDataProtectionSettingsResponse
    AssociateIpAccessSettingsRequest.add_member(:portal_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'portalArn', traits: {"smithy.api#documentation" => "<p>The ARN of the web portal.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateIpAccessSettingsRequest.add_member(:ip_access_settings_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'ipAccessSettingsArn', traits: {"aws.cloudformation#cfnMutability" => "full", "smithy.api#documentation" => "<p>The ARN of the IP access settings.</p>", "smithy.api#httpQuery" => "ipAccessSettingsArn", "smithy.api#required" => {}}))
    AssociateIpAccessSettingsRequest.type = Types::AssociateIpAccessSettingsRequest
    AssociateIpAccessSettingsResponse.add_member(:portal_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'portalArn', traits: {"smithy.api#documentation" => "<p>The ARN of the web portal.</p>", "smithy.api#required" => {}}))
    AssociateIpAccessSettingsResponse.add_member(:ip_access_settings_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'ipAccessSettingsArn', traits: {"smithy.api#documentation" => "<p>The ARN of the IP access settings resource.</p>", "smithy.api#required" => {}}))
    AssociateIpAccessSettingsResponse.type = Types::AssociateIpAccessSettingsResponse
    AssociateNetworkSettingsRequest.add_member(:portal_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'portalArn', traits: {"smithy.api#documentation" => "<p>The ARN of the web portal.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateNetworkSettingsRequest.add_member(:network_settings_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'networkSettingsArn', traits: {"aws.cloudformation#cfnMutability" => "full", "smithy.api#documentation" => "<p>The ARN of the network settings.</p>", "smithy.api#httpQuery" => "networkSettingsArn", "smithy.api#required" => {}}))
    AssociateNetworkSettingsRequest.type = Types::AssociateNetworkSettingsRequest
    AssociateNetworkSettingsResponse.add_member(:portal_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'portalArn', traits: {"smithy.api#documentation" => "<p>The ARN of the web portal.</p>", "smithy.api#required" => {}}))
    AssociateNetworkSettingsResponse.add_member(:network_settings_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'networkSettingsArn', traits: {"smithy.api#documentation" => "<p>The ARN of the network settings.</p>", "smithy.api#required" => {}}))
    AssociateNetworkSettingsResponse.type = Types::AssociateNetworkSettingsResponse
    AssociateSessionLoggerRequest.add_member(:portal_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'portalArn', traits: {"smithy.api#documentation" => "<p>The ARN of the portal to associate to the session logger ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateSessionLoggerRequest.add_member(:session_logger_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'sessionLoggerArn', traits: {"aws.cloudformation#cfnMutability" => "full", "smithy.api#documentation" => "<p>The ARN of the session logger to associate to the portal ARN.</p>", "smithy.api#httpQuery" => "sessionLoggerArn", "smithy.api#required" => {}}))
    AssociateSessionLoggerRequest.type = Types::AssociateSessionLoggerRequest
    AssociateSessionLoggerResponse.add_member(:portal_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'portalArn', traits: {"smithy.api#documentation" => "<p>The ARN of the portal.</p>", "smithy.api#required" => {}}))
    AssociateSessionLoggerResponse.add_member(:session_logger_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'sessionLoggerArn', traits: {"smithy.api#documentation" => "<p>The ARN of the session logger.</p>", "smithy.api#required" => {}}))
    AssociateSessionLoggerResponse.type = Types::AssociateSessionLoggerResponse
    AssociateTrustStoreRequest.add_member(:portal_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'portalArn', traits: {"smithy.api#documentation" => "<p>The ARN of the web portal.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateTrustStoreRequest.add_member(:trust_store_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'trustStoreArn', traits: {"aws.cloudformation#cfnMutability" => "full", "smithy.api#documentation" => "<p>The ARN of the trust store.</p>", "smithy.api#httpQuery" => "trustStoreArn", "smithy.api#required" => {}}))
    AssociateTrustStoreRequest.type = Types::AssociateTrustStoreRequest
    AssociateTrustStoreResponse.add_member(:portal_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'portalArn', traits: {"smithy.api#documentation" => "<p>The ARN of the web portal.</p>", "smithy.api#required" => {}}))
    AssociateTrustStoreResponse.add_member(:trust_store_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'trustStoreArn', traits: {"smithy.api#documentation" => "<p>The ARN of the trust store.</p>", "smithy.api#required" => {}}))
    AssociateTrustStoreResponse.type = Types::AssociateTrustStoreResponse
    AssociateUserAccessLoggingSettingsRequest.add_member(:portal_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'portalArn', traits: {"smithy.api#documentation" => "<p>The ARN of the web portal.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateUserAccessLoggingSettingsRequest.add_member(:user_access_logging_settings_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'userAccessLoggingSettingsArn', traits: {"aws.cloudformation#cfnMutability" => "full", "smithy.api#documentation" => "<p>The ARN of the user access logging settings.</p>", "smithy.api#httpQuery" => "userAccessLoggingSettingsArn", "smithy.api#required" => {}}))
    AssociateUserAccessLoggingSettingsRequest.type = Types::AssociateUserAccessLoggingSettingsRequest
    AssociateUserAccessLoggingSettingsResponse.add_member(:portal_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'portalArn', traits: {"smithy.api#documentation" => "<p>The ARN of the web portal.</p>", "smithy.api#required" => {}}))
    AssociateUserAccessLoggingSettingsResponse.add_member(:user_access_logging_settings_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'userAccessLoggingSettingsArn', traits: {"smithy.api#documentation" => "<p>The ARN of the user access logging settings.</p>", "smithy.api#required" => {}}))
    AssociateUserAccessLoggingSettingsResponse.type = Types::AssociateUserAccessLoggingSettingsResponse
    AssociateUserSettingsRequest.add_member(:portal_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'portalArn', traits: {"smithy.api#documentation" => "<p>The ARN of the web portal.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateUserSettingsRequest.add_member(:user_settings_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'userSettingsArn', traits: {"aws.cloudformation#cfnMutability" => "full", "smithy.api#documentation" => "<p>The ARN of the user settings.</p>", "smithy.api#httpQuery" => "userSettingsArn", "smithy.api#required" => {}}))
    AssociateUserSettingsRequest.type = Types::AssociateUserSettingsRequest
    AssociateUserSettingsResponse.add_member(:portal_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'portalArn', traits: {"smithy.api#documentation" => "<p>The ARN of the web portal.</p>", "smithy.api#required" => {}}))
    AssociateUserSettingsResponse.add_member(:user_settings_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'userSettingsArn', traits: {"smithy.api#documentation" => "<p>The ARN of the user settings.</p>", "smithy.api#required" => {}}))
    AssociateUserSettingsResponse.type = Types::AssociateUserSettingsResponse
    BrowserSettings.add_member(:browser_settings_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'browserSettingsArn', traits: {"smithy.api#documentation" => "<p>The ARN of the browser settings.</p>", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "browserSettingsArn"}))
    BrowserSettings.add_member(:associated_portal_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: ArnList, location_name: 'associatedPortalArns', traits: {"smithy.api#documentation" => "<p>A list of web portal ARNs that this browser settings is associated with.</p>"}))
    BrowserSettings.add_member(:browser_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: BrowserPolicy, location_name: 'browserPolicy', traits: {"smithy.api#documentation" => "<p>A JSON string containing Chrome Enterprise policies that will be applied to all\n         streaming sessions.</p>"}))
    BrowserSettings.add_member(:customer_managed_key, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyArn, location_name: 'customerManagedKey', traits: {"smithy.api#documentation" => "<p>The customer managed key used to encrypt sensitive information in the browser\n         settings.</p>"}))
    BrowserSettings.add_member(:additional_encryption_context, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionContextMap, location_name: 'additionalEncryptionContext', traits: {"smithy.api#documentation" => "<p>The additional encryption context of the browser settings.</p>"}))
    BrowserSettings.type = Types::BrowserSettings
    BrowserSettingsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BrowserSettingsSummary)
    BrowserSettingsSummary.add_member(:browser_settings_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'browserSettingsArn', traits: {"smithy.api#documentation" => "<p>The ARN of the browser settings.</p>", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "browserSettingsArn"}))
    BrowserSettingsSummary.type = Types::BrowserSettingsSummary
    Certificate.add_member(:thumbprint, Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateThumbprint, location_name: 'thumbprint', traits: {"smithy.api#documentation" => "<p>A hexadecimal identifier for the certificate.</p>"}))
    Certificate.add_member(:subject, Smithy::Schema::Shapes::ShapeRef.new(shape: CertificatePrincipal, location_name: 'subject', traits: {"smithy.api#documentation" => "<p>The entity the certificate belongs to.</p>"}))
    Certificate.add_member(:issuer, Smithy::Schema::Shapes::ShapeRef.new(shape: CertificatePrincipal, location_name: 'issuer', traits: {"smithy.api#documentation" => "<p>The entity that issued the certificate.</p>"}))
    Certificate.add_member(:not_valid_before, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'notValidBefore', traits: {"smithy.api#documentation" => "<p>The certificate is not valid before this date.</p>"}))
    Certificate.add_member(:not_valid_after, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'notValidAfter', traits: {"smithy.api#documentation" => "<p>The certificate is not valid after this date.</p>"}))
    Certificate.add_member(:body, Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateAuthorityBody, location_name: 'body', traits: {"smithy.api#documentation" => "<p>The body of the certificate.</p>"}))
    Certificate.type = Types::Certificate
    CertificateList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateAuthorityBody)
    CertificateSummary.add_member(:thumbprint, Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateThumbprint, location_name: 'thumbprint', traits: {"smithy.api#documentation" => "<p>A hexadecimal identifier for the certificate.</p>"}))
    CertificateSummary.add_member(:subject, Smithy::Schema::Shapes::ShapeRef.new(shape: CertificatePrincipal, location_name: 'subject', traits: {"smithy.api#documentation" => "<p>The entity the certificate belongs to.</p>"}))
    CertificateSummary.add_member(:issuer, Smithy::Schema::Shapes::ShapeRef.new(shape: CertificatePrincipal, location_name: 'issuer', traits: {"smithy.api#documentation" => "<p>The entity that issued the certificate.</p>"}))
    CertificateSummary.add_member(:not_valid_before, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'notValidBefore', traits: {"smithy.api#documentation" => "<p>The certificate is not valid before this date.</p>"}))
    CertificateSummary.add_member(:not_valid_after, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'notValidAfter', traits: {"smithy.api#documentation" => "<p>The certificate is not valid after this date.</p>"}))
    CertificateSummary.type = Types::CertificateSummary
    CertificateSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateSummary)
    CertificateThumbprintList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateThumbprint)
    ConflictException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ConflictException.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'resourceId', traits: {"smithy.api#documentation" => "<p>Identifier of the resource affected.</p>"}))
    ConflictException.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'resourceType', traits: {"smithy.api#documentation" => "<p>Type of the resource affected.</p>"}))
    ConflictException.type = Types::ConflictException
    CookieSpecification.add_member(:domain, Smithy::Schema::Shapes::ShapeRef.new(shape: CookieDomain, location_name: 'domain', traits: {"smithy.api#documentation" => "<p>The domain of the cookie.</p>", "smithy.api#required" => {}}))
    CookieSpecification.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: CookieName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the cookie.</p>"}))
    CookieSpecification.add_member(:path, Smithy::Schema::Shapes::ShapeRef.new(shape: CookiePath, location_name: 'path', traits: {"smithy.api#documentation" => "<p>The path of the cookie.</p>"}))
    CookieSpecification.type = Types::CookieSpecification
    CookieSpecifications.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CookieSpecification)
    CookieSynchronizationConfiguration.add_member(:allowlist, Smithy::Schema::Shapes::ShapeRef.new(shape: CookieSpecifications, location_name: 'allowlist', traits: {"smithy.api#documentation" => "<p>The list of cookie specifications that are allowed to be synchronized to the remote\n         browser.</p>", "smithy.api#required" => {}}))
    CookieSynchronizationConfiguration.add_member(:blocklist, Smithy::Schema::Shapes::ShapeRef.new(shape: CookieSpecifications, location_name: 'blocklist', traits: {"smithy.api#documentation" => "<p>The list of cookie specifications that are blocked from being synchronized to the remote\n         browser.</p>"}))
    CookieSynchronizationConfiguration.type = Types::CookieSynchronizationConfiguration
    CreateBrowserSettingsRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags', traits: {"aws.cloudformation#cfnMutability" => "full", "smithy.api#documentation" => "<p>The tags to add to the browser settings resource. A tag is a key-value pair.</p>"}))
    CreateBrowserSettingsRequest.add_member(:customer_managed_key, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyArn, location_name: 'customerManagedKey', traits: {"smithy.api#documentation" => "<p>The custom managed key of the browser settings.</p>"}))
    CreateBrowserSettingsRequest.add_member(:additional_encryption_context, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionContextMap, location_name: 'additionalEncryptionContext', traits: {"smithy.api#documentation" => "<p>Additional encryption context of the browser settings.</p>"}))
    CreateBrowserSettingsRequest.add_member(:browser_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: BrowserPolicy, location_name: 'browserPolicy', traits: {"smithy.api#documentation" => "<p>A JSON string containing Chrome Enterprise policies that will be applied to all\n         streaming sessions.</p>", "smithy.api#required" => {}}))
    CreateBrowserSettingsRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the\n         request. Idempotency ensures that an API request completes only once. With an idempotent\n         request, if the original request completes successfully, subsequent retries with the same\n         client token returns the result from the original successful request.</p>\n         <p>If you do not specify a client token, one is automatically generated by the Amazon Web Services SDK.\n      </p>", "smithy.api#idempotencyToken" => {}}))
    CreateBrowserSettingsRequest.type = Types::CreateBrowserSettingsRequest
    CreateBrowserSettingsResponse.add_member(:browser_settings_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'browserSettingsArn', traits: {"smithy.api#documentation" => "<p>The ARN of the browser settings.</p>", "smithy.api#required" => {}}))
    CreateBrowserSettingsResponse.type = Types::CreateBrowserSettingsResponse
    CreateDataProtectionSettingsRequest.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DisplayNameSafe, location_name: 'displayName', traits: {"smithy.api#documentation" => "<p>The display name of the data protection settings.</p>"}))
    CreateDataProtectionSettingsRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: DescriptionSafe, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the data protection settings.</p>"}))
    CreateDataProtectionSettingsRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags', traits: {"aws.cloudformation#cfnMutability" => "full", "smithy.api#documentation" => "<p>The tags to add to the data protection settings resource. A tag is a key-value pair.</p>"}))
    CreateDataProtectionSettingsRequest.add_member(:customer_managed_key, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyArn, location_name: 'customerManagedKey', traits: {"smithy.api#documentation" => "<p>The custom managed key of the data protection settings.</p>"}))
    CreateDataProtectionSettingsRequest.add_member(:additional_encryption_context, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionContextMap, location_name: 'additionalEncryptionContext', traits: {"smithy.api#documentation" => "<p>Additional encryption context of the data protection settings.</p>"}))
    CreateDataProtectionSettingsRequest.add_member(:inline_redaction_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: InlineRedactionConfiguration, location_name: 'inlineRedactionConfiguration', traits: {"smithy.api#documentation" => "<p>The inline redaction configuration of the data protection settings that will be applied to all sessions.</p>"}))
    CreateDataProtectionSettingsRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the\n         request. Idempotency ensures that an API request completes only once. With an idempotent\n         request, if the original request completes successfully, subsequent retries with the same\n         client token returns the result from the original successful request. </p>\n         <p>If you do not specify a client token, one is automatically generated by the Amazon Web Services\n         SDK.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateDataProtectionSettingsRequest.type = Types::CreateDataProtectionSettingsRequest
    CreateDataProtectionSettingsResponse.add_member(:data_protection_settings_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'dataProtectionSettingsArn', traits: {"smithy.api#documentation" => "<p>The ARN of the data protection settings resource.</p>", "smithy.api#required" => {}}))
    CreateDataProtectionSettingsResponse.type = Types::CreateDataProtectionSettingsResponse
    CreateIdentityProviderRequest.add_member(:portal_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'portalArn', traits: {"smithy.api#documentation" => "<p>The ARN of the web portal.</p>", "smithy.api#required" => {}}))
    CreateIdentityProviderRequest.add_member(:identity_provider_name, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityProviderName, location_name: 'identityProviderName', traits: {"smithy.api#documentation" => "<p>The identity provider name.</p>", "smithy.api#required" => {}}))
    CreateIdentityProviderRequest.add_member(:identity_provider_type, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityProviderType, location_name: 'identityProviderType', traits: {"smithy.api#documentation" => "<p>The identity provider type.</p>", "smithy.api#required" => {}}))
    CreateIdentityProviderRequest.add_member(:identity_provider_details, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityProviderDetails, location_name: 'identityProviderDetails', traits: {"smithy.api#documentation" => "<p>The identity provider details. The following list describes the provider detail keys for\n         each identity provider type. </p>\n         <ul>\n            <li>\n               <p>For Google and Login with Amazon:</p>\n               <ul>\n                  <li>\n                     <p>\n                        <code>client_id</code>\n                     </p>\n                  </li>\n                  <li>\n                     <p>\n                        <code>client_secret</code>\n                     </p>\n                  </li>\n                  <li>\n                     <p>\n                        <code>authorize_scopes</code>\n                     </p>\n                  </li>\n               </ul>\n            </li>\n            <li>\n               <p>For Facebook:</p>\n               <ul>\n                  <li>\n                     <p>\n                        <code>client_id</code>\n                     </p>\n                  </li>\n                  <li>\n                     <p>\n                        <code>client_secret</code>\n                     </p>\n                  </li>\n                  <li>\n                     <p>\n                        <code>authorize_scopes</code>\n                     </p>\n                  </li>\n                  <li>\n                     <p>\n                        <code>api_version</code>\n                     </p>\n                  </li>\n               </ul>\n            </li>\n            <li>\n               <p>For Sign in with Apple:</p>\n               <ul>\n                  <li>\n                     <p>\n                        <code>client_id</code>\n                     </p>\n                  </li>\n                  <li>\n                     <p>\n                        <code>team_id</code>\n                     </p>\n                  </li>\n                  <li>\n                     <p>\n                        <code>key_id</code>\n                     </p>\n                  </li>\n                  <li>\n                     <p>\n                        <code>private_key</code>\n                     </p>\n                  </li>\n                  <li>\n                     <p>\n                        <code>authorize_scopes</code>\n                     </p>\n                  </li>\n               </ul>\n            </li>\n            <li>\n               <p>For OIDC providers:</p>\n               <ul>\n                  <li>\n                     <p>\n                        <code>client_id</code>\n                     </p>\n                  </li>\n                  <li>\n                     <p>\n                        <code>client_secret</code>\n                     </p>\n                  </li>\n                  <li>\n                     <p>\n                        <code>attributes_request_method</code>\n                     </p>\n                  </li>\n                  <li>\n                     <p>\n                        <code>oidc_issuer</code>\n                     </p>\n                  </li>\n                  <li>\n                     <p>\n                        <code>authorize_scopes</code>\n                     </p>\n                  </li>\n                  <li>\n                     <p>\n                        <code>authorize_url</code>\n                        <i>if not available from discovery URL specified by\n                           <code>oidc_issuer</code> key</i>\n                     </p>\n                  </li>\n                  <li>\n                     <p>\n                        <code>token_url</code>\n                        <i>if not available from discovery URL specified by\n                           <code>oidc_issuer</code> key</i>\n                     </p>\n                  </li>\n                  <li>\n                     <p>\n                        <code>attributes_url</code>\n                        <i>if not available from discovery URL specified by\n                           <code>oidc_issuer</code> key</i>\n                     </p>\n                  </li>\n                  <li>\n                     <p>\n                        <code>jwks_uri</code>\n                        <i>if not available from discovery URL specified by\n                           <code>oidc_issuer</code> key</i>\n                     </p>\n                  </li>\n               </ul>\n            </li>\n            <li>\n               <p>For SAML providers:</p>\n               <ul>\n                  <li>\n                     <p>\n                        <code>MetadataFile</code> OR <code>MetadataURL</code>\n                     </p>\n                  </li>\n                  <li>\n                     <p>\n                        <code>IDPSignout</code> (boolean) <i>optional</i>\n                     </p>\n                  </li>\n                  <li>\n                     <p>\n                        <code>IDPInit</code> (boolean) <i>optional</i>\n                     </p>\n                  </li>\n                  <li>\n                     <p>\n                        <code>RequestSigningAlgorithm</code> (string) <i>optional</i>\n                     - Only accepts <code>rsa-sha256</code>\n                     </p>\n                  </li>\n                  <li>\n                     <p>\n                        <code>EncryptedResponses</code> (boolean) <i>optional</i>\n                     </p>\n                  </li>\n               </ul>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    CreateIdentityProviderRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the\n         request. Idempotency ensures that an API request completes only once. With an idempotent\n         request, if the original request completes successfully, subsequent retries with the same\n         client token returns the result from the original successful request.</p>\n         <p>If you do not specify a client token, one is automatically generated by the Amazon Web Services\n         SDK.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateIdentityProviderRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags to add to the identity provider resource. A tag is a key-value pair.</p>"}))
    CreateIdentityProviderRequest.type = Types::CreateIdentityProviderRequest
    CreateIdentityProviderResponse.add_member(:identity_provider_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SubresourceARN, location_name: 'identityProviderArn', traits: {"smithy.api#documentation" => "<p>The ARN of the identity provider.</p>", "smithy.api#required" => {}}))
    CreateIdentityProviderResponse.type = Types::CreateIdentityProviderResponse
    CreateIpAccessSettingsRequest.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DisplayName, location_name: 'displayName', traits: {"smithy.api#documentation" => "<p>The display name of the IP access settings.</p>"}))
    CreateIpAccessSettingsRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the IP access settings.</p>"}))
    CreateIpAccessSettingsRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags', traits: {"aws.cloudformation#cfnMutability" => "full", "smithy.api#documentation" => "<p>The tags to add to the IP access settings resource. A tag is a key-value pair.</p>"}))
    CreateIpAccessSettingsRequest.add_member(:customer_managed_key, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyArn, location_name: 'customerManagedKey', traits: {"smithy.api#documentation" => "<p>The custom managed key of the IP access settings.</p>"}))
    CreateIpAccessSettingsRequest.add_member(:additional_encryption_context, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionContextMap, location_name: 'additionalEncryptionContext', traits: {"smithy.api#documentation" => "<p>Additional encryption context of the IP access settings.</p>"}))
    CreateIpAccessSettingsRequest.add_member(:ip_rules, Smithy::Schema::Shapes::ShapeRef.new(shape: IpRuleList, location_name: 'ipRules', traits: {"smithy.api#documentation" => "<p>The IP rules of the IP access settings.</p>", "smithy.api#required" => {}}))
    CreateIpAccessSettingsRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the\n         request. Idempotency ensures that an API request completes only once. With an idempotent\n         request, if the original request completes successfully, subsequent retries with the same\n         client token returns the result from the original successful request. </p>\n         <p>If you do not specify a client token, one is automatically generated by the Amazon Web Services\n         SDK.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateIpAccessSettingsRequest.type = Types::CreateIpAccessSettingsRequest
    CreateIpAccessSettingsResponse.add_member(:ip_access_settings_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'ipAccessSettingsArn', traits: {"smithy.api#documentation" => "<p>The ARN of the IP access settings resource.</p>", "smithy.api#required" => {}}))
    CreateIpAccessSettingsResponse.type = Types::CreateIpAccessSettingsResponse
    CreateNetworkSettingsRequest.add_member(:vpc_id, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcId, location_name: 'vpcId', traits: {"smithy.api#documentation" => "<p>The VPC that streaming instances will connect to.</p>", "smithy.api#required" => {}}))
    CreateNetworkSettingsRequest.add_member(:subnet_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetIdList, location_name: 'subnetIds', traits: {"smithy.api#documentation" => "<p>The subnets in which network interfaces are created to connect streaming instances to\n         your VPC. At least two of these subnets must be in different availability zones.</p>", "smithy.api#required" => {}}))
    CreateNetworkSettingsRequest.add_member(:security_group_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupIdList, location_name: 'securityGroupIds', traits: {"smithy.api#documentation" => "<p>One or more security groups used to control access from streaming instances to your\n         VPC.</p>", "smithy.api#required" => {}}))
    CreateNetworkSettingsRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags', traits: {"aws.cloudformation#cfnMutability" => "full", "smithy.api#documentation" => "<p>The tags to add to the network settings resource. A tag is a key-value pair.</p>"}))
    CreateNetworkSettingsRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the\n         request. Idempotency ensures that an API request completes only once. With an idempotent\n         request, if the original request completes successfully, subsequent retries with the same\n         client token returns the result from the original successful request. </p>\n         <p>If you do not specify a client token, one is automatically generated by the Amazon Web Services\n         SDK.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateNetworkSettingsRequest.type = Types::CreateNetworkSettingsRequest
    CreateNetworkSettingsResponse.add_member(:network_settings_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'networkSettingsArn', traits: {"smithy.api#documentation" => "<p>The ARN of the network settings.</p>", "smithy.api#required" => {}}))
    CreateNetworkSettingsResponse.type = Types::CreateNetworkSettingsResponse
    CreatePortalRequest.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DisplayName, location_name: 'displayName', traits: {"smithy.api#documentation" => "<p>The name of the web portal. This is not visible to users who log into the web\n         portal.</p>"}))
    CreatePortalRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags', traits: {"aws.cloudformation#cfnMutability" => "full", "smithy.api#documentation" => "<p>The tags to add to the web portal. A tag is a key-value pair.</p>"}))
    CreatePortalRequest.add_member(:customer_managed_key, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyArn, location_name: 'customerManagedKey', traits: {"smithy.api#documentation" => "<p>The customer managed key of the web portal.</p>"}))
    CreatePortalRequest.add_member(:additional_encryption_context, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionContextMap, location_name: 'additionalEncryptionContext', traits: {"smithy.api#documentation" => "<p>The additional encryption context of the portal.</p>"}))
    CreatePortalRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the\n         request. Idempotency ensures that an API request completes only once. With an idempotent\n         request, if the original request completes successfully, subsequent retries with the same\n         client token returns the result from the original successful request. </p>\n         <p>If you do not specify a client token, one is automatically generated by the Amazon Web Services\n         SDK.</p>", "smithy.api#idempotencyToken" => {}}))
    CreatePortalRequest.add_member(:authentication_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationType, location_name: 'authenticationType', traits: {"smithy.api#documentation" => "<p>The type of authentication integration points used when signing into the web portal.\n         Defaults to <code>Standard</code>.</p>\n         <p>\n            <code>Standard</code> web portals are authenticated directly through your identity\n         provider. You need to call <code>CreateIdentityProvider</code> to integrate your identity\n         provider with your web portal. User and group access to your web portal is controlled\n         through your identity provider.</p>\n         <p>\n            <code>IAM Identity Center</code> web portals are authenticated through IAM Identity Center. Identity sources\n         (including external identity provider integration), plus user and group access to your web\n         portal, can be configured in the IAM Identity Center.</p>"}))
    CreatePortalRequest.add_member(:instance_type, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceType, location_name: 'instanceType', traits: {"smithy.api#documentation" => "<p>The type and resources of the underlying instance.</p>"}))
    CreatePortalRequest.add_member(:max_concurrent_sessions, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxConcurrentSessions, location_name: 'maxConcurrentSessions', traits: {"smithy.api#documentation" => "<p>The maximum number of concurrent sessions for the portal.</p>"}))
    CreatePortalRequest.type = Types::CreatePortalRequest
    CreatePortalResponse.add_member(:portal_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'portalArn', traits: {"smithy.api#documentation" => "<p>The ARN of the web portal.</p>", "smithy.api#required" => {}}))
    CreatePortalResponse.add_member(:portal_endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: PortalEndpoint, location_name: 'portalEndpoint', traits: {"smithy.api#documentation" => "<p>The endpoint URL of the web portal that users access in order to start streaming\n         sessions.</p>", "smithy.api#required" => {}}))
    CreatePortalResponse.type = Types::CreatePortalResponse
    CreateSessionLoggerRequest.add_member(:event_filter, Smithy::Schema::Shapes::ShapeRef.new(shape: EventFilter, location_name: 'eventFilter', traits: {"smithy.api#documentation" => "<p>The filter that specifies the events to monitor.</p>", "smithy.api#required" => {}}))
    CreateSessionLoggerRequest.add_member(:log_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: LogConfiguration, location_name: 'logConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration that specifies where logs are delivered.</p>", "smithy.api#required" => {}}))
    CreateSessionLoggerRequest.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DisplayNameSafe, location_name: 'displayName', traits: {"smithy.api#documentation" => "<p>The human-readable display name for the session logger resource.</p>"}))
    CreateSessionLoggerRequest.add_member(:customer_managed_key, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyArn, location_name: 'customerManagedKey', traits: {"smithy.api#documentation" => "<p>The custom managed key of the session logger.</p>"}))
    CreateSessionLoggerRequest.add_member(:additional_encryption_context, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionContextMap, location_name: 'additionalEncryptionContext', traits: {"smithy.api#documentation" => "<p>The additional encryption context of the session logger.</p>"}))
    CreateSessionLoggerRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags to add to the session logger.</p>"}))
    CreateSessionLoggerRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. Idempotency ensures that an API request completes only once. With an idempotent request, if the original request completes successfully, subsequent retries with the same client token returns the result from the original successful request. If you do not specify a client token, one is automatically generated by the AWS SDK.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateSessionLoggerRequest.type = Types::CreateSessionLoggerRequest
    CreateSessionLoggerResponse.add_member(:session_logger_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'sessionLoggerArn', traits: {"smithy.api#documentation" => "<p>The ARN of the session logger.</p>", "smithy.api#required" => {}}))
    CreateSessionLoggerResponse.type = Types::CreateSessionLoggerResponse
    CreateTrustStoreRequest.add_member(:certificate_list, Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateList, location_name: 'certificateList', traits: {"smithy.api#documentation" => "<p>A list of CA certificates to be added to the trust store.</p>", "smithy.api#required" => {}}))
    CreateTrustStoreRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags', traits: {"aws.cloudformation#cfnMutability" => "full", "smithy.api#documentation" => "<p>The tags to add to the trust store. A tag is a key-value pair.</p>"}))
    CreateTrustStoreRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the\n         request. Idempotency ensures that an API request completes only once. With an idempotent\n         request, if the original request completes successfully, subsequent retries with the same\n         client token returns the result from the original successful request. </p>\n         <p>If you do not specify a client token, one is automatically generated by the Amazon Web Services\n         SDK.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateTrustStoreRequest.type = Types::CreateTrustStoreRequest
    CreateTrustStoreResponse.add_member(:trust_store_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'trustStoreArn', traits: {"smithy.api#documentation" => "<p>The ARN of the trust store.</p>", "smithy.api#required" => {}}))
    CreateTrustStoreResponse.type = Types::CreateTrustStoreResponse
    CreateUserAccessLoggingSettingsRequest.add_member(:kinesis_stream_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: KinesisStreamArn, location_name: 'kinesisStreamArn', traits: {"smithy.api#documentation" => "<p>The ARN of the Kinesis stream.</p>", "smithy.api#required" => {}}))
    CreateUserAccessLoggingSettingsRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags', traits: {"aws.cloudformation#cfnMutability" => "full", "smithy.api#documentation" => "<p>The tags to add to the user settings resource. A tag is a key-value pair.</p>"}))
    CreateUserAccessLoggingSettingsRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the\n         request. Idempotency ensures that an API request completes only once. With an idempotent\n         request, if the original request completes successfully, subsequent retries with the same\n         client token returns the result from the original successful request. </p>\n         <p>If you do not specify a client token, one is automatically generated by the Amazon Web Services\n         SDK.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateUserAccessLoggingSettingsRequest.type = Types::CreateUserAccessLoggingSettingsRequest
    CreateUserAccessLoggingSettingsResponse.add_member(:user_access_logging_settings_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'userAccessLoggingSettingsArn', traits: {"smithy.api#documentation" => "<p>The ARN of the user access logging settings.</p>", "smithy.api#required" => {}}))
    CreateUserAccessLoggingSettingsResponse.type = Types::CreateUserAccessLoggingSettingsResponse
    CreateUserSettingsRequest.add_member(:copy_allowed, Smithy::Schema::Shapes::ShapeRef.new(shape: EnabledType, location_name: 'copyAllowed', traits: {"smithy.api#documentation" => "<p>Specifies whether the user can copy text from the streaming session to the local\n         device.</p>", "smithy.api#required" => {}}))
    CreateUserSettingsRequest.add_member(:paste_allowed, Smithy::Schema::Shapes::ShapeRef.new(shape: EnabledType, location_name: 'pasteAllowed', traits: {"smithy.api#documentation" => "<p>Specifies whether the user can paste text from the local device to the streaming\n         session.</p>", "smithy.api#required" => {}}))
    CreateUserSettingsRequest.add_member(:download_allowed, Smithy::Schema::Shapes::ShapeRef.new(shape: EnabledType, location_name: 'downloadAllowed', traits: {"smithy.api#documentation" => "<p>Specifies whether the user can download files from the streaming session to the local\n         device.</p>", "smithy.api#required" => {}}))
    CreateUserSettingsRequest.add_member(:upload_allowed, Smithy::Schema::Shapes::ShapeRef.new(shape: EnabledType, location_name: 'uploadAllowed', traits: {"smithy.api#documentation" => "<p>Specifies whether the user can upload files from the local device to the streaming\n         session.</p>", "smithy.api#required" => {}}))
    CreateUserSettingsRequest.add_member(:print_allowed, Smithy::Schema::Shapes::ShapeRef.new(shape: EnabledType, location_name: 'printAllowed', traits: {"smithy.api#documentation" => "<p>Specifies whether the user can print to the local device.</p>", "smithy.api#required" => {}}))
    CreateUserSettingsRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags', traits: {"aws.cloudformation#cfnMutability" => "full", "smithy.api#documentation" => "<p>The tags to add to the user settings resource. A tag is a key-value pair.</p>"}))
    CreateUserSettingsRequest.add_member(:disconnect_timeout_in_minutes, Smithy::Schema::Shapes::ShapeRef.new(shape: DisconnectTimeoutInMinutes, location_name: 'disconnectTimeoutInMinutes', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>The amount of time that a streaming session remains active after users\n         disconnect.</p>"}))
    CreateUserSettingsRequest.add_member(:idle_disconnect_timeout_in_minutes, Smithy::Schema::Shapes::ShapeRef.new(shape: IdleDisconnectTimeoutInMinutes, location_name: 'idleDisconnectTimeoutInMinutes', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>The amount of time that users can be idle (inactive) before they are disconnected from\n         their streaming session and the disconnect timeout interval begins.</p>"}))
    CreateUserSettingsRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the\n         request. Idempotency ensures that an API request completes only once. With an idempotent\n         request, if the original request completes successfully, subsequent retries with the same\n         client token returns the result from the original successful request. </p>\n         <p>If you do not specify a client token, one is automatically generated by the Amazon Web Services\n         SDK.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateUserSettingsRequest.add_member(:cookie_synchronization_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: CookieSynchronizationConfiguration, location_name: 'cookieSynchronizationConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration that specifies which cookies should be synchronized from the end\n         user's local browser to the remote browser.</p>"}))
    CreateUserSettingsRequest.add_member(:customer_managed_key, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyArn, location_name: 'customerManagedKey', traits: {"smithy.api#documentation" => "<p>The customer managed key used to encrypt sensitive information in the user\n         settings.</p>"}))
    CreateUserSettingsRequest.add_member(:additional_encryption_context, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionContextMap, location_name: 'additionalEncryptionContext', traits: {"smithy.api#documentation" => "<p>The additional encryption context of the user settings.</p>"}))
    CreateUserSettingsRequest.add_member(:deep_link_allowed, Smithy::Schema::Shapes::ShapeRef.new(shape: EnabledType, location_name: 'deepLinkAllowed', traits: {"smithy.api#documentation" => "<p>Specifies whether the user can use deep links that open automatically when connecting to\n         a session.</p>"}))
    CreateUserSettingsRequest.add_member(:toolbar_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ToolbarConfiguration, location_name: 'toolbarConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration of the toolbar. This allows administrators to select the toolbar type and visual mode, set maximum display resolution for sessions, and choose which items are visible to end users during their sessions. If administrators do not modify these settings, end users retain control over their toolbar preferences.</p>"}))
    CreateUserSettingsRequest.type = Types::CreateUserSettingsRequest
    CreateUserSettingsResponse.add_member(:user_settings_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'userSettingsArn', traits: {"smithy.api#documentation" => "<p>The ARN of the user settings.</p>", "smithy.api#required" => {}}))
    CreateUserSettingsResponse.type = Types::CreateUserSettingsResponse
    CustomPattern.add_member(:pattern_name, Smithy::Schema::Shapes::ShapeRef.new(shape: PatternName, location_name: 'patternName', traits: {"smithy.api#documentation" => "<p>The pattern name for the custom pattern.</p>", "smithy.api#required" => {}}))
    CustomPattern.add_member(:pattern_regex, Smithy::Schema::Shapes::ShapeRef.new(shape: Regex, location_name: 'patternRegex', traits: {"smithy.api#documentation" => "<p>The pattern regex for the customer pattern. The format must follow JavaScript regex format. The pattern must be enclosed between slashes, and can have flags behind the second slash. For example: “/ab+c/gi”.</p>", "smithy.api#required" => {}}))
    CustomPattern.add_member(:pattern_description, Smithy::Schema::Shapes::ShapeRef.new(shape: DescriptionSafe, location_name: 'patternDescription', traits: {"smithy.api#documentation" => "<p>The pattern description for the customer pattern.</p>"}))
    CustomPattern.add_member(:keyword_regex, Smithy::Schema::Shapes::ShapeRef.new(shape: Regex, location_name: 'keywordRegex', traits: {"smithy.api#documentation" => "<p>The keyword regex for the customer pattern. After there is a match to the pattern regex, the keyword regex is used to search within the proximity of the match. If there is a keyword match, then the match is confirmed. If no keyword regex is provided, the pattern regex match will automatically be confirmed. The format must follow JavaScript regex format. The pattern must be enclosed between slashes, and can have flags behind the second slash. For example, “/ab+c/gi”</p>"}))
    CustomPattern.type = Types::CustomPattern
    DataProtectionSettings.add_member(:data_protection_settings_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'dataProtectionSettingsArn', traits: {"smithy.api#documentation" => "<p>The ARN of the data protection settings resource.</p>", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "dataProtectionSettingsArn"}))
    DataProtectionSettings.add_member(:inline_redaction_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: InlineRedactionConfiguration, location_name: 'inlineRedactionConfiguration', traits: {"smithy.api#documentation" => "<p>The inline redaction configuration for the data protection settings.</p>"}))
    DataProtectionSettings.add_member(:associated_portal_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: ArnList, location_name: 'associatedPortalArns', traits: {"smithy.api#documentation" => "<p>A list of web portal ARNs that this data protection settings resource is associated\n         with.</p>"}))
    DataProtectionSettings.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DisplayNameSafe, location_name: 'displayName', traits: {"smithy.api#documentation" => "<p>The display name of the data protection settings.</p>"}))
    DataProtectionSettings.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: DescriptionSafe, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the data protection settings.</p>"}))
    DataProtectionSettings.add_member(:creation_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'creationDate', traits: {"smithy.api#documentation" => "<p>The creation date timestamp of the data protection settings.</p>"}))
    DataProtectionSettings.add_member(:customer_managed_key, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyArn, location_name: 'customerManagedKey', traits: {"smithy.api#documentation" => "<p>The customer managed key used to encrypt sensitive information in the data protection\n         settings.</p>"}))
    DataProtectionSettings.add_member(:additional_encryption_context, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionContextMap, location_name: 'additionalEncryptionContext', traits: {"smithy.api#documentation" => "<p>The additional encryption context of the data protection settings.</p>"}))
    DataProtectionSettings.type = Types::DataProtectionSettings
    DataProtectionSettingsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DataProtectionSettingsSummary)
    DataProtectionSettingsSummary.add_member(:data_protection_settings_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'dataProtectionSettingsArn', traits: {"smithy.api#documentation" => "<p>The ARN of the data protection settings.</p>", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "dataProtectionSettingsArn"}))
    DataProtectionSettingsSummary.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DisplayNameSafe, location_name: 'displayName', traits: {"smithy.api#documentation" => "<p>The display name of the data protection settings.</p>"}))
    DataProtectionSettingsSummary.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: DescriptionSafe, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the data protection settings.</p>"}))
    DataProtectionSettingsSummary.add_member(:creation_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'creationDate', traits: {"smithy.api#documentation" => "<p>The creation date timestamp of the data protection settings.</p>"}))
    DataProtectionSettingsSummary.type = Types::DataProtectionSettingsSummary
    DeleteBrowserSettingsRequest.add_member(:browser_settings_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'browserSettingsArn', traits: {"smithy.api#documentation" => "<p>The ARN of the browser settings.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteBrowserSettingsRequest.type = Types::DeleteBrowserSettingsRequest
    DeleteBrowserSettingsResponse.type = Types::DeleteBrowserSettingsResponse
    DeleteDataProtectionSettingsRequest.add_member(:data_protection_settings_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'dataProtectionSettingsArn', traits: {"smithy.api#documentation" => "<p>The ARN of the data protection settings.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDataProtectionSettingsRequest.type = Types::DeleteDataProtectionSettingsRequest
    DeleteDataProtectionSettingsResponse.type = Types::DeleteDataProtectionSettingsResponse
    DeleteIdentityProviderRequest.add_member(:identity_provider_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SubresourceARN, location_name: 'identityProviderArn', traits: {"smithy.api#documentation" => "<p>The ARN of the identity provider.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteIdentityProviderRequest.type = Types::DeleteIdentityProviderRequest
    DeleteIdentityProviderResponse.type = Types::DeleteIdentityProviderResponse
    DeleteIpAccessSettingsRequest.add_member(:ip_access_settings_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'ipAccessSettingsArn', traits: {"smithy.api#documentation" => "<p>The ARN of the IP access settings.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteIpAccessSettingsRequest.type = Types::DeleteIpAccessSettingsRequest
    DeleteIpAccessSettingsResponse.type = Types::DeleteIpAccessSettingsResponse
    DeleteNetworkSettingsRequest.add_member(:network_settings_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'networkSettingsArn', traits: {"smithy.api#documentation" => "<p>The ARN of the network settings.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteNetworkSettingsRequest.type = Types::DeleteNetworkSettingsRequest
    DeleteNetworkSettingsResponse.type = Types::DeleteNetworkSettingsResponse
    DeletePortalRequest.add_member(:portal_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'portalArn', traits: {"smithy.api#documentation" => "<p>The ARN of the web portal.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeletePortalRequest.type = Types::DeletePortalRequest
    DeletePortalResponse.type = Types::DeletePortalResponse
    DeleteSessionLoggerRequest.add_member(:session_logger_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'sessionLoggerArn', traits: {"smithy.api#documentation" => "<p>The ARN of the session logger.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteSessionLoggerRequest.type = Types::DeleteSessionLoggerRequest
    DeleteSessionLoggerResponse.type = Types::DeleteSessionLoggerResponse
    DeleteTrustStoreRequest.add_member(:trust_store_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'trustStoreArn', traits: {"smithy.api#documentation" => "<p>The ARN of the trust store.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteTrustStoreRequest.type = Types::DeleteTrustStoreRequest
    DeleteTrustStoreResponse.type = Types::DeleteTrustStoreResponse
    DeleteUserAccessLoggingSettingsRequest.add_member(:user_access_logging_settings_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'userAccessLoggingSettingsArn', traits: {"smithy.api#documentation" => "<p>The ARN of the user access logging settings.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteUserAccessLoggingSettingsRequest.type = Types::DeleteUserAccessLoggingSettingsRequest
    DeleteUserAccessLoggingSettingsResponse.type = Types::DeleteUserAccessLoggingSettingsResponse
    DeleteUserSettingsRequest.add_member(:user_settings_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'userSettingsArn', traits: {"smithy.api#documentation" => "<p>The ARN of the user settings.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteUserSettingsRequest.type = Types::DeleteUserSettingsRequest
    DeleteUserSettingsResponse.type = Types::DeleteUserSettingsResponse
    DisassociateBrowserSettingsRequest.add_member(:portal_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'portalArn', traits: {"smithy.api#documentation" => "<p>The ARN of the web portal.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateBrowserSettingsRequest.type = Types::DisassociateBrowserSettingsRequest
    DisassociateBrowserSettingsResponse.type = Types::DisassociateBrowserSettingsResponse
    DisassociateDataProtectionSettingsRequest.add_member(:portal_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'portalArn', traits: {"smithy.api#documentation" => "<p>The ARN of the web portal.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateDataProtectionSettingsRequest.type = Types::DisassociateDataProtectionSettingsRequest
    DisassociateDataProtectionSettingsResponse.type = Types::DisassociateDataProtectionSettingsResponse
    DisassociateIpAccessSettingsRequest.add_member(:portal_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'portalArn', traits: {"smithy.api#documentation" => "<p>The ARN of the web portal.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateIpAccessSettingsRequest.type = Types::DisassociateIpAccessSettingsRequest
    DisassociateIpAccessSettingsResponse.type = Types::DisassociateIpAccessSettingsResponse
    DisassociateNetworkSettingsRequest.add_member(:portal_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'portalArn', traits: {"smithy.api#documentation" => "<p>The ARN of the web portal.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateNetworkSettingsRequest.type = Types::DisassociateNetworkSettingsRequest
    DisassociateNetworkSettingsResponse.type = Types::DisassociateNetworkSettingsResponse
    DisassociateSessionLoggerRequest.add_member(:portal_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'portalArn', traits: {"smithy.api#documentation" => "<p>The ARN of the portal to disassociate from the a session logger.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateSessionLoggerRequest.type = Types::DisassociateSessionLoggerRequest
    DisassociateSessionLoggerResponse.type = Types::DisassociateSessionLoggerResponse
    DisassociateTrustStoreRequest.add_member(:portal_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'portalArn', traits: {"smithy.api#documentation" => "<p>The ARN of the web portal.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateTrustStoreRequest.type = Types::DisassociateTrustStoreRequest
    DisassociateTrustStoreResponse.type = Types::DisassociateTrustStoreResponse
    DisassociateUserAccessLoggingSettingsRequest.add_member(:portal_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'portalArn', traits: {"smithy.api#documentation" => "<p>The ARN of the web portal.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateUserAccessLoggingSettingsRequest.type = Types::DisassociateUserAccessLoggingSettingsRequest
    DisassociateUserAccessLoggingSettingsResponse.type = Types::DisassociateUserAccessLoggingSettingsResponse
    DisassociateUserSettingsRequest.add_member(:portal_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'portalArn', traits: {"smithy.api#documentation" => "<p>The ARN of the web portal.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateUserSettingsRequest.type = Types::DisassociateUserSettingsRequest
    DisassociateUserSettingsResponse.type = Types::DisassociateUserSettingsResponse
    EncryptionContextMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: StringType)
    EncryptionContextMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: StringType)
    Event.add_member(:website_interact, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WEBSITE_INTERACT', traits: {"smithy.api#enumValue" => "WebsiteInteract"}))
    Event.add_member(:file_download_from_secure_browser_to_remote_disk, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FILE_DOWNLOAD_FROM_SECURE_BROWSER_TO_REMOTE_DISK', traits: {"smithy.api#enumValue" => "FileDownloadFromSecureBrowserToRemoteDisk"}))
    Event.add_member(:file_transfer_from_remote_to_local_disk, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FILE_TRANSFER_FROM_REMOTE_TO_LOCAL_DISK', traits: {"smithy.api#enumValue" => "FileTransferFromRemoteToLocalDisk"}))
    Event.add_member(:file_transfer_from_local_to_remote_disk, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FILE_TRANSFER_FROM_LOCAL_TO_REMOTE_DISK', traits: {"smithy.api#enumValue" => "FileTransferFromLocalToRemoteDisk"}))
    Event.add_member(:file_upload_from_remote_disk_to_secure_browser, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FILE_UPLOAD_FROM_REMOTE_DISK_TO_SECURE_BROWSER', traits: {"smithy.api#enumValue" => "FileUploadFromRemoteDiskToSecureBrowser"}))
    Event.add_member(:content_paste_to_website, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONTENT_PASTE_TO_WEBSITE', traits: {"smithy.api#enumValue" => "ContentPasteToWebsite"}))
    Event.add_member(:content_transfer_from_local_to_remote_clipboard, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONTENT_TRANSFER_FROM_LOCAL_TO_REMOTE_CLIPBOARD', traits: {"smithy.api#enumValue" => "ContentTransferFromLocalToRemoteClipboard"}))
    Event.add_member(:content_copy_from_website, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONTENT_COPY_FROM_WEBSITE', traits: {"smithy.api#enumValue" => "ContentCopyFromWebsite"}))
    Event.add_member(:url_load, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'URL_LOAD', traits: {"smithy.api#enumValue" => "UrlLoad"}))
    Event.add_member(:tab_open, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TAB_OPEN', traits: {"smithy.api#enumValue" => "TabOpen"}))
    Event.add_member(:tab_close, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TAB_CLOSE', traits: {"smithy.api#enumValue" => "TabClose"}))
    Event.add_member(:print_job_submit, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PRINT_JOB_SUBMIT', traits: {"smithy.api#enumValue" => "PrintJobSubmit"}))
    Event.add_member(:session_connect, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SESSION_CONNECT', traits: {"smithy.api#enumValue" => "SessionConnect"}))
    Event.add_member(:session_start, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SESSION_START', traits: {"smithy.api#enumValue" => "SessionStart"}))
    Event.add_member(:session_disconnect, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SESSION_DISCONNECT', traits: {"smithy.api#enumValue" => "SessionDisconnect"}))
    Event.add_member(:session_end, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SESSION_END', traits: {"smithy.api#enumValue" => "SessionEnd"}))
    EventFilter.add_member(:all, Types::EventFilter::All, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'all', traits: {"smithy.api#documentation" => "<p>The filter that monitors all of the available events, including any new events emitted in the future.</p>"}))
    EventFilter.add_member(:include, Types::EventFilter::Include, Smithy::Schema::Shapes::ShapeRef.new(shape: Events, location_name: 'include', traits: {"smithy.api#documentation" => "<p>The filter that monitors only the listed set of events. New events are not auto-monitored.</p>"}))
    EventFilter.add_member(:unknown, Types::EventFilter::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    EventFilter.type = Types::EventFilter
    Events.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Event)
    ExpireSessionRequest.add_member(:portal_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PortalId, location_name: 'portalId', traits: {"smithy.api#documentation" => "<p>The ID of the web portal for the session.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ExpireSessionRequest.add_member(:session_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionId, location_name: 'sessionId', traits: {"smithy.api#documentation" => "<p>The ID of the session to expire.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ExpireSessionRequest.type = Types::ExpireSessionRequest
    ExpireSessionResponse.type = Types::ExpireSessionResponse
    FolderStructure.add_member(:flat, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FLAT', traits: {"smithy.api#enumValue" => "Flat"}))
    FolderStructure.add_member(:nested_by_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NESTED_BY_DATE', traits: {"smithy.api#enumValue" => "NestedByDate"}))
    GetBrowserSettingsRequest.add_member(:browser_settings_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'browserSettingsArn', traits: {"smithy.api#documentation" => "<p>The ARN of the browser settings.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetBrowserSettingsRequest.type = Types::GetBrowserSettingsRequest
    GetBrowserSettingsResponse.add_member(:browser_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: BrowserSettings, location_name: 'browserSettings', traits: {"smithy.api#documentation" => "<p>The browser settings.</p>", "smithy.api#nestedProperties" => {}}))
    GetBrowserSettingsResponse.type = Types::GetBrowserSettingsResponse
    GetDataProtectionSettingsRequest.add_member(:data_protection_settings_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'dataProtectionSettingsArn', traits: {"smithy.api#documentation" => "<p>The ARN of the data protection settings.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDataProtectionSettingsRequest.type = Types::GetDataProtectionSettingsRequest
    GetDataProtectionSettingsResponse.add_member(:data_protection_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: DataProtectionSettings, location_name: 'dataProtectionSettings', traits: {"smithy.api#documentation" => "<p>The data protection settings.</p>", "smithy.api#nestedProperties" => {}}))
    GetDataProtectionSettingsResponse.type = Types::GetDataProtectionSettingsResponse
    GetIdentityProviderRequest.add_member(:identity_provider_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SubresourceARN, location_name: 'identityProviderArn', traits: {"smithy.api#documentation" => "<p>The ARN of the identity provider.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetIdentityProviderRequest.type = Types::GetIdentityProviderRequest
    GetIdentityProviderResponse.add_member(:identity_provider, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityProvider, location_name: 'identityProvider', traits: {"smithy.api#documentation" => "<p>The identity provider.</p>", "smithy.api#nestedProperties" => {}}))
    GetIdentityProviderResponse.type = Types::GetIdentityProviderResponse
    GetIpAccessSettingsRequest.add_member(:ip_access_settings_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'ipAccessSettingsArn', traits: {"smithy.api#documentation" => "<p>The ARN of the IP access settings.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetIpAccessSettingsRequest.type = Types::GetIpAccessSettingsRequest
    GetIpAccessSettingsResponse.add_member(:ip_access_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: IpAccessSettings, location_name: 'ipAccessSettings', traits: {"smithy.api#documentation" => "<p>The IP access settings.</p>", "smithy.api#nestedProperties" => {}}))
    GetIpAccessSettingsResponse.type = Types::GetIpAccessSettingsResponse
    GetNetworkSettingsRequest.add_member(:network_settings_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'networkSettingsArn', traits: {"smithy.api#documentation" => "<p>The ARN of the network settings.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetNetworkSettingsRequest.type = Types::GetNetworkSettingsRequest
    GetNetworkSettingsResponse.add_member(:network_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkSettings, location_name: 'networkSettings', traits: {"smithy.api#documentation" => "<p>The network settings.</p>", "smithy.api#nestedProperties" => {}}))
    GetNetworkSettingsResponse.type = Types::GetNetworkSettingsResponse
    GetPortalRequest.add_member(:portal_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'portalArn', traits: {"smithy.api#documentation" => "<p>The ARN of the web portal.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetPortalRequest.type = Types::GetPortalRequest
    GetPortalResponse.add_member(:portal, Smithy::Schema::Shapes::ShapeRef.new(shape: Portal, location_name: 'portal', traits: {"smithy.api#documentation" => "<p>The web portal.</p>", "smithy.api#nestedProperties" => {}}))
    GetPortalResponse.type = Types::GetPortalResponse
    GetPortalServiceProviderMetadataRequest.add_member(:portal_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'portalArn', traits: {"smithy.api#documentation" => "<p>The ARN of the web portal.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetPortalServiceProviderMetadataRequest.type = Types::GetPortalServiceProviderMetadataRequest
    GetPortalServiceProviderMetadataResponse.add_member(:portal_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'portalArn', traits: {"smithy.api#documentation" => "<p>The ARN of the web portal.</p>", "smithy.api#required" => {}}))
    GetPortalServiceProviderMetadataResponse.add_member(:service_provider_saml_metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: SamlMetadata, location_name: 'serviceProviderSamlMetadata', traits: {"aws.cloudformation#cfnMutability" => "read", "smithy.api#documentation" => "<p>The service provider SAML metadata.</p>"}))
    GetPortalServiceProviderMetadataResponse.type = Types::GetPortalServiceProviderMetadataResponse
    GetSessionLoggerRequest.add_member(:session_logger_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'sessionLoggerArn', traits: {"smithy.api#documentation" => "<p>The ARN of the session logger.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSessionLoggerRequest.type = Types::GetSessionLoggerRequest
    GetSessionLoggerResponse.add_member(:session_logger, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionLogger, location_name: 'sessionLogger', traits: {"smithy.api#documentation" => "<p>The session logger details.</p>", "smithy.api#nestedProperties" => {}}))
    GetSessionLoggerResponse.type = Types::GetSessionLoggerResponse
    GetSessionRequest.add_member(:portal_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PortalId, location_name: 'portalId', traits: {"smithy.api#documentation" => "<p>The ID of the web portal for the session.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSessionRequest.add_member(:session_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionId, location_name: 'sessionId', traits: {"smithy.api#documentation" => "<p>The ID of the session.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSessionRequest.type = Types::GetSessionRequest
    GetSessionResponse.add_member(:session, Smithy::Schema::Shapes::ShapeRef.new(shape: Session, location_name: 'session', traits: {"smithy.api#documentation" => "<p>The sessions in a list.</p>", "smithy.api#nestedProperties" => {}}))
    GetSessionResponse.type = Types::GetSessionResponse
    GetTrustStoreCertificateRequest.add_member(:trust_store_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'trustStoreArn', traits: {"smithy.api#documentation" => "<p>The ARN of the trust store certificate.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "trustStoreArn"}))
    GetTrustStoreCertificateRequest.add_member(:thumbprint, Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateThumbprint, location_name: 'thumbprint', traits: {"smithy.api#documentation" => "<p>The thumbprint of the trust store certificate.</p>", "smithy.api#httpQuery" => "thumbprint", "smithy.api#notProperty" => {}, "smithy.api#required" => {}}))
    GetTrustStoreCertificateRequest.type = Types::GetTrustStoreCertificateRequest
    GetTrustStoreCertificateResponse.add_member(:trust_store_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'trustStoreArn', traits: {"smithy.api#documentation" => "<p>The ARN of the trust store certificate.</p>", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "trustStoreArn"}))
    GetTrustStoreCertificateResponse.add_member(:certificate, Smithy::Schema::Shapes::ShapeRef.new(shape: Certificate, location_name: 'certificate', traits: {"smithy.api#documentation" => "<p>The certificate of the trust store certificate.</p>", "smithy.api#notProperty" => {}}))
    GetTrustStoreCertificateResponse.type = Types::GetTrustStoreCertificateResponse
    GetTrustStoreRequest.add_member(:trust_store_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'trustStoreArn', traits: {"smithy.api#documentation" => "<p>The ARN of the trust store.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTrustStoreRequest.type = Types::GetTrustStoreRequest
    GetTrustStoreResponse.add_member(:trust_store, Smithy::Schema::Shapes::ShapeRef.new(shape: TrustStore, location_name: 'trustStore', traits: {"smithy.api#documentation" => "<p>The trust store.</p>", "smithy.api#nestedProperties" => {}}))
    GetTrustStoreResponse.type = Types::GetTrustStoreResponse
    GetUserAccessLoggingSettingsRequest.add_member(:user_access_logging_settings_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'userAccessLoggingSettingsArn', traits: {"smithy.api#documentation" => "<p>The ARN of the user access logging settings.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetUserAccessLoggingSettingsRequest.type = Types::GetUserAccessLoggingSettingsRequest
    GetUserAccessLoggingSettingsResponse.add_member(:user_access_logging_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: UserAccessLoggingSettings, location_name: 'userAccessLoggingSettings', traits: {"smithy.api#documentation" => "<p>The user access logging settings.</p>", "smithy.api#nestedProperties" => {}}))
    GetUserAccessLoggingSettingsResponse.type = Types::GetUserAccessLoggingSettingsResponse
    GetUserSettingsRequest.add_member(:user_settings_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'userSettingsArn', traits: {"smithy.api#documentation" => "<p>The ARN of the user settings.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetUserSettingsRequest.type = Types::GetUserSettingsRequest
    GetUserSettingsResponse.add_member(:user_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: UserSettings, location_name: 'userSettings', traits: {"smithy.api#documentation" => "<p>The user settings.</p>", "smithy.api#nestedProperties" => {}}))
    GetUserSettingsResponse.type = Types::GetUserSettingsResponse
    GlobalInlineRedactionUrls.member = Smithy::Schema::Shapes::ShapeRef.new(shape: InlineRedactionUrl)
    HiddenToolbarItemList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ToolbarItem)
    IdentityProvider.add_member(:identity_provider_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SubresourceARN, location_name: 'identityProviderArn', traits: {"smithy.api#documentation" => "<p>The ARN of the identity provider.</p>", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "identityProviderArn"}))
    IdentityProvider.add_member(:identity_provider_name, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityProviderName, location_name: 'identityProviderName', traits: {"smithy.api#documentation" => "<p>The identity provider name.</p>"}))
    IdentityProvider.add_member(:identity_provider_type, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityProviderType, location_name: 'identityProviderType', traits: {"smithy.api#documentation" => "<p>The identity provider type.</p>"}))
    IdentityProvider.add_member(:identity_provider_details, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityProviderDetails, location_name: 'identityProviderDetails', traits: {"smithy.api#documentation" => "<p>The identity provider details. The following list describes the provider detail keys for\n         each identity provider type. </p>\n         <ul>\n            <li>\n               <p>For Google and Login with Amazon:</p>\n               <ul>\n                  <li>\n                     <p>\n                        <code>client_id</code>\n                     </p>\n                  </li>\n                  <li>\n                     <p>\n                        <code>client_secret</code>\n                     </p>\n                  </li>\n                  <li>\n                     <p>\n                        <code>authorize_scopes</code>\n                     </p>\n                  </li>\n               </ul>\n            </li>\n            <li>\n               <p>For Facebook:</p>\n               <ul>\n                  <li>\n                     <p>\n                        <code>client_id</code>\n                     </p>\n                  </li>\n                  <li>\n                     <p>\n                        <code>client_secret</code>\n                     </p>\n                  </li>\n                  <li>\n                     <p>\n                        <code>authorize_scopes</code>\n                     </p>\n                  </li>\n                  <li>\n                     <p>\n                        <code>api_version</code>\n                     </p>\n                  </li>\n               </ul>\n            </li>\n            <li>\n               <p>For Sign in with Apple:</p>\n               <ul>\n                  <li>\n                     <p>\n                        <code>client_id</code>\n                     </p>\n                  </li>\n                  <li>\n                     <p>\n                        <code>team_id</code>\n                     </p>\n                  </li>\n                  <li>\n                     <p>\n                        <code>key_id</code>\n                     </p>\n                  </li>\n                  <li>\n                     <p>\n                        <code>private_key</code>\n                     </p>\n                  </li>\n                  <li>\n                     <p>\n                        <code>authorize_scopes</code>\n                     </p>\n                  </li>\n               </ul>\n            </li>\n            <li>\n               <p>For OIDC providers:</p>\n               <ul>\n                  <li>\n                     <p>\n                        <code>client_id</code>\n                     </p>\n                  </li>\n                  <li>\n                     <p>\n                        <code>client_secret</code>\n                     </p>\n                  </li>\n                  <li>\n                     <p>\n                        <code>attributes_request_method</code>\n                     </p>\n                  </li>\n                  <li>\n                     <p>\n                        <code>oidc_issuer</code>\n                     </p>\n                  </li>\n                  <li>\n                     <p>\n                        <code>authorize_scopes</code>\n                     </p>\n                  </li>\n                  <li>\n                     <p>\n                        <code>authorize_url</code>\n                        <i>if not available from discovery URL specified by oidc_issuer\n                        key</i>\n                     </p>\n                  </li>\n                  <li>\n                     <p>\n                        <code>token_url</code>\n                        <i>if not available from discovery URL specified by oidc_issuer\n                        key</i>\n                     </p>\n                  </li>\n                  <li>\n                     <p>\n                        <code>attributes_url</code>\n                        <i>if not available from discovery URL specified by oidc_issuer\n                        key</i>\n                     </p>\n                  </li>\n                  <li>\n                     <p>\n                        <code>jwks_uri</code>\n                        <i>if not available from discovery URL specified by oidc_issuer\n                        key</i>\n                     </p>\n                  </li>\n               </ul>\n            </li>\n            <li>\n               <p>For SAML providers:</p>\n               <ul>\n                  <li>\n                     <p>\n                        <code>MetadataFile</code> OR <code>MetadataURL</code>\n                     </p>\n                  </li>\n                  <li>\n                     <p>\n                        <code>IDPSignout</code> (boolean) <i>optional</i>\n                     </p>\n                  </li>\n                  <li>\n                     <p>\n                        <code>IDPInit</code> (boolean) <i>optional</i>\n                     </p>\n                  </li>\n                  <li>\n                     <p>\n                        <code>RequestSigningAlgorithm</code> (string) <i>optional</i>\n                     - Only accepts <code>rsa-sha256</code>\n                     </p>\n                  </li>\n                  <li>\n                     <p>\n                        <code>EncryptedResponses</code> (boolean) <i>optional</i>\n                     </p>\n                  </li>\n               </ul>\n            </li>\n         </ul>"}))
    IdentityProvider.type = Types::IdentityProvider
    IdentityProviderDetails.key = Smithy::Schema::Shapes::ShapeRef.new(shape: StringType)
    IdentityProviderDetails.value = Smithy::Schema::Shapes::ShapeRef.new(shape: StringType)
    IdentityProviderList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityProviderSummary)
    IdentityProviderSummary.add_member(:identity_provider_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SubresourceARN, location_name: 'identityProviderArn', traits: {"smithy.api#documentation" => "<p>The ARN of the identity provider.</p>", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "identityProviderArn"}))
    IdentityProviderSummary.add_member(:identity_provider_name, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityProviderName, location_name: 'identityProviderName', traits: {"smithy.api#documentation" => "<p>The identity provider name.</p>"}))
    IdentityProviderSummary.add_member(:identity_provider_type, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityProviderType, location_name: 'identityProviderType', traits: {"smithy.api#documentation" => "<p>The identity provider type.</p>"}))
    IdentityProviderSummary.type = Types::IdentityProviderSummary
    InlineRedactionConfiguration.add_member(:inline_redaction_patterns, Smithy::Schema::Shapes::ShapeRef.new(shape: InlineRedactionPatterns, location_name: 'inlineRedactionPatterns', traits: {"smithy.api#documentation" => "<p>The inline redaction patterns to be enabled for the inline redaction configuration.</p>", "smithy.api#required" => {}}))
    InlineRedactionConfiguration.add_member(:global_enforced_urls, Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalInlineRedactionUrls, location_name: 'globalEnforcedUrls', traits: {"smithy.api#documentation" => "<p>The global enforced URL configuration for the inline redaction configuration. This is applied to patterns that do not have a pattern-level enforced URL list.</p>"}))
    InlineRedactionConfiguration.add_member(:global_exempt_urls, Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalInlineRedactionUrls, location_name: 'globalExemptUrls', traits: {"smithy.api#documentation" => "<p>The global exempt URL configuration for the inline redaction configuration. This is applied to patterns that do not have a pattern-level exempt URL list.</p>"}))
    InlineRedactionConfiguration.add_member(:global_confidence_level, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfidenceLevel, location_name: 'globalConfidenceLevel', traits: {"smithy.api#documentation" => "<p>The global confidence level for the inline redaction configuration. This indicates the\n         certainty of data type matches in the redaction process. Confidence level 3 means high\n         confidence, and requires a formatted text pattern match in order for content to be\n         redacted. Confidence level 2 means medium confidence, and redaction considers both\n         formatted and unformatted text, and adds keyword associate to the logic. Confidence level 1\n         means low confidence, and redaction is enforced for both formatted pattern + unformatted\n         pattern without keyword. This is applied to patterns that do not have a pattern-level\n         confidence level. Defaults to confidence level 2.</p>"}))
    InlineRedactionConfiguration.type = Types::InlineRedactionConfiguration
    InlineRedactionPattern.add_member(:built_in_pattern_id, Smithy::Schema::Shapes::ShapeRef.new(shape: BuiltInPatternId, location_name: 'builtInPatternId', traits: {"smithy.api#documentation" => "<p>The built-in pattern from the list of preconfigured patterns. Either a customPattern or builtInPatternId is required.</p>"}))
    InlineRedactionPattern.add_member(:custom_pattern, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomPattern, location_name: 'customPattern', traits: {"smithy.api#documentation" => "<p>&gt;The configuration for a custom pattern. Either a customPattern or builtInPatternId is required.</p>"}))
    InlineRedactionPattern.add_member(:redaction_place_holder, Smithy::Schema::Shapes::ShapeRef.new(shape: RedactionPlaceHolder, location_name: 'redactionPlaceHolder', traits: {"smithy.api#documentation" => "<p>The redaction placeholder that will replace the redacted text in session for the inline redaction pattern.</p>", "smithy.api#required" => {}}))
    InlineRedactionPattern.add_member(:enforced_urls, Smithy::Schema::Shapes::ShapeRef.new(shape: InlineRedactionUrls, location_name: 'enforcedUrls', traits: {"smithy.api#documentation" => "<p>The enforced URL configuration for the inline redaction pattern. This will override the global enforced URL configuration.</p>"}))
    InlineRedactionPattern.add_member(:exempt_urls, Smithy::Schema::Shapes::ShapeRef.new(shape: InlineRedactionUrls, location_name: 'exemptUrls', traits: {"smithy.api#documentation" => "<p>The exempt URL configuration for the inline redaction pattern. This will override the global exempt URL configuration for the inline redaction pattern.</p>"}))
    InlineRedactionPattern.add_member(:confidence_level, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfidenceLevel, location_name: 'confidenceLevel', traits: {"smithy.api#documentation" => "<p>The confidence level for inline redaction pattern. This indicates the certainty of data\n         type matches in the redaction process. Confidence level 3 means high confidence, and\n         requires a formatted text pattern match in order for content to be redacted. Confidence\n         level 2 means medium confidence, and redaction considers both formatted and unformatted\n         text, and adds keyword associate to the logic. Confidence level 1 means low confidence, and\n         redaction is enforced for both formatted pattern + unformatted pattern without keyword.\n         This overrides the global confidence level.</p>"}))
    InlineRedactionPattern.type = Types::InlineRedactionPattern
    InlineRedactionPatterns.member = Smithy::Schema::Shapes::ShapeRef.new(shape: InlineRedactionPattern)
    InlineRedactionUrls.member = Smithy::Schema::Shapes::ShapeRef.new(shape: InlineRedactionUrl)
    InternalServerException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InternalServerException.add_member(:retry_after_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: RetryAfterSeconds, location_name: 'retryAfterSeconds', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Advice to clients on when the call can be safely retried.</p>", "smithy.api#httpHeader" => "Retry-After"}))
    InternalServerException.type = Types::InternalServerException
    IpAccessSettings.add_member(:ip_access_settings_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'ipAccessSettingsArn', traits: {"smithy.api#documentation" => "<p>The ARN of the IP access settings resource.</p>", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "ipAccessSettingsArn"}))
    IpAccessSettings.add_member(:associated_portal_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: ArnList, location_name: 'associatedPortalArns', traits: {"smithy.api#documentation" => "<p>A list of web portal ARNs that this IP access settings resource is associated\n         with.</p>"}))
    IpAccessSettings.add_member(:ip_rules, Smithy::Schema::Shapes::ShapeRef.new(shape: IpRuleList, location_name: 'ipRules', traits: {"smithy.api#documentation" => "<p>The IP rules of the IP access settings.</p>"}))
    IpAccessSettings.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DisplayName, location_name: 'displayName', traits: {"smithy.api#documentation" => "<p> The display name of the IP access settings.</p>"}))
    IpAccessSettings.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the IP access settings.</p>"}))
    IpAccessSettings.add_member(:creation_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'creationDate', traits: {"smithy.api#documentation" => "<p>The creation date timestamp of the IP access settings.</p>"}))
    IpAccessSettings.add_member(:customer_managed_key, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyArn, location_name: 'customerManagedKey', traits: {"smithy.api#documentation" => "<p>The customer managed key used to encrypt sensitive information in the IP access\n         settings.</p>"}))
    IpAccessSettings.add_member(:additional_encryption_context, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionContextMap, location_name: 'additionalEncryptionContext', traits: {"smithy.api#documentation" => "<p>The additional encryption context of the IP access settings.</p>"}))
    IpAccessSettings.type = Types::IpAccessSettings
    IpAccessSettingsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: IpAccessSettingsSummary)
    IpAccessSettingsSummary.add_member(:ip_access_settings_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'ipAccessSettingsArn', traits: {"smithy.api#documentation" => "<p>The ARN of IP access settings.</p>", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "ipAccessSettingsArn"}))
    IpAccessSettingsSummary.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DisplayName, location_name: 'displayName', traits: {"smithy.api#documentation" => "<p>The display name of the IP access settings.</p>"}))
    IpAccessSettingsSummary.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the IP access settings.</p>"}))
    IpAccessSettingsSummary.add_member(:creation_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'creationDate', traits: {"smithy.api#documentation" => "<p>The creation date timestamp of the IP access settings.</p>"}))
    IpAccessSettingsSummary.type = Types::IpAccessSettingsSummary
    IpAddressList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddress)
    IpRule.add_member(:ip_range, Smithy::Schema::Shapes::ShapeRef.new(shape: IpRange, location_name: 'ipRange', traits: {"smithy.api#documentation" => "<p>The IP range of the IP rule.</p>", "smithy.api#required" => {}}))
    IpRule.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the IP rule.</p>"}))
    IpRule.type = Types::IpRule
    IpRuleList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: IpRule)
    ListBrowserSettingsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The pagination token used to retrieve the next page of results for this\n         operation.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListBrowserSettingsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to be included in the next page.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListBrowserSettingsRequest.type = Types::ListBrowserSettingsRequest
    ListBrowserSettingsResponse.add_member(:browser_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: BrowserSettingsList, location_name: 'browserSettings', traits: {"smithy.api#documentation" => "<p>The browser settings.</p>"}))
    ListBrowserSettingsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The pagination token used to retrieve the next page of results for this\n         operation.</p>"}))
    ListBrowserSettingsResponse.type = Types::ListBrowserSettingsResponse
    ListDataProtectionSettingsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The pagination token used to retrieve the next page of results for this\n         operation.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListDataProtectionSettingsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to be included in the next page.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListDataProtectionSettingsRequest.type = Types::ListDataProtectionSettingsRequest
    ListDataProtectionSettingsResponse.add_member(:data_protection_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: DataProtectionSettingsList, location_name: 'dataProtectionSettings', traits: {"smithy.api#documentation" => "<p>The data protection settings.</p>"}))
    ListDataProtectionSettingsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The pagination token used to retrieve the next page of results for this\n         operation.</p>"}))
    ListDataProtectionSettingsResponse.type = Types::ListDataProtectionSettingsResponse
    ListIdentityProvidersRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The pagination token used to retrieve the next page of results for this\n         operation.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListIdentityProvidersRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to be included in the next page.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListIdentityProvidersRequest.add_member(:portal_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'portalArn', traits: {"smithy.api#documentation" => "<p>The ARN of the web portal.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListIdentityProvidersRequest.type = Types::ListIdentityProvidersRequest
    ListIdentityProvidersResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The pagination token used to retrieve the next page of results for this\n         operation.</p>"}))
    ListIdentityProvidersResponse.add_member(:identity_providers, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityProviderList, location_name: 'identityProviders', traits: {"smithy.api#documentation" => "<p>The identity providers.</p>"}))
    ListIdentityProvidersResponse.type = Types::ListIdentityProvidersResponse
    ListIpAccessSettingsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The pagination token used to retrieve the next page of results for this\n         operation.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListIpAccessSettingsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to be included in the next page.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListIpAccessSettingsRequest.type = Types::ListIpAccessSettingsRequest
    ListIpAccessSettingsResponse.add_member(:ip_access_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: IpAccessSettingsList, location_name: 'ipAccessSettings', traits: {"smithy.api#documentation" => "<p>The IP access settings.</p>"}))
    ListIpAccessSettingsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The pagination token used to retrieve the next page of results for this\n         operation.</p>"}))
    ListIpAccessSettingsResponse.type = Types::ListIpAccessSettingsResponse
    ListNetworkSettingsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The pagination token used to retrieve the next page of results for this\n         operation.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListNetworkSettingsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to be included in the next page.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListNetworkSettingsRequest.type = Types::ListNetworkSettingsRequest
    ListNetworkSettingsResponse.add_member(:network_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkSettingsList, location_name: 'networkSettings', traits: {"smithy.api#documentation" => "<p>The network settings.</p>"}))
    ListNetworkSettingsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The pagination token used to retrieve the next page of results for this\n         operation.</p>"}))
    ListNetworkSettingsResponse.type = Types::ListNetworkSettingsResponse
    ListPortalsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The pagination token used to retrieve the next page of results for this operation.\n      </p>", "smithy.api#httpQuery" => "nextToken"}))
    ListPortalsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to be included in the next page.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListPortalsRequest.type = Types::ListPortalsRequest
    ListPortalsResponse.add_member(:portals, Smithy::Schema::Shapes::ShapeRef.new(shape: PortalList, location_name: 'portals', traits: {"smithy.api#documentation" => "<p>The portals in the list.</p>"}))
    ListPortalsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The pagination token used to retrieve the next page of results for this operation.\n      </p>"}))
    ListPortalsResponse.type = Types::ListPortalsResponse
    ListSessionLoggersRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The pagination token used to retrieve the next page of results for this operation.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListSessionLoggersRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to be included in the next page.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListSessionLoggersRequest.type = Types::ListSessionLoggersRequest
    ListSessionLoggersResponse.add_member(:session_loggers, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionLoggerList, location_name: 'sessionLoggers', traits: {"smithy.api#documentation" => "<p>The list of session loggers, including summaries of their details.</p>"}))
    ListSessionLoggersResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The pagination token used to retrieve the next page of results for this operation.</p>"}))
    ListSessionLoggersResponse.type = Types::ListSessionLoggersResponse
    ListSessionsRequest.add_member(:portal_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PortalId, location_name: 'portalId', traits: {"smithy.api#documentation" => "<p>The ID of the web portal for the sessions.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListSessionsRequest.add_member(:username, Smithy::Schema::Shapes::ShapeRef.new(shape: Username, location_name: 'username', traits: {"smithy.api#documentation" => "<p>The username of the session.</p>", "smithy.api#httpQuery" => "username"}))
    ListSessionsRequest.add_member(:session_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionId, location_name: 'sessionId', traits: {"smithy.api#documentation" => "<p>The ID of the session.</p>", "smithy.api#httpQuery" => "sessionId"}))
    ListSessionsRequest.add_member(:sort_by, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionSortBy, location_name: 'sortBy', traits: {"smithy.api#documentation" => "<p>The method in which the returned sessions should be sorted.</p>", "smithy.api#httpQuery" => "sortBy"}))
    ListSessionsRequest.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the session.</p>", "smithy.api#httpQuery" => "status"}))
    ListSessionsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to be included in the next page.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListSessionsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The pagination token used to retrieve the next page of results for this\n         operation.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListSessionsRequest.type = Types::ListSessionsRequest
    ListSessionsResponse.add_member(:sessions, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionSummaryList, location_name: 'sessions', traits: {"smithy.api#documentation" => "<p>The sessions in a list.</p>", "smithy.api#required" => {}}))
    ListSessionsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The pagination token used to retrieve the next page of results for this\n         operation.</p>"}))
    ListSessionsResponse.type = Types::ListSessionsResponse
    ListTagsForResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the resource.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags of the resource.</p>"}))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ListTrustStoreCertificatesRequest.add_member(:trust_store_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'trustStoreArn', traits: {"smithy.api#documentation" => "<p>The ARN of the trust store</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "trustStoreArn"}))
    ListTrustStoreCertificatesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The pagination token used to retrieve the next page of results for this\n         operation.</p>", "smithy.api#httpQuery" => "nextToken", "smithy.api#notProperty" => {}}))
    ListTrustStoreCertificatesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to be included in the next page.</p>", "smithy.api#httpQuery" => "maxResults", "smithy.api#notProperty" => {}}))
    ListTrustStoreCertificatesRequest.type = Types::ListTrustStoreCertificatesRequest
    ListTrustStoreCertificatesResponse.add_member(:certificate_list, Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateSummaryList, location_name: 'certificateList', traits: {"smithy.api#documentation" => "<p>The certificate list.</p>", "smithy.api#property" => {"name" => "certificateSummaryList"}}))
    ListTrustStoreCertificatesResponse.add_member(:trust_store_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'trustStoreArn', traits: {"smithy.api#documentation" => "<p>The ARN of the trust store.</p>", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "trustStoreArn"}))
    ListTrustStoreCertificatesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The pagination token used to retrieve the next page of results for this\n         operation.&gt;</p>", "smithy.api#notProperty" => {}}))
    ListTrustStoreCertificatesResponse.type = Types::ListTrustStoreCertificatesResponse
    ListTrustStoresRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The pagination token used to retrieve the next page of results for this\n         operation.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListTrustStoresRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to be included in the next page.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListTrustStoresRequest.type = Types::ListTrustStoresRequest
    ListTrustStoresResponse.add_member(:trust_stores, Smithy::Schema::Shapes::ShapeRef.new(shape: TrustStoreSummaryList, location_name: 'trustStores', traits: {"smithy.api#documentation" => "<p>The trust stores.</p>"}))
    ListTrustStoresResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The pagination token used to retrieve the next page of results for this\n         operation.</p>"}))
    ListTrustStoresResponse.type = Types::ListTrustStoresResponse
    ListUserAccessLoggingSettingsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The pagination token used to retrieve the next page of results for this\n         operation.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListUserAccessLoggingSettingsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to be included in the next page.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListUserAccessLoggingSettingsRequest.type = Types::ListUserAccessLoggingSettingsRequest
    ListUserAccessLoggingSettingsResponse.add_member(:user_access_logging_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: UserAccessLoggingSettingsList, location_name: 'userAccessLoggingSettings', traits: {"smithy.api#documentation" => "<p>The user access logging settings.</p>"}))
    ListUserAccessLoggingSettingsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The pagination token used to retrieve the next page of results for this\n         operation.</p>"}))
    ListUserAccessLoggingSettingsResponse.type = Types::ListUserAccessLoggingSettingsResponse
    ListUserSettingsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The pagination token used to retrieve the next page of results for this operation.\n      </p>", "smithy.api#httpQuery" => "nextToken"}))
    ListUserSettingsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to be included in the next page.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListUserSettingsRequest.type = Types::ListUserSettingsRequest
    ListUserSettingsResponse.add_member(:user_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: UserSettingsList, location_name: 'userSettings', traits: {"smithy.api#documentation" => "<p>The user settings.</p>"}))
    ListUserSettingsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The pagination token used to retrieve the next page of results for this operation.\n      </p>"}))
    ListUserSettingsResponse.type = Types::ListUserSettingsResponse
    LogConfiguration.add_member(:s3, Smithy::Schema::Shapes::ShapeRef.new(shape: S3LogConfiguration, location_name: 's3', traits: {"smithy.api#documentation" => "<p>The configuration for delivering the logs to S3.</p>"}))
    LogConfiguration.type = Types::LogConfiguration
    LogFileFormat.add_member(:json_lines, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'JSON_LINES', traits: {"smithy.api#enumValue" => "JSONLines"}))
    LogFileFormat.add_member(:json, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'JSON', traits: {"smithy.api#enumValue" => "Json"}))
    NetworkSettings.add_member(:network_settings_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'networkSettingsArn', traits: {"smithy.api#documentation" => "<p>The ARN of the network settings.</p>", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "networkSettingsArn"}))
    NetworkSettings.add_member(:associated_portal_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: ArnList, location_name: 'associatedPortalArns', traits: {"smithy.api#documentation" => "<p>A list of web portal ARNs that this network settings is associated with.</p>"}))
    NetworkSettings.add_member(:vpc_id, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcId, location_name: 'vpcId', traits: {"smithy.api#documentation" => "<p>The VPC that streaming instances will connect to.</p>"}))
    NetworkSettings.add_member(:subnet_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetIdList, location_name: 'subnetIds', traits: {"smithy.api#documentation" => "<p>The subnets in which network interfaces are created to connect streaming instances to\n         your VPC. At least two of these subnets must be in different availability zones.</p>"}))
    NetworkSettings.add_member(:security_group_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupIdList, location_name: 'securityGroupIds', traits: {"smithy.api#documentation" => "<p>One or more security groups used to control access from streaming instances to your VPC.\n      </p>"}))
    NetworkSettings.type = Types::NetworkSettings
    NetworkSettingsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkSettingsSummary)
    NetworkSettingsSummary.add_member(:network_settings_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'networkSettingsArn', traits: {"smithy.api#documentation" => "<p>The ARN of the network settings.</p>", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "networkSettingsArn"}))
    NetworkSettingsSummary.add_member(:vpc_id, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcId, location_name: 'vpcId', traits: {"smithy.api#documentation" => "<p>The VPC ID of the network settings.</p>"}))
    NetworkSettingsSummary.type = Types::NetworkSettingsSummary
    Portal.add_member(:portal_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'portalArn', traits: {"smithy.api#documentation" => "<p>The ARN of the web portal.</p>", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "portalArn"}))
    Portal.add_member(:renderer_type, Smithy::Schema::Shapes::ShapeRef.new(shape: RendererType, location_name: 'rendererType', traits: {"smithy.api#documentation" => "<p>The renderer that is used in streaming sessions.</p>"}))
    Portal.add_member(:browser_type, Smithy::Schema::Shapes::ShapeRef.new(shape: BrowserType, location_name: 'browserType', traits: {"smithy.api#documentation" => "<p>The browser that users see when using a streaming session.</p>"}))
    Portal.add_member(:portal_status, Smithy::Schema::Shapes::ShapeRef.new(shape: PortalStatus, location_name: 'portalStatus', traits: {"smithy.api#documentation" => "<p>The status of the web portal.</p>"}))
    Portal.add_member(:portal_endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: PortalEndpoint, location_name: 'portalEndpoint', traits: {"smithy.api#documentation" => "<p>The endpoint URL of the web portal that users access in order to start streaming\n         sessions.</p>"}))
    Portal.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DisplayName, location_name: 'displayName', traits: {"smithy.api#documentation" => "<p>The name of the web portal.</p>"}))
    Portal.add_member(:creation_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'creationDate', traits: {"smithy.api#documentation" => "<p>The creation date of the web portal.</p>"}))
    Portal.add_member(:browser_settings_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'browserSettingsArn', traits: {"smithy.api#documentation" => "<p>The ARN of the browser settings that is associated with this web portal.</p>"}))
    Portal.add_member(:data_protection_settings_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'dataProtectionSettingsArn', traits: {"smithy.api#documentation" => "<p>The ARN of the data protection settings.</p>"}))
    Portal.add_member(:user_settings_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'userSettingsArn', traits: {"smithy.api#documentation" => "<p>The ARN of the user settings that is associated with the web portal.</p>"}))
    Portal.add_member(:network_settings_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'networkSettingsArn', traits: {"smithy.api#documentation" => "<p>The ARN of the network settings that is associated with the web portal.</p>"}))
    Portal.add_member(:session_logger_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'sessionLoggerArn', traits: {"smithy.api#documentation" => "<p>The ARN of the session logger that is assocaited with the portal.</p>"}))
    Portal.add_member(:trust_store_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'trustStoreArn', traits: {"smithy.api#documentation" => "<p>The ARN of the trust store that is associated with the web portal.</p>"}))
    Portal.add_member(:status_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusReason, location_name: 'statusReason', traits: {"smithy.api#documentation" => "<p>A message that explains why the web portal is in its current status.</p>"}))
    Portal.add_member(:user_access_logging_settings_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'userAccessLoggingSettingsArn', traits: {"smithy.api#documentation" => "<p>The ARN of the user access logging settings that is associated with the web\n         portal.</p>"}))
    Portal.add_member(:authentication_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationType, location_name: 'authenticationType', traits: {"smithy.api#documentation" => "<p>The type of authentication integration points used when signing into the web portal.\n         Defaults to <code>Standard</code>.</p>\n         <p>\n            <code>Standard</code> web portals are authenticated directly through your identity\n         provider. You need to call <code>CreateIdentityProvider</code> to integrate your identity\n         provider with your web portal. User and group access to your web portal is controlled\n         through your identity provider.</p>\n         <p>\n            <code>IAM Identity Center</code> web portals are authenticated through IAM Identity Center. Identity sources\n         (including external identity provider integration), plus user and group access to your web\n         portal, can be configured in the IAM Identity Center.</p>"}))
    Portal.add_member(:ip_access_settings_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'ipAccessSettingsArn', traits: {"smithy.api#documentation" => "<p>The ARN of the IP access settings.</p>"}))
    Portal.add_member(:customer_managed_key, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyArn, location_name: 'customerManagedKey', traits: {"smithy.api#documentation" => "<p>The customer managed key used to encrypt sensitive information in the portal.</p>"}))
    Portal.add_member(:additional_encryption_context, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionContextMap, location_name: 'additionalEncryptionContext', traits: {"smithy.api#documentation" => "<p>The additional encryption context of the portal.</p>"}))
    Portal.add_member(:instance_type, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceType, location_name: 'instanceType', traits: {"smithy.api#documentation" => "<p>The type and resources of the underlying instance.</p>"}))
    Portal.add_member(:max_concurrent_sessions, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxConcurrentSessions, location_name: 'maxConcurrentSessions', traits: {"smithy.api#documentation" => "<p>The maximum number of concurrent sessions for the portal.</p>"}))
    Portal.type = Types::Portal
    PortalList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PortalSummary)
    PortalSummary.add_member(:portal_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'portalArn', traits: {"smithy.api#documentation" => "<p>The ARN of the web portal.</p>", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "portalArn"}))
    PortalSummary.add_member(:renderer_type, Smithy::Schema::Shapes::ShapeRef.new(shape: RendererType, location_name: 'rendererType', traits: {"smithy.api#documentation" => "<p>The renderer that is used in streaming sessions.</p>"}))
    PortalSummary.add_member(:browser_type, Smithy::Schema::Shapes::ShapeRef.new(shape: BrowserType, location_name: 'browserType', traits: {"smithy.api#documentation" => "<p>The browser type of the web portal.</p>"}))
    PortalSummary.add_member(:portal_status, Smithy::Schema::Shapes::ShapeRef.new(shape: PortalStatus, location_name: 'portalStatus', traits: {"smithy.api#documentation" => "<p>The status of the web portal.</p>"}))
    PortalSummary.add_member(:portal_endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: PortalEndpoint, location_name: 'portalEndpoint', traits: {"smithy.api#documentation" => "<p>The endpoint URL of the web portal that users access in order to start streaming\n         sessions.</p>"}))
    PortalSummary.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DisplayName, location_name: 'displayName', traits: {"smithy.api#documentation" => "<p>The name of the web portal.</p>"}))
    PortalSummary.add_member(:creation_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'creationDate', traits: {"smithy.api#documentation" => "<p>The creation date of the web portal.</p>"}))
    PortalSummary.add_member(:browser_settings_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'browserSettingsArn', traits: {"smithy.api#documentation" => "<p>The ARN of the browser settings that is associated with the web portal.</p>"}))
    PortalSummary.add_member(:data_protection_settings_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'dataProtectionSettingsArn', traits: {"smithy.api#documentation" => "<p>The ARN of the data protection settings.</p>"}))
    PortalSummary.add_member(:user_settings_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'userSettingsArn', traits: {"smithy.api#documentation" => "<p>The ARN of the user settings that is associated with the web portal.</p>"}))
    PortalSummary.add_member(:network_settings_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'networkSettingsArn', traits: {"smithy.api#documentation" => "<p>The ARN of the network settings that is associated with the web portal.</p>"}))
    PortalSummary.add_member(:session_logger_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'sessionLoggerArn', traits: {"smithy.api#documentation" => "<p>The ARN of the session logger that is assocaited with the portal.</p>"}))
    PortalSummary.add_member(:trust_store_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'trustStoreArn', traits: {"smithy.api#documentation" => "<p>The ARN of the trust that is associated with this web portal.</p>"}))
    PortalSummary.add_member(:user_access_logging_settings_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'userAccessLoggingSettingsArn', traits: {"smithy.api#documentation" => "<p>The ARN of the user access logging settings that is associated with the web\n         portal.</p>"}))
    PortalSummary.add_member(:authentication_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationType, location_name: 'authenticationType', traits: {"smithy.api#documentation" => "<p>The type of authentication integration points used when signing into the web portal.\n         Defaults to <code>Standard</code>.</p>\n         <p>\n            <code>Standard</code> web portals are authenticated directly through your identity\n         provider. You need to call <code>CreateIdentityProvider</code> to integrate your identity\n         provider with your web portal. User and group access to your web portal is controlled\n         through your identity provider.</p>\n         <p>\n            <code>IAM Identity Center</code> web portals are authenticated through IAM Identity Center. Identity sources\n         (including external identity provider integration), plus user and group access to your web\n         portal, can be configured in the IAM Identity Center.</p>"}))
    PortalSummary.add_member(:ip_access_settings_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'ipAccessSettingsArn', traits: {"smithy.api#documentation" => "<p>The ARN of the IP access settings.</p>"}))
    PortalSummary.add_member(:instance_type, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceType, location_name: 'instanceType', traits: {"smithy.api#documentation" => "<p>The type and resources of the underlying instance.</p>"}))
    PortalSummary.add_member(:max_concurrent_sessions, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxConcurrentSessions, location_name: 'maxConcurrentSessions', traits: {"smithy.api#documentation" => "<p>The maximum number of concurrent sessions for the portal.</p>"}))
    PortalSummary.type = Types::PortalSummary
    RedactionPlaceHolder.add_member(:redaction_place_holder_type, Smithy::Schema::Shapes::ShapeRef.new(shape: RedactionPlaceHolderType, location_name: 'redactionPlaceHolderType', traits: {"smithy.api#documentation" => "<p>The redaction placeholder type that will replace the redacted text in session.</p>", "smithy.api#required" => {}}))
    RedactionPlaceHolder.add_member(:redaction_place_holder_text, Smithy::Schema::Shapes::ShapeRef.new(shape: RedactionPlaceHolderText, location_name: 'redactionPlaceHolderText', traits: {"smithy.api#documentation" => "<p>The redaction placeholder text that will replace the redacted text in session for the custom text redaction placeholder type.</p>"}))
    RedactionPlaceHolder.type = Types::RedactionPlaceHolder
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ResourceNotFoundException.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'resourceId', traits: {"smithy.api#documentation" => "<p>Hypothetical identifier of the resource affected.</p>"}))
    ResourceNotFoundException.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'resourceType', traits: {"smithy.api#documentation" => "<p>Hypothetical type of the resource affected.</p>"}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    S3LogConfiguration.add_member(:bucket, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Bucket, location_name: 'bucket', traits: {"smithy.api#documentation" => "<p>The S3 bucket name where logs are delivered.</p>", "smithy.api#required" => {}}))
    S3LogConfiguration.add_member(:key_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: S3KeyPrefix, location_name: 'keyPrefix', traits: {"smithy.api#documentation" => "<p>The S3 path prefix that determines where log files are stored.</p>"}))
    S3LogConfiguration.add_member(:bucket_owner, Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketOwner, location_name: 'bucketOwner', traits: {"smithy.api#documentation" => "<p>The expected bucket owner of the target S3 bucket. The caller must have permissions to write to the target bucket.</p>"}))
    S3LogConfiguration.add_member(:log_file_format, Smithy::Schema::Shapes::ShapeRef.new(shape: LogFileFormat, location_name: 'logFileFormat', traits: {"smithy.api#documentation" => "<p>The format of the LogFile that is written to S3.</p>", "smithy.api#required" => {}}))
    S3LogConfiguration.add_member(:folder_structure, Smithy::Schema::Shapes::ShapeRef.new(shape: FolderStructure, location_name: 'folderStructure', traits: {"smithy.api#documentation" => "<p>The folder structure that defines the organizational structure for log files in S3.</p>", "smithy.api#required" => {}}))
    S3LogConfiguration.type = Types::S3LogConfiguration
    SecurityGroupIdList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupId)
    ServiceQuotaExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ServiceQuotaExceededException.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'resourceId', traits: {"smithy.api#documentation" => "<p>Identifier of the resource affected.</p>"}))
    ServiceQuotaExceededException.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'resourceType', traits: {"smithy.api#documentation" => "<p> Type of the resource affected.</p>"}))
    ServiceQuotaExceededException.add_member(:service_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceCode, location_name: 'serviceCode', traits: {"smithy.api#documentation" => "<p>The originating service.</p>"}))
    ServiceQuotaExceededException.add_member(:quota_code, Smithy::Schema::Shapes::ShapeRef.new(shape: QuotaCode, location_name: 'quotaCode', traits: {"smithy.api#documentation" => "<p>The originating quota.</p>"}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    Session.add_member(:portal_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'portalArn', traits: {"smithy.api#documentation" => "<p>The ARN of the web portal.</p>"}))
    Session.add_member(:session_id, Smithy::Schema::Shapes::ShapeRef.new(shape: StringType, location_name: 'sessionId', traits: {"smithy.api#documentation" => "<p>The ID of the session.</p>"}))
    Session.add_member(:username, Smithy::Schema::Shapes::ShapeRef.new(shape: Username, location_name: 'username', traits: {"smithy.api#documentation" => "<p>The username of the session.</p>"}))
    Session.add_member(:client_ip_addresses, Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddressList, location_name: 'clientIpAddresses', traits: {"smithy.api#documentation" => "<p>The IP address of the client.</p>"}))
    Session.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the session.</p>"}))
    Session.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'startTime', traits: {"smithy.api#documentation" => "<p>The start time of the session.</p>"}))
    Session.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'endTime', traits: {"smithy.api#documentation" => "<p>The end time of the session.</p>"}))
    Session.type = Types::Session
    SessionLogger.add_member(:session_logger_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'sessionLoggerArn', traits: {"smithy.api#documentation" => "<p>The ARN of the session logger resource.</p>", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "sessionLoggerArn"}))
    SessionLogger.add_member(:event_filter, Smithy::Schema::Shapes::ShapeRef.new(shape: EventFilter, location_name: 'eventFilter', traits: {"smithy.api#documentation" => "<p>The filter that specifies which events to monitor.</p>"}))
    SessionLogger.add_member(:log_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: LogConfiguration, location_name: 'logConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration that specifies where logs are fowarded.</p>"}))
    SessionLogger.add_member(:customer_managed_key, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyArn, location_name: 'customerManagedKey', traits: {"smithy.api#documentation" => "<p>The custom managed key of the session logger.</p>"}))
    SessionLogger.add_member(:additional_encryption_context, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionContextMap, location_name: 'additionalEncryptionContext', traits: {"smithy.api#documentation" => "<p>The additional encryption context of the session logger.</p>"}))
    SessionLogger.add_member(:associated_portal_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: ArnList, location_name: 'associatedPortalArns', traits: {"smithy.api#documentation" => "<p>The associated portal ARN.</p>"}))
    SessionLogger.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DisplayNameSafe, location_name: 'displayName', traits: {"smithy.api#documentation" => "<p>The human-readable display name.</p>"}))
    SessionLogger.add_member(:creation_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'creationDate', traits: {"smithy.api#documentation" => "<p>The date the session logger resource was created.</p>"}))
    SessionLogger.type = Types::SessionLogger
    SessionLoggerList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SessionLoggerSummary)
    SessionLoggerSummary.add_member(:session_logger_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'sessionLoggerArn', traits: {"smithy.api#documentation" => "<p>The ARN of the session logger resource.</p>", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "sessionLoggerArn"}))
    SessionLoggerSummary.add_member(:log_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: LogConfiguration, location_name: 'logConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration that specifies where the logs are fowarded.</p>"}))
    SessionLoggerSummary.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DisplayNameSafe, location_name: 'displayName', traits: {"smithy.api#documentation" => "<p>The human-readable display name.</p>"}))
    SessionLoggerSummary.add_member(:creation_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'creationDate', traits: {"smithy.api#documentation" => "<p>The date the session logger resource was created.</p>"}))
    SessionLoggerSummary.type = Types::SessionLoggerSummary
    SessionSortBy.add_member(:start_time_ascending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'START_TIME_ASCENDING', traits: {"smithy.api#enumValue" => "StartTimeAscending"}))
    SessionSortBy.add_member(:start_time_descending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'START_TIME_DESCENDING', traits: {"smithy.api#enumValue" => "StartTimeDescending"}))
    SessionStatus.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "Active"}))
    SessionStatus.add_member(:terminated, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TERMINATED', traits: {"smithy.api#enumValue" => "Terminated"}))
    SessionSummary.add_member(:portal_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'portalArn', traits: {"smithy.api#documentation" => "<p>The ARN of the web portal.</p>"}))
    SessionSummary.add_member(:session_id, Smithy::Schema::Shapes::ShapeRef.new(shape: StringType, location_name: 'sessionId', traits: {"smithy.api#documentation" => "<p>The ID of the session.</p>"}))
    SessionSummary.add_member(:username, Smithy::Schema::Shapes::ShapeRef.new(shape: Username, location_name: 'username', traits: {"smithy.api#documentation" => "<p>The username of the session.</p>"}))
    SessionSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the session.</p>"}))
    SessionSummary.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'startTime', traits: {"smithy.api#documentation" => "<p>The start time of the session.</p>"}))
    SessionSummary.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'endTime', traits: {"smithy.api#documentation" => "<p>The end time of the session.</p>"}))
    SessionSummary.type = Types::SessionSummary
    SessionSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SessionSummary)
    SubnetIdList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetId)
    Tag.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'Key', traits: {"smithy.api#documentation" => "<p>The key of the tag.</p>", "smithy.api#required" => {}}))
    Tag.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>The value of the tag</p>", "smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    TagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the resource.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags of the resource.</p>", "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the\n         request. Idempotency ensures that an API request completes only once. With an idempotent\n         request, if the original request completes successfully, subsequent retries with the same\n         client token returns the result from the original successful request. </p>\n         <p>If you do not specify a client token, one is automatically generated by the Amazon Web Services\n         SDK.</p>", "smithy.api#idempotencyToken" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    ThrottlingException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ThrottlingException.add_member(:service_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceCode, location_name: 'serviceCode', traits: {"smithy.api#documentation" => "<p>The originating service.</p>"}))
    ThrottlingException.add_member(:quota_code, Smithy::Schema::Shapes::ShapeRef.new(shape: QuotaCode, location_name: 'quotaCode', traits: {"smithy.api#documentation" => "<p>The originating quota.</p>"}))
    ThrottlingException.add_member(:retry_after_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: RetryAfterSeconds, location_name: 'retryAfterSeconds', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Advice to clients on when the call can be safely retried.</p>", "smithy.api#httpHeader" => "Retry-After"}))
    ThrottlingException.type = Types::ThrottlingException
    TooManyTagsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: TagExceptionMessage, location_name: 'message'))
    TooManyTagsException.add_member(:resource_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'resourceName', traits: {"smithy.api#documentation" => "<p>Name of the resource affected.</p>"}))
    TooManyTagsException.type = Types::TooManyTagsException
    ToolbarConfiguration.add_member(:toolbar_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ToolbarType, location_name: 'toolbarType', traits: {"smithy.api#documentation" => "<p>The type of toolbar displayed during the session.</p>"}))
    ToolbarConfiguration.add_member(:visual_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: VisualMode, location_name: 'visualMode', traits: {"smithy.api#documentation" => "<p>The visual mode of the toolbar.</p>"}))
    ToolbarConfiguration.add_member(:hidden_toolbar_items, Smithy::Schema::Shapes::ShapeRef.new(shape: HiddenToolbarItemList, location_name: 'hiddenToolbarItems', traits: {"smithy.api#documentation" => "<p>The list of toolbar items to be hidden.</p>"}))
    ToolbarConfiguration.add_member(:max_display_resolution, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxDisplayResolution, location_name: 'maxDisplayResolution', traits: {"smithy.api#documentation" => "<p>The maximum display resolution that is allowed for the session.</p>"}))
    ToolbarConfiguration.type = Types::ToolbarConfiguration
    TrustStore.add_member(:associated_portal_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: ArnList, location_name: 'associatedPortalArns', traits: {"smithy.api#documentation" => "<p>A list of web portal ARNs that this trust store is associated with.</p>"}))
    TrustStore.add_member(:trust_store_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'trustStoreArn', traits: {"smithy.api#documentation" => "<p>The ARN of the trust store.</p>", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "trustStoreArn"}))
    TrustStore.type = Types::TrustStore
    TrustStoreSummary.add_member(:trust_store_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'trustStoreArn', traits: {"smithy.api#documentation" => "<p>The ARN of the trust store.</p>"}))
    TrustStoreSummary.type = Types::TrustStoreSummary
    TrustStoreSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TrustStoreSummary)
    UntagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the resource.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'tagKeys', traits: {"smithy.api#documentation" => "<p>The list of tag keys to remove from the resource.</p>", "smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateBrowserSettingsRequest.add_member(:browser_settings_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'browserSettingsArn', traits: {"smithy.api#documentation" => "<p>The ARN of the browser settings.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateBrowserSettingsRequest.add_member(:browser_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: BrowserPolicy, location_name: 'browserPolicy', traits: {"smithy.api#documentation" => "<p>A JSON string containing Chrome Enterprise policies that will be applied to all\n         streaming sessions. </p>"}))
    UpdateBrowserSettingsRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the\n         request. Idempotency ensures that an API request completes only once. With an idempotent\n         request, if the original request completes successfully, subsequent retries with the same\n         client token return the result from the original successful request. </p>\n         <p>If you do not specify a client token, one is automatically generated by the Amazon Web Services\n         SDK.</p>", "smithy.api#idempotencyToken" => {}}))
    UpdateBrowserSettingsRequest.type = Types::UpdateBrowserSettingsRequest
    UpdateBrowserSettingsResponse.add_member(:browser_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: BrowserSettings, location_name: 'browserSettings', traits: {"smithy.api#documentation" => "<p>The browser settings.</p>", "smithy.api#nestedProperties" => {}, "smithy.api#required" => {}}))
    UpdateBrowserSettingsResponse.type = Types::UpdateBrowserSettingsResponse
    UpdateDataProtectionSettingsRequest.add_member(:data_protection_settings_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'dataProtectionSettingsArn', traits: {"smithy.api#documentation" => "<p>The ARN of the data protection settings.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDataProtectionSettingsRequest.add_member(:inline_redaction_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: InlineRedactionConfiguration, location_name: 'inlineRedactionConfiguration', traits: {"smithy.api#documentation" => "<p>The inline redaction configuration of the data protection settings that will be applied to all sessions.</p>"}))
    UpdateDataProtectionSettingsRequest.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DisplayNameSafe, location_name: 'displayName', traits: {"smithy.api#documentation" => "<p>The display name of the data protection settings.</p>"}))
    UpdateDataProtectionSettingsRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: DescriptionSafe, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the data protection settings.</p>"}))
    UpdateDataProtectionSettingsRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the\n         request. Idempotency ensures that an API request completes only once. With an idempotent\n         request, if the original request completes successfully, subsequent retries with the same\n         client token return the result from the original successful request. </p>\n         <p>If you do not specify a client token, one is automatically generated by the Amazon Web Services\n         SDK.</p>", "smithy.api#idempotencyToken" => {}}))
    UpdateDataProtectionSettingsRequest.type = Types::UpdateDataProtectionSettingsRequest
    UpdateDataProtectionSettingsResponse.add_member(:data_protection_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: DataProtectionSettings, location_name: 'dataProtectionSettings', traits: {"smithy.api#documentation" => "<p>The data protection settings.</p>", "smithy.api#nestedProperties" => {}, "smithy.api#required" => {}}))
    UpdateDataProtectionSettingsResponse.type = Types::UpdateDataProtectionSettingsResponse
    UpdateIdentityProviderRequest.add_member(:identity_provider_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SubresourceARN, location_name: 'identityProviderArn', traits: {"smithy.api#documentation" => "<p>The ARN of the identity provider.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateIdentityProviderRequest.add_member(:identity_provider_name, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityProviderName, location_name: 'identityProviderName', traits: {"smithy.api#documentation" => "<p>The name of the identity provider.</p>"}))
    UpdateIdentityProviderRequest.add_member(:identity_provider_type, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityProviderType, location_name: 'identityProviderType', traits: {"smithy.api#documentation" => "<p>The type of the identity provider.</p>"}))
    UpdateIdentityProviderRequest.add_member(:identity_provider_details, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityProviderDetails, location_name: 'identityProviderDetails', traits: {"smithy.api#documentation" => "<p>The details of the identity provider. The following list describes the provider detail\n         keys for each identity provider type. </p>\n         <ul>\n            <li>\n               <p>For Google and Login with Amazon:</p>\n               <ul>\n                  <li>\n                     <p>\n                        <code>client_id</code>\n                     </p>\n                  </li>\n                  <li>\n                     <p>\n                        <code>client_secret</code>\n                     </p>\n                  </li>\n                  <li>\n                     <p>\n                        <code>authorize_scopes</code>\n                     </p>\n                  </li>\n               </ul>\n            </li>\n            <li>\n               <p>For Facebook:</p>\n               <ul>\n                  <li>\n                     <p>\n                        <code>client_id</code>\n                     </p>\n                  </li>\n                  <li>\n                     <p>\n                        <code>client_secret</code>\n                     </p>\n                  </li>\n                  <li>\n                     <p>\n                        <code>authorize_scopes</code>\n                     </p>\n                  </li>\n                  <li>\n                     <p>\n                        <code>api_version</code>\n                     </p>\n                  </li>\n               </ul>\n            </li>\n            <li>\n               <p>For Sign in with Apple:</p>\n               <ul>\n                  <li>\n                     <p>\n                        <code>client_id</code>\n                     </p>\n                  </li>\n                  <li>\n                     <p>\n                        <code>team_id</code>\n                     </p>\n                  </li>\n                  <li>\n                     <p>\n                        <code>key_id</code>\n                     </p>\n                  </li>\n                  <li>\n                     <p>\n                        <code>private_key</code>\n                     </p>\n                  </li>\n                  <li>\n                     <p>\n                        <code>authorize_scopes</code>\n                     </p>\n                  </li>\n               </ul>\n            </li>\n            <li>\n               <p>For OIDC providers:</p>\n               <ul>\n                  <li>\n                     <p>\n                        <code>client_id</code>\n                     </p>\n                  </li>\n                  <li>\n                     <p>\n                        <code>client_secret</code>\n                     </p>\n                  </li>\n                  <li>\n                     <p>\n                        <code>attributes_request_method</code>\n                     </p>\n                  </li>\n                  <li>\n                     <p>\n                        <code>oidc_issuer</code>\n                     </p>\n                  </li>\n                  <li>\n                     <p>\n                        <code>authorize_scopes</code>\n                     </p>\n                  </li>\n                  <li>\n                     <p>\n                        <code>authorize_url</code>\n                        <i>if not available from discovery URL specified by\n                           <code>oidc_issuer</code> key</i>\n                     </p>\n                  </li>\n                  <li>\n                     <p>\n                        <code>token_url</code>\n                        <i>if not available from discovery URL specified by\n                           <code>oidc_issuer</code> key</i>\n                     </p>\n                  </li>\n                  <li>\n                     <p>\n                        <code>attributes_url</code>\n                        <i>if not available from discovery URL specified by\n                           <code>oidc_issuer</code> key</i>\n                     </p>\n                  </li>\n                  <li>\n                     <p>\n                        <code>jwks_uri</code>\n                        <i>if not available from discovery URL specified by\n                           <code>oidc_issuer</code> key</i>\n                     </p>\n                  </li>\n               </ul>\n            </li>\n            <li>\n               <p>For SAML providers:</p>\n               <ul>\n                  <li>\n                     <p>\n                        <code>MetadataFile</code> OR <code>MetadataURL</code>\n                     </p>\n                  </li>\n                  <li>\n                     <p>\n                        <code>IDPSignout</code> (boolean) <i>optional</i>\n                     </p>\n                  </li>\n                  <li>\n                     <p>\n                        <code>IDPInit</code> (boolean) <i>optional</i>\n                     </p>\n                  </li>\n                  <li>\n                     <p>\n                        <code>RequestSigningAlgorithm</code> (string) <i>optional</i>\n                     - Only accepts <code>rsa-sha256</code>\n                     </p>\n                  </li>\n                  <li>\n                     <p>\n                        <code>EncryptedResponses</code> (boolean) <i>optional</i>\n                     </p>\n                  </li>\n               </ul>\n            </li>\n         </ul>"}))
    UpdateIdentityProviderRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the\n         request. Idempotency ensures that an API request completes only once. With an idempotent\n         request, if the original request completes successfully, subsequent retries with the same\n         client token return the result from the original successful request. </p>\n         <p>If you do not specify a client token, one is automatically generated by the Amazon Web Services\n         SDK.</p>", "smithy.api#idempotencyToken" => {}}))
    UpdateIdentityProviderRequest.type = Types::UpdateIdentityProviderRequest
    UpdateIdentityProviderResponse.add_member(:identity_provider, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityProvider, location_name: 'identityProvider', traits: {"smithy.api#documentation" => "<p>The identity provider.</p>", "smithy.api#nestedProperties" => {}, "smithy.api#required" => {}}))
    UpdateIdentityProviderResponse.type = Types::UpdateIdentityProviderResponse
    UpdateIpAccessSettingsRequest.add_member(:ip_access_settings_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'ipAccessSettingsArn', traits: {"smithy.api#documentation" => "<p>The ARN of the IP access settings.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateIpAccessSettingsRequest.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DisplayName, location_name: 'displayName', traits: {"smithy.api#documentation" => "<p>The display name of the IP access settings.</p>"}))
    UpdateIpAccessSettingsRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the IP access settings.</p>"}))
    UpdateIpAccessSettingsRequest.add_member(:ip_rules, Smithy::Schema::Shapes::ShapeRef.new(shape: IpRuleList, location_name: 'ipRules', traits: {"smithy.api#documentation" => "<p>The updated IP rules of the IP access settings.</p>"}))
    UpdateIpAccessSettingsRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the\n         request. Idempotency ensures that an API request completes only once. With an idempotent\n         request, if the original request completes successfully, subsequent retries with the same\n         client token return the result from the original successful request. </p>\n         <p>If you do not specify a client token, one is automatically generated by the Amazon Web Services\n         SDK.</p>", "smithy.api#idempotencyToken" => {}}))
    UpdateIpAccessSettingsRequest.type = Types::UpdateIpAccessSettingsRequest
    UpdateIpAccessSettingsResponse.add_member(:ip_access_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: IpAccessSettings, location_name: 'ipAccessSettings', traits: {"smithy.api#documentation" => "<p>The IP access settings.</p>", "smithy.api#nestedProperties" => {}, "smithy.api#required" => {}}))
    UpdateIpAccessSettingsResponse.type = Types::UpdateIpAccessSettingsResponse
    UpdateNetworkSettingsRequest.add_member(:network_settings_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'networkSettingsArn', traits: {"smithy.api#documentation" => "<p>The ARN of the network settings.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateNetworkSettingsRequest.add_member(:vpc_id, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcId, location_name: 'vpcId', traits: {"smithy.api#documentation" => "<p>The VPC that streaming instances will connect to.</p>"}))
    UpdateNetworkSettingsRequest.add_member(:subnet_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetIdList, location_name: 'subnetIds', traits: {"smithy.api#documentation" => "<p>The subnets in which network interfaces are created to connect streaming instances to\n         your VPC. At least two of these subnets must be in different availability zones.</p>"}))
    UpdateNetworkSettingsRequest.add_member(:security_group_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupIdList, location_name: 'securityGroupIds', traits: {"smithy.api#documentation" => "<p>One or more security groups used to control access from streaming instances to your\n         VPC.</p>"}))
    UpdateNetworkSettingsRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the\n         request. Idempotency ensures that an API request completes only once. With an idempotent\n         request, if the original request completes successfully, subsequent retries with the same\n         client token return the result from the original successful request. </p>\n         <p>If you do not specify a client token, one is automatically generated by the Amazon Web Services\n         SDK.</p>", "smithy.api#idempotencyToken" => {}}))
    UpdateNetworkSettingsRequest.type = Types::UpdateNetworkSettingsRequest
    UpdateNetworkSettingsResponse.add_member(:network_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkSettings, location_name: 'networkSettings', traits: {"smithy.api#documentation" => "<p>The network settings.</p>", "smithy.api#nestedProperties" => {}, "smithy.api#required" => {}}))
    UpdateNetworkSettingsResponse.type = Types::UpdateNetworkSettingsResponse
    UpdatePortalRequest.add_member(:portal_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'portalArn', traits: {"smithy.api#documentation" => "<p>The ARN of the web portal.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdatePortalRequest.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DisplayName, location_name: 'displayName', traits: {"smithy.api#documentation" => "<p>The name of the web portal. This is not visible to users who log into the web\n         portal.</p>"}))
    UpdatePortalRequest.add_member(:authentication_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationType, location_name: 'authenticationType', traits: {"smithy.api#documentation" => "<p>The type of authentication integration points used when signing into the web portal.\n         Defaults to <code>Standard</code>.</p>\n         <p>\n            <code>Standard</code> web portals are authenticated directly through your identity\n         provider. You need to call <code>CreateIdentityProvider</code> to integrate your identity\n         provider with your web portal. User and group access to your web portal is controlled\n         through your identity provider.</p>\n         <p>\n            <code>IAM Identity Center</code> web portals are authenticated through IAM Identity Center. Identity sources\n         (including external identity provider integration), plus user and group access to your web\n         portal, can be configured in the IAM Identity Center.</p>"}))
    UpdatePortalRequest.add_member(:instance_type, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceType, location_name: 'instanceType', traits: {"smithy.api#documentation" => "<p>The type and resources of the underlying instance.</p>"}))
    UpdatePortalRequest.add_member(:max_concurrent_sessions, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxConcurrentSessions, location_name: 'maxConcurrentSessions', traits: {"smithy.api#documentation" => "<p>The maximum number of concurrent sessions for the portal.</p>"}))
    UpdatePortalRequest.type = Types::UpdatePortalRequest
    UpdatePortalResponse.add_member(:portal, Smithy::Schema::Shapes::ShapeRef.new(shape: Portal, location_name: 'portal', traits: {"smithy.api#documentation" => "<p>The web portal.</p>", "smithy.api#nestedProperties" => {}}))
    UpdatePortalResponse.type = Types::UpdatePortalResponse
    UpdateSessionLoggerRequest.add_member(:session_logger_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'sessionLoggerArn', traits: {"smithy.api#documentation" => "<p>The ARN of the session logger to update.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateSessionLoggerRequest.add_member(:event_filter, Smithy::Schema::Shapes::ShapeRef.new(shape: EventFilter, location_name: 'eventFilter', traits: {"smithy.api#documentation" => "<p>The updated eventFilter.</p>"}))
    UpdateSessionLoggerRequest.add_member(:log_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: LogConfiguration, location_name: 'logConfiguration', traits: {"smithy.api#documentation" => "<p>The updated logConfiguration.</p>"}))
    UpdateSessionLoggerRequest.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DisplayNameSafe, location_name: 'displayName', traits: {"smithy.api#documentation" => "<p>The updated display name.</p>"}))
    UpdateSessionLoggerRequest.type = Types::UpdateSessionLoggerRequest
    UpdateSessionLoggerResponse.add_member(:session_logger, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionLogger, location_name: 'sessionLogger', traits: {"smithy.api#documentation" => "<p>The updated details of the session logger.</p>", "smithy.api#nestedProperties" => {}, "smithy.api#required" => {}}))
    UpdateSessionLoggerResponse.type = Types::UpdateSessionLoggerResponse
    UpdateTrustStoreRequest.add_member(:trust_store_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'trustStoreArn', traits: {"smithy.api#documentation" => "<p>The ARN of the trust store.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateTrustStoreRequest.add_member(:certificates_to_add, Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateList, location_name: 'certificatesToAdd', traits: {"smithy.api#documentation" => "<p>A list of CA certificates to add to the trust store.</p>", "smithy.api#notProperty" => {}}))
    UpdateTrustStoreRequest.add_member(:certificates_to_delete, Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateThumbprintList, location_name: 'certificatesToDelete', traits: {"smithy.api#documentation" => "<p>A list of CA certificates to delete from a trust store.</p>", "smithy.api#notProperty" => {}}))
    UpdateTrustStoreRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the\n         request. Idempotency ensures that an API request completes only once. With an idempotent\n         request, if the original request completes successfully, subsequent retries with the same\n         client token return the result from the original successful request. </p>\n         <p>If you do not specify a client token, one is automatically generated by the Amazon Web Services\n         SDK.</p>", "smithy.api#idempotencyToken" => {}}))
    UpdateTrustStoreRequest.type = Types::UpdateTrustStoreRequest
    UpdateTrustStoreResponse.add_member(:trust_store_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'trustStoreArn', traits: {"smithy.api#documentation" => "<p>The ARN of the trust store.</p>", "smithy.api#required" => {}}))
    UpdateTrustStoreResponse.type = Types::UpdateTrustStoreResponse
    UpdateUserAccessLoggingSettingsRequest.add_member(:user_access_logging_settings_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'userAccessLoggingSettingsArn', traits: {"smithy.api#documentation" => "<p>The ARN of the user access logging settings.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateUserAccessLoggingSettingsRequest.add_member(:kinesis_stream_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: KinesisStreamArn, location_name: 'kinesisStreamArn', traits: {"smithy.api#documentation" => "<p>The ARN of the Kinesis stream.</p>"}))
    UpdateUserAccessLoggingSettingsRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the\n         request. Idempotency ensures that an API request completes only once. With an idempotent\n         request, if the original request completes successfully, subsequent retries with the same\n         client token return the result from the original successful request. </p>\n         <p>If you do not specify a client token, one is automatically generated by the Amazon Web Services\n         SDK.</p>", "smithy.api#idempotencyToken" => {}}))
    UpdateUserAccessLoggingSettingsRequest.type = Types::UpdateUserAccessLoggingSettingsRequest
    UpdateUserAccessLoggingSettingsResponse.add_member(:user_access_logging_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: UserAccessLoggingSettings, location_name: 'userAccessLoggingSettings', traits: {"smithy.api#documentation" => "<p>The user access logging settings.</p>", "smithy.api#nestedProperties" => {}, "smithy.api#required" => {}}))
    UpdateUserAccessLoggingSettingsResponse.type = Types::UpdateUserAccessLoggingSettingsResponse
    UpdateUserSettingsRequest.add_member(:user_settings_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'userSettingsArn', traits: {"smithy.api#documentation" => "<p>The ARN of the user settings.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateUserSettingsRequest.add_member(:copy_allowed, Smithy::Schema::Shapes::ShapeRef.new(shape: EnabledType, location_name: 'copyAllowed', traits: {"smithy.api#documentation" => "<p>Specifies whether the user can copy text from the streaming session to the local\n         device.</p>"}))
    UpdateUserSettingsRequest.add_member(:paste_allowed, Smithy::Schema::Shapes::ShapeRef.new(shape: EnabledType, location_name: 'pasteAllowed', traits: {"smithy.api#documentation" => "<p>Specifies whether the user can paste text from the local device to the streaming\n         session.</p>"}))
    UpdateUserSettingsRequest.add_member(:download_allowed, Smithy::Schema::Shapes::ShapeRef.new(shape: EnabledType, location_name: 'downloadAllowed', traits: {"smithy.api#documentation" => "<p>Specifies whether the user can download files from the streaming session to the local\n         device.</p>"}))
    UpdateUserSettingsRequest.add_member(:upload_allowed, Smithy::Schema::Shapes::ShapeRef.new(shape: EnabledType, location_name: 'uploadAllowed', traits: {"smithy.api#documentation" => "<p>Specifies whether the user can upload files from the local device to the streaming\n         session.</p>"}))
    UpdateUserSettingsRequest.add_member(:print_allowed, Smithy::Schema::Shapes::ShapeRef.new(shape: EnabledType, location_name: 'printAllowed', traits: {"smithy.api#documentation" => "<p>Specifies whether the user can print to the local device.</p>"}))
    UpdateUserSettingsRequest.add_member(:disconnect_timeout_in_minutes, Smithy::Schema::Shapes::ShapeRef.new(shape: DisconnectTimeoutInMinutes, location_name: 'disconnectTimeoutInMinutes', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>The amount of time that a streaming session remains active after users\n         disconnect.</p>"}))
    UpdateUserSettingsRequest.add_member(:idle_disconnect_timeout_in_minutes, Smithy::Schema::Shapes::ShapeRef.new(shape: IdleDisconnectTimeoutInMinutes, location_name: 'idleDisconnectTimeoutInMinutes', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>The amount of time that users can be idle (inactive) before they are disconnected from\n         their streaming session and the disconnect timeout interval begins.</p>"}))
    UpdateUserSettingsRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the\n         request. Idempotency ensures that an API request completes only once. With an idempotent\n         request, if the original request completes successfully, subsequent retries with the same\n         client token return the result from the original successful request. </p>\n         <p>If you do not specify a client token, one is automatically generated by the Amazon Web Services\n         SDK.</p>", "smithy.api#idempotencyToken" => {}}))
    UpdateUserSettingsRequest.add_member(:cookie_synchronization_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: CookieSynchronizationConfiguration, location_name: 'cookieSynchronizationConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration that specifies which cookies should be synchronized from the end\n         user's local browser to the remote browser.</p>\n         <p>If the allowlist and blocklist are empty, the configuration becomes null.</p>"}))
    UpdateUserSettingsRequest.add_member(:deep_link_allowed, Smithy::Schema::Shapes::ShapeRef.new(shape: EnabledType, location_name: 'deepLinkAllowed', traits: {"smithy.api#documentation" => "<p>Specifies whether the user can use deep links that open automatically when connecting to\n         a session.</p>"}))
    UpdateUserSettingsRequest.add_member(:toolbar_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ToolbarConfiguration, location_name: 'toolbarConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration of the toolbar. This allows administrators to select the toolbar type and visual mode, set maximum display resolution for sessions, and choose which items are visible to end users during their sessions. If administrators do not modify these settings, end users retain control over their toolbar preferences.</p>"}))
    UpdateUserSettingsRequest.type = Types::UpdateUserSettingsRequest
    UpdateUserSettingsResponse.add_member(:user_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: UserSettings, location_name: 'userSettings', traits: {"smithy.api#documentation" => "<p>The user settings.</p>", "smithy.api#nestedProperties" => {}, "smithy.api#required" => {}}))
    UpdateUserSettingsResponse.type = Types::UpdateUserSettingsResponse
    UserAccessLoggingSettings.add_member(:user_access_logging_settings_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'userAccessLoggingSettingsArn', traits: {"smithy.api#documentation" => "<p>The ARN of the user access logging settings.</p>", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "userAccessLoggingSettingsArn"}))
    UserAccessLoggingSettings.add_member(:associated_portal_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: ArnList, location_name: 'associatedPortalArns', traits: {"smithy.api#documentation" => "<p>A list of web portal ARNs that this user access logging settings is associated\n         with.</p>"}))
    UserAccessLoggingSettings.add_member(:kinesis_stream_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: KinesisStreamArn, location_name: 'kinesisStreamArn', traits: {"smithy.api#documentation" => "<p>The ARN of the Kinesis stream.</p>"}))
    UserAccessLoggingSettings.type = Types::UserAccessLoggingSettings
    UserAccessLoggingSettingsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: UserAccessLoggingSettingsSummary)
    UserAccessLoggingSettingsSummary.add_member(:user_access_logging_settings_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'userAccessLoggingSettingsArn', traits: {"smithy.api#documentation" => "<p>The ARN of the user access logging settings.</p>", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "userAccessLoggingSettingsArn"}))
    UserAccessLoggingSettingsSummary.add_member(:kinesis_stream_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: KinesisStreamArn, location_name: 'kinesisStreamArn', traits: {"smithy.api#documentation" => "<p>The ARN of the Kinesis stream.</p>"}))
    UserAccessLoggingSettingsSummary.type = Types::UserAccessLoggingSettingsSummary
    UserSettings.add_member(:user_settings_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'userSettingsArn', traits: {"smithy.api#documentation" => "<p>The ARN of the user settings.</p>", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "userSettingsArn"}))
    UserSettings.add_member(:associated_portal_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: ArnList, location_name: 'associatedPortalArns', traits: {"smithy.api#documentation" => "<p>A list of web portal ARNs that this user settings is associated with.</p>"}))
    UserSettings.add_member(:copy_allowed, Smithy::Schema::Shapes::ShapeRef.new(shape: EnabledType, location_name: 'copyAllowed', traits: {"smithy.api#documentation" => "<p>Specifies whether the user can copy text from the streaming session to the local\n         device.</p>"}))
    UserSettings.add_member(:paste_allowed, Smithy::Schema::Shapes::ShapeRef.new(shape: EnabledType, location_name: 'pasteAllowed', traits: {"smithy.api#documentation" => "<p>Specifies whether the user can paste text from the local device to the streaming\n         session.</p>"}))
    UserSettings.add_member(:download_allowed, Smithy::Schema::Shapes::ShapeRef.new(shape: EnabledType, location_name: 'downloadAllowed', traits: {"smithy.api#documentation" => "<p>Specifies whether the user can download files from the streaming session to the local\n         device.</p>"}))
    UserSettings.add_member(:upload_allowed, Smithy::Schema::Shapes::ShapeRef.new(shape: EnabledType, location_name: 'uploadAllowed', traits: {"smithy.api#documentation" => "<p>Specifies whether the user can upload files from the local device to the streaming\n         session.</p>"}))
    UserSettings.add_member(:print_allowed, Smithy::Schema::Shapes::ShapeRef.new(shape: EnabledType, location_name: 'printAllowed', traits: {"smithy.api#documentation" => "<p>Specifies whether the user can print to the local device.</p>"}))
    UserSettings.add_member(:disconnect_timeout_in_minutes, Smithy::Schema::Shapes::ShapeRef.new(shape: DisconnectTimeoutInMinutes, location_name: 'disconnectTimeoutInMinutes', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>The amount of time that a streaming session remains active after users\n         disconnect.</p>"}))
    UserSettings.add_member(:idle_disconnect_timeout_in_minutes, Smithy::Schema::Shapes::ShapeRef.new(shape: IdleDisconnectTimeoutInMinutes, location_name: 'idleDisconnectTimeoutInMinutes', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>The amount of time that users can be idle (inactive) before they are disconnected from\n         their streaming session and the disconnect timeout interval begins.</p>"}))
    UserSettings.add_member(:cookie_synchronization_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: CookieSynchronizationConfiguration, location_name: 'cookieSynchronizationConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration that specifies which cookies should be synchronized from the end\n         user's local browser to the remote browser.</p>"}))
    UserSettings.add_member(:customer_managed_key, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyArn, location_name: 'customerManagedKey', traits: {"smithy.api#documentation" => "<p>The customer managed key used to encrypt sensitive information in the user\n         settings.</p>"}))
    UserSettings.add_member(:additional_encryption_context, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionContextMap, location_name: 'additionalEncryptionContext', traits: {"smithy.api#documentation" => "<p>The additional encryption context of the user settings.</p>"}))
    UserSettings.add_member(:deep_link_allowed, Smithy::Schema::Shapes::ShapeRef.new(shape: EnabledType, location_name: 'deepLinkAllowed', traits: {"smithy.api#documentation" => "<p>Specifies whether the user can use deep links that open automatically when connecting to\n         a session.</p>"}))
    UserSettings.add_member(:toolbar_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ToolbarConfiguration, location_name: 'toolbarConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration of the toolbar. This allows administrators to select the toolbar type and visual mode, set maximum display resolution for sessions, and choose which items are visible to end users during their sessions. If administrators do not modify these settings, end users retain control over their toolbar preferences.</p>"}))
    UserSettings.type = Types::UserSettings
    UserSettingsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: UserSettingsSummary)
    UserSettingsSummary.add_member(:user_settings_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'userSettingsArn', traits: {"smithy.api#documentation" => "<p>The ARN of the user settings.</p>", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "userSettingsArn"}))
    UserSettingsSummary.add_member(:copy_allowed, Smithy::Schema::Shapes::ShapeRef.new(shape: EnabledType, location_name: 'copyAllowed', traits: {"smithy.api#documentation" => "<p>Specifies whether the user can copy text from the streaming session to the local\n         device.</p>"}))
    UserSettingsSummary.add_member(:paste_allowed, Smithy::Schema::Shapes::ShapeRef.new(shape: EnabledType, location_name: 'pasteAllowed', traits: {"smithy.api#documentation" => "<p>Specifies whether the user can paste text from the local device to the streaming\n         session.</p>"}))
    UserSettingsSummary.add_member(:download_allowed, Smithy::Schema::Shapes::ShapeRef.new(shape: EnabledType, location_name: 'downloadAllowed', traits: {"smithy.api#documentation" => "<p>Specifies whether the user can download files from the streaming session to the local\n         device.</p>"}))
    UserSettingsSummary.add_member(:upload_allowed, Smithy::Schema::Shapes::ShapeRef.new(shape: EnabledType, location_name: 'uploadAllowed', traits: {"smithy.api#documentation" => "<p>Specifies whether the user can upload files from the local device to the streaming\n         session.</p>"}))
    UserSettingsSummary.add_member(:print_allowed, Smithy::Schema::Shapes::ShapeRef.new(shape: EnabledType, location_name: 'printAllowed', traits: {"smithy.api#documentation" => "<p>Specifies whether the user can print to the local device.</p>"}))
    UserSettingsSummary.add_member(:disconnect_timeout_in_minutes, Smithy::Schema::Shapes::ShapeRef.new(shape: DisconnectTimeoutInMinutes, location_name: 'disconnectTimeoutInMinutes', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>The amount of time that a streaming session remains active after users\n         disconnect.</p>"}))
    UserSettingsSummary.add_member(:idle_disconnect_timeout_in_minutes, Smithy::Schema::Shapes::ShapeRef.new(shape: IdleDisconnectTimeoutInMinutes, location_name: 'idleDisconnectTimeoutInMinutes', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>The amount of time that users can be idle (inactive) before they are disconnected from\n         their streaming session and the disconnect timeout interval begins.</p>"}))
    UserSettingsSummary.add_member(:cookie_synchronization_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: CookieSynchronizationConfiguration, location_name: 'cookieSynchronizationConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration that specifies which cookies should be synchronized from the end\n         user's local browser to the remote browser.</p>"}))
    UserSettingsSummary.add_member(:deep_link_allowed, Smithy::Schema::Shapes::ShapeRef.new(shape: EnabledType, location_name: 'deepLinkAllowed', traits: {"smithy.api#documentation" => "<p>Specifies whether the user can use deep links that open automatically when connecting to\n         a session.</p>"}))
    UserSettingsSummary.add_member(:toolbar_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ToolbarConfiguration, location_name: 'toolbarConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration of the toolbar. This allows administrators to select the toolbar type and visual mode, set maximum display resolution for sessions, and choose which items are visible to end users during their sessions. If administrators do not modify these settings, end users retain control over their toolbar preferences.</p>"}))
    UserSettingsSummary.type = Types::UserSettingsSummary
    ValidationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ValidationException.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: 'reason', traits: {"smithy.api#documentation" => "<p>Reason the request failed validation</p>"}))
    ValidationException.add_member(:field_list, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: 'fieldList', traits: {"smithy.api#documentation" => "<p>The field that caused the error.</p>"}))
    ValidationException.type = Types::ValidationException
    ValidationExceptionField.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: FieldName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the field that failed validation.</p>", "smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message describing why the field failed validation.</p>", "smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFieldList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionField)

    AWSErmineControlPlaneService = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.workspacesweb#AWSErmineControlPlaneService"
      service.name = "AWSErmineControlPlaneService"
      service.version = "2020-07-08"
      service.traits = {"aws.api#service" => {"sdkId" => "WorkSpaces Web", "arnNamespace" => "workspaces-web", "cloudFormationName" => "WorkSpacesWeb", "cloudTrailEventSource" => "workspaces-web.amazonaws.com", "endpointPrefix" => "workspaces-web"}, "aws.api#tagEnabled" => {}, "aws.auth#sigv4" => {"name" => "workspaces-web"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "Amazon WorkSpaces Web"}
      service.add_operation(:associate_browser_settings, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#AssociateBrowserSettings"
        operation.name = "AssociateBrowserSettings"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateBrowserSettingsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateBrowserSettingsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/portals/{portalArn+}/browserSettings", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:associate_data_protection_settings, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#AssociateDataProtectionSettings"
        operation.name = "AssociateDataProtectionSettings"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateDataProtectionSettingsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateDataProtectionSettingsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/portals/{portalArn+}/dataProtectionSettings", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:associate_ip_access_settings, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#AssociateIpAccessSettings"
        operation.name = "AssociateIpAccessSettings"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateIpAccessSettingsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateIpAccessSettingsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/portals/{portalArn+}/ipAccessSettings", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:associate_network_settings, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#AssociateNetworkSettings"
        operation.name = "AssociateNetworkSettings"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateNetworkSettingsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateNetworkSettingsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/portals/{portalArn+}/networkSettings", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:associate_session_logger, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#AssociateSessionLogger"
        operation.name = "AssociateSessionLogger"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateSessionLoggerRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateSessionLoggerResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/portals/{portalArn+}/sessionLogger", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:associate_trust_store, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#AssociateTrustStore"
        operation.name = "AssociateTrustStore"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateTrustStoreRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateTrustStoreResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/portals/{portalArn+}/trustStores", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:associate_user_access_logging_settings, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#AssociateUserAccessLoggingSettings"
        operation.name = "AssociateUserAccessLoggingSettings"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateUserAccessLoggingSettingsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateUserAccessLoggingSettingsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/portals/{portalArn+}/userAccessLoggingSettings", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:associate_user_settings, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#AssociateUserSettings"
        operation.name = "AssociateUserSettings"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateUserSettingsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateUserSettingsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/portals/{portalArn+}/userSettings", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_browser_settings, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#CreateBrowserSettings"
        operation.name = "CreateBrowserSettings"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateBrowserSettingsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateBrowserSettingsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/browserSettings", "code" => 200}}
      end)
      service.add_operation(:create_data_protection_settings, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#CreateDataProtectionSettings"
        operation.name = "CreateDataProtectionSettings"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDataProtectionSettingsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDataProtectionSettingsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/dataProtectionSettings", "code" => 200}}
      end)
      service.add_operation(:create_identity_provider, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#CreateIdentityProvider"
        operation.name = "CreateIdentityProvider"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateIdentityProviderRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateIdentityProviderResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/identityProviders", "code" => 200}}
      end)
      service.add_operation(:create_ip_access_settings, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#CreateIpAccessSettings"
        operation.name = "CreateIpAccessSettings"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateIpAccessSettingsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateIpAccessSettingsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ipAccessSettings", "code" => 200}}
      end)
      service.add_operation(:create_network_settings, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#CreateNetworkSettings"
        operation.name = "CreateNetworkSettings"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateNetworkSettingsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateNetworkSettingsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/networkSettings", "code" => 200}}
      end)
      service.add_operation(:create_portal, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#CreatePortal"
        operation.name = "CreatePortal"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreatePortalRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreatePortalResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/portals", "code" => 200}}
      end)
      service.add_operation(:create_session_logger, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#CreateSessionLogger"
        operation.name = "CreateSessionLogger"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSessionLoggerRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSessionLoggerResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/sessionLoggers", "code" => 200}}
      end)
      service.add_operation(:create_trust_store, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#CreateTrustStore"
        operation.name = "CreateTrustStore"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTrustStoreRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTrustStoreResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/trustStores", "code" => 200}}
      end)
      service.add_operation(:create_user_access_logging_settings, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#CreateUserAccessLoggingSettings"
        operation.name = "CreateUserAccessLoggingSettings"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateUserAccessLoggingSettingsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateUserAccessLoggingSettingsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/userAccessLoggingSettings", "code" => 200}}
      end)
      service.add_operation(:create_user_settings, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#CreateUserSettings"
        operation.name = "CreateUserSettings"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateUserSettingsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateUserSettingsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/userSettings", "code" => 200}}
      end)
      service.add_operation(:delete_browser_settings, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#DeleteBrowserSettings"
        operation.name = "DeleteBrowserSettings"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteBrowserSettingsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteBrowserSettingsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/browserSettings/{browserSettingsArn+}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_data_protection_settings, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#DeleteDataProtectionSettings"
        operation.name = "DeleteDataProtectionSettings"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDataProtectionSettingsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDataProtectionSettingsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/dataProtectionSettings/{dataProtectionSettingsArn+}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_identity_provider, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#DeleteIdentityProvider"
        operation.name = "DeleteIdentityProvider"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteIdentityProviderRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteIdentityProviderResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/identityProviders/{identityProviderArn+}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_ip_access_settings, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#DeleteIpAccessSettings"
        operation.name = "DeleteIpAccessSettings"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteIpAccessSettingsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteIpAccessSettingsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/ipAccessSettings/{ipAccessSettingsArn+}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_network_settings, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#DeleteNetworkSettings"
        operation.name = "DeleteNetworkSettings"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteNetworkSettingsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteNetworkSettingsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/networkSettings/{networkSettingsArn+}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_portal, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#DeletePortal"
        operation.name = "DeletePortal"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePortalRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePortalResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/portals/{portalArn+}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_session_logger, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#DeleteSessionLogger"
        operation.name = "DeleteSessionLogger"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSessionLoggerRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSessionLoggerResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/sessionLoggers/{sessionLoggerArn+}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_trust_store, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#DeleteTrustStore"
        operation.name = "DeleteTrustStore"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTrustStoreRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTrustStoreResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/trustStores/{trustStoreArn+}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_user_access_logging_settings, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#DeleteUserAccessLoggingSettings"
        operation.name = "DeleteUserAccessLoggingSettings"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteUserAccessLoggingSettingsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteUserAccessLoggingSettingsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/userAccessLoggingSettings/{userAccessLoggingSettingsArn+}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_user_settings, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#DeleteUserSettings"
        operation.name = "DeleteUserSettings"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteUserSettingsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteUserSettingsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/userSettings/{userSettingsArn+}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:disassociate_browser_settings, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#DisassociateBrowserSettings"
        operation.name = "DisassociateBrowserSettings"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateBrowserSettingsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateBrowserSettingsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/portals/{portalArn+}/browserSettings", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:disassociate_data_protection_settings, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#DisassociateDataProtectionSettings"
        operation.name = "DisassociateDataProtectionSettings"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateDataProtectionSettingsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateDataProtectionSettingsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/portals/{portalArn+}/dataProtectionSettings", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:disassociate_ip_access_settings, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#DisassociateIpAccessSettings"
        operation.name = "DisassociateIpAccessSettings"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateIpAccessSettingsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateIpAccessSettingsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/portals/{portalArn+}/ipAccessSettings", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:disassociate_network_settings, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#DisassociateNetworkSettings"
        operation.name = "DisassociateNetworkSettings"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateNetworkSettingsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateNetworkSettingsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/portals/{portalArn+}/networkSettings", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:disassociate_session_logger, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#DisassociateSessionLogger"
        operation.name = "DisassociateSessionLogger"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateSessionLoggerRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateSessionLoggerResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/portals/{portalArn+}/sessionLogger", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:disassociate_trust_store, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#DisassociateTrustStore"
        operation.name = "DisassociateTrustStore"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateTrustStoreRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateTrustStoreResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/portals/{portalArn+}/trustStores", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:disassociate_user_access_logging_settings, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#DisassociateUserAccessLoggingSettings"
        operation.name = "DisassociateUserAccessLoggingSettings"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateUserAccessLoggingSettingsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateUserAccessLoggingSettingsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/portals/{portalArn+}/userAccessLoggingSettings", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:disassociate_user_settings, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#DisassociateUserSettings"
        operation.name = "DisassociateUserSettings"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateUserSettingsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateUserSettingsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/portals/{portalArn+}/userSettings", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:expire_session, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#ExpireSession"
        operation.name = "ExpireSession"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ExpireSessionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ExpireSessionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/portals/{portalId}/sessions/{sessionId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_browser_settings, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#GetBrowserSettings"
        operation.name = "GetBrowserSettings"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetBrowserSettingsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetBrowserSettingsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/browserSettings/{browserSettingsArn+}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_data_protection_settings, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#GetDataProtectionSettings"
        operation.name = "GetDataProtectionSettings"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDataProtectionSettingsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDataProtectionSettingsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/dataProtectionSettings/{dataProtectionSettingsArn+}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_identity_provider, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#GetIdentityProvider"
        operation.name = "GetIdentityProvider"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetIdentityProviderRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetIdentityProviderResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/identityProviders/{identityProviderArn+}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_ip_access_settings, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#GetIpAccessSettings"
        operation.name = "GetIpAccessSettings"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetIpAccessSettingsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetIpAccessSettingsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/ipAccessSettings/{ipAccessSettingsArn+}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_network_settings, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#GetNetworkSettings"
        operation.name = "GetNetworkSettings"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetNetworkSettingsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetNetworkSettingsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/networkSettings/{networkSettingsArn+}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_portal, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#GetPortal"
        operation.name = "GetPortal"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetPortalRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetPortalResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/portals/{portalArn+}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_portal_service_provider_metadata, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#GetPortalServiceProviderMetadata"
        operation.name = "GetPortalServiceProviderMetadata"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetPortalServiceProviderMetadataRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetPortalServiceProviderMetadataResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/portalIdp/{portalArn+}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_session, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#GetSession"
        operation.name = "GetSession"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSessionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSessionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/portals/{portalId}/sessions/{sessionId}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_session_logger, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#GetSessionLogger"
        operation.name = "GetSessionLogger"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSessionLoggerRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSessionLoggerResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/sessionLoggers/{sessionLoggerArn+}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_trust_store, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#GetTrustStore"
        operation.name = "GetTrustStore"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetTrustStoreRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetTrustStoreResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/trustStores/{trustStoreArn+}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_trust_store_certificate, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#GetTrustStoreCertificate"
        operation.name = "GetTrustStoreCertificate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetTrustStoreCertificateRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetTrustStoreCertificateResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/trustStores/{trustStoreArn+}/certificate", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_user_access_logging_settings, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#GetUserAccessLoggingSettings"
        operation.name = "GetUserAccessLoggingSettings"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetUserAccessLoggingSettingsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetUserAccessLoggingSettingsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/userAccessLoggingSettings/{userAccessLoggingSettingsArn+}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_user_settings, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#GetUserSettings"
        operation.name = "GetUserSettings"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetUserSettingsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetUserSettingsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/userSettings/{userSettingsArn+}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_browser_settings, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#ListBrowserSettings"
        operation.name = "ListBrowserSettings"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListBrowserSettingsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListBrowserSettingsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/browserSettings", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListBrowserSettings.new
      end)
      service.add_operation(:list_data_protection_settings, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#ListDataProtectionSettings"
        operation.name = "ListDataProtectionSettings"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDataProtectionSettingsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDataProtectionSettingsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/dataProtectionSettings", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListDataProtectionSettings.new
      end)
      service.add_operation(:list_identity_providers, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#ListIdentityProviders"
        operation.name = "ListIdentityProviders"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListIdentityProvidersRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListIdentityProvidersResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/portals/{portalArn+}/identityProviders", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListIdentityProviders.new
      end)
      service.add_operation(:list_ip_access_settings, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#ListIpAccessSettings"
        operation.name = "ListIpAccessSettings"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListIpAccessSettingsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListIpAccessSettingsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/ipAccessSettings", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListIpAccessSettings.new
      end)
      service.add_operation(:list_network_settings, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#ListNetworkSettings"
        operation.name = "ListNetworkSettings"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListNetworkSettingsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListNetworkSettingsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/networkSettings", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListNetworkSettings.new
      end)
      service.add_operation(:list_portals, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#ListPortals"
        operation.name = "ListPortals"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPortalsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPortalsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/portals", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListPortals.new
      end)
      service.add_operation(:list_session_loggers, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#ListSessionLoggers"
        operation.name = "ListSessionLoggers"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSessionLoggersRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSessionLoggersResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/sessionLoggers", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListSessionLoggers.new
      end)
      service.add_operation(:list_sessions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#ListSessions"
        operation.name = "ListSessions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSessionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSessionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/portals/{portalId}/sessions", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListSessions.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{resourceArn+}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_trust_store_certificates, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#ListTrustStoreCertificates"
        operation.name = "ListTrustStoreCertificates"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTrustStoreCertificatesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTrustStoreCertificatesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/trustStores/{trustStoreArn+}/certificates", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListTrustStoreCertificates.new
      end)
      service.add_operation(:list_trust_stores, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#ListTrustStores"
        operation.name = "ListTrustStores"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTrustStoresRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTrustStoresResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/trustStores", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListTrustStores.new
      end)
      service.add_operation(:list_user_access_logging_settings, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#ListUserAccessLoggingSettings"
        operation.name = "ListUserAccessLoggingSettings"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListUserAccessLoggingSettingsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListUserAccessLoggingSettingsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/userAccessLoggingSettings", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListUserAccessLoggingSettings.new
      end)
      service.add_operation(:list_user_settings, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#ListUserSettings"
        operation.name = "ListUserSettings"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListUserSettingsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListUserSettingsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/userSettings", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListUserSettings.new
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags/{resourceArn+}", "code" => 200}}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{resourceArn+}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_browser_settings, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#UpdateBrowserSettings"
        operation.name = "UpdateBrowserSettings"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateBrowserSettingsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateBrowserSettingsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/browserSettings/{browserSettingsArn+}", "code" => 200}}
      end)
      service.add_operation(:update_data_protection_settings, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#UpdateDataProtectionSettings"
        operation.name = "UpdateDataProtectionSettings"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDataProtectionSettingsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDataProtectionSettingsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/dataProtectionSettings/{dataProtectionSettingsArn+}", "code" => 200}}
      end)
      service.add_operation(:update_identity_provider, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#UpdateIdentityProvider"
        operation.name = "UpdateIdentityProvider"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateIdentityProviderRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateIdentityProviderResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/identityProviders/{identityProviderArn+}", "code" => 200}}
      end)
      service.add_operation(:update_ip_access_settings, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#UpdateIpAccessSettings"
        operation.name = "UpdateIpAccessSettings"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateIpAccessSettingsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateIpAccessSettingsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/ipAccessSettings/{ipAccessSettingsArn+}", "code" => 200}}
      end)
      service.add_operation(:update_network_settings, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#UpdateNetworkSettings"
        operation.name = "UpdateNetworkSettings"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateNetworkSettingsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateNetworkSettingsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/networkSettings/{networkSettingsArn+}", "code" => 200}}
      end)
      service.add_operation(:update_portal, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#UpdatePortal"
        operation.name = "UpdatePortal"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePortalRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePortalResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/portals/{portalArn+}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_session_logger, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#UpdateSessionLogger"
        operation.name = "UpdateSessionLogger"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSessionLoggerRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSessionLoggerResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/sessionLoggers/{sessionLoggerArn+}", "code" => 200}}
      end)
      service.add_operation(:update_trust_store, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#UpdateTrustStore"
        operation.name = "UpdateTrustStore"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTrustStoreRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTrustStoreResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/trustStores/{trustStoreArn+}", "code" => 200}}
      end)
      service.add_operation(:update_user_access_logging_settings, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#UpdateUserAccessLoggingSettings"
        operation.name = "UpdateUserAccessLoggingSettings"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateUserAccessLoggingSettingsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateUserAccessLoggingSettingsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/userAccessLoggingSettings/{userAccessLoggingSettingsArn+}", "code" => 200}}
      end)
      service.add_operation(:update_user_settings, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#UpdateUserSettings"
        operation.name = "UpdateUserSettings"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateUserSettingsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateUserSettingsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/userSettings/{userSettingsArn+}", "code" => 200}}
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
