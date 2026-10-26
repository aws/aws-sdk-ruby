# frozen_string_literal: true

# This is generated code!

module Aws::EMRcontainers
  # This module contains a schema composed of shapes used by the client.
  module Schema

    ACMCertArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.emrcontainers#ACMCertArn", name: "ACMCertArn", traits: {"smithy.api#length" => {"min" => 44, "max" => 2048}, "smithy.api#pattern" => "^arn:(aws[a-zA-Z0-9-]*):acm:.+:(\\d{12}):certificate/.+$"})
    AllowAWSToRetainLogs = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.emrcontainers#AllowAWSToRetainLogs", name: "AllowAWSToRetainLogs")
    AuthenticationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrcontainers#AuthenticationConfiguration", name: "AuthenticationConfiguration")
    AuthorizationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrcontainers#AuthorizationConfiguration", name: "AuthorizationConfiguration")
    Base64Encoded = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.emrcontainers#Base64Encoded", name: "Base64Encoded", traits: {"smithy.api#length" => {"min" => 0, "max" => 5000}, "smithy.api#pattern" => "^([A-Za-z0-9+/]{4})*([A-Za-z0-9+/]{4}|[A-Za-z0-9+/]{3}=|[A-Za-z0-9+/]{2}==)?$"})
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.emrcontainers#Boolean", name: "Boolean")
    CancelJobRunRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrcontainers#CancelJobRunRequest", name: "CancelJobRunRequest")
    CancelJobRunResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrcontainers#CancelJobRunResponse", name: "CancelJobRunResponse")
    Certificate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrcontainers#Certificate", name: "Certificate")
    CertificateProviderType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.emrcontainers#CertificateProviderType", name: "CertificateProviderType")
    ClientToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.emrcontainers#ClientToken", name: "ClientToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "\\S"})
    CloudWatchMonitoringConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrcontainers#CloudWatchMonitoringConfiguration", name: "CloudWatchMonitoringConfiguration")
    ClusterId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.emrcontainers#ClusterId", name: "ClusterId", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[0-9A-Za-z][A-Za-z0-9\\-_]*$"})
    Configuration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrcontainers#Configuration", name: "Configuration")
    ConfigurationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.emrcontainers#ConfigurationList", name: "ConfigurationList", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    ConfigurationOverrides = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrcontainers#ConfigurationOverrides", name: "ConfigurationOverrides")
    ContainerInfo = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.emrcontainers#ContainerInfo", name: "ContainerInfo")
    ContainerLogRotationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrcontainers#ContainerLogRotationConfiguration", name: "ContainerLogRotationConfiguration")
    ContainerProvider = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrcontainers#ContainerProvider", name: "ContainerProvider")
    ContainerProviderType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.emrcontainers#ContainerProviderType", name: "ContainerProviderType")
    CreateJobTemplateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrcontainers#CreateJobTemplateRequest", name: "CreateJobTemplateRequest")
    CreateJobTemplateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrcontainers#CreateJobTemplateResponse", name: "CreateJobTemplateResponse")
    CreateManagedEndpointRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrcontainers#CreateManagedEndpointRequest", name: "CreateManagedEndpointRequest")
    CreateManagedEndpointResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrcontainers#CreateManagedEndpointResponse", name: "CreateManagedEndpointResponse")
    CreateSecurityConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrcontainers#CreateSecurityConfigurationRequest", name: "CreateSecurityConfigurationRequest")
    CreateSecurityConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrcontainers#CreateSecurityConfigurationResponse", name: "CreateSecurityConfigurationResponse")
    CreateVirtualClusterRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrcontainers#CreateVirtualClusterRequest", name: "CreateVirtualClusterRequest")
    CreateVirtualClusterResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrcontainers#CreateVirtualClusterResponse", name: "CreateVirtualClusterResponse")
    CredentialType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.emrcontainers#CredentialType", name: "CredentialType", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^.*\\S.*$"})
    Credentials = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.emrcontainers#Credentials", name: "Credentials")
    Date = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.emrcontainers#Date", name: "Date", traits: {"smithy.api#timestampFormat" => "date-time"})
    DeleteJobTemplateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrcontainers#DeleteJobTemplateRequest", name: "DeleteJobTemplateRequest")
    DeleteJobTemplateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrcontainers#DeleteJobTemplateResponse", name: "DeleteJobTemplateResponse")
    DeleteManagedEndpointRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrcontainers#DeleteManagedEndpointRequest", name: "DeleteManagedEndpointRequest")
    DeleteManagedEndpointResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrcontainers#DeleteManagedEndpointResponse", name: "DeleteManagedEndpointResponse")
    DeleteSecurityConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrcontainers#DeleteSecurityConfigurationRequest", name: "DeleteSecurityConfigurationRequest")
    DeleteSecurityConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrcontainers#DeleteSecurityConfigurationResponse", name: "DeleteSecurityConfigurationResponse")
    DeleteVirtualClusterRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrcontainers#DeleteVirtualClusterRequest", name: "DeleteVirtualClusterRequest")
    DeleteVirtualClusterResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrcontainers#DeleteVirtualClusterResponse", name: "DeleteVirtualClusterResponse")
    DescribeJobRunRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrcontainers#DescribeJobRunRequest", name: "DescribeJobRunRequest")
    DescribeJobRunResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrcontainers#DescribeJobRunResponse", name: "DescribeJobRunResponse")
    DescribeJobTemplateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrcontainers#DescribeJobTemplateRequest", name: "DescribeJobTemplateRequest")
    DescribeJobTemplateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrcontainers#DescribeJobTemplateResponse", name: "DescribeJobTemplateResponse")
    DescribeManagedEndpointRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrcontainers#DescribeManagedEndpointRequest", name: "DescribeManagedEndpointRequest")
    DescribeManagedEndpointResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrcontainers#DescribeManagedEndpointResponse", name: "DescribeManagedEndpointResponse")
    DescribeSecurityConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrcontainers#DescribeSecurityConfigurationRequest", name: "DescribeSecurityConfigurationRequest")
    DescribeSecurityConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrcontainers#DescribeSecurityConfigurationResponse", name: "DescribeSecurityConfigurationResponse")
    DescribeVirtualClusterRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrcontainers#DescribeVirtualClusterRequest", name: "DescribeVirtualClusterRequest")
    DescribeVirtualClusterResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrcontainers#DescribeVirtualClusterResponse", name: "DescribeVirtualClusterResponse")
    EKSRequestThrottledException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrcontainers#EKSRequestThrottledException", name: "EKSRequestThrottledException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    EksInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrcontainers#EksInfo", name: "EksInfo")
    EmrIdentityCenterApplicationARN = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.emrcontainers#EmrIdentityCenterApplicationARN", name: "EmrIdentityCenterApplicationARN", traits: {"smithy.api#pattern" => "^arn:(aws[a-zA-Z0-9-]*):sso:::application/ssoins-[0-9a-zA-Z/\\\\-_]+/apl-[0-9a-zA-Z/\\\\-_]+$"})
    EncryptionConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrcontainers#EncryptionConfiguration", name: "EncryptionConfiguration")
    Endpoint = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrcontainers#Endpoint", name: "Endpoint")
    EndpointArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.emrcontainers#EndpointArn", name: "EndpointArn", traits: {"smithy.api#length" => {"min" => 60, "max" => 1024}, "smithy.api#pattern" => "^arn:(aws[a-zA-Z0-9-]*):emr-containers:.+:(\\d{12}):\\/virtualclusters\\/[0-9a-zA-Z]+\\/endpoints\\/[0-9a-zA-Z]+$"})
    EndpointState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.emrcontainers#EndpointState", name: "EndpointState")
    EndpointStates = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.emrcontainers#EndpointStates", name: "EndpointStates", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    EndpointType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.emrcontainers#EndpointType", name: "EndpointType", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "\\S"})
    EndpointTypes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.emrcontainers#EndpointTypes", name: "EndpointTypes", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    Endpoints = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.emrcontainers#Endpoints", name: "Endpoints")
    EntryPointArgument = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.emrcontainers#EntryPointArgument", name: "EntryPointArgument", traits: {"smithy.api#length" => {"min" => 1, "max" => 10280}, "smithy.api#pattern" => "\\S", "smithy.api#sensitive" => {}})
    EntryPointArguments = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.emrcontainers#EntryPointArguments", name: "EntryPointArguments")
    EntryPointPath = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.emrcontainers#EntryPointPath", name: "EntryPointPath", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "\\S", "smithy.api#sensitive" => {}})
    FailureReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.emrcontainers#FailureReason", name: "FailureReason")
    GetManagedEndpointSessionCredentialsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrcontainers#GetManagedEndpointSessionCredentialsRequest", name: "GetManagedEndpointSessionCredentialsRequest")
    GetManagedEndpointSessionCredentialsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrcontainers#GetManagedEndpointSessionCredentialsResponse", name: "GetManagedEndpointSessionCredentialsResponse")
    IAMConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrcontainers#IAMConfiguration", name: "IAMConfiguration")
    IAMRoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.emrcontainers#IAMRoleArn", name: "IAMRoleArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:(aws[a-zA-Z0-9-]*):iam::(\\d{12})?:(role((\\u002F)|(\\u002F[\\u0021-\\u007F]+\\u002F))[\\w+=,.@-]+)$"})
    IdentityCenterConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrcontainers#IdentityCenterConfiguration", name: "IdentityCenterConfiguration")
    IdentityCenterInstanceARN = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.emrcontainers#IdentityCenterInstanceARN", name: "IdentityCenterInstanceARN", traits: {"smithy.api#length" => {"min" => 10, "max" => 1224}, "smithy.api#pattern" => "^arn:(aws[a-zA-Z0-9-]*):sso:::instance/ssoins-[0-9a-zA-Z/\\\\-_]+$"})
    InQueueJobLimitInteger = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.emrcontainers#InQueueJobLimitInteger", name: "InQueueJobLimitInteger", traits: {"smithy.api#range" => {"min" => 100, "max" => 10000}})
    InTransitEncryptionConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrcontainers#InTransitEncryptionConfiguration", name: "InTransitEncryptionConfiguration")
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrcontainers#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    JavaInteger = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.emrcontainers#JavaInteger", name: "JavaInteger")
    JobArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.emrcontainers#JobArn", name: "JobArn", traits: {"smithy.api#length" => {"min" => 60, "max" => 1024}, "smithy.api#pattern" => "^arn:(aws[a-zA-Z0-9-]*):emr-containers:.+:(\\d{12}):\\/virtualclusters\\/[0-9a-zA-Z]+\\/jobruns\\/[0-9a-zA-Z]+$"})
    JobDriver = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrcontainers#JobDriver", name: "JobDriver")
    JobLimitInteger = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.emrcontainers#JobLimitInteger", name: "JobLimitInteger", traits: {"smithy.api#range" => {"min" => 1, "max" => 10000}})
    JobRun = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrcontainers#JobRun", name: "JobRun")
    JobRunState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.emrcontainers#JobRunState", name: "JobRunState")
    JobRunStates = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.emrcontainers#JobRunStates", name: "JobRunStates", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    JobRuns = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.emrcontainers#JobRuns", name: "JobRuns")
    JobTemplate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrcontainers#JobTemplate", name: "JobTemplate")
    JobTemplateArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.emrcontainers#JobTemplateArn", name: "JobTemplateArn", traits: {"smithy.api#length" => {"min" => 60, "max" => 1024}, "smithy.api#pattern" => "^arn:(aws[a-zA-Z0-9-]*):emr-containers:.+:(\\d{12}):\\/jobtemplates\\/[0-9a-zA-Z]+$"})
    JobTemplateData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrcontainers#JobTemplateData", name: "JobTemplateData")
    JobTemplates = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.emrcontainers#JobTemplates", name: "JobTemplates")
    KmsKeyArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.emrcontainers#KmsKeyArn", name: "KmsKeyArn", traits: {"smithy.api#length" => {"min" => 3, "max" => 2048}, "smithy.api#pattern" => "^(arn:(aws[a-zA-Z0-9-]*):kms:.+:(\\d{12})?:key\\/[(0-9a-zA-Z)-?]+|\\$\\{[a-zA-Z]\\w*\\})$"})
    KubernetesNamespace = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.emrcontainers#KubernetesNamespace", name: "KubernetesNamespace", traits: {"smithy.api#length" => {"min" => 1, "max" => 63}, "smithy.api#pattern" => "^[a-z0-9]([-a-z0-9]*[a-z0-9])?$"})
    LakeFormationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrcontainers#LakeFormationConfiguration", name: "LakeFormationConfiguration")
    ListJobRunsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrcontainers#ListJobRunsRequest", name: "ListJobRunsRequest")
    ListJobRunsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrcontainers#ListJobRunsResponse", name: "ListJobRunsResponse")
    ListJobTemplatesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrcontainers#ListJobTemplatesRequest", name: "ListJobTemplatesRequest")
    ListJobTemplatesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrcontainers#ListJobTemplatesResponse", name: "ListJobTemplatesResponse")
    ListManagedEndpointsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrcontainers#ListManagedEndpointsRequest", name: "ListManagedEndpointsRequest")
    ListManagedEndpointsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrcontainers#ListManagedEndpointsResponse", name: "ListManagedEndpointsResponse")
    ListSecurityConfigurationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrcontainers#ListSecurityConfigurationsRequest", name: "ListSecurityConfigurationsRequest")
    ListSecurityConfigurationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrcontainers#ListSecurityConfigurationsResponse", name: "ListSecurityConfigurationsResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrcontainers#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrcontainers#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    ListVirtualClustersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrcontainers#ListVirtualClustersRequest", name: "ListVirtualClustersRequest")
    ListVirtualClustersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrcontainers#ListVirtualClustersResponse", name: "ListVirtualClustersResponse")
    LogContext = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.emrcontainers#LogContext", name: "LogContext", traits: {"smithy.api#length" => {"min" => 3, "max" => 63}, "smithy.api#pattern" => "^((?!.*-s3alias)(?!xn--.*)[a-z0-9][-a-z0-9.]*)?[a-z0-9]$"})
    LogGroupName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.emrcontainers#LogGroupName", name: "LogGroupName", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^[\\.\\-_/#A-Za-z0-9]+$"})
    ManagedLogs = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrcontainers#ManagedLogs", name: "ManagedLogs")
    MaxFilesToKeep = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.emrcontainers#MaxFilesToKeep", name: "MaxFilesToKeep", traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    MonitoringConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrcontainers#MonitoringConfiguration", name: "MonitoringConfiguration")
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.emrcontainers#NextToken", name: "NextToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "\\S"})
    NodeLabelString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.emrcontainers#NodeLabelString", name: "NodeLabelString", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-z0-9](?:[a-z0-9-]*[a-z0-9])?$"})
    NonNegativeInteger = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.emrcontainers#NonNegativeInteger", name: "NonNegativeInteger", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}})
    ParametricCloudWatchMonitoringConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrcontainers#ParametricCloudWatchMonitoringConfiguration", name: "ParametricCloudWatchMonitoringConfiguration")
    ParametricConfigurationOverrides = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrcontainers#ParametricConfigurationOverrides", name: "ParametricConfigurationOverrides")
    ParametricIAMRoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.emrcontainers#ParametricIAMRoleArn", name: "ParametricIAMRoleArn", traits: {"smithy.api#length" => {"min" => 4, "max" => 2048}, "smithy.api#pattern" => "^(^arn:(aws[a-zA-Z0-9-]*):iam::(\\d{12})?:(role((\\u002F)|(\\u002F[\\u0021-\\u007F]+\\u002F))[\\w+=,.@-]+)$)|([\\.\\-_\\#A-Za-z0-9\\$\\{\\}]+)$"})
    ParametricMonitoringConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrcontainers#ParametricMonitoringConfiguration", name: "ParametricMonitoringConfiguration")
    ParametricReleaseLabel = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.emrcontainers#ParametricReleaseLabel", name: "ParametricReleaseLabel", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^([\\.\\-_/A-Za-z0-9]+|\\$\\{[a-zA-Z]\\w*\\})$"})
    ParametricS3MonitoringConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrcontainers#ParametricS3MonitoringConfiguration", name: "ParametricS3MonitoringConfiguration")
    PersistentAppUI = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.emrcontainers#PersistentAppUI", name: "PersistentAppUI")
    ReleaseLabel = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.emrcontainers#ReleaseLabel", name: "ReleaseLabel", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[\\.\\-_/A-Za-z0-9]+$"})
    RequestIdentityUserArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.emrcontainers#RequestIdentityUserArn", name: "RequestIdentityUserArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:(aws[a-zA-Z0-9-]*):(iam|sts)::(\\d{12})?:[\\w/+=,.@-]+$"})
    RequestThrottledException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrcontainers#RequestThrottledException", name: "RequestThrottledException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ResourceIdString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.emrcontainers#ResourceIdString", name: "ResourceIdString", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[0-9a-z]+$"})
    ResourceNameString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.emrcontainers#ResourceNameString", name: "ResourceNameString", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[\\.\\-_/#A-Za-z0-9]+$"})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrcontainers#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    RetryPolicyConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrcontainers#RetryPolicyConfiguration", name: "RetryPolicyConfiguration")
    RetryPolicyExecution = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrcontainers#RetryPolicyExecution", name: "RetryPolicyExecution")
    RotationSize = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.emrcontainers#RotationSize", name: "RotationSize", traits: {"smithy.api#length" => {"min" => 3, "max" => 12}, "smithy.api#pattern" => "^\\d+(\\.\\d+)?[KMG][Bb]?$"})
    RsiArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.emrcontainers#RsiArn", name: "RsiArn", traits: {"smithy.api#length" => {"min" => 60, "max" => 500}, "smithy.api#pattern" => "^arn:(aws[a-zA-Z0-9-]*):emr-containers:.+:(\\d{12}):/virtualclusters/.+$"})
    S3MonitoringConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrcontainers#S3MonitoringConfiguration", name: "S3MonitoringConfiguration")
    SchedulerConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrcontainers#SchedulerConfiguration", name: "SchedulerConfiguration")
    SchedulerStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrcontainers#SchedulerStatus", name: "SchedulerStatus")
    SecretsManagerArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.emrcontainers#SecretsManagerArn", name: "SecretsManagerArn", traits: {"smithy.api#length" => {"min" => 3, "max" => 2048}, "smithy.api#pattern" => "^arn:(aws[a-zA-Z0-9-]*):secretsmanager:.+:(\\d{12}):secret:[0-9a-zA-Z/_+=.@-]+$"})
    SecureNamespaceInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrcontainers#SecureNamespaceInfo", name: "SecureNamespaceInfo")
    SecurityConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrcontainers#SecurityConfiguration", name: "SecurityConfiguration")
    SecurityConfigurationArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.emrcontainers#SecurityConfigurationArn", name: "SecurityConfigurationArn", traits: {"smithy.api#length" => {"min" => 60, "max" => 1024}, "smithy.api#pattern" => "^arn:(aws[a-zA-Z0-9-]*):emr-containers:.+:(\\d{12}):\\/securityconfigurations\\/[0-9a-zA-Z]+$"})
    SecurityConfigurationData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrcontainers#SecurityConfigurationData", name: "SecurityConfigurationData")
    SecurityConfigurations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.emrcontainers#SecurityConfigurations", name: "SecurityConfigurations")
    SensitivePropertiesMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.emrcontainers#SensitivePropertiesMap", name: "SensitivePropertiesMap", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}, "smithy.api#sensitive" => {}})
    SessionIdleTimeoutInMinutes = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.emrcontainers#SessionIdleTimeoutInMinutes", name: "SessionIdleTimeoutInMinutes", traits: {"smithy.api#default" => 0})
    SessionTagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.emrcontainers#SessionTagValue", name: "SessionTagValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^[\\.\\-_/#A-Za-z0-9 ]+$"})
    SparkSqlJobDriver = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrcontainers#SparkSqlJobDriver", name: "SparkSqlJobDriver")
    SparkSqlParameters = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.emrcontainers#SparkSqlParameters", name: "SparkSqlParameters", traits: {"smithy.api#length" => {"min" => 1, "max" => 102400}, "smithy.api#pattern" => "\\S", "smithy.api#sensitive" => {}})
    SparkSubmitJobDriver = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrcontainers#SparkSubmitJobDriver", name: "SparkSubmitJobDriver")
    SparkSubmitParameters = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.emrcontainers#SparkSubmitParameters", name: "SparkSubmitParameters", traits: {"smithy.api#length" => {"min" => 1, "max" => 102400}, "smithy.api#pattern" => "\\S", "smithy.api#sensitive" => {}})
    StartJobRunRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrcontainers#StartJobRunRequest", name: "StartJobRunRequest")
    StartJobRunResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrcontainers#StartJobRunResponse", name: "StartJobRunResponse")
    String1024 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.emrcontainers#String1024", name: "String1024", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "\\S"})
    String128 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.emrcontainers#String128", name: "String128", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "\\S"})
    String2048 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.emrcontainers#String2048", name: "String2048", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "\\S"})
    String256 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.emrcontainers#String256", name: "String256", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "\\S"})
    StringEmpty256 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.emrcontainers#StringEmpty256", name: "StringEmpty256", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "\\S"})
    SubnetIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.emrcontainers#SubnetIds", name: "SubnetIds")
    TLSCertificateConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrcontainers#TLSCertificateConfiguration", name: "TLSCertificateConfiguration")
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.emrcontainers#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    TagMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.emrcontainers#TagMap", name: "TagMap", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrcontainers#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrcontainers#TagResourceResponse", name: "TagResourceResponse")
    TemplateParameter = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.emrcontainers#TemplateParameter", name: "TemplateParameter", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^[\\.\\-_/#A-Za-z0-9\\$\\{\\}]+$"})
    TemplateParameterConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrcontainers#TemplateParameterConfiguration", name: "TemplateParameterConfiguration")
    TemplateParameterConfigurationMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.emrcontainers#TemplateParameterConfigurationMap", name: "TemplateParameterConfigurationMap", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    TemplateParameterDataType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.emrcontainers#TemplateParameterDataType", name: "TemplateParameterDataType")
    TemplateParameterInputMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.emrcontainers#TemplateParameterInputMap", name: "TemplateParameterInputMap", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    TemplateParameterName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.emrcontainers#TemplateParameterName", name: "TemplateParameterName", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^[\\.\\-_\\#A-Za-z0-9]+$"})
    Token = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.emrcontainers#Token", name: "Token", traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#pattern" => "^.*\\S.*$", "smithy.api#sensitive" => {}})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrcontainers#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrcontainers#UntagResourceResponse", name: "UntagResourceResponse")
    UpdateVirtualClusterRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrcontainers#UpdateVirtualClusterRequest", name: "UpdateVirtualClusterRequest")
    UpdateVirtualClusterResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrcontainers#UpdateVirtualClusterResponse", name: "UpdateVirtualClusterResponse")
    UriString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.emrcontainers#UriString", name: "UriString", traits: {"smithy.api#length" => {"min" => 1, "max" => 10280}, "smithy.api#pattern" => "^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDBFF-\\uDC00\\uDFFF\\r\\n\\t]*$"})
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrcontainers#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    VirtualCluster = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrcontainers#VirtualCluster", name: "VirtualCluster")
    VirtualClusterArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.emrcontainers#VirtualClusterArn", name: "VirtualClusterArn", traits: {"smithy.api#length" => {"min" => 60, "max" => 1024}, "smithy.api#pattern" => "^arn:(aws[a-zA-Z0-9-]*):emr-containers:.+:(\\d{12}):\\/virtualclusters\\/[0-9a-zA-Z]+$"})
    VirtualClusterState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.emrcontainers#VirtualClusterState", name: "VirtualClusterState")
    VirtualClusterStates = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.emrcontainers#VirtualClusterStates", name: "VirtualClusterStates", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    VirtualClusters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.emrcontainers#VirtualClusters", name: "VirtualClusters")

    AllowAWSToRetainLogs.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    AllowAWSToRetainLogs.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    AuthenticationConfiguration.add_member(:identity_center_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityCenterConfiguration, name: "identityCenterConfiguration"))
    AuthenticationConfiguration.add_member(:iam_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: IAMConfiguration, name: "iamConfiguration"))
    AuthenticationConfiguration.type = Types::AuthenticationConfiguration
    AuthorizationConfiguration.add_member(:lake_formation_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: LakeFormationConfiguration, name: "lakeFormationConfiguration"))
    AuthorizationConfiguration.add_member(:encryption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionConfiguration, name: "encryptionConfiguration"))
    AuthorizationConfiguration.type = Types::AuthorizationConfiguration
    CancelJobRunRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdString, name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CancelJobRunRequest.add_member(:virtual_cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdString, name: "virtualClusterId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CancelJobRunRequest.type = Types::CancelJobRunRequest
    CancelJobRunResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdString, name: "id"))
    CancelJobRunResponse.add_member(:virtual_cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdString, name: "virtualClusterId"))
    CancelJobRunResponse.type = Types::CancelJobRunResponse
    Certificate.add_member(:certificate_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ACMCertArn, name: "certificateArn"))
    Certificate.add_member(:certificate_data, ::Smithy::Schema::Shapes::MemberShape.new(target: Base64Encoded, name: "certificateData"))
    Certificate.type = Types::Certificate
    CertificateProviderType.add_member(:pem, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PEM", traits: {"smithy.api#enumValue" => "PEM"}))
    CloudWatchMonitoringConfiguration.add_member(:log_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroupName, name: "logGroupName", traits: {"smithy.api#required" => {}}))
    CloudWatchMonitoringConfiguration.add_member(:log_stream_name_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: String256, name: "logStreamNamePrefix"))
    CloudWatchMonitoringConfiguration.type = Types::CloudWatchMonitoringConfiguration
    Configuration.add_member(:classification, ::Smithy::Schema::Shapes::MemberShape.new(target: String1024, name: "classification", traits: {"smithy.api#required" => {}}))
    Configuration.add_member(:properties, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitivePropertiesMap, name: "properties"))
    Configuration.add_member(:configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationList, name: "configurations"))
    Configuration.type = Types::Configuration
    ConfigurationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Configuration, name: "member"))
    ConfigurationOverrides.add_member(:application_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationList, name: "applicationConfiguration"))
    ConfigurationOverrides.add_member(:monitoring_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: MonitoringConfiguration, name: "monitoringConfiguration"))
    ConfigurationOverrides.type = Types::ConfigurationOverrides
    ContainerInfo.add_member(:eks_info, Types::ContainerInfo::EksInfo, ::Smithy::Schema::Shapes::MemberShape.new(target: EksInfo, name: "eksInfo"))
    ContainerInfo.add_member(:unknown, Types::ContainerInfo::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ContainerInfo.type = Types::ContainerInfo
    ContainerLogRotationConfiguration.add_member(:rotation_size, ::Smithy::Schema::Shapes::MemberShape.new(target: RotationSize, name: "rotationSize", traits: {"smithy.api#required" => {}}))
    ContainerLogRotationConfiguration.add_member(:max_files_to_keep, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxFilesToKeep, name: "maxFilesToKeep", traits: {"smithy.api#required" => {}}))
    ContainerLogRotationConfiguration.type = Types::ContainerLogRotationConfiguration
    ContainerProvider.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerProviderType, name: "type", traits: {"smithy.api#required" => {}}))
    ContainerProvider.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterId, name: "id", traits: {"smithy.api#required" => {}}))
    ContainerProvider.add_member(:info, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerInfo, name: "info"))
    ContainerProvider.type = Types::ContainerProvider
    ContainerProviderType.add_member(:eks, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EKS", traits: {"smithy.api#enumValue" => "EKS"}))
    CreateJobTemplateRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceNameString, name: "name", traits: {"smithy.api#required" => {}}))
    CreateJobTemplateRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateJobTemplateRequest.add_member(:job_template_data, ::Smithy::Schema::Shapes::MemberShape.new(target: JobTemplateData, name: "jobTemplateData", traits: {"smithy.api#required" => {}}))
    CreateJobTemplateRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    CreateJobTemplateRequest.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyArn, name: "kmsKeyArn"))
    CreateJobTemplateRequest.type = Types::CreateJobTemplateRequest
    CreateJobTemplateResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdString, name: "id"))
    CreateJobTemplateResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceNameString, name: "name"))
    CreateJobTemplateResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: JobTemplateArn, name: "arn"))
    CreateJobTemplateResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "createdAt"))
    CreateJobTemplateResponse.type = Types::CreateJobTemplateResponse
    CreateManagedEndpointRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceNameString, name: "name", traits: {"smithy.api#required" => {}}))
    CreateManagedEndpointRequest.add_member(:virtual_cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdString, name: "virtualClusterId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateManagedEndpointRequest.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointType, name: "type", traits: {"smithy.api#required" => {}}))
    CreateManagedEndpointRequest.add_member(:release_label, ::Smithy::Schema::Shapes::MemberShape.new(target: ReleaseLabel, name: "releaseLabel", traits: {"smithy.api#required" => {}}))
    CreateManagedEndpointRequest.add_member(:execution_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IAMRoleArn, name: "executionRoleArn", traits: {"smithy.api#required" => {}}))
    CreateManagedEndpointRequest.add_member(:certificate_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ACMCertArn, name: "certificateArn", traits: {"smithy.api#deprecated" => {"message" => "Customer provided certificate-arn is deprecated and would be removed in future."}}))
    CreateManagedEndpointRequest.add_member(:configuration_overrides, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationOverrides, name: "configurationOverrides"))
    CreateManagedEndpointRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateManagedEndpointRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    CreateManagedEndpointRequest.add_member(:session_idle_timeout_in_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionIdleTimeoutInMinutes, name: "sessionIdleTimeoutInMinutes", traits: {"smithy.api#default" => 0}))
    CreateManagedEndpointRequest.type = Types::CreateManagedEndpointRequest
    CreateManagedEndpointResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdString, name: "id"))
    CreateManagedEndpointResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceNameString, name: "name"))
    CreateManagedEndpointResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointArn, name: "arn"))
    CreateManagedEndpointResponse.add_member(:virtual_cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdString, name: "virtualClusterId"))
    CreateManagedEndpointResponse.type = Types::CreateManagedEndpointResponse
    CreateSecurityConfigurationRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateSecurityConfigurationRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceNameString, name: "name", traits: {"smithy.api#required" => {}}))
    CreateSecurityConfigurationRequest.add_member(:container_provider, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerProvider, name: "containerProvider"))
    CreateSecurityConfigurationRequest.add_member(:security_configuration_data, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityConfigurationData, name: "securityConfigurationData", traits: {"smithy.api#required" => {}}))
    CreateSecurityConfigurationRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    CreateSecurityConfigurationRequest.type = Types::CreateSecurityConfigurationRequest
    CreateSecurityConfigurationResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdString, name: "id"))
    CreateSecurityConfigurationResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceNameString, name: "name"))
    CreateSecurityConfigurationResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityConfigurationArn, name: "arn"))
    CreateSecurityConfigurationResponse.type = Types::CreateSecurityConfigurationResponse
    CreateVirtualClusterRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceNameString, name: "name", traits: {"smithy.api#required" => {}}))
    CreateVirtualClusterRequest.add_member(:container_provider, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerProvider, name: "containerProvider", traits: {"smithy.api#required" => {}}))
    CreateVirtualClusterRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateVirtualClusterRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    CreateVirtualClusterRequest.add_member(:security_configuration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdString, name: "securityConfigurationId"))
    CreateVirtualClusterRequest.add_member(:session_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "sessionEnabled"))
    CreateVirtualClusterRequest.add_member(:scheduler_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SchedulerConfiguration, name: "schedulerConfiguration"))
    CreateVirtualClusterRequest.type = Types::CreateVirtualClusterRequest
    CreateVirtualClusterResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdString, name: "id"))
    CreateVirtualClusterResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceNameString, name: "name"))
    CreateVirtualClusterResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: VirtualClusterArn, name: "arn"))
    CreateVirtualClusterResponse.type = Types::CreateVirtualClusterResponse
    Credentials.add_member(:token, Types::Credentials::Token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "token"))
    Credentials.add_member(:unknown, Types::Credentials::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    Credentials.type = Types::Credentials
    DeleteJobTemplateRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdString, name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteJobTemplateRequest.type = Types::DeleteJobTemplateRequest
    DeleteJobTemplateResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdString, name: "id"))
    DeleteJobTemplateResponse.type = Types::DeleteJobTemplateResponse
    DeleteManagedEndpointRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdString, name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteManagedEndpointRequest.add_member(:virtual_cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdString, name: "virtualClusterId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteManagedEndpointRequest.type = Types::DeleteManagedEndpointRequest
    DeleteManagedEndpointResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdString, name: "id"))
    DeleteManagedEndpointResponse.add_member(:virtual_cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdString, name: "virtualClusterId"))
    DeleteManagedEndpointResponse.type = Types::DeleteManagedEndpointResponse
    DeleteSecurityConfigurationRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdString, name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteSecurityConfigurationRequest.type = Types::DeleteSecurityConfigurationRequest
    DeleteSecurityConfigurationResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdString, name: "id"))
    DeleteSecurityConfigurationResponse.type = Types::DeleteSecurityConfigurationResponse
    DeleteVirtualClusterRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdString, name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteVirtualClusterRequest.type = Types::DeleteVirtualClusterRequest
    DeleteVirtualClusterResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdString, name: "id"))
    DeleteVirtualClusterResponse.type = Types::DeleteVirtualClusterResponse
    DescribeJobRunRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdString, name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeJobRunRequest.add_member(:virtual_cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdString, name: "virtualClusterId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeJobRunRequest.type = Types::DescribeJobRunRequest
    DescribeJobRunResponse.add_member(:job_run, ::Smithy::Schema::Shapes::MemberShape.new(target: JobRun, name: "jobRun"))
    DescribeJobRunResponse.type = Types::DescribeJobRunResponse
    DescribeJobTemplateRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdString, name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeJobTemplateRequest.type = Types::DescribeJobTemplateRequest
    DescribeJobTemplateResponse.add_member(:job_template, ::Smithy::Schema::Shapes::MemberShape.new(target: JobTemplate, name: "jobTemplate"))
    DescribeJobTemplateResponse.type = Types::DescribeJobTemplateResponse
    DescribeManagedEndpointRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdString, name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeManagedEndpointRequest.add_member(:virtual_cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdString, name: "virtualClusterId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeManagedEndpointRequest.type = Types::DescribeManagedEndpointRequest
    DescribeManagedEndpointResponse.add_member(:endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: Endpoint, name: "endpoint"))
    DescribeManagedEndpointResponse.type = Types::DescribeManagedEndpointResponse
    DescribeSecurityConfigurationRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdString, name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeSecurityConfigurationRequest.type = Types::DescribeSecurityConfigurationRequest
    DescribeSecurityConfigurationResponse.add_member(:security_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityConfiguration, name: "securityConfiguration"))
    DescribeSecurityConfigurationResponse.type = Types::DescribeSecurityConfigurationResponse
    DescribeVirtualClusterRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdString, name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeVirtualClusterRequest.type = Types::DescribeVirtualClusterRequest
    DescribeVirtualClusterResponse.add_member(:virtual_cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: VirtualCluster, name: "virtualCluster"))
    DescribeVirtualClusterResponse.type = Types::DescribeVirtualClusterResponse
    EKSRequestThrottledException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String1024, name: "message"))
    EKSRequestThrottledException.type = Types::EKSRequestThrottledException
    EksInfo.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: KubernetesNamespace, name: "namespace"))
    EksInfo.add_member(:node_label, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeLabelString, name: "nodeLabel"))
    EksInfo.type = Types::EksInfo
    EncryptionConfiguration.add_member(:in_transit_encryption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: InTransitEncryptionConfiguration, name: "inTransitEncryptionConfiguration"))
    EncryptionConfiguration.type = Types::EncryptionConfiguration
    Endpoint.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdString, name: "id"))
    Endpoint.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceNameString, name: "name"))
    Endpoint.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointArn, name: "arn"))
    Endpoint.add_member(:virtual_cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdString, name: "virtualClusterId"))
    Endpoint.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointType, name: "type"))
    Endpoint.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointState, name: "state"))
    Endpoint.add_member(:release_label, ::Smithy::Schema::Shapes::MemberShape.new(target: ReleaseLabel, name: "releaseLabel"))
    Endpoint.add_member(:execution_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IAMRoleArn, name: "executionRoleArn"))
    Endpoint.add_member(:certificate_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ACMCertArn, name: "certificateArn", traits: {"smithy.api#deprecated" => {"message" => "Customer provided certificate-arn is deprecated and would be removed in future."}}))
    Endpoint.add_member(:certificate_authority, ::Smithy::Schema::Shapes::MemberShape.new(target: Certificate, name: "certificateAuthority"))
    Endpoint.add_member(:configuration_overrides, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationOverrides, name: "configurationOverrides"))
    Endpoint.add_member(:server_url, ::Smithy::Schema::Shapes::MemberShape.new(target: UriString, name: "serverUrl"))
    Endpoint.add_member(:auth_proxy_url, ::Smithy::Schema::Shapes::MemberShape.new(target: UriString, name: "authProxyUrl"))
    Endpoint.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "createdAt"))
    Endpoint.add_member(:security_group, ::Smithy::Schema::Shapes::MemberShape.new(target: String256, name: "securityGroup"))
    Endpoint.add_member(:subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetIds, name: "subnetIds"))
    Endpoint.add_member(:state_details, ::Smithy::Schema::Shapes::MemberShape.new(target: String256, name: "stateDetails"))
    Endpoint.add_member(:failure_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureReason, name: "failureReason"))
    Endpoint.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    Endpoint.type = Types::Endpoint
    EndpointState.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    EndpointState.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    EndpointState.add_member(:terminating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TERMINATING", traits: {"smithy.api#enumValue" => "TERMINATING"}))
    EndpointState.add_member(:terminated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TERMINATED", traits: {"smithy.api#enumValue" => "TERMINATED"}))
    EndpointState.add_member(:terminated_with_errors, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TERMINATED_WITH_ERRORS", traits: {"smithy.api#enumValue" => "TERMINATED_WITH_ERRORS"}))
    EndpointStates.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointState, name: "member"))
    EndpointTypes.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointType, name: "member"))
    Endpoints.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Endpoint, name: "member"))
    EntryPointArguments.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EntryPointArgument, name: "member"))
    FailureReason.add_member(:internal_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTERNAL_ERROR", traits: {"smithy.api#enumValue" => "INTERNAL_ERROR"}))
    FailureReason.add_member(:user_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "USER_ERROR", traits: {"smithy.api#enumValue" => "USER_ERROR"}))
    FailureReason.add_member(:validation_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VALIDATION_ERROR", traits: {"smithy.api#enumValue" => "VALIDATION_ERROR"}))
    FailureReason.add_member(:cluster_unavailable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CLUSTER_UNAVAILABLE", traits: {"smithy.api#enumValue" => "CLUSTER_UNAVAILABLE"}))
    GetManagedEndpointSessionCredentialsRequest.add_member(:endpoint_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String2048, name: "endpointIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetManagedEndpointSessionCredentialsRequest.add_member(:virtual_cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String2048, name: "virtualClusterIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetManagedEndpointSessionCredentialsRequest.add_member(:execution_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IAMRoleArn, name: "executionRoleArn", traits: {"smithy.api#required" => {}}))
    GetManagedEndpointSessionCredentialsRequest.add_member(:credential_type, ::Smithy::Schema::Shapes::MemberShape.new(target: CredentialType, name: "credentialType", traits: {"smithy.api#required" => {}}))
    GetManagedEndpointSessionCredentialsRequest.add_member(:duration_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: JavaInteger, name: "durationInSeconds"))
    GetManagedEndpointSessionCredentialsRequest.add_member(:log_context, ::Smithy::Schema::Shapes::MemberShape.new(target: LogContext, name: "logContext"))
    GetManagedEndpointSessionCredentialsRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    GetManagedEndpointSessionCredentialsRequest.type = Types::GetManagedEndpointSessionCredentialsRequest
    GetManagedEndpointSessionCredentialsResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdString, name: "id"))
    GetManagedEndpointSessionCredentialsResponse.add_member(:credentials, ::Smithy::Schema::Shapes::MemberShape.new(target: Credentials, name: "credentials"))
    GetManagedEndpointSessionCredentialsResponse.add_member(:endpoint_credentials, ::Smithy::Schema::Shapes::MemberShape.new(target: Credentials, name: "endpointCredentials"))
    GetManagedEndpointSessionCredentialsResponse.add_member(:expires_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "expiresAt"))
    GetManagedEndpointSessionCredentialsResponse.type = Types::GetManagedEndpointSessionCredentialsResponse
    IAMConfiguration.add_member(:system_role, ::Smithy::Schema::Shapes::MemberShape.new(target: IAMRoleArn, name: "systemRole"))
    IAMConfiguration.type = Types::IAMConfiguration
    IdentityCenterConfiguration.add_member(:enable_identity_center, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "enableIdentityCenter"))
    IdentityCenterConfiguration.add_member(:identity_center_application_assignment_required, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "identityCenterApplicationAssignmentRequired"))
    IdentityCenterConfiguration.add_member(:identity_center_instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityCenterInstanceARN, name: "identityCenterInstanceARN"))
    IdentityCenterConfiguration.add_member(:emr_identity_center_application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: EmrIdentityCenterApplicationARN, name: "emrIdentityCenterApplicationARN"))
    IdentityCenterConfiguration.type = Types::IdentityCenterConfiguration
    InTransitEncryptionConfiguration.add_member(:tls_certificate_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: TLSCertificateConfiguration, name: "tlsCertificateConfiguration"))
    InTransitEncryptionConfiguration.type = Types::InTransitEncryptionConfiguration
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String1024, name: "message"))
    InternalServerException.type = Types::InternalServerException
    JobDriver.add_member(:spark_submit_job_driver, ::Smithy::Schema::Shapes::MemberShape.new(target: SparkSubmitJobDriver, name: "sparkSubmitJobDriver"))
    JobDriver.add_member(:spark_sql_job_driver, ::Smithy::Schema::Shapes::MemberShape.new(target: SparkSqlJobDriver, name: "sparkSqlJobDriver"))
    JobDriver.type = Types::JobDriver
    JobRun.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdString, name: "id"))
    JobRun.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceNameString, name: "name"))
    JobRun.add_member(:virtual_cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdString, name: "virtualClusterId"))
    JobRun.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: JobArn, name: "arn"))
    JobRun.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: JobRunState, name: "state"))
    JobRun.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken"))
    JobRun.add_member(:execution_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IAMRoleArn, name: "executionRoleArn"))
    JobRun.add_member(:release_label, ::Smithy::Schema::Shapes::MemberShape.new(target: ReleaseLabel, name: "releaseLabel"))
    JobRun.add_member(:configuration_overrides, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationOverrides, name: "configurationOverrides"))
    JobRun.add_member(:job_driver, ::Smithy::Schema::Shapes::MemberShape.new(target: JobDriver, name: "jobDriver"))
    JobRun.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "createdAt"))
    JobRun.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestIdentityUserArn, name: "createdBy"))
    JobRun.add_member(:finished_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "finishedAt"))
    JobRun.add_member(:state_details, ::Smithy::Schema::Shapes::MemberShape.new(target: String256, name: "stateDetails"))
    JobRun.add_member(:failure_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureReason, name: "failureReason"))
    JobRun.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    JobRun.add_member(:retry_policy_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: RetryPolicyConfiguration, name: "retryPolicyConfiguration"))
    JobRun.add_member(:retry_policy_execution, ::Smithy::Schema::Shapes::MemberShape.new(target: RetryPolicyExecution, name: "retryPolicyExecution"))
    JobRun.type = Types::JobRun
    JobRunState.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    JobRunState.add_member(:submitted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUBMITTED", traits: {"smithy.api#enumValue" => "SUBMITTED"}))
    JobRunState.add_member(:running, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RUNNING", traits: {"smithy.api#enumValue" => "RUNNING"}))
    JobRunState.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    JobRunState.add_member(:cancelled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCELLED", traits: {"smithy.api#enumValue" => "CANCELLED"}))
    JobRunState.add_member(:cancel_pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCEL_PENDING", traits: {"smithy.api#enumValue" => "CANCEL_PENDING"}))
    JobRunState.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    JobRunStates.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: JobRunState, name: "member"))
    JobRuns.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: JobRun, name: "member"))
    JobTemplate.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceNameString, name: "name"))
    JobTemplate.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdString, name: "id"))
    JobTemplate.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: JobTemplateArn, name: "arn"))
    JobTemplate.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "createdAt"))
    JobTemplate.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestIdentityUserArn, name: "createdBy"))
    JobTemplate.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    JobTemplate.add_member(:job_template_data, ::Smithy::Schema::Shapes::MemberShape.new(target: JobTemplateData, name: "jobTemplateData", traits: {"smithy.api#required" => {}}))
    JobTemplate.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyArn, name: "kmsKeyArn"))
    JobTemplate.add_member(:decryption_error, ::Smithy::Schema::Shapes::MemberShape.new(target: String2048, name: "decryptionError"))
    JobTemplate.type = Types::JobTemplate
    JobTemplateData.add_member(:execution_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ParametricIAMRoleArn, name: "executionRoleArn", traits: {"smithy.api#required" => {}}))
    JobTemplateData.add_member(:release_label, ::Smithy::Schema::Shapes::MemberShape.new(target: ParametricReleaseLabel, name: "releaseLabel", traits: {"smithy.api#required" => {}}))
    JobTemplateData.add_member(:configuration_overrides, ::Smithy::Schema::Shapes::MemberShape.new(target: ParametricConfigurationOverrides, name: "configurationOverrides"))
    JobTemplateData.add_member(:job_driver, ::Smithy::Schema::Shapes::MemberShape.new(target: JobDriver, name: "jobDriver", traits: {"smithy.api#required" => {}}))
    JobTemplateData.add_member(:parameter_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateParameterConfigurationMap, name: "parameterConfiguration"))
    JobTemplateData.add_member(:job_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "jobTags"))
    JobTemplateData.type = Types::JobTemplateData
    JobTemplates.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: JobTemplate, name: "member"))
    LakeFormationConfiguration.add_member(:authorized_session_tag_value, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionTagValue, name: "authorizedSessionTagValue"))
    LakeFormationConfiguration.add_member(:secure_namespace_info, ::Smithy::Schema::Shapes::MemberShape.new(target: SecureNamespaceInfo, name: "secureNamespaceInfo"))
    LakeFormationConfiguration.add_member(:query_engine_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IAMRoleArn, name: "queryEngineRoleArn"))
    LakeFormationConfiguration.type = Types::LakeFormationConfiguration
    ListJobRunsRequest.add_member(:virtual_cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdString, name: "virtualClusterId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListJobRunsRequest.add_member(:created_before, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "createdBefore", traits: {"smithy.api#httpQuery" => "createdBefore"}))
    ListJobRunsRequest.add_member(:created_after, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "createdAfter", traits: {"smithy.api#httpQuery" => "createdAfter"}))
    ListJobRunsRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceNameString, name: "name", traits: {"smithy.api#httpQuery" => "name"}))
    ListJobRunsRequest.add_member(:states, ::Smithy::Schema::Shapes::MemberShape.new(target: JobRunStates, name: "states", traits: {"smithy.api#httpQuery" => "states"}))
    ListJobRunsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: JavaInteger, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListJobRunsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListJobRunsRequest.type = Types::ListJobRunsRequest
    ListJobRunsResponse.add_member(:job_runs, ::Smithy::Schema::Shapes::MemberShape.new(target: JobRuns, name: "jobRuns"))
    ListJobRunsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListJobRunsResponse.type = Types::ListJobRunsResponse
    ListJobTemplatesRequest.add_member(:created_after, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "createdAfter", traits: {"smithy.api#httpQuery" => "createdAfter"}))
    ListJobTemplatesRequest.add_member(:created_before, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "createdBefore", traits: {"smithy.api#httpQuery" => "createdBefore"}))
    ListJobTemplatesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: JavaInteger, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListJobTemplatesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListJobTemplatesRequest.type = Types::ListJobTemplatesRequest
    ListJobTemplatesResponse.add_member(:templates, ::Smithy::Schema::Shapes::MemberShape.new(target: JobTemplates, name: "templates"))
    ListJobTemplatesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListJobTemplatesResponse.type = Types::ListJobTemplatesResponse
    ListManagedEndpointsRequest.add_member(:virtual_cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdString, name: "virtualClusterId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListManagedEndpointsRequest.add_member(:created_before, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "createdBefore", traits: {"smithy.api#httpQuery" => "createdBefore"}))
    ListManagedEndpointsRequest.add_member(:created_after, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "createdAfter", traits: {"smithy.api#httpQuery" => "createdAfter"}))
    ListManagedEndpointsRequest.add_member(:types, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointTypes, name: "types", traits: {"smithy.api#httpQuery" => "types"}))
    ListManagedEndpointsRequest.add_member(:states, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointStates, name: "states", traits: {"smithy.api#httpQuery" => "states"}))
    ListManagedEndpointsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: JavaInteger, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListManagedEndpointsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListManagedEndpointsRequest.type = Types::ListManagedEndpointsRequest
    ListManagedEndpointsResponse.add_member(:endpoints, ::Smithy::Schema::Shapes::MemberShape.new(target: Endpoints, name: "endpoints"))
    ListManagedEndpointsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListManagedEndpointsResponse.type = Types::ListManagedEndpointsResponse
    ListSecurityConfigurationsRequest.add_member(:created_after, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "createdAfter", traits: {"smithy.api#httpQuery" => "createdAfter"}))
    ListSecurityConfigurationsRequest.add_member(:created_before, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "createdBefore", traits: {"smithy.api#httpQuery" => "createdBefore"}))
    ListSecurityConfigurationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: JavaInteger, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListSecurityConfigurationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListSecurityConfigurationsRequest.type = Types::ListSecurityConfigurationsRequest
    ListSecurityConfigurationsResponse.add_member(:security_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityConfigurations, name: "securityConfigurations"))
    ListSecurityConfigurationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListSecurityConfigurationsResponse.type = Types::ListSecurityConfigurationsResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RsiArn, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ListVirtualClustersRequest.add_member(:container_provider_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String1024, name: "containerProviderId", traits: {"smithy.api#httpQuery" => "containerProviderId"}))
    ListVirtualClustersRequest.add_member(:container_provider_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerProviderType, name: "containerProviderType", traits: {"smithy.api#httpQuery" => "containerProviderType"}))
    ListVirtualClustersRequest.add_member(:created_after, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "createdAfter", traits: {"smithy.api#httpQuery" => "createdAfter"}))
    ListVirtualClustersRequest.add_member(:created_before, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "createdBefore", traits: {"smithy.api#httpQuery" => "createdBefore"}))
    ListVirtualClustersRequest.add_member(:states, ::Smithy::Schema::Shapes::MemberShape.new(target: VirtualClusterStates, name: "states", traits: {"smithy.api#httpQuery" => "states"}))
    ListVirtualClustersRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: JavaInteger, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListVirtualClustersRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListVirtualClustersRequest.add_member(:eks_access_entry_integrated, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "eksAccessEntryIntegrated", traits: {"smithy.api#httpQuery" => "eksAccessEntryIntegrated"}))
    ListVirtualClustersRequest.type = Types::ListVirtualClustersRequest
    ListVirtualClustersResponse.add_member(:virtual_clusters, ::Smithy::Schema::Shapes::MemberShape.new(target: VirtualClusters, name: "virtualClusters"))
    ListVirtualClustersResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListVirtualClustersResponse.type = Types::ListVirtualClustersResponse
    ManagedLogs.add_member(:allow_aws_to_retain_logs, ::Smithy::Schema::Shapes::MemberShape.new(target: AllowAWSToRetainLogs, name: "allowAWSToRetainLogs"))
    ManagedLogs.add_member(:encryption_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyArn, name: "encryptionKeyArn"))
    ManagedLogs.type = Types::ManagedLogs
    MonitoringConfiguration.add_member(:managed_logs, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedLogs, name: "managedLogs"))
    MonitoringConfiguration.add_member(:persistent_app_ui, ::Smithy::Schema::Shapes::MemberShape.new(target: PersistentAppUI, name: "persistentAppUI"))
    MonitoringConfiguration.add_member(:cloud_watch_monitoring_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchMonitoringConfiguration, name: "cloudWatchMonitoringConfiguration"))
    MonitoringConfiguration.add_member(:s3_monitoring_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: S3MonitoringConfiguration, name: "s3MonitoringConfiguration"))
    MonitoringConfiguration.add_member(:container_log_rotation_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerLogRotationConfiguration, name: "containerLogRotationConfiguration"))
    MonitoringConfiguration.type = Types::MonitoringConfiguration
    ParametricCloudWatchMonitoringConfiguration.add_member(:log_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateParameter, name: "logGroupName"))
    ParametricCloudWatchMonitoringConfiguration.add_member(:log_stream_name_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: String256, name: "logStreamNamePrefix"))
    ParametricCloudWatchMonitoringConfiguration.type = Types::ParametricCloudWatchMonitoringConfiguration
    ParametricConfigurationOverrides.add_member(:application_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationList, name: "applicationConfiguration"))
    ParametricConfigurationOverrides.add_member(:monitoring_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ParametricMonitoringConfiguration, name: "monitoringConfiguration"))
    ParametricConfigurationOverrides.type = Types::ParametricConfigurationOverrides
    ParametricMonitoringConfiguration.add_member(:persistent_app_ui, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateParameter, name: "persistentAppUI"))
    ParametricMonitoringConfiguration.add_member(:cloud_watch_monitoring_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ParametricCloudWatchMonitoringConfiguration, name: "cloudWatchMonitoringConfiguration"))
    ParametricMonitoringConfiguration.add_member(:s3_monitoring_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ParametricS3MonitoringConfiguration, name: "s3MonitoringConfiguration"))
    ParametricMonitoringConfiguration.type = Types::ParametricMonitoringConfiguration
    ParametricS3MonitoringConfiguration.add_member(:log_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: UriString, name: "logUri"))
    ParametricS3MonitoringConfiguration.type = Types::ParametricS3MonitoringConfiguration
    PersistentAppUI.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    PersistentAppUI.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    RequestThrottledException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String1024, name: "message"))
    RequestThrottledException.type = Types::RequestThrottledException
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String1024, name: "message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    RetryPolicyConfiguration.add_member(:max_attempts, ::Smithy::Schema::Shapes::MemberShape.new(target: JavaInteger, name: "maxAttempts", traits: {"smithy.api#required" => {}}))
    RetryPolicyConfiguration.type = Types::RetryPolicyConfiguration
    RetryPolicyExecution.add_member(:current_attempt_count, ::Smithy::Schema::Shapes::MemberShape.new(target: JavaInteger, name: "currentAttemptCount", traits: {"smithy.api#required" => {}}))
    RetryPolicyExecution.type = Types::RetryPolicyExecution
    S3MonitoringConfiguration.add_member(:log_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: UriString, name: "logUri", traits: {"smithy.api#required" => {}}))
    S3MonitoringConfiguration.add_member(:encryption_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyArn, name: "encryptionKeyArn"))
    S3MonitoringConfiguration.type = Types::S3MonitoringConfiguration
    SchedulerConfiguration.add_member(:max_in_queue_job_runs, ::Smithy::Schema::Shapes::MemberShape.new(target: InQueueJobLimitInteger, name: "maxInQueueJobRuns"))
    SchedulerConfiguration.add_member(:max_concurrent_job_runs, ::Smithy::Schema::Shapes::MemberShape.new(target: JobLimitInteger, name: "maxConcurrentJobRuns"))
    SchedulerConfiguration.type = Types::SchedulerConfiguration
    SchedulerStatus.add_member(:current_in_queue_job_runs, ::Smithy::Schema::Shapes::MemberShape.new(target: NonNegativeInteger, name: "currentInQueueJobRuns", traits: {"smithy.api#default" => 0}))
    SchedulerStatus.add_member(:current_concurrent_job_runs, ::Smithy::Schema::Shapes::MemberShape.new(target: NonNegativeInteger, name: "currentConcurrentJobRuns", traits: {"smithy.api#default" => 0}))
    SchedulerStatus.type = Types::SchedulerStatus
    SecureNamespaceInfo.add_member(:cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterId, name: "clusterId"))
    SecureNamespaceInfo.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: KubernetesNamespace, name: "namespace"))
    SecureNamespaceInfo.type = Types::SecureNamespaceInfo
    SecurityConfiguration.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdString, name: "id"))
    SecurityConfiguration.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceNameString, name: "name"))
    SecurityConfiguration.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityConfigurationArn, name: "arn"))
    SecurityConfiguration.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "createdAt"))
    SecurityConfiguration.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestIdentityUserArn, name: "createdBy"))
    SecurityConfiguration.add_member(:security_configuration_data, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityConfigurationData, name: "securityConfigurationData"))
    SecurityConfiguration.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    SecurityConfiguration.type = Types::SecurityConfiguration
    SecurityConfigurationData.add_member(:authorization_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthorizationConfiguration, name: "authorizationConfiguration"))
    SecurityConfigurationData.add_member(:authentication_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticationConfiguration, name: "authenticationConfiguration"))
    SecurityConfigurationData.type = Types::SecurityConfigurationData
    SecurityConfigurations.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityConfiguration, name: "member"))
    SensitivePropertiesMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: String1024, name: "key"))
    SensitivePropertiesMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String1024, name: "value"))
    SparkSqlJobDriver.add_member(:entry_point, ::Smithy::Schema::Shapes::MemberShape.new(target: EntryPointPath, name: "entryPoint"))
    SparkSqlJobDriver.add_member(:spark_sql_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: SparkSqlParameters, name: "sparkSqlParameters"))
    SparkSqlJobDriver.type = Types::SparkSqlJobDriver
    SparkSubmitJobDriver.add_member(:entry_point, ::Smithy::Schema::Shapes::MemberShape.new(target: EntryPointPath, name: "entryPoint", traits: {"smithy.api#required" => {}}))
    SparkSubmitJobDriver.add_member(:entry_point_arguments, ::Smithy::Schema::Shapes::MemberShape.new(target: EntryPointArguments, name: "entryPointArguments"))
    SparkSubmitJobDriver.add_member(:spark_submit_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: SparkSubmitParameters, name: "sparkSubmitParameters"))
    SparkSubmitJobDriver.type = Types::SparkSubmitJobDriver
    StartJobRunRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceNameString, name: "name"))
    StartJobRunRequest.add_member(:virtual_cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdString, name: "virtualClusterId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartJobRunRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    StartJobRunRequest.add_member(:execution_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IAMRoleArn, name: "executionRoleArn"))
    StartJobRunRequest.add_member(:release_label, ::Smithy::Schema::Shapes::MemberShape.new(target: ReleaseLabel, name: "releaseLabel"))
    StartJobRunRequest.add_member(:job_driver, ::Smithy::Schema::Shapes::MemberShape.new(target: JobDriver, name: "jobDriver"))
    StartJobRunRequest.add_member(:configuration_overrides, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationOverrides, name: "configurationOverrides"))
    StartJobRunRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    StartJobRunRequest.add_member(:job_template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdString, name: "jobTemplateId"))
    StartJobRunRequest.add_member(:job_template_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateParameterInputMap, name: "jobTemplateParameters"))
    StartJobRunRequest.add_member(:retry_policy_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: RetryPolicyConfiguration, name: "retryPolicyConfiguration"))
    StartJobRunRequest.type = Types::StartJobRunRequest
    StartJobRunResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdString, name: "id"))
    StartJobRunResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceNameString, name: "name"))
    StartJobRunResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: JobArn, name: "arn"))
    StartJobRunResponse.add_member(:virtual_cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdString, name: "virtualClusterId"))
    StartJobRunResponse.type = Types::StartJobRunResponse
    SubnetIds.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String256, name: "member"))
    TLSCertificateConfiguration.add_member(:certificate_provider_type, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateProviderType, name: "certificateProviderType"))
    TLSCertificateConfiguration.add_member(:public_certificate_secret_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretsManagerArn, name: "publicCertificateSecretArn"))
    TLSCertificateConfiguration.add_member(:private_certificate_secret_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretsManagerArn, name: "privateCertificateSecretArn"))
    TLSCertificateConfiguration.type = Types::TLSCertificateConfiguration
    TagKeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String128, name: "member"))
    TagMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: String128, name: "key"))
    TagMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: StringEmpty256, name: "value"))
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RsiArn, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    TemplateParameterConfiguration.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateParameterDataType, name: "type"))
    TemplateParameterConfiguration.add_member(:default_value, ::Smithy::Schema::Shapes::MemberShape.new(target: String1024, name: "defaultValue"))
    TemplateParameterConfiguration.type = Types::TemplateParameterConfiguration
    TemplateParameterConfigurationMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateParameterName, name: "key"))
    TemplateParameterConfigurationMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateParameterConfiguration, name: "value"))
    TemplateParameterDataType.add_member(:number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NUMBER", traits: {"smithy.api#enumValue" => "NUMBER"}))
    TemplateParameterDataType.add_member(:string, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STRING", traits: {"smithy.api#enumValue" => "STRING"}))
    TemplateParameterInputMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateParameterName, name: "key"))
    TemplateParameterInputMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String1024, name: "value"))
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RsiArn, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "tagKeys", traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateVirtualClusterRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdString, name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateVirtualClusterRequest.add_member(:scheduler_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SchedulerConfiguration, name: "schedulerConfiguration"))
    UpdateVirtualClusterRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    UpdateVirtualClusterRequest.type = Types::UpdateVirtualClusterRequest
    UpdateVirtualClusterResponse.add_member(:virtual_cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: VirtualCluster, name: "virtualCluster"))
    UpdateVirtualClusterResponse.type = Types::UpdateVirtualClusterResponse
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String1024, name: "message"))
    ValidationException.type = Types::ValidationException
    VirtualCluster.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdString, name: "id"))
    VirtualCluster.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceNameString, name: "name"))
    VirtualCluster.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: VirtualClusterArn, name: "arn"))
    VirtualCluster.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: VirtualClusterState, name: "state"))
    VirtualCluster.add_member(:container_provider, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerProvider, name: "containerProvider"))
    VirtualCluster.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "createdAt"))
    VirtualCluster.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    VirtualCluster.add_member(:security_configuration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdString, name: "securityConfigurationId"))
    VirtualCluster.add_member(:session_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "sessionEnabled"))
    VirtualCluster.add_member(:scheduler_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SchedulerConfiguration, name: "schedulerConfiguration"))
    VirtualCluster.add_member(:scheduler_status, ::Smithy::Schema::Shapes::MemberShape.new(target: SchedulerStatus, name: "schedulerStatus"))
    VirtualCluster.type = Types::VirtualCluster
    VirtualClusterState.add_member(:running, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RUNNING", traits: {"smithy.api#enumValue" => "RUNNING"}))
    VirtualClusterState.add_member(:terminating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TERMINATING", traits: {"smithy.api#enumValue" => "TERMINATING"}))
    VirtualClusterState.add_member(:terminated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TERMINATED", traits: {"smithy.api#enumValue" => "TERMINATED"}))
    VirtualClusterState.add_member(:arrested, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ARRESTED", traits: {"smithy.api#enumValue" => "ARRESTED"}))
    VirtualClusterStates.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: VirtualClusterState, name: "member"))
    VirtualClusters.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: VirtualCluster, name: "member"))

    AwsChicagoWebService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.emrcontainers#AwsChicagoWebService"
      service.name = "AwsChicagoWebService"
      service.version = "2020-10-01"
      service.traits = {"aws.api#service" => {"sdkId" => "EMR containers", "arnNamespace" => "emr-containers", "cloudFormationName" => "EMRcontainers", "cloudTrailEventSource" => "emrcontainers.amazonaws.com", "endpointPrefix" => "emr-containers"}, "aws.auth#sigv4" => {"name" => "emr-containers"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "Amazon EMR Containers", "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}, "UseDualStack" => {"builtIn" => "AWS::UseDualStack", "required" => true, "default" => false, "documentation" => "When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.", "type" => "boolean"}, "UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseDualStack"}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsDualStack"]}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsFIPS"]}, true]}, {"fn" => "stringEquals", "argv" => [{"ref" => "Region"}, "us-gov-east-1"]}, {"fn" => "stringEquals", "argv" => [{"ref" => "Region"}, "us-gov-west-1"]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "error" => "Invalid Configuration: Dualstack and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://emr-containers-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS and DualStack are enabled, but this partition does not support one or both", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://emr-containers.us-gov-east-1.amazonaws.com", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://emr-containers.us-gov-west-1.amazonaws.com", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://emr-containers-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS is enabled but this partition does not support FIPS", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://emr-containers.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "DualStack is enabled but this partition does not support DualStack", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://emr-containers.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 15, "nodes" => "/////wAAAAH/////AAAAAAAAAA4AAAADAAAAAQAAAAQF9eENAAAAAgAAAAUF9eENAAAAAwAAAAgAAAAGAAAABAAAAAcF9eEMAAAABQX14QoF9eELAAAABAAAAAwAAAAJAAAABgAAAAoF9eEJAAAABwX14QYAAAALAAAACAX14QcF9eEIAAAABQAAAA0F9eEFAAAABgX14QQF9eEFAAAAAwX14QEAAAAPAAAABAX14QIF9eED"}}
      service.add_operation(:cancel_job_run, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emrcontainers#CancelJobRun"
        operation.name = "CancelJobRun"
        operation.input = CancelJobRunRequest
        operation.output = CancelJobRunResponse
        operation.errors << InternalServerException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/virtualclusters/{virtualClusterId}/jobruns/{id}", "code" => 200}}
      end)
      service.add_operation(:create_job_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emrcontainers#CreateJobTemplate"
        operation.name = "CreateJobTemplate"
        operation.input = CreateJobTemplateRequest
        operation.output = CreateJobTemplateResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/jobtemplates", "code" => 200}}
      end)
      service.add_operation(:create_managed_endpoint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emrcontainers#CreateManagedEndpoint"
        operation.name = "CreateManagedEndpoint"
        operation.input = CreateManagedEndpointRequest
        operation.output = CreateManagedEndpointResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/virtualclusters/{virtualClusterId}/endpoints", "code" => 200}}
      end)
      service.add_operation(:create_security_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emrcontainers#CreateSecurityConfiguration"
        operation.name = "CreateSecurityConfiguration"
        operation.input = CreateSecurityConfigurationRequest
        operation.output = CreateSecurityConfigurationResponse
        operation.errors << InternalServerException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/securityconfigurations", "code" => 200}}
      end)
      service.add_operation(:create_virtual_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emrcontainers#CreateVirtualCluster"
        operation.name = "CreateVirtualCluster"
        operation.input = CreateVirtualClusterRequest
        operation.output = CreateVirtualClusterResponse
        operation.errors << EKSRequestThrottledException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/virtualclusters", "code" => 200}}
      end)
      service.add_operation(:delete_job_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emrcontainers#DeleteJobTemplate"
        operation.name = "DeleteJobTemplate"
        operation.input = DeleteJobTemplateRequest
        operation.output = DeleteJobTemplateResponse
        operation.errors << InternalServerException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/jobtemplates/{id}", "code" => 200}}
      end)
      service.add_operation(:delete_managed_endpoint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emrcontainers#DeleteManagedEndpoint"
        operation.name = "DeleteManagedEndpoint"
        operation.input = DeleteManagedEndpointRequest
        operation.output = DeleteManagedEndpointResponse
        operation.errors << InternalServerException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/virtualclusters/{virtualClusterId}/endpoints/{id}", "code" => 200}}
      end)
      service.add_operation(:delete_security_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emrcontainers#DeleteSecurityConfiguration"
        operation.name = "DeleteSecurityConfiguration"
        operation.input = DeleteSecurityConfigurationRequest
        operation.output = DeleteSecurityConfigurationResponse
        operation.errors << InternalServerException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/securityconfigurations/{id}", "code" => 200}}
      end)
      service.add_operation(:delete_virtual_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emrcontainers#DeleteVirtualCluster"
        operation.name = "DeleteVirtualCluster"
        operation.input = DeleteVirtualClusterRequest
        operation.output = DeleteVirtualClusterResponse
        operation.errors << InternalServerException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/virtualclusters/{id}", "code" => 200}}
      end)
      service.add_operation(:describe_job_run, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emrcontainers#DescribeJobRun"
        operation.name = "DescribeJobRun"
        operation.input = DescribeJobRunRequest
        operation.output = DescribeJobRunResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/virtualclusters/{virtualClusterId}/jobruns/{id}", "code" => 200}}
      end)
      service.add_operation(:describe_job_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emrcontainers#DescribeJobTemplate"
        operation.name = "DescribeJobTemplate"
        operation.input = DescribeJobTemplateRequest
        operation.output = DescribeJobTemplateResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/jobtemplates/{id}", "code" => 200}}
      end)
      service.add_operation(:describe_managed_endpoint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emrcontainers#DescribeManagedEndpoint"
        operation.name = "DescribeManagedEndpoint"
        operation.input = DescribeManagedEndpointRequest
        operation.output = DescribeManagedEndpointResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/virtualclusters/{virtualClusterId}/endpoints/{id}", "code" => 200}}
      end)
      service.add_operation(:describe_security_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emrcontainers#DescribeSecurityConfiguration"
        operation.name = "DescribeSecurityConfiguration"
        operation.input = DescribeSecurityConfigurationRequest
        operation.output = DescribeSecurityConfigurationResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/securityconfigurations/{id}", "code" => 200}}
      end)
      service.add_operation(:describe_virtual_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emrcontainers#DescribeVirtualCluster"
        operation.name = "DescribeVirtualCluster"
        operation.input = DescribeVirtualClusterRequest
        operation.output = DescribeVirtualClusterResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/virtualclusters/{id}", "code" => 200}}
      end)
      service.add_operation(:get_managed_endpoint_session_credentials, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emrcontainers#GetManagedEndpointSessionCredentials"
        operation.name = "GetManagedEndpointSessionCredentials"
        operation.input = GetManagedEndpointSessionCredentialsRequest
        operation.output = GetManagedEndpointSessionCredentialsResponse
        operation.errors << InternalServerException
        operation.errors << RequestThrottledException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/virtualclusters/{virtualClusterIdentifier}/endpoints/{endpointIdentifier}/credentials", "code" => 200}}
      end)
      service.add_operation(:list_job_runs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emrcontainers#ListJobRuns"
        operation.name = "ListJobRuns"
        operation.input = ListJobRunsRequest
        operation.output = ListJobRunsResponse
        operation.errors << InternalServerException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/virtualclusters/{virtualClusterId}/jobruns", "code" => 200}}
        operation[:paginator] = Paginators::ListJobRuns.new
      end)
      service.add_operation(:list_job_templates, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emrcontainers#ListJobTemplates"
        operation.name = "ListJobTemplates"
        operation.input = ListJobTemplatesRequest
        operation.output = ListJobTemplatesResponse
        operation.errors << InternalServerException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/jobtemplates", "code" => 200}}
        operation[:paginator] = Paginators::ListJobTemplates.new
      end)
      service.add_operation(:list_managed_endpoints, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emrcontainers#ListManagedEndpoints"
        operation.name = "ListManagedEndpoints"
        operation.input = ListManagedEndpointsRequest
        operation.output = ListManagedEndpointsResponse
        operation.errors << InternalServerException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/virtualclusters/{virtualClusterId}/endpoints", "code" => 200}}
        operation[:paginator] = Paginators::ListManagedEndpoints.new
      end)
      service.add_operation(:list_security_configurations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emrcontainers#ListSecurityConfigurations"
        operation.name = "ListSecurityConfigurations"
        operation.input = ListSecurityConfigurationsRequest
        operation.output = ListSecurityConfigurationsResponse
        operation.errors << InternalServerException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/securityconfigurations", "code" => 200}}
        operation[:paginator] = Paginators::ListSecurityConfigurations.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emrcontainers#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{resourceArn}", "code" => 200}}
      end)
      service.add_operation(:list_virtual_clusters, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emrcontainers#ListVirtualClusters"
        operation.name = "ListVirtualClusters"
        operation.input = ListVirtualClustersRequest
        operation.output = ListVirtualClustersResponse
        operation.errors << InternalServerException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/virtualclusters", "code" => 200}}
        operation[:paginator] = Paginators::ListVirtualClusters.new
      end)
      service.add_operation(:start_job_run, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emrcontainers#StartJobRun"
        operation.name = "StartJobRun"
        operation.input = StartJobRunRequest
        operation.output = StartJobRunResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/virtualclusters/{virtualClusterId}/jobruns", "code" => 200}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emrcontainers#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags/{resourceArn}", "code" => 200}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emrcontainers#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = UntagResourceResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{resourceArn}", "code" => 200}}
      end)
      service.add_operation(:update_virtual_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emrcontainers#UpdateVirtualCluster"
        operation.name = "UpdateVirtualCluster"
        operation.input = UpdateVirtualClusterRequest
        operation.output = UpdateVirtualClusterResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/virtualclusters/{id}", "code" => 200}, "smithy.api#idempotent" => {}}
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
