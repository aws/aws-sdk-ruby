# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::AppRunner
  # @api private
  module ClientApi

    include Seahorse::Model

    ASConfigMaxConcurrency = Shapes::IntegerShape.new(name: 'ASConfigMaxConcurrency')
    ASConfigMaxSize = Shapes::IntegerShape.new(name: 'ASConfigMaxSize')
    ASConfigMinSize = Shapes::IntegerShape.new(name: 'ASConfigMinSize')
    AppRunnerResourceArn = Shapes::StringShape.new(name: 'AppRunnerResourceArn')
    AssociateCustomDomainRequest = Shapes::StructureShape.new(name: 'AssociateCustomDomainRequest')
    AssociateCustomDomainResponse = Shapes::StructureShape.new(name: 'AssociateCustomDomainResponse')
    AuthenticationConfiguration = Shapes::StructureShape.new(name: 'AuthenticationConfiguration')
    AutoScalingConfiguration = Shapes::StructureShape.new(name: 'AutoScalingConfiguration')
    AutoScalingConfigurationName = Shapes::StringShape.new(name: 'AutoScalingConfigurationName')
    AutoScalingConfigurationStatus = Shapes::StringShape.new(name: 'AutoScalingConfigurationStatus')
    AutoScalingConfigurationSummary = Shapes::StructureShape.new(name: 'AutoScalingConfigurationSummary')
    AutoScalingConfigurationSummaryList = Shapes::ListShape.new(name: 'AutoScalingConfigurationSummaryList')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    BuildCommand = Shapes::StringShape.new(name: 'BuildCommand')
    CertificateValidationRecord = Shapes::StructureShape.new(name: 'CertificateValidationRecord')
    CertificateValidationRecordList = Shapes::ListShape.new(name: 'CertificateValidationRecordList')
    CertificateValidationRecordStatus = Shapes::StringShape.new(name: 'CertificateValidationRecordStatus')
    CodeConfiguration = Shapes::StructureShape.new(name: 'CodeConfiguration')
    CodeConfigurationValues = Shapes::StructureShape.new(name: 'CodeConfigurationValues')
    CodeRepository = Shapes::StructureShape.new(name: 'CodeRepository')
    ConfigurationSource = Shapes::StringShape.new(name: 'ConfigurationSource')
    Connection = Shapes::StructureShape.new(name: 'Connection')
    ConnectionName = Shapes::StringShape.new(name: 'ConnectionName')
    ConnectionStatus = Shapes::StringShape.new(name: 'ConnectionStatus')
    ConnectionSummary = Shapes::StructureShape.new(name: 'ConnectionSummary')
    ConnectionSummaryList = Shapes::ListShape.new(name: 'ConnectionSummaryList')
    Cpu = Shapes::StringShape.new(name: 'Cpu')
    CreateAutoScalingConfigurationRequest = Shapes::StructureShape.new(name: 'CreateAutoScalingConfigurationRequest')
    CreateAutoScalingConfigurationResponse = Shapes::StructureShape.new(name: 'CreateAutoScalingConfigurationResponse')
    CreateConnectionRequest = Shapes::StructureShape.new(name: 'CreateConnectionRequest')
    CreateConnectionResponse = Shapes::StructureShape.new(name: 'CreateConnectionResponse')
    CreateObservabilityConfigurationRequest = Shapes::StructureShape.new(name: 'CreateObservabilityConfigurationRequest')
    CreateObservabilityConfigurationResponse = Shapes::StructureShape.new(name: 'CreateObservabilityConfigurationResponse')
    CreateServiceRequest = Shapes::StructureShape.new(name: 'CreateServiceRequest')
    CreateServiceResponse = Shapes::StructureShape.new(name: 'CreateServiceResponse')
    CreateVpcConnectorRequest = Shapes::StructureShape.new(name: 'CreateVpcConnectorRequest')
    CreateVpcConnectorResponse = Shapes::StructureShape.new(name: 'CreateVpcConnectorResponse')
    CreateVpcIngressConnectionRequest = Shapes::StructureShape.new(name: 'CreateVpcIngressConnectionRequest')
    CreateVpcIngressConnectionResponse = Shapes::StructureShape.new(name: 'CreateVpcIngressConnectionResponse')
    CustomDomain = Shapes::StructureShape.new(name: 'CustomDomain')
    CustomDomainAssociationStatus = Shapes::StringShape.new(name: 'CustomDomainAssociationStatus')
    CustomDomainList = Shapes::ListShape.new(name: 'CustomDomainList')
    CustomerAccountId = Shapes::StringShape.new(name: 'CustomerAccountId')
    DeleteAutoScalingConfigurationRequest = Shapes::StructureShape.new(name: 'DeleteAutoScalingConfigurationRequest')
    DeleteAutoScalingConfigurationResponse = Shapes::StructureShape.new(name: 'DeleteAutoScalingConfigurationResponse')
    DeleteConnectionRequest = Shapes::StructureShape.new(name: 'DeleteConnectionRequest')
    DeleteConnectionResponse = Shapes::StructureShape.new(name: 'DeleteConnectionResponse')
    DeleteObservabilityConfigurationRequest = Shapes::StructureShape.new(name: 'DeleteObservabilityConfigurationRequest')
    DeleteObservabilityConfigurationResponse = Shapes::StructureShape.new(name: 'DeleteObservabilityConfigurationResponse')
    DeleteServiceRequest = Shapes::StructureShape.new(name: 'DeleteServiceRequest')
    DeleteServiceResponse = Shapes::StructureShape.new(name: 'DeleteServiceResponse')
    DeleteVpcConnectorRequest = Shapes::StructureShape.new(name: 'DeleteVpcConnectorRequest')
    DeleteVpcConnectorResponse = Shapes::StructureShape.new(name: 'DeleteVpcConnectorResponse')
    DeleteVpcIngressConnectionRequest = Shapes::StructureShape.new(name: 'DeleteVpcIngressConnectionRequest')
    DeleteVpcIngressConnectionResponse = Shapes::StructureShape.new(name: 'DeleteVpcIngressConnectionResponse')
    DescribeAutoScalingConfigurationRequest = Shapes::StructureShape.new(name: 'DescribeAutoScalingConfigurationRequest')
    DescribeAutoScalingConfigurationResponse = Shapes::StructureShape.new(name: 'DescribeAutoScalingConfigurationResponse')
    DescribeCustomDomainsMaxResults = Shapes::IntegerShape.new(name: 'DescribeCustomDomainsMaxResults')
    DescribeCustomDomainsRequest = Shapes::StructureShape.new(name: 'DescribeCustomDomainsRequest')
    DescribeCustomDomainsResponse = Shapes::StructureShape.new(name: 'DescribeCustomDomainsResponse')
    DescribeObservabilityConfigurationRequest = Shapes::StructureShape.new(name: 'DescribeObservabilityConfigurationRequest')
    DescribeObservabilityConfigurationResponse = Shapes::StructureShape.new(name: 'DescribeObservabilityConfigurationResponse')
    DescribeServiceRequest = Shapes::StructureShape.new(name: 'DescribeServiceRequest')
    DescribeServiceResponse = Shapes::StructureShape.new(name: 'DescribeServiceResponse')
    DescribeVpcConnectorRequest = Shapes::StructureShape.new(name: 'DescribeVpcConnectorRequest')
    DescribeVpcConnectorResponse = Shapes::StructureShape.new(name: 'DescribeVpcConnectorResponse')
    DescribeVpcIngressConnectionRequest = Shapes::StructureShape.new(name: 'DescribeVpcIngressConnectionRequest')
    DescribeVpcIngressConnectionResponse = Shapes::StructureShape.new(name: 'DescribeVpcIngressConnectionResponse')
    DisassociateCustomDomainRequest = Shapes::StructureShape.new(name: 'DisassociateCustomDomainRequest')
    DisassociateCustomDomainResponse = Shapes::StructureShape.new(name: 'DisassociateCustomDomainResponse')
    DomainName = Shapes::StringShape.new(name: 'DomainName')
    EgressConfiguration = Shapes::StructureShape.new(name: 'EgressConfiguration')
    EgressType = Shapes::StringShape.new(name: 'EgressType')
    EncryptionConfiguration = Shapes::StructureShape.new(name: 'EncryptionConfiguration')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    HealthCheckConfiguration = Shapes::StructureShape.new(name: 'HealthCheckConfiguration')
    HealthCheckHealthyThreshold = Shapes::IntegerShape.new(name: 'HealthCheckHealthyThreshold')
    HealthCheckInterval = Shapes::IntegerShape.new(name: 'HealthCheckInterval')
    HealthCheckPath = Shapes::StringShape.new(name: 'HealthCheckPath')
    HealthCheckProtocol = Shapes::StringShape.new(name: 'HealthCheckProtocol')
    HealthCheckTimeout = Shapes::IntegerShape.new(name: 'HealthCheckTimeout')
    HealthCheckUnhealthyThreshold = Shapes::IntegerShape.new(name: 'HealthCheckUnhealthyThreshold')
    ImageConfiguration = Shapes::StructureShape.new(name: 'ImageConfiguration')
    ImageIdentifier = Shapes::StringShape.new(name: 'ImageIdentifier')
    ImageRepository = Shapes::StructureShape.new(name: 'ImageRepository')
    ImageRepositoryType = Shapes::StringShape.new(name: 'ImageRepositoryType')
    IngressConfiguration = Shapes::StructureShape.new(name: 'IngressConfiguration')
    IngressVpcConfiguration = Shapes::StructureShape.new(name: 'IngressVpcConfiguration')
    InstanceConfiguration = Shapes::StructureShape.new(name: 'InstanceConfiguration')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServiceErrorException = Shapes::StructureShape.new(name: 'InternalServiceErrorException')
    InvalidRequestException = Shapes::StructureShape.new(name: 'InvalidRequestException')
    InvalidStateException = Shapes::StructureShape.new(name: 'InvalidStateException')
    KmsKeyArn = Shapes::StringShape.new(name: 'KmsKeyArn')
    ListAutoScalingConfigurationsRequest = Shapes::StructureShape.new(name: 'ListAutoScalingConfigurationsRequest')
    ListAutoScalingConfigurationsResponse = Shapes::StructureShape.new(name: 'ListAutoScalingConfigurationsResponse')
    ListConnectionsRequest = Shapes::StructureShape.new(name: 'ListConnectionsRequest')
    ListConnectionsResponse = Shapes::StructureShape.new(name: 'ListConnectionsResponse')
    ListObservabilityConfigurationsRequest = Shapes::StructureShape.new(name: 'ListObservabilityConfigurationsRequest')
    ListObservabilityConfigurationsResponse = Shapes::StructureShape.new(name: 'ListObservabilityConfigurationsResponse')
    ListOperationsMaxResults = Shapes::IntegerShape.new(name: 'ListOperationsMaxResults')
    ListOperationsRequest = Shapes::StructureShape.new(name: 'ListOperationsRequest')
    ListOperationsResponse = Shapes::StructureShape.new(name: 'ListOperationsResponse')
    ListServicesRequest = Shapes::StructureShape.new(name: 'ListServicesRequest')
    ListServicesResponse = Shapes::StructureShape.new(name: 'ListServicesResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    ListVpcConnectorsRequest = Shapes::StructureShape.new(name: 'ListVpcConnectorsRequest')
    ListVpcConnectorsResponse = Shapes::StructureShape.new(name: 'ListVpcConnectorsResponse')
    ListVpcIngressConnectionsFilter = Shapes::StructureShape.new(name: 'ListVpcIngressConnectionsFilter')
    ListVpcIngressConnectionsRequest = Shapes::StructureShape.new(name: 'ListVpcIngressConnectionsRequest')
    ListVpcIngressConnectionsResponse = Shapes::StructureShape.new(name: 'ListVpcIngressConnectionsResponse')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    Memory = Shapes::StringShape.new(name: 'Memory')
    NetworkConfiguration = Shapes::StructureShape.new(name: 'NetworkConfiguration')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    NullableBoolean = Shapes::BooleanShape.new(name: 'NullableBoolean')
    ObservabilityConfiguration = Shapes::StructureShape.new(name: 'ObservabilityConfiguration')
    ObservabilityConfigurationName = Shapes::StringShape.new(name: 'ObservabilityConfigurationName')
    ObservabilityConfigurationStatus = Shapes::StringShape.new(name: 'ObservabilityConfigurationStatus')
    ObservabilityConfigurationSummary = Shapes::StructureShape.new(name: 'ObservabilityConfigurationSummary')
    ObservabilityConfigurationSummaryList = Shapes::ListShape.new(name: 'ObservabilityConfigurationSummaryList')
    OperationStatus = Shapes::StringShape.new(name: 'OperationStatus')
    OperationSummary = Shapes::StructureShape.new(name: 'OperationSummary')
    OperationSummaryList = Shapes::ListShape.new(name: 'OperationSummaryList')
    OperationType = Shapes::StringShape.new(name: 'OperationType')
    PauseServiceRequest = Shapes::StructureShape.new(name: 'PauseServiceRequest')
    PauseServiceResponse = Shapes::StructureShape.new(name: 'PauseServiceResponse')
    ProviderType = Shapes::StringShape.new(name: 'ProviderType')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResumeServiceRequest = Shapes::StructureShape.new(name: 'ResumeServiceRequest')
    ResumeServiceResponse = Shapes::StructureShape.new(name: 'ResumeServiceResponse')
    RoleArn = Shapes::StringShape.new(name: 'RoleArn')
    Runtime = Shapes::StringShape.new(name: 'Runtime')
    RuntimeEnvironmentSecrets = Shapes::MapShape.new(name: 'RuntimeEnvironmentSecrets')
    RuntimeEnvironmentSecretsName = Shapes::StringShape.new(name: 'RuntimeEnvironmentSecretsName')
    RuntimeEnvironmentSecretsValue = Shapes::StringShape.new(name: 'RuntimeEnvironmentSecretsValue')
    RuntimeEnvironmentVariables = Shapes::MapShape.new(name: 'RuntimeEnvironmentVariables')
    RuntimeEnvironmentVariablesKey = Shapes::StringShape.new(name: 'RuntimeEnvironmentVariablesKey')
    RuntimeEnvironmentVariablesValue = Shapes::StringShape.new(name: 'RuntimeEnvironmentVariablesValue')
    Service = Shapes::StructureShape.new(name: 'Service')
    ServiceId = Shapes::StringShape.new(name: 'ServiceId')
    ServiceMaxResults = Shapes::IntegerShape.new(name: 'ServiceMaxResults')
    ServiceName = Shapes::StringShape.new(name: 'ServiceName')
    ServiceObservabilityConfiguration = Shapes::StructureShape.new(name: 'ServiceObservabilityConfiguration')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    ServiceStatus = Shapes::StringShape.new(name: 'ServiceStatus')
    ServiceSummary = Shapes::StructureShape.new(name: 'ServiceSummary')
    ServiceSummaryList = Shapes::ListShape.new(name: 'ServiceSummaryList')
    SourceCodeVersion = Shapes::StructureShape.new(name: 'SourceCodeVersion')
    SourceCodeVersionType = Shapes::StringShape.new(name: 'SourceCodeVersionType')
    SourceConfiguration = Shapes::StructureShape.new(name: 'SourceConfiguration')
    StartCommand = Shapes::StringShape.new(name: 'StartCommand')
    StartDeploymentRequest = Shapes::StructureShape.new(name: 'StartDeploymentRequest')
    StartDeploymentResponse = Shapes::StructureShape.new(name: 'StartDeploymentResponse')
    String = Shapes::StringShape.new(name: 'String')
    StringList = Shapes::ListShape.new(name: 'StringList')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    TraceConfiguration = Shapes::StructureShape.new(name: 'TraceConfiguration')
    TracingVendor = Shapes::StringShape.new(name: 'TracingVendor')
    UUID = Shapes::StringShape.new(name: 'UUID')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateServiceRequest = Shapes::StructureShape.new(name: 'UpdateServiceRequest')
    UpdateServiceResponse = Shapes::StructureShape.new(name: 'UpdateServiceResponse')
    UpdateVpcIngressConnectionRequest = Shapes::StructureShape.new(name: 'UpdateVpcIngressConnectionRequest')
    UpdateVpcIngressConnectionResponse = Shapes::StructureShape.new(name: 'UpdateVpcIngressConnectionResponse')
    VpcConnector = Shapes::StructureShape.new(name: 'VpcConnector')
    VpcConnectorName = Shapes::StringShape.new(name: 'VpcConnectorName')
    VpcConnectorStatus = Shapes::StringShape.new(name: 'VpcConnectorStatus')
    VpcConnectors = Shapes::ListShape.new(name: 'VpcConnectors')
    VpcDNSTarget = Shapes::StructureShape.new(name: 'VpcDNSTarget')
    VpcDNSTargetList = Shapes::ListShape.new(name: 'VpcDNSTargetList')
    VpcIngressConnection = Shapes::StructureShape.new(name: 'VpcIngressConnection')
    VpcIngressConnectionName = Shapes::StringShape.new(name: 'VpcIngressConnectionName')
    VpcIngressConnectionStatus = Shapes::StringShape.new(name: 'VpcIngressConnectionStatus')
    VpcIngressConnectionSummary = Shapes::StructureShape.new(name: 'VpcIngressConnectionSummary')
    VpcIngressConnectionSummaryList = Shapes::ListShape.new(name: 'VpcIngressConnectionSummaryList')

    AssociateCustomDomainRequest.add_member(:service_arn, Shapes::ShapeRef.new(shape: AppRunnerResourceArn, required: true, location_name: "ServiceArn"))
    AssociateCustomDomainRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "DomainName"))
    AssociateCustomDomainRequest.add_member(:enable_www_subdomain, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "EnableWWWSubdomain"))
    AssociateCustomDomainRequest.struct_class = Types::AssociateCustomDomainRequest

    AssociateCustomDomainResponse.add_member(:dns_target, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DNSTarget"))
    AssociateCustomDomainResponse.add_member(:service_arn, Shapes::ShapeRef.new(shape: AppRunnerResourceArn, required: true, location_name: "ServiceArn"))
    AssociateCustomDomainResponse.add_member(:custom_domain, Shapes::ShapeRef.new(shape: CustomDomain, required: true, location_name: "CustomDomain"))
    AssociateCustomDomainResponse.add_member(:vpc_dns_targets, Shapes::ShapeRef.new(shape: VpcDNSTargetList, required: true, location_name: "VpcDNSTargets"))
    AssociateCustomDomainResponse.struct_class = Types::AssociateCustomDomainResponse

    AuthenticationConfiguration.add_member(:connection_arn, Shapes::ShapeRef.new(shape: AppRunnerResourceArn, location_name: "ConnectionArn"))
    AuthenticationConfiguration.add_member(:access_role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "AccessRoleArn"))
    AuthenticationConfiguration.struct_class = Types::AuthenticationConfiguration

    AutoScalingConfiguration.add_member(:auto_scaling_configuration_arn, Shapes::ShapeRef.new(shape: AppRunnerResourceArn, location_name: "AutoScalingConfigurationArn"))
    AutoScalingConfiguration.add_member(:auto_scaling_configuration_name, Shapes::ShapeRef.new(shape: AutoScalingConfigurationName, location_name: "AutoScalingConfigurationName"))
    AutoScalingConfiguration.add_member(:auto_scaling_configuration_revision, Shapes::ShapeRef.new(shape: Integer, location_name: "AutoScalingConfigurationRevision"))
    AutoScalingConfiguration.add_member(:latest, Shapes::ShapeRef.new(shape: Boolean, location_name: "Latest"))
    AutoScalingConfiguration.add_member(:status, Shapes::ShapeRef.new(shape: AutoScalingConfigurationStatus, location_name: "Status"))
    AutoScalingConfiguration.add_member(:max_concurrency, Shapes::ShapeRef.new(shape: Integer, location_name: "MaxConcurrency"))
    AutoScalingConfiguration.add_member(:min_size, Shapes::ShapeRef.new(shape: Integer, location_name: "MinSize"))
    AutoScalingConfiguration.add_member(:max_size, Shapes::ShapeRef.new(shape: Integer, location_name: "MaxSize"))
    AutoScalingConfiguration.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    AutoScalingConfiguration.add_member(:deleted_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "DeletedAt"))
    AutoScalingConfiguration.struct_class = Types::AutoScalingConfiguration

    AutoScalingConfigurationSummary.add_member(:auto_scaling_configuration_arn, Shapes::ShapeRef.new(shape: AppRunnerResourceArn, location_name: "AutoScalingConfigurationArn"))
    AutoScalingConfigurationSummary.add_member(:auto_scaling_configuration_name, Shapes::ShapeRef.new(shape: AutoScalingConfigurationName, location_name: "AutoScalingConfigurationName"))
    AutoScalingConfigurationSummary.add_member(:auto_scaling_configuration_revision, Shapes::ShapeRef.new(shape: Integer, location_name: "AutoScalingConfigurationRevision"))
    AutoScalingConfigurationSummary.struct_class = Types::AutoScalingConfigurationSummary

    AutoScalingConfigurationSummaryList.member = Shapes::ShapeRef.new(shape: AutoScalingConfigurationSummary)

    CertificateValidationRecord.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    CertificateValidationRecord.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "Type"))
    CertificateValidationRecord.add_member(:value, Shapes::ShapeRef.new(shape: String, location_name: "Value"))
    CertificateValidationRecord.add_member(:status, Shapes::ShapeRef.new(shape: CertificateValidationRecordStatus, location_name: "Status"))
    CertificateValidationRecord.struct_class = Types::CertificateValidationRecord

    CertificateValidationRecordList.member = Shapes::ShapeRef.new(shape: CertificateValidationRecord)

    CodeConfiguration.add_member(:configuration_source, Shapes::ShapeRef.new(shape: ConfigurationSource, required: true, location_name: "ConfigurationSource"))
    CodeConfiguration.add_member(:code_configuration_values, Shapes::ShapeRef.new(shape: CodeConfigurationValues, location_name: "CodeConfigurationValues"))
    CodeConfiguration.struct_class = Types::CodeConfiguration

    CodeConfigurationValues.add_member(:runtime, Shapes::ShapeRef.new(shape: Runtime, required: true, location_name: "Runtime"))
    CodeConfigurationValues.add_member(:build_command, Shapes::ShapeRef.new(shape: BuildCommand, location_name: "BuildCommand"))
    CodeConfigurationValues.add_member(:start_command, Shapes::ShapeRef.new(shape: StartCommand, location_name: "StartCommand"))
    CodeConfigurationValues.add_member(:port, Shapes::ShapeRef.new(shape: String, location_name: "Port"))
    CodeConfigurationValues.add_member(:runtime_environment_variables, Shapes::ShapeRef.new(shape: RuntimeEnvironmentVariables, location_name: "RuntimeEnvironmentVariables"))
    CodeConfigurationValues.add_member(:runtime_environment_secrets, Shapes::ShapeRef.new(shape: RuntimeEnvironmentSecrets, location_name: "RuntimeEnvironmentSecrets"))
    CodeConfigurationValues.struct_class = Types::CodeConfigurationValues

    CodeRepository.add_member(:repository_url, Shapes::ShapeRef.new(shape: String, required: true, location_name: "RepositoryUrl"))
    CodeRepository.add_member(:source_code_version, Shapes::ShapeRef.new(shape: SourceCodeVersion, required: true, location_name: "SourceCodeVersion"))
    CodeRepository.add_member(:code_configuration, Shapes::ShapeRef.new(shape: CodeConfiguration, location_name: "CodeConfiguration"))
    CodeRepository.struct_class = Types::CodeRepository

    Connection.add_member(:connection_name, Shapes::ShapeRef.new(shape: ConnectionName, location_name: "ConnectionName"))
    Connection.add_member(:connection_arn, Shapes::ShapeRef.new(shape: AppRunnerResourceArn, location_name: "ConnectionArn"))
    Connection.add_member(:provider_type, Shapes::ShapeRef.new(shape: ProviderType, location_name: "ProviderType"))
    Connection.add_member(:status, Shapes::ShapeRef.new(shape: ConnectionStatus, location_name: "Status"))
    Connection.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    Connection.struct_class = Types::Connection

    ConnectionSummary.add_member(:connection_name, Shapes::ShapeRef.new(shape: ConnectionName, location_name: "ConnectionName"))
    ConnectionSummary.add_member(:connection_arn, Shapes::ShapeRef.new(shape: AppRunnerResourceArn, location_name: "ConnectionArn"))
    ConnectionSummary.add_member(:provider_type, Shapes::ShapeRef.new(shape: ProviderType, location_name: "ProviderType"))
    ConnectionSummary.add_member(:status, Shapes::ShapeRef.new(shape: ConnectionStatus, location_name: "Status"))
    ConnectionSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    ConnectionSummary.struct_class = Types::ConnectionSummary

    ConnectionSummaryList.member = Shapes::ShapeRef.new(shape: ConnectionSummary)

    CreateAutoScalingConfigurationRequest.add_member(:auto_scaling_configuration_name, Shapes::ShapeRef.new(shape: AutoScalingConfigurationName, required: true, location_name: "AutoScalingConfigurationName"))
    CreateAutoScalingConfigurationRequest.add_member(:max_concurrency, Shapes::ShapeRef.new(shape: ASConfigMaxConcurrency, location_name: "MaxConcurrency"))
    CreateAutoScalingConfigurationRequest.add_member(:min_size, Shapes::ShapeRef.new(shape: ASConfigMinSize, location_name: "MinSize"))
    CreateAutoScalingConfigurationRequest.add_member(:max_size, Shapes::ShapeRef.new(shape: ASConfigMaxSize, location_name: "MaxSize"))
    CreateAutoScalingConfigurationRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateAutoScalingConfigurationRequest.struct_class = Types::CreateAutoScalingConfigurationRequest

    CreateAutoScalingConfigurationResponse.add_member(:auto_scaling_configuration, Shapes::ShapeRef.new(shape: AutoScalingConfiguration, required: true, location_name: "AutoScalingConfiguration"))
    CreateAutoScalingConfigurationResponse.struct_class = Types::CreateAutoScalingConfigurationResponse

    CreateConnectionRequest.add_member(:connection_name, Shapes::ShapeRef.new(shape: ConnectionName, required: true, location_name: "ConnectionName"))
    CreateConnectionRequest.add_member(:provider_type, Shapes::ShapeRef.new(shape: ProviderType, required: true, location_name: "ProviderType"))
    CreateConnectionRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateConnectionRequest.struct_class = Types::CreateConnectionRequest

    CreateConnectionResponse.add_member(:connection, Shapes::ShapeRef.new(shape: Connection, required: true, location_name: "Connection"))
    CreateConnectionResponse.struct_class = Types::CreateConnectionResponse

    CreateObservabilityConfigurationRequest.add_member(:observability_configuration_name, Shapes::ShapeRef.new(shape: ObservabilityConfigurationName, required: true, location_name: "ObservabilityConfigurationName"))
    CreateObservabilityConfigurationRequest.add_member(:trace_configuration, Shapes::ShapeRef.new(shape: TraceConfiguration, location_name: "TraceConfiguration"))
    CreateObservabilityConfigurationRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateObservabilityConfigurationRequest.struct_class = Types::CreateObservabilityConfigurationRequest

    CreateObservabilityConfigurationResponse.add_member(:observability_configuration, Shapes::ShapeRef.new(shape: ObservabilityConfiguration, required: true, location_name: "ObservabilityConfiguration"))
    CreateObservabilityConfigurationResponse.struct_class = Types::CreateObservabilityConfigurationResponse

    CreateServiceRequest.add_member(:service_name, Shapes::ShapeRef.new(shape: ServiceName, required: true, location_name: "ServiceName"))
    CreateServiceRequest.add_member(:source_configuration, Shapes::ShapeRef.new(shape: SourceConfiguration, required: true, location_name: "SourceConfiguration"))
    CreateServiceRequest.add_member(:instance_configuration, Shapes::ShapeRef.new(shape: InstanceConfiguration, location_name: "InstanceConfiguration"))
    CreateServiceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateServiceRequest.add_member(:encryption_configuration, Shapes::ShapeRef.new(shape: EncryptionConfiguration, location_name: "EncryptionConfiguration"))
    CreateServiceRequest.add_member(:health_check_configuration, Shapes::ShapeRef.new(shape: HealthCheckConfiguration, location_name: "HealthCheckConfiguration"))
    CreateServiceRequest.add_member(:auto_scaling_configuration_arn, Shapes::ShapeRef.new(shape: AppRunnerResourceArn, location_name: "AutoScalingConfigurationArn"))
    CreateServiceRequest.add_member(:network_configuration, Shapes::ShapeRef.new(shape: NetworkConfiguration, location_name: "NetworkConfiguration"))
    CreateServiceRequest.add_member(:observability_configuration, Shapes::ShapeRef.new(shape: ServiceObservabilityConfiguration, location_name: "ObservabilityConfiguration"))
    CreateServiceRequest.struct_class = Types::CreateServiceRequest

    CreateServiceResponse.add_member(:service, Shapes::ShapeRef.new(shape: Service, required: true, location_name: "Service"))
    CreateServiceResponse.add_member(:operation_id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "OperationId"))
    CreateServiceResponse.struct_class = Types::CreateServiceResponse

    CreateVpcConnectorRequest.add_member(:vpc_connector_name, Shapes::ShapeRef.new(shape: VpcConnectorName, required: true, location_name: "VpcConnectorName"))
    CreateVpcConnectorRequest.add_member(:subnets, Shapes::ShapeRef.new(shape: StringList, required: true, location_name: "Subnets"))
    CreateVpcConnectorRequest.add_member(:security_groups, Shapes::ShapeRef.new(shape: StringList, location_name: "SecurityGroups"))
    CreateVpcConnectorRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateVpcConnectorRequest.struct_class = Types::CreateVpcConnectorRequest

    CreateVpcConnectorResponse.add_member(:vpc_connector, Shapes::ShapeRef.new(shape: VpcConnector, required: true, location_name: "VpcConnector"))
    CreateVpcConnectorResponse.struct_class = Types::CreateVpcConnectorResponse

    CreateVpcIngressConnectionRequest.add_member(:service_arn, Shapes::ShapeRef.new(shape: AppRunnerResourceArn, required: true, location_name: "ServiceArn"))
    CreateVpcIngressConnectionRequest.add_member(:vpc_ingress_connection_name, Shapes::ShapeRef.new(shape: VpcIngressConnectionName, required: true, location_name: "VpcIngressConnectionName"))
    CreateVpcIngressConnectionRequest.add_member(:ingress_vpc_configuration, Shapes::ShapeRef.new(shape: IngressVpcConfiguration, required: true, location_name: "IngressVpcConfiguration"))
    CreateVpcIngressConnectionRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateVpcIngressConnectionRequest.struct_class = Types::CreateVpcIngressConnectionRequest

    CreateVpcIngressConnectionResponse.add_member(:vpc_ingress_connection, Shapes::ShapeRef.new(shape: VpcIngressConnection, required: true, location_name: "VpcIngressConnection"))
    CreateVpcIngressConnectionResponse.struct_class = Types::CreateVpcIngressConnectionResponse

    CustomDomain.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "DomainName"))
    CustomDomain.add_member(:enable_www_subdomain, Shapes::ShapeRef.new(shape: NullableBoolean, required: true, location_name: "EnableWWWSubdomain"))
    CustomDomain.add_member(:certificate_validation_records, Shapes::ShapeRef.new(shape: CertificateValidationRecordList, location_name: "CertificateValidationRecords"))
    CustomDomain.add_member(:status, Shapes::ShapeRef.new(shape: CustomDomainAssociationStatus, required: true, location_name: "Status"))
    CustomDomain.struct_class = Types::CustomDomain

    CustomDomainList.member = Shapes::ShapeRef.new(shape: CustomDomain)

    DeleteAutoScalingConfigurationRequest.add_member(:auto_scaling_configuration_arn, Shapes::ShapeRef.new(shape: AppRunnerResourceArn, required: true, location_name: "AutoScalingConfigurationArn"))
    DeleteAutoScalingConfigurationRequest.struct_class = Types::DeleteAutoScalingConfigurationRequest

    DeleteAutoScalingConfigurationResponse.add_member(:auto_scaling_configuration, Shapes::ShapeRef.new(shape: AutoScalingConfiguration, required: true, location_name: "AutoScalingConfiguration"))
    DeleteAutoScalingConfigurationResponse.struct_class = Types::DeleteAutoScalingConfigurationResponse

    DeleteConnectionRequest.add_member(:connection_arn, Shapes::ShapeRef.new(shape: AppRunnerResourceArn, required: true, location_name: "ConnectionArn"))
    DeleteConnectionRequest.struct_class = Types::DeleteConnectionRequest

    DeleteConnectionResponse.add_member(:connection, Shapes::ShapeRef.new(shape: Connection, location_name: "Connection"))
    DeleteConnectionResponse.struct_class = Types::DeleteConnectionResponse

    DeleteObservabilityConfigurationRequest.add_member(:observability_configuration_arn, Shapes::ShapeRef.new(shape: AppRunnerResourceArn, required: true, location_name: "ObservabilityConfigurationArn"))
    DeleteObservabilityConfigurationRequest.struct_class = Types::DeleteObservabilityConfigurationRequest

    DeleteObservabilityConfigurationResponse.add_member(:observability_configuration, Shapes::ShapeRef.new(shape: ObservabilityConfiguration, required: true, location_name: "ObservabilityConfiguration"))
    DeleteObservabilityConfigurationResponse.struct_class = Types::DeleteObservabilityConfigurationResponse

    DeleteServiceRequest.add_member(:service_arn, Shapes::ShapeRef.new(shape: AppRunnerResourceArn, required: true, location_name: "ServiceArn"))
    DeleteServiceRequest.struct_class = Types::DeleteServiceRequest

    DeleteServiceResponse.add_member(:service, Shapes::ShapeRef.new(shape: Service, required: true, location_name: "Service"))
    DeleteServiceResponse.add_member(:operation_id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "OperationId"))
    DeleteServiceResponse.struct_class = Types::DeleteServiceResponse

    DeleteVpcConnectorRequest.add_member(:vpc_connector_arn, Shapes::ShapeRef.new(shape: AppRunnerResourceArn, required: true, location_name: "VpcConnectorArn"))
    DeleteVpcConnectorRequest.struct_class = Types::DeleteVpcConnectorRequest

    DeleteVpcConnectorResponse.add_member(:vpc_connector, Shapes::ShapeRef.new(shape: VpcConnector, required: true, location_name: "VpcConnector"))
    DeleteVpcConnectorResponse.struct_class = Types::DeleteVpcConnectorResponse

    DeleteVpcIngressConnectionRequest.add_member(:vpc_ingress_connection_arn, Shapes::ShapeRef.new(shape: AppRunnerResourceArn, required: true, location_name: "VpcIngressConnectionArn"))
    DeleteVpcIngressConnectionRequest.struct_class = Types::DeleteVpcIngressConnectionRequest

    DeleteVpcIngressConnectionResponse.add_member(:vpc_ingress_connection, Shapes::ShapeRef.new(shape: VpcIngressConnection, required: true, location_name: "VpcIngressConnection"))
    DeleteVpcIngressConnectionResponse.struct_class = Types::DeleteVpcIngressConnectionResponse

    DescribeAutoScalingConfigurationRequest.add_member(:auto_scaling_configuration_arn, Shapes::ShapeRef.new(shape: AppRunnerResourceArn, required: true, location_name: "AutoScalingConfigurationArn"))
    DescribeAutoScalingConfigurationRequest.struct_class = Types::DescribeAutoScalingConfigurationRequest

    DescribeAutoScalingConfigurationResponse.add_member(:auto_scaling_configuration, Shapes::ShapeRef.new(shape: AutoScalingConfiguration, required: true, location_name: "AutoScalingConfiguration"))
    DescribeAutoScalingConfigurationResponse.struct_class = Types::DescribeAutoScalingConfigurationResponse

    DescribeCustomDomainsRequest.add_member(:service_arn, Shapes::ShapeRef.new(shape: AppRunnerResourceArn, required: true, location_name: "ServiceArn"))
    DescribeCustomDomainsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeCustomDomainsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: DescribeCustomDomainsMaxResults, location_name: "MaxResults"))
    DescribeCustomDomainsRequest.struct_class = Types::DescribeCustomDomainsRequest

    DescribeCustomDomainsResponse.add_member(:dns_target, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DNSTarget"))
    DescribeCustomDomainsResponse.add_member(:service_arn, Shapes::ShapeRef.new(shape: AppRunnerResourceArn, required: true, location_name: "ServiceArn"))
    DescribeCustomDomainsResponse.add_member(:custom_domains, Shapes::ShapeRef.new(shape: CustomDomainList, required: true, location_name: "CustomDomains"))
    DescribeCustomDomainsResponse.add_member(:vpc_dns_targets, Shapes::ShapeRef.new(shape: VpcDNSTargetList, required: true, location_name: "VpcDNSTargets"))
    DescribeCustomDomainsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeCustomDomainsResponse.struct_class = Types::DescribeCustomDomainsResponse

    DescribeObservabilityConfigurationRequest.add_member(:observability_configuration_arn, Shapes::ShapeRef.new(shape: AppRunnerResourceArn, required: true, location_name: "ObservabilityConfigurationArn"))
    DescribeObservabilityConfigurationRequest.struct_class = Types::DescribeObservabilityConfigurationRequest

    DescribeObservabilityConfigurationResponse.add_member(:observability_configuration, Shapes::ShapeRef.new(shape: ObservabilityConfiguration, required: true, location_name: "ObservabilityConfiguration"))
    DescribeObservabilityConfigurationResponse.struct_class = Types::DescribeObservabilityConfigurationResponse

    DescribeServiceRequest.add_member(:service_arn, Shapes::ShapeRef.new(shape: AppRunnerResourceArn, required: true, location_name: "ServiceArn"))
    DescribeServiceRequest.struct_class = Types::DescribeServiceRequest

    DescribeServiceResponse.add_member(:service, Shapes::ShapeRef.new(shape: Service, required: true, location_name: "Service"))
    DescribeServiceResponse.struct_class = Types::DescribeServiceResponse

    DescribeVpcConnectorRequest.add_member(:vpc_connector_arn, Shapes::ShapeRef.new(shape: AppRunnerResourceArn, required: true, location_name: "VpcConnectorArn"))
    DescribeVpcConnectorRequest.struct_class = Types::DescribeVpcConnectorRequest

    DescribeVpcConnectorResponse.add_member(:vpc_connector, Shapes::ShapeRef.new(shape: VpcConnector, required: true, location_name: "VpcConnector"))
    DescribeVpcConnectorResponse.struct_class = Types::DescribeVpcConnectorResponse

    DescribeVpcIngressConnectionRequest.add_member(:vpc_ingress_connection_arn, Shapes::ShapeRef.new(shape: AppRunnerResourceArn, required: true, location_name: "VpcIngressConnectionArn"))
    DescribeVpcIngressConnectionRequest.struct_class = Types::DescribeVpcIngressConnectionRequest

    DescribeVpcIngressConnectionResponse.add_member(:vpc_ingress_connection, Shapes::ShapeRef.new(shape: VpcIngressConnection, required: true, location_name: "VpcIngressConnection"))
    DescribeVpcIngressConnectionResponse.struct_class = Types::DescribeVpcIngressConnectionResponse

    DisassociateCustomDomainRequest.add_member(:service_arn, Shapes::ShapeRef.new(shape: AppRunnerResourceArn, required: true, location_name: "ServiceArn"))
    DisassociateCustomDomainRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "DomainName"))
    DisassociateCustomDomainRequest.struct_class = Types::DisassociateCustomDomainRequest

    DisassociateCustomDomainResponse.add_member(:dns_target, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DNSTarget"))
    DisassociateCustomDomainResponse.add_member(:service_arn, Shapes::ShapeRef.new(shape: AppRunnerResourceArn, required: true, location_name: "ServiceArn"))
    DisassociateCustomDomainResponse.add_member(:custom_domain, Shapes::ShapeRef.new(shape: CustomDomain, required: true, location_name: "CustomDomain"))
    DisassociateCustomDomainResponse.add_member(:vpc_dns_targets, Shapes::ShapeRef.new(shape: VpcDNSTargetList, required: true, location_name: "VpcDNSTargets"))
    DisassociateCustomDomainResponse.struct_class = Types::DisassociateCustomDomainResponse

    EgressConfiguration.add_member(:egress_type, Shapes::ShapeRef.new(shape: EgressType, location_name: "EgressType"))
    EgressConfiguration.add_member(:vpc_connector_arn, Shapes::ShapeRef.new(shape: AppRunnerResourceArn, location_name: "VpcConnectorArn"))
    EgressConfiguration.struct_class = Types::EgressConfiguration

    EncryptionConfiguration.add_member(:kms_key, Shapes::ShapeRef.new(shape: KmsKeyArn, required: true, location_name: "KmsKey"))
    EncryptionConfiguration.struct_class = Types::EncryptionConfiguration

    HealthCheckConfiguration.add_member(:protocol, Shapes::ShapeRef.new(shape: HealthCheckProtocol, location_name: "Protocol"))
    HealthCheckConfiguration.add_member(:path, Shapes::ShapeRef.new(shape: HealthCheckPath, location_name: "Path"))
    HealthCheckConfiguration.add_member(:interval, Shapes::ShapeRef.new(shape: HealthCheckInterval, location_name: "Interval"))
    HealthCheckConfiguration.add_member(:timeout, Shapes::ShapeRef.new(shape: HealthCheckTimeout, location_name: "Timeout"))
    HealthCheckConfiguration.add_member(:healthy_threshold, Shapes::ShapeRef.new(shape: HealthCheckHealthyThreshold, location_name: "HealthyThreshold"))
    HealthCheckConfiguration.add_member(:unhealthy_threshold, Shapes::ShapeRef.new(shape: HealthCheckUnhealthyThreshold, location_name: "UnhealthyThreshold"))
    HealthCheckConfiguration.struct_class = Types::HealthCheckConfiguration

    ImageConfiguration.add_member(:runtime_environment_variables, Shapes::ShapeRef.new(shape: RuntimeEnvironmentVariables, location_name: "RuntimeEnvironmentVariables"))
    ImageConfiguration.add_member(:start_command, Shapes::ShapeRef.new(shape: StartCommand, location_name: "StartCommand"))
    ImageConfiguration.add_member(:port, Shapes::ShapeRef.new(shape: String, location_name: "Port"))
    ImageConfiguration.add_member(:runtime_environment_secrets, Shapes::ShapeRef.new(shape: RuntimeEnvironmentSecrets, location_name: "RuntimeEnvironmentSecrets"))
    ImageConfiguration.struct_class = Types::ImageConfiguration

    ImageRepository.add_member(:image_identifier, Shapes::ShapeRef.new(shape: ImageIdentifier, required: true, location_name: "ImageIdentifier"))
    ImageRepository.add_member(:image_configuration, Shapes::ShapeRef.new(shape: ImageConfiguration, location_name: "ImageConfiguration"))
    ImageRepository.add_member(:image_repository_type, Shapes::ShapeRef.new(shape: ImageRepositoryType, required: true, location_name: "ImageRepositoryType"))
    ImageRepository.struct_class = Types::ImageRepository

    IngressConfiguration.add_member(:is_publicly_accessible, Shapes::ShapeRef.new(shape: Boolean, location_name: "IsPubliclyAccessible"))
    IngressConfiguration.struct_class = Types::IngressConfiguration

    IngressVpcConfiguration.add_member(:vpc_id, Shapes::ShapeRef.new(shape: String, location_name: "VpcId"))
    IngressVpcConfiguration.add_member(:vpc_endpoint_id, Shapes::ShapeRef.new(shape: String, location_name: "VpcEndpointId"))
    IngressVpcConfiguration.struct_class = Types::IngressVpcConfiguration

    InstanceConfiguration.add_member(:cpu, Shapes::ShapeRef.new(shape: Cpu, location_name: "Cpu"))
    InstanceConfiguration.add_member(:memory, Shapes::ShapeRef.new(shape: Memory, location_name: "Memory"))
    InstanceConfiguration.add_member(:instance_role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "InstanceRoleArn"))
    InstanceConfiguration.struct_class = Types::InstanceConfiguration

    InternalServiceErrorException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InternalServiceErrorException.struct_class = Types::InternalServiceErrorException

    InvalidRequestException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InvalidRequestException.struct_class = Types::InvalidRequestException

    InvalidStateException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InvalidStateException.struct_class = Types::InvalidStateException

    ListAutoScalingConfigurationsRequest.add_member(:auto_scaling_configuration_name, Shapes::ShapeRef.new(shape: AutoScalingConfigurationName, location_name: "AutoScalingConfigurationName"))
    ListAutoScalingConfigurationsRequest.add_member(:latest_only, Shapes::ShapeRef.new(shape: Boolean, location_name: "LatestOnly"))
    ListAutoScalingConfigurationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListAutoScalingConfigurationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListAutoScalingConfigurationsRequest.struct_class = Types::ListAutoScalingConfigurationsRequest

    ListAutoScalingConfigurationsResponse.add_member(:auto_scaling_configuration_summary_list, Shapes::ShapeRef.new(shape: AutoScalingConfigurationSummaryList, required: true, location_name: "AutoScalingConfigurationSummaryList"))
    ListAutoScalingConfigurationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListAutoScalingConfigurationsResponse.struct_class = Types::ListAutoScalingConfigurationsResponse

    ListConnectionsRequest.add_member(:connection_name, Shapes::ShapeRef.new(shape: ConnectionName, location_name: "ConnectionName"))
    ListConnectionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListConnectionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListConnectionsRequest.struct_class = Types::ListConnectionsRequest

    ListConnectionsResponse.add_member(:connection_summary_list, Shapes::ShapeRef.new(shape: ConnectionSummaryList, required: true, location_name: "ConnectionSummaryList"))
    ListConnectionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListConnectionsResponse.struct_class = Types::ListConnectionsResponse

    ListObservabilityConfigurationsRequest.add_member(:observability_configuration_name, Shapes::ShapeRef.new(shape: ObservabilityConfigurationName, location_name: "ObservabilityConfigurationName"))
    ListObservabilityConfigurationsRequest.add_member(:latest_only, Shapes::ShapeRef.new(shape: Boolean, location_name: "LatestOnly"))
    ListObservabilityConfigurationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListObservabilityConfigurationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListObservabilityConfigurationsRequest.struct_class = Types::ListObservabilityConfigurationsRequest

    ListObservabilityConfigurationsResponse.add_member(:observability_configuration_summary_list, Shapes::ShapeRef.new(shape: ObservabilityConfigurationSummaryList, required: true, location_name: "ObservabilityConfigurationSummaryList"))
    ListObservabilityConfigurationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListObservabilityConfigurationsResponse.struct_class = Types::ListObservabilityConfigurationsResponse

    ListOperationsRequest.add_member(:service_arn, Shapes::ShapeRef.new(shape: AppRunnerResourceArn, required: true, location_name: "ServiceArn"))
    ListOperationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListOperationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListOperationsMaxResults, location_name: "MaxResults"))
    ListOperationsRequest.struct_class = Types::ListOperationsRequest

    ListOperationsResponse.add_member(:operation_summary_list, Shapes::ShapeRef.new(shape: OperationSummaryList, location_name: "OperationSummaryList"))
    ListOperationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListOperationsResponse.struct_class = Types::ListOperationsResponse

    ListServicesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListServicesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ServiceMaxResults, location_name: "MaxResults"))
    ListServicesRequest.struct_class = Types::ListServicesRequest

    ListServicesResponse.add_member(:service_summary_list, Shapes::ShapeRef.new(shape: ServiceSummaryList, required: true, location_name: "ServiceSummaryList"))
    ListServicesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListServicesResponse.struct_class = Types::ListServicesResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AppRunnerResourceArn, required: true, location_name: "ResourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    ListVpcConnectorsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListVpcConnectorsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListVpcConnectorsRequest.struct_class = Types::ListVpcConnectorsRequest

    ListVpcConnectorsResponse.add_member(:vpc_connectors, Shapes::ShapeRef.new(shape: VpcConnectors, required: true, location_name: "VpcConnectors"))
    ListVpcConnectorsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListVpcConnectorsResponse.struct_class = Types::ListVpcConnectorsResponse

    ListVpcIngressConnectionsFilter.add_member(:service_arn, Shapes::ShapeRef.new(shape: AppRunnerResourceArn, location_name: "ServiceArn"))
    ListVpcIngressConnectionsFilter.add_member(:vpc_endpoint_id, Shapes::ShapeRef.new(shape: String, location_name: "VpcEndpointId"))
    ListVpcIngressConnectionsFilter.struct_class = Types::ListVpcIngressConnectionsFilter

    ListVpcIngressConnectionsRequest.add_member(:filter, Shapes::ShapeRef.new(shape: ListVpcIngressConnectionsFilter, location_name: "Filter"))
    ListVpcIngressConnectionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListVpcIngressConnectionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListVpcIngressConnectionsRequest.struct_class = Types::ListVpcIngressConnectionsRequest

    ListVpcIngressConnectionsResponse.add_member(:vpc_ingress_connection_summary_list, Shapes::ShapeRef.new(shape: VpcIngressConnectionSummaryList, required: true, location_name: "VpcIngressConnectionSummaryList"))
    ListVpcIngressConnectionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListVpcIngressConnectionsResponse.struct_class = Types::ListVpcIngressConnectionsResponse

    NetworkConfiguration.add_member(:egress_configuration, Shapes::ShapeRef.new(shape: EgressConfiguration, location_name: "EgressConfiguration"))
    NetworkConfiguration.add_member(:ingress_configuration, Shapes::ShapeRef.new(shape: IngressConfiguration, location_name: "IngressConfiguration"))
    NetworkConfiguration.struct_class = Types::NetworkConfiguration

    ObservabilityConfiguration.add_member(:observability_configuration_arn, Shapes::ShapeRef.new(shape: AppRunnerResourceArn, location_name: "ObservabilityConfigurationArn"))
    ObservabilityConfiguration.add_member(:observability_configuration_name, Shapes::ShapeRef.new(shape: ObservabilityConfigurationName, location_name: "ObservabilityConfigurationName"))
    ObservabilityConfiguration.add_member(:trace_configuration, Shapes::ShapeRef.new(shape: TraceConfiguration, location_name: "TraceConfiguration"))
    ObservabilityConfiguration.add_member(:observability_configuration_revision, Shapes::ShapeRef.new(shape: Integer, location_name: "ObservabilityConfigurationRevision"))
    ObservabilityConfiguration.add_member(:latest, Shapes::ShapeRef.new(shape: Boolean, location_name: "Latest"))
    ObservabilityConfiguration.add_member(:status, Shapes::ShapeRef.new(shape: ObservabilityConfigurationStatus, location_name: "Status"))
    ObservabilityConfiguration.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    ObservabilityConfiguration.add_member(:deleted_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "DeletedAt"))
    ObservabilityConfiguration.struct_class = Types::ObservabilityConfiguration

    ObservabilityConfigurationSummary.add_member(:observability_configuration_arn, Shapes::ShapeRef.new(shape: AppRunnerResourceArn, location_name: "ObservabilityConfigurationArn"))
    ObservabilityConfigurationSummary.add_member(:observability_configuration_name, Shapes::ShapeRef.new(shape: ObservabilityConfigurationName, location_name: "ObservabilityConfigurationName"))
    ObservabilityConfigurationSummary.add_member(:observability_configuration_revision, Shapes::ShapeRef.new(shape: Integer, location_name: "ObservabilityConfigurationRevision"))
    ObservabilityConfigurationSummary.struct_class = Types::ObservabilityConfigurationSummary

    ObservabilityConfigurationSummaryList.member = Shapes::ShapeRef.new(shape: ObservabilityConfigurationSummary)

    OperationSummary.add_member(:id, Shapes::ShapeRef.new(shape: UUID, location_name: "Id"))
    OperationSummary.add_member(:type, Shapes::ShapeRef.new(shape: OperationType, location_name: "Type"))
    OperationSummary.add_member(:status, Shapes::ShapeRef.new(shape: OperationStatus, location_name: "Status"))
    OperationSummary.add_member(:target_arn, Shapes::ShapeRef.new(shape: AppRunnerResourceArn, location_name: "TargetArn"))
    OperationSummary.add_member(:started_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "StartedAt"))
    OperationSummary.add_member(:ended_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "EndedAt"))
    OperationSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "UpdatedAt"))
    OperationSummary.struct_class = Types::OperationSummary

    OperationSummaryList.member = Shapes::ShapeRef.new(shape: OperationSummary)

    PauseServiceRequest.add_member(:service_arn, Shapes::ShapeRef.new(shape: AppRunnerResourceArn, required: true, location_name: "ServiceArn"))
    PauseServiceRequest.struct_class = Types::PauseServiceRequest

    PauseServiceResponse.add_member(:service, Shapes::ShapeRef.new(shape: Service, required: true, location_name: "Service"))
    PauseServiceResponse.add_member(:operation_id, Shapes::ShapeRef.new(shape: UUID, location_name: "OperationId"))
    PauseServiceResponse.struct_class = Types::PauseServiceResponse

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ResumeServiceRequest.add_member(:service_arn, Shapes::ShapeRef.new(shape: AppRunnerResourceArn, required: true, location_name: "ServiceArn"))
    ResumeServiceRequest.struct_class = Types::ResumeServiceRequest

    ResumeServiceResponse.add_member(:service, Shapes::ShapeRef.new(shape: Service, required: true, location_name: "Service"))
    ResumeServiceResponse.add_member(:operation_id, Shapes::ShapeRef.new(shape: UUID, location_name: "OperationId"))
    ResumeServiceResponse.struct_class = Types::ResumeServiceResponse

    RuntimeEnvironmentSecrets.key = Shapes::ShapeRef.new(shape: RuntimeEnvironmentSecretsName)
    RuntimeEnvironmentSecrets.value = Shapes::ShapeRef.new(shape: RuntimeEnvironmentSecretsValue)

    RuntimeEnvironmentVariables.key = Shapes::ShapeRef.new(shape: RuntimeEnvironmentVariablesKey)
    RuntimeEnvironmentVariables.value = Shapes::ShapeRef.new(shape: RuntimeEnvironmentVariablesValue)

    Service.add_member(:service_name, Shapes::ShapeRef.new(shape: ServiceName, required: true, location_name: "ServiceName"))
    Service.add_member(:service_id, Shapes::ShapeRef.new(shape: ServiceId, required: true, location_name: "ServiceId"))
    Service.add_member(:service_arn, Shapes::ShapeRef.new(shape: AppRunnerResourceArn, required: true, location_name: "ServiceArn"))
    Service.add_member(:service_url, Shapes::ShapeRef.new(shape: String, location_name: "ServiceUrl"))
    Service.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreatedAt"))
    Service.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "UpdatedAt"))
    Service.add_member(:deleted_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "DeletedAt"))
    Service.add_member(:status, Shapes::ShapeRef.new(shape: ServiceStatus, required: true, location_name: "Status"))
    Service.add_member(:source_configuration, Shapes::ShapeRef.new(shape: SourceConfiguration, required: true, location_name: "SourceConfiguration"))
    Service.add_member(:instance_configuration, Shapes::ShapeRef.new(shape: InstanceConfiguration, required: true, location_name: "InstanceConfiguration"))
    Service.add_member(:encryption_configuration, Shapes::ShapeRef.new(shape: EncryptionConfiguration, location_name: "EncryptionConfiguration"))
    Service.add_member(:health_check_configuration, Shapes::ShapeRef.new(shape: HealthCheckConfiguration, location_name: "HealthCheckConfiguration"))
    Service.add_member(:auto_scaling_configuration_summary, Shapes::ShapeRef.new(shape: AutoScalingConfigurationSummary, required: true, location_name: "AutoScalingConfigurationSummary"))
    Service.add_member(:network_configuration, Shapes::ShapeRef.new(shape: NetworkConfiguration, required: true, location_name: "NetworkConfiguration"))
    Service.add_member(:observability_configuration, Shapes::ShapeRef.new(shape: ServiceObservabilityConfiguration, location_name: "ObservabilityConfiguration"))
    Service.struct_class = Types::Service

    ServiceObservabilityConfiguration.add_member(:observability_enabled, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "ObservabilityEnabled"))
    ServiceObservabilityConfiguration.add_member(:observability_configuration_arn, Shapes::ShapeRef.new(shape: AppRunnerResourceArn, location_name: "ObservabilityConfigurationArn"))
    ServiceObservabilityConfiguration.struct_class = Types::ServiceObservabilityConfiguration

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    ServiceSummary.add_member(:service_name, Shapes::ShapeRef.new(shape: ServiceName, location_name: "ServiceName"))
    ServiceSummary.add_member(:service_id, Shapes::ShapeRef.new(shape: ServiceId, location_name: "ServiceId"))
    ServiceSummary.add_member(:service_arn, Shapes::ShapeRef.new(shape: AppRunnerResourceArn, location_name: "ServiceArn"))
    ServiceSummary.add_member(:service_url, Shapes::ShapeRef.new(shape: String, location_name: "ServiceUrl"))
    ServiceSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    ServiceSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "UpdatedAt"))
    ServiceSummary.add_member(:status, Shapes::ShapeRef.new(shape: ServiceStatus, location_name: "Status"))
    ServiceSummary.struct_class = Types::ServiceSummary

    ServiceSummaryList.member = Shapes::ShapeRef.new(shape: ServiceSummary)

    SourceCodeVersion.add_member(:type, Shapes::ShapeRef.new(shape: SourceCodeVersionType, required: true, location_name: "Type"))
    SourceCodeVersion.add_member(:value, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Value"))
    SourceCodeVersion.struct_class = Types::SourceCodeVersion

    SourceConfiguration.add_member(:code_repository, Shapes::ShapeRef.new(shape: CodeRepository, location_name: "CodeRepository"))
    SourceConfiguration.add_member(:image_repository, Shapes::ShapeRef.new(shape: ImageRepository, location_name: "ImageRepository"))
    SourceConfiguration.add_member(:auto_deployments_enabled, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "AutoDeploymentsEnabled"))
    SourceConfiguration.add_member(:authentication_configuration, Shapes::ShapeRef.new(shape: AuthenticationConfiguration, location_name: "AuthenticationConfiguration"))
    SourceConfiguration.struct_class = Types::SourceConfiguration

    StartDeploymentRequest.add_member(:service_arn, Shapes::ShapeRef.new(shape: AppRunnerResourceArn, required: true, location_name: "ServiceArn"))
    StartDeploymentRequest.struct_class = Types::StartDeploymentRequest

    StartDeploymentResponse.add_member(:operation_id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "OperationId"))
    StartDeploymentResponse.struct_class = Types::StartDeploymentResponse

    StringList.member = Shapes::ShapeRef.new(shape: String)

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AppRunnerResourceArn, required: true, location_name: "ResourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "Tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    TraceConfiguration.add_member(:vendor, Shapes::ShapeRef.new(shape: TracingVendor, required: true, location_name: "Vendor"))
    TraceConfiguration.struct_class = Types::TraceConfiguration

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AppRunnerResourceArn, required: true, location_name: "ResourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "TagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateServiceRequest.add_member(:service_arn, Shapes::ShapeRef.new(shape: AppRunnerResourceArn, required: true, location_name: "ServiceArn"))
    UpdateServiceRequest.add_member(:source_configuration, Shapes::ShapeRef.new(shape: SourceConfiguration, location_name: "SourceConfiguration"))
    UpdateServiceRequest.add_member(:instance_configuration, Shapes::ShapeRef.new(shape: InstanceConfiguration, location_name: "InstanceConfiguration"))
    UpdateServiceRequest.add_member(:auto_scaling_configuration_arn, Shapes::ShapeRef.new(shape: AppRunnerResourceArn, location_name: "AutoScalingConfigurationArn"))
    UpdateServiceRequest.add_member(:health_check_configuration, Shapes::ShapeRef.new(shape: HealthCheckConfiguration, location_name: "HealthCheckConfiguration"))
    UpdateServiceRequest.add_member(:network_configuration, Shapes::ShapeRef.new(shape: NetworkConfiguration, location_name: "NetworkConfiguration"))
    UpdateServiceRequest.add_member(:observability_configuration, Shapes::ShapeRef.new(shape: ServiceObservabilityConfiguration, location_name: "ObservabilityConfiguration"))
    UpdateServiceRequest.struct_class = Types::UpdateServiceRequest

    UpdateServiceResponse.add_member(:service, Shapes::ShapeRef.new(shape: Service, required: true, location_name: "Service"))
    UpdateServiceResponse.add_member(:operation_id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "OperationId"))
    UpdateServiceResponse.struct_class = Types::UpdateServiceResponse

    UpdateVpcIngressConnectionRequest.add_member(:vpc_ingress_connection_arn, Shapes::ShapeRef.new(shape: AppRunnerResourceArn, required: true, location_name: "VpcIngressConnectionArn"))
    UpdateVpcIngressConnectionRequest.add_member(:ingress_vpc_configuration, Shapes::ShapeRef.new(shape: IngressVpcConfiguration, required: true, location_name: "IngressVpcConfiguration"))
    UpdateVpcIngressConnectionRequest.struct_class = Types::UpdateVpcIngressConnectionRequest

    UpdateVpcIngressConnectionResponse.add_member(:vpc_ingress_connection, Shapes::ShapeRef.new(shape: VpcIngressConnection, required: true, location_name: "VpcIngressConnection"))
    UpdateVpcIngressConnectionResponse.struct_class = Types::UpdateVpcIngressConnectionResponse

    VpcConnector.add_member(:vpc_connector_name, Shapes::ShapeRef.new(shape: VpcConnectorName, location_name: "VpcConnectorName"))
    VpcConnector.add_member(:vpc_connector_arn, Shapes::ShapeRef.new(shape: AppRunnerResourceArn, location_name: "VpcConnectorArn"))
    VpcConnector.add_member(:vpc_connector_revision, Shapes::ShapeRef.new(shape: Integer, location_name: "VpcConnectorRevision"))
    VpcConnector.add_member(:subnets, Shapes::ShapeRef.new(shape: StringList, location_name: "Subnets"))
    VpcConnector.add_member(:security_groups, Shapes::ShapeRef.new(shape: StringList, location_name: "SecurityGroups"))
    VpcConnector.add_member(:status, Shapes::ShapeRef.new(shape: VpcConnectorStatus, location_name: "Status"))
    VpcConnector.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    VpcConnector.add_member(:deleted_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "DeletedAt"))
    VpcConnector.struct_class = Types::VpcConnector

    VpcConnectors.member = Shapes::ShapeRef.new(shape: VpcConnector)

    VpcDNSTarget.add_member(:vpc_ingress_connection_arn, Shapes::ShapeRef.new(shape: AppRunnerResourceArn, location_name: "VpcIngressConnectionArn"))
    VpcDNSTarget.add_member(:vpc_id, Shapes::ShapeRef.new(shape: String, location_name: "VpcId"))
    VpcDNSTarget.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, location_name: "DomainName"))
    VpcDNSTarget.struct_class = Types::VpcDNSTarget

    VpcDNSTargetList.member = Shapes::ShapeRef.new(shape: VpcDNSTarget)

    VpcIngressConnection.add_member(:vpc_ingress_connection_arn, Shapes::ShapeRef.new(shape: AppRunnerResourceArn, location_name: "VpcIngressConnectionArn"))
    VpcIngressConnection.add_member(:vpc_ingress_connection_name, Shapes::ShapeRef.new(shape: VpcIngressConnectionName, location_name: "VpcIngressConnectionName"))
    VpcIngressConnection.add_member(:service_arn, Shapes::ShapeRef.new(shape: AppRunnerResourceArn, location_name: "ServiceArn"))
    VpcIngressConnection.add_member(:status, Shapes::ShapeRef.new(shape: VpcIngressConnectionStatus, location_name: "Status"))
    VpcIngressConnection.add_member(:account_id, Shapes::ShapeRef.new(shape: CustomerAccountId, location_name: "AccountId"))
    VpcIngressConnection.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, location_name: "DomainName"))
    VpcIngressConnection.add_member(:ingress_vpc_configuration, Shapes::ShapeRef.new(shape: IngressVpcConfiguration, location_name: "IngressVpcConfiguration"))
    VpcIngressConnection.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    VpcIngressConnection.add_member(:deleted_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "DeletedAt"))
    VpcIngressConnection.struct_class = Types::VpcIngressConnection

    VpcIngressConnectionSummary.add_member(:vpc_ingress_connection_arn, Shapes::ShapeRef.new(shape: AppRunnerResourceArn, location_name: "VpcIngressConnectionArn"))
    VpcIngressConnectionSummary.add_member(:service_arn, Shapes::ShapeRef.new(shape: AppRunnerResourceArn, location_name: "ServiceArn"))
    VpcIngressConnectionSummary.struct_class = Types::VpcIngressConnectionSummary

    VpcIngressConnectionSummaryList.member = Shapes::ShapeRef.new(shape: VpcIngressConnectionSummary)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2020-05-15"

      api.metadata = {
        "apiVersion" => "2020-05-15",
        "endpointPrefix" => "apprunner",
        "jsonVersion" => "1.0",
        "protocol" => "json",
        "serviceFullName" => "AWS App Runner",
        "serviceId" => "AppRunner",
        "signatureVersion" => "v4",
        "signingName" => "apprunner",
        "targetPrefix" => "AppRunner",
        "uid" => "apprunner-2020-05-15",
      }

      api.add_operation(:associate_custom_domain, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateCustomDomain"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AssociateCustomDomainRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateCustomDomainResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidStateException)
      end)

      api.add_operation(:create_auto_scaling_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAutoScalingConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateAutoScalingConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateAutoScalingConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_connection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateConnection"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateConnectionRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateConnectionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_observability_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateObservabilityConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateObservabilityConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateObservabilityConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_service, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateService"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateServiceRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateServiceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_vpc_connector, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateVpcConnector"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateVpcConnectorRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateVpcConnectorResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_vpc_ingress_connection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateVpcIngressConnection"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateVpcIngressConnectionRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateVpcIngressConnectionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidStateException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:delete_auto_scaling_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAutoScalingConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteAutoScalingConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteAutoScalingConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:delete_connection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteConnection"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteConnectionRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteConnectionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
      end)

      api.add_operation(:delete_observability_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteObservabilityConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteObservabilityConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteObservabilityConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:delete_service, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteService"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteServiceRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteServiceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidStateException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
      end)

      api.add_operation(:delete_vpc_connector, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteVpcConnector"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteVpcConnectorRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteVpcConnectorResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:delete_vpc_ingress_connection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteVpcIngressConnection"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteVpcIngressConnectionRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteVpcIngressConnectionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidStateException)
      end)

      api.add_operation(:describe_auto_scaling_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAutoScalingConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeAutoScalingConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAutoScalingConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:describe_custom_domains, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeCustomDomains"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeCustomDomainsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeCustomDomainsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_observability_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeObservabilityConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeObservabilityConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeObservabilityConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:describe_service, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeService"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeServiceRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeServiceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
      end)

      api.add_operation(:describe_vpc_connector, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeVpcConnector"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeVpcConnectorRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeVpcConnectorResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:describe_vpc_ingress_connection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeVpcIngressConnection"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeVpcIngressConnectionRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeVpcIngressConnectionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:disassociate_custom_domain, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateCustomDomain"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DisassociateCustomDomainRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateCustomDomainResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidStateException)
      end)

      api.add_operation(:list_auto_scaling_configurations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAutoScalingConfigurations"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListAutoScalingConfigurationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAutoScalingConfigurationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_connections, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListConnections"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListConnectionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListConnectionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_observability_configurations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListObservabilityConfigurations"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListObservabilityConfigurationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListObservabilityConfigurationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_operations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListOperations"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListOperationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListOperationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_services, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListServices"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListServicesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListServicesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidStateException)
      end)

      api.add_operation(:list_vpc_connectors, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListVpcConnectors"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListVpcConnectorsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListVpcConnectorsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_vpc_ingress_connections, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListVpcIngressConnections"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListVpcIngressConnectionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListVpcIngressConnectionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:pause_service, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PauseService"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PauseServiceRequest)
        o.output = Shapes::ShapeRef.new(shape: PauseServiceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidStateException)
      end)

      api.add_operation(:resume_service, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ResumeService"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ResumeServiceRequest)
        o.output = Shapes::ShapeRef.new(shape: ResumeServiceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidStateException)
      end)

      api.add_operation(:start_deployment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartDeployment"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartDeploymentRequest)
        o.output = Shapes::ShapeRef.new(shape: StartDeploymentResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidStateException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidStateException)
      end)

      api.add_operation(:update_service, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateService"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateServiceRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateServiceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidStateException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
      end)

      api.add_operation(:update_vpc_ingress_connection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateVpcIngressConnection"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateVpcIngressConnectionRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateVpcIngressConnectionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidStateException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
      end)
    end

  end
end
