# frozen_string_literal: true

# This is generated code!

module Aws::AppRunner
  # This module contains a schema composed of shapes used by the client.
  module Schema

    ASConfigMaxConcurrency = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.apprunner#ASConfigMaxConcurrency', name: 'ASConfigMaxConcurrency', traits: {"smithy.api#range" => {"min" => 1, "max" => 200}})
    ASConfigMaxSize = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.apprunner#ASConfigMaxSize', name: 'ASConfigMaxSize', traits: {"smithy.api#range" => {"min" => 1}})
    ASConfigMinSize = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.apprunner#ASConfigMinSize', name: 'ASConfigMinSize', traits: {"smithy.api#range" => {"min" => 1, "max" => 25}})
    AppRunnerResourceArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.apprunner#AppRunnerResourceArn', name: 'AppRunnerResourceArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}, "smithy.api#pattern" => "^arn:aws(-[\\w]+)*:[a-z0-9-\\\\.]{0,63}:[a-z0-9-\\\\.]{0,63}:[0-9]{12}:(\\w|\\/|-){1,1011}$"})
    AssociateCustomDomainRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apprunner#AssociateCustomDomainRequest', name: 'AssociateCustomDomainRequest')
    AssociateCustomDomainResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apprunner#AssociateCustomDomainResponse', name: 'AssociateCustomDomainResponse')
    AuthenticationConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apprunner#AuthenticationConfiguration', name: 'AuthenticationConfiguration')
    AutoScalingConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apprunner#AutoScalingConfiguration', name: 'AutoScalingConfiguration')
    AutoScalingConfigurationName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.apprunner#AutoScalingConfigurationName', name: 'AutoScalingConfigurationName', traits: {"smithy.api#length" => {"min" => 4, "max" => 32}, "smithy.api#pattern" => "^[A-Za-z0-9][A-Za-z0-9\\-_]{3,31}$"})
    AutoScalingConfigurationRevision = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.apprunner#AutoScalingConfigurationRevision', name: 'AutoScalingConfigurationRevision')
    AutoScalingConfigurationStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.apprunner#AutoScalingConfigurationStatus', name: 'AutoScalingConfigurationStatus')
    AutoScalingConfigurationSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apprunner#AutoScalingConfigurationSummary', name: 'AutoScalingConfigurationSummary')
    AutoScalingConfigurationSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.apprunner#AutoScalingConfigurationSummaryList', name: 'AutoScalingConfigurationSummaryList')
    Boolean = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.apprunner#Boolean', name: 'Boolean', traits: {"smithy.api#default" => false})
    BuildCommand = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.apprunner#BuildCommand', name: 'BuildCommand', traits: {"smithy.api#pattern" => "^[^\\x0a\\x0d]+$", "smithy.api#sensitive" => {}})
    CertificateValidationRecord = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apprunner#CertificateValidationRecord', name: 'CertificateValidationRecord')
    CertificateValidationRecordList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.apprunner#CertificateValidationRecordList', name: 'CertificateValidationRecordList')
    CertificateValidationRecordStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.apprunner#CertificateValidationRecordStatus', name: 'CertificateValidationRecordStatus')
    CodeConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apprunner#CodeConfiguration', name: 'CodeConfiguration')
    CodeConfigurationValues = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apprunner#CodeConfigurationValues', name: 'CodeConfigurationValues')
    CodeRepository = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apprunner#CodeRepository', name: 'CodeRepository')
    ConfigurationSource = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.apprunner#ConfigurationSource', name: 'ConfigurationSource')
    Connection = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apprunner#Connection', name: 'Connection')
    ConnectionName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.apprunner#ConnectionName', name: 'ConnectionName', traits: {"smithy.api#length" => {"min" => 4, "max" => 32}, "smithy.api#pattern" => "^[A-Za-z0-9][A-Za-z0-9\\-_]{3,31}$"})
    ConnectionStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.apprunner#ConnectionStatus', name: 'ConnectionStatus')
    ConnectionSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apprunner#ConnectionSummary', name: 'ConnectionSummary')
    ConnectionSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.apprunner#ConnectionSummaryList', name: 'ConnectionSummaryList')
    Cpu = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.apprunner#Cpu', name: 'Cpu', traits: {"smithy.api#length" => {"min" => 3, "max" => 9}, "smithy.api#pattern" => "^256|512|1024|2048|4096|(0.25|0.5|1|2|4) vCPU$"})
    CreateAutoScalingConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apprunner#CreateAutoScalingConfigurationRequest', name: 'CreateAutoScalingConfigurationRequest')
    CreateAutoScalingConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apprunner#CreateAutoScalingConfigurationResponse', name: 'CreateAutoScalingConfigurationResponse')
    CreateConnectionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apprunner#CreateConnectionRequest', name: 'CreateConnectionRequest')
    CreateConnectionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apprunner#CreateConnectionResponse', name: 'CreateConnectionResponse')
    CreateObservabilityConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apprunner#CreateObservabilityConfigurationRequest', name: 'CreateObservabilityConfigurationRequest')
    CreateObservabilityConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apprunner#CreateObservabilityConfigurationResponse', name: 'CreateObservabilityConfigurationResponse')
    CreateServiceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apprunner#CreateServiceRequest', name: 'CreateServiceRequest')
    CreateServiceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apprunner#CreateServiceResponse', name: 'CreateServiceResponse')
    CreateVpcConnectorRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apprunner#CreateVpcConnectorRequest', name: 'CreateVpcConnectorRequest')
    CreateVpcConnectorResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apprunner#CreateVpcConnectorResponse', name: 'CreateVpcConnectorResponse')
    CreateVpcIngressConnectionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apprunner#CreateVpcIngressConnectionRequest', name: 'CreateVpcIngressConnectionRequest')
    CreateVpcIngressConnectionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apprunner#CreateVpcIngressConnectionResponse', name: 'CreateVpcIngressConnectionResponse')
    CustomDomain = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apprunner#CustomDomain', name: 'CustomDomain')
    CustomDomainAssociationStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.apprunner#CustomDomainAssociationStatus', name: 'CustomDomainAssociationStatus')
    CustomDomainList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.apprunner#CustomDomainList', name: 'CustomDomainList')
    CustomerAccountId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.apprunner#CustomerAccountId', name: 'CustomerAccountId', traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "^[0-9]{12}$"})
    DeleteAutoScalingConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apprunner#DeleteAutoScalingConfigurationRequest', name: 'DeleteAutoScalingConfigurationRequest')
    DeleteAutoScalingConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apprunner#DeleteAutoScalingConfigurationResponse', name: 'DeleteAutoScalingConfigurationResponse')
    DeleteConnectionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apprunner#DeleteConnectionRequest', name: 'DeleteConnectionRequest')
    DeleteConnectionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apprunner#DeleteConnectionResponse', name: 'DeleteConnectionResponse')
    DeleteObservabilityConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apprunner#DeleteObservabilityConfigurationRequest', name: 'DeleteObservabilityConfigurationRequest')
    DeleteObservabilityConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apprunner#DeleteObservabilityConfigurationResponse', name: 'DeleteObservabilityConfigurationResponse')
    DeleteServiceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apprunner#DeleteServiceRequest', name: 'DeleteServiceRequest')
    DeleteServiceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apprunner#DeleteServiceResponse', name: 'DeleteServiceResponse')
    DeleteVpcConnectorRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apprunner#DeleteVpcConnectorRequest', name: 'DeleteVpcConnectorRequest')
    DeleteVpcConnectorResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apprunner#DeleteVpcConnectorResponse', name: 'DeleteVpcConnectorResponse')
    DeleteVpcIngressConnectionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apprunner#DeleteVpcIngressConnectionRequest', name: 'DeleteVpcIngressConnectionRequest')
    DeleteVpcIngressConnectionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apprunner#DeleteVpcIngressConnectionResponse', name: 'DeleteVpcIngressConnectionResponse')
    DescribeAutoScalingConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apprunner#DescribeAutoScalingConfigurationRequest', name: 'DescribeAutoScalingConfigurationRequest')
    DescribeAutoScalingConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apprunner#DescribeAutoScalingConfigurationResponse', name: 'DescribeAutoScalingConfigurationResponse')
    DescribeCustomDomainsMaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.apprunner#DescribeCustomDomainsMaxResults', name: 'DescribeCustomDomainsMaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 5}})
    DescribeCustomDomainsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apprunner#DescribeCustomDomainsRequest', name: 'DescribeCustomDomainsRequest')
    DescribeCustomDomainsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apprunner#DescribeCustomDomainsResponse', name: 'DescribeCustomDomainsResponse')
    DescribeObservabilityConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apprunner#DescribeObservabilityConfigurationRequest', name: 'DescribeObservabilityConfigurationRequest')
    DescribeObservabilityConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apprunner#DescribeObservabilityConfigurationResponse', name: 'DescribeObservabilityConfigurationResponse')
    DescribeServiceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apprunner#DescribeServiceRequest', name: 'DescribeServiceRequest')
    DescribeServiceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apprunner#DescribeServiceResponse', name: 'DescribeServiceResponse')
    DescribeVpcConnectorRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apprunner#DescribeVpcConnectorRequest', name: 'DescribeVpcConnectorRequest')
    DescribeVpcConnectorResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apprunner#DescribeVpcConnectorResponse', name: 'DescribeVpcConnectorResponse')
    DescribeVpcIngressConnectionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apprunner#DescribeVpcIngressConnectionRequest', name: 'DescribeVpcIngressConnectionRequest')
    DescribeVpcIngressConnectionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apprunner#DescribeVpcIngressConnectionResponse', name: 'DescribeVpcIngressConnectionResponse')
    DisassociateCustomDomainRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apprunner#DisassociateCustomDomainRequest', name: 'DisassociateCustomDomainRequest')
    DisassociateCustomDomainResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apprunner#DisassociateCustomDomainResponse', name: 'DisassociateCustomDomainResponse')
    DomainName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.apprunner#DomainName', name: 'DomainName', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[A-Za-z0-9*.-]{1,255}$"})
    EgressConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apprunner#EgressConfiguration', name: 'EgressConfiguration')
    EgressType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.apprunner#EgressType', name: 'EgressType')
    EncryptionConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apprunner#EncryptionConfiguration', name: 'EncryptionConfiguration')
    ErrorMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.apprunner#ErrorMessage', name: 'ErrorMessage', traits: {"smithy.api#length" => {"min" => 0, "max" => 600}})
    HasAssociatedService = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.apprunner#HasAssociatedService', name: 'HasAssociatedService')
    HealthCheckConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apprunner#HealthCheckConfiguration', name: 'HealthCheckConfiguration')
    HealthCheckHealthyThreshold = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.apprunner#HealthCheckHealthyThreshold', name: 'HealthCheckHealthyThreshold', traits: {"smithy.api#range" => {"min" => 1, "max" => 20}})
    HealthCheckInterval = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.apprunner#HealthCheckInterval', name: 'HealthCheckInterval', traits: {"smithy.api#range" => {"min" => 1, "max" => 20}})
    HealthCheckPath = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.apprunner#HealthCheckPath', name: 'HealthCheckPath', traits: {"smithy.api#length" => {"min" => 1}})
    HealthCheckProtocol = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.apprunner#HealthCheckProtocol', name: 'HealthCheckProtocol')
    HealthCheckTimeout = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.apprunner#HealthCheckTimeout', name: 'HealthCheckTimeout', traits: {"smithy.api#range" => {"min" => 1, "max" => 20}})
    HealthCheckUnhealthyThreshold = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.apprunner#HealthCheckUnhealthyThreshold', name: 'HealthCheckUnhealthyThreshold', traits: {"smithy.api#range" => {"min" => 1, "max" => 20}})
    ImageConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apprunner#ImageConfiguration', name: 'ImageConfiguration')
    ImageIdentifier = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.apprunner#ImageIdentifier', name: 'ImageIdentifier', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^([0-9]{12}.dkr.ecr.[a-z\\-]+-[0-9]{1}.amazonaws.com\\/((?:[a-z0-9]+(?:[._-][a-z0-9]+)*\\/)*[a-z0-9]+(?:[._-][a-z0-9]+)*)(:([\\w\\d+\\-=._:\\/@])+|@([\\w\\d\\:]+))?)|(^public\\.ecr\\.aws\\/.+\\/((?:[a-z0-9]+(?:[._-][a-z0-9]+)*\\/)*[a-z0-9]+(?:[._-][a-z0-9]+)*)(:([\\w\\d+\\-=._:\\/@])+|@([\\w\\d\\:]+))?)$"})
    ImageRepository = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apprunner#ImageRepository', name: 'ImageRepository')
    ImageRepositoryType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.apprunner#ImageRepositoryType', name: 'ImageRepositoryType')
    IngressConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apprunner#IngressConfiguration', name: 'IngressConfiguration')
    IngressVpcConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apprunner#IngressVpcConfiguration', name: 'IngressVpcConfiguration')
    InstanceConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apprunner#InstanceConfiguration', name: 'InstanceConfiguration')
    Integer = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.apprunner#Integer', name: 'Integer', traits: {"smithy.api#default" => 0})
    InternalServiceErrorException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apprunner#InternalServiceErrorException', name: 'InternalServiceErrorException', traits: {"aws.protocols#awsQueryError" => {"code" => "InternalServiceError", "httpResponseCode" => 500}, "smithy.api#error" => "server", "smithy.api#httpError" => 500})
    InvalidRequestException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apprunner#InvalidRequestException', name: 'InvalidRequestException', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidRequest", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidStateException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apprunner#InvalidStateException', name: 'InvalidStateException', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidState", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    IpAddressType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.apprunner#IpAddressType', name: 'IpAddressType')
    IsDefault = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.apprunner#IsDefault', name: 'IsDefault')
    KmsKeyArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.apprunner#KmsKeyArn', name: 'KmsKeyArn', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^arn:aws(-[\\w]+)*:kms:[a-z\\-]+-[0-9]{1}:[0-9]{12}:key\\/[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$"})
    Latest = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.apprunner#Latest', name: 'Latest')
    ListAutoScalingConfigurationsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apprunner#ListAutoScalingConfigurationsRequest', name: 'ListAutoScalingConfigurationsRequest')
    ListAutoScalingConfigurationsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apprunner#ListAutoScalingConfigurationsResponse', name: 'ListAutoScalingConfigurationsResponse')
    ListConnectionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apprunner#ListConnectionsRequest', name: 'ListConnectionsRequest')
    ListConnectionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apprunner#ListConnectionsResponse', name: 'ListConnectionsResponse')
    ListObservabilityConfigurationsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apprunner#ListObservabilityConfigurationsRequest', name: 'ListObservabilityConfigurationsRequest')
    ListObservabilityConfigurationsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apprunner#ListObservabilityConfigurationsResponse', name: 'ListObservabilityConfigurationsResponse')
    ListOperationsMaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.apprunner#ListOperationsMaxResults', name: 'ListOperationsMaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 20}})
    ListOperationsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apprunner#ListOperationsRequest', name: 'ListOperationsRequest')
    ListOperationsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apprunner#ListOperationsResponse', name: 'ListOperationsResponse')
    ListServicesForAutoScalingConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apprunner#ListServicesForAutoScalingConfigurationRequest', name: 'ListServicesForAutoScalingConfigurationRequest')
    ListServicesForAutoScalingConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apprunner#ListServicesForAutoScalingConfigurationResponse', name: 'ListServicesForAutoScalingConfigurationResponse')
    ListServicesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apprunner#ListServicesRequest', name: 'ListServicesRequest')
    ListServicesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apprunner#ListServicesResponse', name: 'ListServicesResponse')
    ListTagsForResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apprunner#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apprunner#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    ListVpcConnectorsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apprunner#ListVpcConnectorsRequest', name: 'ListVpcConnectorsRequest')
    ListVpcConnectorsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apprunner#ListVpcConnectorsResponse', name: 'ListVpcConnectorsResponse')
    ListVpcIngressConnectionsFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apprunner#ListVpcIngressConnectionsFilter', name: 'ListVpcIngressConnectionsFilter')
    ListVpcIngressConnectionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apprunner#ListVpcIngressConnectionsRequest', name: 'ListVpcIngressConnectionsRequest')
    ListVpcIngressConnectionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apprunner#ListVpcIngressConnectionsResponse', name: 'ListVpcIngressConnectionsResponse')
    MaxConcurrency = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.apprunner#MaxConcurrency', name: 'MaxConcurrency')
    MaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.apprunner#MaxResults', name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MaxSize = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.apprunner#MaxSize', name: 'MaxSize')
    Memory = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.apprunner#Memory', name: 'Memory', traits: {"smithy.api#length" => {"min" => 3, "max" => 6}, "smithy.api#pattern" => "^512|1024|2048|3072|4096|6144|8192|10240|12288|(0.5|1|2|3|4|6|8|10|12) GB$"})
    MinSize = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.apprunner#MinSize', name: 'MinSize')
    NetworkConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apprunner#NetworkConfiguration', name: 'NetworkConfiguration')
    NextToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.apprunner#NextToken', name: 'NextToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => ".*"})
    NullableBoolean = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.apprunner#NullableBoolean', name: 'NullableBoolean')
    ObservabilityConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apprunner#ObservabilityConfiguration', name: 'ObservabilityConfiguration')
    ObservabilityConfigurationName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.apprunner#ObservabilityConfigurationName', name: 'ObservabilityConfigurationName', traits: {"smithy.api#length" => {"min" => 4, "max" => 32}, "smithy.api#pattern" => "^[A-Za-z0-9][A-Za-z0-9\\-_]{3,31}$"})
    ObservabilityConfigurationStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.apprunner#ObservabilityConfigurationStatus', name: 'ObservabilityConfigurationStatus')
    ObservabilityConfigurationSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apprunner#ObservabilityConfigurationSummary', name: 'ObservabilityConfigurationSummary')
    ObservabilityConfigurationSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.apprunner#ObservabilityConfigurationSummaryList', name: 'ObservabilityConfigurationSummaryList')
    OperationStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.apprunner#OperationStatus', name: 'OperationStatus')
    OperationSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apprunner#OperationSummary', name: 'OperationSummary')
    OperationSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.apprunner#OperationSummaryList', name: 'OperationSummaryList')
    OperationType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.apprunner#OperationType', name: 'OperationType')
    PauseServiceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apprunner#PauseServiceRequest', name: 'PauseServiceRequest')
    PauseServiceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apprunner#PauseServiceResponse', name: 'PauseServiceResponse')
    ProviderType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.apprunner#ProviderType', name: 'ProviderType')
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apprunner#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"aws.protocols#awsQueryError" => {"code" => "ResourceNotfound", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ResumeServiceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apprunner#ResumeServiceRequest', name: 'ResumeServiceRequest')
    ResumeServiceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apprunner#ResumeServiceResponse', name: 'ResumeServiceResponse')
    RoleArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.apprunner#RoleArn', name: 'RoleArn', traits: {"smithy.api#length" => {"min" => 29, "max" => 1024}, "smithy.api#pattern" => "^arn:(aws|aws-us-gov|aws-cn|aws-iso|aws-iso-b):iam::[0-9]{12}:(role|role\\/service-role)\\/[\\w+=,.@\\-/]{1,1000}$"})
    Runtime = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.apprunner#Runtime', name: 'Runtime')
    RuntimeEnvironmentSecrets = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.apprunner#RuntimeEnvironmentSecrets', name: 'RuntimeEnvironmentSecrets')
    RuntimeEnvironmentSecretsName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.apprunner#RuntimeEnvironmentSecretsName', name: 'RuntimeEnvironmentSecretsName', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#sensitive" => {}})
    RuntimeEnvironmentSecretsValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.apprunner#RuntimeEnvironmentSecretsValue', name: 'RuntimeEnvironmentSecretsValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#sensitive" => {}})
    RuntimeEnvironmentVariables = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.apprunner#RuntimeEnvironmentVariables', name: 'RuntimeEnvironmentVariables')
    RuntimeEnvironmentVariablesKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.apprunner#RuntimeEnvironmentVariablesKey', name: 'RuntimeEnvironmentVariablesKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 51200}, "smithy.api#pattern" => ".*", "smithy.api#sensitive" => {}})
    RuntimeEnvironmentVariablesValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.apprunner#RuntimeEnvironmentVariablesValue', name: 'RuntimeEnvironmentVariablesValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 51200}, "smithy.api#pattern" => ".*", "smithy.api#sensitive" => {}})
    Service = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apprunner#Service', name: 'Service')
    ServiceArnList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.apprunner#ServiceArnList', name: 'ServiceArnList')
    ServiceId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.apprunner#ServiceId', name: 'ServiceId', traits: {"smithy.api#length" => {"min" => 32, "max" => 32}, "smithy.api#pattern" => "^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[1-5][0-9a-fA-F]{3}-[89abAB][0-9a-fA-F]{3}-[0-9a-fA-F]{12}$"})
    ServiceMaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.apprunner#ServiceMaxResults', name: 'ServiceMaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 20}})
    ServiceName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.apprunner#ServiceName', name: 'ServiceName', traits: {"smithy.api#length" => {"min" => 4, "max" => 40}, "smithy.api#pattern" => "^[A-Za-z0-9][A-Za-z0-9-_]{3,39}$"})
    ServiceObservabilityConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apprunner#ServiceObservabilityConfiguration', name: 'ServiceObservabilityConfiguration')
    ServiceQuotaExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apprunner#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"aws.protocols#awsQueryError" => {"code" => "ServiceQuotaExceeded", "httpResponseCode" => 402}, "smithy.api#error" => "client", "smithy.api#httpError" => 402})
    ServiceStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.apprunner#ServiceStatus', name: 'ServiceStatus')
    ServiceSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apprunner#ServiceSummary', name: 'ServiceSummary')
    ServiceSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.apprunner#ServiceSummaryList', name: 'ServiceSummaryList')
    SourceCodeVersion = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apprunner#SourceCodeVersion', name: 'SourceCodeVersion')
    SourceCodeVersionType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.apprunner#SourceCodeVersionType', name: 'SourceCodeVersionType')
    SourceConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apprunner#SourceConfiguration', name: 'SourceConfiguration')
    SourceDirectory = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.apprunner#SourceDirectory', name: 'SourceDirectory', traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}, "smithy.api#pattern" => "^[^\\x00]+$"})
    StartCommand = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.apprunner#StartCommand', name: 'StartCommand', traits: {"smithy.api#pattern" => "^[^\\x0a\\x0d]+$", "smithy.api#sensitive" => {}})
    StartDeploymentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apprunner#StartDeploymentRequest', name: 'StartDeploymentRequest')
    StartDeploymentResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apprunner#StartDeploymentResponse', name: 'StartDeploymentResponse')
    String = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.apprunner#String', name: 'String', traits: {"smithy.api#length" => {"min" => 0, "max" => 51200}, "smithy.api#pattern" => ".*"})
    StringList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.apprunner#StringList', name: 'StringList')
    Tag = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apprunner#Tag', name: 'Tag')
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.apprunner#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^(?!aws:).+$"})
    TagKeyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.apprunner#TagKeyList', name: 'TagKeyList')
    TagList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.apprunner#TagList', name: 'TagList')
    TagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apprunner#TagResourceRequest', name: 'TagResourceRequest')
    TagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apprunner#TagResourceResponse', name: 'TagResourceResponse')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.apprunner#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => ".*"})
    Timestamp = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.apprunner#Timestamp', name: 'Timestamp')
    TraceConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apprunner#TraceConfiguration', name: 'TraceConfiguration')
    TracingVendor = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.apprunner#TracingVendor', name: 'TracingVendor')
    UUID = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.apprunner#UUID', name: 'UUID', traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[1-5][0-9a-fA-F]{3}-[89abAB][0-9a-fA-F]{3}-[0-9a-fA-F]{12}$"})
    UntagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apprunner#UntagResourceRequest', name: 'UntagResourceRequest')
    UntagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apprunner#UntagResourceResponse', name: 'UntagResourceResponse')
    UpdateDefaultAutoScalingConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apprunner#UpdateDefaultAutoScalingConfigurationRequest', name: 'UpdateDefaultAutoScalingConfigurationRequest')
    UpdateDefaultAutoScalingConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apprunner#UpdateDefaultAutoScalingConfigurationResponse', name: 'UpdateDefaultAutoScalingConfigurationResponse')
    UpdateServiceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apprunner#UpdateServiceRequest', name: 'UpdateServiceRequest')
    UpdateServiceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apprunner#UpdateServiceResponse', name: 'UpdateServiceResponse')
    UpdateVpcIngressConnectionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apprunner#UpdateVpcIngressConnectionRequest', name: 'UpdateVpcIngressConnectionRequest')
    UpdateVpcIngressConnectionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apprunner#UpdateVpcIngressConnectionResponse', name: 'UpdateVpcIngressConnectionResponse')
    VpcConnector = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apprunner#VpcConnector', name: 'VpcConnector')
    VpcConnectorName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.apprunner#VpcConnectorName', name: 'VpcConnectorName', traits: {"smithy.api#length" => {"min" => 4, "max" => 40}, "smithy.api#pattern" => "^[A-Za-z0-9][A-Za-z0-9\\-_]{3,39}$"})
    VpcConnectorStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.apprunner#VpcConnectorStatus', name: 'VpcConnectorStatus')
    VpcConnectors = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.apprunner#VpcConnectors', name: 'VpcConnectors')
    VpcDNSTarget = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apprunner#VpcDNSTarget', name: 'VpcDNSTarget')
    VpcDNSTargetList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.apprunner#VpcDNSTargetList', name: 'VpcDNSTargetList')
    VpcIngressConnection = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apprunner#VpcIngressConnection', name: 'VpcIngressConnection')
    VpcIngressConnectionName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.apprunner#VpcIngressConnectionName', name: 'VpcIngressConnectionName', traits: {"smithy.api#length" => {"min" => 4, "max" => 40}, "smithy.api#pattern" => "^[A-Za-z0-9][A-Za-z0-9\\-_]{3,39}$"})
    VpcIngressConnectionStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.apprunner#VpcIngressConnectionStatus', name: 'VpcIngressConnectionStatus')
    VpcIngressConnectionSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apprunner#VpcIngressConnectionSummary', name: 'VpcIngressConnectionSummary')
    VpcIngressConnectionSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.apprunner#VpcIngressConnectionSummaryList', name: 'VpcIngressConnectionSummaryList')

    AssociateCustomDomainRequest.add_member(:service_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AppRunnerResourceArn, location_name: 'ServiceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the App Runner service that you want to associate a custom domain name with.</p>", "smithy.api#required" => {}}))
    AssociateCustomDomainRequest.add_member(:domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName', traits: {"smithy.api#documentation" => "<p>A custom domain endpoint to associate. Specify a root domain (for example, <code>example.com</code>), a subdomain (for example,\n        <code>login.example.com</code> or <code>admin.login.example.com</code>), or a wildcard (for example, <code>*.example.com</code>).</p>", "smithy.api#required" => {}}))
    AssociateCustomDomainRequest.add_member(:enable_www_subdomain, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBoolean, location_name: 'EnableWWWSubdomain', traits: {"smithy.api#documentation" => "<p>Set to <code>true</code> to associate the subdomain <code>www.<i>DomainName</i>\n            </code> with the App Runner service in addition to the base\n      domain.</p>\n         <p>Default: <code>true</code>\n         </p>"}))
    AssociateCustomDomainRequest.type = Types::AssociateCustomDomainRequest
    AssociateCustomDomainResponse.add_member(:dns_target, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DNSTarget', traits: {"smithy.api#documentation" => "<p>The App Runner subdomain of the App Runner service. The custom domain name is mapped to this target name.</p>", "smithy.api#required" => {}}))
    AssociateCustomDomainResponse.add_member(:service_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AppRunnerResourceArn, location_name: 'ServiceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the App Runner service with which a custom domain name is associated.</p>", "smithy.api#required" => {}}))
    AssociateCustomDomainResponse.add_member(:custom_domain, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomDomain, location_name: 'CustomDomain', traits: {"smithy.api#documentation" => "<p>A description of the domain name that's being associated.</p>", "smithy.api#required" => {}}))
    AssociateCustomDomainResponse.add_member(:vpc_dns_targets, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcDNSTargetList, location_name: 'VpcDNSTargets', traits: {"smithy.api#documentation" => "<p>DNS Target records for the custom domains of this Amazon VPC.\n    </p>", "smithy.api#required" => {}}))
    AssociateCustomDomainResponse.type = Types::AssociateCustomDomainResponse
    AuthenticationConfiguration.add_member(:connection_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AppRunnerResourceArn, location_name: 'ConnectionArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the App Runner connection that enables the App Runner service to connect to a source repository. It's required for GitHub code\n      repositories.</p>"}))
    AuthenticationConfiguration.add_member(:access_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'AccessRoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM role that grants the App Runner service access to a source repository. It's required for ECR image repositories\n      (but not for ECR Public repositories).</p>"}))
    AuthenticationConfiguration.type = Types::AuthenticationConfiguration
    AutoScalingConfiguration.add_member(:auto_scaling_configuration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AppRunnerResourceArn, location_name: 'AutoScalingConfigurationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of this auto scaling configuration.</p>"}))
    AutoScalingConfiguration.add_member(:auto_scaling_configuration_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoScalingConfigurationName, location_name: 'AutoScalingConfigurationName', traits: {"smithy.api#documentation" => "<p>The customer-provided auto scaling configuration name. It can be used in multiple revisions of a configuration.</p>"}))
    AutoScalingConfiguration.add_member(:auto_scaling_configuration_revision, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoScalingConfigurationRevision, location_name: 'AutoScalingConfigurationRevision', traits: {"smithy.api#documentation" => "<p>The revision of this auto scaling configuration. It's unique among all the active configurations (<code>\"Status\": \"ACTIVE\"</code>) that share the same\n        <code>AutoScalingConfigurationName</code>.</p>"}))
    AutoScalingConfiguration.add_member(:latest, Smithy::Schema::Shapes::ShapeRef.new(shape: Latest, location_name: 'Latest', traits: {"smithy.api#documentation" => "<p>It's set to <code>true</code> for the configuration with the highest <code>Revision</code> among all configurations that share the same\n        <code>AutoScalingConfigurationName</code>. It's set to <code>false</code> otherwise.</p>"}))
    AutoScalingConfiguration.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoScalingConfigurationStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The current state of the auto scaling configuration. If the status of a configuration revision is <code>INACTIVE</code>, it was deleted and can't be\n      used. Inactive configuration revisions are permanently removed some time after they are deleted.</p>"}))
    AutoScalingConfiguration.add_member(:max_concurrency, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxConcurrency, location_name: 'MaxConcurrency', traits: {"smithy.api#documentation" => "<p>The maximum number of concurrent requests that an instance processes. If the number of concurrent requests exceeds this limit, App Runner scales the service\n      up.</p>"}))
    AutoScalingConfiguration.add_member(:min_size, Smithy::Schema::Shapes::ShapeRef.new(shape: MinSize, location_name: 'MinSize', traits: {"smithy.api#documentation" => "<p>The minimum number of instances that App Runner provisions for a service. The service always has at least <code>MinSize</code> provisioned instances. Some\n      of them actively serve traffic. The rest of them (provisioned and inactive instances) are a cost-effective compute capacity reserve and are ready to be\n      quickly activated. You pay for memory usage of all the provisioned instances. You pay for CPU usage of only the active subset.</p>\n         <p>App Runner temporarily doubles the number of provisioned instances during deployments, to maintain the same capacity for both old and new code.</p>"}))
    AutoScalingConfiguration.add_member(:max_size, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxSize, location_name: 'MaxSize', traits: {"smithy.api#documentation" => "<p>The maximum number of instances that a service scales up to. At most <code>MaxSize</code> instances actively serve traffic for your service.</p>"}))
    AutoScalingConfiguration.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p>The time when the auto scaling configuration was created. It's in Unix time stamp format.</p>"}))
    AutoScalingConfiguration.add_member(:deleted_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'DeletedAt', traits: {"smithy.api#documentation" => "<p>The time when the auto scaling configuration was deleted. It's in Unix time stamp format.</p>"}))
    AutoScalingConfiguration.add_member(:has_associated_service, Smithy::Schema::Shapes::ShapeRef.new(shape: HasAssociatedService, location_name: 'HasAssociatedService', traits: {"smithy.api#documentation" => "<p>Indicates if this auto scaling configuration has an App Runner service associated with it. A value of <code>true</code> indicates one or more services are\n      associated. A value of <code>false</code> indicates no services are associated.</p>"}))
    AutoScalingConfiguration.add_member(:is_default, Smithy::Schema::Shapes::ShapeRef.new(shape: IsDefault, location_name: 'IsDefault', traits: {"smithy.api#documentation" => "<p>Indicates if this auto scaling configuration should be used as the default for a new App Runner service that does not have an\n      auto scaling configuration ARN specified during creation. Each account can have only one\n      default <code>AutoScalingConfiguration</code> per region. The default <code>AutoScalingConfiguration</code> can be any revision under \n      the same <code>AutoScalingConfigurationName</code>.</p>"}))
    AutoScalingConfiguration.type = Types::AutoScalingConfiguration
    AutoScalingConfigurationStatus.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    AutoScalingConfigurationStatus.add_member(:inactive, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INACTIVE', traits: {"smithy.api#enumValue" => "INACTIVE"}))
    AutoScalingConfigurationSummary.add_member(:auto_scaling_configuration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AppRunnerResourceArn, location_name: 'AutoScalingConfigurationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of this auto scaling configuration.</p>"}))
    AutoScalingConfigurationSummary.add_member(:auto_scaling_configuration_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoScalingConfigurationName, location_name: 'AutoScalingConfigurationName', traits: {"smithy.api#documentation" => "<p>The customer-provided auto scaling configuration name. It can be used in multiple revisions of a configuration.</p>"}))
    AutoScalingConfigurationSummary.add_member(:auto_scaling_configuration_revision, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'AutoScalingConfigurationRevision', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The revision of this auto scaling configuration. It's unique among all the active configurations (<code>\"Status\": \"ACTIVE\"</code>) with the same\n        <code>AutoScalingConfigurationName</code>.</p>"}))
    AutoScalingConfigurationSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoScalingConfigurationStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The current state of the auto scaling configuration. If the status of a configuration revision is <code>INACTIVE</code>, it was deleted and can't be\n      used. Inactive configuration revisions are permanently removed some time after they are deleted.</p>"}))
    AutoScalingConfigurationSummary.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p>The time when the auto scaling configuration was created. It's in Unix time stamp format.</p>"}))
    AutoScalingConfigurationSummary.add_member(:has_associated_service, Smithy::Schema::Shapes::ShapeRef.new(shape: HasAssociatedService, location_name: 'HasAssociatedService', traits: {"smithy.api#documentation" => "<p>Indicates if this auto scaling configuration has an App Runner service associated with it. A value of <code>true</code> indicates one or more services are\n      associated. A value of <code>false</code> indicates no services are associated.</p>"}))
    AutoScalingConfigurationSummary.add_member(:is_default, Smithy::Schema::Shapes::ShapeRef.new(shape: IsDefault, location_name: 'IsDefault', traits: {"smithy.api#documentation" => "<p>Indicates if this auto scaling configuration should be used as the default for a new App Runner service that does not have an\n      auto scaling configuration ARN specified during creation. Each account can have only one\n      default <code>AutoScalingConfiguration</code> per region. The default <code>AutoScalingConfiguration</code> can be any revision under \n      the same <code>AutoScalingConfigurationName</code>.</p>"}))
    AutoScalingConfigurationSummary.type = Types::AutoScalingConfigurationSummary
    AutoScalingConfigurationSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AutoScalingConfigurationSummary)
    CertificateValidationRecord.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The certificate CNAME record name.</p>"}))
    CertificateValidationRecord.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The record type, always <code>CNAME</code>.</p>"}))
    CertificateValidationRecord.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>The certificate CNAME record value.</p>"}))
    CertificateValidationRecord.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateValidationRecordStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The current state of the certificate CNAME record validation. It should change to <code>SUCCESS</code> after App Runner completes validation with your\n      DNS.</p>"}))
    CertificateValidationRecord.type = Types::CertificateValidationRecord
    CertificateValidationRecordList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateValidationRecord)
    CertificateValidationRecordStatus.add_member(:pending_validation, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING_VALIDATION', traits: {"smithy.api#enumValue" => "PENDING_VALIDATION"}))
    CertificateValidationRecordStatus.add_member(:success, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCESS', traits: {"smithy.api#enumValue" => "SUCCESS"}))
    CertificateValidationRecordStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    CodeConfiguration.add_member(:configuration_source, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSource, location_name: 'ConfigurationSource', traits: {"smithy.api#documentation" => "<p>The source of the App Runner configuration. Values are interpreted as follows:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>REPOSITORY</code> – App Runner reads configuration values from the <code>apprunner.yaml</code> file in the source code repository and\n          ignores <code>CodeConfigurationValues</code>.</p>\n            </li>\n            <li>\n               <p>\n                  <code>API</code> – App Runner uses configuration values provided in <code>CodeConfigurationValues</code> and ignores the\n            <code>apprunner.yaml</code> file in the source code repository.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    CodeConfiguration.add_member(:code_configuration_values, Smithy::Schema::Shapes::ShapeRef.new(shape: CodeConfigurationValues, location_name: 'CodeConfigurationValues', traits: {"smithy.api#documentation" => "<p>The basic configuration for building and running the App Runner service. Use it to quickly launch an App Runner service without providing a\n        <code>apprunner.yaml</code> file in the source code repository (or ignoring the file if it exists).</p>"}))
    CodeConfiguration.type = Types::CodeConfiguration
    CodeConfigurationValues.add_member(:runtime, Smithy::Schema::Shapes::ShapeRef.new(shape: Runtime, location_name: 'Runtime', traits: {"smithy.api#documentation" => "<p>A runtime environment type for building and running an App Runner service.\n       It represents a\n      programming language runtime.</p>", "smithy.api#required" => {}}))
    CodeConfigurationValues.add_member(:build_command, Smithy::Schema::Shapes::ShapeRef.new(shape: BuildCommand, location_name: 'BuildCommand', traits: {"smithy.api#documentation" => "<p>The command App Runner runs to build your\n      application.</p>"}))
    CodeConfigurationValues.add_member(:start_command, Smithy::Schema::Shapes::ShapeRef.new(shape: StartCommand, location_name: 'StartCommand', traits: {"smithy.api#documentation" => "<p>The command App Runner runs to start your\n      application.</p>"}))
    CodeConfigurationValues.add_member(:port, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Port', traits: {"smithy.api#documentation" => "<p>The port that your application listens to in the container.</p>\n         <p>Default: <code>8080</code>\n         </p>"}))
    CodeConfigurationValues.add_member(:runtime_environment_variables, Smithy::Schema::Shapes::ShapeRef.new(shape: RuntimeEnvironmentVariables, location_name: 'RuntimeEnvironmentVariables', traits: {"smithy.api#documentation" => "<p>The environment variables that are available to your running App Runner service. An array of key-value pairs.</p>"}))
    CodeConfigurationValues.add_member(:runtime_environment_secrets, Smithy::Schema::Shapes::ShapeRef.new(shape: RuntimeEnvironmentSecrets, location_name: 'RuntimeEnvironmentSecrets', traits: {"smithy.api#documentation" => "<p>An array of key-value pairs representing the secrets and parameters that get referenced to your service as an environment variable. The supported\n      values are either the full Amazon Resource Name (ARN) of the Secrets Manager secret or the full ARN of the parameter in the Amazon Web Services Systems Manager\n      Parameter Store.</p>\n         <note>\n            <ul>\n               <li>\n                  <p> If the Amazon Web Services Systems Manager Parameter Store parameter exists in the same Amazon Web Services Region as the service that you're launching, you can use\n            either the full ARN or name of the secret. If the parameter exists in a different Region, then the full ARN must be specified. </p>\n               </li>\n               <li>\n                  <p> Currently, cross account referencing of Amazon Web Services Systems Manager Parameter Store parameter is not supported. </p>\n               </li>\n            </ul>\n         </note>"}))
    CodeConfigurationValues.type = Types::CodeConfigurationValues
    CodeRepository.add_member(:repository_url, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RepositoryUrl', traits: {"smithy.api#documentation" => "<p>The location of the repository that contains the source code.</p>", "smithy.api#required" => {}}))
    CodeRepository.add_member(:source_code_version, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceCodeVersion, location_name: 'SourceCodeVersion', traits: {"smithy.api#documentation" => "<p>The version that should be used within the source code repository.</p>", "smithy.api#required" => {}}))
    CodeRepository.add_member(:code_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: CodeConfiguration, location_name: 'CodeConfiguration', traits: {"smithy.api#documentation" => "<p>Configuration for building and running the service from a source code repository.</p>\n         <note>\n            <p>\n               <code>CodeConfiguration</code> is required only for <code>CreateService</code> request.</p>\n         </note>"}))
    CodeRepository.add_member(:source_directory, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceDirectory, location_name: 'SourceDirectory', traits: {"smithy.api#documentation" => "<p>The path of the directory that stores source code and configuration files. The build and start commands also execute from here. The path is absolute\n      from root and, if not specified, defaults to the repository root.</p>"}))
    CodeRepository.type = Types::CodeRepository
    ConfigurationSource.add_member(:repository, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REPOSITORY', traits: {"smithy.api#enumValue" => "REPOSITORY"}))
    ConfigurationSource.add_member(:api, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'API', traits: {"smithy.api#enumValue" => "API"}))
    Connection.add_member(:connection_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionName, location_name: 'ConnectionName', traits: {"smithy.api#documentation" => "<p>The customer-provided connection name.</p>"}))
    Connection.add_member(:connection_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AppRunnerResourceArn, location_name: 'ConnectionArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of this connection.</p>"}))
    Connection.add_member(:provider_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ProviderType, location_name: 'ProviderType', traits: {"smithy.api#documentation" => "<p>The source repository provider.</p>"}))
    Connection.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The current state of the App Runner connection. When the state is <code>AVAILABLE</code>, you can use the connection to create an App Runner service.</p>"}))
    Connection.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p>The App Runner connection creation time, expressed as a Unix time stamp.</p>"}))
    Connection.type = Types::Connection
    ConnectionStatus.add_member(:pending_handshake, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING_HANDSHAKE', traits: {"smithy.api#enumValue" => "PENDING_HANDSHAKE"}))
    ConnectionStatus.add_member(:available, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AVAILABLE', traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    ConnectionStatus.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ERROR', traits: {"smithy.api#enumValue" => "ERROR"}))
    ConnectionStatus.add_member(:deleted, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETED', traits: {"smithy.api#enumValue" => "DELETED"}))
    ConnectionSummary.add_member(:connection_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionName, location_name: 'ConnectionName', traits: {"smithy.api#documentation" => "<p>The customer-provided connection name.</p>"}))
    ConnectionSummary.add_member(:connection_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AppRunnerResourceArn, location_name: 'ConnectionArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of this connection.</p>"}))
    ConnectionSummary.add_member(:provider_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ProviderType, location_name: 'ProviderType', traits: {"smithy.api#documentation" => "<p>The source repository provider.</p>"}))
    ConnectionSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The current state of the App Runner connection. When the state is <code>AVAILABLE</code>, you can use the connection to create an App Runner service.</p>"}))
    ConnectionSummary.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p>The App Runner connection creation time, expressed as a Unix time stamp.</p>"}))
    ConnectionSummary.type = Types::ConnectionSummary
    ConnectionSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionSummary)
    CreateAutoScalingConfigurationRequest.add_member(:auto_scaling_configuration_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoScalingConfigurationName, location_name: 'AutoScalingConfigurationName', traits: {"smithy.api#documentation" => "<p>A name for the auto scaling configuration. When you use it for the first time in an Amazon Web Services Region, App Runner creates revision number\n        <code>1</code> of this name. When you use the same name in subsequent calls, App Runner creates incremental revisions of the configuration.</p>\n         <note>\n            <p>Prior to the release of <a href=\"https://docs.aws.amazon.com/apprunner/latest/relnotes/release-2023-09-22-auto-scale-config.html\">Auto scale\n        configuration enhancements</a>, the name <code>DefaultConfiguration</code> was reserved. </p>\n            <p>This restriction is no longer in place. You can now manage <code>DefaultConfiguration</code> the same way you manage your custom auto scaling\n        configurations. This means you can do the following with the <code>DefaultConfiguration</code> that App Runner provides:</p>\n            <ul>\n               <li>\n                  <p>Create new revisions of the <code>DefaultConfiguration</code>.</p>\n               </li>\n               <li>\n                  <p>Delete the revisions of the <code>DefaultConfiguration</code>.</p>\n               </li>\n               <li>\n                  <p>Delete the auto scaling configuration for which the App Runner <code>DefaultConfiguration</code> was created.</p>\n               </li>\n               <li>\n                  <p>If you delete the auto scaling configuration you can create another custom auto scaling configuration with the same\n              <code>DefaultConfiguration</code> name. The original <code>DefaultConfiguration</code> resource provided by App Runner remains in your account unless\n            you make changes to it.</p>\n               </li>\n            </ul>\n         </note>", "smithy.api#required" => {}}))
    CreateAutoScalingConfigurationRequest.add_member(:max_concurrency, Smithy::Schema::Shapes::ShapeRef.new(shape: ASConfigMaxConcurrency, location_name: 'MaxConcurrency', traits: {"smithy.api#documentation" => "<p>The maximum number of concurrent requests that you want an instance to process. If the number of concurrent requests exceeds this limit, App Runner scales\n      up your service.</p>\n         <p>Default: <code>100</code>\n         </p>"}))
    CreateAutoScalingConfigurationRequest.add_member(:min_size, Smithy::Schema::Shapes::ShapeRef.new(shape: ASConfigMinSize, location_name: 'MinSize', traits: {"smithy.api#documentation" => "<p>The minimum number of instances that App Runner provisions for your service. The service always has at least <code>MinSize</code> provisioned instances.\n      Some of them actively serve traffic. The rest of them (provisioned and inactive instances) are a cost-effective compute capacity reserve and are ready to\n      be quickly activated. You pay for memory usage of all the provisioned instances. You pay for CPU usage of only the active subset.</p>\n         <p>App Runner temporarily doubles the number of provisioned instances during deployments, to maintain the same capacity for both old and new code.</p>\n         <p>Default: <code>1</code>\n         </p>"}))
    CreateAutoScalingConfigurationRequest.add_member(:max_size, Smithy::Schema::Shapes::ShapeRef.new(shape: ASConfigMaxSize, location_name: 'MaxSize', traits: {"smithy.api#documentation" => "<p>The maximum number of instances that your service scales up to. At most <code>MaxSize</code> instances actively serve traffic for your service.</p>\n         <p>Default: <code>25</code>\n         </p>"}))
    CreateAutoScalingConfigurationRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A list of metadata items that you can associate with your auto scaling configuration resource. A tag is a key-value pair.</p>"}))
    CreateAutoScalingConfigurationRequest.type = Types::CreateAutoScalingConfigurationRequest
    CreateAutoScalingConfigurationResponse.add_member(:auto_scaling_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoScalingConfiguration, location_name: 'AutoScalingConfiguration', traits: {"smithy.api#documentation" => "<p>A description of the App Runner auto scaling configuration that's created by this request.</p>", "smithy.api#required" => {}}))
    CreateAutoScalingConfigurationResponse.type = Types::CreateAutoScalingConfigurationResponse
    CreateConnectionRequest.add_member(:connection_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionName, location_name: 'ConnectionName', traits: {"smithy.api#documentation" => "<p>A name for the new connection. It must be unique across all App Runner connections for the Amazon Web Services account in the Amazon Web Services Region.</p>", "smithy.api#required" => {}}))
    CreateConnectionRequest.add_member(:provider_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ProviderType, location_name: 'ProviderType', traits: {"smithy.api#documentation" => "<p>The source repository provider.</p>", "smithy.api#required" => {}}))
    CreateConnectionRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A list of metadata items that you can associate with your connection resource. A tag is a key-value pair.</p>"}))
    CreateConnectionRequest.type = Types::CreateConnectionRequest
    CreateConnectionResponse.add_member(:connection, Smithy::Schema::Shapes::ShapeRef.new(shape: Connection, location_name: 'Connection', traits: {"smithy.api#documentation" => "<p>A description of the App Runner connection that's created by this request.</p>", "smithy.api#required" => {}}))
    CreateConnectionResponse.type = Types::CreateConnectionResponse
    CreateObservabilityConfigurationRequest.add_member(:observability_configuration_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ObservabilityConfigurationName, location_name: 'ObservabilityConfigurationName', traits: {"smithy.api#documentation" => "<p>A name for the observability configuration. When you use it for the first time in an Amazon Web Services Region, App Runner creates revision number\n        <code>1</code> of this name. When you use the same name in subsequent calls, App Runner creates incremental revisions of the configuration.</p>\n         <note>\n            <p>The name <code>DefaultConfiguration</code> is reserved. You can't use it to create a new observability configuration, and you can't create a\n        revision of it.</p>\n            <p>When you want to use your own observability configuration for your App Runner service, <i>create a configuration with a different name</i>,\n        and then provide it when you create or update your service.</p>\n         </note>", "smithy.api#required" => {}}))
    CreateObservabilityConfigurationRequest.add_member(:trace_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: TraceConfiguration, location_name: 'TraceConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration of the tracing feature within this observability configuration. If you don't specify it, App Runner doesn't enable tracing.</p>"}))
    CreateObservabilityConfigurationRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A list of metadata items that you can associate with your observability configuration resource. A tag is a key-value pair.</p>"}))
    CreateObservabilityConfigurationRequest.type = Types::CreateObservabilityConfigurationRequest
    CreateObservabilityConfigurationResponse.add_member(:observability_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ObservabilityConfiguration, location_name: 'ObservabilityConfiguration', traits: {"smithy.api#documentation" => "<p>A description of the App Runner observability configuration that's created by this request.</p>", "smithy.api#required" => {}}))
    CreateObservabilityConfigurationResponse.type = Types::CreateObservabilityConfigurationResponse
    CreateServiceRequest.add_member(:service_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceName, location_name: 'ServiceName', traits: {"smithy.api#documentation" => "<p>A name for the App Runner service. It must be unique across all the running App Runner services in your Amazon Web Services account in the Amazon Web Services Region.</p>", "smithy.api#required" => {}}))
    CreateServiceRequest.add_member(:source_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceConfiguration, location_name: 'SourceConfiguration', traits: {"smithy.api#documentation" => "<p>The source to deploy to the App Runner service. It can be a code or an image repository.</p>", "smithy.api#required" => {}}))
    CreateServiceRequest.add_member(:instance_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceConfiguration, location_name: 'InstanceConfiguration', traits: {"smithy.api#documentation" => "<p>The runtime configuration of instances (scaling units) of your service.</p>"}))
    CreateServiceRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>An optional list of metadata items that you can associate with the App Runner service resource. A tag is a key-value pair.</p>"}))
    CreateServiceRequest.add_member(:encryption_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionConfiguration, location_name: 'EncryptionConfiguration', traits: {"smithy.api#documentation" => "<p>An optional custom encryption key that App Runner uses to encrypt the copy of your source repository that it maintains and your service logs. By default,\n      App Runner uses an Amazon Web Services managed key.</p>"}))
    CreateServiceRequest.add_member(:health_check_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: HealthCheckConfiguration, location_name: 'HealthCheckConfiguration', traits: {"smithy.api#documentation" => "<p>The settings for the health check that App Runner performs to monitor the health of the App Runner service.</p>"}))
    CreateServiceRequest.add_member(:auto_scaling_configuration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AppRunnerResourceArn, location_name: 'AutoScalingConfigurationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of an App Runner automatic scaling configuration resource that you want to associate with your service. If not provided, App Runner\n      associates the latest revision of a default auto scaling configuration.</p>\n         <p>Specify an ARN with a name and a revision number to associate that revision. For example:\n          <code>arn:aws:apprunner:us-east-1:123456789012:autoscalingconfiguration/high-availability/3</code>\n         </p>\n         <p>Specify just the name to associate the latest revision. For example:\n        <code>arn:aws:apprunner:us-east-1:123456789012:autoscalingconfiguration/high-availability</code>\n         </p>"}))
    CreateServiceRequest.add_member(:network_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkConfiguration, location_name: 'NetworkConfiguration', traits: {"smithy.api#documentation" => "<p>Configuration settings related to network traffic of the web application that the App Runner service runs.</p>"}))
    CreateServiceRequest.add_member(:observability_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceObservabilityConfiguration, location_name: 'ObservabilityConfiguration', traits: {"smithy.api#documentation" => "<p>The observability configuration of your service.</p>"}))
    CreateServiceRequest.type = Types::CreateServiceRequest
    CreateServiceResponse.add_member(:service, Smithy::Schema::Shapes::ShapeRef.new(shape: Service, location_name: 'Service', traits: {"smithy.api#documentation" => "<p>A description of the App Runner service that's created by this request.</p>", "smithy.api#required" => {}}))
    CreateServiceResponse.add_member(:operation_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'OperationId', traits: {"smithy.api#documentation" => "<p>The unique ID of the asynchronous operation that this request started. You can use it combined with the <a href=\"https://docs.aws.amazon.com/apprunner/latest/api/API_ListOperations.html\">ListOperations</a> call to track the operation's progress.</p>", "smithy.api#required" => {}}))
    CreateServiceResponse.type = Types::CreateServiceResponse
    CreateVpcConnectorRequest.add_member(:vpc_connector_name, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcConnectorName, location_name: 'VpcConnectorName', traits: {"smithy.api#documentation" => "<p>A name for the VPC connector.</p>", "smithy.api#required" => {}}))
    CreateVpcConnectorRequest.add_member(:subnets, Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'Subnets', traits: {"smithy.api#documentation" => "<p>A list of IDs of subnets that App Runner should use when it associates your service with a custom Amazon VPC. Specify IDs of subnets of a single\n        Amazon VPC. App Runner determines the Amazon VPC from the subnets you specify.</p>\n         <note>\n            <p>\n        App Runner currently only provides support for IPv4.\n      </p>\n         </note>", "smithy.api#required" => {}}))
    CreateVpcConnectorRequest.add_member(:security_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'SecurityGroups', traits: {"smithy.api#documentation" => "<p>A list of IDs of security groups that App Runner should use for access to Amazon Web Services resources under the specified subnets. If not specified, App Runner uses the\n      default security group of the Amazon VPC. The default security group allows all outbound traffic.</p>"}))
    CreateVpcConnectorRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A list of metadata items that you can associate with your VPC connector resource. A tag is a key-value pair.</p>"}))
    CreateVpcConnectorRequest.type = Types::CreateVpcConnectorRequest
    CreateVpcConnectorResponse.add_member(:vpc_connector, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcConnector, location_name: 'VpcConnector', traits: {"smithy.api#documentation" => "<p>A description of the App Runner VPC connector that's created by this request.</p>", "smithy.api#required" => {}}))
    CreateVpcConnectorResponse.type = Types::CreateVpcConnectorResponse
    CreateVpcIngressConnectionRequest.add_member(:service_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AppRunnerResourceArn, location_name: 'ServiceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) for this App Runner service that is used to create the VPC Ingress Connection resource.</p>", "smithy.api#required" => {}}))
    CreateVpcIngressConnectionRequest.add_member(:vpc_ingress_connection_name, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcIngressConnectionName, location_name: 'VpcIngressConnectionName', traits: {"smithy.api#documentation" => "<p>A name for the VPC Ingress Connection resource. It must be unique across all the active VPC Ingress Connections in your Amazon Web Services account in the Amazon Web Services Region.\n    </p>", "smithy.api#required" => {}}))
    CreateVpcIngressConnectionRequest.add_member(:ingress_vpc_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: IngressVpcConfiguration, location_name: 'IngressVpcConfiguration', traits: {"smithy.api#documentation" => "<p>Specifications for the customer’s Amazon VPC and the related Amazon Web Services PrivateLink VPC endpoint that are used to create the VPC Ingress Connection\n      resource.</p>", "smithy.api#required" => {}}))
    CreateVpcIngressConnectionRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>An optional list of metadata items that you can associate with the VPC Ingress Connection resource. A tag is a key-value pair.</p>"}))
    CreateVpcIngressConnectionRequest.type = Types::CreateVpcIngressConnectionRequest
    CreateVpcIngressConnectionResponse.add_member(:vpc_ingress_connection, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcIngressConnection, location_name: 'VpcIngressConnection', traits: {"smithy.api#documentation" => "<p>A description of the App Runner VPC Ingress Connection resource that's created by this request. </p>", "smithy.api#required" => {}}))
    CreateVpcIngressConnectionResponse.type = Types::CreateVpcIngressConnectionResponse
    CustomDomain.add_member(:domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName', traits: {"smithy.api#documentation" => "<p>An associated custom domain endpoint. It can be a root domain (for example, <code>example.com</code>), a subdomain (for example,\n        <code>login.example.com</code> or <code>admin.login.example.com</code>), or a wildcard (for example, <code>*.example.com</code>).</p>", "smithy.api#required" => {}}))
    CustomDomain.add_member(:enable_www_subdomain, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBoolean, location_name: 'EnableWWWSubdomain', traits: {"smithy.api#documentation" => "<p>When <code>true</code>, the subdomain <code>www.<i>DomainName</i>\n            </code> is associated with the App Runner service in addition to the base\n      domain.</p>", "smithy.api#required" => {}}))
    CustomDomain.add_member(:certificate_validation_records, Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateValidationRecordList, location_name: 'CertificateValidationRecords', traits: {"smithy.api#documentation" => "<p>A list of certificate CNAME records that's used for this domain name.</p>"}))
    CustomDomain.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomDomainAssociationStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The current state of the domain name association.</p>", "smithy.api#required" => {}}))
    CustomDomain.type = Types::CustomDomain
    CustomDomainAssociationStatus.add_member(:creating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    CustomDomainAssociationStatus.add_member(:create_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATE_FAILED', traits: {"smithy.api#enumValue" => "CREATE_FAILED"}))
    CustomDomainAssociationStatus.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    CustomDomainAssociationStatus.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    CustomDomainAssociationStatus.add_member(:delete_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETE_FAILED', traits: {"smithy.api#enumValue" => "DELETE_FAILED"}))
    CustomDomainAssociationStatus.add_member(:pending_certificate_dns_validation, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING_CERTIFICATE_DNS_VALIDATION', traits: {"smithy.api#enumValue" => "PENDING_CERTIFICATE_DNS_VALIDATION"}))
    CustomDomainAssociationStatus.add_member(:binding_certificate, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BINDING_CERTIFICATE', traits: {"smithy.api#enumValue" => "BINDING_CERTIFICATE"}))
    CustomDomainList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CustomDomain)
    DeleteAutoScalingConfigurationRequest.add_member(:auto_scaling_configuration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AppRunnerResourceArn, location_name: 'AutoScalingConfigurationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the App Runner auto scaling configuration that you want to delete.</p>\n         <p>The ARN can be a full auto scaling configuration ARN, or a partial ARN ending with either <code>.../<i>name</i>\n            </code> or\n          <code>.../<i>name</i>/<i>revision</i>\n            </code>. If a revision isn't specified, the latest active revision is deleted.</p>", "smithy.api#required" => {}}))
    DeleteAutoScalingConfigurationRequest.add_member(:delete_all_revisions, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'DeleteAllRevisions', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Set to <code>true</code> to delete all of the revisions associated with the <code>AutoScalingConfigurationArn</code> parameter value.</p>\n         <p>When <code>DeleteAllRevisions</code> is set to <code>true</code>, the only valid value for the Amazon Resource Name (ARN) is a partial ARN ending\n      with: <code>.../name</code>.</p>"}))
    DeleteAutoScalingConfigurationRequest.type = Types::DeleteAutoScalingConfigurationRequest
    DeleteAutoScalingConfigurationResponse.add_member(:auto_scaling_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoScalingConfiguration, location_name: 'AutoScalingConfiguration', traits: {"smithy.api#documentation" => "<p>A description of the App Runner auto scaling configuration that this request just deleted.</p>", "smithy.api#required" => {}}))
    DeleteAutoScalingConfigurationResponse.type = Types::DeleteAutoScalingConfigurationResponse
    DeleteConnectionRequest.add_member(:connection_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AppRunnerResourceArn, location_name: 'ConnectionArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the App Runner connection that you want to delete.</p>", "smithy.api#required" => {}}))
    DeleteConnectionRequest.type = Types::DeleteConnectionRequest
    DeleteConnectionResponse.add_member(:connection, Smithy::Schema::Shapes::ShapeRef.new(shape: Connection, location_name: 'Connection', traits: {"smithy.api#documentation" => "<p>A description of the App Runner connection that this request just deleted.</p>"}))
    DeleteConnectionResponse.type = Types::DeleteConnectionResponse
    DeleteObservabilityConfigurationRequest.add_member(:observability_configuration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AppRunnerResourceArn, location_name: 'ObservabilityConfigurationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the App Runner observability configuration that you want to delete.</p>\n         <p>The ARN can be a full observability configuration ARN, or a partial ARN ending with either <code>.../<i>name</i>\n            </code> or\n          <code>.../<i>name</i>/<i>revision</i>\n            </code>. If a revision isn't specified, the latest active revision is deleted.</p>", "smithy.api#required" => {}}))
    DeleteObservabilityConfigurationRequest.type = Types::DeleteObservabilityConfigurationRequest
    DeleteObservabilityConfigurationResponse.add_member(:observability_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ObservabilityConfiguration, location_name: 'ObservabilityConfiguration', traits: {"smithy.api#documentation" => "<p>A description of the App Runner observability configuration that this request just deleted.</p>", "smithy.api#required" => {}}))
    DeleteObservabilityConfigurationResponse.type = Types::DeleteObservabilityConfigurationResponse
    DeleteServiceRequest.add_member(:service_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AppRunnerResourceArn, location_name: 'ServiceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the App Runner service that you want to delete.</p>", "smithy.api#required" => {}}))
    DeleteServiceRequest.type = Types::DeleteServiceRequest
    DeleteServiceResponse.add_member(:service, Smithy::Schema::Shapes::ShapeRef.new(shape: Service, location_name: 'Service', traits: {"smithy.api#documentation" => "<p>A description of the App Runner service that this request just deleted.</p>", "smithy.api#required" => {}}))
    DeleteServiceResponse.add_member(:operation_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'OperationId', traits: {"smithy.api#documentation" => "<p>The unique ID of the asynchronous operation that this request started. You can use it combined with the <a>ListOperations</a> call to track\n      the operation's progress.</p>", "smithy.api#required" => {}}))
    DeleteServiceResponse.type = Types::DeleteServiceResponse
    DeleteVpcConnectorRequest.add_member(:vpc_connector_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AppRunnerResourceArn, location_name: 'VpcConnectorArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the App Runner VPC connector that you want to delete.</p>\n         <p>The ARN must be a full VPC connector ARN.</p>", "smithy.api#required" => {}}))
    DeleteVpcConnectorRequest.type = Types::DeleteVpcConnectorRequest
    DeleteVpcConnectorResponse.add_member(:vpc_connector, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcConnector, location_name: 'VpcConnector', traits: {"smithy.api#documentation" => "<p>A description of the App Runner VPC connector that this request just deleted.</p>", "smithy.api#required" => {}}))
    DeleteVpcConnectorResponse.type = Types::DeleteVpcConnectorResponse
    DeleteVpcIngressConnectionRequest.add_member(:vpc_ingress_connection_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AppRunnerResourceArn, location_name: 'VpcIngressConnectionArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the App Runner VPC Ingress Connection that you want to delete.</p>", "smithy.api#required" => {}}))
    DeleteVpcIngressConnectionRequest.type = Types::DeleteVpcIngressConnectionRequest
    DeleteVpcIngressConnectionResponse.add_member(:vpc_ingress_connection, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcIngressConnection, location_name: 'VpcIngressConnection', traits: {"smithy.api#documentation" => "<p>A description of the App Runner VPC Ingress Connection that this request just deleted.</p>", "smithy.api#required" => {}}))
    DeleteVpcIngressConnectionResponse.type = Types::DeleteVpcIngressConnectionResponse
    DescribeAutoScalingConfigurationRequest.add_member(:auto_scaling_configuration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AppRunnerResourceArn, location_name: 'AutoScalingConfigurationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the App Runner auto scaling configuration that you want a description for.</p>\n         <p>The ARN can be a full auto scaling configuration ARN, or a partial ARN ending with either <code>.../<i>name</i>\n            </code> or\n          <code>.../<i>name</i>/<i>revision</i>\n            </code>. If a revision isn't specified, the latest active revision is\n      described.</p>", "smithy.api#required" => {}}))
    DescribeAutoScalingConfigurationRequest.type = Types::DescribeAutoScalingConfigurationRequest
    DescribeAutoScalingConfigurationResponse.add_member(:auto_scaling_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoScalingConfiguration, location_name: 'AutoScalingConfiguration', traits: {"smithy.api#documentation" => "<p>A full description of the App Runner auto scaling configuration that you specified in this request.</p>", "smithy.api#required" => {}}))
    DescribeAutoScalingConfigurationResponse.type = Types::DescribeAutoScalingConfigurationResponse
    DescribeCustomDomainsRequest.add_member(:service_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AppRunnerResourceArn, location_name: 'ServiceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the App Runner service that you want associated custom domain names to be described for.</p>", "smithy.api#required" => {}}))
    DescribeCustomDomainsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token from a previous result page. It's used for a paginated request. The request retrieves the next result page. All other parameter values must be\n      identical to the ones that are specified in the initial request.</p>\n         <p>If you don't specify <code>NextToken</code>, the request retrieves the first result page.</p>"}))
    DescribeCustomDomainsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeCustomDomainsMaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results that each response (result page) can include. It's used for a paginated request.</p>\n         <p>If you don't specify <code>MaxResults</code>, the request retrieves all available results in a single response.</p>"}))
    DescribeCustomDomainsRequest.type = Types::DescribeCustomDomainsRequest
    DescribeCustomDomainsResponse.add_member(:dns_target, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DNSTarget', traits: {"smithy.api#documentation" => "<p>The App Runner subdomain of the App Runner service. The associated custom domain names are mapped to this target name.</p>", "smithy.api#required" => {}}))
    DescribeCustomDomainsResponse.add_member(:service_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AppRunnerResourceArn, location_name: 'ServiceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the App Runner service whose associated custom domain names you want to describe.</p>", "smithy.api#required" => {}}))
    DescribeCustomDomainsResponse.add_member(:custom_domains, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomDomainList, location_name: 'CustomDomains', traits: {"smithy.api#documentation" => "<p>A list of descriptions of custom domain names that are associated with the service. In a paginated request, the request returns up to\n        <code>MaxResults</code> records per call.</p>", "smithy.api#required" => {}}))
    DescribeCustomDomainsResponse.add_member(:vpc_dns_targets, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcDNSTargetList, location_name: 'VpcDNSTargets', traits: {"smithy.api#documentation" => "<p>DNS Target records for the custom domains of this Amazon VPC.\n      </p>", "smithy.api#required" => {}}))
    DescribeCustomDomainsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token that you can pass in a subsequent request to get the next result page. It's returned in a paginated request.</p>"}))
    DescribeCustomDomainsResponse.type = Types::DescribeCustomDomainsResponse
    DescribeObservabilityConfigurationRequest.add_member(:observability_configuration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AppRunnerResourceArn, location_name: 'ObservabilityConfigurationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the App Runner observability configuration that you want a description for.</p>\n         <p>The ARN can be a full observability configuration ARN, or a partial ARN ending with either <code>.../<i>name</i>\n            </code> or\n          <code>.../<i>name</i>/<i>revision</i>\n            </code>. If a revision isn't specified, the latest active revision is\n      described.</p>", "smithy.api#required" => {}}))
    DescribeObservabilityConfigurationRequest.type = Types::DescribeObservabilityConfigurationRequest
    DescribeObservabilityConfigurationResponse.add_member(:observability_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ObservabilityConfiguration, location_name: 'ObservabilityConfiguration', traits: {"smithy.api#documentation" => "<p>A full description of the App Runner observability configuration that you specified in this request.</p>", "smithy.api#required" => {}}))
    DescribeObservabilityConfigurationResponse.type = Types::DescribeObservabilityConfigurationResponse
    DescribeServiceRequest.add_member(:service_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AppRunnerResourceArn, location_name: 'ServiceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the App Runner service that you want a description for.</p>", "smithy.api#required" => {}}))
    DescribeServiceRequest.type = Types::DescribeServiceRequest
    DescribeServiceResponse.add_member(:service, Smithy::Schema::Shapes::ShapeRef.new(shape: Service, location_name: 'Service', traits: {"smithy.api#documentation" => "<p>A full description of the App Runner service that you specified in this request.</p>", "smithy.api#required" => {}}))
    DescribeServiceResponse.type = Types::DescribeServiceResponse
    DescribeVpcConnectorRequest.add_member(:vpc_connector_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AppRunnerResourceArn, location_name: 'VpcConnectorArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the App Runner VPC connector that you want a description for.</p>\n         <p>The ARN must be a full VPC connector ARN.</p>", "smithy.api#required" => {}}))
    DescribeVpcConnectorRequest.type = Types::DescribeVpcConnectorRequest
    DescribeVpcConnectorResponse.add_member(:vpc_connector, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcConnector, location_name: 'VpcConnector', traits: {"smithy.api#documentation" => "<p>A description of the App Runner VPC connector that you specified in this request.</p>", "smithy.api#required" => {}}))
    DescribeVpcConnectorResponse.type = Types::DescribeVpcConnectorResponse
    DescribeVpcIngressConnectionRequest.add_member(:vpc_ingress_connection_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AppRunnerResourceArn, location_name: 'VpcIngressConnectionArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the App Runner VPC Ingress Connection that you want a description for.</p>", "smithy.api#required" => {}}))
    DescribeVpcIngressConnectionRequest.type = Types::DescribeVpcIngressConnectionRequest
    DescribeVpcIngressConnectionResponse.add_member(:vpc_ingress_connection, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcIngressConnection, location_name: 'VpcIngressConnection', traits: {"smithy.api#documentation" => "<p>A description of the App Runner VPC Ingress Connection that you specified in this request.</p>", "smithy.api#required" => {}}))
    DescribeVpcIngressConnectionResponse.type = Types::DescribeVpcIngressConnectionResponse
    DisassociateCustomDomainRequest.add_member(:service_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AppRunnerResourceArn, location_name: 'ServiceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the App Runner service that you want to disassociate a custom domain name from.</p>", "smithy.api#required" => {}}))
    DisassociateCustomDomainRequest.add_member(:domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName', traits: {"smithy.api#documentation" => "<p>The domain name that you want to disassociate from the App Runner service.</p>", "smithy.api#required" => {}}))
    DisassociateCustomDomainRequest.type = Types::DisassociateCustomDomainRequest
    DisassociateCustomDomainResponse.add_member(:dns_target, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DNSTarget', traits: {"smithy.api#documentation" => "<p>The App Runner subdomain of the App Runner service. The disassociated custom domain name was mapped to this target name.</p>", "smithy.api#required" => {}}))
    DisassociateCustomDomainResponse.add_member(:service_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AppRunnerResourceArn, location_name: 'ServiceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the App Runner service that a custom domain name is disassociated from.</p>", "smithy.api#required" => {}}))
    DisassociateCustomDomainResponse.add_member(:custom_domain, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomDomain, location_name: 'CustomDomain', traits: {"smithy.api#documentation" => "<p>A description of the domain name that's being disassociated.</p>", "smithy.api#required" => {}}))
    DisassociateCustomDomainResponse.add_member(:vpc_dns_targets, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcDNSTargetList, location_name: 'VpcDNSTargets', traits: {"smithy.api#documentation" => "<p>DNS Target records for the custom domains of this Amazon VPC.\n      </p>", "smithy.api#required" => {}}))
    DisassociateCustomDomainResponse.type = Types::DisassociateCustomDomainResponse
    EgressConfiguration.add_member(:egress_type, Smithy::Schema::Shapes::ShapeRef.new(shape: EgressType, location_name: 'EgressType', traits: {"smithy.api#documentation" => "<p>The type of egress configuration.</p>\n         <p>Set to <code>DEFAULT</code> for access to resources hosted on public networks.</p>\n         <p>Set to <code>VPC</code> to associate your service to a custom VPC specified by <code>VpcConnectorArn</code>.</p>"}))
    EgressConfiguration.add_member(:vpc_connector_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AppRunnerResourceArn, location_name: 'VpcConnectorArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the App Runner VPC connector that you want to associate with your App Runner service. Only valid when <code>EgressType =\n        VPC</code>.</p>"}))
    EgressConfiguration.type = Types::EgressConfiguration
    EgressType.add_member(:default, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEFAULT', traits: {"smithy.api#enumValue" => "DEFAULT"}))
    EgressType.add_member(:vpc, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VPC', traits: {"smithy.api#enumValue" => "VPC"}))
    EncryptionConfiguration.add_member(:kms_key, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'KmsKey', traits: {"smithy.api#documentation" => "<p>The ARN of the KMS key that's used for encryption.</p>", "smithy.api#required" => {}}))
    EncryptionConfiguration.type = Types::EncryptionConfiguration
    HealthCheckConfiguration.add_member(:protocol, Smithy::Schema::Shapes::ShapeRef.new(shape: HealthCheckProtocol, location_name: 'Protocol', traits: {"smithy.api#documentation" => "<p>The IP protocol that App Runner uses to perform health checks for your service.</p>\n         <p>If you set <code>Protocol</code> to <code>HTTP</code>, App Runner sends health check requests to the HTTP path specified by <code>Path</code>.</p>\n         <p>Default: <code>TCP</code>\n         </p>"}))
    HealthCheckConfiguration.add_member(:path, Smithy::Schema::Shapes::ShapeRef.new(shape: HealthCheckPath, location_name: 'Path', traits: {"smithy.api#documentation" => "<p>The URL that health check requests are sent to.</p>\n         <p>\n            <code>Path</code> is only applicable when you set <code>Protocol</code> to <code>HTTP</code>.</p>\n         <p>Default: <code>\"/\"</code>\n         </p>"}))
    HealthCheckConfiguration.add_member(:interval, Smithy::Schema::Shapes::ShapeRef.new(shape: HealthCheckInterval, location_name: 'Interval', traits: {"smithy.api#documentation" => "<p>The time interval, in seconds, between health checks.</p>\n         <p>Default: <code>5</code>\n         </p>"}))
    HealthCheckConfiguration.add_member(:timeout, Smithy::Schema::Shapes::ShapeRef.new(shape: HealthCheckTimeout, location_name: 'Timeout', traits: {"smithy.api#documentation" => "<p>The time, in seconds, to wait for a health check response before deciding it failed.</p>\n         <p>Default: <code>2</code>\n         </p>"}))
    HealthCheckConfiguration.add_member(:healthy_threshold, Smithy::Schema::Shapes::ShapeRef.new(shape: HealthCheckHealthyThreshold, location_name: 'HealthyThreshold', traits: {"smithy.api#documentation" => "<p>The number of consecutive checks that must succeed before App Runner decides that the service is healthy.</p>\n         <p>Default: <code>1</code>\n         </p>"}))
    HealthCheckConfiguration.add_member(:unhealthy_threshold, Smithy::Schema::Shapes::ShapeRef.new(shape: HealthCheckUnhealthyThreshold, location_name: 'UnhealthyThreshold', traits: {"smithy.api#documentation" => "<p>The number of consecutive checks that must fail before App Runner decides that the service is unhealthy.</p>\n         <p>Default: <code>5</code>\n         </p>"}))
    HealthCheckConfiguration.type = Types::HealthCheckConfiguration
    HealthCheckProtocol.add_member(:tcp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TCP', traits: {"smithy.api#enumValue" => "TCP"}))
    HealthCheckProtocol.add_member(:http, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HTTP', traits: {"smithy.api#enumValue" => "HTTP"}))
    ImageConfiguration.add_member(:runtime_environment_variables, Smithy::Schema::Shapes::ShapeRef.new(shape: RuntimeEnvironmentVariables, location_name: 'RuntimeEnvironmentVariables', traits: {"smithy.api#documentation" => "<p>Environment variables that are available to your running App Runner service. An array of key-value pairs.</p>"}))
    ImageConfiguration.add_member(:start_command, Smithy::Schema::Shapes::ShapeRef.new(shape: StartCommand, location_name: 'StartCommand', traits: {"smithy.api#documentation" => "<p>An optional command that App Runner runs to start the application in the source image. If specified, this command overrides the Docker image’s default start\n      command.</p>"}))
    ImageConfiguration.add_member(:port, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Port', traits: {"smithy.api#documentation" => "<p>The port that your application listens to in the container.</p>\n         <p>Default: <code>8080</code>\n         </p>"}))
    ImageConfiguration.add_member(:runtime_environment_secrets, Smithy::Schema::Shapes::ShapeRef.new(shape: RuntimeEnvironmentSecrets, location_name: 'RuntimeEnvironmentSecrets', traits: {"smithy.api#documentation" => "<p>An array of key-value pairs representing the secrets and parameters that get referenced to your service as an environment variable. The supported\n      values are either the full Amazon Resource Name (ARN) of the Secrets Manager secret or the full ARN of the parameter in the Amazon Web Services Systems Manager\n      Parameter Store.</p>\n         <note>\n            <ul>\n               <li>\n                  <p> If the Amazon Web Services Systems Manager Parameter Store parameter exists in the same Amazon Web Services Region as the service that you're launching, you can use\n            either the full ARN or name of the secret. If the parameter exists in a different Region, then the full ARN must be specified. </p>\n               </li>\n               <li>\n                  <p> Currently, cross account referencing of Amazon Web Services Systems Manager Parameter Store parameter is not supported. </p>\n               </li>\n            </ul>\n         </note>"}))
    ImageConfiguration.type = Types::ImageConfiguration
    ImageRepository.add_member(:image_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageIdentifier, location_name: 'ImageIdentifier', traits: {"smithy.api#documentation" => "<p>The identifier of an image.</p>\n         <p>For an image in Amazon Elastic Container Registry (Amazon ECR), this is an image name. For the image name format, see <a href=\"https://docs.aws.amazon.com/AmazonECR/latest/userguide/docker-pull-ecr-image.html\">Pulling an image</a> in the <i>Amazon ECR User Guide</i>.</p>", "smithy.api#required" => {}}))
    ImageRepository.add_member(:image_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageConfiguration, location_name: 'ImageConfiguration', traits: {"smithy.api#documentation" => "<p>Configuration for running the identified image.</p>"}))
    ImageRepository.add_member(:image_repository_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageRepositoryType, location_name: 'ImageRepositoryType', traits: {"smithy.api#documentation" => "<p>The type of the image repository. This reflects the repository provider and whether the repository is private or public.</p>", "smithy.api#required" => {}}))
    ImageRepository.type = Types::ImageRepository
    ImageRepositoryType.add_member(:ecr, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ECR', traits: {"smithy.api#enumValue" => "ECR"}))
    ImageRepositoryType.add_member(:ecr_public, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ECR_PUBLIC', traits: {"smithy.api#enumValue" => "ECR_PUBLIC"}))
    IngressConfiguration.add_member(:is_publicly_accessible, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IsPubliclyAccessible', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Specifies whether your App Runner service is publicly accessible. To make the service publicly accessible set it to <code>True</code>. To make the service\n      privately accessible, from only within an Amazon VPC set it to <code>False</code>. </p>"}))
    IngressConfiguration.type = Types::IngressConfiguration
    IngressVpcConfiguration.add_member(:vpc_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VpcId', traits: {"smithy.api#documentation" => "<p>The ID of the VPC that is used for the VPC endpoint.</p>"}))
    IngressVpcConfiguration.add_member(:vpc_endpoint_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VpcEndpointId', traits: {"smithy.api#documentation" => "<p>The ID of the VPC endpoint that your App Runner service connects to.\n    </p>"}))
    IngressVpcConfiguration.type = Types::IngressVpcConfiguration
    InstanceConfiguration.add_member(:cpu, Smithy::Schema::Shapes::ShapeRef.new(shape: Cpu, location_name: 'Cpu', traits: {"smithy.api#documentation" => "<p>The number of CPU units reserved for each instance of your App Runner service.</p>\n         <p>Default: <code>1 vCPU</code>\n         </p>"}))
    InstanceConfiguration.add_member(:memory, Smithy::Schema::Shapes::ShapeRef.new(shape: Memory, location_name: 'Memory', traits: {"smithy.api#documentation" => "<p>The amount of memory, in MB or GB, reserved for each instance of your App Runner service.</p>\n         <p>Default: <code>2 GB</code>\n         </p>"}))
    InstanceConfiguration.add_member(:instance_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'InstanceRoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of an IAM role that provides permissions to your App Runner service. These are permissions that your code needs when it calls\n      any Amazon Web Services APIs.</p>"}))
    InstanceConfiguration.type = Types::InstanceConfiguration
    InternalServiceErrorException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    InternalServiceErrorException.type = Types::InternalServiceErrorException
    InvalidRequestException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    InvalidRequestException.type = Types::InvalidRequestException
    InvalidStateException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    InvalidStateException.type = Types::InvalidStateException
    IpAddressType.add_member(:ipv4, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IPV4', traits: {"smithy.api#enumValue" => "IPV4"}))
    IpAddressType.add_member(:dual_stack, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DUAL_STACK', traits: {"smithy.api#enumValue" => "DUAL_STACK"}))
    ListAutoScalingConfigurationsRequest.add_member(:auto_scaling_configuration_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoScalingConfigurationName, location_name: 'AutoScalingConfigurationName', traits: {"smithy.api#documentation" => "<p>The name of the App Runner auto scaling configuration that you want to list. If specified, App Runner lists revisions that share this name. If not specified, App Runner\n      returns revisions of all active configurations.</p>"}))
    ListAutoScalingConfigurationsRequest.add_member(:latest_only, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'LatestOnly', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Set to <code>true</code> to list only the latest revision for each requested configuration name.</p>\n         <p>Set to <code>false</code> to list all revisions for each requested configuration name.</p>\n         <p>Default: <code>true</code>\n         </p>"}))
    ListAutoScalingConfigurationsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to include in each response (result page). It's used for a paginated request.</p>\n         <p>If you don't specify <code>MaxResults</code>, the request retrieves all available results in a single response.</p>"}))
    ListAutoScalingConfigurationsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token from a previous result page. It's used for a paginated request. The request retrieves the next result page. All other parameter values must be\n      identical to the ones that are specified in the initial request.</p>\n         <p>If you don't specify <code>NextToken</code>, the request retrieves the first result page.</p>"}))
    ListAutoScalingConfigurationsRequest.type = Types::ListAutoScalingConfigurationsRequest
    ListAutoScalingConfigurationsResponse.add_member(:auto_scaling_configuration_summary_list, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoScalingConfigurationSummaryList, location_name: 'AutoScalingConfigurationSummaryList', traits: {"smithy.api#documentation" => "<p>A list of summary information records for auto scaling configurations. In a paginated request, the request returns up to <code>MaxResults</code>\n      records for each call.</p>", "smithy.api#required" => {}}))
    ListAutoScalingConfigurationsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token that you can pass in a subsequent request to get the next result page. It's returned in a paginated request.</p>"}))
    ListAutoScalingConfigurationsResponse.type = Types::ListAutoScalingConfigurationsResponse
    ListConnectionsRequest.add_member(:connection_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionName, location_name: 'ConnectionName', traits: {"smithy.api#documentation" => "<p>If specified, only this connection is returned. If not specified, the result isn't filtered by name.</p>"}))
    ListConnectionsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to include in each response (result page). Used for a paginated request.</p>\n         <p>If you don't specify <code>MaxResults</code>, the request retrieves all available results in a single response.</p>"}))
    ListConnectionsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token from a previous result page. Used for a paginated request. The request retrieves the next result page. All other parameter values must be\n      identical to the ones specified in the initial request.</p>\n         <p>If you don't specify <code>NextToken</code>, the request retrieves the first result page.</p>"}))
    ListConnectionsRequest.type = Types::ListConnectionsRequest
    ListConnectionsResponse.add_member(:connection_summary_list, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionSummaryList, location_name: 'ConnectionSummaryList', traits: {"smithy.api#documentation" => "<p>A list of summary information records for connections. In a paginated request, the request returns up to <code>MaxResults</code> records for each\n      call.</p>", "smithy.api#required" => {}}))
    ListConnectionsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token that you can pass in a subsequent request to get the next result page. Returned in a paginated request.</p>"}))
    ListConnectionsResponse.type = Types::ListConnectionsResponse
    ListObservabilityConfigurationsRequest.add_member(:observability_configuration_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ObservabilityConfigurationName, location_name: 'ObservabilityConfigurationName', traits: {"smithy.api#documentation" => "<p>The name of the App Runner observability configuration that you want to list. If specified, App Runner lists revisions that share this name. If not specified,\n      App Runner returns revisions of all active configurations.</p>"}))
    ListObservabilityConfigurationsRequest.add_member(:latest_only, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'LatestOnly', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Set to <code>true</code> to list only the latest revision for each requested configuration name.</p>\n         <p>Set to <code>false</code> to list all revisions for each requested configuration name.</p>\n         <p>Default: <code>true</code>\n         </p>"}))
    ListObservabilityConfigurationsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to include in each response (result page). It's used for a paginated request.</p>\n         <p>If you don't specify <code>MaxResults</code>, the request retrieves all available results in a single response.</p>"}))
    ListObservabilityConfigurationsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token from a previous result page. It's used for a paginated request. The request retrieves the next result page. All other parameter values must be\n      identical to the ones that are specified in the initial request.</p>\n         <p>If you don't specify <code>NextToken</code>, the request retrieves the first result page.</p>"}))
    ListObservabilityConfigurationsRequest.type = Types::ListObservabilityConfigurationsRequest
    ListObservabilityConfigurationsResponse.add_member(:observability_configuration_summary_list, Smithy::Schema::Shapes::ShapeRef.new(shape: ObservabilityConfigurationSummaryList, location_name: 'ObservabilityConfigurationSummaryList', traits: {"smithy.api#documentation" => "<p>A list of summary information records for observability configurations. In a paginated request, the request returns up to <code>MaxResults</code>\n      records for each call.</p>", "smithy.api#required" => {}}))
    ListObservabilityConfigurationsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token that you can pass in a subsequent request to get the next result page. It's returned in a paginated request.</p>"}))
    ListObservabilityConfigurationsResponse.type = Types::ListObservabilityConfigurationsResponse
    ListOperationsRequest.add_member(:service_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AppRunnerResourceArn, location_name: 'ServiceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the App Runner service that you want a list of operations for.</p>", "smithy.api#required" => {}}))
    ListOperationsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token from a previous result page. It's used for a paginated request. The request retrieves the next result page. All other parameter values must be\n      identical to the ones specified in the initial request.</p>\n         <p>If you don't specify <code>NextToken</code>, the request retrieves the first result page.</p>"}))
    ListOperationsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOperationsMaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to include in each response (result page). It's used for a paginated request.</p>\n         <p>If you don't specify <code>MaxResults</code>, the request retrieves all available results in a single response.</p>"}))
    ListOperationsRequest.type = Types::ListOperationsRequest
    ListOperationsResponse.add_member(:operation_summary_list, Smithy::Schema::Shapes::ShapeRef.new(shape: OperationSummaryList, location_name: 'OperationSummaryList', traits: {"smithy.api#documentation" => "<p>A list of operation summary information records. In a paginated request, the request returns up to <code>MaxResults</code> records for each\n      call.</p>"}))
    ListOperationsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token that you can pass in a subsequent request to get the next result page. It's returned in a paginated request.</p>"}))
    ListOperationsResponse.type = Types::ListOperationsResponse
    ListServicesForAutoScalingConfigurationRequest.add_member(:auto_scaling_configuration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AppRunnerResourceArn, location_name: 'AutoScalingConfigurationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the App Runner auto scaling configuration that you want to list the services for.</p>\n         <p>The ARN can be a full auto scaling configuration ARN, or a partial ARN ending with either <code>.../<i>name</i>\n            </code> or\n      <code>.../<i>name</i>/<i>revision</i>\n            </code>. If a revision isn't specified, the latest active revision is used.</p>", "smithy.api#required" => {}}))
    ListServicesForAutoScalingConfigurationRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to include in each response (result page). It's used for a paginated request.</p>\n         <p>If you don't specify <code>MaxResults</code>, the request retrieves all available results in a single response.</p>"}))
    ListServicesForAutoScalingConfigurationRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token from a previous result page. It's used for a paginated request. The request retrieves the next result page. All other parameter values must be\n      identical to the ones specified in the initial request.</p>\n         <p>If you don't specify <code>NextToken</code>, the request retrieves the first result page.</p>"}))
    ListServicesForAutoScalingConfigurationRequest.type = Types::ListServicesForAutoScalingConfigurationRequest
    ListServicesForAutoScalingConfigurationResponse.add_member(:service_arn_list, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceArnList, location_name: 'ServiceArnList', traits: {"smithy.api#documentation" => "<p>A list of service ARN records. In a paginated request, the request returns up to <code>MaxResults</code> records for each call.</p>", "smithy.api#required" => {}}))
    ListServicesForAutoScalingConfigurationResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token that you can pass in a subsequent request to get the next result page. It's returned in a paginated request.</p>"}))
    ListServicesForAutoScalingConfigurationResponse.type = Types::ListServicesForAutoScalingConfigurationResponse
    ListServicesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token from a previous result page. Used for a paginated request. The request retrieves the next result page. All other parameter values must be\n      identical to the ones specified in the initial request.</p>\n         <p>If you don't specify <code>NextToken</code>, the request retrieves the first result page.</p>"}))
    ListServicesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceMaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to include in each response (result page). It's used for a paginated request.</p>\n         <p>If you don't specify <code>MaxResults</code>, the request retrieves all available results in a single response.</p>"}))
    ListServicesRequest.type = Types::ListServicesRequest
    ListServicesResponse.add_member(:service_summary_list, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceSummaryList, location_name: 'ServiceSummaryList', traits: {"smithy.api#documentation" => "<p>A list of service summary information records. In a paginated request, the request returns up to <code>MaxResults</code> records for each call.</p>", "smithy.api#required" => {}}))
    ListServicesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token that you can pass in a subsequent request to get the next result page. It's returned in a paginated request.</p>"}))
    ListServicesResponse.type = Types::ListServicesResponse
    ListTagsForResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AppRunnerResourceArn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource that a tag list is requested for.</p>\n         <p>It must be the ARN of an App Runner resource.</p>", "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A list of the tag key-value pairs that are associated with the resource.</p>"}))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ListVpcConnectorsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to include in each response (result page). It's used for a paginated request.</p>\n         <p>If you don't specify <code>MaxResults</code>, the request retrieves all available results in a single response.</p>"}))
    ListVpcConnectorsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token from a previous result page. It's used for a paginated request. The request retrieves the next result page. All other parameter values must be\n      identical to the ones that are specified in the initial request.</p>\n         <p>If you don't specify <code>NextToken</code>, the request retrieves the first result page.</p>"}))
    ListVpcConnectorsRequest.type = Types::ListVpcConnectorsRequest
    ListVpcConnectorsResponse.add_member(:vpc_connectors, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcConnectors, location_name: 'VpcConnectors', traits: {"smithy.api#documentation" => "<p>A list of information records for VPC connectors. In a paginated request, the request returns up to <code>MaxResults</code> records for each\n      call.</p>", "smithy.api#required" => {}}))
    ListVpcConnectorsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token that you can pass in a subsequent request to get the next result page. It's returned in a paginated request.</p>"}))
    ListVpcConnectorsResponse.type = Types::ListVpcConnectorsResponse
    ListVpcIngressConnectionsFilter.add_member(:service_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AppRunnerResourceArn, location_name: 'ServiceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of a service to filter by.\n    </p>"}))
    ListVpcIngressConnectionsFilter.add_member(:vpc_endpoint_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VpcEndpointId', traits: {"smithy.api#documentation" => "<p>The ID of a VPC Endpoint to filter by.\n    </p>"}))
    ListVpcIngressConnectionsFilter.type = Types::ListVpcIngressConnectionsFilter
    ListVpcIngressConnectionsRequest.add_member(:filter, Smithy::Schema::Shapes::ShapeRef.new(shape: ListVpcIngressConnectionsFilter, location_name: 'Filter', traits: {"smithy.api#documentation" => "<p>The VPC Ingress Connections to be listed based on either the Service Arn or Vpc Endpoint Id, or both.</p>"}))
    ListVpcIngressConnectionsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to include in each response (result page). It's used for a paginated request.</p>\n         <p>If you don't specify <code>MaxResults</code>, the request retrieves all available results in a single response.</p>"}))
    ListVpcIngressConnectionsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token from a previous result page. It's used for a paginated request. The request retrieves the next result page. All other parameter values must be\n      identical to the ones that are specified in the initial request.</p>\n         <p>If you don't specify <code>NextToken</code>, the request retrieves the first result page.</p>"}))
    ListVpcIngressConnectionsRequest.type = Types::ListVpcIngressConnectionsRequest
    ListVpcIngressConnectionsResponse.add_member(:vpc_ingress_connection_summary_list, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcIngressConnectionSummaryList, location_name: 'VpcIngressConnectionSummaryList', traits: {"smithy.api#documentation" => "<p>A list of summary information records for VPC Ingress Connections. In a paginated request, the request returns up to <code>MaxResults</code> records for each call.</p>", "smithy.api#required" => {}}))
    ListVpcIngressConnectionsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token that you can pass in a subsequent request to get the next result page. It's returned in a paginated request.</p>"}))
    ListVpcIngressConnectionsResponse.type = Types::ListVpcIngressConnectionsResponse
    NetworkConfiguration.add_member(:egress_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: EgressConfiguration, location_name: 'EgressConfiguration', traits: {"smithy.api#documentation" => "<p>Network configuration settings for outbound message traffic.</p>"}))
    NetworkConfiguration.add_member(:ingress_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: IngressConfiguration, location_name: 'IngressConfiguration', traits: {"smithy.api#documentation" => "<p>Network configuration settings for inbound message traffic.</p>"}))
    NetworkConfiguration.add_member(:ip_address_type, Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddressType, location_name: 'IpAddressType', traits: {"smithy.api#documentation" => "<p>App Runner provides you with the option to choose between <i>Internet Protocol version 4 (IPv4)</i> and <i>dual stack</i> (IPv4 and IPv6) \n      for your incoming public network configuration. This is an optional parameter. \n      If you do not specify an <code>IpAddressType</code>, it defaults to select IPv4.</p>\n         <note>\n            <p>\n        Currently, App Runner supports dual stack for only Public endpoint. Only IPv4 is supported for Private endpoint. \n        If you update a service that's using dual-stack Public endpoint to a Private endpoint, your App Runner service will default to support only IPv4 for Private endpoint and fail to receive traffic originating from IPv6 endpoint.  \n      </p>\n         </note>"}))
    NetworkConfiguration.type = Types::NetworkConfiguration
    ObservabilityConfiguration.add_member(:observability_configuration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AppRunnerResourceArn, location_name: 'ObservabilityConfigurationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of this observability configuration.</p>"}))
    ObservabilityConfiguration.add_member(:observability_configuration_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ObservabilityConfigurationName, location_name: 'ObservabilityConfigurationName', traits: {"smithy.api#documentation" => "<p>The customer-provided observability configuration name. It can be used in multiple revisions of a configuration.</p>"}))
    ObservabilityConfiguration.add_member(:trace_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: TraceConfiguration, location_name: 'TraceConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration of the tracing feature within this observability configuration. If not specified, tracing isn't enabled.</p>"}))
    ObservabilityConfiguration.add_member(:observability_configuration_revision, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'ObservabilityConfigurationRevision', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The revision of this observability configuration. It's unique among all the active configurations (<code>\"Status\": \"ACTIVE\"</code>) that share the\n      same <code>ObservabilityConfigurationName</code>.</p>"}))
    ObservabilityConfiguration.add_member(:latest, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Latest', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>It's set to <code>true</code> for the configuration with the highest <code>Revision</code> among all configurations that share the same\n        <code>ObservabilityConfigurationName</code>. It's set to <code>false</code> otherwise.</p>"}))
    ObservabilityConfiguration.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ObservabilityConfigurationStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The current state of the observability configuration. If the status of a configuration revision is <code>INACTIVE</code>, it was deleted and can't be\n      used. Inactive configuration revisions are permanently removed some time after they are deleted.</p>"}))
    ObservabilityConfiguration.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p>The time when the observability configuration was created. It's in Unix time stamp format.</p>"}))
    ObservabilityConfiguration.add_member(:deleted_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'DeletedAt', traits: {"smithy.api#documentation" => "<p>The time when the observability configuration was deleted. It's in Unix time stamp format.</p>"}))
    ObservabilityConfiguration.type = Types::ObservabilityConfiguration
    ObservabilityConfigurationStatus.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ObservabilityConfigurationStatus.add_member(:inactive, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INACTIVE', traits: {"smithy.api#enumValue" => "INACTIVE"}))
    ObservabilityConfigurationSummary.add_member(:observability_configuration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AppRunnerResourceArn, location_name: 'ObservabilityConfigurationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of this observability configuration.</p>"}))
    ObservabilityConfigurationSummary.add_member(:observability_configuration_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ObservabilityConfigurationName, location_name: 'ObservabilityConfigurationName', traits: {"smithy.api#documentation" => "<p>The customer-provided observability configuration name. It can be used in multiple revisions of a configuration.</p>"}))
    ObservabilityConfigurationSummary.add_member(:observability_configuration_revision, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'ObservabilityConfigurationRevision', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The revision of this observability configuration. It's unique among all the active configurations (<code>\"Status\": \"ACTIVE\"</code>) that share the\n      same <code>ObservabilityConfigurationName</code>.</p>"}))
    ObservabilityConfigurationSummary.type = Types::ObservabilityConfigurationSummary
    ObservabilityConfigurationSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ObservabilityConfigurationSummary)
    OperationStatus.add_member(:pending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "PENDING"}))
    OperationStatus.add_member(:in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PROGRESS', traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    OperationStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    OperationStatus.add_member(:succeeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCEEDED', traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    OperationStatus.add_member(:rollback_in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ROLLBACK_IN_PROGRESS', traits: {"smithy.api#enumValue" => "ROLLBACK_IN_PROGRESS"}))
    OperationStatus.add_member(:rollback_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ROLLBACK_FAILED', traits: {"smithy.api#enumValue" => "ROLLBACK_FAILED"}))
    OperationStatus.add_member(:rollback_succeeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ROLLBACK_SUCCEEDED', traits: {"smithy.api#enumValue" => "ROLLBACK_SUCCEEDED"}))
    OperationSummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>A unique ID of this operation. It's unique in the scope of the App Runner service.</p>"}))
    OperationSummary.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: OperationType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of operation. It indicates a specific action that occured.</p>"}))
    OperationSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: OperationStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The current state of the operation.</p>"}))
    OperationSummary.add_member(:target_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AppRunnerResourceArn, location_name: 'TargetArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource that the operation acted on (for example, an App Runner service).</p>"}))
    OperationSummary.add_member(:started_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'StartedAt', traits: {"smithy.api#documentation" => "<p>The time when the operation started. It's in the Unix time stamp format.</p>"}))
    OperationSummary.add_member(:ended_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'EndedAt', traits: {"smithy.api#documentation" => "<p>The time when the operation ended. It's in the Unix time stamp format.</p>"}))
    OperationSummary.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'UpdatedAt', traits: {"smithy.api#documentation" => "<p>The time when the operation was last updated. It's in the Unix time stamp format.</p>"}))
    OperationSummary.type = Types::OperationSummary
    OperationSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: OperationSummary)
    OperationType.add_member(:start_deployment, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'START_DEPLOYMENT', traits: {"smithy.api#enumValue" => "START_DEPLOYMENT"}))
    OperationType.add_member(:create_service, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATE_SERVICE', traits: {"smithy.api#enumValue" => "CREATE_SERVICE"}))
    OperationType.add_member(:pause_service, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PAUSE_SERVICE', traits: {"smithy.api#enumValue" => "PAUSE_SERVICE"}))
    OperationType.add_member(:resume_service, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESUME_SERVICE', traits: {"smithy.api#enumValue" => "RESUME_SERVICE"}))
    OperationType.add_member(:delete_service, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETE_SERVICE', traits: {"smithy.api#enumValue" => "DELETE_SERVICE"}))
    OperationType.add_member(:update_service, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATE_SERVICE', traits: {"smithy.api#enumValue" => "UPDATE_SERVICE"}))
    PauseServiceRequest.add_member(:service_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AppRunnerResourceArn, location_name: 'ServiceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the App Runner service that you want to pause.</p>", "smithy.api#required" => {}}))
    PauseServiceRequest.type = Types::PauseServiceRequest
    PauseServiceResponse.add_member(:service, Smithy::Schema::Shapes::ShapeRef.new(shape: Service, location_name: 'Service', traits: {"smithy.api#documentation" => "<p>A description of the App Runner service that this request just paused.</p>", "smithy.api#required" => {}}))
    PauseServiceResponse.add_member(:operation_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'OperationId', traits: {"smithy.api#documentation" => "<p>The unique ID of the asynchronous operation that this request started. You can use it combined with the <a>ListOperations</a> call to track\n      the operation's progress.</p>"}))
    PauseServiceResponse.type = Types::PauseServiceResponse
    ProviderType.add_member(:github, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GITHUB', traits: {"smithy.api#enumValue" => "GITHUB"}))
    ProviderType.add_member(:bitbucket, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BITBUCKET', traits: {"smithy.api#enumValue" => "BITBUCKET"}))
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResumeServiceRequest.add_member(:service_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AppRunnerResourceArn, location_name: 'ServiceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the App Runner service that you want to resume.</p>", "smithy.api#required" => {}}))
    ResumeServiceRequest.type = Types::ResumeServiceRequest
    ResumeServiceResponse.add_member(:service, Smithy::Schema::Shapes::ShapeRef.new(shape: Service, location_name: 'Service', traits: {"smithy.api#documentation" => "<p>A description of the App Runner service that this request just resumed.</p>", "smithy.api#required" => {}}))
    ResumeServiceResponse.add_member(:operation_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'OperationId', traits: {"smithy.api#documentation" => "<p>The unique ID of the asynchronous operation that this request started. You can use it combined with the <a>ListOperations</a> call to track\n      the operation's progress.</p>"}))
    ResumeServiceResponse.type = Types::ResumeServiceResponse
    Runtime.add_member(:python_3, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PYTHON_3', traits: {"smithy.api#enumValue" => "PYTHON_3"}))
    Runtime.add_member(:nodejs_12, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NODEJS_12', traits: {"smithy.api#enumValue" => "NODEJS_12"}))
    Runtime.add_member(:nodejs_14, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NODEJS_14', traits: {"smithy.api#enumValue" => "NODEJS_14"}))
    Runtime.add_member(:corretto_8, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CORRETTO_8', traits: {"smithy.api#enumValue" => "CORRETTO_8"}))
    Runtime.add_member(:corretto_11, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CORRETTO_11', traits: {"smithy.api#enumValue" => "CORRETTO_11"}))
    Runtime.add_member(:nodejs_16, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NODEJS_16', traits: {"smithy.api#enumValue" => "NODEJS_16"}))
    Runtime.add_member(:go_1, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GO_1', traits: {"smithy.api#enumValue" => "GO_1"}))
    Runtime.add_member(:dotnet_6, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DOTNET_6', traits: {"smithy.api#enumValue" => "DOTNET_6"}))
    Runtime.add_member(:php_81, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PHP_81', traits: {"smithy.api#enumValue" => "PHP_81"}))
    Runtime.add_member(:ruby_31, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RUBY_31', traits: {"smithy.api#enumValue" => "RUBY_31"}))
    Runtime.add_member(:python_311, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PYTHON_311', traits: {"smithy.api#enumValue" => "PYTHON_311"}))
    Runtime.add_member(:nodejs_18, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NODEJS_18', traits: {"smithy.api#enumValue" => "NODEJS_18"}))
    Runtime.add_member(:nodejs_22, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NODEJS_22', traits: {"smithy.api#enumValue" => "NODEJS_22"}))
    RuntimeEnvironmentSecrets.key = Smithy::Schema::Shapes::ShapeRef.new(shape: RuntimeEnvironmentSecretsName)
    RuntimeEnvironmentSecrets.value = Smithy::Schema::Shapes::ShapeRef.new(shape: RuntimeEnvironmentSecretsValue)
    RuntimeEnvironmentVariables.key = Smithy::Schema::Shapes::ShapeRef.new(shape: RuntimeEnvironmentVariablesKey)
    RuntimeEnvironmentVariables.value = Smithy::Schema::Shapes::ShapeRef.new(shape: RuntimeEnvironmentVariablesValue)
    Service.add_member(:service_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceName, location_name: 'ServiceName', traits: {"smithy.api#documentation" => "<p>The customer-provided service name.</p>", "smithy.api#required" => {}}))
    Service.add_member(:service_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceId, location_name: 'ServiceId', traits: {"smithy.api#documentation" => "<p>An ID that App Runner generated for this service. It's unique within the Amazon Web Services Region.</p>", "smithy.api#required" => {}}))
    Service.add_member(:service_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AppRunnerResourceArn, location_name: 'ServiceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of this service.</p>", "smithy.api#required" => {}}))
    Service.add_member(:service_url, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ServiceUrl', traits: {"smithy.api#documentation" => "<p>A subdomain URL that App Runner generated for this service. You can use this URL to access your service web application.</p>"}))
    Service.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p>The time when the App Runner service was created. It's in the Unix time stamp format.</p>", "smithy.api#required" => {}}))
    Service.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'UpdatedAt', traits: {"smithy.api#documentation" => "<p>The time when the App Runner service was last updated at. It's in the Unix time stamp format.</p>", "smithy.api#required" => {}}))
    Service.add_member(:deleted_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'DeletedAt', traits: {"smithy.api#documentation" => "<p>The time when the App Runner service was deleted. It's in the Unix time stamp format.</p>"}))
    Service.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The current state of the App Runner service. These particular values mean the following.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>CREATE_FAILED</code> – The service failed to create. The failed service isn't usable, and still counts towards your service quota. To\n          troubleshoot this failure, read the failure events and logs, change any parameters that need to be fixed, and rebuild your service using\n            <code>UpdateService</code>.</p>\n            </li>\n            <li>\n               <p>\n                  <code>DELETE_FAILED</code> – The service failed to delete and can't be successfully recovered. Retry the service deletion call to ensure\n          that all related resources are removed.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    Service.add_member(:source_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceConfiguration, location_name: 'SourceConfiguration', traits: {"smithy.api#documentation" => "<p>The source deployed to the App Runner service. It can be a code or an image repository.</p>", "smithy.api#required" => {}}))
    Service.add_member(:instance_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceConfiguration, location_name: 'InstanceConfiguration', traits: {"smithy.api#documentation" => "<p>The runtime configuration of instances (scaling units) of this service.</p>", "smithy.api#required" => {}}))
    Service.add_member(:encryption_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionConfiguration, location_name: 'EncryptionConfiguration', traits: {"smithy.api#documentation" => "<p>The encryption key that App Runner uses to encrypt the service logs and the copy of the source repository that App Runner maintains for the service. It can be\n      either a customer-provided encryption key or an Amazon Web Services managed key.</p>"}))
    Service.add_member(:health_check_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: HealthCheckConfiguration, location_name: 'HealthCheckConfiguration', traits: {"smithy.api#documentation" => "<p>The settings for the health check that App Runner performs to monitor the health of this service.</p>"}))
    Service.add_member(:auto_scaling_configuration_summary, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoScalingConfigurationSummary, location_name: 'AutoScalingConfigurationSummary', traits: {"smithy.api#documentation" => "<p>Summary information for the App Runner automatic scaling configuration resource that's associated with this service.</p>", "smithy.api#required" => {}}))
    Service.add_member(:network_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkConfiguration, location_name: 'NetworkConfiguration', traits: {"smithy.api#documentation" => "<p>Configuration settings related to network traffic of the web application that this service runs.</p>", "smithy.api#required" => {}}))
    Service.add_member(:observability_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceObservabilityConfiguration, location_name: 'ObservabilityConfiguration', traits: {"smithy.api#documentation" => "<p>The observability configuration of this service.</p>"}))
    Service.type = Types::Service
    ServiceArnList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AppRunnerResourceArn)
    ServiceObservabilityConfiguration.add_member(:observability_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'ObservabilityEnabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>When <code>true</code>, an observability configuration resource is associated with the service, and an <code>ObservabilityConfigurationArn</code> is\n      specified.</p>", "smithy.api#required" => {}}))
    ServiceObservabilityConfiguration.add_member(:observability_configuration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AppRunnerResourceArn, location_name: 'ObservabilityConfigurationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the observability configuration that is associated with the service. Specified only when\n        <code>ObservabilityEnabled</code> is <code>true</code>.</p>\n         <p>Specify an ARN with a name and a revision number to associate that revision. For example:\n        <code>arn:aws:apprunner:us-east-1:123456789012:observabilityconfiguration/xray-tracing/3</code>\n         </p>\n         <p>Specify just the name to associate the latest revision. For example:\n        <code>arn:aws:apprunner:us-east-1:123456789012:observabilityconfiguration/xray-tracing</code>\n         </p>"}))
    ServiceObservabilityConfiguration.type = Types::ServiceObservabilityConfiguration
    ServiceQuotaExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    ServiceStatus.add_member(:create_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATE_FAILED', traits: {"smithy.api#enumValue" => "CREATE_FAILED"}))
    ServiceStatus.add_member(:running, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RUNNING', traits: {"smithy.api#enumValue" => "RUNNING"}))
    ServiceStatus.add_member(:deleted, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETED', traits: {"smithy.api#enumValue" => "DELETED"}))
    ServiceStatus.add_member(:delete_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETE_FAILED', traits: {"smithy.api#enumValue" => "DELETE_FAILED"}))
    ServiceStatus.add_member(:paused, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PAUSED', traits: {"smithy.api#enumValue" => "PAUSED"}))
    ServiceStatus.add_member(:operation_in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OPERATION_IN_PROGRESS', traits: {"smithy.api#enumValue" => "OPERATION_IN_PROGRESS"}))
    ServiceSummary.add_member(:service_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceName, location_name: 'ServiceName', traits: {"smithy.api#documentation" => "<p>The customer-provided service name.</p>"}))
    ServiceSummary.add_member(:service_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceId, location_name: 'ServiceId', traits: {"smithy.api#documentation" => "<p>An ID that App Runner generated for this service. It's unique within the Amazon Web Services Region.</p>"}))
    ServiceSummary.add_member(:service_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AppRunnerResourceArn, location_name: 'ServiceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of this service.</p>"}))
    ServiceSummary.add_member(:service_url, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ServiceUrl', traits: {"smithy.api#documentation" => "<p>A subdomain URL that App Runner generated for this service. You can use this URL to access your service web application.</p>"}))
    ServiceSummary.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p>The time when the App Runner service was created. It's in the Unix time stamp format.</p>"}))
    ServiceSummary.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'UpdatedAt', traits: {"smithy.api#documentation" => "<p>The time when the App Runner service was last updated. It's in theUnix time stamp format.</p>"}))
    ServiceSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The current state of the App Runner service. These particular values mean the following.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>CREATE_FAILED</code> – The service failed to create. The failed service isn't usable, and still counts towards your service quota. To\n          troubleshoot this failure, read the failure events and logs, change any parameters that need to be fixed, and rebuild your service using\n            <code>UpdateService</code>.</p>\n            </li>\n            <li>\n               <p>\n                  <code>DELETE_FAILED</code> – The service failed to delete and can't be successfully recovered. Retry the service deletion call to ensure\n          that all related resources are removed.</p>\n            </li>\n         </ul>"}))
    ServiceSummary.type = Types::ServiceSummary
    ServiceSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceSummary)
    SourceCodeVersion.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceCodeVersionType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of version identifier.</p>\n         <p>For a git-based repository, branches represent versions.</p>", "smithy.api#required" => {}}))
    SourceCodeVersion.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>A source code version.</p>\n         <p>For a git-based repository, a branch name maps to a specific version. App Runner uses the most recent commit to the branch.</p>", "smithy.api#required" => {}}))
    SourceCodeVersion.type = Types::SourceCodeVersion
    SourceCodeVersionType.add_member(:branch, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BRANCH', traits: {"smithy.api#enumValue" => "BRANCH"}))
    SourceConfiguration.add_member(:code_repository, Smithy::Schema::Shapes::ShapeRef.new(shape: CodeRepository, location_name: 'CodeRepository', traits: {"smithy.api#documentation" => "<p>The description of a source code\n      repository.</p>\n         <p>You must provide either this member or <code>ImageRepository</code> (but not both).</p>"}))
    SourceConfiguration.add_member(:image_repository, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageRepository, location_name: 'ImageRepository', traits: {"smithy.api#documentation" => "<p>The description of a source image\n      repository.</p>\n         <p>You must provide either this member or <code>CodeRepository</code> (but not both).</p>"}))
    SourceConfiguration.add_member(:auto_deployments_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBoolean, location_name: 'AutoDeploymentsEnabled', traits: {"smithy.api#documentation" => "<p>If <code>true</code>, continuous integration from the source repository is enabled for the App Runner service. Each repository change (including any source\n      code commit or new image version) starts a deployment.</p>\n         <p>Default: App Runner sets to <code>false</code> for a source image that uses an ECR Public repository or an ECR repository that's in an Amazon Web Services account other than the one that the service is in. App Runner sets to <code>true</code> in all other cases (which currently include a source code\n      repository or a source image using a same-account ECR repository).</p>"}))
    SourceConfiguration.add_member(:authentication_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationConfiguration, location_name: 'AuthenticationConfiguration', traits: {"smithy.api#documentation" => "<p>Describes the resources that are needed to authenticate access to some source repositories.</p>"}))
    SourceConfiguration.type = Types::SourceConfiguration
    StartDeploymentRequest.add_member(:service_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AppRunnerResourceArn, location_name: 'ServiceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the App Runner service that you want to manually deploy to.</p>", "smithy.api#required" => {}}))
    StartDeploymentRequest.type = Types::StartDeploymentRequest
    StartDeploymentResponse.add_member(:operation_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'OperationId', traits: {"smithy.api#documentation" => "<p>The unique ID of the asynchronous operation that this request started. You can use it combined with the <a>ListOperations</a> call to track\n      the operation's progress.</p>", "smithy.api#required" => {}}))
    StartDeploymentResponse.type = Types::StartDeploymentResponse
    StringList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    Tag.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'Key', traits: {"smithy.api#documentation" => "<p>The key of the tag.</p>"}))
    Tag.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>The value of the tag.</p>"}))
    Tag.type = Types::Tag
    TagKeyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    TagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AppRunnerResourceArn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource that you want to update tags for.</p>\n         <p>It must be the ARN of an App Runner resource.</p>", "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A list of tag key-value pairs to add or update. If a key is new to the resource, the tag is added with the provided value. If a key is already\n      associated with the resource, the value of the tag is updated.</p>", "smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    TraceConfiguration.add_member(:vendor, Smithy::Schema::Shapes::ShapeRef.new(shape: TracingVendor, location_name: 'Vendor', traits: {"smithy.api#documentation" => "<p>The implementation provider chosen for tracing App Runner services.</p>", "smithy.api#required" => {}}))
    TraceConfiguration.type = Types::TraceConfiguration
    TracingVendor.add_member(:awsxray, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWSXRAY', traits: {"smithy.api#enumValue" => "AWSXRAY"}))
    UntagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AppRunnerResourceArn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource that you want to remove tags from.</p>\n         <p>It must be the ARN of an App Runner resource.</p>", "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'TagKeys', traits: {"smithy.api#documentation" => "<p>A list of tag keys that you want to remove.</p>", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateDefaultAutoScalingConfigurationRequest.add_member(:auto_scaling_configuration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AppRunnerResourceArn, location_name: 'AutoScalingConfigurationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the App Runner auto scaling configuration that you want to set as the default.</p>\n         <p>The ARN can be a full auto scaling configuration ARN, or a partial ARN ending with either <code>.../<i>name</i>\n            </code> or\n          <code>.../<i>name</i>/<i>revision</i>\n            </code>. If a revision isn't specified, the latest active revision is set as the\n      default.</p>", "smithy.api#required" => {}}))
    UpdateDefaultAutoScalingConfigurationRequest.type = Types::UpdateDefaultAutoScalingConfigurationRequest
    UpdateDefaultAutoScalingConfigurationResponse.add_member(:auto_scaling_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoScalingConfiguration, location_name: 'AutoScalingConfiguration', traits: {"smithy.api#documentation" => "<p>A description of the App Runner auto scaling configuration that was set as default.</p>", "smithy.api#required" => {}}))
    UpdateDefaultAutoScalingConfigurationResponse.type = Types::UpdateDefaultAutoScalingConfigurationResponse
    UpdateServiceRequest.add_member(:service_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AppRunnerResourceArn, location_name: 'ServiceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the App Runner service that you want to update.</p>", "smithy.api#required" => {}}))
    UpdateServiceRequest.add_member(:source_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceConfiguration, location_name: 'SourceConfiguration', traits: {"smithy.api#documentation" => "<p>The source configuration to apply to the App Runner service.</p>\n         <p>You can change the configuration of the code or image repository that the service uses. However, you can't switch from code to image or the other way\n      around. This means that you must provide the same structure member of <code>SourceConfiguration</code> that you originally included when you created the\n      service. Specifically, you can include either <code>CodeRepository</code> or <code>ImageRepository</code>. To update the source configuration, set the\n      values to members of the structure that you include.</p>"}))
    UpdateServiceRequest.add_member(:instance_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceConfiguration, location_name: 'InstanceConfiguration', traits: {"smithy.api#documentation" => "<p>The runtime configuration to apply to instances (scaling units) of your service.</p>"}))
    UpdateServiceRequest.add_member(:auto_scaling_configuration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AppRunnerResourceArn, location_name: 'AutoScalingConfigurationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of an App Runner automatic scaling configuration resource that you want to associate with the App Runner service.</p>"}))
    UpdateServiceRequest.add_member(:health_check_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: HealthCheckConfiguration, location_name: 'HealthCheckConfiguration', traits: {"smithy.api#documentation" => "<p>The settings for the health check that App Runner performs to monitor the health of the App Runner service.</p>"}))
    UpdateServiceRequest.add_member(:network_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkConfiguration, location_name: 'NetworkConfiguration', traits: {"smithy.api#documentation" => "<p>Configuration settings related to network traffic of the web application that the App Runner service runs.</p>"}))
    UpdateServiceRequest.add_member(:observability_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceObservabilityConfiguration, location_name: 'ObservabilityConfiguration', traits: {"smithy.api#documentation" => "<p>The observability configuration of your service.</p>"}))
    UpdateServiceRequest.type = Types::UpdateServiceRequest
    UpdateServiceResponse.add_member(:service, Smithy::Schema::Shapes::ShapeRef.new(shape: Service, location_name: 'Service', traits: {"smithy.api#documentation" => "<p>A description of the App Runner service updated by this request. All configuration values in the returned <code>Service</code> structure reflect\n      configuration changes that are being applied by this request.</p>", "smithy.api#required" => {}}))
    UpdateServiceResponse.add_member(:operation_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'OperationId', traits: {"smithy.api#documentation" => "<p>The unique ID of the asynchronous operation that this request started. You can use it combined with the <a>ListOperations</a> call to track\n      the operation's progress.</p>", "smithy.api#required" => {}}))
    UpdateServiceResponse.type = Types::UpdateServiceResponse
    UpdateVpcIngressConnectionRequest.add_member(:vpc_ingress_connection_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AppRunnerResourceArn, location_name: 'VpcIngressConnectionArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (Arn) for the App Runner VPC Ingress Connection resource that you want to update.</p>", "smithy.api#required" => {}}))
    UpdateVpcIngressConnectionRequest.add_member(:ingress_vpc_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: IngressVpcConfiguration, location_name: 'IngressVpcConfiguration', traits: {"smithy.api#documentation" => "<p>Specifications for the customer’s Amazon VPC and the related Amazon Web Services PrivateLink VPC endpoint that are used to update the VPC Ingress Connection\n      resource.</p>", "smithy.api#required" => {}}))
    UpdateVpcIngressConnectionRequest.type = Types::UpdateVpcIngressConnectionRequest
    UpdateVpcIngressConnectionResponse.add_member(:vpc_ingress_connection, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcIngressConnection, location_name: 'VpcIngressConnection', traits: {"smithy.api#documentation" => "<p>A description of the App Runner VPC Ingress Connection resource that's updated by this request.</p>", "smithy.api#required" => {}}))
    UpdateVpcIngressConnectionResponse.type = Types::UpdateVpcIngressConnectionResponse
    VpcConnector.add_member(:vpc_connector_name, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcConnectorName, location_name: 'VpcConnectorName', traits: {"smithy.api#documentation" => "<p>The customer-provided VPC connector name.</p>"}))
    VpcConnector.add_member(:vpc_connector_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AppRunnerResourceArn, location_name: 'VpcConnectorArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of this VPC connector.</p>"}))
    VpcConnector.add_member(:vpc_connector_revision, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'VpcConnectorRevision', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The revision of this VPC connector. It's unique among all the active connectors (<code>\"Status\": \"ACTIVE\"</code>) that share the same\n      <code>Name</code>.</p>\n         <note>\n            <p>At this time, App Runner supports only one revision per name.</p>\n         </note>"}))
    VpcConnector.add_member(:subnets, Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'Subnets', traits: {"smithy.api#documentation" => "<p>A list of IDs of subnets that App Runner uses for your service. All IDs are of subnets of a single Amazon VPC.</p>"}))
    VpcConnector.add_member(:security_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'SecurityGroups', traits: {"smithy.api#documentation" => "<p>A list of IDs of security groups that App Runner uses for access to Amazon Web Services resources under the specified subnets. If not specified, App Runner uses the default\n      security group of the Amazon VPC. The default security group allows all outbound traffic.</p>"}))
    VpcConnector.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcConnectorStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The current state of the VPC connector. If the status of a connector revision is <code>INACTIVE</code>, it was deleted and can't be\n      used. Inactive connector revisions are permanently removed some time after they are deleted.</p>"}))
    VpcConnector.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p>The time when the VPC connector was created. It's in Unix time stamp format.</p>"}))
    VpcConnector.add_member(:deleted_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'DeletedAt', traits: {"smithy.api#documentation" => "<p>The time when the VPC connector was deleted. It's in Unix time stamp format.</p>"}))
    VpcConnector.type = Types::VpcConnector
    VpcConnectorStatus.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    VpcConnectorStatus.add_member(:inactive, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INACTIVE', traits: {"smithy.api#enumValue" => "INACTIVE"}))
    VpcConnectors.member = Smithy::Schema::Shapes::ShapeRef.new(shape: VpcConnector)
    VpcDNSTarget.add_member(:vpc_ingress_connection_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AppRunnerResourceArn, location_name: 'VpcIngressConnectionArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the VPC Ingress Connection that is associated with your service.</p>"}))
    VpcDNSTarget.add_member(:vpc_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VpcId', traits: {"smithy.api#documentation" => "<p>The ID of the Amazon VPC that is associated with the custom domain name of the target DNS.</p>"}))
    VpcDNSTarget.add_member(:domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName', traits: {"smithy.api#documentation" => "<p>The domain name of your target DNS that is associated with the Amazon VPC.</p>"}))
    VpcDNSTarget.type = Types::VpcDNSTarget
    VpcDNSTargetList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: VpcDNSTarget)
    VpcIngressConnection.add_member(:vpc_ingress_connection_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AppRunnerResourceArn, location_name: 'VpcIngressConnectionArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the VPC Ingress Connection.\n    </p>"}))
    VpcIngressConnection.add_member(:vpc_ingress_connection_name, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcIngressConnectionName, location_name: 'VpcIngressConnectionName', traits: {"smithy.api#documentation" => "<p>The customer-provided VPC Ingress Connection name.</p>"}))
    VpcIngressConnection.add_member(:service_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AppRunnerResourceArn, location_name: 'ServiceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the service associated with the VPC Ingress Connection.\n    </p>"}))
    VpcIngressConnection.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcIngressConnectionStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The current status of the VPC Ingress Connection. \n      The VPC Ingress Connection displays one of the following statuses: <code>AVAILABLE</code>, <code>PENDING_CREATION</code>, <code>PENDING_UPDATE</code>, <code>PENDING_DELETION</code>,<code>FAILED_CREATION</code>, <code>FAILED_UPDATE</code>, <code>FAILED_DELETION</code>, and <code>DELETED</code>..\n    </p>"}))
    VpcIngressConnection.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerAccountId, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>The Account Id you use to create the VPC Ingress Connection resource.</p>"}))
    VpcIngressConnection.add_member(:domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName', traits: {"smithy.api#documentation" => "<p>The domain name associated with the VPC Ingress Connection resource.</p>"}))
    VpcIngressConnection.add_member(:ingress_vpc_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: IngressVpcConfiguration, location_name: 'IngressVpcConfiguration', traits: {"smithy.api#documentation" => "<p>Specifications for the customer’s VPC and related PrivateLink VPC endpoint that are used to associate with the VPC Ingress Connection resource.</p>"}))
    VpcIngressConnection.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p>The time when the VPC Ingress Connection was created. It's in the Unix time stamp format.</p>\n         <ul>\n            <li>\n               <p>\n            Type: Timestamp \n          </p>\n            </li>\n            <li>\n               <p>\n            Required: Yes\n          </p>\n            </li>\n         </ul>"}))
    VpcIngressConnection.add_member(:deleted_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'DeletedAt', traits: {"smithy.api#documentation" => "<p>The time when the App Runner service was deleted. It's in the Unix time stamp format.</p>\n         <ul>\n            <li>\n               <p>\n          Type: Timestamp \n        </p>\n            </li>\n            <li>\n               <p>\n          Required: No\n        </p>\n            </li>\n         </ul>"}))
    VpcIngressConnection.type = Types::VpcIngressConnection
    VpcIngressConnectionStatus.add_member(:available, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AVAILABLE', traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    VpcIngressConnectionStatus.add_member(:pending_creation, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING_CREATION', traits: {"smithy.api#enumValue" => "PENDING_CREATION"}))
    VpcIngressConnectionStatus.add_member(:pending_update, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING_UPDATE', traits: {"smithy.api#enumValue" => "PENDING_UPDATE"}))
    VpcIngressConnectionStatus.add_member(:pending_deletion, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING_DELETION', traits: {"smithy.api#enumValue" => "PENDING_DELETION"}))
    VpcIngressConnectionStatus.add_member(:failed_creation, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED_CREATION', traits: {"smithy.api#enumValue" => "FAILED_CREATION"}))
    VpcIngressConnectionStatus.add_member(:failed_update, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED_UPDATE', traits: {"smithy.api#enumValue" => "FAILED_UPDATE"}))
    VpcIngressConnectionStatus.add_member(:failed_deletion, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED_DELETION', traits: {"smithy.api#enumValue" => "FAILED_DELETION"}))
    VpcIngressConnectionStatus.add_member(:deleted, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETED', traits: {"smithy.api#enumValue" => "DELETED"}))
    VpcIngressConnectionSummary.add_member(:vpc_ingress_connection_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AppRunnerResourceArn, location_name: 'VpcIngressConnectionArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the VPC Ingress Connection.\n    </p>"}))
    VpcIngressConnectionSummary.add_member(:service_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AppRunnerResourceArn, location_name: 'ServiceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the service associated with the VPC Ingress Connection.\n    </p>"}))
    VpcIngressConnectionSummary.type = Types::VpcIngressConnectionSummary
    VpcIngressConnectionSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: VpcIngressConnectionSummary)

    AppRunner = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.apprunner#AppRunner"
      service.name = "AppRunner"
      service.version = "2020-05-15"
      service.traits = {"aws.api#service" => {"sdkId" => "AppRunner", "arnNamespace" => "apprunner", "cloudFormationName" => "AppRunner", "cloudTrailEventSource" => "apprunner.amazonaws.com", "endpointPrefix" => "apprunner"}, "aws.auth#sigv4" => {"name" => "apprunner"}, "aws.protocols#awsJson1_0" => {}, "smithy.api#title" => "AWS App Runner", "smithy.api#xmlNamespace" => {"uri" => "http://apprunner.amazonaws.com/doc/2020-05-15/"}}
      service.add_operation(:associate_custom_domain, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apprunner#AssociateCustomDomain"
        operation.name = "AssociateCustomDomain"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateCustomDomainRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateCustomDomainResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidStateException)
        operation.traits = {}
      end)
      service.add_operation(:create_auto_scaling_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apprunner#CreateAutoScalingConfiguration"
        operation.name = "CreateAutoScalingConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAutoScalingConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAutoScalingConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.traits = {}
      end)
      service.add_operation(:create_connection, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apprunner#CreateConnection"
        operation.name = "CreateConnection"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateConnectionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateConnectionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.traits = {}
      end)
      service.add_operation(:create_observability_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apprunner#CreateObservabilityConfiguration"
        operation.name = "CreateObservabilityConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateObservabilityConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateObservabilityConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.traits = {}
      end)
      service.add_operation(:create_service, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apprunner#CreateService"
        operation.name = "CreateService"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateServiceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateServiceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.traits = {}
      end)
      service.add_operation(:create_vpc_connector, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apprunner#CreateVpcConnector"
        operation.name = "CreateVpcConnector"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateVpcConnectorRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateVpcConnectorResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.traits = {}
      end)
      service.add_operation(:create_vpc_ingress_connection, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apprunner#CreateVpcIngressConnection"
        operation.name = "CreateVpcIngressConnection"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateVpcIngressConnectionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateVpcIngressConnectionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.traits = {}
      end)
      service.add_operation(:delete_auto_scaling_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apprunner#DeleteAutoScalingConfiguration"
        operation.name = "DeleteAutoScalingConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAutoScalingConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAutoScalingConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:delete_connection, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apprunner#DeleteConnection"
        operation.name = "DeleteConnection"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteConnectionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteConnectionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:delete_observability_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apprunner#DeleteObservabilityConfiguration"
        operation.name = "DeleteObservabilityConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteObservabilityConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteObservabilityConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:delete_service, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apprunner#DeleteService"
        operation.name = "DeleteService"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteServiceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteServiceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:delete_vpc_connector, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apprunner#DeleteVpcConnector"
        operation.name = "DeleteVpcConnector"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteVpcConnectorRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteVpcConnectorResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:delete_vpc_ingress_connection, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apprunner#DeleteVpcIngressConnection"
        operation.name = "DeleteVpcIngressConnection"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteVpcIngressConnectionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteVpcIngressConnectionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:describe_auto_scaling_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apprunner#DescribeAutoScalingConfiguration"
        operation.name = "DescribeAutoScalingConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAutoScalingConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAutoScalingConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:describe_custom_domains, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apprunner#DescribeCustomDomains"
        operation.name = "DescribeCustomDomains"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeCustomDomainsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeCustomDomainsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeCustomDomains.new
      end)
      service.add_operation(:describe_observability_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apprunner#DescribeObservabilityConfiguration"
        operation.name = "DescribeObservabilityConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeObservabilityConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeObservabilityConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:describe_service, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apprunner#DescribeService"
        operation.name = "DescribeService"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeServiceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeServiceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:describe_vpc_connector, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apprunner#DescribeVpcConnector"
        operation.name = "DescribeVpcConnector"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeVpcConnectorRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeVpcConnectorResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:describe_vpc_ingress_connection, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apprunner#DescribeVpcIngressConnection"
        operation.name = "DescribeVpcIngressConnection"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeVpcIngressConnectionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeVpcIngressConnectionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:disassociate_custom_domain, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apprunner#DisassociateCustomDomain"
        operation.name = "DisassociateCustomDomain"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateCustomDomainRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateCustomDomainResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:list_auto_scaling_configurations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apprunner#ListAutoScalingConfigurations"
        operation.name = "ListAutoScalingConfigurations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAutoScalingConfigurationsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAutoScalingConfigurationsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListAutoScalingConfigurations.new
      end)
      service.add_operation(:list_connections, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apprunner#ListConnections"
        operation.name = "ListConnections"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListConnectionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListConnectionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListConnections.new
      end)
      service.add_operation(:list_observability_configurations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apprunner#ListObservabilityConfigurations"
        operation.name = "ListObservabilityConfigurations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListObservabilityConfigurationsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListObservabilityConfigurationsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListObservabilityConfigurations.new
      end)
      service.add_operation(:list_operations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apprunner#ListOperations"
        operation.name = "ListOperations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListOperationsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListOperationsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListOperations.new
      end)
      service.add_operation(:list_services, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apprunner#ListServices"
        operation.name = "ListServices"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListServicesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListServicesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListServices.new
      end)
      service.add_operation(:list_services_for_auto_scaling_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apprunner#ListServicesForAutoScalingConfiguration"
        operation.name = "ListServicesForAutoScalingConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListServicesForAutoScalingConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListServicesForAutoScalingConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListServicesForAutoScalingConfiguration.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apprunner#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:list_vpc_connectors, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apprunner#ListVpcConnectors"
        operation.name = "ListVpcConnectors"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListVpcConnectorsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListVpcConnectorsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListVpcConnectors.new
      end)
      service.add_operation(:list_vpc_ingress_connections, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apprunner#ListVpcIngressConnections"
        operation.name = "ListVpcIngressConnections"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListVpcIngressConnectionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListVpcIngressConnectionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListVpcIngressConnections.new
      end)
      service.add_operation(:pause_service, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apprunner#PauseService"
        operation.name = "PauseService"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PauseServiceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PauseServiceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:resume_service, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apprunner#ResumeService"
        operation.name = "ResumeService"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ResumeServiceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ResumeServiceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:start_deployment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apprunner#StartDeployment"
        operation.name = "StartDeployment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartDeploymentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartDeploymentResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apprunner#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apprunner#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:update_default_auto_scaling_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apprunner#UpdateDefaultAutoScalingConfiguration"
        operation.name = "UpdateDefaultAutoScalingConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDefaultAutoScalingConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDefaultAutoScalingConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:update_service, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apprunner#UpdateService"
        operation.name = "UpdateService"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateServiceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateServiceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:update_vpc_ingress_connection, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apprunner#UpdateVpcIngressConnection"
        operation.name = "UpdateVpcIngressConnection"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateVpcIngressConnectionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateVpcIngressConnectionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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
