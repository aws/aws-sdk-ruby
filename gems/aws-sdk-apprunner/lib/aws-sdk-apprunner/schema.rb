# frozen_string_literal: true

# This is generated code!

module Aws::AppRunner
  # This module contains a schema composed of shapes used by the client.
  module Schema

    ASConfigMaxConcurrency = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.apprunner#ASConfigMaxConcurrency", name: "ASConfigMaxConcurrency", traits: {"smithy.api#range" => {"min" => 1, "max" => 200}})
    ASConfigMaxSize = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.apprunner#ASConfigMaxSize", name: "ASConfigMaxSize", traits: {"smithy.api#range" => {"min" => 1}})
    ASConfigMinSize = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.apprunner#ASConfigMinSize", name: "ASConfigMinSize", traits: {"smithy.api#range" => {"min" => 1, "max" => 25}})
    AppRunnerResourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.apprunner#AppRunnerResourceArn", name: "AppRunnerResourceArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}, "smithy.api#pattern" => "^arn:aws(-[\\w]+)*:[a-z0-9-\\\\.]{0,63}:[a-z0-9-\\\\.]{0,63}:[0-9]{12}:(\\w|\\/|-){1,1011}$"})
    AssociateCustomDomainRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apprunner#AssociateCustomDomainRequest", name: "AssociateCustomDomainRequest")
    AssociateCustomDomainResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apprunner#AssociateCustomDomainResponse", name: "AssociateCustomDomainResponse")
    AuthenticationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apprunner#AuthenticationConfiguration", name: "AuthenticationConfiguration")
    AutoScalingConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apprunner#AutoScalingConfiguration", name: "AutoScalingConfiguration")
    AutoScalingConfigurationName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.apprunner#AutoScalingConfigurationName", name: "AutoScalingConfigurationName", traits: {"smithy.api#length" => {"min" => 4, "max" => 32}, "smithy.api#pattern" => "^[A-Za-z0-9][A-Za-z0-9\\-_]{3,31}$"})
    AutoScalingConfigurationRevision = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.apprunner#AutoScalingConfigurationRevision", name: "AutoScalingConfigurationRevision")
    AutoScalingConfigurationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.apprunner#AutoScalingConfigurationStatus", name: "AutoScalingConfigurationStatus")
    AutoScalingConfigurationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apprunner#AutoScalingConfigurationSummary", name: "AutoScalingConfigurationSummary")
    AutoScalingConfigurationSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.apprunner#AutoScalingConfigurationSummaryList", name: "AutoScalingConfigurationSummaryList")
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.apprunner#Boolean", name: "Boolean", traits: {"smithy.api#default" => false})
    BuildCommand = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.apprunner#BuildCommand", name: "BuildCommand", traits: {"smithy.api#pattern" => "^[^\\x0a\\x0d]+$", "smithy.api#sensitive" => {}})
    CertificateValidationRecord = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apprunner#CertificateValidationRecord", name: "CertificateValidationRecord")
    CertificateValidationRecordList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.apprunner#CertificateValidationRecordList", name: "CertificateValidationRecordList")
    CertificateValidationRecordStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.apprunner#CertificateValidationRecordStatus", name: "CertificateValidationRecordStatus")
    CodeConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apprunner#CodeConfiguration", name: "CodeConfiguration")
    CodeConfigurationValues = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apprunner#CodeConfigurationValues", name: "CodeConfigurationValues")
    CodeRepository = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apprunner#CodeRepository", name: "CodeRepository")
    ConfigurationSource = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.apprunner#ConfigurationSource", name: "ConfigurationSource")
    Connection = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apprunner#Connection", name: "Connection")
    ConnectionName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.apprunner#ConnectionName", name: "ConnectionName", traits: {"smithy.api#length" => {"min" => 4, "max" => 32}, "smithy.api#pattern" => "^[A-Za-z0-9][A-Za-z0-9\\-_]{3,31}$"})
    ConnectionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.apprunner#ConnectionStatus", name: "ConnectionStatus")
    ConnectionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apprunner#ConnectionSummary", name: "ConnectionSummary")
    ConnectionSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.apprunner#ConnectionSummaryList", name: "ConnectionSummaryList")
    Cpu = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.apprunner#Cpu", name: "Cpu", traits: {"smithy.api#length" => {"min" => 3, "max" => 9}, "smithy.api#pattern" => "^256|512|1024|2048|4096|(0.25|0.5|1|2|4) vCPU$"})
    CreateAutoScalingConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apprunner#CreateAutoScalingConfigurationRequest", name: "CreateAutoScalingConfigurationRequest")
    CreateAutoScalingConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apprunner#CreateAutoScalingConfigurationResponse", name: "CreateAutoScalingConfigurationResponse")
    CreateConnectionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apprunner#CreateConnectionRequest", name: "CreateConnectionRequest")
    CreateConnectionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apprunner#CreateConnectionResponse", name: "CreateConnectionResponse")
    CreateObservabilityConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apprunner#CreateObservabilityConfigurationRequest", name: "CreateObservabilityConfigurationRequest")
    CreateObservabilityConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apprunner#CreateObservabilityConfigurationResponse", name: "CreateObservabilityConfigurationResponse")
    CreateServiceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apprunner#CreateServiceRequest", name: "CreateServiceRequest")
    CreateServiceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apprunner#CreateServiceResponse", name: "CreateServiceResponse")
    CreateVpcConnectorRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apprunner#CreateVpcConnectorRequest", name: "CreateVpcConnectorRequest")
    CreateVpcConnectorResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apprunner#CreateVpcConnectorResponse", name: "CreateVpcConnectorResponse")
    CreateVpcIngressConnectionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apprunner#CreateVpcIngressConnectionRequest", name: "CreateVpcIngressConnectionRequest")
    CreateVpcIngressConnectionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apprunner#CreateVpcIngressConnectionResponse", name: "CreateVpcIngressConnectionResponse")
    CustomDomain = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apprunner#CustomDomain", name: "CustomDomain")
    CustomDomainAssociationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.apprunner#CustomDomainAssociationStatus", name: "CustomDomainAssociationStatus")
    CustomDomainList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.apprunner#CustomDomainList", name: "CustomDomainList")
    CustomerAccountId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.apprunner#CustomerAccountId", name: "CustomerAccountId", traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "^[0-9]{12}$"})
    DeleteAutoScalingConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apprunner#DeleteAutoScalingConfigurationRequest", name: "DeleteAutoScalingConfigurationRequest")
    DeleteAutoScalingConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apprunner#DeleteAutoScalingConfigurationResponse", name: "DeleteAutoScalingConfigurationResponse")
    DeleteConnectionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apprunner#DeleteConnectionRequest", name: "DeleteConnectionRequest")
    DeleteConnectionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apprunner#DeleteConnectionResponse", name: "DeleteConnectionResponse")
    DeleteObservabilityConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apprunner#DeleteObservabilityConfigurationRequest", name: "DeleteObservabilityConfigurationRequest")
    DeleteObservabilityConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apprunner#DeleteObservabilityConfigurationResponse", name: "DeleteObservabilityConfigurationResponse")
    DeleteServiceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apprunner#DeleteServiceRequest", name: "DeleteServiceRequest")
    DeleteServiceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apprunner#DeleteServiceResponse", name: "DeleteServiceResponse")
    DeleteVpcConnectorRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apprunner#DeleteVpcConnectorRequest", name: "DeleteVpcConnectorRequest")
    DeleteVpcConnectorResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apprunner#DeleteVpcConnectorResponse", name: "DeleteVpcConnectorResponse")
    DeleteVpcIngressConnectionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apprunner#DeleteVpcIngressConnectionRequest", name: "DeleteVpcIngressConnectionRequest")
    DeleteVpcIngressConnectionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apprunner#DeleteVpcIngressConnectionResponse", name: "DeleteVpcIngressConnectionResponse")
    DescribeAutoScalingConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apprunner#DescribeAutoScalingConfigurationRequest", name: "DescribeAutoScalingConfigurationRequest")
    DescribeAutoScalingConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apprunner#DescribeAutoScalingConfigurationResponse", name: "DescribeAutoScalingConfigurationResponse")
    DescribeCustomDomainsMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.apprunner#DescribeCustomDomainsMaxResults", name: "DescribeCustomDomainsMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 5}})
    DescribeCustomDomainsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apprunner#DescribeCustomDomainsRequest", name: "DescribeCustomDomainsRequest")
    DescribeCustomDomainsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apprunner#DescribeCustomDomainsResponse", name: "DescribeCustomDomainsResponse")
    DescribeObservabilityConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apprunner#DescribeObservabilityConfigurationRequest", name: "DescribeObservabilityConfigurationRequest")
    DescribeObservabilityConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apprunner#DescribeObservabilityConfigurationResponse", name: "DescribeObservabilityConfigurationResponse")
    DescribeServiceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apprunner#DescribeServiceRequest", name: "DescribeServiceRequest")
    DescribeServiceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apprunner#DescribeServiceResponse", name: "DescribeServiceResponse")
    DescribeVpcConnectorRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apprunner#DescribeVpcConnectorRequest", name: "DescribeVpcConnectorRequest")
    DescribeVpcConnectorResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apprunner#DescribeVpcConnectorResponse", name: "DescribeVpcConnectorResponse")
    DescribeVpcIngressConnectionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apprunner#DescribeVpcIngressConnectionRequest", name: "DescribeVpcIngressConnectionRequest")
    DescribeVpcIngressConnectionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apprunner#DescribeVpcIngressConnectionResponse", name: "DescribeVpcIngressConnectionResponse")
    DisassociateCustomDomainRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apprunner#DisassociateCustomDomainRequest", name: "DisassociateCustomDomainRequest")
    DisassociateCustomDomainResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apprunner#DisassociateCustomDomainResponse", name: "DisassociateCustomDomainResponse")
    DomainName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.apprunner#DomainName", name: "DomainName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[A-Za-z0-9*.-]{1,255}$"})
    EgressConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apprunner#EgressConfiguration", name: "EgressConfiguration")
    EgressType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.apprunner#EgressType", name: "EgressType")
    EncryptionConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apprunner#EncryptionConfiguration", name: "EncryptionConfiguration")
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.apprunner#ErrorMessage", name: "ErrorMessage", traits: {"smithy.api#length" => {"min" => 0, "max" => 600}})
    HasAssociatedService = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.apprunner#HasAssociatedService", name: "HasAssociatedService")
    HealthCheckConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apprunner#HealthCheckConfiguration", name: "HealthCheckConfiguration")
    HealthCheckHealthyThreshold = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.apprunner#HealthCheckHealthyThreshold", name: "HealthCheckHealthyThreshold", traits: {"smithy.api#range" => {"min" => 1, "max" => 20}})
    HealthCheckInterval = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.apprunner#HealthCheckInterval", name: "HealthCheckInterval", traits: {"smithy.api#range" => {"min" => 1, "max" => 20}})
    HealthCheckPath = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.apprunner#HealthCheckPath", name: "HealthCheckPath", traits: {"smithy.api#length" => {"min" => 1}})
    HealthCheckProtocol = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.apprunner#HealthCheckProtocol", name: "HealthCheckProtocol")
    HealthCheckTimeout = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.apprunner#HealthCheckTimeout", name: "HealthCheckTimeout", traits: {"smithy.api#range" => {"min" => 1, "max" => 20}})
    HealthCheckUnhealthyThreshold = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.apprunner#HealthCheckUnhealthyThreshold", name: "HealthCheckUnhealthyThreshold", traits: {"smithy.api#range" => {"min" => 1, "max" => 20}})
    ImageConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apprunner#ImageConfiguration", name: "ImageConfiguration")
    ImageIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.apprunner#ImageIdentifier", name: "ImageIdentifier", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^([0-9]{12}.dkr.ecr.[a-z\\-]+-[0-9]{1}.amazonaws.com\\/((?:[a-z0-9]+(?:[._-][a-z0-9]+)*\\/)*[a-z0-9]+(?:[._-][a-z0-9]+)*)(:([\\w\\d+\\-=._:\\/@])+|@([\\w\\d\\:]+))?)|(^public\\.ecr\\.aws\\/.+\\/((?:[a-z0-9]+(?:[._-][a-z0-9]+)*\\/)*[a-z0-9]+(?:[._-][a-z0-9]+)*)(:([\\w\\d+\\-=._:\\/@])+|@([\\w\\d\\:]+))?)$"})
    ImageRepository = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apprunner#ImageRepository", name: "ImageRepository")
    ImageRepositoryType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.apprunner#ImageRepositoryType", name: "ImageRepositoryType")
    IngressConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apprunner#IngressConfiguration", name: "IngressConfiguration")
    IngressVpcConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apprunner#IngressVpcConfiguration", name: "IngressVpcConfiguration")
    InstanceConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apprunner#InstanceConfiguration", name: "InstanceConfiguration")
    Integer = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.apprunner#Integer", name: "Integer", traits: {"smithy.api#default" => 0})
    InternalServiceErrorException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apprunner#InternalServiceErrorException", name: "InternalServiceErrorException", traits: {"aws.protocols#awsQueryError" => {"code" => "InternalServiceError", "httpResponseCode" => 500}, "smithy.api#error" => "server", "smithy.api#httpError" => 500})
    InvalidRequestException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apprunner#InvalidRequestException", name: "InvalidRequestException", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidRequest", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidStateException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apprunner#InvalidStateException", name: "InvalidStateException", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidState", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    IpAddressType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.apprunner#IpAddressType", name: "IpAddressType")
    IsDefault = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.apprunner#IsDefault", name: "IsDefault")
    KmsKeyArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.apprunner#KmsKeyArn", name: "KmsKeyArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^arn:aws(-[\\w]+)*:kms:[a-z\\-]+-[0-9]{1}:[0-9]{12}:key\\/[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$"})
    Latest = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.apprunner#Latest", name: "Latest")
    ListAutoScalingConfigurationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apprunner#ListAutoScalingConfigurationsRequest", name: "ListAutoScalingConfigurationsRequest")
    ListAutoScalingConfigurationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apprunner#ListAutoScalingConfigurationsResponse", name: "ListAutoScalingConfigurationsResponse")
    ListConnectionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apprunner#ListConnectionsRequest", name: "ListConnectionsRequest")
    ListConnectionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apprunner#ListConnectionsResponse", name: "ListConnectionsResponse")
    ListObservabilityConfigurationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apprunner#ListObservabilityConfigurationsRequest", name: "ListObservabilityConfigurationsRequest")
    ListObservabilityConfigurationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apprunner#ListObservabilityConfigurationsResponse", name: "ListObservabilityConfigurationsResponse")
    ListOperationsMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.apprunner#ListOperationsMaxResults", name: "ListOperationsMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 20}})
    ListOperationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apprunner#ListOperationsRequest", name: "ListOperationsRequest")
    ListOperationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apprunner#ListOperationsResponse", name: "ListOperationsResponse")
    ListServicesForAutoScalingConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apprunner#ListServicesForAutoScalingConfigurationRequest", name: "ListServicesForAutoScalingConfigurationRequest")
    ListServicesForAutoScalingConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apprunner#ListServicesForAutoScalingConfigurationResponse", name: "ListServicesForAutoScalingConfigurationResponse")
    ListServicesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apprunner#ListServicesRequest", name: "ListServicesRequest")
    ListServicesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apprunner#ListServicesResponse", name: "ListServicesResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apprunner#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apprunner#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    ListVpcConnectorsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apprunner#ListVpcConnectorsRequest", name: "ListVpcConnectorsRequest")
    ListVpcConnectorsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apprunner#ListVpcConnectorsResponse", name: "ListVpcConnectorsResponse")
    ListVpcIngressConnectionsFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apprunner#ListVpcIngressConnectionsFilter", name: "ListVpcIngressConnectionsFilter")
    ListVpcIngressConnectionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apprunner#ListVpcIngressConnectionsRequest", name: "ListVpcIngressConnectionsRequest")
    ListVpcIngressConnectionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apprunner#ListVpcIngressConnectionsResponse", name: "ListVpcIngressConnectionsResponse")
    MaxConcurrency = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.apprunner#MaxConcurrency", name: "MaxConcurrency")
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.apprunner#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MaxSize = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.apprunner#MaxSize", name: "MaxSize")
    Memory = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.apprunner#Memory", name: "Memory", traits: {"smithy.api#length" => {"min" => 3, "max" => 6}, "smithy.api#pattern" => "^512|1024|2048|3072|4096|6144|8192|10240|12288|(0.5|1|2|3|4|6|8|10|12) GB$"})
    MinSize = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.apprunner#MinSize", name: "MinSize")
    NetworkConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apprunner#NetworkConfiguration", name: "NetworkConfiguration")
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.apprunner#NextToken", name: "NextToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => ".*"})
    NullableBoolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.apprunner#NullableBoolean", name: "NullableBoolean")
    ObservabilityConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apprunner#ObservabilityConfiguration", name: "ObservabilityConfiguration")
    ObservabilityConfigurationName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.apprunner#ObservabilityConfigurationName", name: "ObservabilityConfigurationName", traits: {"smithy.api#length" => {"min" => 4, "max" => 32}, "smithy.api#pattern" => "^[A-Za-z0-9][A-Za-z0-9\\-_]{3,31}$"})
    ObservabilityConfigurationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.apprunner#ObservabilityConfigurationStatus", name: "ObservabilityConfigurationStatus")
    ObservabilityConfigurationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apprunner#ObservabilityConfigurationSummary", name: "ObservabilityConfigurationSummary")
    ObservabilityConfigurationSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.apprunner#ObservabilityConfigurationSummaryList", name: "ObservabilityConfigurationSummaryList")
    OperationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.apprunner#OperationStatus", name: "OperationStatus")
    OperationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apprunner#OperationSummary", name: "OperationSummary")
    OperationSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.apprunner#OperationSummaryList", name: "OperationSummaryList")
    OperationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.apprunner#OperationType", name: "OperationType")
    PauseServiceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apprunner#PauseServiceRequest", name: "PauseServiceRequest")
    PauseServiceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apprunner#PauseServiceResponse", name: "PauseServiceResponse")
    ProviderType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.apprunner#ProviderType", name: "ProviderType")
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apprunner#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"aws.protocols#awsQueryError" => {"code" => "ResourceNotfound", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ResumeServiceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apprunner#ResumeServiceRequest", name: "ResumeServiceRequest")
    ResumeServiceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apprunner#ResumeServiceResponse", name: "ResumeServiceResponse")
    RoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.apprunner#RoleArn", name: "RoleArn", traits: {"smithy.api#length" => {"min" => 29, "max" => 1024}, "smithy.api#pattern" => "^arn:(aws|aws-us-gov|aws-cn|aws-iso|aws-iso-b):iam::[0-9]{12}:(role|role\\/service-role)\\/[\\w+=,.@\\-/]{1,1000}$"})
    Runtime = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.apprunner#Runtime", name: "Runtime")
    RuntimeEnvironmentSecrets = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.apprunner#RuntimeEnvironmentSecrets", name: "RuntimeEnvironmentSecrets")
    RuntimeEnvironmentSecretsName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.apprunner#RuntimeEnvironmentSecretsName", name: "RuntimeEnvironmentSecretsName", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#sensitive" => {}})
    RuntimeEnvironmentSecretsValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.apprunner#RuntimeEnvironmentSecretsValue", name: "RuntimeEnvironmentSecretsValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#sensitive" => {}})
    RuntimeEnvironmentVariables = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.apprunner#RuntimeEnvironmentVariables", name: "RuntimeEnvironmentVariables")
    RuntimeEnvironmentVariablesKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.apprunner#RuntimeEnvironmentVariablesKey", name: "RuntimeEnvironmentVariablesKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 51200}, "smithy.api#pattern" => ".*", "smithy.api#sensitive" => {}})
    RuntimeEnvironmentVariablesValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.apprunner#RuntimeEnvironmentVariablesValue", name: "RuntimeEnvironmentVariablesValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 51200}, "smithy.api#pattern" => ".*", "smithy.api#sensitive" => {}})
    Service = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apprunner#Service", name: "Service")
    ServiceArnList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.apprunner#ServiceArnList", name: "ServiceArnList")
    ServiceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.apprunner#ServiceId", name: "ServiceId", traits: {"smithy.api#length" => {"min" => 32, "max" => 32}, "smithy.api#pattern" => "^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[1-5][0-9a-fA-F]{3}-[89abAB][0-9a-fA-F]{3}-[0-9a-fA-F]{12}$"})
    ServiceMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.apprunner#ServiceMaxResults", name: "ServiceMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 20}})
    ServiceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.apprunner#ServiceName", name: "ServiceName", traits: {"smithy.api#length" => {"min" => 4, "max" => 40}, "smithy.api#pattern" => "^[A-Za-z0-9][A-Za-z0-9-_]{3,39}$"})
    ServiceObservabilityConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apprunner#ServiceObservabilityConfiguration", name: "ServiceObservabilityConfiguration")
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apprunner#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"aws.protocols#awsQueryError" => {"code" => "ServiceQuotaExceeded", "httpResponseCode" => 402}, "smithy.api#error" => "client", "smithy.api#httpError" => 402})
    ServiceStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.apprunner#ServiceStatus", name: "ServiceStatus")
    ServiceSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apprunner#ServiceSummary", name: "ServiceSummary")
    ServiceSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.apprunner#ServiceSummaryList", name: "ServiceSummaryList")
    SourceCodeVersion = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apprunner#SourceCodeVersion", name: "SourceCodeVersion")
    SourceCodeVersionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.apprunner#SourceCodeVersionType", name: "SourceCodeVersionType")
    SourceConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apprunner#SourceConfiguration", name: "SourceConfiguration")
    SourceDirectory = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.apprunner#SourceDirectory", name: "SourceDirectory", traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}, "smithy.api#pattern" => "^[^\\x00]+$"})
    StartCommand = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.apprunner#StartCommand", name: "StartCommand", traits: {"smithy.api#pattern" => "^[^\\x0a\\x0d]+$", "smithy.api#sensitive" => {}})
    StartDeploymentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apprunner#StartDeploymentRequest", name: "StartDeploymentRequest")
    StartDeploymentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apprunner#StartDeploymentResponse", name: "StartDeploymentResponse")
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.apprunner#String", name: "String", traits: {"smithy.api#length" => {"min" => 0, "max" => 51200}, "smithy.api#pattern" => ".*"})
    StringList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.apprunner#StringList", name: "StringList")
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apprunner#Tag", name: "Tag")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.apprunner#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^(?!aws:).+$"})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.apprunner#TagKeyList", name: "TagKeyList")
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.apprunner#TagList", name: "TagList")
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apprunner#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apprunner#TagResourceResponse", name: "TagResourceResponse")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.apprunner#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => ".*"})
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.apprunner#Timestamp", name: "Timestamp")
    TraceConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apprunner#TraceConfiguration", name: "TraceConfiguration")
    TracingVendor = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.apprunner#TracingVendor", name: "TracingVendor")
    UUID = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.apprunner#UUID", name: "UUID", traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[1-5][0-9a-fA-F]{3}-[89abAB][0-9a-fA-F]{3}-[0-9a-fA-F]{12}$"})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apprunner#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apprunner#UntagResourceResponse", name: "UntagResourceResponse")
    UpdateDefaultAutoScalingConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apprunner#UpdateDefaultAutoScalingConfigurationRequest", name: "UpdateDefaultAutoScalingConfigurationRequest")
    UpdateDefaultAutoScalingConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apprunner#UpdateDefaultAutoScalingConfigurationResponse", name: "UpdateDefaultAutoScalingConfigurationResponse")
    UpdateServiceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apprunner#UpdateServiceRequest", name: "UpdateServiceRequest")
    UpdateServiceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apprunner#UpdateServiceResponse", name: "UpdateServiceResponse")
    UpdateVpcIngressConnectionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apprunner#UpdateVpcIngressConnectionRequest", name: "UpdateVpcIngressConnectionRequest")
    UpdateVpcIngressConnectionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apprunner#UpdateVpcIngressConnectionResponse", name: "UpdateVpcIngressConnectionResponse")
    VpcConnector = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apprunner#VpcConnector", name: "VpcConnector")
    VpcConnectorName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.apprunner#VpcConnectorName", name: "VpcConnectorName", traits: {"smithy.api#length" => {"min" => 4, "max" => 40}, "smithy.api#pattern" => "^[A-Za-z0-9][A-Za-z0-9\\-_]{3,39}$"})
    VpcConnectorStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.apprunner#VpcConnectorStatus", name: "VpcConnectorStatus")
    VpcConnectors = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.apprunner#VpcConnectors", name: "VpcConnectors")
    VpcDNSTarget = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apprunner#VpcDNSTarget", name: "VpcDNSTarget")
    VpcDNSTargetList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.apprunner#VpcDNSTargetList", name: "VpcDNSTargetList")
    VpcIngressConnection = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apprunner#VpcIngressConnection", name: "VpcIngressConnection")
    VpcIngressConnectionName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.apprunner#VpcIngressConnectionName", name: "VpcIngressConnectionName", traits: {"smithy.api#length" => {"min" => 4, "max" => 40}, "smithy.api#pattern" => "^[A-Za-z0-9][A-Za-z0-9\\-_]{3,39}$"})
    VpcIngressConnectionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.apprunner#VpcIngressConnectionStatus", name: "VpcIngressConnectionStatus")
    VpcIngressConnectionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apprunner#VpcIngressConnectionSummary", name: "VpcIngressConnectionSummary")
    VpcIngressConnectionSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.apprunner#VpcIngressConnectionSummaryList", name: "VpcIngressConnectionSummaryList")

    AssociateCustomDomainRequest.add_member(:service_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AppRunnerResourceArn, location_name: "ServiceArn", traits: {"smithy.api#required" => {}}))
    AssociateCustomDomainRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, location_name: "DomainName", traits: {"smithy.api#required" => {}}))
    AssociateCustomDomainRequest.add_member(:enable_www_subdomain, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBoolean, location_name: "EnableWWWSubdomain"))
    AssociateCustomDomainRequest.type = Types::AssociateCustomDomainRequest
    AssociateCustomDomainResponse.add_member(:dns_target, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "DNSTarget", traits: {"smithy.api#required" => {}}))
    AssociateCustomDomainResponse.add_member(:service_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AppRunnerResourceArn, location_name: "ServiceArn", traits: {"smithy.api#required" => {}}))
    AssociateCustomDomainResponse.add_member(:custom_domain, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomDomain, location_name: "CustomDomain", traits: {"smithy.api#required" => {}}))
    AssociateCustomDomainResponse.add_member(:vpc_dns_targets, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcDNSTargetList, location_name: "VpcDNSTargets", traits: {"smithy.api#required" => {}}))
    AssociateCustomDomainResponse.type = Types::AssociateCustomDomainResponse
    AuthenticationConfiguration.add_member(:connection_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AppRunnerResourceArn, location_name: "ConnectionArn"))
    AuthenticationConfiguration.add_member(:access_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, location_name: "AccessRoleArn"))
    AuthenticationConfiguration.type = Types::AuthenticationConfiguration
    AutoScalingConfiguration.add_member(:auto_scaling_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AppRunnerResourceArn, location_name: "AutoScalingConfigurationArn"))
    AutoScalingConfiguration.add_member(:auto_scaling_configuration_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingConfigurationName, location_name: "AutoScalingConfigurationName"))
    AutoScalingConfiguration.add_member(:auto_scaling_configuration_revision, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingConfigurationRevision, location_name: "AutoScalingConfigurationRevision"))
    AutoScalingConfiguration.add_member(:latest, ::Smithy::Schema::Shapes::MemberShape.new(target: Latest, location_name: "Latest"))
    AutoScalingConfiguration.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingConfigurationStatus, location_name: "Status"))
    AutoScalingConfiguration.add_member(:max_concurrency, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxConcurrency, location_name: "MaxConcurrency"))
    AutoScalingConfiguration.add_member(:min_size, ::Smithy::Schema::Shapes::MemberShape.new(target: MinSize, location_name: "MinSize"))
    AutoScalingConfiguration.add_member(:max_size, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxSize, location_name: "MaxSize"))
    AutoScalingConfiguration.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "CreatedAt"))
    AutoScalingConfiguration.add_member(:deleted_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "DeletedAt"))
    AutoScalingConfiguration.add_member(:has_associated_service, ::Smithy::Schema::Shapes::MemberShape.new(target: HasAssociatedService, location_name: "HasAssociatedService"))
    AutoScalingConfiguration.add_member(:is_default, ::Smithy::Schema::Shapes::MemberShape.new(target: IsDefault, location_name: "IsDefault"))
    AutoScalingConfiguration.type = Types::AutoScalingConfiguration
    AutoScalingConfigurationStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    AutoScalingConfigurationStatus.add_member(:inactive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INACTIVE", traits: {"smithy.api#enumValue" => "INACTIVE"}))
    AutoScalingConfigurationSummary.add_member(:auto_scaling_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AppRunnerResourceArn, location_name: "AutoScalingConfigurationArn"))
    AutoScalingConfigurationSummary.add_member(:auto_scaling_configuration_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingConfigurationName, location_name: "AutoScalingConfigurationName"))
    AutoScalingConfigurationSummary.add_member(:auto_scaling_configuration_revision, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "AutoScalingConfigurationRevision", traits: {"smithy.api#default" => 0}))
    AutoScalingConfigurationSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingConfigurationStatus, location_name: "Status"))
    AutoScalingConfigurationSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "CreatedAt"))
    AutoScalingConfigurationSummary.add_member(:has_associated_service, ::Smithy::Schema::Shapes::MemberShape.new(target: HasAssociatedService, location_name: "HasAssociatedService"))
    AutoScalingConfigurationSummary.add_member(:is_default, ::Smithy::Schema::Shapes::MemberShape.new(target: IsDefault, location_name: "IsDefault"))
    AutoScalingConfigurationSummary.type = Types::AutoScalingConfigurationSummary
    AutoScalingConfigurationSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingConfigurationSummary)
    CertificateValidationRecord.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Name"))
    CertificateValidationRecord.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Type"))
    CertificateValidationRecord.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Value"))
    CertificateValidationRecord.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateValidationRecordStatus, location_name: "Status"))
    CertificateValidationRecord.type = Types::CertificateValidationRecord
    CertificateValidationRecordList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateValidationRecord)
    CertificateValidationRecordStatus.add_member(:pending_validation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PENDING_VALIDATION", traits: {"smithy.api#enumValue" => "PENDING_VALIDATION"}))
    CertificateValidationRecordStatus.add_member(:success, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SUCCESS", traits: {"smithy.api#enumValue" => "SUCCESS"}))
    CertificateValidationRecordStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    CodeConfiguration.add_member(:configuration_source, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSource, location_name: "ConfigurationSource", traits: {"smithy.api#required" => {}}))
    CodeConfiguration.add_member(:code_configuration_values, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeConfigurationValues, location_name: "CodeConfigurationValues"))
    CodeConfiguration.type = Types::CodeConfiguration
    CodeConfigurationValues.add_member(:runtime, ::Smithy::Schema::Shapes::MemberShape.new(target: Runtime, location_name: "Runtime", traits: {"smithy.api#required" => {}}))
    CodeConfigurationValues.add_member(:build_command, ::Smithy::Schema::Shapes::MemberShape.new(target: BuildCommand, location_name: "BuildCommand"))
    CodeConfigurationValues.add_member(:start_command, ::Smithy::Schema::Shapes::MemberShape.new(target: StartCommand, location_name: "StartCommand"))
    CodeConfigurationValues.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Port"))
    CodeConfigurationValues.add_member(:runtime_environment_variables, ::Smithy::Schema::Shapes::MemberShape.new(target: RuntimeEnvironmentVariables, location_name: "RuntimeEnvironmentVariables"))
    CodeConfigurationValues.add_member(:runtime_environment_secrets, ::Smithy::Schema::Shapes::MemberShape.new(target: RuntimeEnvironmentSecrets, location_name: "RuntimeEnvironmentSecrets"))
    CodeConfigurationValues.type = Types::CodeConfigurationValues
    CodeRepository.add_member(:repository_url, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "RepositoryUrl", traits: {"smithy.api#required" => {}}))
    CodeRepository.add_member(:source_code_version, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceCodeVersion, location_name: "SourceCodeVersion", traits: {"smithy.api#required" => {}}))
    CodeRepository.add_member(:code_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeConfiguration, location_name: "CodeConfiguration"))
    CodeRepository.add_member(:source_directory, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceDirectory, location_name: "SourceDirectory"))
    CodeRepository.type = Types::CodeRepository
    ConfigurationSource.add_member(:repository, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "REPOSITORY", traits: {"smithy.api#enumValue" => "REPOSITORY"}))
    ConfigurationSource.add_member(:api, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "API", traits: {"smithy.api#enumValue" => "API"}))
    Connection.add_member(:connection_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionName, location_name: "ConnectionName"))
    Connection.add_member(:connection_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AppRunnerResourceArn, location_name: "ConnectionArn"))
    Connection.add_member(:provider_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ProviderType, location_name: "ProviderType"))
    Connection.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionStatus, location_name: "Status"))
    Connection.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "CreatedAt"))
    Connection.type = Types::Connection
    ConnectionStatus.add_member(:pending_handshake, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PENDING_HANDSHAKE", traits: {"smithy.api#enumValue" => "PENDING_HANDSHAKE"}))
    ConnectionStatus.add_member(:available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AVAILABLE", traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    ConnectionStatus.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ERROR", traits: {"smithy.api#enumValue" => "ERROR"}))
    ConnectionStatus.add_member(:deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETED", traits: {"smithy.api#enumValue" => "DELETED"}))
    ConnectionSummary.add_member(:connection_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionName, location_name: "ConnectionName"))
    ConnectionSummary.add_member(:connection_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AppRunnerResourceArn, location_name: "ConnectionArn"))
    ConnectionSummary.add_member(:provider_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ProviderType, location_name: "ProviderType"))
    ConnectionSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionStatus, location_name: "Status"))
    ConnectionSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "CreatedAt"))
    ConnectionSummary.type = Types::ConnectionSummary
    ConnectionSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionSummary)
    CreateAutoScalingConfigurationRequest.add_member(:auto_scaling_configuration_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingConfigurationName, location_name: "AutoScalingConfigurationName", traits: {"smithy.api#required" => {}}))
    CreateAutoScalingConfigurationRequest.add_member(:max_concurrency, ::Smithy::Schema::Shapes::MemberShape.new(target: ASConfigMaxConcurrency, location_name: "MaxConcurrency"))
    CreateAutoScalingConfigurationRequest.add_member(:min_size, ::Smithy::Schema::Shapes::MemberShape.new(target: ASConfigMinSize, location_name: "MinSize"))
    CreateAutoScalingConfigurationRequest.add_member(:max_size, ::Smithy::Schema::Shapes::MemberShape.new(target: ASConfigMaxSize, location_name: "MaxSize"))
    CreateAutoScalingConfigurationRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, location_name: "Tags"))
    CreateAutoScalingConfigurationRequest.type = Types::CreateAutoScalingConfigurationRequest
    CreateAutoScalingConfigurationResponse.add_member(:auto_scaling_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingConfiguration, location_name: "AutoScalingConfiguration", traits: {"smithy.api#required" => {}}))
    CreateAutoScalingConfigurationResponse.type = Types::CreateAutoScalingConfigurationResponse
    CreateConnectionRequest.add_member(:connection_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionName, location_name: "ConnectionName", traits: {"smithy.api#required" => {}}))
    CreateConnectionRequest.add_member(:provider_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ProviderType, location_name: "ProviderType", traits: {"smithy.api#required" => {}}))
    CreateConnectionRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, location_name: "Tags"))
    CreateConnectionRequest.type = Types::CreateConnectionRequest
    CreateConnectionResponse.add_member(:connection, ::Smithy::Schema::Shapes::MemberShape.new(target: Connection, location_name: "Connection", traits: {"smithy.api#required" => {}}))
    CreateConnectionResponse.type = Types::CreateConnectionResponse
    CreateObservabilityConfigurationRequest.add_member(:observability_configuration_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ObservabilityConfigurationName, location_name: "ObservabilityConfigurationName", traits: {"smithy.api#required" => {}}))
    CreateObservabilityConfigurationRequest.add_member(:trace_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: TraceConfiguration, location_name: "TraceConfiguration"))
    CreateObservabilityConfigurationRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, location_name: "Tags"))
    CreateObservabilityConfigurationRequest.type = Types::CreateObservabilityConfigurationRequest
    CreateObservabilityConfigurationResponse.add_member(:observability_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ObservabilityConfiguration, location_name: "ObservabilityConfiguration", traits: {"smithy.api#required" => {}}))
    CreateObservabilityConfigurationResponse.type = Types::CreateObservabilityConfigurationResponse
    CreateServiceRequest.add_member(:service_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceName, location_name: "ServiceName", traits: {"smithy.api#required" => {}}))
    CreateServiceRequest.add_member(:source_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceConfiguration, location_name: "SourceConfiguration", traits: {"smithy.api#required" => {}}))
    CreateServiceRequest.add_member(:instance_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceConfiguration, location_name: "InstanceConfiguration"))
    CreateServiceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, location_name: "Tags"))
    CreateServiceRequest.add_member(:encryption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionConfiguration, location_name: "EncryptionConfiguration"))
    CreateServiceRequest.add_member(:health_check_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: HealthCheckConfiguration, location_name: "HealthCheckConfiguration"))
    CreateServiceRequest.add_member(:auto_scaling_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AppRunnerResourceArn, location_name: "AutoScalingConfigurationArn"))
    CreateServiceRequest.add_member(:network_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConfiguration, location_name: "NetworkConfiguration"))
    CreateServiceRequest.add_member(:observability_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceObservabilityConfiguration, location_name: "ObservabilityConfiguration"))
    CreateServiceRequest.type = Types::CreateServiceRequest
    CreateServiceResponse.add_member(:service, ::Smithy::Schema::Shapes::MemberShape.new(target: Service, location_name: "Service", traits: {"smithy.api#required" => {}}))
    CreateServiceResponse.add_member(:operation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, location_name: "OperationId", traits: {"smithy.api#required" => {}}))
    CreateServiceResponse.type = Types::CreateServiceResponse
    CreateVpcConnectorRequest.add_member(:vpc_connector_name, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcConnectorName, location_name: "VpcConnectorName", traits: {"smithy.api#required" => {}}))
    CreateVpcConnectorRequest.add_member(:subnets, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, location_name: "Subnets", traits: {"smithy.api#required" => {}}))
    CreateVpcConnectorRequest.add_member(:security_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, location_name: "SecurityGroups"))
    CreateVpcConnectorRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, location_name: "Tags"))
    CreateVpcConnectorRequest.type = Types::CreateVpcConnectorRequest
    CreateVpcConnectorResponse.add_member(:vpc_connector, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcConnector, location_name: "VpcConnector", traits: {"smithy.api#required" => {}}))
    CreateVpcConnectorResponse.type = Types::CreateVpcConnectorResponse
    CreateVpcIngressConnectionRequest.add_member(:service_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AppRunnerResourceArn, location_name: "ServiceArn", traits: {"smithy.api#required" => {}}))
    CreateVpcIngressConnectionRequest.add_member(:vpc_ingress_connection_name, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcIngressConnectionName, location_name: "VpcIngressConnectionName", traits: {"smithy.api#required" => {}}))
    CreateVpcIngressConnectionRequest.add_member(:ingress_vpc_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: IngressVpcConfiguration, location_name: "IngressVpcConfiguration", traits: {"smithy.api#required" => {}}))
    CreateVpcIngressConnectionRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, location_name: "Tags"))
    CreateVpcIngressConnectionRequest.type = Types::CreateVpcIngressConnectionRequest
    CreateVpcIngressConnectionResponse.add_member(:vpc_ingress_connection, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcIngressConnection, location_name: "VpcIngressConnection", traits: {"smithy.api#required" => {}}))
    CreateVpcIngressConnectionResponse.type = Types::CreateVpcIngressConnectionResponse
    CustomDomain.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, location_name: "DomainName", traits: {"smithy.api#required" => {}}))
    CustomDomain.add_member(:enable_www_subdomain, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBoolean, location_name: "EnableWWWSubdomain", traits: {"smithy.api#required" => {}}))
    CustomDomain.add_member(:certificate_validation_records, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateValidationRecordList, location_name: "CertificateValidationRecords"))
    CustomDomain.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomDomainAssociationStatus, location_name: "Status", traits: {"smithy.api#required" => {}}))
    CustomDomain.type = Types::CustomDomain
    CustomDomainAssociationStatus.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    CustomDomainAssociationStatus.add_member(:create_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CREATE_FAILED", traits: {"smithy.api#enumValue" => "CREATE_FAILED"}))
    CustomDomainAssociationStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    CustomDomainAssociationStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    CustomDomainAssociationStatus.add_member(:delete_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETE_FAILED", traits: {"smithy.api#enumValue" => "DELETE_FAILED"}))
    CustomDomainAssociationStatus.add_member(:pending_certificate_dns_validation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PENDING_CERTIFICATE_DNS_VALIDATION", traits: {"smithy.api#enumValue" => "PENDING_CERTIFICATE_DNS_VALIDATION"}))
    CustomDomainAssociationStatus.add_member(:binding_certificate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BINDING_CERTIFICATE", traits: {"smithy.api#enumValue" => "BINDING_CERTIFICATE"}))
    CustomDomainList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CustomDomain)
    DeleteAutoScalingConfigurationRequest.add_member(:auto_scaling_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AppRunnerResourceArn, location_name: "AutoScalingConfigurationArn", traits: {"smithy.api#required" => {}}))
    DeleteAutoScalingConfigurationRequest.add_member(:delete_all_revisions, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "DeleteAllRevisions", traits: {"smithy.api#default" => false}))
    DeleteAutoScalingConfigurationRequest.type = Types::DeleteAutoScalingConfigurationRequest
    DeleteAutoScalingConfigurationResponse.add_member(:auto_scaling_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingConfiguration, location_name: "AutoScalingConfiguration", traits: {"smithy.api#required" => {}}))
    DeleteAutoScalingConfigurationResponse.type = Types::DeleteAutoScalingConfigurationResponse
    DeleteConnectionRequest.add_member(:connection_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AppRunnerResourceArn, location_name: "ConnectionArn", traits: {"smithy.api#required" => {}}))
    DeleteConnectionRequest.type = Types::DeleteConnectionRequest
    DeleteConnectionResponse.add_member(:connection, ::Smithy::Schema::Shapes::MemberShape.new(target: Connection, location_name: "Connection"))
    DeleteConnectionResponse.type = Types::DeleteConnectionResponse
    DeleteObservabilityConfigurationRequest.add_member(:observability_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AppRunnerResourceArn, location_name: "ObservabilityConfigurationArn", traits: {"smithy.api#required" => {}}))
    DeleteObservabilityConfigurationRequest.type = Types::DeleteObservabilityConfigurationRequest
    DeleteObservabilityConfigurationResponse.add_member(:observability_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ObservabilityConfiguration, location_name: "ObservabilityConfiguration", traits: {"smithy.api#required" => {}}))
    DeleteObservabilityConfigurationResponse.type = Types::DeleteObservabilityConfigurationResponse
    DeleteServiceRequest.add_member(:service_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AppRunnerResourceArn, location_name: "ServiceArn", traits: {"smithy.api#required" => {}}))
    DeleteServiceRequest.type = Types::DeleteServiceRequest
    DeleteServiceResponse.add_member(:service, ::Smithy::Schema::Shapes::MemberShape.new(target: Service, location_name: "Service", traits: {"smithy.api#required" => {}}))
    DeleteServiceResponse.add_member(:operation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, location_name: "OperationId", traits: {"smithy.api#required" => {}}))
    DeleteServiceResponse.type = Types::DeleteServiceResponse
    DeleteVpcConnectorRequest.add_member(:vpc_connector_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AppRunnerResourceArn, location_name: "VpcConnectorArn", traits: {"smithy.api#required" => {}}))
    DeleteVpcConnectorRequest.type = Types::DeleteVpcConnectorRequest
    DeleteVpcConnectorResponse.add_member(:vpc_connector, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcConnector, location_name: "VpcConnector", traits: {"smithy.api#required" => {}}))
    DeleteVpcConnectorResponse.type = Types::DeleteVpcConnectorResponse
    DeleteVpcIngressConnectionRequest.add_member(:vpc_ingress_connection_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AppRunnerResourceArn, location_name: "VpcIngressConnectionArn", traits: {"smithy.api#required" => {}}))
    DeleteVpcIngressConnectionRequest.type = Types::DeleteVpcIngressConnectionRequest
    DeleteVpcIngressConnectionResponse.add_member(:vpc_ingress_connection, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcIngressConnection, location_name: "VpcIngressConnection", traits: {"smithy.api#required" => {}}))
    DeleteVpcIngressConnectionResponse.type = Types::DeleteVpcIngressConnectionResponse
    DescribeAutoScalingConfigurationRequest.add_member(:auto_scaling_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AppRunnerResourceArn, location_name: "AutoScalingConfigurationArn", traits: {"smithy.api#required" => {}}))
    DescribeAutoScalingConfigurationRequest.type = Types::DescribeAutoScalingConfigurationRequest
    DescribeAutoScalingConfigurationResponse.add_member(:auto_scaling_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingConfiguration, location_name: "AutoScalingConfiguration", traits: {"smithy.api#required" => {}}))
    DescribeAutoScalingConfigurationResponse.type = Types::DescribeAutoScalingConfigurationResponse
    DescribeCustomDomainsRequest.add_member(:service_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AppRunnerResourceArn, location_name: "ServiceArn", traits: {"smithy.api#required" => {}}))
    DescribeCustomDomainsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "NextToken"))
    DescribeCustomDomainsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: DescribeCustomDomainsMaxResults, location_name: "MaxResults"))
    DescribeCustomDomainsRequest.type = Types::DescribeCustomDomainsRequest
    DescribeCustomDomainsResponse.add_member(:dns_target, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "DNSTarget", traits: {"smithy.api#required" => {}}))
    DescribeCustomDomainsResponse.add_member(:service_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AppRunnerResourceArn, location_name: "ServiceArn", traits: {"smithy.api#required" => {}}))
    DescribeCustomDomainsResponse.add_member(:custom_domains, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomDomainList, location_name: "CustomDomains", traits: {"smithy.api#required" => {}}))
    DescribeCustomDomainsResponse.add_member(:vpc_dns_targets, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcDNSTargetList, location_name: "VpcDNSTargets", traits: {"smithy.api#required" => {}}))
    DescribeCustomDomainsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "NextToken"))
    DescribeCustomDomainsResponse.type = Types::DescribeCustomDomainsResponse
    DescribeObservabilityConfigurationRequest.add_member(:observability_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AppRunnerResourceArn, location_name: "ObservabilityConfigurationArn", traits: {"smithy.api#required" => {}}))
    DescribeObservabilityConfigurationRequest.type = Types::DescribeObservabilityConfigurationRequest
    DescribeObservabilityConfigurationResponse.add_member(:observability_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ObservabilityConfiguration, location_name: "ObservabilityConfiguration", traits: {"smithy.api#required" => {}}))
    DescribeObservabilityConfigurationResponse.type = Types::DescribeObservabilityConfigurationResponse
    DescribeServiceRequest.add_member(:service_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AppRunnerResourceArn, location_name: "ServiceArn", traits: {"smithy.api#required" => {}}))
    DescribeServiceRequest.type = Types::DescribeServiceRequest
    DescribeServiceResponse.add_member(:service, ::Smithy::Schema::Shapes::MemberShape.new(target: Service, location_name: "Service", traits: {"smithy.api#required" => {}}))
    DescribeServiceResponse.type = Types::DescribeServiceResponse
    DescribeVpcConnectorRequest.add_member(:vpc_connector_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AppRunnerResourceArn, location_name: "VpcConnectorArn", traits: {"smithy.api#required" => {}}))
    DescribeVpcConnectorRequest.type = Types::DescribeVpcConnectorRequest
    DescribeVpcConnectorResponse.add_member(:vpc_connector, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcConnector, location_name: "VpcConnector", traits: {"smithy.api#required" => {}}))
    DescribeVpcConnectorResponse.type = Types::DescribeVpcConnectorResponse
    DescribeVpcIngressConnectionRequest.add_member(:vpc_ingress_connection_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AppRunnerResourceArn, location_name: "VpcIngressConnectionArn", traits: {"smithy.api#required" => {}}))
    DescribeVpcIngressConnectionRequest.type = Types::DescribeVpcIngressConnectionRequest
    DescribeVpcIngressConnectionResponse.add_member(:vpc_ingress_connection, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcIngressConnection, location_name: "VpcIngressConnection", traits: {"smithy.api#required" => {}}))
    DescribeVpcIngressConnectionResponse.type = Types::DescribeVpcIngressConnectionResponse
    DisassociateCustomDomainRequest.add_member(:service_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AppRunnerResourceArn, location_name: "ServiceArn", traits: {"smithy.api#required" => {}}))
    DisassociateCustomDomainRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, location_name: "DomainName", traits: {"smithy.api#required" => {}}))
    DisassociateCustomDomainRequest.type = Types::DisassociateCustomDomainRequest
    DisassociateCustomDomainResponse.add_member(:dns_target, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "DNSTarget", traits: {"smithy.api#required" => {}}))
    DisassociateCustomDomainResponse.add_member(:service_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AppRunnerResourceArn, location_name: "ServiceArn", traits: {"smithy.api#required" => {}}))
    DisassociateCustomDomainResponse.add_member(:custom_domain, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomDomain, location_name: "CustomDomain", traits: {"smithy.api#required" => {}}))
    DisassociateCustomDomainResponse.add_member(:vpc_dns_targets, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcDNSTargetList, location_name: "VpcDNSTargets", traits: {"smithy.api#required" => {}}))
    DisassociateCustomDomainResponse.type = Types::DisassociateCustomDomainResponse
    EgressConfiguration.add_member(:egress_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EgressType, location_name: "EgressType"))
    EgressConfiguration.add_member(:vpc_connector_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AppRunnerResourceArn, location_name: "VpcConnectorArn"))
    EgressConfiguration.type = Types::EgressConfiguration
    EgressType.add_member(:default, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DEFAULT", traits: {"smithy.api#enumValue" => "DEFAULT"}))
    EgressType.add_member(:vpc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VPC", traits: {"smithy.api#enumValue" => "VPC"}))
    EncryptionConfiguration.add_member(:kms_key, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyArn, location_name: "KmsKey", traits: {"smithy.api#required" => {}}))
    EncryptionConfiguration.type = Types::EncryptionConfiguration
    HealthCheckConfiguration.add_member(:protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: HealthCheckProtocol, location_name: "Protocol"))
    HealthCheckConfiguration.add_member(:path, ::Smithy::Schema::Shapes::MemberShape.new(target: HealthCheckPath, location_name: "Path"))
    HealthCheckConfiguration.add_member(:interval, ::Smithy::Schema::Shapes::MemberShape.new(target: HealthCheckInterval, location_name: "Interval"))
    HealthCheckConfiguration.add_member(:timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: HealthCheckTimeout, location_name: "Timeout"))
    HealthCheckConfiguration.add_member(:healthy_threshold, ::Smithy::Schema::Shapes::MemberShape.new(target: HealthCheckHealthyThreshold, location_name: "HealthyThreshold"))
    HealthCheckConfiguration.add_member(:unhealthy_threshold, ::Smithy::Schema::Shapes::MemberShape.new(target: HealthCheckUnhealthyThreshold, location_name: "UnhealthyThreshold"))
    HealthCheckConfiguration.type = Types::HealthCheckConfiguration
    HealthCheckProtocol.add_member(:tcp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TCP", traits: {"smithy.api#enumValue" => "TCP"}))
    HealthCheckProtocol.add_member(:http, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HTTP", traits: {"smithy.api#enumValue" => "HTTP"}))
    ImageConfiguration.add_member(:runtime_environment_variables, ::Smithy::Schema::Shapes::MemberShape.new(target: RuntimeEnvironmentVariables, location_name: "RuntimeEnvironmentVariables"))
    ImageConfiguration.add_member(:start_command, ::Smithy::Schema::Shapes::MemberShape.new(target: StartCommand, location_name: "StartCommand"))
    ImageConfiguration.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Port"))
    ImageConfiguration.add_member(:runtime_environment_secrets, ::Smithy::Schema::Shapes::MemberShape.new(target: RuntimeEnvironmentSecrets, location_name: "RuntimeEnvironmentSecrets"))
    ImageConfiguration.type = Types::ImageConfiguration
    ImageRepository.add_member(:image_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageIdentifier, location_name: "ImageIdentifier", traits: {"smithy.api#required" => {}}))
    ImageRepository.add_member(:image_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageConfiguration, location_name: "ImageConfiguration"))
    ImageRepository.add_member(:image_repository_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageRepositoryType, location_name: "ImageRepositoryType", traits: {"smithy.api#required" => {}}))
    ImageRepository.type = Types::ImageRepository
    ImageRepositoryType.add_member(:ecr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ECR", traits: {"smithy.api#enumValue" => "ECR"}))
    ImageRepositoryType.add_member(:ecr_public, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ECR_PUBLIC", traits: {"smithy.api#enumValue" => "ECR_PUBLIC"}))
    IngressConfiguration.add_member(:is_publicly_accessible, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "IsPubliclyAccessible", traits: {"smithy.api#default" => false}))
    IngressConfiguration.type = Types::IngressConfiguration
    IngressVpcConfiguration.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "VpcId"))
    IngressVpcConfiguration.add_member(:vpc_endpoint_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "VpcEndpointId"))
    IngressVpcConfiguration.type = Types::IngressVpcConfiguration
    InstanceConfiguration.add_member(:cpu, ::Smithy::Schema::Shapes::MemberShape.new(target: Cpu, location_name: "Cpu"))
    InstanceConfiguration.add_member(:memory, ::Smithy::Schema::Shapes::MemberShape.new(target: Memory, location_name: "Memory"))
    InstanceConfiguration.add_member(:instance_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, location_name: "InstanceRoleArn"))
    InstanceConfiguration.type = Types::InstanceConfiguration
    InternalServiceErrorException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    InternalServiceErrorException.type = Types::InternalServiceErrorException
    InvalidRequestException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    InvalidRequestException.type = Types::InvalidRequestException
    InvalidStateException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    InvalidStateException.type = Types::InvalidStateException
    IpAddressType.add_member(:ipv4, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IPV4", traits: {"smithy.api#enumValue" => "IPV4"}))
    IpAddressType.add_member(:dual_stack, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DUAL_STACK", traits: {"smithy.api#enumValue" => "DUAL_STACK"}))
    ListAutoScalingConfigurationsRequest.add_member(:auto_scaling_configuration_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingConfigurationName, location_name: "AutoScalingConfigurationName"))
    ListAutoScalingConfigurationsRequest.add_member(:latest_only, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "LatestOnly", traits: {"smithy.api#default" => false}))
    ListAutoScalingConfigurationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, location_name: "MaxResults"))
    ListAutoScalingConfigurationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListAutoScalingConfigurationsRequest.type = Types::ListAutoScalingConfigurationsRequest
    ListAutoScalingConfigurationsResponse.add_member(:auto_scaling_configuration_summary_list, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingConfigurationSummaryList, location_name: "AutoScalingConfigurationSummaryList", traits: {"smithy.api#required" => {}}))
    ListAutoScalingConfigurationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListAutoScalingConfigurationsResponse.type = Types::ListAutoScalingConfigurationsResponse
    ListConnectionsRequest.add_member(:connection_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionName, location_name: "ConnectionName"))
    ListConnectionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, location_name: "MaxResults"))
    ListConnectionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListConnectionsRequest.type = Types::ListConnectionsRequest
    ListConnectionsResponse.add_member(:connection_summary_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionSummaryList, location_name: "ConnectionSummaryList", traits: {"smithy.api#required" => {}}))
    ListConnectionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListConnectionsResponse.type = Types::ListConnectionsResponse
    ListObservabilityConfigurationsRequest.add_member(:observability_configuration_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ObservabilityConfigurationName, location_name: "ObservabilityConfigurationName"))
    ListObservabilityConfigurationsRequest.add_member(:latest_only, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "LatestOnly", traits: {"smithy.api#default" => false}))
    ListObservabilityConfigurationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, location_name: "MaxResults"))
    ListObservabilityConfigurationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListObservabilityConfigurationsRequest.type = Types::ListObservabilityConfigurationsRequest
    ListObservabilityConfigurationsResponse.add_member(:observability_configuration_summary_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ObservabilityConfigurationSummaryList, location_name: "ObservabilityConfigurationSummaryList", traits: {"smithy.api#required" => {}}))
    ListObservabilityConfigurationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListObservabilityConfigurationsResponse.type = Types::ListObservabilityConfigurationsResponse
    ListOperationsRequest.add_member(:service_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AppRunnerResourceArn, location_name: "ServiceArn", traits: {"smithy.api#required" => {}}))
    ListOperationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "NextToken"))
    ListOperationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOperationsMaxResults, location_name: "MaxResults"))
    ListOperationsRequest.type = Types::ListOperationsRequest
    ListOperationsResponse.add_member(:operation_summary_list, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationSummaryList, location_name: "OperationSummaryList"))
    ListOperationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "NextToken"))
    ListOperationsResponse.type = Types::ListOperationsResponse
    ListServicesForAutoScalingConfigurationRequest.add_member(:auto_scaling_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AppRunnerResourceArn, location_name: "AutoScalingConfigurationArn", traits: {"smithy.api#required" => {}}))
    ListServicesForAutoScalingConfigurationRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, location_name: "MaxResults"))
    ListServicesForAutoScalingConfigurationRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListServicesForAutoScalingConfigurationRequest.type = Types::ListServicesForAutoScalingConfigurationRequest
    ListServicesForAutoScalingConfigurationResponse.add_member(:service_arn_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceArnList, location_name: "ServiceArnList", traits: {"smithy.api#required" => {}}))
    ListServicesForAutoScalingConfigurationResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListServicesForAutoScalingConfigurationResponse.type = Types::ListServicesForAutoScalingConfigurationResponse
    ListServicesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "NextToken"))
    ListServicesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceMaxResults, location_name: "MaxResults"))
    ListServicesRequest.type = Types::ListServicesRequest
    ListServicesResponse.add_member(:service_summary_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceSummaryList, location_name: "ServiceSummaryList", traits: {"smithy.api#required" => {}}))
    ListServicesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "NextToken"))
    ListServicesResponse.type = Types::ListServicesResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AppRunnerResourceArn, location_name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, location_name: "Tags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ListVpcConnectorsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, location_name: "MaxResults"))
    ListVpcConnectorsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListVpcConnectorsRequest.type = Types::ListVpcConnectorsRequest
    ListVpcConnectorsResponse.add_member(:vpc_connectors, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcConnectors, location_name: "VpcConnectors", traits: {"smithy.api#required" => {}}))
    ListVpcConnectorsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListVpcConnectorsResponse.type = Types::ListVpcConnectorsResponse
    ListVpcIngressConnectionsFilter.add_member(:service_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AppRunnerResourceArn, location_name: "ServiceArn"))
    ListVpcIngressConnectionsFilter.add_member(:vpc_endpoint_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "VpcEndpointId"))
    ListVpcIngressConnectionsFilter.type = Types::ListVpcIngressConnectionsFilter
    ListVpcIngressConnectionsRequest.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: ListVpcIngressConnectionsFilter, location_name: "Filter"))
    ListVpcIngressConnectionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, location_name: "MaxResults"))
    ListVpcIngressConnectionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListVpcIngressConnectionsRequest.type = Types::ListVpcIngressConnectionsRequest
    ListVpcIngressConnectionsResponse.add_member(:vpc_ingress_connection_summary_list, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcIngressConnectionSummaryList, location_name: "VpcIngressConnectionSummaryList", traits: {"smithy.api#required" => {}}))
    ListVpcIngressConnectionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListVpcIngressConnectionsResponse.type = Types::ListVpcIngressConnectionsResponse
    NetworkConfiguration.add_member(:egress_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EgressConfiguration, location_name: "EgressConfiguration"))
    NetworkConfiguration.add_member(:ingress_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: IngressConfiguration, location_name: "IngressConfiguration"))
    NetworkConfiguration.add_member(:ip_address_type, ::Smithy::Schema::Shapes::MemberShape.new(target: IpAddressType, location_name: "IpAddressType"))
    NetworkConfiguration.type = Types::NetworkConfiguration
    ObservabilityConfiguration.add_member(:observability_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AppRunnerResourceArn, location_name: "ObservabilityConfigurationArn"))
    ObservabilityConfiguration.add_member(:observability_configuration_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ObservabilityConfigurationName, location_name: "ObservabilityConfigurationName"))
    ObservabilityConfiguration.add_member(:trace_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: TraceConfiguration, location_name: "TraceConfiguration"))
    ObservabilityConfiguration.add_member(:observability_configuration_revision, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "ObservabilityConfigurationRevision", traits: {"smithy.api#default" => 0}))
    ObservabilityConfiguration.add_member(:latest, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "Latest", traits: {"smithy.api#default" => false}))
    ObservabilityConfiguration.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ObservabilityConfigurationStatus, location_name: "Status"))
    ObservabilityConfiguration.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "CreatedAt"))
    ObservabilityConfiguration.add_member(:deleted_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "DeletedAt"))
    ObservabilityConfiguration.type = Types::ObservabilityConfiguration
    ObservabilityConfigurationStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ObservabilityConfigurationStatus.add_member(:inactive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INACTIVE", traits: {"smithy.api#enumValue" => "INACTIVE"}))
    ObservabilityConfigurationSummary.add_member(:observability_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AppRunnerResourceArn, location_name: "ObservabilityConfigurationArn"))
    ObservabilityConfigurationSummary.add_member(:observability_configuration_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ObservabilityConfigurationName, location_name: "ObservabilityConfigurationName"))
    ObservabilityConfigurationSummary.add_member(:observability_configuration_revision, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "ObservabilityConfigurationRevision", traits: {"smithy.api#default" => 0}))
    ObservabilityConfigurationSummary.type = Types::ObservabilityConfigurationSummary
    ObservabilityConfigurationSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ObservabilityConfigurationSummary)
    OperationStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    OperationStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    OperationStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    OperationStatus.add_member(:succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SUCCEEDED", traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    OperationStatus.add_member(:rollback_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ROLLBACK_IN_PROGRESS", traits: {"smithy.api#enumValue" => "ROLLBACK_IN_PROGRESS"}))
    OperationStatus.add_member(:rollback_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ROLLBACK_FAILED", traits: {"smithy.api#enumValue" => "ROLLBACK_FAILED"}))
    OperationStatus.add_member(:rollback_succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ROLLBACK_SUCCEEDED", traits: {"smithy.api#enumValue" => "ROLLBACK_SUCCEEDED"}))
    OperationSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, location_name: "Id"))
    OperationSummary.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationType, location_name: "Type"))
    OperationSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationStatus, location_name: "Status"))
    OperationSummary.add_member(:target_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AppRunnerResourceArn, location_name: "TargetArn"))
    OperationSummary.add_member(:started_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "StartedAt"))
    OperationSummary.add_member(:ended_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "EndedAt"))
    OperationSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "UpdatedAt"))
    OperationSummary.type = Types::OperationSummary
    OperationSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: OperationSummary)
    OperationType.add_member(:start_deployment, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "START_DEPLOYMENT", traits: {"smithy.api#enumValue" => "START_DEPLOYMENT"}))
    OperationType.add_member(:create_service, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CREATE_SERVICE", traits: {"smithy.api#enumValue" => "CREATE_SERVICE"}))
    OperationType.add_member(:pause_service, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PAUSE_SERVICE", traits: {"smithy.api#enumValue" => "PAUSE_SERVICE"}))
    OperationType.add_member(:resume_service, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RESUME_SERVICE", traits: {"smithy.api#enumValue" => "RESUME_SERVICE"}))
    OperationType.add_member(:delete_service, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETE_SERVICE", traits: {"smithy.api#enumValue" => "DELETE_SERVICE"}))
    OperationType.add_member(:update_service, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UPDATE_SERVICE", traits: {"smithy.api#enumValue" => "UPDATE_SERVICE"}))
    PauseServiceRequest.add_member(:service_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AppRunnerResourceArn, location_name: "ServiceArn", traits: {"smithy.api#required" => {}}))
    PauseServiceRequest.type = Types::PauseServiceRequest
    PauseServiceResponse.add_member(:service, ::Smithy::Schema::Shapes::MemberShape.new(target: Service, location_name: "Service", traits: {"smithy.api#required" => {}}))
    PauseServiceResponse.add_member(:operation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, location_name: "OperationId"))
    PauseServiceResponse.type = Types::PauseServiceResponse
    ProviderType.add_member(:github, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GITHUB", traits: {"smithy.api#enumValue" => "GITHUB"}))
    ProviderType.add_member(:bitbucket, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BITBUCKET", traits: {"smithy.api#enumValue" => "BITBUCKET"}))
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResumeServiceRequest.add_member(:service_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AppRunnerResourceArn, location_name: "ServiceArn", traits: {"smithy.api#required" => {}}))
    ResumeServiceRequest.type = Types::ResumeServiceRequest
    ResumeServiceResponse.add_member(:service, ::Smithy::Schema::Shapes::MemberShape.new(target: Service, location_name: "Service", traits: {"smithy.api#required" => {}}))
    ResumeServiceResponse.add_member(:operation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, location_name: "OperationId"))
    ResumeServiceResponse.type = Types::ResumeServiceResponse
    Runtime.add_member(:python_3, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PYTHON_3", traits: {"smithy.api#enumValue" => "PYTHON_3"}))
    Runtime.add_member(:nodejs_12, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NODEJS_12", traits: {"smithy.api#enumValue" => "NODEJS_12"}))
    Runtime.add_member(:nodejs_14, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NODEJS_14", traits: {"smithy.api#enumValue" => "NODEJS_14"}))
    Runtime.add_member(:corretto_8, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CORRETTO_8", traits: {"smithy.api#enumValue" => "CORRETTO_8"}))
    Runtime.add_member(:corretto_11, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CORRETTO_11", traits: {"smithy.api#enumValue" => "CORRETTO_11"}))
    Runtime.add_member(:nodejs_16, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NODEJS_16", traits: {"smithy.api#enumValue" => "NODEJS_16"}))
    Runtime.add_member(:go_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GO_1", traits: {"smithy.api#enumValue" => "GO_1"}))
    Runtime.add_member(:dotnet_6, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DOTNET_6", traits: {"smithy.api#enumValue" => "DOTNET_6"}))
    Runtime.add_member(:php_81, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PHP_81", traits: {"smithy.api#enumValue" => "PHP_81"}))
    Runtime.add_member(:ruby_31, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RUBY_31", traits: {"smithy.api#enumValue" => "RUBY_31"}))
    Runtime.add_member(:python_311, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PYTHON_311", traits: {"smithy.api#enumValue" => "PYTHON_311"}))
    Runtime.add_member(:nodejs_18, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NODEJS_18", traits: {"smithy.api#enumValue" => "NODEJS_18"}))
    Runtime.add_member(:nodejs_22, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NODEJS_22", traits: {"smithy.api#enumValue" => "NODEJS_22"}))
    RuntimeEnvironmentSecrets.key = ::Smithy::Schema::Shapes::MemberShape.new(target: RuntimeEnvironmentSecretsName)
    RuntimeEnvironmentSecrets.value = ::Smithy::Schema::Shapes::MemberShape.new(target: RuntimeEnvironmentSecretsValue)
    RuntimeEnvironmentVariables.key = ::Smithy::Schema::Shapes::MemberShape.new(target: RuntimeEnvironmentVariablesKey)
    RuntimeEnvironmentVariables.value = ::Smithy::Schema::Shapes::MemberShape.new(target: RuntimeEnvironmentVariablesValue)
    Service.add_member(:service_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceName, location_name: "ServiceName", traits: {"smithy.api#required" => {}}))
    Service.add_member(:service_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceId, location_name: "ServiceId", traits: {"smithy.api#required" => {}}))
    Service.add_member(:service_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AppRunnerResourceArn, location_name: "ServiceArn", traits: {"smithy.api#required" => {}}))
    Service.add_member(:service_url, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ServiceUrl"))
    Service.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "CreatedAt", traits: {"smithy.api#required" => {}}))
    Service.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "UpdatedAt", traits: {"smithy.api#required" => {}}))
    Service.add_member(:deleted_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "DeletedAt"))
    Service.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceStatus, location_name: "Status", traits: {"smithy.api#required" => {}}))
    Service.add_member(:source_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceConfiguration, location_name: "SourceConfiguration", traits: {"smithy.api#required" => {}}))
    Service.add_member(:instance_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceConfiguration, location_name: "InstanceConfiguration", traits: {"smithy.api#required" => {}}))
    Service.add_member(:encryption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionConfiguration, location_name: "EncryptionConfiguration"))
    Service.add_member(:health_check_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: HealthCheckConfiguration, location_name: "HealthCheckConfiguration"))
    Service.add_member(:auto_scaling_configuration_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingConfigurationSummary, location_name: "AutoScalingConfigurationSummary", traits: {"smithy.api#required" => {}}))
    Service.add_member(:network_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConfiguration, location_name: "NetworkConfiguration", traits: {"smithy.api#required" => {}}))
    Service.add_member(:observability_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceObservabilityConfiguration, location_name: "ObservabilityConfiguration"))
    Service.type = Types::Service
    ServiceArnList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AppRunnerResourceArn)
    ServiceObservabilityConfiguration.add_member(:observability_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "ObservabilityEnabled", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    ServiceObservabilityConfiguration.add_member(:observability_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AppRunnerResourceArn, location_name: "ObservabilityConfigurationArn"))
    ServiceObservabilityConfiguration.type = Types::ServiceObservabilityConfiguration
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    ServiceStatus.add_member(:create_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CREATE_FAILED", traits: {"smithy.api#enumValue" => "CREATE_FAILED"}))
    ServiceStatus.add_member(:running, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RUNNING", traits: {"smithy.api#enumValue" => "RUNNING"}))
    ServiceStatus.add_member(:deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETED", traits: {"smithy.api#enumValue" => "DELETED"}))
    ServiceStatus.add_member(:delete_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETE_FAILED", traits: {"smithy.api#enumValue" => "DELETE_FAILED"}))
    ServiceStatus.add_member(:paused, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PAUSED", traits: {"smithy.api#enumValue" => "PAUSED"}))
    ServiceStatus.add_member(:operation_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "OPERATION_IN_PROGRESS", traits: {"smithy.api#enumValue" => "OPERATION_IN_PROGRESS"}))
    ServiceSummary.add_member(:service_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceName, location_name: "ServiceName"))
    ServiceSummary.add_member(:service_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceId, location_name: "ServiceId"))
    ServiceSummary.add_member(:service_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AppRunnerResourceArn, location_name: "ServiceArn"))
    ServiceSummary.add_member(:service_url, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ServiceUrl"))
    ServiceSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "CreatedAt"))
    ServiceSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "UpdatedAt"))
    ServiceSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceStatus, location_name: "Status"))
    ServiceSummary.type = Types::ServiceSummary
    ServiceSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceSummary)
    SourceCodeVersion.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceCodeVersionType, location_name: "Type", traits: {"smithy.api#required" => {}}))
    SourceCodeVersion.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Value", traits: {"smithy.api#required" => {}}))
    SourceCodeVersion.type = Types::SourceCodeVersion
    SourceCodeVersionType.add_member(:branch, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BRANCH", traits: {"smithy.api#enumValue" => "BRANCH"}))
    SourceConfiguration.add_member(:code_repository, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeRepository, location_name: "CodeRepository"))
    SourceConfiguration.add_member(:image_repository, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageRepository, location_name: "ImageRepository"))
    SourceConfiguration.add_member(:auto_deployments_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBoolean, location_name: "AutoDeploymentsEnabled"))
    SourceConfiguration.add_member(:authentication_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticationConfiguration, location_name: "AuthenticationConfiguration"))
    SourceConfiguration.type = Types::SourceConfiguration
    StartDeploymentRequest.add_member(:service_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AppRunnerResourceArn, location_name: "ServiceArn", traits: {"smithy.api#required" => {}}))
    StartDeploymentRequest.type = Types::StartDeploymentRequest
    StartDeploymentResponse.add_member(:operation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, location_name: "OperationId", traits: {"smithy.api#required" => {}}))
    StartDeploymentResponse.type = Types::StartDeploymentResponse
    StringList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: String)
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, location_name: "Key"))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, location_name: "Value"))
    Tag.type = Types::Tag
    TagKeyList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey)
    TagList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Tag)
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AppRunnerResourceArn, location_name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, location_name: "Tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    TraceConfiguration.add_member(:vendor, ::Smithy::Schema::Shapes::MemberShape.new(target: TracingVendor, location_name: "Vendor", traits: {"smithy.api#required" => {}}))
    TraceConfiguration.type = Types::TraceConfiguration
    TracingVendor.add_member(:awsxray, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AWSXRAY", traits: {"smithy.api#enumValue" => "AWSXRAY"}))
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AppRunnerResourceArn, location_name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, location_name: "TagKeys", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateDefaultAutoScalingConfigurationRequest.add_member(:auto_scaling_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AppRunnerResourceArn, location_name: "AutoScalingConfigurationArn", traits: {"smithy.api#required" => {}}))
    UpdateDefaultAutoScalingConfigurationRequest.type = Types::UpdateDefaultAutoScalingConfigurationRequest
    UpdateDefaultAutoScalingConfigurationResponse.add_member(:auto_scaling_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingConfiguration, location_name: "AutoScalingConfiguration", traits: {"smithy.api#required" => {}}))
    UpdateDefaultAutoScalingConfigurationResponse.type = Types::UpdateDefaultAutoScalingConfigurationResponse
    UpdateServiceRequest.add_member(:service_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AppRunnerResourceArn, location_name: "ServiceArn", traits: {"smithy.api#required" => {}}))
    UpdateServiceRequest.add_member(:source_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceConfiguration, location_name: "SourceConfiguration"))
    UpdateServiceRequest.add_member(:instance_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceConfiguration, location_name: "InstanceConfiguration"))
    UpdateServiceRequest.add_member(:auto_scaling_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AppRunnerResourceArn, location_name: "AutoScalingConfigurationArn"))
    UpdateServiceRequest.add_member(:health_check_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: HealthCheckConfiguration, location_name: "HealthCheckConfiguration"))
    UpdateServiceRequest.add_member(:network_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConfiguration, location_name: "NetworkConfiguration"))
    UpdateServiceRequest.add_member(:observability_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceObservabilityConfiguration, location_name: "ObservabilityConfiguration"))
    UpdateServiceRequest.type = Types::UpdateServiceRequest
    UpdateServiceResponse.add_member(:service, ::Smithy::Schema::Shapes::MemberShape.new(target: Service, location_name: "Service", traits: {"smithy.api#required" => {}}))
    UpdateServiceResponse.add_member(:operation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, location_name: "OperationId", traits: {"smithy.api#required" => {}}))
    UpdateServiceResponse.type = Types::UpdateServiceResponse
    UpdateVpcIngressConnectionRequest.add_member(:vpc_ingress_connection_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AppRunnerResourceArn, location_name: "VpcIngressConnectionArn", traits: {"smithy.api#required" => {}}))
    UpdateVpcIngressConnectionRequest.add_member(:ingress_vpc_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: IngressVpcConfiguration, location_name: "IngressVpcConfiguration", traits: {"smithy.api#required" => {}}))
    UpdateVpcIngressConnectionRequest.type = Types::UpdateVpcIngressConnectionRequest
    UpdateVpcIngressConnectionResponse.add_member(:vpc_ingress_connection, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcIngressConnection, location_name: "VpcIngressConnection", traits: {"smithy.api#required" => {}}))
    UpdateVpcIngressConnectionResponse.type = Types::UpdateVpcIngressConnectionResponse
    VpcConnector.add_member(:vpc_connector_name, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcConnectorName, location_name: "VpcConnectorName"))
    VpcConnector.add_member(:vpc_connector_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AppRunnerResourceArn, location_name: "VpcConnectorArn"))
    VpcConnector.add_member(:vpc_connector_revision, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "VpcConnectorRevision", traits: {"smithy.api#default" => 0}))
    VpcConnector.add_member(:subnets, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, location_name: "Subnets"))
    VpcConnector.add_member(:security_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, location_name: "SecurityGroups"))
    VpcConnector.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcConnectorStatus, location_name: "Status"))
    VpcConnector.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "CreatedAt"))
    VpcConnector.add_member(:deleted_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "DeletedAt"))
    VpcConnector.type = Types::VpcConnector
    VpcConnectorStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    VpcConnectorStatus.add_member(:inactive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INACTIVE", traits: {"smithy.api#enumValue" => "INACTIVE"}))
    VpcConnectors.member = ::Smithy::Schema::Shapes::MemberShape.new(target: VpcConnector)
    VpcDNSTarget.add_member(:vpc_ingress_connection_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AppRunnerResourceArn, location_name: "VpcIngressConnectionArn"))
    VpcDNSTarget.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "VpcId"))
    VpcDNSTarget.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, location_name: "DomainName"))
    VpcDNSTarget.type = Types::VpcDNSTarget
    VpcDNSTargetList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: VpcDNSTarget)
    VpcIngressConnection.add_member(:vpc_ingress_connection_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AppRunnerResourceArn, location_name: "VpcIngressConnectionArn"))
    VpcIngressConnection.add_member(:vpc_ingress_connection_name, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcIngressConnectionName, location_name: "VpcIngressConnectionName"))
    VpcIngressConnection.add_member(:service_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AppRunnerResourceArn, location_name: "ServiceArn"))
    VpcIngressConnection.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcIngressConnectionStatus, location_name: "Status"))
    VpcIngressConnection.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerAccountId, location_name: "AccountId"))
    VpcIngressConnection.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, location_name: "DomainName"))
    VpcIngressConnection.add_member(:ingress_vpc_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: IngressVpcConfiguration, location_name: "IngressVpcConfiguration"))
    VpcIngressConnection.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "CreatedAt"))
    VpcIngressConnection.add_member(:deleted_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "DeletedAt"))
    VpcIngressConnection.type = Types::VpcIngressConnection
    VpcIngressConnectionStatus.add_member(:available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AVAILABLE", traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    VpcIngressConnectionStatus.add_member(:pending_creation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PENDING_CREATION", traits: {"smithy.api#enumValue" => "PENDING_CREATION"}))
    VpcIngressConnectionStatus.add_member(:pending_update, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PENDING_UPDATE", traits: {"smithy.api#enumValue" => "PENDING_UPDATE"}))
    VpcIngressConnectionStatus.add_member(:pending_deletion, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PENDING_DELETION", traits: {"smithy.api#enumValue" => "PENDING_DELETION"}))
    VpcIngressConnectionStatus.add_member(:failed_creation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED_CREATION", traits: {"smithy.api#enumValue" => "FAILED_CREATION"}))
    VpcIngressConnectionStatus.add_member(:failed_update, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED_UPDATE", traits: {"smithy.api#enumValue" => "FAILED_UPDATE"}))
    VpcIngressConnectionStatus.add_member(:failed_deletion, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED_DELETION", traits: {"smithy.api#enumValue" => "FAILED_DELETION"}))
    VpcIngressConnectionStatus.add_member(:deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETED", traits: {"smithy.api#enumValue" => "DELETED"}))
    VpcIngressConnectionSummary.add_member(:vpc_ingress_connection_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AppRunnerResourceArn, location_name: "VpcIngressConnectionArn"))
    VpcIngressConnectionSummary.add_member(:service_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AppRunnerResourceArn, location_name: "ServiceArn"))
    VpcIngressConnectionSummary.type = Types::VpcIngressConnectionSummary
    VpcIngressConnectionSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: VpcIngressConnectionSummary)

    AppRunner = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.apprunner#AppRunner"
      service.name = "AppRunner"
      service.version = "2020-05-15"
      service.traits = {"aws.api#service" => {"sdkId" => "AppRunner", "arnNamespace" => "apprunner", "cloudFormationName" => "AppRunner", "cloudTrailEventSource" => "apprunner.amazonaws.com", "endpointPrefix" => "apprunner"}, "aws.auth#sigv4" => {"name" => "apprunner"}, "aws.protocols#awsJson1_0" => {}, "smithy.api#title" => "AWS App Runner", "smithy.api#xmlNamespace" => {"uri" => "http://apprunner.amazonaws.com/doc/2020-05-15/"}}
      service.add_operation(:associate_custom_domain, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apprunner#AssociateCustomDomain"
        operation.name = "AssociateCustomDomain"
        operation.input = AssociateCustomDomainRequest
        operation.output = AssociateCustomDomainResponse
        operation.errors << InternalServiceErrorException
        operation.errors << InvalidRequestException
        operation.errors << InvalidStateException
        operation.traits = {}
      end)
      service.add_operation(:create_auto_scaling_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apprunner#CreateAutoScalingConfiguration"
        operation.name = "CreateAutoScalingConfiguration"
        operation.input = CreateAutoScalingConfigurationRequest
        operation.output = CreateAutoScalingConfigurationResponse
        operation.errors << InternalServiceErrorException
        operation.errors << InvalidRequestException
        operation.errors << ServiceQuotaExceededException
        operation.traits = {}
      end)
      service.add_operation(:create_connection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apprunner#CreateConnection"
        operation.name = "CreateConnection"
        operation.input = CreateConnectionRequest
        operation.output = CreateConnectionResponse
        operation.errors << InternalServiceErrorException
        operation.errors << InvalidRequestException
        operation.errors << ServiceQuotaExceededException
        operation.traits = {}
      end)
      service.add_operation(:create_observability_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apprunner#CreateObservabilityConfiguration"
        operation.name = "CreateObservabilityConfiguration"
        operation.input = CreateObservabilityConfigurationRequest
        operation.output = CreateObservabilityConfigurationResponse
        operation.errors << InternalServiceErrorException
        operation.errors << InvalidRequestException
        operation.errors << ServiceQuotaExceededException
        operation.traits = {}
      end)
      service.add_operation(:create_service, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apprunner#CreateService"
        operation.name = "CreateService"
        operation.input = CreateServiceRequest
        operation.output = CreateServiceResponse
        operation.errors << InternalServiceErrorException
        operation.errors << InvalidRequestException
        operation.errors << ServiceQuotaExceededException
        operation.traits = {}
      end)
      service.add_operation(:create_vpc_connector, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apprunner#CreateVpcConnector"
        operation.name = "CreateVpcConnector"
        operation.input = CreateVpcConnectorRequest
        operation.output = CreateVpcConnectorResponse
        operation.errors << InternalServiceErrorException
        operation.errors << InvalidRequestException
        operation.errors << ServiceQuotaExceededException
        operation.traits = {}
      end)
      service.add_operation(:create_vpc_ingress_connection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apprunner#CreateVpcIngressConnection"
        operation.name = "CreateVpcIngressConnection"
        operation.input = CreateVpcIngressConnectionRequest
        operation.output = CreateVpcIngressConnectionResponse
        operation.errors << InternalServiceErrorException
        operation.errors << InvalidRequestException
        operation.errors << InvalidStateException
        operation.errors << ServiceQuotaExceededException
        operation.traits = {}
      end)
      service.add_operation(:delete_auto_scaling_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apprunner#DeleteAutoScalingConfiguration"
        operation.name = "DeleteAutoScalingConfiguration"
        operation.input = DeleteAutoScalingConfigurationRequest
        operation.output = DeleteAutoScalingConfigurationResponse
        operation.errors << InternalServiceErrorException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:delete_connection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apprunner#DeleteConnection"
        operation.name = "DeleteConnection"
        operation.input = DeleteConnectionRequest
        operation.output = DeleteConnectionResponse
        operation.errors << InternalServiceErrorException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:delete_observability_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apprunner#DeleteObservabilityConfiguration"
        operation.name = "DeleteObservabilityConfiguration"
        operation.input = DeleteObservabilityConfigurationRequest
        operation.output = DeleteObservabilityConfigurationResponse
        operation.errors << InternalServiceErrorException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:delete_service, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apprunner#DeleteService"
        operation.name = "DeleteService"
        operation.input = DeleteServiceRequest
        operation.output = DeleteServiceResponse
        operation.errors << InternalServiceErrorException
        operation.errors << InvalidRequestException
        operation.errors << InvalidStateException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:delete_vpc_connector, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apprunner#DeleteVpcConnector"
        operation.name = "DeleteVpcConnector"
        operation.input = DeleteVpcConnectorRequest
        operation.output = DeleteVpcConnectorResponse
        operation.errors << InternalServiceErrorException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:delete_vpc_ingress_connection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apprunner#DeleteVpcIngressConnection"
        operation.name = "DeleteVpcIngressConnection"
        operation.input = DeleteVpcIngressConnectionRequest
        operation.output = DeleteVpcIngressConnectionResponse
        operation.errors << InternalServiceErrorException
        operation.errors << InvalidRequestException
        operation.errors << InvalidStateException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:describe_auto_scaling_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apprunner#DescribeAutoScalingConfiguration"
        operation.name = "DescribeAutoScalingConfiguration"
        operation.input = DescribeAutoScalingConfigurationRequest
        operation.output = DescribeAutoScalingConfigurationResponse
        operation.errors << InternalServiceErrorException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:describe_custom_domains, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apprunner#DescribeCustomDomains"
        operation.name = "DescribeCustomDomains"
        operation.input = DescribeCustomDomainsRequest
        operation.output = DescribeCustomDomainsResponse
        operation.errors << InternalServiceErrorException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeCustomDomains.new
      end)
      service.add_operation(:describe_observability_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apprunner#DescribeObservabilityConfiguration"
        operation.name = "DescribeObservabilityConfiguration"
        operation.input = DescribeObservabilityConfigurationRequest
        operation.output = DescribeObservabilityConfigurationResponse
        operation.errors << InternalServiceErrorException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:describe_service, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apprunner#DescribeService"
        operation.name = "DescribeService"
        operation.input = DescribeServiceRequest
        operation.output = DescribeServiceResponse
        operation.errors << InternalServiceErrorException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:describe_vpc_connector, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apprunner#DescribeVpcConnector"
        operation.name = "DescribeVpcConnector"
        operation.input = DescribeVpcConnectorRequest
        operation.output = DescribeVpcConnectorResponse
        operation.errors << InternalServiceErrorException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:describe_vpc_ingress_connection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apprunner#DescribeVpcIngressConnection"
        operation.name = "DescribeVpcIngressConnection"
        operation.input = DescribeVpcIngressConnectionRequest
        operation.output = DescribeVpcIngressConnectionResponse
        operation.errors << InternalServiceErrorException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:disassociate_custom_domain, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apprunner#DisassociateCustomDomain"
        operation.name = "DisassociateCustomDomain"
        operation.input = DisassociateCustomDomainRequest
        operation.output = DisassociateCustomDomainResponse
        operation.errors << InternalServiceErrorException
        operation.errors << InvalidRequestException
        operation.errors << InvalidStateException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:list_auto_scaling_configurations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apprunner#ListAutoScalingConfigurations"
        operation.name = "ListAutoScalingConfigurations"
        operation.input = ListAutoScalingConfigurationsRequest
        operation.output = ListAutoScalingConfigurationsResponse
        operation.errors << InternalServiceErrorException
        operation.errors << InvalidRequestException
        operation.traits = {}
        operation[:paginator] = Paginators::ListAutoScalingConfigurations.new
      end)
      service.add_operation(:list_connections, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apprunner#ListConnections"
        operation.name = "ListConnections"
        operation.input = ListConnectionsRequest
        operation.output = ListConnectionsResponse
        operation.errors << InternalServiceErrorException
        operation.errors << InvalidRequestException
        operation.traits = {}
        operation[:paginator] = Paginators::ListConnections.new
      end)
      service.add_operation(:list_observability_configurations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apprunner#ListObservabilityConfigurations"
        operation.name = "ListObservabilityConfigurations"
        operation.input = ListObservabilityConfigurationsRequest
        operation.output = ListObservabilityConfigurationsResponse
        operation.errors << InternalServiceErrorException
        operation.errors << InvalidRequestException
        operation.traits = {}
        operation[:paginator] = Paginators::ListObservabilityConfigurations.new
      end)
      service.add_operation(:list_operations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apprunner#ListOperations"
        operation.name = "ListOperations"
        operation.input = ListOperationsRequest
        operation.output = ListOperationsResponse
        operation.errors << InternalServiceErrorException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
        operation[:paginator] = Paginators::ListOperations.new
      end)
      service.add_operation(:list_services, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apprunner#ListServices"
        operation.name = "ListServices"
        operation.input = ListServicesRequest
        operation.output = ListServicesResponse
        operation.errors << InternalServiceErrorException
        operation.errors << InvalidRequestException
        operation.traits = {}
        operation[:paginator] = Paginators::ListServices.new
      end)
      service.add_operation(:list_services_for_auto_scaling_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apprunner#ListServicesForAutoScalingConfiguration"
        operation.name = "ListServicesForAutoScalingConfiguration"
        operation.input = ListServicesForAutoScalingConfigurationRequest
        operation.output = ListServicesForAutoScalingConfigurationResponse
        operation.errors << InternalServiceErrorException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
        operation[:paginator] = Paginators::ListServicesForAutoScalingConfiguration.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apprunner#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << InternalServiceErrorException
        operation.errors << InvalidRequestException
        operation.errors << InvalidStateException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:list_vpc_connectors, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apprunner#ListVpcConnectors"
        operation.name = "ListVpcConnectors"
        operation.input = ListVpcConnectorsRequest
        operation.output = ListVpcConnectorsResponse
        operation.errors << InternalServiceErrorException
        operation.errors << InvalidRequestException
        operation.traits = {}
        operation[:paginator] = Paginators::ListVpcConnectors.new
      end)
      service.add_operation(:list_vpc_ingress_connections, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apprunner#ListVpcIngressConnections"
        operation.name = "ListVpcIngressConnections"
        operation.input = ListVpcIngressConnectionsRequest
        operation.output = ListVpcIngressConnectionsResponse
        operation.errors << InternalServiceErrorException
        operation.errors << InvalidRequestException
        operation.traits = {}
        operation[:paginator] = Paginators::ListVpcIngressConnections.new
      end)
      service.add_operation(:pause_service, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apprunner#PauseService"
        operation.name = "PauseService"
        operation.input = PauseServiceRequest
        operation.output = PauseServiceResponse
        operation.errors << InternalServiceErrorException
        operation.errors << InvalidRequestException
        operation.errors << InvalidStateException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:resume_service, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apprunner#ResumeService"
        operation.name = "ResumeService"
        operation.input = ResumeServiceRequest
        operation.output = ResumeServiceResponse
        operation.errors << InternalServiceErrorException
        operation.errors << InvalidRequestException
        operation.errors << InvalidStateException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:start_deployment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apprunner#StartDeployment"
        operation.name = "StartDeployment"
        operation.input = StartDeploymentRequest
        operation.output = StartDeploymentResponse
        operation.errors << InternalServiceErrorException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apprunner#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResponse
        operation.errors << InternalServiceErrorException
        operation.errors << InvalidRequestException
        operation.errors << InvalidStateException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apprunner#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = UntagResourceResponse
        operation.errors << InternalServiceErrorException
        operation.errors << InvalidRequestException
        operation.errors << InvalidStateException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:update_default_auto_scaling_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apprunner#UpdateDefaultAutoScalingConfiguration"
        operation.name = "UpdateDefaultAutoScalingConfiguration"
        operation.input = UpdateDefaultAutoScalingConfigurationRequest
        operation.output = UpdateDefaultAutoScalingConfigurationResponse
        operation.errors << InternalServiceErrorException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:update_service, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apprunner#UpdateService"
        operation.name = "UpdateService"
        operation.input = UpdateServiceRequest
        operation.output = UpdateServiceResponse
        operation.errors << InternalServiceErrorException
        operation.errors << InvalidRequestException
        operation.errors << InvalidStateException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:update_vpc_ingress_connection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apprunner#UpdateVpcIngressConnection"
        operation.name = "UpdateVpcIngressConnection"
        operation.input = UpdateVpcIngressConnectionRequest
        operation.output = UpdateVpcIngressConnectionResponse
        operation.errors << InternalServiceErrorException
        operation.errors << InvalidRequestException
        operation.errors << InvalidStateException
        operation.errors << ResourceNotFoundException
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
