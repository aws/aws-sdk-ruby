# frozen_string_literal: true

# This is generated code!

module Aws::WorkSpacesWeb
  # This module contains a schema composed of shapes used by the client.
  module Schema

    ARN = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspacesweb#ARN", name: "ARN", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:[\\w+=\\/,.@-]+:[a-zA-Z0-9\\-]+:[a-zA-Z0-9\\-]*:[a-zA-Z0-9]{1,12}:[a-zA-Z]+(\\/[a-fA-F0-9\\-]{36})+$"})
    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    ArnList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspacesweb#ArnList", name: "ArnList")
    AssociateBrowserSettingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#AssociateBrowserSettingsRequest", name: "AssociateBrowserSettingsRequest")
    AssociateBrowserSettingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#AssociateBrowserSettingsResponse", name: "AssociateBrowserSettingsResponse")
    AssociateDataProtectionSettingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#AssociateDataProtectionSettingsRequest", name: "AssociateDataProtectionSettingsRequest")
    AssociateDataProtectionSettingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#AssociateDataProtectionSettingsResponse", name: "AssociateDataProtectionSettingsResponse")
    AssociateIpAccessSettingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#AssociateIpAccessSettingsRequest", name: "AssociateIpAccessSettingsRequest")
    AssociateIpAccessSettingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#AssociateIpAccessSettingsResponse", name: "AssociateIpAccessSettingsResponse")
    AssociateNetworkSettingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#AssociateNetworkSettingsRequest", name: "AssociateNetworkSettingsRequest")
    AssociateNetworkSettingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#AssociateNetworkSettingsResponse", name: "AssociateNetworkSettingsResponse")
    AssociateSessionLoggerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#AssociateSessionLoggerRequest", name: "AssociateSessionLoggerRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.workspacesweb#PortalResource"}, {"resource" => "com.amazonaws.workspacesweb#SessionLoggerResource"}]})
    AssociateSessionLoggerResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#AssociateSessionLoggerResponse", name: "AssociateSessionLoggerResponse", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.workspacesweb#PortalResource"}, {"resource" => "com.amazonaws.workspacesweb#SessionLoggerResource"}]})
    AssociateTrustStoreRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#AssociateTrustStoreRequest", name: "AssociateTrustStoreRequest")
    AssociateTrustStoreResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#AssociateTrustStoreResponse", name: "AssociateTrustStoreResponse")
    AssociateUserAccessLoggingSettingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#AssociateUserAccessLoggingSettingsRequest", name: "AssociateUserAccessLoggingSettingsRequest")
    AssociateUserAccessLoggingSettingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#AssociateUserAccessLoggingSettingsResponse", name: "AssociateUserAccessLoggingSettingsResponse")
    AssociateUserSettingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#AssociateUserSettingsRequest", name: "AssociateUserSettingsRequest")
    AssociateUserSettingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#AssociateUserSettingsResponse", name: "AssociateUserSettingsResponse")
    AuthenticationType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspacesweb#AuthenticationType", name: "AuthenticationType", traits: {"smithy.api#enum" => [{"value" => "Standard", "name" => "STANDARD"}, {"value" => "IAM_Identity_Center", "name" => "IAM_IDENTITY_CENTER"}]})
    BlockedCategories = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspacesweb#BlockedCategories", name: "BlockedCategories", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#uniqueItems" => {}})
    BrandingConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#BrandingConfiguration", name: "BrandingConfiguration")
    BrandingConfigurationCreateInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#BrandingConfigurationCreateInput", name: "BrandingConfigurationCreateInput")
    BrandingConfigurationUpdateInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#BrandingConfigurationUpdateInput", name: "BrandingConfigurationUpdateInput")
    BrandingSafeStringType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspacesweb#BrandingSafeStringType", name: "BrandingSafeStringType", traits: {"smithy.api#pattern" => "^[^<>&'`~\\\\]*$"})
    BrowserPolicy = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspacesweb#BrowserPolicy", name: "BrowserPolicy", traits: {"smithy.api#length" => {"min" => 2, "max" => 131072}, "smithy.api#pattern" => "^\\{[\\S\\s]*\\}\\s*$", "smithy.api#sensitive" => {}})
    BrowserSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#BrowserSettings", name: "BrowserSettings")
    BrowserSettingsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspacesweb#BrowserSettingsList", name: "BrowserSettingsList")
    BrowserSettingsSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#BrowserSettingsSummary", name: "BrowserSettingsSummary")
    BrowserType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspacesweb#BrowserType", name: "BrowserType", traits: {"smithy.api#enum" => [{"value" => "Chrome", "name" => "CHROME"}]})
    BuiltInPatternId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspacesweb#BuiltInPatternId", name: "BuiltInPatternId", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#pattern" => "^[_\\-\\d\\w]+$", "smithy.api#sensitive" => {}})
    Category = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workspacesweb#Category", name: "Category")
    Certificate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#Certificate", name: "Certificate")
    CertificateAuthorityBody = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.workspacesweb#CertificateAuthorityBody", name: "CertificateAuthorityBody", traits: {"smithy.api#length" => {"min" => 1, "max" => 32768}})
    CertificateList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspacesweb#CertificateList", name: "CertificateList")
    CertificatePrincipal = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspacesweb#CertificatePrincipal", name: "CertificatePrincipal", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^\\S+$"})
    CertificateSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#CertificateSummary", name: "CertificateSummary")
    CertificateSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspacesweb#CertificateSummaryList", name: "CertificateSummaryList")
    CertificateThumbprint = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspacesweb#CertificateThumbprint", name: "CertificateThumbprint", traits: {"smithy.api#length" => {"min" => 64, "max" => 64}, "smithy.api#pattern" => "^[A-Fa-f0-9]{64}$"})
    CertificateThumbprintList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspacesweb#CertificateThumbprintList", name: "CertificateThumbprintList")
    ClientToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspacesweb#ClientToken", name: "ClientToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}})
    ColorTheme = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workspacesweb#ColorTheme", name: "ColorTheme")
    ConfidenceLevel = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.workspacesweb#ConfidenceLevel", name: "ConfidenceLevel", traits: {"smithy.api#range" => {"min" => 1, "max" => 3}})
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ContactLinkUrl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspacesweb#ContactLinkUrl", name: "ContactLinkUrl", traits: {"smithy.api#pattern" => "^(https://|mailto:).*$"})
    CookieDomain = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspacesweb#CookieDomain", name: "CookieDomain", traits: {"smithy.api#length" => {"min" => 0, "max" => 253}, "smithy.api#pattern" => "^(\\.?)(?:[a-z0-9](?:[a-z0-9-]{0,61}[a-z0-9])?\\.)*[a-z0-9][a-z0-9-]{0,61}[a-z0-9]$", "smithy.api#sensitive" => {}})
    CookieName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspacesweb#CookieName", name: "CookieName", traits: {"smithy.api#length" => {"min" => 0, "max" => 4096}, "smithy.api#sensitive" => {}})
    CookiePath = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspacesweb#CookiePath", name: "CookiePath", traits: {"smithy.api#length" => {"min" => 0, "max" => 2000}, "smithy.api#pattern" => "^/(\\S)*$", "smithy.api#sensitive" => {}})
    CookieSpecification = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#CookieSpecification", name: "CookieSpecification")
    CookieSpecifications = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspacesweb#CookieSpecifications", name: "CookieSpecifications", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    CookieSynchronizationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#CookieSynchronizationConfiguration", name: "CookieSynchronizationConfiguration", traits: {"smithy.api#sensitive" => {}})
    CreateBrowserSettingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#CreateBrowserSettingsRequest", name: "CreateBrowserSettingsRequest")
    CreateBrowserSettingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#CreateBrowserSettingsResponse", name: "CreateBrowserSettingsResponse")
    CreateDataProtectionSettingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#CreateDataProtectionSettingsRequest", name: "CreateDataProtectionSettingsRequest")
    CreateDataProtectionSettingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#CreateDataProtectionSettingsResponse", name: "CreateDataProtectionSettingsResponse")
    CreateIdentityProviderRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#CreateIdentityProviderRequest", name: "CreateIdentityProviderRequest")
    CreateIdentityProviderResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#CreateIdentityProviderResponse", name: "CreateIdentityProviderResponse")
    CreateIpAccessSettingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#CreateIpAccessSettingsRequest", name: "CreateIpAccessSettingsRequest")
    CreateIpAccessSettingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#CreateIpAccessSettingsResponse", name: "CreateIpAccessSettingsResponse")
    CreateNetworkSettingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#CreateNetworkSettingsRequest", name: "CreateNetworkSettingsRequest")
    CreateNetworkSettingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#CreateNetworkSettingsResponse", name: "CreateNetworkSettingsResponse")
    CreatePortalRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#CreatePortalRequest", name: "CreatePortalRequest")
    CreatePortalResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#CreatePortalResponse", name: "CreatePortalResponse")
    CreateSessionLoggerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#CreateSessionLoggerRequest", name: "CreateSessionLoggerRequest")
    CreateSessionLoggerResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#CreateSessionLoggerResponse", name: "CreateSessionLoggerResponse", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.workspacesweb#SessionLoggerResource"}]})
    CreateTrustStoreRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#CreateTrustStoreRequest", name: "CreateTrustStoreRequest")
    CreateTrustStoreResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#CreateTrustStoreResponse", name: "CreateTrustStoreResponse")
    CreateUserAccessLoggingSettingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#CreateUserAccessLoggingSettingsRequest", name: "CreateUserAccessLoggingSettingsRequest")
    CreateUserAccessLoggingSettingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#CreateUserAccessLoggingSettingsResponse", name: "CreateUserAccessLoggingSettingsResponse")
    CreateUserSettingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#CreateUserSettingsRequest", name: "CreateUserSettingsRequest")
    CreateUserSettingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#CreateUserSettingsResponse", name: "CreateUserSettingsResponse")
    CustomPattern = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#CustomPattern", name: "CustomPattern")
    DataProtectionSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#DataProtectionSettings", name: "DataProtectionSettings")
    DataProtectionSettingsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspacesweb#DataProtectionSettingsList", name: "DataProtectionSettingsList")
    DataProtectionSettingsSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#DataProtectionSettingsSummary", name: "DataProtectionSettingsSummary")
    DeleteBrowserSettingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#DeleteBrowserSettingsRequest", name: "DeleteBrowserSettingsRequest")
    DeleteBrowserSettingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#DeleteBrowserSettingsResponse", name: "DeleteBrowserSettingsResponse")
    DeleteDataProtectionSettingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#DeleteDataProtectionSettingsRequest", name: "DeleteDataProtectionSettingsRequest")
    DeleteDataProtectionSettingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#DeleteDataProtectionSettingsResponse", name: "DeleteDataProtectionSettingsResponse")
    DeleteIdentityProviderRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#DeleteIdentityProviderRequest", name: "DeleteIdentityProviderRequest")
    DeleteIdentityProviderResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#DeleteIdentityProviderResponse", name: "DeleteIdentityProviderResponse")
    DeleteIpAccessSettingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#DeleteIpAccessSettingsRequest", name: "DeleteIpAccessSettingsRequest")
    DeleteIpAccessSettingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#DeleteIpAccessSettingsResponse", name: "DeleteIpAccessSettingsResponse")
    DeleteNetworkSettingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#DeleteNetworkSettingsRequest", name: "DeleteNetworkSettingsRequest")
    DeleteNetworkSettingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#DeleteNetworkSettingsResponse", name: "DeleteNetworkSettingsResponse")
    DeletePortalRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#DeletePortalRequest", name: "DeletePortalRequest")
    DeletePortalResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#DeletePortalResponse", name: "DeletePortalResponse")
    DeleteSessionLoggerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#DeleteSessionLoggerRequest", name: "DeleteSessionLoggerRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.workspacesweb#SessionLoggerResource"}]})
    DeleteSessionLoggerResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#DeleteSessionLoggerResponse", name: "DeleteSessionLoggerResponse")
    DeleteTrustStoreRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#DeleteTrustStoreRequest", name: "DeleteTrustStoreRequest")
    DeleteTrustStoreResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#DeleteTrustStoreResponse", name: "DeleteTrustStoreResponse")
    DeleteUserAccessLoggingSettingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#DeleteUserAccessLoggingSettingsRequest", name: "DeleteUserAccessLoggingSettingsRequest")
    DeleteUserAccessLoggingSettingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#DeleteUserAccessLoggingSettingsResponse", name: "DeleteUserAccessLoggingSettingsResponse")
    DeleteUserSettingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#DeleteUserSettingsRequest", name: "DeleteUserSettingsRequest")
    DeleteUserSettingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#DeleteUserSettingsResponse", name: "DeleteUserSettingsResponse")
    Description = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspacesweb#Description", name: "Description", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^.+$", "smithy.api#sensitive" => {}})
    DescriptionSafe = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspacesweb#DescriptionSafe", name: "DescriptionSafe", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[ _\\-\\d\\w]+$", "smithy.api#sensitive" => {}})
    DisassociateBrowserSettingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#DisassociateBrowserSettingsRequest", name: "DisassociateBrowserSettingsRequest")
    DisassociateBrowserSettingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#DisassociateBrowserSettingsResponse", name: "DisassociateBrowserSettingsResponse")
    DisassociateDataProtectionSettingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#DisassociateDataProtectionSettingsRequest", name: "DisassociateDataProtectionSettingsRequest")
    DisassociateDataProtectionSettingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#DisassociateDataProtectionSettingsResponse", name: "DisassociateDataProtectionSettingsResponse")
    DisassociateIpAccessSettingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#DisassociateIpAccessSettingsRequest", name: "DisassociateIpAccessSettingsRequest")
    DisassociateIpAccessSettingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#DisassociateIpAccessSettingsResponse", name: "DisassociateIpAccessSettingsResponse")
    DisassociateNetworkSettingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#DisassociateNetworkSettingsRequest", name: "DisassociateNetworkSettingsRequest")
    DisassociateNetworkSettingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#DisassociateNetworkSettingsResponse", name: "DisassociateNetworkSettingsResponse")
    DisassociateSessionLoggerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#DisassociateSessionLoggerRequest", name: "DisassociateSessionLoggerRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.workspacesweb#PortalResource"}]})
    DisassociateSessionLoggerResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#DisassociateSessionLoggerResponse", name: "DisassociateSessionLoggerResponse")
    DisassociateTrustStoreRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#DisassociateTrustStoreRequest", name: "DisassociateTrustStoreRequest")
    DisassociateTrustStoreResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#DisassociateTrustStoreResponse", name: "DisassociateTrustStoreResponse")
    DisassociateUserAccessLoggingSettingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#DisassociateUserAccessLoggingSettingsRequest", name: "DisassociateUserAccessLoggingSettingsRequest")
    DisassociateUserAccessLoggingSettingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#DisassociateUserAccessLoggingSettingsResponse", name: "DisassociateUserAccessLoggingSettingsResponse")
    DisassociateUserSettingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#DisassociateUserSettingsRequest", name: "DisassociateUserSettingsRequest")
    DisassociateUserSettingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#DisassociateUserSettingsResponse", name: "DisassociateUserSettingsResponse")
    DisconnectTimeoutInMinutes = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.workspacesweb#DisconnectTimeoutInMinutes", name: "DisconnectTimeoutInMinutes", traits: {"smithy.api#range" => {"min" => 1, "max" => 600}})
    DisplayName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspacesweb#DisplayName", name: "DisplayName", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^.+$", "smithy.api#sensitive" => {}})
    DisplayNameSafe = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspacesweb#DisplayNameSafe", name: "DisplayNameSafe", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[ _\\-\\d\\w]+$", "smithy.api#sensitive" => {}})
    EnabledType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspacesweb#EnabledType", name: "EnabledType", traits: {"smithy.api#enum" => [{"value" => "Disabled", "name" => "DISABLED"}, {"value" => "Enabled", "name" => "ENABLED"}]})
    EncryptionContextMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.workspacesweb#EncryptionContextMap", name: "EncryptionContextMap")
    Event = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workspacesweb#Event", name: "Event")
    EventFilter = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.workspacesweb#EventFilter", name: "EventFilter")
    Events = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspacesweb#Events", name: "Events", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#uniqueItems" => {}})
    ExceptionMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspacesweb#ExceptionMessage", name: "ExceptionMessage")
    ExpireSessionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#ExpireSessionRequest", name: "ExpireSessionRequest")
    ExpireSessionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#ExpireSessionResponse", name: "ExpireSessionResponse")
    FieldName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspacesweb#FieldName", name: "FieldName")
    FolderStructure = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workspacesweb#FolderStructure", name: "FolderStructure")
    GetBrowserSettingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#GetBrowserSettingsRequest", name: "GetBrowserSettingsRequest")
    GetBrowserSettingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#GetBrowserSettingsResponse", name: "GetBrowserSettingsResponse")
    GetDataProtectionSettingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#GetDataProtectionSettingsRequest", name: "GetDataProtectionSettingsRequest")
    GetDataProtectionSettingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#GetDataProtectionSettingsResponse", name: "GetDataProtectionSettingsResponse")
    GetIdentityProviderRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#GetIdentityProviderRequest", name: "GetIdentityProviderRequest")
    GetIdentityProviderResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#GetIdentityProviderResponse", name: "GetIdentityProviderResponse")
    GetIpAccessSettingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#GetIpAccessSettingsRequest", name: "GetIpAccessSettingsRequest")
    GetIpAccessSettingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#GetIpAccessSettingsResponse", name: "GetIpAccessSettingsResponse")
    GetNetworkSettingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#GetNetworkSettingsRequest", name: "GetNetworkSettingsRequest")
    GetNetworkSettingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#GetNetworkSettingsResponse", name: "GetNetworkSettingsResponse")
    GetPortalRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#GetPortalRequest", name: "GetPortalRequest")
    GetPortalResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#GetPortalResponse", name: "GetPortalResponse")
    GetPortalServiceProviderMetadataRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#GetPortalServiceProviderMetadataRequest", name: "GetPortalServiceProviderMetadataRequest")
    GetPortalServiceProviderMetadataResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#GetPortalServiceProviderMetadataResponse", name: "GetPortalServiceProviderMetadataResponse")
    GetSessionLoggerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#GetSessionLoggerRequest", name: "GetSessionLoggerRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.workspacesweb#SessionLoggerResource"}]})
    GetSessionLoggerResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#GetSessionLoggerResponse", name: "GetSessionLoggerResponse")
    GetSessionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#GetSessionRequest", name: "GetSessionRequest")
    GetSessionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#GetSessionResponse", name: "GetSessionResponse")
    GetTrustStoreCertificateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#GetTrustStoreCertificateRequest", name: "GetTrustStoreCertificateRequest")
    GetTrustStoreCertificateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#GetTrustStoreCertificateResponse", name: "GetTrustStoreCertificateResponse")
    GetTrustStoreRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#GetTrustStoreRequest", name: "GetTrustStoreRequest")
    GetTrustStoreResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#GetTrustStoreResponse", name: "GetTrustStoreResponse")
    GetUserAccessLoggingSettingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#GetUserAccessLoggingSettingsRequest", name: "GetUserAccessLoggingSettingsRequest")
    GetUserAccessLoggingSettingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#GetUserAccessLoggingSettingsResponse", name: "GetUserAccessLoggingSettingsResponse")
    GetUserSettingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#GetUserSettingsRequest", name: "GetUserSettingsRequest")
    GetUserSettingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#GetUserSettingsResponse", name: "GetUserSettingsResponse")
    GlobalInlineRedactionUrls = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspacesweb#GlobalInlineRedactionUrls", name: "GlobalInlineRedactionUrls", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    HiddenToolbarItemList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspacesweb#HiddenToolbarItemList", name: "HiddenToolbarItemList")
    IconImage = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.workspacesweb#IconImage", name: "IconImage", traits: {"smithy.api#length" => {"max" => 102400}, "smithy.api#mediaType" => "image/*"})
    IconImageInput = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.workspacesweb#IconImageInput", name: "IconImageInput")
    IdentityProvider = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#IdentityProvider", name: "IdentityProvider")
    IdentityProviderDetails = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.workspacesweb#IdentityProviderDetails", name: "IdentityProviderDetails", traits: {"smithy.api#sensitive" => {}})
    IdentityProviderList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspacesweb#IdentityProviderList", name: "IdentityProviderList")
    IdentityProviderName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspacesweb#IdentityProviderName", name: "IdentityProviderName", traits: {"smithy.api#length" => {"min" => 1, "max" => 32}, "smithy.api#pattern" => "^[^_][\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}][^_]+$", "smithy.api#sensitive" => {}})
    IdentityProviderSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#IdentityProviderSummary", name: "IdentityProviderSummary")
    IdentityProviderType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspacesweb#IdentityProviderType", name: "IdentityProviderType", traits: {"smithy.api#enum" => [{"value" => "SAML", "name" => "SAML"}, {"value" => "Facebook", "name" => "Facebook"}, {"value" => "Google", "name" => "Google"}, {"value" => "LoginWithAmazon", "name" => "LoginWithAmazon"}, {"value" => "SignInWithApple", "name" => "SignInWithApple"}, {"value" => "OIDC", "name" => "OIDC"}]})
    IdleDisconnectTimeoutInMinutes = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.workspacesweb#IdleDisconnectTimeoutInMinutes", name: "IdleDisconnectTimeoutInMinutes", traits: {"smithy.api#range" => {"min" => 0, "max" => 60}})
    ImageMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#ImageMetadata", name: "ImageMetadata")
    InlineRedactionConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#InlineRedactionConfiguration", name: "InlineRedactionConfiguration")
    InlineRedactionPattern = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#InlineRedactionPattern", name: "InlineRedactionPattern")
    InlineRedactionPatterns = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspacesweb#InlineRedactionPatterns", name: "InlineRedactionPatterns", traits: {"smithy.api#length" => {"min" => 0, "max" => 150}})
    InlineRedactionUrl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspacesweb#InlineRedactionUrl", name: "InlineRedactionUrl", traits: {"smithy.api#pattern" => "^((([a-zA-Z][a-zA-Z0-9+.-]*):\\/\\/(\\*|[\\w%._\\-\\+~#=@]+)?(\\/[^@\\s]*)?(?:\\?([^*\\s]+(?:\\*?)))?)|(\\*|[\\w%._\\-\\+~#=@]+\\.[\\w%._\\-\\+~#=@]+)(?::(\\d{1,5}))?(\\/[^@\\s]*)?(?:\\?([^*\\s]+(?:\\*?)))?|(([a-zA-Z][a-zA-Z0-9+.-]*):(\\/\\/)?\\*))$", "smithy.api#sensitive" => {}})
    InlineRedactionUrls = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspacesweb#InlineRedactionUrls", name: "InlineRedactionUrls", traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    InstanceType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspacesweb#InstanceType", name: "InstanceType", traits: {"smithy.api#enum" => [{"value" => "standard.regular", "name" => "STANDARD_REGULAR"}, {"value" => "standard.large", "name" => "STANDARD_LARGE"}, {"value" => "standard.xlarge", "name" => "STANDARD_XLARGE"}]})
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    IpAccessSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#IpAccessSettings", name: "IpAccessSettings")
    IpAccessSettingsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspacesweb#IpAccessSettingsList", name: "IpAccessSettingsList")
    IpAccessSettingsSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#IpAccessSettingsSummary", name: "IpAccessSettingsSummary")
    IpAddress = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspacesweb#IpAddress", name: "IpAddress", traits: {"smithy.api#length" => {"min" => 1, "max" => 15}, "smithy.api#pattern" => "^((([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])\\.){3}([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5]))$|^(([0-9a-fA-F]{1,4}:){7,7}[0-9a-fA-F]{1,4}|([0-9a-fA-F]{1,4}:){1,7}:|([0-9a-fA-F]{1,4}:){1,6}:[0-9a-fA-F]{1,4}|([0-9a-fA-F]{1,4}:){1,5}(:[0-9a-fA-F]{1,4}){1,2}|([0-9a-fA-F]{1,4}:){1,4}(:[0-9a-fA-F]{1,4}){1,3}|([0-9a-fA-F]{1,4}:){1,3}(:[0-9a-fA-F]{1,4}){1,4}|([0-9a-fA-F]{1,4}:){1,2}(:[0-9a-fA-F]{1,4}){1,5}|[0-9a-fA-F]{1,4}:((:[0-9a-fA-F]{1,4}){1,6})|:((:[0-9a-fA-F]{1,4}){1,7}|:)|fe80:(:[0-9a-fA-F]{0,4}){0,4}%[0-9a-zA-Z]{1,}|::(ffff(:0{1,4}){0,1}:){0,1}((25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9])\\.){3,3}(25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9])|([0-9a-fA-F]{1,4}:){1,4}:((25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9])\\.){3,3}(25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9]))$", "smithy.api#sensitive" => {}})
    IpAddressList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspacesweb#IpAddressList", name: "IpAddressList", traits: {"smithy.api#length" => {"min" => 1, "max" => 45}})
    IpRange = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspacesweb#IpRange", name: "IpRange", traits: {"smithy.api#sensitive" => {}})
    IpRule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#IpRule", name: "IpRule")
    IpRuleList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspacesweb#IpRuleList", name: "IpRuleList", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#sensitive" => {}})
    KinesisStreamArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspacesweb#KinesisStreamArn", name: "KinesisStreamArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:[\\w+=/,.@-]+:kinesis:[a-zA-Z0-9\\-]*:[a-zA-Z0-9]{1,12}:stream/.+$"})
    ListBrowserSettingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#ListBrowserSettingsRequest", name: "ListBrowserSettingsRequest")
    ListBrowserSettingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#ListBrowserSettingsResponse", name: "ListBrowserSettingsResponse")
    ListDataProtectionSettingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#ListDataProtectionSettingsRequest", name: "ListDataProtectionSettingsRequest")
    ListDataProtectionSettingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#ListDataProtectionSettingsResponse", name: "ListDataProtectionSettingsResponse")
    ListIdentityProvidersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#ListIdentityProvidersRequest", name: "ListIdentityProvidersRequest")
    ListIdentityProvidersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#ListIdentityProvidersResponse", name: "ListIdentityProvidersResponse")
    ListIpAccessSettingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#ListIpAccessSettingsRequest", name: "ListIpAccessSettingsRequest")
    ListIpAccessSettingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#ListIpAccessSettingsResponse", name: "ListIpAccessSettingsResponse")
    ListNetworkSettingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#ListNetworkSettingsRequest", name: "ListNetworkSettingsRequest")
    ListNetworkSettingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#ListNetworkSettingsResponse", name: "ListNetworkSettingsResponse")
    ListPortalsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#ListPortalsRequest", name: "ListPortalsRequest")
    ListPortalsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#ListPortalsResponse", name: "ListPortalsResponse")
    ListSessionLoggersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#ListSessionLoggersRequest", name: "ListSessionLoggersRequest")
    ListSessionLoggersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#ListSessionLoggersResponse", name: "ListSessionLoggersResponse")
    ListSessionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#ListSessionsRequest", name: "ListSessionsRequest")
    ListSessionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#ListSessionsResponse", name: "ListSessionsResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    ListTrustStoreCertificatesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#ListTrustStoreCertificatesRequest", name: "ListTrustStoreCertificatesRequest")
    ListTrustStoreCertificatesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#ListTrustStoreCertificatesResponse", name: "ListTrustStoreCertificatesResponse")
    ListTrustStoresRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#ListTrustStoresRequest", name: "ListTrustStoresRequest")
    ListTrustStoresResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#ListTrustStoresResponse", name: "ListTrustStoresResponse")
    ListUserAccessLoggingSettingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#ListUserAccessLoggingSettingsRequest", name: "ListUserAccessLoggingSettingsRequest")
    ListUserAccessLoggingSettingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#ListUserAccessLoggingSettingsResponse", name: "ListUserAccessLoggingSettingsResponse")
    ListUserSettingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#ListUserSettingsRequest", name: "ListUserSettingsRequest")
    ListUserSettingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#ListUserSettingsResponse", name: "ListUserSettingsResponse")
    Locale = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workspacesweb#Locale", name: "Locale")
    LocalizedBrandingStringMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.workspacesweb#LocalizedBrandingStringMap", name: "LocalizedBrandingStringMap")
    LocalizedBrandingStrings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#LocalizedBrandingStrings", name: "LocalizedBrandingStrings")
    LogConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#LogConfiguration", name: "LogConfiguration")
    LogFileFormat = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workspacesweb#LogFileFormat", name: "LogFileFormat")
    Markdown = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspacesweb#Markdown", name: "Markdown", traits: {"smithy.api#length" => {"max" => 153600}, "smithy.api#mediaType" => "text/markdown", "smithy.api#sensitive" => {}})
    MaxConcurrentSessions = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.workspacesweb#MaxConcurrentSessions", name: "MaxConcurrentSessions", traits: {"smithy.api#range" => {"min" => 1, "max" => 5000}})
    MaxDisplayResolution = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspacesweb#MaxDisplayResolution", name: "MaxDisplayResolution", traits: {"smithy.api#enum" => [{"value" => "size4096X2160", "name" => "RESOLUTION_DCI_4K"}, {"value" => "size3840X2160", "name" => "RESOLUTION_UHD_4K"}, {"value" => "size3440X1440", "name" => "RESOLUTION_1440P_ULTRA_WIDE"}, {"value" => "size2560X1440", "name" => "RESOLUTION_1440P"}, {"value" => "size1920X1080", "name" => "RESOLUTION_1080P"}, {"value" => "size1280X720", "name" => "RESOLUTION_720P"}, {"value" => "size1024X768", "name" => "RESOLUTION_768P"}, {"value" => "size800X600", "name" => "RESOLUTION_600P"}]})
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.workspacesweb#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1}})
    MimeType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workspacesweb#MimeType", name: "MimeType")
    NetworkSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#NetworkSettings", name: "NetworkSettings")
    NetworkSettingsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspacesweb#NetworkSettingsList", name: "NetworkSettingsList")
    NetworkSettingsSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#NetworkSettingsSummary", name: "NetworkSettingsSummary")
    PaginationToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspacesweb#PaginationToken", name: "PaginationToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^\\S+$"})
    PatternName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspacesweb#PatternName", name: "PatternName", traits: {"smithy.api#length" => {"min" => 1, "max" => 20}, "smithy.api#pattern" => "^[_\\-\\d\\w]+$", "smithy.api#sensitive" => {}})
    Portal = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#Portal", name: "Portal", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.workspacesweb#SessionLoggerResource"}]})
    PortalCustomDomain = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspacesweb#PortalCustomDomain", name: "PortalCustomDomain", traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^(|[a-zA-Z0-9]?((?!-)([A-Za-z0-9-]*[A-Za-z0-9])\\.)+[a-zA-Z0-9]+)$"})
    PortalEndpoint = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspacesweb#PortalEndpoint", name: "PortalEndpoint", traits: {"smithy.api#length" => {"min" => 1, "max" => 253}, "smithy.api#pattern" => "^(?:[a-z0-9](?:[a-z0-9-]{0,61}[a-z0-9])?\\.)+[a-z0-9][a-z0-9-]{0,61}[a-z0-9]$"})
    PortalId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspacesweb#PortalId", name: "PortalId", traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[a-zA-Z0-9\\-]+$"})
    PortalList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspacesweb#PortalList", name: "PortalList")
    PortalStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspacesweb#PortalStatus", name: "PortalStatus", traits: {"smithy.api#enum" => [{"value" => "Incomplete", "name" => "INCOMPLETE"}, {"value" => "Pending", "name" => "PENDING"}, {"value" => "Active", "name" => "ACTIVE"}]})
    PortalSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#PortalSummary", name: "PortalSummary", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.workspacesweb#SessionLoggerResource"}]})
    QuotaCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspacesweb#QuotaCode", name: "QuotaCode")
    RedactionPlaceHolder = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#RedactionPlaceHolder", name: "RedactionPlaceHolder")
    RedactionPlaceHolderText = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspacesweb#RedactionPlaceHolderText", name: "RedactionPlaceHolderText", traits: {"smithy.api#length" => {"min" => 1, "max" => 20}, "smithy.api#pattern" => "^[*_\\-\\d\\w]+$", "smithy.api#sensitive" => {}})
    RedactionPlaceHolderType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspacesweb#RedactionPlaceHolderType", name: "RedactionPlaceHolderType", traits: {"smithy.api#enum" => [{"value" => "CustomText", "name" => "CUSTOM_TEXT"}]})
    Regex = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspacesweb#Regex", name: "Regex", traits: {"smithy.api#length" => {"min" => 0, "max" => 300}, "smithy.api#pattern" => "^\\/((?:[^\\n])+)\\/([gimsuyvd]{0,8})$", "smithy.api#sensitive" => {}})
    RendererType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspacesweb#RendererType", name: "RendererType", traits: {"smithy.api#enum" => [{"value" => "AppStream", "name" => "APPSTREAM"}]})
    ResourceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspacesweb#ResourceId", name: "ResourceId")
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspacesweb#ResourceType", name: "ResourceType")
    RetryAfterSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.workspacesweb#RetryAfterSeconds", name: "RetryAfterSeconds", traits: {"smithy.api#default" => 0})
    S3Bucket = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspacesweb#S3Bucket", name: "S3Bucket", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-z0-9][\\.\\-a-z0-9]{1,61}[a-z0-9]$", "smithy.api#sensitive" => {}})
    S3BucketOwner = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspacesweb#S3BucketOwner", name: "S3BucketOwner", traits: {"smithy.api#pattern" => "^[0-9]{12}$"})
    S3KeyPrefix = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspacesweb#S3KeyPrefix", name: "S3KeyPrefix", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[\\d\\w\\-_/!().*']+$", "smithy.api#sensitive" => {}})
    S3LogConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#S3LogConfiguration", name: "S3LogConfiguration")
    S3Uri = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspacesweb#S3Uri", name: "S3Uri", traits: {"smithy.api#pattern" => "^s3://[a-z0-9][a-z0-9\\.\\-]{1,61}[a-z0-9]/.+$"})
    SamlMetadata = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspacesweb#SamlMetadata", name: "SamlMetadata", traits: {"smithy.api#length" => {"min" => 1, "max" => 204800}, "smithy.api#pattern" => "^.+$"})
    SecurityGroupId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspacesweb#SecurityGroupId", name: "SecurityGroupId", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\w+\\-]+$"})
    SecurityGroupIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspacesweb#SecurityGroupIdList", name: "SecurityGroupIdList", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    ServiceCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspacesweb#ServiceCode", name: "ServiceCode")
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    Session = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#Session", name: "Session")
    SessionId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspacesweb#SessionId", name: "SessionId", traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[a-zA-Z0-9\\-]+$"})
    SessionLogger = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#SessionLogger", name: "SessionLogger")
    SessionLoggerList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspacesweb#SessionLoggerList", name: "SessionLoggerList")
    SessionLoggerSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#SessionLoggerSummary", name: "SessionLoggerSummary")
    SessionSortBy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workspacesweb#SessionSortBy", name: "SessionSortBy")
    SessionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workspacesweb#SessionStatus", name: "SessionStatus")
    SessionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#SessionSummary", name: "SessionSummary")
    SessionSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspacesweb#SessionSummaryList", name: "SessionSummaryList")
    StatusReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspacesweb#StatusReason", name: "StatusReason", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^.*$"})
    StringType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspacesweb#StringType", name: "StringType", traits: {"smithy.api#length" => {"min" => 0, "max" => 131072}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    SubnetId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspacesweb#SubnetId", name: "SubnetId", traits: {"smithy.api#length" => {"min" => 1, "max" => 32}, "smithy.api#pattern" => "^subnet-([0-9a-f]{8}|[0-9a-f]{17})$"})
    SubnetIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspacesweb#SubnetIdList", name: "SubnetIdList", traits: {"smithy.api#length" => {"min" => 2, "max" => 5}})
    SubresourceARN = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspacesweb#SubresourceARN", name: "SubresourceARN", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:[\\w+=\\/,.@-]+:[a-zA-Z0-9\\-]+:[a-zA-Z0-9\\-]*:[a-zA-Z0-9]{1,12}:[a-zA-Z]+(\\/[a-fA-F0-9\\-]{36}){2,}$"})
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#Tag", name: "Tag", traits: {"smithy.api#sensitive" => {}})
    TagExceptionMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspacesweb#TagExceptionMessage", name: "TagExceptionMessage")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspacesweb#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$", "smithy.api#sensitive" => {}})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspacesweb#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspacesweb#TagList", name: "TagList", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#TagResourceResponse", name: "TagResourceResponse")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspacesweb#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$", "smithy.api#sensitive" => {}})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.workspacesweb#Timestamp", name: "Timestamp")
    TooManyTagsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#TooManyTagsException", name: "TooManyTagsException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ToolbarConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#ToolbarConfiguration", name: "ToolbarConfiguration")
    ToolbarItem = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspacesweb#ToolbarItem", name: "ToolbarItem", traits: {"smithy.api#enum" => [{"value" => "Windows", "name" => "WINDOWS"}, {"value" => "DualMonitor", "name" => "DUAL_MONITOR"}, {"value" => "FullScreen", "name" => "FULL_SCREEN"}, {"value" => "Webcam", "name" => "WEBCAM"}, {"value" => "Microphone", "name" => "MICROPHONE"}]})
    ToolbarType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspacesweb#ToolbarType", name: "ToolbarType", traits: {"smithy.api#enum" => [{"value" => "Floating", "name" => "FLOATING"}, {"value" => "Docked", "name" => "DOCKED"}]})
    TrustStore = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#TrustStore", name: "TrustStore")
    TrustStoreSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#TrustStoreSummary", name: "TrustStoreSummary")
    TrustStoreSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspacesweb#TrustStoreSummaryList", name: "TrustStoreSummaryList")
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#UntagResourceResponse", name: "UntagResourceResponse")
    UpdateBrowserSettingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#UpdateBrowserSettingsRequest", name: "UpdateBrowserSettingsRequest")
    UpdateBrowserSettingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#UpdateBrowserSettingsResponse", name: "UpdateBrowserSettingsResponse")
    UpdateDataProtectionSettingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#UpdateDataProtectionSettingsRequest", name: "UpdateDataProtectionSettingsRequest")
    UpdateDataProtectionSettingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#UpdateDataProtectionSettingsResponse", name: "UpdateDataProtectionSettingsResponse")
    UpdateIdentityProviderRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#UpdateIdentityProviderRequest", name: "UpdateIdentityProviderRequest")
    UpdateIdentityProviderResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#UpdateIdentityProviderResponse", name: "UpdateIdentityProviderResponse")
    UpdateIpAccessSettingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#UpdateIpAccessSettingsRequest", name: "UpdateIpAccessSettingsRequest")
    UpdateIpAccessSettingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#UpdateIpAccessSettingsResponse", name: "UpdateIpAccessSettingsResponse")
    UpdateNetworkSettingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#UpdateNetworkSettingsRequest", name: "UpdateNetworkSettingsRequest")
    UpdateNetworkSettingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#UpdateNetworkSettingsResponse", name: "UpdateNetworkSettingsResponse")
    UpdatePortalRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#UpdatePortalRequest", name: "UpdatePortalRequest")
    UpdatePortalResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#UpdatePortalResponse", name: "UpdatePortalResponse")
    UpdateSessionLoggerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#UpdateSessionLoggerRequest", name: "UpdateSessionLoggerRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.workspacesweb#SessionLoggerResource"}]})
    UpdateSessionLoggerResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#UpdateSessionLoggerResponse", name: "UpdateSessionLoggerResponse")
    UpdateTrustStoreRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#UpdateTrustStoreRequest", name: "UpdateTrustStoreRequest")
    UpdateTrustStoreResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#UpdateTrustStoreResponse", name: "UpdateTrustStoreResponse")
    UpdateUserAccessLoggingSettingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#UpdateUserAccessLoggingSettingsRequest", name: "UpdateUserAccessLoggingSettingsRequest")
    UpdateUserAccessLoggingSettingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#UpdateUserAccessLoggingSettingsResponse", name: "UpdateUserAccessLoggingSettingsResponse")
    UpdateUserSettingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#UpdateUserSettingsRequest", name: "UpdateUserSettingsRequest")
    UpdateUserSettingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#UpdateUserSettingsResponse", name: "UpdateUserSettingsResponse")
    UrlPattern = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspacesweb#UrlPattern", name: "UrlPattern", traits: {"smithy.api#pattern" => "^((([a-zA-Z][a-zA-Z0-9+.-]*):\\/\\/(\\*|[\\w%._\\-\\+~#=@]+)?(\\/[^@\\s]*)?(?:\\?([^*\\s]+(?:\\*?)))?)|(\\*|[\\w%._\\-\\+~#=@]+\\.[\\w%._\\-\\+~#=@]+)(?::(\\d{1,5}))?(\\/[^@\\s]*)?(?:\\?([^*\\s]+(?:\\*?)))?|(([a-zA-Z][a-zA-Z0-9+.-]*):(\\/\\/)?\\*))$", "smithy.api#sensitive" => {}})
    UrlPatternList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspacesweb#UrlPatternList", name: "UrlPatternList", traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}})
    UserAccessLoggingSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#UserAccessLoggingSettings", name: "UserAccessLoggingSettings")
    UserAccessLoggingSettingsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspacesweb#UserAccessLoggingSettingsList", name: "UserAccessLoggingSettingsList")
    UserAccessLoggingSettingsSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#UserAccessLoggingSettingsSummary", name: "UserAccessLoggingSettingsSummary")
    UserSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#UserSettings", name: "UserSettings")
    UserSettingsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspacesweb#UserSettingsList", name: "UserSettingsList")
    UserSettingsSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#UserSettingsSummary", name: "UserSettingsSummary")
    Username = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspacesweb#Username", name: "Username", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[\\s\\S]*$", "smithy.api#sensitive" => {}})
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionField = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#ValidationExceptionField", name: "ValidationExceptionField")
    ValidationExceptionFieldList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspacesweb#ValidationExceptionFieldList", name: "ValidationExceptionFieldList")
    ValidationExceptionReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspacesweb#ValidationExceptionReason", name: "ValidationExceptionReason", traits: {"smithy.api#enum" => [{"value" => "unknownOperation", "name" => "UNKNOWN_OPERATION"}, {"value" => "cannotParse", "name" => "CANNOT_PARSE"}, {"value" => "fieldValidationFailed", "name" => "FIELD_VALIDATION_FAILED"}, {"value" => "other", "name" => "OTHER"}]})
    VisualMode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspacesweb#VisualMode", name: "VisualMode", traits: {"smithy.api#enum" => [{"value" => "Dark", "name" => "DARK"}, {"value" => "Light", "name" => "LIGHT"}]})
    VpcId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspacesweb#VpcId", name: "VpcId", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^vpc-[0-9a-z]*$"})
    WallpaperImage = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.workspacesweb#WallpaperImage", name: "WallpaperImage", traits: {"smithy.api#length" => {"max" => 5242880}, "smithy.api#mediaType" => "image/*"})
    WallpaperImageInput = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.workspacesweb#WallpaperImageInput", name: "WallpaperImageInput")
    WebContentFilteringPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesweb#WebContentFilteringPolicy", name: "WebContentFilteringPolicy")
    KeyArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspacesweb#keyArn", name: "KeyArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:[\\w+=\\/,.@-]+:kms:[a-zA-Z0-9\\-]*:[a-zA-Z0-9]{1,12}:key\\/[a-zA-Z0-9-]+$"})

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    AccessDeniedException.type = Types::AccessDeniedException
    ArnList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "member"))
    AssociateBrowserSettingsRequest.add_member(:portal_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "portalArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateBrowserSettingsRequest.add_member(:browser_settings_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "browserSettingsArn", traits: {"aws.cloudformation#cfnMutability" => "full", "smithy.api#httpQuery" => "browserSettingsArn", "smithy.api#required" => {}}))
    AssociateBrowserSettingsRequest.type = Types::AssociateBrowserSettingsRequest
    AssociateBrowserSettingsResponse.add_member(:portal_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "portalArn", traits: {"smithy.api#required" => {}}))
    AssociateBrowserSettingsResponse.add_member(:browser_settings_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "browserSettingsArn", traits: {"smithy.api#required" => {}}))
    AssociateBrowserSettingsResponse.type = Types::AssociateBrowserSettingsResponse
    AssociateDataProtectionSettingsRequest.add_member(:portal_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "portalArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateDataProtectionSettingsRequest.add_member(:data_protection_settings_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "dataProtectionSettingsArn", traits: {"aws.cloudformation#cfnMutability" => "full", "smithy.api#httpQuery" => "dataProtectionSettingsArn", "smithy.api#required" => {}}))
    AssociateDataProtectionSettingsRequest.type = Types::AssociateDataProtectionSettingsRequest
    AssociateDataProtectionSettingsResponse.add_member(:portal_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "portalArn", traits: {"smithy.api#required" => {}}))
    AssociateDataProtectionSettingsResponse.add_member(:data_protection_settings_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "dataProtectionSettingsArn", traits: {"smithy.api#required" => {}}))
    AssociateDataProtectionSettingsResponse.type = Types::AssociateDataProtectionSettingsResponse
    AssociateIpAccessSettingsRequest.add_member(:portal_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "portalArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateIpAccessSettingsRequest.add_member(:ip_access_settings_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "ipAccessSettingsArn", traits: {"aws.cloudformation#cfnMutability" => "full", "smithy.api#httpQuery" => "ipAccessSettingsArn", "smithy.api#required" => {}}))
    AssociateIpAccessSettingsRequest.type = Types::AssociateIpAccessSettingsRequest
    AssociateIpAccessSettingsResponse.add_member(:portal_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "portalArn", traits: {"smithy.api#required" => {}}))
    AssociateIpAccessSettingsResponse.add_member(:ip_access_settings_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "ipAccessSettingsArn", traits: {"smithy.api#required" => {}}))
    AssociateIpAccessSettingsResponse.type = Types::AssociateIpAccessSettingsResponse
    AssociateNetworkSettingsRequest.add_member(:portal_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "portalArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateNetworkSettingsRequest.add_member(:network_settings_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "networkSettingsArn", traits: {"aws.cloudformation#cfnMutability" => "full", "smithy.api#httpQuery" => "networkSettingsArn", "smithy.api#required" => {}}))
    AssociateNetworkSettingsRequest.type = Types::AssociateNetworkSettingsRequest
    AssociateNetworkSettingsResponse.add_member(:portal_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "portalArn", traits: {"smithy.api#required" => {}}))
    AssociateNetworkSettingsResponse.add_member(:network_settings_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "networkSettingsArn", traits: {"smithy.api#required" => {}}))
    AssociateNetworkSettingsResponse.type = Types::AssociateNetworkSettingsResponse
    AssociateSessionLoggerRequest.add_member(:portal_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "portalArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateSessionLoggerRequest.add_member(:session_logger_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "sessionLoggerArn", traits: {"aws.cloudformation#cfnMutability" => "full", "smithy.api#httpQuery" => "sessionLoggerArn", "smithy.api#required" => {}}))
    AssociateSessionLoggerRequest.type = Types::AssociateSessionLoggerRequest
    AssociateSessionLoggerResponse.add_member(:portal_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "portalArn", traits: {"smithy.api#required" => {}}))
    AssociateSessionLoggerResponse.add_member(:session_logger_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "sessionLoggerArn", traits: {"smithy.api#required" => {}}))
    AssociateSessionLoggerResponse.type = Types::AssociateSessionLoggerResponse
    AssociateTrustStoreRequest.add_member(:portal_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "portalArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateTrustStoreRequest.add_member(:trust_store_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "trustStoreArn", traits: {"aws.cloudformation#cfnMutability" => "full", "smithy.api#httpQuery" => "trustStoreArn", "smithy.api#required" => {}}))
    AssociateTrustStoreRequest.type = Types::AssociateTrustStoreRequest
    AssociateTrustStoreResponse.add_member(:portal_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "portalArn", traits: {"smithy.api#required" => {}}))
    AssociateTrustStoreResponse.add_member(:trust_store_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "trustStoreArn", traits: {"smithy.api#required" => {}}))
    AssociateTrustStoreResponse.type = Types::AssociateTrustStoreResponse
    AssociateUserAccessLoggingSettingsRequest.add_member(:portal_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "portalArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateUserAccessLoggingSettingsRequest.add_member(:user_access_logging_settings_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "userAccessLoggingSettingsArn", traits: {"aws.cloudformation#cfnMutability" => "full", "smithy.api#httpQuery" => "userAccessLoggingSettingsArn", "smithy.api#required" => {}}))
    AssociateUserAccessLoggingSettingsRequest.type = Types::AssociateUserAccessLoggingSettingsRequest
    AssociateUserAccessLoggingSettingsResponse.add_member(:portal_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "portalArn", traits: {"smithy.api#required" => {}}))
    AssociateUserAccessLoggingSettingsResponse.add_member(:user_access_logging_settings_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "userAccessLoggingSettingsArn", traits: {"smithy.api#required" => {}}))
    AssociateUserAccessLoggingSettingsResponse.type = Types::AssociateUserAccessLoggingSettingsResponse
    AssociateUserSettingsRequest.add_member(:portal_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "portalArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateUserSettingsRequest.add_member(:user_settings_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "userSettingsArn", traits: {"aws.cloudformation#cfnMutability" => "full", "smithy.api#httpQuery" => "userSettingsArn", "smithy.api#required" => {}}))
    AssociateUserSettingsRequest.type = Types::AssociateUserSettingsRequest
    AssociateUserSettingsResponse.add_member(:portal_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "portalArn", traits: {"smithy.api#required" => {}}))
    AssociateUserSettingsResponse.add_member(:user_settings_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "userSettingsArn", traits: {"smithy.api#required" => {}}))
    AssociateUserSettingsResponse.type = Types::AssociateUserSettingsResponse
    BlockedCategories.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Category, name: "member"))
    BrandingConfiguration.add_member(:logo, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageMetadata, name: "logo", traits: {"smithy.api#required" => {}}))
    BrandingConfiguration.add_member(:wallpaper, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageMetadata, name: "wallpaper"))
    BrandingConfiguration.add_member(:favicon, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageMetadata, name: "favicon", traits: {"smithy.api#required" => {}}))
    BrandingConfiguration.add_member(:localized_strings, ::Smithy::Schema::Shapes::MemberShape.new(target: LocalizedBrandingStringMap, name: "localizedStrings", traits: {"smithy.api#required" => {}}))
    BrandingConfiguration.add_member(:color_theme, ::Smithy::Schema::Shapes::MemberShape.new(target: ColorTheme, name: "colorTheme", traits: {"smithy.api#required" => {}}))
    BrandingConfiguration.add_member(:terms_of_service, ::Smithy::Schema::Shapes::MemberShape.new(target: Markdown, name: "termsOfService"))
    BrandingConfiguration.type = Types::BrandingConfiguration
    BrandingConfigurationCreateInput.add_member(:logo, ::Smithy::Schema::Shapes::MemberShape.new(target: IconImageInput, name: "logo", traits: {"smithy.api#required" => {}}))
    BrandingConfigurationCreateInput.add_member(:wallpaper, ::Smithy::Schema::Shapes::MemberShape.new(target: WallpaperImageInput, name: "wallpaper"))
    BrandingConfigurationCreateInput.add_member(:favicon, ::Smithy::Schema::Shapes::MemberShape.new(target: IconImageInput, name: "favicon", traits: {"smithy.api#required" => {}}))
    BrandingConfigurationCreateInput.add_member(:localized_strings, ::Smithy::Schema::Shapes::MemberShape.new(target: LocalizedBrandingStringMap, name: "localizedStrings", traits: {"smithy.api#required" => {}}))
    BrandingConfigurationCreateInput.add_member(:color_theme, ::Smithy::Schema::Shapes::MemberShape.new(target: ColorTheme, name: "colorTheme", traits: {"smithy.api#required" => {}}))
    BrandingConfigurationCreateInput.add_member(:terms_of_service, ::Smithy::Schema::Shapes::MemberShape.new(target: Markdown, name: "termsOfService"))
    BrandingConfigurationCreateInput.type = Types::BrandingConfigurationCreateInput
    BrandingConfigurationUpdateInput.add_member(:logo, ::Smithy::Schema::Shapes::MemberShape.new(target: IconImageInput, name: "logo"))
    BrandingConfigurationUpdateInput.add_member(:wallpaper, ::Smithy::Schema::Shapes::MemberShape.new(target: WallpaperImageInput, name: "wallpaper"))
    BrandingConfigurationUpdateInput.add_member(:favicon, ::Smithy::Schema::Shapes::MemberShape.new(target: IconImageInput, name: "favicon"))
    BrandingConfigurationUpdateInput.add_member(:localized_strings, ::Smithy::Schema::Shapes::MemberShape.new(target: LocalizedBrandingStringMap, name: "localizedStrings"))
    BrandingConfigurationUpdateInput.add_member(:color_theme, ::Smithy::Schema::Shapes::MemberShape.new(target: ColorTheme, name: "colorTheme"))
    BrandingConfigurationUpdateInput.add_member(:terms_of_service, ::Smithy::Schema::Shapes::MemberShape.new(target: Markdown, name: "termsOfService"))
    BrandingConfigurationUpdateInput.type = Types::BrandingConfigurationUpdateInput
    BrowserSettings.add_member(:browser_settings_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "browserSettingsArn", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "browserSettingsArn"}))
    BrowserSettings.add_member(:associated_portal_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnList, name: "associatedPortalArns"))
    BrowserSettings.add_member(:browser_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: BrowserPolicy, name: "browserPolicy"))
    BrowserSettings.add_member(:customer_managed_key, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyArn, name: "customerManagedKey"))
    BrowserSettings.add_member(:additional_encryption_context, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionContextMap, name: "additionalEncryptionContext"))
    BrowserSettings.add_member(:web_content_filtering_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: WebContentFilteringPolicy, name: "webContentFilteringPolicy"))
    BrowserSettings.type = Types::BrowserSettings
    BrowserSettingsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BrowserSettingsSummary, name: "member"))
    BrowserSettingsSummary.add_member(:browser_settings_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "browserSettingsArn", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "browserSettingsArn"}))
    BrowserSettingsSummary.type = Types::BrowserSettingsSummary
    Category.add_member(:cults, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CULTS", traits: {"smithy.api#enumValue" => "Cults"}))
    Category.add_member(:gambling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GAMBLING", traits: {"smithy.api#enumValue" => "Gambling"}))
    Category.add_member(:nudity, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NUDITY", traits: {"smithy.api#enumValue" => "Nudity"}))
    Category.add_member(:pornography, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PORNOGRAPHY", traits: {"smithy.api#enumValue" => "Pornography"}))
    Category.add_member(:sex_education, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SEX_EDUCATION", traits: {"smithy.api#enumValue" => "SexEducation"}))
    Category.add_member(:tasteless, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TASTELESS", traits: {"smithy.api#enumValue" => "Tasteless"}))
    Category.add_member(:violence, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VIOLENCE", traits: {"smithy.api#enumValue" => "Violence"}))
    Category.add_member(:download_sites, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DOWNLOAD_SITES", traits: {"smithy.api#enumValue" => "DownloadSites"}))
    Category.add_member(:image_sharing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IMAGE_SHARING", traits: {"smithy.api#enumValue" => "ImageSharing"}))
    Category.add_member(:peer_to_peer, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PEER_TO_PEER", traits: {"smithy.api#enumValue" => "PeerToPeer"}))
    Category.add_member(:streaming_media_and_downloads, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STREAMING_MEDIA_AND_DOWNLOADS", traits: {"smithy.api#enumValue" => "StreamingMediaAndDownloads"}))
    Category.add_member(:generative_ai, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GENERATIVE_AI", traits: {"smithy.api#enumValue" => "GenerativeAI"}))
    Category.add_member(:criminal_activity, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CRIMINAL_ACTIVITY", traits: {"smithy.api#enumValue" => "CriminalActivity"}))
    Category.add_member(:hacking, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HACKING", traits: {"smithy.api#enumValue" => "Hacking"}))
    Category.add_member(:hate_and_intolerance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HATE_AND_INTOLERANCE", traits: {"smithy.api#enumValue" => "HateAndIntolerance"}))
    Category.add_member(:illegal_drug, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ILLEGAL_DRUG", traits: {"smithy.api#enumValue" => "IllegalDrug"}))
    Category.add_member(:illegal_software, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ILLEGAL_SOFTWARE", traits: {"smithy.api#enumValue" => "IllegalSoftware"}))
    Category.add_member(:school_cheating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SCHOOL_CHEATING", traits: {"smithy.api#enumValue" => "SchoolCheating"}))
    Category.add_member(:self_harm, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SELF_HARM", traits: {"smithy.api#enumValue" => "SelfHarm"}))
    Category.add_member(:weapons, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WEAPONS", traits: {"smithy.api#enumValue" => "Weapons"}))
    Category.add_member(:chat, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CHAT", traits: {"smithy.api#enumValue" => "Chat"}))
    Category.add_member(:games, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GAMES", traits: {"smithy.api#enumValue" => "Games"}))
    Category.add_member(:instant_messaging, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INSTANT_MESSAGING", traits: {"smithy.api#enumValue" => "InstantMessaging"}))
    Category.add_member(:professional_network, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROFESSIONAL_NETWORK", traits: {"smithy.api#enumValue" => "ProfessionalNetwork"}))
    Category.add_member(:social_networking, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SOCIAL_NETWORKING", traits: {"smithy.api#enumValue" => "SocialNetworking"}))
    Category.add_member(:web_based_email, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WEB_BASED_EMAIL", traits: {"smithy.api#enumValue" => "WebBasedEmail"}))
    Category.add_member(:parked_domains, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PARKED_DOMAINS", traits: {"smithy.api#enumValue" => "ParkedDomains"}))
    Certificate.add_member(:thumbprint, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateThumbprint, name: "thumbprint"))
    Certificate.add_member(:subject, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificatePrincipal, name: "subject"))
    Certificate.add_member(:issuer, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificatePrincipal, name: "issuer"))
    Certificate.add_member(:not_valid_before, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "notValidBefore"))
    Certificate.add_member(:not_valid_after, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "notValidAfter"))
    Certificate.add_member(:body, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateAuthorityBody, name: "body"))
    Certificate.type = Types::Certificate
    CertificateList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateAuthorityBody, name: "member"))
    CertificateSummary.add_member(:thumbprint, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateThumbprint, name: "thumbprint"))
    CertificateSummary.add_member(:subject, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificatePrincipal, name: "subject"))
    CertificateSummary.add_member(:issuer, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificatePrincipal, name: "issuer"))
    CertificateSummary.add_member(:not_valid_before, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "notValidBefore"))
    CertificateSummary.add_member(:not_valid_after, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "notValidAfter"))
    CertificateSummary.type = Types::CertificateSummary
    CertificateSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateSummary, name: "member"))
    CertificateThumbprintList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateThumbprint, name: "member"))
    ColorTheme.add_member(:light, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LIGHT", traits: {"smithy.api#enumValue" => "Light"}))
    ColorTheme.add_member(:dark, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DARK", traits: {"smithy.api#enumValue" => "Dark"}))
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    ConflictException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "resourceId"))
    ConflictException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "resourceType"))
    ConflictException.type = Types::ConflictException
    CookieSpecification.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: CookieDomain, name: "domain", traits: {"smithy.api#required" => {}}))
    CookieSpecification.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: CookieName, name: "name"))
    CookieSpecification.add_member(:path, ::Smithy::Schema::Shapes::MemberShape.new(target: CookiePath, name: "path"))
    CookieSpecification.type = Types::CookieSpecification
    CookieSpecifications.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CookieSpecification, name: "member"))
    CookieSynchronizationConfiguration.add_member(:allowlist, ::Smithy::Schema::Shapes::MemberShape.new(target: CookieSpecifications, name: "allowlist", traits: {"smithy.api#required" => {}}))
    CookieSynchronizationConfiguration.add_member(:blocklist, ::Smithy::Schema::Shapes::MemberShape.new(target: CookieSpecifications, name: "blocklist"))
    CookieSynchronizationConfiguration.type = Types::CookieSynchronizationConfiguration
    CreateBrowserSettingsRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags", traits: {"aws.cloudformation#cfnMutability" => "full"}))
    CreateBrowserSettingsRequest.add_member(:customer_managed_key, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyArn, name: "customerManagedKey"))
    CreateBrowserSettingsRequest.add_member(:additional_encryption_context, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionContextMap, name: "additionalEncryptionContext"))
    CreateBrowserSettingsRequest.add_member(:browser_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: BrowserPolicy, name: "browserPolicy"))
    CreateBrowserSettingsRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateBrowserSettingsRequest.add_member(:web_content_filtering_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: WebContentFilteringPolicy, name: "webContentFilteringPolicy"))
    CreateBrowserSettingsRequest.type = Types::CreateBrowserSettingsRequest
    CreateBrowserSettingsResponse.add_member(:browser_settings_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "browserSettingsArn", traits: {"smithy.api#required" => {}}))
    CreateBrowserSettingsResponse.type = Types::CreateBrowserSettingsResponse
    CreateDataProtectionSettingsRequest.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DisplayNameSafe, name: "displayName"))
    CreateDataProtectionSettingsRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: DescriptionSafe, name: "description"))
    CreateDataProtectionSettingsRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags", traits: {"aws.cloudformation#cfnMutability" => "full"}))
    CreateDataProtectionSettingsRequest.add_member(:customer_managed_key, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyArn, name: "customerManagedKey"))
    CreateDataProtectionSettingsRequest.add_member(:additional_encryption_context, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionContextMap, name: "additionalEncryptionContext"))
    CreateDataProtectionSettingsRequest.add_member(:inline_redaction_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: InlineRedactionConfiguration, name: "inlineRedactionConfiguration"))
    CreateDataProtectionSettingsRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateDataProtectionSettingsRequest.type = Types::CreateDataProtectionSettingsRequest
    CreateDataProtectionSettingsResponse.add_member(:data_protection_settings_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "dataProtectionSettingsArn", traits: {"smithy.api#required" => {}}))
    CreateDataProtectionSettingsResponse.type = Types::CreateDataProtectionSettingsResponse
    CreateIdentityProviderRequest.add_member(:portal_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "portalArn", traits: {"smithy.api#required" => {}}))
    CreateIdentityProviderRequest.add_member(:identity_provider_name, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityProviderName, name: "identityProviderName", traits: {"smithy.api#required" => {}}))
    CreateIdentityProviderRequest.add_member(:identity_provider_type, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityProviderType, name: "identityProviderType", traits: {"smithy.api#required" => {}}))
    CreateIdentityProviderRequest.add_member(:identity_provider_details, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityProviderDetails, name: "identityProviderDetails", traits: {"smithy.api#required" => {}}))
    CreateIdentityProviderRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateIdentityProviderRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags"))
    CreateIdentityProviderRequest.type = Types::CreateIdentityProviderRequest
    CreateIdentityProviderResponse.add_member(:identity_provider_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SubresourceARN, name: "identityProviderArn", traits: {"smithy.api#required" => {}}))
    CreateIdentityProviderResponse.type = Types::CreateIdentityProviderResponse
    CreateIpAccessSettingsRequest.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DisplayName, name: "displayName"))
    CreateIpAccessSettingsRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    CreateIpAccessSettingsRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags", traits: {"aws.cloudformation#cfnMutability" => "full"}))
    CreateIpAccessSettingsRequest.add_member(:customer_managed_key, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyArn, name: "customerManagedKey"))
    CreateIpAccessSettingsRequest.add_member(:additional_encryption_context, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionContextMap, name: "additionalEncryptionContext"))
    CreateIpAccessSettingsRequest.add_member(:ip_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: IpRuleList, name: "ipRules", traits: {"smithy.api#required" => {}}))
    CreateIpAccessSettingsRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateIpAccessSettingsRequest.type = Types::CreateIpAccessSettingsRequest
    CreateIpAccessSettingsResponse.add_member(:ip_access_settings_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "ipAccessSettingsArn", traits: {"smithy.api#required" => {}}))
    CreateIpAccessSettingsResponse.type = Types::CreateIpAccessSettingsResponse
    CreateNetworkSettingsRequest.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcId, name: "vpcId", traits: {"smithy.api#required" => {}}))
    CreateNetworkSettingsRequest.add_member(:subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetIdList, name: "subnetIds", traits: {"smithy.api#required" => {}}))
    CreateNetworkSettingsRequest.add_member(:security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupIdList, name: "securityGroupIds", traits: {"smithy.api#required" => {}}))
    CreateNetworkSettingsRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags", traits: {"aws.cloudformation#cfnMutability" => "full"}))
    CreateNetworkSettingsRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateNetworkSettingsRequest.type = Types::CreateNetworkSettingsRequest
    CreateNetworkSettingsResponse.add_member(:network_settings_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "networkSettingsArn", traits: {"smithy.api#required" => {}}))
    CreateNetworkSettingsResponse.type = Types::CreateNetworkSettingsResponse
    CreatePortalRequest.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DisplayName, name: "displayName"))
    CreatePortalRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags", traits: {"aws.cloudformation#cfnMutability" => "full"}))
    CreatePortalRequest.add_member(:customer_managed_key, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyArn, name: "customerManagedKey"))
    CreatePortalRequest.add_member(:additional_encryption_context, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionContextMap, name: "additionalEncryptionContext"))
    CreatePortalRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreatePortalRequest.add_member(:authentication_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticationType, name: "authenticationType"))
    CreatePortalRequest.add_member(:instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceType, name: "instanceType"))
    CreatePortalRequest.add_member(:max_concurrent_sessions, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxConcurrentSessions, name: "maxConcurrentSessions"))
    CreatePortalRequest.add_member(:portal_custom_domain, ::Smithy::Schema::Shapes::MemberShape.new(target: PortalCustomDomain, name: "portalCustomDomain"))
    CreatePortalRequest.type = Types::CreatePortalRequest
    CreatePortalResponse.add_member(:portal_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "portalArn", traits: {"smithy.api#required" => {}}))
    CreatePortalResponse.add_member(:portal_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: PortalEndpoint, name: "portalEndpoint", traits: {"smithy.api#required" => {}}))
    CreatePortalResponse.type = Types::CreatePortalResponse
    CreateSessionLoggerRequest.add_member(:event_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: EventFilter, name: "eventFilter", traits: {"smithy.api#required" => {}}))
    CreateSessionLoggerRequest.add_member(:log_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: LogConfiguration, name: "logConfiguration", traits: {"smithy.api#required" => {}}))
    CreateSessionLoggerRequest.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DisplayNameSafe, name: "displayName"))
    CreateSessionLoggerRequest.add_member(:customer_managed_key, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyArn, name: "customerManagedKey"))
    CreateSessionLoggerRequest.add_member(:additional_encryption_context, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionContextMap, name: "additionalEncryptionContext"))
    CreateSessionLoggerRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags"))
    CreateSessionLoggerRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateSessionLoggerRequest.type = Types::CreateSessionLoggerRequest
    CreateSessionLoggerResponse.add_member(:session_logger_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "sessionLoggerArn", traits: {"smithy.api#required" => {}}))
    CreateSessionLoggerResponse.type = Types::CreateSessionLoggerResponse
    CreateTrustStoreRequest.add_member(:certificate_list, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateList, name: "certificateList", traits: {"smithy.api#required" => {}}))
    CreateTrustStoreRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags", traits: {"aws.cloudformation#cfnMutability" => "full"}))
    CreateTrustStoreRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateTrustStoreRequest.type = Types::CreateTrustStoreRequest
    CreateTrustStoreResponse.add_member(:trust_store_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "trustStoreArn", traits: {"smithy.api#required" => {}}))
    CreateTrustStoreResponse.type = Types::CreateTrustStoreResponse
    CreateUserAccessLoggingSettingsRequest.add_member(:kinesis_stream_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KinesisStreamArn, name: "kinesisStreamArn", traits: {"smithy.api#required" => {}}))
    CreateUserAccessLoggingSettingsRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags", traits: {"aws.cloudformation#cfnMutability" => "full"}))
    CreateUserAccessLoggingSettingsRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateUserAccessLoggingSettingsRequest.type = Types::CreateUserAccessLoggingSettingsRequest
    CreateUserAccessLoggingSettingsResponse.add_member(:user_access_logging_settings_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "userAccessLoggingSettingsArn", traits: {"smithy.api#required" => {}}))
    CreateUserAccessLoggingSettingsResponse.type = Types::CreateUserAccessLoggingSettingsResponse
    CreateUserSettingsRequest.add_member(:copy_allowed, ::Smithy::Schema::Shapes::MemberShape.new(target: EnabledType, name: "copyAllowed", traits: {"smithy.api#required" => {}}))
    CreateUserSettingsRequest.add_member(:paste_allowed, ::Smithy::Schema::Shapes::MemberShape.new(target: EnabledType, name: "pasteAllowed", traits: {"smithy.api#required" => {}}))
    CreateUserSettingsRequest.add_member(:download_allowed, ::Smithy::Schema::Shapes::MemberShape.new(target: EnabledType, name: "downloadAllowed", traits: {"smithy.api#required" => {}}))
    CreateUserSettingsRequest.add_member(:upload_allowed, ::Smithy::Schema::Shapes::MemberShape.new(target: EnabledType, name: "uploadAllowed", traits: {"smithy.api#required" => {}}))
    CreateUserSettingsRequest.add_member(:print_allowed, ::Smithy::Schema::Shapes::MemberShape.new(target: EnabledType, name: "printAllowed", traits: {"smithy.api#required" => {}}))
    CreateUserSettingsRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags", traits: {"aws.cloudformation#cfnMutability" => "full"}))
    CreateUserSettingsRequest.add_member(:disconnect_timeout_in_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: DisconnectTimeoutInMinutes, name: "disconnectTimeoutInMinutes", traits: {"smithy.api#default" => nil}))
    CreateUserSettingsRequest.add_member(:idle_disconnect_timeout_in_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: IdleDisconnectTimeoutInMinutes, name: "idleDisconnectTimeoutInMinutes", traits: {"smithy.api#default" => nil}))
    CreateUserSettingsRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateUserSettingsRequest.add_member(:cookie_synchronization_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: CookieSynchronizationConfiguration, name: "cookieSynchronizationConfiguration"))
    CreateUserSettingsRequest.add_member(:customer_managed_key, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyArn, name: "customerManagedKey"))
    CreateUserSettingsRequest.add_member(:additional_encryption_context, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionContextMap, name: "additionalEncryptionContext"))
    CreateUserSettingsRequest.add_member(:deep_link_allowed, ::Smithy::Schema::Shapes::MemberShape.new(target: EnabledType, name: "deepLinkAllowed"))
    CreateUserSettingsRequest.add_member(:toolbar_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ToolbarConfiguration, name: "toolbarConfiguration"))
    CreateUserSettingsRequest.add_member(:branding_configuration_input, ::Smithy::Schema::Shapes::MemberShape.new(target: BrandingConfigurationCreateInput, name: "brandingConfigurationInput", traits: {"smithy.api#notProperty" => {}}))
    CreateUserSettingsRequest.add_member(:web_authn_allowed, ::Smithy::Schema::Shapes::MemberShape.new(target: EnabledType, name: "webAuthnAllowed"))
    CreateUserSettingsRequest.type = Types::CreateUserSettingsRequest
    CreateUserSettingsResponse.add_member(:user_settings_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "userSettingsArn", traits: {"smithy.api#required" => {}}))
    CreateUserSettingsResponse.type = Types::CreateUserSettingsResponse
    CustomPattern.add_member(:pattern_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PatternName, name: "patternName", traits: {"smithy.api#required" => {}}))
    CustomPattern.add_member(:pattern_regex, ::Smithy::Schema::Shapes::MemberShape.new(target: Regex, name: "patternRegex", traits: {"smithy.api#required" => {}}))
    CustomPattern.add_member(:pattern_description, ::Smithy::Schema::Shapes::MemberShape.new(target: DescriptionSafe, name: "patternDescription"))
    CustomPattern.add_member(:keyword_regex, ::Smithy::Schema::Shapes::MemberShape.new(target: Regex, name: "keywordRegex"))
    CustomPattern.type = Types::CustomPattern
    DataProtectionSettings.add_member(:data_protection_settings_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "dataProtectionSettingsArn", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "dataProtectionSettingsArn"}))
    DataProtectionSettings.add_member(:inline_redaction_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: InlineRedactionConfiguration, name: "inlineRedactionConfiguration"))
    DataProtectionSettings.add_member(:associated_portal_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnList, name: "associatedPortalArns"))
    DataProtectionSettings.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DisplayNameSafe, name: "displayName"))
    DataProtectionSettings.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: DescriptionSafe, name: "description"))
    DataProtectionSettings.add_member(:creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "creationDate"))
    DataProtectionSettings.add_member(:customer_managed_key, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyArn, name: "customerManagedKey"))
    DataProtectionSettings.add_member(:additional_encryption_context, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionContextMap, name: "additionalEncryptionContext"))
    DataProtectionSettings.type = Types::DataProtectionSettings
    DataProtectionSettingsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DataProtectionSettingsSummary, name: "member"))
    DataProtectionSettingsSummary.add_member(:data_protection_settings_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "dataProtectionSettingsArn", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "dataProtectionSettingsArn"}))
    DataProtectionSettingsSummary.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DisplayNameSafe, name: "displayName"))
    DataProtectionSettingsSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: DescriptionSafe, name: "description"))
    DataProtectionSettingsSummary.add_member(:creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "creationDate"))
    DataProtectionSettingsSummary.type = Types::DataProtectionSettingsSummary
    DeleteBrowserSettingsRequest.add_member(:browser_settings_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "browserSettingsArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteBrowserSettingsRequest.type = Types::DeleteBrowserSettingsRequest
    DeleteBrowserSettingsResponse.type = Types::DeleteBrowserSettingsResponse
    DeleteDataProtectionSettingsRequest.add_member(:data_protection_settings_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "dataProtectionSettingsArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDataProtectionSettingsRequest.type = Types::DeleteDataProtectionSettingsRequest
    DeleteDataProtectionSettingsResponse.type = Types::DeleteDataProtectionSettingsResponse
    DeleteIdentityProviderRequest.add_member(:identity_provider_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SubresourceARN, name: "identityProviderArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteIdentityProviderRequest.type = Types::DeleteIdentityProviderRequest
    DeleteIdentityProviderResponse.type = Types::DeleteIdentityProviderResponse
    DeleteIpAccessSettingsRequest.add_member(:ip_access_settings_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "ipAccessSettingsArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteIpAccessSettingsRequest.type = Types::DeleteIpAccessSettingsRequest
    DeleteIpAccessSettingsResponse.type = Types::DeleteIpAccessSettingsResponse
    DeleteNetworkSettingsRequest.add_member(:network_settings_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "networkSettingsArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteNetworkSettingsRequest.type = Types::DeleteNetworkSettingsRequest
    DeleteNetworkSettingsResponse.type = Types::DeleteNetworkSettingsResponse
    DeletePortalRequest.add_member(:portal_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "portalArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeletePortalRequest.type = Types::DeletePortalRequest
    DeletePortalResponse.type = Types::DeletePortalResponse
    DeleteSessionLoggerRequest.add_member(:session_logger_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "sessionLoggerArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteSessionLoggerRequest.type = Types::DeleteSessionLoggerRequest
    DeleteSessionLoggerResponse.type = Types::DeleteSessionLoggerResponse
    DeleteTrustStoreRequest.add_member(:trust_store_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "trustStoreArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteTrustStoreRequest.type = Types::DeleteTrustStoreRequest
    DeleteTrustStoreResponse.type = Types::DeleteTrustStoreResponse
    DeleteUserAccessLoggingSettingsRequest.add_member(:user_access_logging_settings_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "userAccessLoggingSettingsArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteUserAccessLoggingSettingsRequest.type = Types::DeleteUserAccessLoggingSettingsRequest
    DeleteUserAccessLoggingSettingsResponse.type = Types::DeleteUserAccessLoggingSettingsResponse
    DeleteUserSettingsRequest.add_member(:user_settings_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "userSettingsArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteUserSettingsRequest.type = Types::DeleteUserSettingsRequest
    DeleteUserSettingsResponse.type = Types::DeleteUserSettingsResponse
    DisassociateBrowserSettingsRequest.add_member(:portal_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "portalArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateBrowserSettingsRequest.type = Types::DisassociateBrowserSettingsRequest
    DisassociateBrowserSettingsResponse.type = Types::DisassociateBrowserSettingsResponse
    DisassociateDataProtectionSettingsRequest.add_member(:portal_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "portalArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateDataProtectionSettingsRequest.type = Types::DisassociateDataProtectionSettingsRequest
    DisassociateDataProtectionSettingsResponse.type = Types::DisassociateDataProtectionSettingsResponse
    DisassociateIpAccessSettingsRequest.add_member(:portal_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "portalArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateIpAccessSettingsRequest.type = Types::DisassociateIpAccessSettingsRequest
    DisassociateIpAccessSettingsResponse.type = Types::DisassociateIpAccessSettingsResponse
    DisassociateNetworkSettingsRequest.add_member(:portal_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "portalArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateNetworkSettingsRequest.type = Types::DisassociateNetworkSettingsRequest
    DisassociateNetworkSettingsResponse.type = Types::DisassociateNetworkSettingsResponse
    DisassociateSessionLoggerRequest.add_member(:portal_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "portalArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateSessionLoggerRequest.type = Types::DisassociateSessionLoggerRequest
    DisassociateSessionLoggerResponse.type = Types::DisassociateSessionLoggerResponse
    DisassociateTrustStoreRequest.add_member(:portal_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "portalArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateTrustStoreRequest.type = Types::DisassociateTrustStoreRequest
    DisassociateTrustStoreResponse.type = Types::DisassociateTrustStoreResponse
    DisassociateUserAccessLoggingSettingsRequest.add_member(:portal_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "portalArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateUserAccessLoggingSettingsRequest.type = Types::DisassociateUserAccessLoggingSettingsRequest
    DisassociateUserAccessLoggingSettingsResponse.type = Types::DisassociateUserAccessLoggingSettingsResponse
    DisassociateUserSettingsRequest.add_member(:portal_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "portalArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateUserSettingsRequest.type = Types::DisassociateUserSettingsRequest
    DisassociateUserSettingsResponse.type = Types::DisassociateUserSettingsResponse
    EncryptionContextMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: StringType, name: "key"))
    EncryptionContextMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: StringType, name: "value"))
    Event.add_member(:website_interact, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WEBSITE_INTERACT", traits: {"smithy.api#enumValue" => "WebsiteInteract"}))
    Event.add_member(:file_download_from_secure_browser_to_remote_disk, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FILE_DOWNLOAD_FROM_SECURE_BROWSER_TO_REMOTE_DISK", traits: {"smithy.api#enumValue" => "FileDownloadFromSecureBrowserToRemoteDisk"}))
    Event.add_member(:file_transfer_from_remote_to_local_disk, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FILE_TRANSFER_FROM_REMOTE_TO_LOCAL_DISK", traits: {"smithy.api#enumValue" => "FileTransferFromRemoteToLocalDisk"}))
    Event.add_member(:file_transfer_from_local_to_remote_disk, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FILE_TRANSFER_FROM_LOCAL_TO_REMOTE_DISK", traits: {"smithy.api#enumValue" => "FileTransferFromLocalToRemoteDisk"}))
    Event.add_member(:file_upload_from_remote_disk_to_secure_browser, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FILE_UPLOAD_FROM_REMOTE_DISK_TO_SECURE_BROWSER", traits: {"smithy.api#enumValue" => "FileUploadFromRemoteDiskToSecureBrowser"}))
    Event.add_member(:content_paste_to_website, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONTENT_PASTE_TO_WEBSITE", traits: {"smithy.api#enumValue" => "ContentPasteToWebsite"}))
    Event.add_member(:content_transfer_from_local_to_remote_clipboard, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONTENT_TRANSFER_FROM_LOCAL_TO_REMOTE_CLIPBOARD", traits: {"smithy.api#enumValue" => "ContentTransferFromLocalToRemoteClipboard"}))
    Event.add_member(:content_copy_from_website, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONTENT_COPY_FROM_WEBSITE", traits: {"smithy.api#enumValue" => "ContentCopyFromWebsite"}))
    Event.add_member(:url_load, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "URL_LOAD", traits: {"smithy.api#enumValue" => "UrlLoad"}))
    Event.add_member(:tab_open, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TAB_OPEN", traits: {"smithy.api#enumValue" => "TabOpen"}))
    Event.add_member(:tab_close, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TAB_CLOSE", traits: {"smithy.api#enumValue" => "TabClose"}))
    Event.add_member(:print_job_submit, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRINT_JOB_SUBMIT", traits: {"smithy.api#enumValue" => "PrintJobSubmit"}))
    Event.add_member(:session_connect, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SESSION_CONNECT", traits: {"smithy.api#enumValue" => "SessionConnect"}))
    Event.add_member(:session_start, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SESSION_START", traits: {"smithy.api#enumValue" => "SessionStart"}))
    Event.add_member(:session_disconnect, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SESSION_DISCONNECT", traits: {"smithy.api#enumValue" => "SessionDisconnect"}))
    Event.add_member(:session_end, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SESSION_END", traits: {"smithy.api#enumValue" => "SessionEnd"}))
    Event.add_member(:url_block_by_content_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "URL_BLOCK_BY_CONTENT_FILTER", traits: {"smithy.api#enumValue" => "UrlBlockByContentFilter"}))
    EventFilter.add_member(:all, Types::EventFilter::All, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "all"))
    EventFilter.add_member(:include, Types::EventFilter::Include, ::Smithy::Schema::Shapes::MemberShape.new(target: Events, name: "include"))
    EventFilter.add_member(:unknown, Types::EventFilter::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    EventFilter.type = Types::EventFilter
    Events.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Event, name: "member"))
    ExpireSessionRequest.add_member(:portal_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PortalId, name: "portalId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ExpireSessionRequest.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionId, name: "sessionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ExpireSessionRequest.type = Types::ExpireSessionRequest
    ExpireSessionResponse.type = Types::ExpireSessionResponse
    FolderStructure.add_member(:flat, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FLAT", traits: {"smithy.api#enumValue" => "Flat"}))
    FolderStructure.add_member(:nested_by_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NESTED_BY_DATE", traits: {"smithy.api#enumValue" => "NestedByDate"}))
    GetBrowserSettingsRequest.add_member(:browser_settings_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "browserSettingsArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetBrowserSettingsRequest.type = Types::GetBrowserSettingsRequest
    GetBrowserSettingsResponse.add_member(:browser_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: BrowserSettings, name: "browserSettings", traits: {"smithy.api#nestedProperties" => {}}))
    GetBrowserSettingsResponse.type = Types::GetBrowserSettingsResponse
    GetDataProtectionSettingsRequest.add_member(:data_protection_settings_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "dataProtectionSettingsArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDataProtectionSettingsRequest.type = Types::GetDataProtectionSettingsRequest
    GetDataProtectionSettingsResponse.add_member(:data_protection_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: DataProtectionSettings, name: "dataProtectionSettings", traits: {"smithy.api#nestedProperties" => {}}))
    GetDataProtectionSettingsResponse.type = Types::GetDataProtectionSettingsResponse
    GetIdentityProviderRequest.add_member(:identity_provider_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SubresourceARN, name: "identityProviderArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetIdentityProviderRequest.type = Types::GetIdentityProviderRequest
    GetIdentityProviderResponse.add_member(:identity_provider, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityProvider, name: "identityProvider", traits: {"smithy.api#nestedProperties" => {}}))
    GetIdentityProviderResponse.type = Types::GetIdentityProviderResponse
    GetIpAccessSettingsRequest.add_member(:ip_access_settings_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "ipAccessSettingsArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetIpAccessSettingsRequest.type = Types::GetIpAccessSettingsRequest
    GetIpAccessSettingsResponse.add_member(:ip_access_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: IpAccessSettings, name: "ipAccessSettings", traits: {"smithy.api#nestedProperties" => {}}))
    GetIpAccessSettingsResponse.type = Types::GetIpAccessSettingsResponse
    GetNetworkSettingsRequest.add_member(:network_settings_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "networkSettingsArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetNetworkSettingsRequest.type = Types::GetNetworkSettingsRequest
    GetNetworkSettingsResponse.add_member(:network_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkSettings, name: "networkSettings", traits: {"smithy.api#nestedProperties" => {}}))
    GetNetworkSettingsResponse.type = Types::GetNetworkSettingsResponse
    GetPortalRequest.add_member(:portal_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "portalArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetPortalRequest.type = Types::GetPortalRequest
    GetPortalResponse.add_member(:portal, ::Smithy::Schema::Shapes::MemberShape.new(target: Portal, name: "portal", traits: {"smithy.api#nestedProperties" => {}}))
    GetPortalResponse.type = Types::GetPortalResponse
    GetPortalServiceProviderMetadataRequest.add_member(:portal_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "portalArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetPortalServiceProviderMetadataRequest.type = Types::GetPortalServiceProviderMetadataRequest
    GetPortalServiceProviderMetadataResponse.add_member(:portal_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "portalArn", traits: {"smithy.api#required" => {}}))
    GetPortalServiceProviderMetadataResponse.add_member(:service_provider_saml_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: SamlMetadata, name: "serviceProviderSamlMetadata", traits: {"aws.cloudformation#cfnMutability" => "read"}))
    GetPortalServiceProviderMetadataResponse.type = Types::GetPortalServiceProviderMetadataResponse
    GetSessionLoggerRequest.add_member(:session_logger_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "sessionLoggerArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSessionLoggerRequest.type = Types::GetSessionLoggerRequest
    GetSessionLoggerResponse.add_member(:session_logger, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionLogger, name: "sessionLogger", traits: {"smithy.api#nestedProperties" => {}}))
    GetSessionLoggerResponse.type = Types::GetSessionLoggerResponse
    GetSessionRequest.add_member(:portal_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PortalId, name: "portalId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSessionRequest.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionId, name: "sessionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSessionRequest.type = Types::GetSessionRequest
    GetSessionResponse.add_member(:session, ::Smithy::Schema::Shapes::MemberShape.new(target: Session, name: "session", traits: {"smithy.api#nestedProperties" => {}}))
    GetSessionResponse.type = Types::GetSessionResponse
    GetTrustStoreCertificateRequest.add_member(:trust_store_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "trustStoreArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "trustStoreArn"}))
    GetTrustStoreCertificateRequest.add_member(:thumbprint, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateThumbprint, name: "thumbprint", traits: {"smithy.api#httpQuery" => "thumbprint", "smithy.api#notProperty" => {}, "smithy.api#required" => {}}))
    GetTrustStoreCertificateRequest.type = Types::GetTrustStoreCertificateRequest
    GetTrustStoreCertificateResponse.add_member(:trust_store_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "trustStoreArn", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "trustStoreArn"}))
    GetTrustStoreCertificateResponse.add_member(:certificate, ::Smithy::Schema::Shapes::MemberShape.new(target: Certificate, name: "certificate", traits: {"smithy.api#notProperty" => {}}))
    GetTrustStoreCertificateResponse.type = Types::GetTrustStoreCertificateResponse
    GetTrustStoreRequest.add_member(:trust_store_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "trustStoreArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTrustStoreRequest.type = Types::GetTrustStoreRequest
    GetTrustStoreResponse.add_member(:trust_store, ::Smithy::Schema::Shapes::MemberShape.new(target: TrustStore, name: "trustStore", traits: {"smithy.api#nestedProperties" => {}}))
    GetTrustStoreResponse.type = Types::GetTrustStoreResponse
    GetUserAccessLoggingSettingsRequest.add_member(:user_access_logging_settings_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "userAccessLoggingSettingsArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetUserAccessLoggingSettingsRequest.type = Types::GetUserAccessLoggingSettingsRequest
    GetUserAccessLoggingSettingsResponse.add_member(:user_access_logging_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: UserAccessLoggingSettings, name: "userAccessLoggingSettings", traits: {"smithy.api#nestedProperties" => {}}))
    GetUserAccessLoggingSettingsResponse.type = Types::GetUserAccessLoggingSettingsResponse
    GetUserSettingsRequest.add_member(:user_settings_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "userSettingsArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetUserSettingsRequest.type = Types::GetUserSettingsRequest
    GetUserSettingsResponse.add_member(:user_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: UserSettings, name: "userSettings", traits: {"smithy.api#nestedProperties" => {}}))
    GetUserSettingsResponse.type = Types::GetUserSettingsResponse
    GlobalInlineRedactionUrls.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: InlineRedactionUrl, name: "member"))
    HiddenToolbarItemList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ToolbarItem, name: "member"))
    IconImageInput.add_member(:blob, Types::IconImageInput::Blob, ::Smithy::Schema::Shapes::MemberShape.new(target: IconImage, name: "blob"))
    IconImageInput.add_member(:s3_uri, Types::IconImageInput::S3Uri, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Uri, name: "s3Uri"))
    IconImageInput.add_member(:unknown, Types::IconImageInput::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    IconImageInput.type = Types::IconImageInput
    IdentityProvider.add_member(:identity_provider_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SubresourceARN, name: "identityProviderArn", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "identityProviderArn"}))
    IdentityProvider.add_member(:identity_provider_name, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityProviderName, name: "identityProviderName"))
    IdentityProvider.add_member(:identity_provider_type, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityProviderType, name: "identityProviderType"))
    IdentityProvider.add_member(:identity_provider_details, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityProviderDetails, name: "identityProviderDetails"))
    IdentityProvider.type = Types::IdentityProvider
    IdentityProviderDetails.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: StringType, name: "key"))
    IdentityProviderDetails.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: StringType, name: "value"))
    IdentityProviderList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityProviderSummary, name: "member"))
    IdentityProviderSummary.add_member(:identity_provider_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SubresourceARN, name: "identityProviderArn", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "identityProviderArn"}))
    IdentityProviderSummary.add_member(:identity_provider_name, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityProviderName, name: "identityProviderName"))
    IdentityProviderSummary.add_member(:identity_provider_type, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityProviderType, name: "identityProviderType"))
    IdentityProviderSummary.type = Types::IdentityProviderSummary
    ImageMetadata.add_member(:mime_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MimeType, name: "mimeType", traits: {"smithy.api#required" => {}}))
    ImageMetadata.add_member(:file_extension, ::Smithy::Schema::Shapes::MemberShape.new(target: StringType, name: "fileExtension", traits: {"smithy.api#required" => {}}))
    ImageMetadata.add_member(:last_upload_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastUploadTimestamp", traits: {"smithy.api#required" => {}}))
    ImageMetadata.type = Types::ImageMetadata
    InlineRedactionConfiguration.add_member(:inline_redaction_patterns, ::Smithy::Schema::Shapes::MemberShape.new(target: InlineRedactionPatterns, name: "inlineRedactionPatterns", traits: {"smithy.api#required" => {}}))
    InlineRedactionConfiguration.add_member(:global_enforced_urls, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalInlineRedactionUrls, name: "globalEnforcedUrls"))
    InlineRedactionConfiguration.add_member(:global_exempt_urls, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalInlineRedactionUrls, name: "globalExemptUrls"))
    InlineRedactionConfiguration.add_member(:global_confidence_level, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfidenceLevel, name: "globalConfidenceLevel"))
    InlineRedactionConfiguration.type = Types::InlineRedactionConfiguration
    InlineRedactionPattern.add_member(:built_in_pattern_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BuiltInPatternId, name: "builtInPatternId"))
    InlineRedactionPattern.add_member(:custom_pattern, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomPattern, name: "customPattern"))
    InlineRedactionPattern.add_member(:redaction_place_holder, ::Smithy::Schema::Shapes::MemberShape.new(target: RedactionPlaceHolder, name: "redactionPlaceHolder", traits: {"smithy.api#required" => {}}))
    InlineRedactionPattern.add_member(:enforced_urls, ::Smithy::Schema::Shapes::MemberShape.new(target: InlineRedactionUrls, name: "enforcedUrls"))
    InlineRedactionPattern.add_member(:exempt_urls, ::Smithy::Schema::Shapes::MemberShape.new(target: InlineRedactionUrls, name: "exemptUrls"))
    InlineRedactionPattern.add_member(:confidence_level, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfidenceLevel, name: "confidenceLevel"))
    InlineRedactionPattern.type = Types::InlineRedactionPattern
    InlineRedactionPatterns.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: InlineRedactionPattern, name: "member"))
    InlineRedactionUrls.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: InlineRedactionUrl, name: "member"))
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    InternalServerException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: RetryAfterSeconds, name: "retryAfterSeconds", traits: {"smithy.api#default" => 0, "smithy.api#httpHeader" => "Retry-After"}))
    InternalServerException.type = Types::InternalServerException
    IpAccessSettings.add_member(:ip_access_settings_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "ipAccessSettingsArn", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "ipAccessSettingsArn"}))
    IpAccessSettings.add_member(:associated_portal_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnList, name: "associatedPortalArns"))
    IpAccessSettings.add_member(:ip_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: IpRuleList, name: "ipRules"))
    IpAccessSettings.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DisplayName, name: "displayName"))
    IpAccessSettings.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    IpAccessSettings.add_member(:creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "creationDate"))
    IpAccessSettings.add_member(:customer_managed_key, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyArn, name: "customerManagedKey"))
    IpAccessSettings.add_member(:additional_encryption_context, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionContextMap, name: "additionalEncryptionContext"))
    IpAccessSettings.type = Types::IpAccessSettings
    IpAccessSettingsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: IpAccessSettingsSummary, name: "member"))
    IpAccessSettingsSummary.add_member(:ip_access_settings_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "ipAccessSettingsArn", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "ipAccessSettingsArn"}))
    IpAccessSettingsSummary.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DisplayName, name: "displayName"))
    IpAccessSettingsSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    IpAccessSettingsSummary.add_member(:creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "creationDate"))
    IpAccessSettingsSummary.type = Types::IpAccessSettingsSummary
    IpAddressList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: IpAddress, name: "member"))
    IpRule.add_member(:ip_range, ::Smithy::Schema::Shapes::MemberShape.new(target: IpRange, name: "ipRange", traits: {"smithy.api#required" => {}}))
    IpRule.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    IpRule.type = Types::IpRule
    IpRuleList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: IpRule, name: "member"))
    ListBrowserSettingsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListBrowserSettingsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListBrowserSettingsRequest.type = Types::ListBrowserSettingsRequest
    ListBrowserSettingsResponse.add_member(:browser_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: BrowserSettingsList, name: "browserSettings"))
    ListBrowserSettingsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListBrowserSettingsResponse.type = Types::ListBrowserSettingsResponse
    ListDataProtectionSettingsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListDataProtectionSettingsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListDataProtectionSettingsRequest.type = Types::ListDataProtectionSettingsRequest
    ListDataProtectionSettingsResponse.add_member(:data_protection_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: DataProtectionSettingsList, name: "dataProtectionSettings"))
    ListDataProtectionSettingsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListDataProtectionSettingsResponse.type = Types::ListDataProtectionSettingsResponse
    ListIdentityProvidersRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListIdentityProvidersRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListIdentityProvidersRequest.add_member(:portal_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "portalArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListIdentityProvidersRequest.type = Types::ListIdentityProvidersRequest
    ListIdentityProvidersResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListIdentityProvidersResponse.add_member(:identity_providers, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityProviderList, name: "identityProviders"))
    ListIdentityProvidersResponse.type = Types::ListIdentityProvidersResponse
    ListIpAccessSettingsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListIpAccessSettingsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListIpAccessSettingsRequest.type = Types::ListIpAccessSettingsRequest
    ListIpAccessSettingsResponse.add_member(:ip_access_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: IpAccessSettingsList, name: "ipAccessSettings"))
    ListIpAccessSettingsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListIpAccessSettingsResponse.type = Types::ListIpAccessSettingsResponse
    ListNetworkSettingsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListNetworkSettingsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListNetworkSettingsRequest.type = Types::ListNetworkSettingsRequest
    ListNetworkSettingsResponse.add_member(:network_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkSettingsList, name: "networkSettings"))
    ListNetworkSettingsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListNetworkSettingsResponse.type = Types::ListNetworkSettingsResponse
    ListPortalsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListPortalsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListPortalsRequest.type = Types::ListPortalsRequest
    ListPortalsResponse.add_member(:portals, ::Smithy::Schema::Shapes::MemberShape.new(target: PortalList, name: "portals"))
    ListPortalsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListPortalsResponse.type = Types::ListPortalsResponse
    ListSessionLoggersRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListSessionLoggersRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListSessionLoggersRequest.type = Types::ListSessionLoggersRequest
    ListSessionLoggersResponse.add_member(:session_loggers, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionLoggerList, name: "sessionLoggers"))
    ListSessionLoggersResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListSessionLoggersResponse.type = Types::ListSessionLoggersResponse
    ListSessionsRequest.add_member(:portal_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PortalId, name: "portalId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListSessionsRequest.add_member(:username, ::Smithy::Schema::Shapes::MemberShape.new(target: Username, name: "username", traits: {"smithy.api#httpQuery" => "username"}))
    ListSessionsRequest.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionId, name: "sessionId", traits: {"smithy.api#httpQuery" => "sessionId"}))
    ListSessionsRequest.add_member(:sort_by, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionSortBy, name: "sortBy", traits: {"smithy.api#httpQuery" => "sortBy"}))
    ListSessionsRequest.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionStatus, name: "status", traits: {"smithy.api#httpQuery" => "status"}))
    ListSessionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListSessionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListSessionsRequest.type = Types::ListSessionsRequest
    ListSessionsResponse.add_member(:sessions, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionSummaryList, name: "sessions", traits: {"smithy.api#required" => {}}))
    ListSessionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListSessionsResponse.type = Types::ListSessionsResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ListTrustStoreCertificatesRequest.add_member(:trust_store_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "trustStoreArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "trustStoreArn"}))
    ListTrustStoreCertificatesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken", "smithy.api#notProperty" => {}}))
    ListTrustStoreCertificatesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#notProperty" => {}}))
    ListTrustStoreCertificatesRequest.type = Types::ListTrustStoreCertificatesRequest
    ListTrustStoreCertificatesResponse.add_member(:certificate_list, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateSummaryList, name: "certificateList", traits: {"smithy.api#property" => {"name" => "certificateSummaryList"}}))
    ListTrustStoreCertificatesResponse.add_member(:trust_store_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "trustStoreArn", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "trustStoreArn"}))
    ListTrustStoreCertificatesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken", traits: {"smithy.api#notProperty" => {}}))
    ListTrustStoreCertificatesResponse.type = Types::ListTrustStoreCertificatesResponse
    ListTrustStoresRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListTrustStoresRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListTrustStoresRequest.type = Types::ListTrustStoresRequest
    ListTrustStoresResponse.add_member(:trust_stores, ::Smithy::Schema::Shapes::MemberShape.new(target: TrustStoreSummaryList, name: "trustStores"))
    ListTrustStoresResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListTrustStoresResponse.type = Types::ListTrustStoresResponse
    ListUserAccessLoggingSettingsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListUserAccessLoggingSettingsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListUserAccessLoggingSettingsRequest.type = Types::ListUserAccessLoggingSettingsRequest
    ListUserAccessLoggingSettingsResponse.add_member(:user_access_logging_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: UserAccessLoggingSettingsList, name: "userAccessLoggingSettings"))
    ListUserAccessLoggingSettingsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListUserAccessLoggingSettingsResponse.type = Types::ListUserAccessLoggingSettingsResponse
    ListUserSettingsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListUserSettingsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListUserSettingsRequest.type = Types::ListUserSettingsRequest
    ListUserSettingsResponse.add_member(:user_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: UserSettingsList, name: "userSettings"))
    ListUserSettingsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListUserSettingsResponse.type = Types::ListUserSettingsResponse
    Locale.add_member(:de, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DE", traits: {"smithy.api#enumValue" => "de-DE"}))
    Locale.add_member(:en, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EN", traits: {"smithy.api#enumValue" => "en-US"}))
    Locale.add_member(:es, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ES", traits: {"smithy.api#enumValue" => "es-ES"}))
    Locale.add_member(:fr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FR", traits: {"smithy.api#enumValue" => "fr-FR"}))
    Locale.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ID", traits: {"smithy.api#enumValue" => "id-ID"}))
    Locale.add_member(:it, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IT", traits: {"smithy.api#enumValue" => "it-IT"}))
    Locale.add_member(:jp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "JP", traits: {"smithy.api#enumValue" => "ja-JP"}))
    Locale.add_member(:kr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KR", traits: {"smithy.api#enumValue" => "ko-KR"}))
    Locale.add_member(:br, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BR", traits: {"smithy.api#enumValue" => "pt-BR"}))
    Locale.add_member(:cn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CN", traits: {"smithy.api#enumValue" => "zh-CN"}))
    Locale.add_member(:tw, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TW", traits: {"smithy.api#enumValue" => "zh-TW"}))
    LocalizedBrandingStringMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: Locale, name: "key"))
    LocalizedBrandingStringMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: LocalizedBrandingStrings, name: "value"))
    LocalizedBrandingStrings.add_member(:browser_tab_title, ::Smithy::Schema::Shapes::MemberShape.new(target: BrandingSafeStringType, name: "browserTabTitle", traits: {"smithy.api#length" => {"max" => 25}, "smithy.api#required" => {}}))
    LocalizedBrandingStrings.add_member(:welcome_text, ::Smithy::Schema::Shapes::MemberShape.new(target: BrandingSafeStringType, name: "welcomeText", traits: {"smithy.api#length" => {"max" => 150}, "smithy.api#required" => {}}))
    LocalizedBrandingStrings.add_member(:login_title, ::Smithy::Schema::Shapes::MemberShape.new(target: BrandingSafeStringType, name: "loginTitle", traits: {"smithy.api#length" => {"max" => 100}}))
    LocalizedBrandingStrings.add_member(:login_description, ::Smithy::Schema::Shapes::MemberShape.new(target: BrandingSafeStringType, name: "loginDescription", traits: {"smithy.api#length" => {"max" => 250}}))
    LocalizedBrandingStrings.add_member(:login_button_text, ::Smithy::Schema::Shapes::MemberShape.new(target: BrandingSafeStringType, name: "loginButtonText", traits: {"smithy.api#length" => {"max" => 30}}))
    LocalizedBrandingStrings.add_member(:contact_link, ::Smithy::Schema::Shapes::MemberShape.new(target: ContactLinkUrl, name: "contactLink"))
    LocalizedBrandingStrings.add_member(:contact_button_text, ::Smithy::Schema::Shapes::MemberShape.new(target: BrandingSafeStringType, name: "contactButtonText", traits: {"smithy.api#length" => {"max" => 30}}))
    LocalizedBrandingStrings.add_member(:loading_text, ::Smithy::Schema::Shapes::MemberShape.new(target: BrandingSafeStringType, name: "loadingText", traits: {"smithy.api#length" => {"max" => 300}}))
    LocalizedBrandingStrings.type = Types::LocalizedBrandingStrings
    LogConfiguration.add_member(:s3, ::Smithy::Schema::Shapes::MemberShape.new(target: S3LogConfiguration, name: "s3"))
    LogConfiguration.type = Types::LogConfiguration
    LogFileFormat.add_member(:json_lines, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "JSON_LINES", traits: {"smithy.api#enumValue" => "JSONLines"}))
    LogFileFormat.add_member(:json, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "JSON", traits: {"smithy.api#enumValue" => "Json"}))
    MimeType.add_member(:png, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PNG", traits: {"smithy.api#enumValue" => "image/png"}))
    MimeType.add_member(:jpeg, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "JPEG", traits: {"smithy.api#enumValue" => "image/jpeg"}))
    MimeType.add_member(:ico, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ICO", traits: {"smithy.api#enumValue" => "image/x-icon"}))
    NetworkSettings.add_member(:network_settings_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "networkSettingsArn", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "networkSettingsArn"}))
    NetworkSettings.add_member(:associated_portal_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnList, name: "associatedPortalArns"))
    NetworkSettings.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcId, name: "vpcId"))
    NetworkSettings.add_member(:subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetIdList, name: "subnetIds"))
    NetworkSettings.add_member(:security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupIdList, name: "securityGroupIds"))
    NetworkSettings.type = Types::NetworkSettings
    NetworkSettingsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkSettingsSummary, name: "member"))
    NetworkSettingsSummary.add_member(:network_settings_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "networkSettingsArn", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "networkSettingsArn"}))
    NetworkSettingsSummary.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcId, name: "vpcId"))
    NetworkSettingsSummary.type = Types::NetworkSettingsSummary
    Portal.add_member(:portal_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "portalArn", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "portalArn"}))
    Portal.add_member(:renderer_type, ::Smithy::Schema::Shapes::MemberShape.new(target: RendererType, name: "rendererType"))
    Portal.add_member(:browser_type, ::Smithy::Schema::Shapes::MemberShape.new(target: BrowserType, name: "browserType"))
    Portal.add_member(:portal_status, ::Smithy::Schema::Shapes::MemberShape.new(target: PortalStatus, name: "portalStatus"))
    Portal.add_member(:portal_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: PortalEndpoint, name: "portalEndpoint"))
    Portal.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DisplayName, name: "displayName"))
    Portal.add_member(:creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "creationDate"))
    Portal.add_member(:browser_settings_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "browserSettingsArn"))
    Portal.add_member(:data_protection_settings_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "dataProtectionSettingsArn"))
    Portal.add_member(:user_settings_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "userSettingsArn"))
    Portal.add_member(:network_settings_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "networkSettingsArn"))
    Portal.add_member(:session_logger_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "sessionLoggerArn"))
    Portal.add_member(:trust_store_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "trustStoreArn"))
    Portal.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusReason, name: "statusReason"))
    Portal.add_member(:user_access_logging_settings_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "userAccessLoggingSettingsArn"))
    Portal.add_member(:authentication_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticationType, name: "authenticationType"))
    Portal.add_member(:ip_access_settings_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "ipAccessSettingsArn"))
    Portal.add_member(:customer_managed_key, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyArn, name: "customerManagedKey"))
    Portal.add_member(:additional_encryption_context, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionContextMap, name: "additionalEncryptionContext"))
    Portal.add_member(:instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceType, name: "instanceType"))
    Portal.add_member(:max_concurrent_sessions, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxConcurrentSessions, name: "maxConcurrentSessions"))
    Portal.add_member(:portal_custom_domain, ::Smithy::Schema::Shapes::MemberShape.new(target: PortalCustomDomain, name: "portalCustomDomain"))
    Portal.type = Types::Portal
    PortalList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PortalSummary, name: "member"))
    PortalSummary.add_member(:portal_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "portalArn", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "portalArn"}))
    PortalSummary.add_member(:renderer_type, ::Smithy::Schema::Shapes::MemberShape.new(target: RendererType, name: "rendererType"))
    PortalSummary.add_member(:browser_type, ::Smithy::Schema::Shapes::MemberShape.new(target: BrowserType, name: "browserType"))
    PortalSummary.add_member(:portal_status, ::Smithy::Schema::Shapes::MemberShape.new(target: PortalStatus, name: "portalStatus"))
    PortalSummary.add_member(:portal_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: PortalEndpoint, name: "portalEndpoint"))
    PortalSummary.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DisplayName, name: "displayName"))
    PortalSummary.add_member(:creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "creationDate"))
    PortalSummary.add_member(:browser_settings_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "browserSettingsArn"))
    PortalSummary.add_member(:data_protection_settings_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "dataProtectionSettingsArn"))
    PortalSummary.add_member(:user_settings_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "userSettingsArn"))
    PortalSummary.add_member(:network_settings_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "networkSettingsArn"))
    PortalSummary.add_member(:session_logger_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "sessionLoggerArn"))
    PortalSummary.add_member(:trust_store_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "trustStoreArn"))
    PortalSummary.add_member(:user_access_logging_settings_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "userAccessLoggingSettingsArn"))
    PortalSummary.add_member(:authentication_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticationType, name: "authenticationType"))
    PortalSummary.add_member(:ip_access_settings_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "ipAccessSettingsArn"))
    PortalSummary.add_member(:instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceType, name: "instanceType"))
    PortalSummary.add_member(:max_concurrent_sessions, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxConcurrentSessions, name: "maxConcurrentSessions"))
    PortalSummary.add_member(:portal_custom_domain, ::Smithy::Schema::Shapes::MemberShape.new(target: PortalCustomDomain, name: "portalCustomDomain"))
    PortalSummary.type = Types::PortalSummary
    RedactionPlaceHolder.add_member(:redaction_place_holder_type, ::Smithy::Schema::Shapes::MemberShape.new(target: RedactionPlaceHolderType, name: "redactionPlaceHolderType", traits: {"smithy.api#required" => {}}))
    RedactionPlaceHolder.add_member(:redaction_place_holder_text, ::Smithy::Schema::Shapes::MemberShape.new(target: RedactionPlaceHolderText, name: "redactionPlaceHolderText"))
    RedactionPlaceHolder.type = Types::RedactionPlaceHolder
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    ResourceNotFoundException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "resourceId"))
    ResourceNotFoundException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "resourceType"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    S3LogConfiguration.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Bucket, name: "bucket", traits: {"smithy.api#required" => {}}))
    S3LogConfiguration.add_member(:key_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: S3KeyPrefix, name: "keyPrefix"))
    S3LogConfiguration.add_member(:bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: S3BucketOwner, name: "bucketOwner"))
    S3LogConfiguration.add_member(:log_file_format, ::Smithy::Schema::Shapes::MemberShape.new(target: LogFileFormat, name: "logFileFormat", traits: {"smithy.api#required" => {}}))
    S3LogConfiguration.add_member(:folder_structure, ::Smithy::Schema::Shapes::MemberShape.new(target: FolderStructure, name: "folderStructure", traits: {"smithy.api#required" => {}}))
    S3LogConfiguration.type = Types::S3LogConfiguration
    SecurityGroupIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupId, name: "member"))
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    ServiceQuotaExceededException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "resourceId"))
    ServiceQuotaExceededException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "resourceType"))
    ServiceQuotaExceededException.add_member(:service_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceCode, name: "serviceCode"))
    ServiceQuotaExceededException.add_member(:quota_code, ::Smithy::Schema::Shapes::MemberShape.new(target: QuotaCode, name: "quotaCode"))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    Session.add_member(:portal_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "portalArn"))
    Session.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StringType, name: "sessionId"))
    Session.add_member(:username, ::Smithy::Schema::Shapes::MemberShape.new(target: Username, name: "username"))
    Session.add_member(:client_ip_addresses, ::Smithy::Schema::Shapes::MemberShape.new(target: IpAddressList, name: "clientIpAddresses"))
    Session.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionStatus, name: "status"))
    Session.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "startTime"))
    Session.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "endTime"))
    Session.type = Types::Session
    SessionLogger.add_member(:session_logger_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "sessionLoggerArn", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "sessionLoggerArn"}))
    SessionLogger.add_member(:event_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: EventFilter, name: "eventFilter"))
    SessionLogger.add_member(:log_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: LogConfiguration, name: "logConfiguration"))
    SessionLogger.add_member(:customer_managed_key, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyArn, name: "customerManagedKey"))
    SessionLogger.add_member(:additional_encryption_context, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionContextMap, name: "additionalEncryptionContext"))
    SessionLogger.add_member(:associated_portal_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnList, name: "associatedPortalArns"))
    SessionLogger.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DisplayNameSafe, name: "displayName"))
    SessionLogger.add_member(:creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "creationDate"))
    SessionLogger.type = Types::SessionLogger
    SessionLoggerList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionLoggerSummary, name: "member"))
    SessionLoggerSummary.add_member(:session_logger_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "sessionLoggerArn", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "sessionLoggerArn"}))
    SessionLoggerSummary.add_member(:log_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: LogConfiguration, name: "logConfiguration"))
    SessionLoggerSummary.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DisplayNameSafe, name: "displayName"))
    SessionLoggerSummary.add_member(:creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "creationDate"))
    SessionLoggerSummary.type = Types::SessionLoggerSummary
    SessionSortBy.add_member(:start_time_ascending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "START_TIME_ASCENDING", traits: {"smithy.api#enumValue" => "StartTimeAscending"}))
    SessionSortBy.add_member(:start_time_descending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "START_TIME_DESCENDING", traits: {"smithy.api#enumValue" => "StartTimeDescending"}))
    SessionStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "Active"}))
    SessionStatus.add_member(:terminated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TERMINATED", traits: {"smithy.api#enumValue" => "Terminated"}))
    SessionSummary.add_member(:portal_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "portalArn"))
    SessionSummary.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StringType, name: "sessionId"))
    SessionSummary.add_member(:username, ::Smithy::Schema::Shapes::MemberShape.new(target: Username, name: "username"))
    SessionSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionStatus, name: "status"))
    SessionSummary.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "startTime"))
    SessionSummary.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "endTime"))
    SessionSummary.type = Types::SessionSummary
    SessionSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionSummary, name: "member"))
    SubnetIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetId, name: "member"))
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "Key", traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "Value", traits: {"smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member"))
    TagList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, name: "member"))
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    ThrottlingException.add_member(:service_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceCode, name: "serviceCode"))
    ThrottlingException.add_member(:quota_code, ::Smithy::Schema::Shapes::MemberShape.new(target: QuotaCode, name: "quotaCode"))
    ThrottlingException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: RetryAfterSeconds, name: "retryAfterSeconds", traits: {"smithy.api#default" => 0, "smithy.api#httpHeader" => "Retry-After"}))
    ThrottlingException.type = Types::ThrottlingException
    TooManyTagsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: TagExceptionMessage, name: "message"))
    TooManyTagsException.add_member(:resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "resourceName"))
    TooManyTagsException.type = Types::TooManyTagsException
    ToolbarConfiguration.add_member(:toolbar_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ToolbarType, name: "toolbarType"))
    ToolbarConfiguration.add_member(:visual_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: VisualMode, name: "visualMode"))
    ToolbarConfiguration.add_member(:hidden_toolbar_items, ::Smithy::Schema::Shapes::MemberShape.new(target: HiddenToolbarItemList, name: "hiddenToolbarItems"))
    ToolbarConfiguration.add_member(:max_display_resolution, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxDisplayResolution, name: "maxDisplayResolution"))
    ToolbarConfiguration.type = Types::ToolbarConfiguration
    TrustStore.add_member(:associated_portal_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnList, name: "associatedPortalArns"))
    TrustStore.add_member(:trust_store_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "trustStoreArn", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "trustStoreArn"}))
    TrustStore.type = Types::TrustStore
    TrustStoreSummary.add_member(:trust_store_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "trustStoreArn"))
    TrustStoreSummary.type = Types::TrustStoreSummary
    TrustStoreSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TrustStoreSummary, name: "member"))
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "tagKeys", traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateBrowserSettingsRequest.add_member(:browser_settings_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "browserSettingsArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateBrowserSettingsRequest.add_member(:browser_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: BrowserPolicy, name: "browserPolicy"))
    UpdateBrowserSettingsRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    UpdateBrowserSettingsRequest.add_member(:web_content_filtering_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: WebContentFilteringPolicy, name: "webContentFilteringPolicy"))
    UpdateBrowserSettingsRequest.type = Types::UpdateBrowserSettingsRequest
    UpdateBrowserSettingsResponse.add_member(:browser_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: BrowserSettings, name: "browserSettings", traits: {"smithy.api#nestedProperties" => {}, "smithy.api#required" => {}}))
    UpdateBrowserSettingsResponse.type = Types::UpdateBrowserSettingsResponse
    UpdateDataProtectionSettingsRequest.add_member(:data_protection_settings_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "dataProtectionSettingsArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDataProtectionSettingsRequest.add_member(:inline_redaction_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: InlineRedactionConfiguration, name: "inlineRedactionConfiguration"))
    UpdateDataProtectionSettingsRequest.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DisplayNameSafe, name: "displayName"))
    UpdateDataProtectionSettingsRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: DescriptionSafe, name: "description"))
    UpdateDataProtectionSettingsRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    UpdateDataProtectionSettingsRequest.type = Types::UpdateDataProtectionSettingsRequest
    UpdateDataProtectionSettingsResponse.add_member(:data_protection_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: DataProtectionSettings, name: "dataProtectionSettings", traits: {"smithy.api#nestedProperties" => {}, "smithy.api#required" => {}}))
    UpdateDataProtectionSettingsResponse.type = Types::UpdateDataProtectionSettingsResponse
    UpdateIdentityProviderRequest.add_member(:identity_provider_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SubresourceARN, name: "identityProviderArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateIdentityProviderRequest.add_member(:identity_provider_name, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityProviderName, name: "identityProviderName"))
    UpdateIdentityProviderRequest.add_member(:identity_provider_type, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityProviderType, name: "identityProviderType"))
    UpdateIdentityProviderRequest.add_member(:identity_provider_details, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityProviderDetails, name: "identityProviderDetails"))
    UpdateIdentityProviderRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    UpdateIdentityProviderRequest.type = Types::UpdateIdentityProviderRequest
    UpdateIdentityProviderResponse.add_member(:identity_provider, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityProvider, name: "identityProvider", traits: {"smithy.api#nestedProperties" => {}, "smithy.api#required" => {}}))
    UpdateIdentityProviderResponse.type = Types::UpdateIdentityProviderResponse
    UpdateIpAccessSettingsRequest.add_member(:ip_access_settings_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "ipAccessSettingsArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateIpAccessSettingsRequest.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DisplayName, name: "displayName"))
    UpdateIpAccessSettingsRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    UpdateIpAccessSettingsRequest.add_member(:ip_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: IpRuleList, name: "ipRules"))
    UpdateIpAccessSettingsRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    UpdateIpAccessSettingsRequest.type = Types::UpdateIpAccessSettingsRequest
    UpdateIpAccessSettingsResponse.add_member(:ip_access_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: IpAccessSettings, name: "ipAccessSettings", traits: {"smithy.api#nestedProperties" => {}, "smithy.api#required" => {}}))
    UpdateIpAccessSettingsResponse.type = Types::UpdateIpAccessSettingsResponse
    UpdateNetworkSettingsRequest.add_member(:network_settings_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "networkSettingsArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateNetworkSettingsRequest.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcId, name: "vpcId"))
    UpdateNetworkSettingsRequest.add_member(:subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetIdList, name: "subnetIds"))
    UpdateNetworkSettingsRequest.add_member(:security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupIdList, name: "securityGroupIds"))
    UpdateNetworkSettingsRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    UpdateNetworkSettingsRequest.type = Types::UpdateNetworkSettingsRequest
    UpdateNetworkSettingsResponse.add_member(:network_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkSettings, name: "networkSettings", traits: {"smithy.api#nestedProperties" => {}, "smithy.api#required" => {}}))
    UpdateNetworkSettingsResponse.type = Types::UpdateNetworkSettingsResponse
    UpdatePortalRequest.add_member(:portal_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "portalArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdatePortalRequest.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DisplayName, name: "displayName"))
    UpdatePortalRequest.add_member(:authentication_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticationType, name: "authenticationType"))
    UpdatePortalRequest.add_member(:instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceType, name: "instanceType"))
    UpdatePortalRequest.add_member(:max_concurrent_sessions, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxConcurrentSessions, name: "maxConcurrentSessions"))
    UpdatePortalRequest.add_member(:portal_custom_domain, ::Smithy::Schema::Shapes::MemberShape.new(target: PortalCustomDomain, name: "portalCustomDomain"))
    UpdatePortalRequest.type = Types::UpdatePortalRequest
    UpdatePortalResponse.add_member(:portal, ::Smithy::Schema::Shapes::MemberShape.new(target: Portal, name: "portal", traits: {"smithy.api#nestedProperties" => {}}))
    UpdatePortalResponse.type = Types::UpdatePortalResponse
    UpdateSessionLoggerRequest.add_member(:session_logger_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "sessionLoggerArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateSessionLoggerRequest.add_member(:event_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: EventFilter, name: "eventFilter"))
    UpdateSessionLoggerRequest.add_member(:log_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: LogConfiguration, name: "logConfiguration"))
    UpdateSessionLoggerRequest.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DisplayNameSafe, name: "displayName"))
    UpdateSessionLoggerRequest.type = Types::UpdateSessionLoggerRequest
    UpdateSessionLoggerResponse.add_member(:session_logger, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionLogger, name: "sessionLogger", traits: {"smithy.api#nestedProperties" => {}, "smithy.api#required" => {}}))
    UpdateSessionLoggerResponse.type = Types::UpdateSessionLoggerResponse
    UpdateTrustStoreRequest.add_member(:trust_store_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "trustStoreArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateTrustStoreRequest.add_member(:certificates_to_add, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateList, name: "certificatesToAdd", traits: {"smithy.api#notProperty" => {}}))
    UpdateTrustStoreRequest.add_member(:certificates_to_delete, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateThumbprintList, name: "certificatesToDelete", traits: {"smithy.api#notProperty" => {}}))
    UpdateTrustStoreRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    UpdateTrustStoreRequest.type = Types::UpdateTrustStoreRequest
    UpdateTrustStoreResponse.add_member(:trust_store_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "trustStoreArn", traits: {"smithy.api#required" => {}}))
    UpdateTrustStoreResponse.type = Types::UpdateTrustStoreResponse
    UpdateUserAccessLoggingSettingsRequest.add_member(:user_access_logging_settings_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "userAccessLoggingSettingsArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateUserAccessLoggingSettingsRequest.add_member(:kinesis_stream_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KinesisStreamArn, name: "kinesisStreamArn"))
    UpdateUserAccessLoggingSettingsRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    UpdateUserAccessLoggingSettingsRequest.type = Types::UpdateUserAccessLoggingSettingsRequest
    UpdateUserAccessLoggingSettingsResponse.add_member(:user_access_logging_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: UserAccessLoggingSettings, name: "userAccessLoggingSettings", traits: {"smithy.api#nestedProperties" => {}, "smithy.api#required" => {}}))
    UpdateUserAccessLoggingSettingsResponse.type = Types::UpdateUserAccessLoggingSettingsResponse
    UpdateUserSettingsRequest.add_member(:user_settings_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "userSettingsArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateUserSettingsRequest.add_member(:copy_allowed, ::Smithy::Schema::Shapes::MemberShape.new(target: EnabledType, name: "copyAllowed"))
    UpdateUserSettingsRequest.add_member(:paste_allowed, ::Smithy::Schema::Shapes::MemberShape.new(target: EnabledType, name: "pasteAllowed"))
    UpdateUserSettingsRequest.add_member(:download_allowed, ::Smithy::Schema::Shapes::MemberShape.new(target: EnabledType, name: "downloadAllowed"))
    UpdateUserSettingsRequest.add_member(:upload_allowed, ::Smithy::Schema::Shapes::MemberShape.new(target: EnabledType, name: "uploadAllowed"))
    UpdateUserSettingsRequest.add_member(:print_allowed, ::Smithy::Schema::Shapes::MemberShape.new(target: EnabledType, name: "printAllowed"))
    UpdateUserSettingsRequest.add_member(:disconnect_timeout_in_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: DisconnectTimeoutInMinutes, name: "disconnectTimeoutInMinutes", traits: {"smithy.api#default" => nil}))
    UpdateUserSettingsRequest.add_member(:idle_disconnect_timeout_in_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: IdleDisconnectTimeoutInMinutes, name: "idleDisconnectTimeoutInMinutes", traits: {"smithy.api#default" => nil}))
    UpdateUserSettingsRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    UpdateUserSettingsRequest.add_member(:cookie_synchronization_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: CookieSynchronizationConfiguration, name: "cookieSynchronizationConfiguration"))
    UpdateUserSettingsRequest.add_member(:deep_link_allowed, ::Smithy::Schema::Shapes::MemberShape.new(target: EnabledType, name: "deepLinkAllowed"))
    UpdateUserSettingsRequest.add_member(:toolbar_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ToolbarConfiguration, name: "toolbarConfiguration"))
    UpdateUserSettingsRequest.add_member(:branding_configuration_input, ::Smithy::Schema::Shapes::MemberShape.new(target: BrandingConfigurationUpdateInput, name: "brandingConfigurationInput", traits: {"smithy.api#notProperty" => {}}))
    UpdateUserSettingsRequest.add_member(:web_authn_allowed, ::Smithy::Schema::Shapes::MemberShape.new(target: EnabledType, name: "webAuthnAllowed"))
    UpdateUserSettingsRequest.type = Types::UpdateUserSettingsRequest
    UpdateUserSettingsResponse.add_member(:user_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: UserSettings, name: "userSettings", traits: {"smithy.api#nestedProperties" => {}, "smithy.api#required" => {}}))
    UpdateUserSettingsResponse.type = Types::UpdateUserSettingsResponse
    UrlPatternList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: UrlPattern, name: "member"))
    UserAccessLoggingSettings.add_member(:user_access_logging_settings_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "userAccessLoggingSettingsArn", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "userAccessLoggingSettingsArn"}))
    UserAccessLoggingSettings.add_member(:associated_portal_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnList, name: "associatedPortalArns"))
    UserAccessLoggingSettings.add_member(:kinesis_stream_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KinesisStreamArn, name: "kinesisStreamArn"))
    UserAccessLoggingSettings.type = Types::UserAccessLoggingSettings
    UserAccessLoggingSettingsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: UserAccessLoggingSettingsSummary, name: "member"))
    UserAccessLoggingSettingsSummary.add_member(:user_access_logging_settings_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "userAccessLoggingSettingsArn", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "userAccessLoggingSettingsArn"}))
    UserAccessLoggingSettingsSummary.add_member(:kinesis_stream_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KinesisStreamArn, name: "kinesisStreamArn"))
    UserAccessLoggingSettingsSummary.type = Types::UserAccessLoggingSettingsSummary
    UserSettings.add_member(:user_settings_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "userSettingsArn", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "userSettingsArn"}))
    UserSettings.add_member(:associated_portal_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnList, name: "associatedPortalArns"))
    UserSettings.add_member(:copy_allowed, ::Smithy::Schema::Shapes::MemberShape.new(target: EnabledType, name: "copyAllowed"))
    UserSettings.add_member(:paste_allowed, ::Smithy::Schema::Shapes::MemberShape.new(target: EnabledType, name: "pasteAllowed"))
    UserSettings.add_member(:download_allowed, ::Smithy::Schema::Shapes::MemberShape.new(target: EnabledType, name: "downloadAllowed"))
    UserSettings.add_member(:upload_allowed, ::Smithy::Schema::Shapes::MemberShape.new(target: EnabledType, name: "uploadAllowed"))
    UserSettings.add_member(:print_allowed, ::Smithy::Schema::Shapes::MemberShape.new(target: EnabledType, name: "printAllowed"))
    UserSettings.add_member(:disconnect_timeout_in_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: DisconnectTimeoutInMinutes, name: "disconnectTimeoutInMinutes", traits: {"smithy.api#default" => nil}))
    UserSettings.add_member(:idle_disconnect_timeout_in_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: IdleDisconnectTimeoutInMinutes, name: "idleDisconnectTimeoutInMinutes", traits: {"smithy.api#default" => nil}))
    UserSettings.add_member(:cookie_synchronization_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: CookieSynchronizationConfiguration, name: "cookieSynchronizationConfiguration"))
    UserSettings.add_member(:customer_managed_key, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyArn, name: "customerManagedKey"))
    UserSettings.add_member(:additional_encryption_context, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionContextMap, name: "additionalEncryptionContext"))
    UserSettings.add_member(:deep_link_allowed, ::Smithy::Schema::Shapes::MemberShape.new(target: EnabledType, name: "deepLinkAllowed"))
    UserSettings.add_member(:toolbar_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ToolbarConfiguration, name: "toolbarConfiguration"))
    UserSettings.add_member(:branding_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: BrandingConfiguration, name: "brandingConfiguration"))
    UserSettings.add_member(:web_authn_allowed, ::Smithy::Schema::Shapes::MemberShape.new(target: EnabledType, name: "webAuthnAllowed"))
    UserSettings.type = Types::UserSettings
    UserSettingsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: UserSettingsSummary, name: "member"))
    UserSettingsSummary.add_member(:user_settings_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "userSettingsArn", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "userSettingsArn"}))
    UserSettingsSummary.add_member(:copy_allowed, ::Smithy::Schema::Shapes::MemberShape.new(target: EnabledType, name: "copyAllowed"))
    UserSettingsSummary.add_member(:paste_allowed, ::Smithy::Schema::Shapes::MemberShape.new(target: EnabledType, name: "pasteAllowed"))
    UserSettingsSummary.add_member(:download_allowed, ::Smithy::Schema::Shapes::MemberShape.new(target: EnabledType, name: "downloadAllowed"))
    UserSettingsSummary.add_member(:upload_allowed, ::Smithy::Schema::Shapes::MemberShape.new(target: EnabledType, name: "uploadAllowed"))
    UserSettingsSummary.add_member(:print_allowed, ::Smithy::Schema::Shapes::MemberShape.new(target: EnabledType, name: "printAllowed"))
    UserSettingsSummary.add_member(:disconnect_timeout_in_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: DisconnectTimeoutInMinutes, name: "disconnectTimeoutInMinutes", traits: {"smithy.api#default" => nil}))
    UserSettingsSummary.add_member(:idle_disconnect_timeout_in_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: IdleDisconnectTimeoutInMinutes, name: "idleDisconnectTimeoutInMinutes", traits: {"smithy.api#default" => nil}))
    UserSettingsSummary.add_member(:cookie_synchronization_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: CookieSynchronizationConfiguration, name: "cookieSynchronizationConfiguration"))
    UserSettingsSummary.add_member(:deep_link_allowed, ::Smithy::Schema::Shapes::MemberShape.new(target: EnabledType, name: "deepLinkAllowed"))
    UserSettingsSummary.add_member(:toolbar_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ToolbarConfiguration, name: "toolbarConfiguration"))
    UserSettingsSummary.add_member(:branding_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: BrandingConfiguration, name: "brandingConfiguration"))
    UserSettingsSummary.add_member(:web_authn_allowed, ::Smithy::Schema::Shapes::MemberShape.new(target: EnabledType, name: "webAuthnAllowed"))
    UserSettingsSummary.type = Types::UserSettingsSummary
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    ValidationException.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionReason, name: "reason"))
    ValidationException.add_member(:field_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionFieldList, name: "fieldList"))
    ValidationException.type = Types::ValidationException
    ValidationExceptionField.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldName, name: "name", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFieldList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionField, name: "member"))
    WallpaperImageInput.add_member(:blob, Types::WallpaperImageInput::Blob, ::Smithy::Schema::Shapes::MemberShape.new(target: WallpaperImage, name: "blob"))
    WallpaperImageInput.add_member(:s3_uri, Types::WallpaperImageInput::S3Uri, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Uri, name: "s3Uri"))
    WallpaperImageInput.add_member(:unknown, Types::WallpaperImageInput::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    WallpaperImageInput.type = Types::WallpaperImageInput
    WebContentFilteringPolicy.add_member(:blocked_categories, ::Smithy::Schema::Shapes::MemberShape.new(target: BlockedCategories, name: "blockedCategories"))
    WebContentFilteringPolicy.add_member(:allowed_urls, ::Smithy::Schema::Shapes::MemberShape.new(target: UrlPatternList, name: "allowedUrls"))
    WebContentFilteringPolicy.add_member(:blocked_urls, ::Smithy::Schema::Shapes::MemberShape.new(target: UrlPatternList, name: "blockedUrls"))
    WebContentFilteringPolicy.type = Types::WebContentFilteringPolicy

    AWSErmineControlPlaneService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.workspacesweb#AWSErmineControlPlaneService"
      service.name = "AWSErmineControlPlaneService"
      service.version = "2020-07-08"
      service.traits = {"aws.api#service" => {"sdkId" => "WorkSpaces Web", "arnNamespace" => "workspaces-web", "cloudFormationName" => "WorkSpacesWeb", "cloudTrailEventSource" => "workspaces-web.amazonaws.com", "endpointPrefix" => "workspaces-web"}, "aws.api#tagEnabled" => {}, "aws.auth#sigv4" => {"name" => "workspaces-web"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "Amazon WorkSpaces Web", "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}, "UseDualStack" => {"builtIn" => "AWS::UseDualStack", "required" => true, "default" => false, "documentation" => "When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.", "type" => "boolean"}, "UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseDualStack"}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsDualStack"]}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsFIPS"]}, true]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "error" => "Invalid Configuration: Dualstack and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://workspaces-web-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS and DualStack are enabled, but this partition does not support one or both", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://workspaces-web-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS is enabled but this partition does not support FIPS", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://workspaces-web.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "DualStack is enabled but this partition does not support DualStack", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://workspaces-web.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 13, "nodes" => "/////wAAAAH/////AAAAAAAAAAwAAAADAAAAAQAAAAQF9eELAAAAAgAAAAUF9eELAAAAAwAAAAgAAAAGAAAABAAAAAcF9eEKAAAABQX14QgF9eEJAAAABAAAAAoAAAAJAAAABgX14QYF9eEHAAAABQAAAAsF9eEFAAAABgX14QQF9eEFAAAAAwX14QEAAAANAAAABAX14QIF9eED"}}
      service.add_operation(:associate_browser_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#AssociateBrowserSettings"
        operation.name = "AssociateBrowserSettings"
        operation.input = AssociateBrowserSettingsRequest
        operation.output = AssociateBrowserSettingsResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/portals/{portalArn+}/browserSettings", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:associate_data_protection_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#AssociateDataProtectionSettings"
        operation.name = "AssociateDataProtectionSettings"
        operation.input = AssociateDataProtectionSettingsRequest
        operation.output = AssociateDataProtectionSettingsResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/portals/{portalArn+}/dataProtectionSettings", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:associate_ip_access_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#AssociateIpAccessSettings"
        operation.name = "AssociateIpAccessSettings"
        operation.input = AssociateIpAccessSettingsRequest
        operation.output = AssociateIpAccessSettingsResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/portals/{portalArn+}/ipAccessSettings", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:associate_network_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#AssociateNetworkSettings"
        operation.name = "AssociateNetworkSettings"
        operation.input = AssociateNetworkSettingsRequest
        operation.output = AssociateNetworkSettingsResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/portals/{portalArn+}/networkSettings", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:associate_session_logger, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#AssociateSessionLogger"
        operation.name = "AssociateSessionLogger"
        operation.input = AssociateSessionLoggerRequest
        operation.output = AssociateSessionLoggerResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/portals/{portalArn+}/sessionLogger", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:associate_trust_store, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#AssociateTrustStore"
        operation.name = "AssociateTrustStore"
        operation.input = AssociateTrustStoreRequest
        operation.output = AssociateTrustStoreResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/portals/{portalArn+}/trustStores", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:associate_user_access_logging_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#AssociateUserAccessLoggingSettings"
        operation.name = "AssociateUserAccessLoggingSettings"
        operation.input = AssociateUserAccessLoggingSettingsRequest
        operation.output = AssociateUserAccessLoggingSettingsResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/portals/{portalArn+}/userAccessLoggingSettings", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:associate_user_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#AssociateUserSettings"
        operation.name = "AssociateUserSettings"
        operation.input = AssociateUserSettingsRequest
        operation.output = AssociateUserSettingsResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/portals/{portalArn+}/userSettings", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_browser_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#CreateBrowserSettings"
        operation.name = "CreateBrowserSettings"
        operation.input = CreateBrowserSettingsRequest
        operation.output = CreateBrowserSettingsResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/browserSettings", "code" => 200}}
      end)
      service.add_operation(:create_data_protection_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#CreateDataProtectionSettings"
        operation.name = "CreateDataProtectionSettings"
        operation.input = CreateDataProtectionSettingsRequest
        operation.output = CreateDataProtectionSettingsResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/dataProtectionSettings", "code" => 200}}
      end)
      service.add_operation(:create_identity_provider, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#CreateIdentityProvider"
        operation.name = "CreateIdentityProvider"
        operation.input = CreateIdentityProviderRequest
        operation.output = CreateIdentityProviderResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/identityProviders", "code" => 200}}
      end)
      service.add_operation(:create_ip_access_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#CreateIpAccessSettings"
        operation.name = "CreateIpAccessSettings"
        operation.input = CreateIpAccessSettingsRequest
        operation.output = CreateIpAccessSettingsResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ipAccessSettings", "code" => 200}}
      end)
      service.add_operation(:create_network_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#CreateNetworkSettings"
        operation.name = "CreateNetworkSettings"
        operation.input = CreateNetworkSettingsRequest
        operation.output = CreateNetworkSettingsResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/networkSettings", "code" => 200}}
      end)
      service.add_operation(:create_portal, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#CreatePortal"
        operation.name = "CreatePortal"
        operation.input = CreatePortalRequest
        operation.output = CreatePortalResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/portals", "code" => 200}}
      end)
      service.add_operation(:create_session_logger, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#CreateSessionLogger"
        operation.name = "CreateSessionLogger"
        operation.input = CreateSessionLoggerRequest
        operation.output = CreateSessionLoggerResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/sessionLoggers", "code" => 200}}
      end)
      service.add_operation(:create_trust_store, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#CreateTrustStore"
        operation.name = "CreateTrustStore"
        operation.input = CreateTrustStoreRequest
        operation.output = CreateTrustStoreResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/trustStores", "code" => 200}}
      end)
      service.add_operation(:create_user_access_logging_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#CreateUserAccessLoggingSettings"
        operation.name = "CreateUserAccessLoggingSettings"
        operation.input = CreateUserAccessLoggingSettingsRequest
        operation.output = CreateUserAccessLoggingSettingsResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/userAccessLoggingSettings", "code" => 200}}
      end)
      service.add_operation(:create_user_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#CreateUserSettings"
        operation.name = "CreateUserSettings"
        operation.input = CreateUserSettingsRequest
        operation.output = CreateUserSettingsResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/userSettings", "code" => 200}}
      end)
      service.add_operation(:delete_browser_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#DeleteBrowserSettings"
        operation.name = "DeleteBrowserSettings"
        operation.input = DeleteBrowserSettingsRequest
        operation.output = DeleteBrowserSettingsResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/browserSettings/{browserSettingsArn+}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_data_protection_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#DeleteDataProtectionSettings"
        operation.name = "DeleteDataProtectionSettings"
        operation.input = DeleteDataProtectionSettingsRequest
        operation.output = DeleteDataProtectionSettingsResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/dataProtectionSettings/{dataProtectionSettingsArn+}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_identity_provider, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#DeleteIdentityProvider"
        operation.name = "DeleteIdentityProvider"
        operation.input = DeleteIdentityProviderRequest
        operation.output = DeleteIdentityProviderResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/identityProviders/{identityProviderArn+}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_ip_access_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#DeleteIpAccessSettings"
        operation.name = "DeleteIpAccessSettings"
        operation.input = DeleteIpAccessSettingsRequest
        operation.output = DeleteIpAccessSettingsResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/ipAccessSettings/{ipAccessSettingsArn+}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_network_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#DeleteNetworkSettings"
        operation.name = "DeleteNetworkSettings"
        operation.input = DeleteNetworkSettingsRequest
        operation.output = DeleteNetworkSettingsResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/networkSettings/{networkSettingsArn+}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_portal, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#DeletePortal"
        operation.name = "DeletePortal"
        operation.input = DeletePortalRequest
        operation.output = DeletePortalResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/portals/{portalArn+}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_session_logger, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#DeleteSessionLogger"
        operation.name = "DeleteSessionLogger"
        operation.input = DeleteSessionLoggerRequest
        operation.output = DeleteSessionLoggerResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/sessionLoggers/{sessionLoggerArn+}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_trust_store, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#DeleteTrustStore"
        operation.name = "DeleteTrustStore"
        operation.input = DeleteTrustStoreRequest
        operation.output = DeleteTrustStoreResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/trustStores/{trustStoreArn+}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_user_access_logging_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#DeleteUserAccessLoggingSettings"
        operation.name = "DeleteUserAccessLoggingSettings"
        operation.input = DeleteUserAccessLoggingSettingsRequest
        operation.output = DeleteUserAccessLoggingSettingsResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/userAccessLoggingSettings/{userAccessLoggingSettingsArn+}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_user_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#DeleteUserSettings"
        operation.name = "DeleteUserSettings"
        operation.input = DeleteUserSettingsRequest
        operation.output = DeleteUserSettingsResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/userSettings/{userSettingsArn+}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:disassociate_browser_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#DisassociateBrowserSettings"
        operation.name = "DisassociateBrowserSettings"
        operation.input = DisassociateBrowserSettingsRequest
        operation.output = DisassociateBrowserSettingsResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/portals/{portalArn+}/browserSettings", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:disassociate_data_protection_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#DisassociateDataProtectionSettings"
        operation.name = "DisassociateDataProtectionSettings"
        operation.input = DisassociateDataProtectionSettingsRequest
        operation.output = DisassociateDataProtectionSettingsResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/portals/{portalArn+}/dataProtectionSettings", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:disassociate_ip_access_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#DisassociateIpAccessSettings"
        operation.name = "DisassociateIpAccessSettings"
        operation.input = DisassociateIpAccessSettingsRequest
        operation.output = DisassociateIpAccessSettingsResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/portals/{portalArn+}/ipAccessSettings", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:disassociate_network_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#DisassociateNetworkSettings"
        operation.name = "DisassociateNetworkSettings"
        operation.input = DisassociateNetworkSettingsRequest
        operation.output = DisassociateNetworkSettingsResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/portals/{portalArn+}/networkSettings", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:disassociate_session_logger, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#DisassociateSessionLogger"
        operation.name = "DisassociateSessionLogger"
        operation.input = DisassociateSessionLoggerRequest
        operation.output = DisassociateSessionLoggerResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/portals/{portalArn+}/sessionLogger", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:disassociate_trust_store, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#DisassociateTrustStore"
        operation.name = "DisassociateTrustStore"
        operation.input = DisassociateTrustStoreRequest
        operation.output = DisassociateTrustStoreResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/portals/{portalArn+}/trustStores", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:disassociate_user_access_logging_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#DisassociateUserAccessLoggingSettings"
        operation.name = "DisassociateUserAccessLoggingSettings"
        operation.input = DisassociateUserAccessLoggingSettingsRequest
        operation.output = DisassociateUserAccessLoggingSettingsResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/portals/{portalArn+}/userAccessLoggingSettings", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:disassociate_user_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#DisassociateUserSettings"
        operation.name = "DisassociateUserSettings"
        operation.input = DisassociateUserSettingsRequest
        operation.output = DisassociateUserSettingsResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/portals/{portalArn+}/userSettings", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:expire_session, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#ExpireSession"
        operation.name = "ExpireSession"
        operation.input = ExpireSessionRequest
        operation.output = ExpireSessionResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/portals/{portalId}/sessions/{sessionId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_browser_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#GetBrowserSettings"
        operation.name = "GetBrowserSettings"
        operation.input = GetBrowserSettingsRequest
        operation.output = GetBrowserSettingsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/browserSettings/{browserSettingsArn+}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_data_protection_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#GetDataProtectionSettings"
        operation.name = "GetDataProtectionSettings"
        operation.input = GetDataProtectionSettingsRequest
        operation.output = GetDataProtectionSettingsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/dataProtectionSettings/{dataProtectionSettingsArn+}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_identity_provider, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#GetIdentityProvider"
        operation.name = "GetIdentityProvider"
        operation.input = GetIdentityProviderRequest
        operation.output = GetIdentityProviderResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/identityProviders/{identityProviderArn+}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_ip_access_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#GetIpAccessSettings"
        operation.name = "GetIpAccessSettings"
        operation.input = GetIpAccessSettingsRequest
        operation.output = GetIpAccessSettingsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/ipAccessSettings/{ipAccessSettingsArn+}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_network_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#GetNetworkSettings"
        operation.name = "GetNetworkSettings"
        operation.input = GetNetworkSettingsRequest
        operation.output = GetNetworkSettingsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/networkSettings/{networkSettingsArn+}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_portal, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#GetPortal"
        operation.name = "GetPortal"
        operation.input = GetPortalRequest
        operation.output = GetPortalResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/portals/{portalArn+}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_portal_service_provider_metadata, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#GetPortalServiceProviderMetadata"
        operation.name = "GetPortalServiceProviderMetadata"
        operation.input = GetPortalServiceProviderMetadataRequest
        operation.output = GetPortalServiceProviderMetadataResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/portalIdp/{portalArn+}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_session, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#GetSession"
        operation.name = "GetSession"
        operation.input = GetSessionRequest
        operation.output = GetSessionResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/portals/{portalId}/sessions/{sessionId}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_session_logger, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#GetSessionLogger"
        operation.name = "GetSessionLogger"
        operation.input = GetSessionLoggerRequest
        operation.output = GetSessionLoggerResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/sessionLoggers/{sessionLoggerArn+}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_trust_store, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#GetTrustStore"
        operation.name = "GetTrustStore"
        operation.input = GetTrustStoreRequest
        operation.output = GetTrustStoreResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/trustStores/{trustStoreArn+}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_trust_store_certificate, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#GetTrustStoreCertificate"
        operation.name = "GetTrustStoreCertificate"
        operation.input = GetTrustStoreCertificateRequest
        operation.output = GetTrustStoreCertificateResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/trustStores/{trustStoreArn+}/certificate", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_user_access_logging_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#GetUserAccessLoggingSettings"
        operation.name = "GetUserAccessLoggingSettings"
        operation.input = GetUserAccessLoggingSettingsRequest
        operation.output = GetUserAccessLoggingSettingsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/userAccessLoggingSettings/{userAccessLoggingSettingsArn+}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_user_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#GetUserSettings"
        operation.name = "GetUserSettings"
        operation.input = GetUserSettingsRequest
        operation.output = GetUserSettingsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/userSettings/{userSettingsArn+}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_browser_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#ListBrowserSettings"
        operation.name = "ListBrowserSettings"
        operation.input = ListBrowserSettingsRequest
        operation.output = ListBrowserSettingsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/browserSettings", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListBrowserSettings.new
      end)
      service.add_operation(:list_data_protection_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#ListDataProtectionSettings"
        operation.name = "ListDataProtectionSettings"
        operation.input = ListDataProtectionSettingsRequest
        operation.output = ListDataProtectionSettingsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/dataProtectionSettings", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListDataProtectionSettings.new
      end)
      service.add_operation(:list_identity_providers, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#ListIdentityProviders"
        operation.name = "ListIdentityProviders"
        operation.input = ListIdentityProvidersRequest
        operation.output = ListIdentityProvidersResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/portals/{portalArn+}/identityProviders", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListIdentityProviders.new
      end)
      service.add_operation(:list_ip_access_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#ListIpAccessSettings"
        operation.name = "ListIpAccessSettings"
        operation.input = ListIpAccessSettingsRequest
        operation.output = ListIpAccessSettingsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/ipAccessSettings", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListIpAccessSettings.new
      end)
      service.add_operation(:list_network_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#ListNetworkSettings"
        operation.name = "ListNetworkSettings"
        operation.input = ListNetworkSettingsRequest
        operation.output = ListNetworkSettingsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/networkSettings", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListNetworkSettings.new
      end)
      service.add_operation(:list_portals, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#ListPortals"
        operation.name = "ListPortals"
        operation.input = ListPortalsRequest
        operation.output = ListPortalsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/portals", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListPortals.new
      end)
      service.add_operation(:list_session_loggers, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#ListSessionLoggers"
        operation.name = "ListSessionLoggers"
        operation.input = ListSessionLoggersRequest
        operation.output = ListSessionLoggersResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/sessionLoggers", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListSessionLoggers.new
      end)
      service.add_operation(:list_sessions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#ListSessions"
        operation.name = "ListSessions"
        operation.input = ListSessionsRequest
        operation.output = ListSessionsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/portals/{portalId}/sessions", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListSessions.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{resourceArn+}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_trust_store_certificates, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#ListTrustStoreCertificates"
        operation.name = "ListTrustStoreCertificates"
        operation.input = ListTrustStoreCertificatesRequest
        operation.output = ListTrustStoreCertificatesResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/trustStores/{trustStoreArn+}/certificates", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListTrustStoreCertificates.new
      end)
      service.add_operation(:list_trust_stores, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#ListTrustStores"
        operation.name = "ListTrustStores"
        operation.input = ListTrustStoresRequest
        operation.output = ListTrustStoresResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/trustStores", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListTrustStores.new
      end)
      service.add_operation(:list_user_access_logging_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#ListUserAccessLoggingSettings"
        operation.name = "ListUserAccessLoggingSettings"
        operation.input = ListUserAccessLoggingSettingsRequest
        operation.output = ListUserAccessLoggingSettingsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/userAccessLoggingSettings", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListUserAccessLoggingSettings.new
      end)
      service.add_operation(:list_user_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#ListUserSettings"
        operation.name = "ListUserSettings"
        operation.input = ListUserSettingsRequest
        operation.output = ListUserSettingsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/userSettings", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListUserSettings.new
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << TooManyTagsException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags/{resourceArn+}", "code" => 200}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = UntagResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{resourceArn+}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_browser_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#UpdateBrowserSettings"
        operation.name = "UpdateBrowserSettings"
        operation.input = UpdateBrowserSettingsRequest
        operation.output = UpdateBrowserSettingsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/browserSettings/{browserSettingsArn+}", "code" => 200}}
      end)
      service.add_operation(:update_data_protection_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#UpdateDataProtectionSettings"
        operation.name = "UpdateDataProtectionSettings"
        operation.input = UpdateDataProtectionSettingsRequest
        operation.output = UpdateDataProtectionSettingsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/dataProtectionSettings/{dataProtectionSettingsArn+}", "code" => 200}}
      end)
      service.add_operation(:update_identity_provider, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#UpdateIdentityProvider"
        operation.name = "UpdateIdentityProvider"
        operation.input = UpdateIdentityProviderRequest
        operation.output = UpdateIdentityProviderResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/identityProviders/{identityProviderArn+}", "code" => 200}}
      end)
      service.add_operation(:update_ip_access_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#UpdateIpAccessSettings"
        operation.name = "UpdateIpAccessSettings"
        operation.input = UpdateIpAccessSettingsRequest
        operation.output = UpdateIpAccessSettingsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/ipAccessSettings/{ipAccessSettingsArn+}", "code" => 200}}
      end)
      service.add_operation(:update_network_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#UpdateNetworkSettings"
        operation.name = "UpdateNetworkSettings"
        operation.input = UpdateNetworkSettingsRequest
        operation.output = UpdateNetworkSettingsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/networkSettings/{networkSettingsArn+}", "code" => 200}}
      end)
      service.add_operation(:update_portal, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#UpdatePortal"
        operation.name = "UpdatePortal"
        operation.input = UpdatePortalRequest
        operation.output = UpdatePortalResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/portals/{portalArn+}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_session_logger, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#UpdateSessionLogger"
        operation.name = "UpdateSessionLogger"
        operation.input = UpdateSessionLoggerRequest
        operation.output = UpdateSessionLoggerResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/sessionLoggers/{sessionLoggerArn+}", "code" => 200}}
      end)
      service.add_operation(:update_trust_store, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#UpdateTrustStore"
        operation.name = "UpdateTrustStore"
        operation.input = UpdateTrustStoreRequest
        operation.output = UpdateTrustStoreResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/trustStores/{trustStoreArn+}", "code" => 200}}
      end)
      service.add_operation(:update_user_access_logging_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#UpdateUserAccessLoggingSettings"
        operation.name = "UpdateUserAccessLoggingSettings"
        operation.input = UpdateUserAccessLoggingSettingsRequest
        operation.output = UpdateUserAccessLoggingSettingsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/userAccessLoggingSettings/{userAccessLoggingSettingsArn+}", "code" => 200}}
      end)
      service.add_operation(:update_user_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesweb#UpdateUserSettings"
        operation.name = "UpdateUserSettings"
        operation.input = UpdateUserSettingsRequest
        operation.output = UpdateUserSettingsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/userSettings/{userSettingsArn+}", "code" => 200}}
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
