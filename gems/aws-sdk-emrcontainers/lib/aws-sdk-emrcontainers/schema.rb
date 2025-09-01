# frozen_string_literal: true

# This is generated code!

module Aws::EMRcontainers
  # This module contains a schema composed of shapes used by the client.
  module Schema

    ACMCertArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.emrcontainers#ACMCertArn', name: 'ACMCertArn', traits: {"smithy.api#length" => {"min" => 44, "max" => 2048}, "smithy.api#pattern" => "^arn:(aws[a-zA-Z0-9-]*):acm:.+:(\\d{12}):certificate/.+$"})
    AllowAWSToRetainLogs = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.emrcontainers#AllowAWSToRetainLogs', name: 'AllowAWSToRetainLogs')
    AuthorizationConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrcontainers#AuthorizationConfiguration', name: 'AuthorizationConfiguration')
    Base64Encoded = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.emrcontainers#Base64Encoded', name: 'Base64Encoded', traits: {"smithy.api#length" => {"min" => 0, "max" => 5000}, "smithy.api#pattern" => "^([A-Za-z0-9+/]{4})*([A-Za-z0-9+/]{4}|[A-Za-z0-9+/]{3}=|[A-Za-z0-9+/]{2}==)?$"})
    Boolean = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.emrcontainers#Boolean', name: 'Boolean')
    CancelJobRunRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrcontainers#CancelJobRunRequest', name: 'CancelJobRunRequest')
    CancelJobRunResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrcontainers#CancelJobRunResponse', name: 'CancelJobRunResponse')
    Certificate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrcontainers#Certificate', name: 'Certificate')
    CertificateProviderType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.emrcontainers#CertificateProviderType', name: 'CertificateProviderType')
    ClientToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.emrcontainers#ClientToken', name: 'ClientToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "\\S"})
    CloudWatchMonitoringConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrcontainers#CloudWatchMonitoringConfiguration', name: 'CloudWatchMonitoringConfiguration')
    ClusterId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.emrcontainers#ClusterId', name: 'ClusterId', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[0-9A-Za-z][A-Za-z0-9\\-_]*$"})
    Configuration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrcontainers#Configuration', name: 'Configuration')
    ConfigurationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.emrcontainers#ConfigurationList', name: 'ConfigurationList', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    ConfigurationOverrides = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrcontainers#ConfigurationOverrides', name: 'ConfigurationOverrides')
    ContainerInfo = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.emrcontainers#ContainerInfo', name: 'ContainerInfo')
    ContainerLogRotationConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrcontainers#ContainerLogRotationConfiguration', name: 'ContainerLogRotationConfiguration')
    ContainerProvider = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrcontainers#ContainerProvider', name: 'ContainerProvider')
    ContainerProviderType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.emrcontainers#ContainerProviderType', name: 'ContainerProviderType')
    CreateJobTemplateRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrcontainers#CreateJobTemplateRequest', name: 'CreateJobTemplateRequest')
    CreateJobTemplateResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrcontainers#CreateJobTemplateResponse', name: 'CreateJobTemplateResponse')
    CreateManagedEndpointRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrcontainers#CreateManagedEndpointRequest', name: 'CreateManagedEndpointRequest')
    CreateManagedEndpointResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrcontainers#CreateManagedEndpointResponse', name: 'CreateManagedEndpointResponse')
    CreateSecurityConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrcontainers#CreateSecurityConfigurationRequest', name: 'CreateSecurityConfigurationRequest')
    CreateSecurityConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrcontainers#CreateSecurityConfigurationResponse', name: 'CreateSecurityConfigurationResponse')
    CreateVirtualClusterRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrcontainers#CreateVirtualClusterRequest', name: 'CreateVirtualClusterRequest')
    CreateVirtualClusterResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrcontainers#CreateVirtualClusterResponse', name: 'CreateVirtualClusterResponse')
    CredentialType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.emrcontainers#CredentialType', name: 'CredentialType', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^.*\\S.*$"})
    Credentials = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.emrcontainers#Credentials', name: 'Credentials')
    Date = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.emrcontainers#Date', name: 'Date', traits: {"smithy.api#timestampFormat" => "date-time"})
    DeleteJobTemplateRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrcontainers#DeleteJobTemplateRequest', name: 'DeleteJobTemplateRequest')
    DeleteJobTemplateResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrcontainers#DeleteJobTemplateResponse', name: 'DeleteJobTemplateResponse')
    DeleteManagedEndpointRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrcontainers#DeleteManagedEndpointRequest', name: 'DeleteManagedEndpointRequest')
    DeleteManagedEndpointResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrcontainers#DeleteManagedEndpointResponse', name: 'DeleteManagedEndpointResponse')
    DeleteVirtualClusterRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrcontainers#DeleteVirtualClusterRequest', name: 'DeleteVirtualClusterRequest')
    DeleteVirtualClusterResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrcontainers#DeleteVirtualClusterResponse', name: 'DeleteVirtualClusterResponse')
    DescribeJobRunRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrcontainers#DescribeJobRunRequest', name: 'DescribeJobRunRequest')
    DescribeJobRunResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrcontainers#DescribeJobRunResponse', name: 'DescribeJobRunResponse')
    DescribeJobTemplateRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrcontainers#DescribeJobTemplateRequest', name: 'DescribeJobTemplateRequest')
    DescribeJobTemplateResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrcontainers#DescribeJobTemplateResponse', name: 'DescribeJobTemplateResponse')
    DescribeManagedEndpointRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrcontainers#DescribeManagedEndpointRequest', name: 'DescribeManagedEndpointRequest')
    DescribeManagedEndpointResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrcontainers#DescribeManagedEndpointResponse', name: 'DescribeManagedEndpointResponse')
    DescribeSecurityConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrcontainers#DescribeSecurityConfigurationRequest', name: 'DescribeSecurityConfigurationRequest')
    DescribeSecurityConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrcontainers#DescribeSecurityConfigurationResponse', name: 'DescribeSecurityConfigurationResponse')
    DescribeVirtualClusterRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrcontainers#DescribeVirtualClusterRequest', name: 'DescribeVirtualClusterRequest')
    DescribeVirtualClusterResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrcontainers#DescribeVirtualClusterResponse', name: 'DescribeVirtualClusterResponse')
    EKSRequestThrottledException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrcontainers#EKSRequestThrottledException', name: 'EKSRequestThrottledException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    EksInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrcontainers#EksInfo', name: 'EksInfo')
    EncryptionConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrcontainers#EncryptionConfiguration', name: 'EncryptionConfiguration')
    Endpoint = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrcontainers#Endpoint', name: 'Endpoint')
    EndpointArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.emrcontainers#EndpointArn', name: 'EndpointArn', traits: {"smithy.api#length" => {"min" => 60, "max" => 1024}, "smithy.api#pattern" => "^arn:(aws[a-zA-Z0-9-]*):emr-containers:.+:(\\d{12}):\\/virtualclusters\\/[0-9a-zA-Z]+\\/endpoints\\/[0-9a-zA-Z]+$"})
    EndpointState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.emrcontainers#EndpointState', name: 'EndpointState')
    EndpointStates = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.emrcontainers#EndpointStates', name: 'EndpointStates', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    EndpointType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.emrcontainers#EndpointType', name: 'EndpointType', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "\\S"})
    EndpointTypes = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.emrcontainers#EndpointTypes', name: 'EndpointTypes', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    Endpoints = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.emrcontainers#Endpoints', name: 'Endpoints')
    EntryPointArgument = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.emrcontainers#EntryPointArgument', name: 'EntryPointArgument', traits: {"smithy.api#length" => {"min" => 1, "max" => 10280}, "smithy.api#pattern" => "\\S", "smithy.api#sensitive" => {}})
    EntryPointArguments = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.emrcontainers#EntryPointArguments', name: 'EntryPointArguments')
    EntryPointPath = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.emrcontainers#EntryPointPath', name: 'EntryPointPath', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "\\S", "smithy.api#sensitive" => {}})
    FailureReason = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.emrcontainers#FailureReason', name: 'FailureReason')
    GetManagedEndpointSessionCredentialsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrcontainers#GetManagedEndpointSessionCredentialsRequest', name: 'GetManagedEndpointSessionCredentialsRequest')
    GetManagedEndpointSessionCredentialsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrcontainers#GetManagedEndpointSessionCredentialsResponse', name: 'GetManagedEndpointSessionCredentialsResponse')
    IAMRoleArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.emrcontainers#IAMRoleArn', name: 'IAMRoleArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:(aws[a-zA-Z0-9-]*):iam::(\\d{12})?:(role((\\u002F)|(\\u002F[\\u0021-\\u007F]+\\u002F))[\\w+=,.@-]+)$"})
    InTransitEncryptionConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrcontainers#InTransitEncryptionConfiguration', name: 'InTransitEncryptionConfiguration')
    InternalServerException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrcontainers#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    JavaInteger = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.emrcontainers#JavaInteger', name: 'JavaInteger')
    JobArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.emrcontainers#JobArn', name: 'JobArn', traits: {"smithy.api#length" => {"min" => 60, "max" => 1024}, "smithy.api#pattern" => "^arn:(aws[a-zA-Z0-9-]*):emr-containers:.+:(\\d{12}):\\/virtualclusters\\/[0-9a-zA-Z]+\\/jobruns\\/[0-9a-zA-Z]+$"})
    JobDriver = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrcontainers#JobDriver', name: 'JobDriver')
    JobRun = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrcontainers#JobRun', name: 'JobRun')
    JobRunState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.emrcontainers#JobRunState', name: 'JobRunState')
    JobRunStates = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.emrcontainers#JobRunStates', name: 'JobRunStates', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    JobRuns = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.emrcontainers#JobRuns', name: 'JobRuns')
    JobTemplate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrcontainers#JobTemplate', name: 'JobTemplate')
    JobTemplateArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.emrcontainers#JobTemplateArn', name: 'JobTemplateArn', traits: {"smithy.api#length" => {"min" => 60, "max" => 1024}, "smithy.api#pattern" => "^arn:(aws[a-zA-Z0-9-]*):emr-containers:.+:(\\d{12}):\\/jobtemplates\\/[0-9a-zA-Z]+$"})
    JobTemplateData = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrcontainers#JobTemplateData', name: 'JobTemplateData')
    JobTemplates = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.emrcontainers#JobTemplates', name: 'JobTemplates')
    KmsKeyArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.emrcontainers#KmsKeyArn', name: 'KmsKeyArn', traits: {"smithy.api#length" => {"min" => 3, "max" => 2048}, "smithy.api#pattern" => "^(arn:(aws[a-zA-Z0-9-]*):kms:.+:(\\d{12})?:key\\/[(0-9a-zA-Z)-?]+|\\$\\{[a-zA-Z]\\w*\\})$"})
    KubernetesNamespace = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.emrcontainers#KubernetesNamespace', name: 'KubernetesNamespace', traits: {"smithy.api#length" => {"min" => 1, "max" => 63}, "smithy.api#pattern" => "^[a-z0-9]([-a-z0-9]*[a-z0-9])?$"})
    LakeFormationConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrcontainers#LakeFormationConfiguration', name: 'LakeFormationConfiguration')
    ListJobRunsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrcontainers#ListJobRunsRequest', name: 'ListJobRunsRequest')
    ListJobRunsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrcontainers#ListJobRunsResponse', name: 'ListJobRunsResponse')
    ListJobTemplatesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrcontainers#ListJobTemplatesRequest', name: 'ListJobTemplatesRequest')
    ListJobTemplatesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrcontainers#ListJobTemplatesResponse', name: 'ListJobTemplatesResponse')
    ListManagedEndpointsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrcontainers#ListManagedEndpointsRequest', name: 'ListManagedEndpointsRequest')
    ListManagedEndpointsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrcontainers#ListManagedEndpointsResponse', name: 'ListManagedEndpointsResponse')
    ListSecurityConfigurationsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrcontainers#ListSecurityConfigurationsRequest', name: 'ListSecurityConfigurationsRequest')
    ListSecurityConfigurationsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrcontainers#ListSecurityConfigurationsResponse', name: 'ListSecurityConfigurationsResponse')
    ListTagsForResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrcontainers#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrcontainers#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    ListVirtualClustersRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrcontainers#ListVirtualClustersRequest', name: 'ListVirtualClustersRequest')
    ListVirtualClustersResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrcontainers#ListVirtualClustersResponse', name: 'ListVirtualClustersResponse')
    LogContext = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.emrcontainers#LogContext', name: 'LogContext', traits: {"smithy.api#length" => {"min" => 3, "max" => 63}, "smithy.api#pattern" => "^((?!.*-s3alias)(?!xn--.*)[a-z0-9][-a-z0-9.]*)?[a-z0-9]$"})
    LogGroupName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.emrcontainers#LogGroupName', name: 'LogGroupName', traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^[\\.\\-_/#A-Za-z0-9]+$"})
    ManagedLogs = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrcontainers#ManagedLogs', name: 'ManagedLogs')
    MaxFilesToKeep = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.emrcontainers#MaxFilesToKeep', name: 'MaxFilesToKeep', traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    MonitoringConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrcontainers#MonitoringConfiguration', name: 'MonitoringConfiguration')
    NextToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.emrcontainers#NextToken', name: 'NextToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "\\S"})
    ParametricCloudWatchMonitoringConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrcontainers#ParametricCloudWatchMonitoringConfiguration', name: 'ParametricCloudWatchMonitoringConfiguration')
    ParametricConfigurationOverrides = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrcontainers#ParametricConfigurationOverrides', name: 'ParametricConfigurationOverrides')
    ParametricIAMRoleArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.emrcontainers#ParametricIAMRoleArn', name: 'ParametricIAMRoleArn', traits: {"smithy.api#length" => {"min" => 4, "max" => 2048}, "smithy.api#pattern" => "^(^arn:(aws[a-zA-Z0-9-]*):iam::(\\d{12})?:(role((\\u002F)|(\\u002F[\\u0021-\\u007F]+\\u002F))[\\w+=,.@-]+)$)|([\\.\\-_\\#A-Za-z0-9\\$\\{\\}]+)$"})
    ParametricMonitoringConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrcontainers#ParametricMonitoringConfiguration', name: 'ParametricMonitoringConfiguration')
    ParametricReleaseLabel = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.emrcontainers#ParametricReleaseLabel', name: 'ParametricReleaseLabel', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^([\\.\\-_/A-Za-z0-9]+|\\$\\{[a-zA-Z]\\w*\\})$"})
    ParametricS3MonitoringConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrcontainers#ParametricS3MonitoringConfiguration', name: 'ParametricS3MonitoringConfiguration')
    PersistentAppUI = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.emrcontainers#PersistentAppUI', name: 'PersistentAppUI')
    ReleaseLabel = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.emrcontainers#ReleaseLabel', name: 'ReleaseLabel', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[\\.\\-_/A-Za-z0-9]+$"})
    RequestIdentityUserArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.emrcontainers#RequestIdentityUserArn', name: 'RequestIdentityUserArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:(aws[a-zA-Z0-9-]*):(iam|sts)::(\\d{12})?:[\\w/+=,.@-]+$"})
    RequestThrottledException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrcontainers#RequestThrottledException', name: 'RequestThrottledException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ResourceIdString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.emrcontainers#ResourceIdString', name: 'ResourceIdString', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[0-9a-z]+$"})
    ResourceNameString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.emrcontainers#ResourceNameString', name: 'ResourceNameString', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[\\.\\-_/#A-Za-z0-9]+$"})
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrcontainers#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    RetryPolicyConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrcontainers#RetryPolicyConfiguration', name: 'RetryPolicyConfiguration')
    RetryPolicyExecution = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrcontainers#RetryPolicyExecution', name: 'RetryPolicyExecution')
    RotationSize = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.emrcontainers#RotationSize', name: 'RotationSize', traits: {"smithy.api#length" => {"min" => 3, "max" => 12}, "smithy.api#pattern" => "^\\d+(\\.\\d+)?[KMG][Bb]?$"})
    RsiArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.emrcontainers#RsiArn', name: 'RsiArn', traits: {"smithy.api#length" => {"min" => 60, "max" => 500}, "smithy.api#pattern" => "^arn:(aws[a-zA-Z0-9-]*):emr-containers:.+:(\\d{12}):/virtualclusters/.+$"})
    S3MonitoringConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrcontainers#S3MonitoringConfiguration', name: 'S3MonitoringConfiguration')
    SecretsManagerArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.emrcontainers#SecretsManagerArn', name: 'SecretsManagerArn', traits: {"smithy.api#length" => {"min" => 3, "max" => 2048}, "smithy.api#pattern" => "^arn:(aws[a-zA-Z0-9-]*):secretsmanager:.+:(\\d{12}):secret:[0-9a-zA-Z/_+=.@-]+$"})
    SecureNamespaceInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrcontainers#SecureNamespaceInfo', name: 'SecureNamespaceInfo')
    SecurityConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrcontainers#SecurityConfiguration', name: 'SecurityConfiguration')
    SecurityConfigurationArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.emrcontainers#SecurityConfigurationArn', name: 'SecurityConfigurationArn', traits: {"smithy.api#length" => {"min" => 60, "max" => 1024}, "smithy.api#pattern" => "^arn:(aws[a-zA-Z0-9-]*):emr-containers:.+:(\\d{12}):\\/securityconfigurations\\/[0-9a-zA-Z]+$"})
    SecurityConfigurationData = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrcontainers#SecurityConfigurationData', name: 'SecurityConfigurationData')
    SecurityConfigurations = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.emrcontainers#SecurityConfigurations', name: 'SecurityConfigurations')
    SensitivePropertiesMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.emrcontainers#SensitivePropertiesMap', name: 'SensitivePropertiesMap', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}, "smithy.api#sensitive" => {}})
    SessionTagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.emrcontainers#SessionTagValue', name: 'SessionTagValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^[\\.\\-_/#A-Za-z0-9 ]+$"})
    SparkSqlJobDriver = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrcontainers#SparkSqlJobDriver', name: 'SparkSqlJobDriver')
    SparkSqlParameters = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.emrcontainers#SparkSqlParameters', name: 'SparkSqlParameters', traits: {"smithy.api#length" => {"min" => 1, "max" => 102400}, "smithy.api#pattern" => "\\S", "smithy.api#sensitive" => {}})
    SparkSubmitJobDriver = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrcontainers#SparkSubmitJobDriver', name: 'SparkSubmitJobDriver')
    SparkSubmitParameters = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.emrcontainers#SparkSubmitParameters', name: 'SparkSubmitParameters', traits: {"smithy.api#length" => {"min" => 1, "max" => 102400}, "smithy.api#pattern" => "\\S", "smithy.api#sensitive" => {}})
    StartJobRunRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrcontainers#StartJobRunRequest', name: 'StartJobRunRequest')
    StartJobRunResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrcontainers#StartJobRunResponse', name: 'StartJobRunResponse')
    String1024 = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.emrcontainers#String1024', name: 'String1024', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "\\S"})
    String128 = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.emrcontainers#String128', name: 'String128', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "\\S"})
    String2048 = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.emrcontainers#String2048', name: 'String2048', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "\\S"})
    String256 = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.emrcontainers#String256', name: 'String256', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "\\S"})
    StringEmpty256 = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.emrcontainers#StringEmpty256', name: 'StringEmpty256', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "\\S"})
    SubnetIds = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.emrcontainers#SubnetIds', name: 'SubnetIds')
    TLSCertificateConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrcontainers#TLSCertificateConfiguration', name: 'TLSCertificateConfiguration')
    TagKeyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.emrcontainers#TagKeyList', name: 'TagKeyList', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    TagMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.emrcontainers#TagMap', name: 'TagMap', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    TagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrcontainers#TagResourceRequest', name: 'TagResourceRequest')
    TagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrcontainers#TagResourceResponse', name: 'TagResourceResponse')
    TemplateParameter = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.emrcontainers#TemplateParameter', name: 'TemplateParameter', traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^[\\.\\-_/#A-Za-z0-9\\$\\{\\}]+$"})
    TemplateParameterConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrcontainers#TemplateParameterConfiguration', name: 'TemplateParameterConfiguration')
    TemplateParameterConfigurationMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.emrcontainers#TemplateParameterConfigurationMap', name: 'TemplateParameterConfigurationMap', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    TemplateParameterDataType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.emrcontainers#TemplateParameterDataType', name: 'TemplateParameterDataType')
    TemplateParameterInputMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.emrcontainers#TemplateParameterInputMap', name: 'TemplateParameterInputMap', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    TemplateParameterName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.emrcontainers#TemplateParameterName', name: 'TemplateParameterName', traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^[\\.\\-_\\#A-Za-z0-9]+$"})
    Token = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.emrcontainers#Token', name: 'Token', traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#pattern" => "^.*\\S.*$", "smithy.api#sensitive" => {}})
    UntagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrcontainers#UntagResourceRequest', name: 'UntagResourceRequest')
    UntagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrcontainers#UntagResourceResponse', name: 'UntagResourceResponse')
    UriString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.emrcontainers#UriString', name: 'UriString', traits: {"smithy.api#length" => {"min" => 1, "max" => 10280}, "smithy.api#pattern" => "^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDBFF-\\uDC00\\uDFFF\\r\\n\\t]*$"})
    ValidationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrcontainers#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    VirtualCluster = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrcontainers#VirtualCluster', name: 'VirtualCluster')
    VirtualClusterArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.emrcontainers#VirtualClusterArn', name: 'VirtualClusterArn', traits: {"smithy.api#length" => {"min" => 60, "max" => 1024}, "smithy.api#pattern" => "^arn:(aws[a-zA-Z0-9-]*):emr-containers:.+:(\\d{12}):\\/virtualclusters\\/[0-9a-zA-Z]+$"})
    VirtualClusterState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.emrcontainers#VirtualClusterState', name: 'VirtualClusterState')
    VirtualClusterStates = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.emrcontainers#VirtualClusterStates', name: 'VirtualClusterStates', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    VirtualClusters = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.emrcontainers#VirtualClusters', name: 'VirtualClusters')

    AllowAWSToRetainLogs.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    AllowAWSToRetainLogs.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    AuthorizationConfiguration.add_member(:lake_formation_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: LakeFormationConfiguration, location_name: 'lakeFormationConfiguration', traits: {"smithy.api#documentation" => "<p>Lake Formation related configuration inputs for the security\n         configuration.</p>"}))
    AuthorizationConfiguration.add_member(:encryption_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionConfiguration, location_name: 'encryptionConfiguration', traits: {"smithy.api#documentation" => "<p>Encryption-related configuration input for the security configuration.</p>"}))
    AuthorizationConfiguration.type = Types::AuthorizationConfiguration
    CancelJobRunRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdString, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the job run to cancel.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CancelJobRunRequest.add_member(:virtual_cluster_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdString, location_name: 'virtualClusterId', traits: {"smithy.api#documentation" => "<p>The ID of the virtual cluster for which the job run will be canceled.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CancelJobRunRequest.type = Types::CancelJobRunRequest
    CancelJobRunResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdString, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The output contains the ID of the cancelled job run.</p>"}))
    CancelJobRunResponse.add_member(:virtual_cluster_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdString, location_name: 'virtualClusterId', traits: {"smithy.api#documentation" => "<p>The output contains the virtual cluster ID for which the job run is cancelled.</p>"}))
    CancelJobRunResponse.type = Types::CancelJobRunResponse
    Certificate.add_member(:certificate_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ACMCertArn, location_name: 'certificateArn', traits: {"smithy.api#documentation" => "<p>The ARN of the certificate generated for managed endpoint.</p>"}))
    Certificate.add_member(:certificate_data, Smithy::Schema::Shapes::ShapeRef.new(shape: Base64Encoded, location_name: 'certificateData', traits: {"smithy.api#documentation" => "<p>The base64 encoded PEM certificate data generated for managed endpoint.</p>"}))
    Certificate.type = Types::Certificate
    CertificateProviderType.add_member(:pem, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PEM', traits: {"smithy.api#enumValue" => "PEM"}))
    CloudWatchMonitoringConfiguration.add_member(:log_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: LogGroupName, location_name: 'logGroupName', traits: {"smithy.api#documentation" => "<p>The name of the log group for log publishing.</p>", "smithy.api#required" => {}}))
    CloudWatchMonitoringConfiguration.add_member(:log_stream_name_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: String256, location_name: 'logStreamNamePrefix', traits: {"smithy.api#documentation" => "<p>The specified name prefix for log streams.</p>"}))
    CloudWatchMonitoringConfiguration.type = Types::CloudWatchMonitoringConfiguration
    Configuration.add_member(:classification, Smithy::Schema::Shapes::ShapeRef.new(shape: String1024, location_name: 'classification', traits: {"smithy.api#documentation" => "<p>The classification within a configuration.</p>", "smithy.api#required" => {}}))
    Configuration.add_member(:properties, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitivePropertiesMap, location_name: 'properties', traits: {"smithy.api#documentation" => "<p>A set of properties specified within a configuration classification.</p>"}))
    Configuration.add_member(:configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationList, location_name: 'configurations', traits: {"smithy.api#documentation" => "<p>A list of additional configurations to apply within a configuration object.</p>"}))
    Configuration.type = Types::Configuration
    ConfigurationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Configuration)
    ConfigurationOverrides.add_member(:application_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationList, location_name: 'applicationConfiguration', traits: {"smithy.api#documentation" => "<p>The configurations for the application running by the job run. </p>"}))
    ConfigurationOverrides.add_member(:monitoring_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: MonitoringConfiguration, location_name: 'monitoringConfiguration', traits: {"smithy.api#documentation" => "<p>The configurations for monitoring.</p>"}))
    ConfigurationOverrides.type = Types::ConfigurationOverrides
    ContainerInfo.add_member(:eks_info, Types::ContainerInfo::EksInfo, Smithy::Schema::Shapes::ShapeRef.new(shape: EksInfo, location_name: 'eksInfo', traits: {"smithy.api#documentation" => "<p>The information about the Amazon EKS cluster.</p>"}))
    ContainerInfo.add_member(:unknown, Types::ContainerInfo::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    ContainerInfo.type = Types::ContainerInfo
    ContainerLogRotationConfiguration.add_member(:rotation_size, Smithy::Schema::Shapes::ShapeRef.new(shape: RotationSize, location_name: 'rotationSize', traits: {"smithy.api#documentation" => "<p>The file size at which to rotate logs. Minimum of 2KB, Maximum of 2GB.</p>", "smithy.api#required" => {}}))
    ContainerLogRotationConfiguration.add_member(:max_files_to_keep, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxFilesToKeep, location_name: 'maxFilesToKeep', traits: {"smithy.api#documentation" => "<p>The number of files to keep in container after rotation.</p>", "smithy.api#required" => {}}))
    ContainerLogRotationConfiguration.type = Types::ContainerLogRotationConfiguration
    ContainerProvider.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerProviderType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of the container provider. Amazon EKS is the only supported type as of\n         now.</p>", "smithy.api#required" => {}}))
    ContainerProvider.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the container cluster.</p>", "smithy.api#required" => {}}))
    ContainerProvider.add_member(:info, Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerInfo, location_name: 'info', traits: {"smithy.api#documentation" => "<p>The information about the container cluster.</p>"}))
    ContainerProvider.type = Types::ContainerProvider
    ContainerProviderType.add_member(:eks, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EKS', traits: {"smithy.api#enumValue" => "EKS"}))
    CreateJobTemplateRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNameString, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The specified name of the job template.</p>", "smithy.api#required" => {}}))
    CreateJobTemplateRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>The client token of the job template.</p>", "smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateJobTemplateRequest.add_member(:job_template_data, Smithy::Schema::Shapes::ShapeRef.new(shape: JobTemplateData, location_name: 'jobTemplateData', traits: {"smithy.api#documentation" => "<p>The job template data which holds values of StartJobRun API request.</p>", "smithy.api#required" => {}}))
    CreateJobTemplateRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags that are associated with the job template.</p>"}))
    CreateJobTemplateRequest.add_member(:kms_key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'kmsKeyArn', traits: {"smithy.api#documentation" => "<p>The KMS key ARN used to encrypt the job template.</p>"}))
    CreateJobTemplateRequest.type = Types::CreateJobTemplateRequest
    CreateJobTemplateResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdString, location_name: 'id', traits: {"smithy.api#documentation" => "<p>This output display the created job template ID.</p>"}))
    CreateJobTemplateResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNameString, location_name: 'name', traits: {"smithy.api#documentation" => "<p>This output displays the name of the created job template.</p>"}))
    CreateJobTemplateResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: JobTemplateArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>This output display the ARN of the created job template.</p>"}))
    CreateJobTemplateResponse.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>This output displays the date and time when the job template was created.</p>"}))
    CreateJobTemplateResponse.type = Types::CreateJobTemplateResponse
    CreateManagedEndpointRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNameString, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the managed endpoint.</p>", "smithy.api#required" => {}}))
    CreateManagedEndpointRequest.add_member(:virtual_cluster_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdString, location_name: 'virtualClusterId', traits: {"smithy.api#documentation" => "<p>The ID of the virtual cluster for which a managed endpoint is created.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateManagedEndpointRequest.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of the managed endpoint.</p>", "smithy.api#required" => {}}))
    CreateManagedEndpointRequest.add_member(:release_label, Smithy::Schema::Shapes::ShapeRef.new(shape: ReleaseLabel, location_name: 'releaseLabel', traits: {"smithy.api#documentation" => "<p>The Amazon EMR release version.</p>", "smithy.api#required" => {}}))
    CreateManagedEndpointRequest.add_member(:execution_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IAMRoleArn, location_name: 'executionRoleArn', traits: {"smithy.api#documentation" => "<p>The ARN of the execution role.</p>", "smithy.api#required" => {}}))
    CreateManagedEndpointRequest.add_member(:certificate_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ACMCertArn, location_name: 'certificateArn', traits: {"smithy.api#deprecated" => {"message" => "Customer provided certificate-arn is deprecated and would be removed in future."}, "smithy.api#documentation" => "<p>The certificate ARN provided by users for the managed endpoint. This field is under\n         deprecation and will be removed in future releases.</p>"}))
    CreateManagedEndpointRequest.add_member(:configuration_overrides, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationOverrides, location_name: 'configurationOverrides', traits: {"smithy.api#documentation" => "<p>The configuration settings that will be used to override existing configurations.</p>"}))
    CreateManagedEndpointRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>The client idempotency token for this create call.</p>", "smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateManagedEndpointRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags of the managed endpoint. </p>"}))
    CreateManagedEndpointRequest.type = Types::CreateManagedEndpointRequest
    CreateManagedEndpointResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdString, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The output contains the ID of the managed endpoint.</p>"}))
    CreateManagedEndpointResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNameString, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The output contains the name of the managed endpoint.</p>"}))
    CreateManagedEndpointResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The output contains the ARN of the managed endpoint.</p>"}))
    CreateManagedEndpointResponse.add_member(:virtual_cluster_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdString, location_name: 'virtualClusterId', traits: {"smithy.api#documentation" => "<p>The output contains the ID of the virtual cluster.</p>"}))
    CreateManagedEndpointResponse.type = Types::CreateManagedEndpointResponse
    CreateSecurityConfigurationRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>The client idempotency token to use when creating the security configuration.</p>", "smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateSecurityConfigurationRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNameString, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the security configuration.</p>", "smithy.api#required" => {}}))
    CreateSecurityConfigurationRequest.add_member(:security_configuration_data, Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityConfigurationData, location_name: 'securityConfigurationData', traits: {"smithy.api#documentation" => "<p>Security configuration input for the request.</p>", "smithy.api#required" => {}}))
    CreateSecurityConfigurationRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags to add to the security configuration.</p>"}))
    CreateSecurityConfigurationRequest.type = Types::CreateSecurityConfigurationRequest
    CreateSecurityConfigurationResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdString, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the security configuration.</p>"}))
    CreateSecurityConfigurationResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNameString, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the security configuration.</p>"}))
    CreateSecurityConfigurationResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityConfigurationArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The ARN (Amazon Resource Name) of the security configuration.</p>"}))
    CreateSecurityConfigurationResponse.type = Types::CreateSecurityConfigurationResponse
    CreateVirtualClusterRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNameString, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The specified name of the virtual cluster.</p>", "smithy.api#required" => {}}))
    CreateVirtualClusterRequest.add_member(:container_provider, Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerProvider, location_name: 'containerProvider', traits: {"smithy.api#documentation" => "<p>The container provider of the virtual cluster.</p>", "smithy.api#required" => {}}))
    CreateVirtualClusterRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>The client token of the virtual cluster.</p>", "smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateVirtualClusterRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags assigned to the virtual cluster.</p>"}))
    CreateVirtualClusterRequest.add_member(:security_configuration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdString, location_name: 'securityConfigurationId', traits: {"smithy.api#documentation" => "<p>The ID of the security configuration.</p>"}))
    CreateVirtualClusterRequest.type = Types::CreateVirtualClusterRequest
    CreateVirtualClusterResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdString, location_name: 'id', traits: {"smithy.api#documentation" => "<p>This output contains the virtual cluster ID.</p>"}))
    CreateVirtualClusterResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNameString, location_name: 'name', traits: {"smithy.api#documentation" => "<p>This output contains the name of the virtual cluster.</p>"}))
    CreateVirtualClusterResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: VirtualClusterArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>This output contains the ARN of virtual cluster.</p>"}))
    CreateVirtualClusterResponse.type = Types::CreateVirtualClusterResponse
    Credentials.add_member(:token, Types::Credentials::Token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'token', traits: {"smithy.api#documentation" => "<p>The actual session token being returned.</p>"}))
    Credentials.add_member(:unknown, Types::Credentials::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    Credentials.type = Types::Credentials
    DeleteJobTemplateRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdString, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the job template that will be deleted.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteJobTemplateRequest.type = Types::DeleteJobTemplateRequest
    DeleteJobTemplateResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdString, location_name: 'id', traits: {"smithy.api#documentation" => "<p>This output contains the ID of the job template that was deleted.</p>"}))
    DeleteJobTemplateResponse.type = Types::DeleteJobTemplateResponse
    DeleteManagedEndpointRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdString, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the managed endpoint.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteManagedEndpointRequest.add_member(:virtual_cluster_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdString, location_name: 'virtualClusterId', traits: {"smithy.api#documentation" => "<p>The ID of the endpoint's virtual cluster.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteManagedEndpointRequest.type = Types::DeleteManagedEndpointRequest
    DeleteManagedEndpointResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdString, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The output displays the ID of the managed endpoint.</p>"}))
    DeleteManagedEndpointResponse.add_member(:virtual_cluster_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdString, location_name: 'virtualClusterId', traits: {"smithy.api#documentation" => "<p>The output displays the ID of the endpoint's virtual cluster.</p>"}))
    DeleteManagedEndpointResponse.type = Types::DeleteManagedEndpointResponse
    DeleteVirtualClusterRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdString, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the virtual cluster that will be deleted.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteVirtualClusterRequest.type = Types::DeleteVirtualClusterRequest
    DeleteVirtualClusterResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdString, location_name: 'id', traits: {"smithy.api#documentation" => "<p>This output contains the ID of the virtual cluster that will be deleted. </p>"}))
    DeleteVirtualClusterResponse.type = Types::DeleteVirtualClusterResponse
    DescribeJobRunRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdString, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the job run request. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeJobRunRequest.add_member(:virtual_cluster_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdString, location_name: 'virtualClusterId', traits: {"smithy.api#documentation" => "<p>The ID of the virtual cluster for which the job run is submitted.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeJobRunRequest.type = Types::DescribeJobRunRequest
    DescribeJobRunResponse.add_member(:job_run, Smithy::Schema::Shapes::ShapeRef.new(shape: JobRun, location_name: 'jobRun', traits: {"smithy.api#documentation" => "<p>The output displays information about a job run.</p>"}))
    DescribeJobRunResponse.type = Types::DescribeJobRunResponse
    DescribeJobTemplateRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdString, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the job template that will be described.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeJobTemplateRequest.type = Types::DescribeJobTemplateRequest
    DescribeJobTemplateResponse.add_member(:job_template, Smithy::Schema::Shapes::ShapeRef.new(shape: JobTemplate, location_name: 'jobTemplate', traits: {"smithy.api#documentation" => "<p>This output displays information about the specified job template.</p>"}))
    DescribeJobTemplateResponse.type = Types::DescribeJobTemplateResponse
    DescribeManagedEndpointRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdString, location_name: 'id', traits: {"smithy.api#documentation" => "<p>This output displays ID of the managed endpoint.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeManagedEndpointRequest.add_member(:virtual_cluster_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdString, location_name: 'virtualClusterId', traits: {"smithy.api#documentation" => "<p>The ID of the endpoint's virtual cluster.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeManagedEndpointRequest.type = Types::DescribeManagedEndpointRequest
    DescribeManagedEndpointResponse.add_member(:endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: Endpoint, location_name: 'endpoint', traits: {"smithy.api#documentation" => "<p>This output displays information about a managed endpoint.</p>"}))
    DescribeManagedEndpointResponse.type = Types::DescribeManagedEndpointResponse
    DescribeSecurityConfigurationRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdString, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the security configuration.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeSecurityConfigurationRequest.type = Types::DescribeSecurityConfigurationRequest
    DescribeSecurityConfigurationResponse.add_member(:security_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityConfiguration, location_name: 'securityConfiguration', traits: {"smithy.api#documentation" => "<p>Details of the security configuration.</p>"}))
    DescribeSecurityConfigurationResponse.type = Types::DescribeSecurityConfigurationResponse
    DescribeVirtualClusterRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdString, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the virtual cluster that will be described.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeVirtualClusterRequest.type = Types::DescribeVirtualClusterRequest
    DescribeVirtualClusterResponse.add_member(:virtual_cluster, Smithy::Schema::Shapes::ShapeRef.new(shape: VirtualCluster, location_name: 'virtualCluster', traits: {"smithy.api#documentation" => "<p>This output displays information about the specified virtual cluster.</p>"}))
    DescribeVirtualClusterResponse.type = Types::DescribeVirtualClusterResponse
    EKSRequestThrottledException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String1024, location_name: 'message'))
    EKSRequestThrottledException.type = Types::EKSRequestThrottledException
    EksInfo.add_member(:namespace, Smithy::Schema::Shapes::ShapeRef.new(shape: KubernetesNamespace, location_name: 'namespace', traits: {"smithy.api#documentation" => "<p>The namespaces of the Amazon EKS cluster.</p>"}))
    EksInfo.type = Types::EksInfo
    EncryptionConfiguration.add_member(:in_transit_encryption_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: InTransitEncryptionConfiguration, location_name: 'inTransitEncryptionConfiguration', traits: {"smithy.api#documentation" => "<p>In-transit encryption-related input for the security configuration.</p>"}))
    EncryptionConfiguration.type = Types::EncryptionConfiguration
    Endpoint.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdString, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the endpoint.</p>"}))
    Endpoint.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNameString, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the endpoint.</p>"}))
    Endpoint.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The ARN of the endpoint.</p>"}))
    Endpoint.add_member(:virtual_cluster_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdString, location_name: 'virtualClusterId', traits: {"smithy.api#documentation" => "<p>The ID of the endpoint's virtual cluster.</p>"}))
    Endpoint.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of the endpoint.</p>"}))
    Endpoint.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointState, location_name: 'state', traits: {"smithy.api#documentation" => "<p>The state of the endpoint.</p>"}))
    Endpoint.add_member(:release_label, Smithy::Schema::Shapes::ShapeRef.new(shape: ReleaseLabel, location_name: 'releaseLabel', traits: {"smithy.api#documentation" => "<p>The EMR release version to be used for the endpoint.</p>"}))
    Endpoint.add_member(:execution_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IAMRoleArn, location_name: 'executionRoleArn', traits: {"smithy.api#documentation" => "<p>The execution role ARN of the endpoint.</p>"}))
    Endpoint.add_member(:certificate_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ACMCertArn, location_name: 'certificateArn', traits: {"smithy.api#deprecated" => {"message" => "Customer provided certificate-arn is deprecated and would be removed in future."}, "smithy.api#documentation" => "<p>The certificate ARN of the endpoint. This field is under deprecation and will be removed\n         in future.</p>"}))
    Endpoint.add_member(:certificate_authority, Smithy::Schema::Shapes::ShapeRef.new(shape: Certificate, location_name: 'certificateAuthority', traits: {"smithy.api#documentation" => "<p>The certificate generated by emr control plane on customer behalf to secure the managed\n         endpoint.</p>"}))
    Endpoint.add_member(:configuration_overrides, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationOverrides, location_name: 'configurationOverrides', traits: {"smithy.api#documentation" => "<p>The configuration settings that are used to override existing configurations for\n         endpoints.</p>"}))
    Endpoint.add_member(:server_url, Smithy::Schema::Shapes::ShapeRef.new(shape: UriString, location_name: 'serverUrl', traits: {"smithy.api#documentation" => "<p>The server URL of the endpoint.</p>"}))
    Endpoint.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The date and time when the endpoint was created.</p>"}))
    Endpoint.add_member(:security_group, Smithy::Schema::Shapes::ShapeRef.new(shape: String256, location_name: 'securityGroup', traits: {"smithy.api#documentation" => "<p>The security group configuration of the endpoint. </p>"}))
    Endpoint.add_member(:subnet_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetIds, location_name: 'subnetIds', traits: {"smithy.api#documentation" => "<p>The subnet IDs of the endpoint. </p>"}))
    Endpoint.add_member(:state_details, Smithy::Schema::Shapes::ShapeRef.new(shape: String256, location_name: 'stateDetails', traits: {"smithy.api#documentation" => "<p> Additional details of the endpoint state. </p>"}))
    Endpoint.add_member(:failure_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: FailureReason, location_name: 'failureReason', traits: {"smithy.api#documentation" => "<p> The reasons why the endpoint has failed. </p>"}))
    Endpoint.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags of the endpoint. </p>"}))
    Endpoint.type = Types::Endpoint
    EndpointState.add_member(:creating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    EndpointState.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    EndpointState.add_member(:terminating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TERMINATING', traits: {"smithy.api#enumValue" => "TERMINATING"}))
    EndpointState.add_member(:terminated, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TERMINATED', traits: {"smithy.api#enumValue" => "TERMINATED"}))
    EndpointState.add_member(:terminated_with_errors, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TERMINATED_WITH_ERRORS', traits: {"smithy.api#enumValue" => "TERMINATED_WITH_ERRORS"}))
    EndpointStates.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointState)
    EndpointTypes.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointType)
    Endpoints.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Endpoint)
    EntryPointArguments.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EntryPointArgument)
    FailureReason.add_member(:internal_error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INTERNAL_ERROR', traits: {"smithy.api#enumValue" => "INTERNAL_ERROR"}))
    FailureReason.add_member(:user_error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'USER_ERROR', traits: {"smithy.api#enumValue" => "USER_ERROR"}))
    FailureReason.add_member(:validation_error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VALIDATION_ERROR', traits: {"smithy.api#enumValue" => "VALIDATION_ERROR"}))
    FailureReason.add_member(:cluster_unavailable, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CLUSTER_UNAVAILABLE', traits: {"smithy.api#enumValue" => "CLUSTER_UNAVAILABLE"}))
    GetManagedEndpointSessionCredentialsRequest.add_member(:endpoint_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String2048, location_name: 'endpointIdentifier', traits: {"smithy.api#documentation" => "<p>The ARN of the managed endpoint for which the request is submitted. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetManagedEndpointSessionCredentialsRequest.add_member(:virtual_cluster_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String2048, location_name: 'virtualClusterIdentifier', traits: {"smithy.api#documentation" => "<p>The ARN of the Virtual Cluster which the Managed Endpoint belongs to. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetManagedEndpointSessionCredentialsRequest.add_member(:execution_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IAMRoleArn, location_name: 'executionRoleArn', traits: {"smithy.api#documentation" => "<p>The IAM Execution Role ARN that will be used by the job run. </p>", "smithy.api#required" => {}}))
    GetManagedEndpointSessionCredentialsRequest.add_member(:credential_type, Smithy::Schema::Shapes::ShapeRef.new(shape: CredentialType, location_name: 'credentialType', traits: {"smithy.api#documentation" => "<p>Type of the token requested. Currently supported and default value of this field is\n         “TOKEN.”</p>", "smithy.api#required" => {}}))
    GetManagedEndpointSessionCredentialsRequest.add_member(:duration_in_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: JavaInteger, location_name: 'durationInSeconds', traits: {"smithy.api#documentation" => "<p>Duration in seconds for which the session token is valid. The default duration is 15\n         minutes and the maximum is 12 hours.</p>"}))
    GetManagedEndpointSessionCredentialsRequest.add_member(:log_context, Smithy::Schema::Shapes::ShapeRef.new(shape: LogContext, location_name: 'logContext', traits: {"smithy.api#documentation" => "<p>String identifier used to separate sections of the execution logs uploaded to S3.</p>"}))
    GetManagedEndpointSessionCredentialsRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>The client idempotency token of the job run request.</p>", "smithy.api#idempotencyToken" => {}}))
    GetManagedEndpointSessionCredentialsRequest.type = Types::GetManagedEndpointSessionCredentialsRequest
    GetManagedEndpointSessionCredentialsResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdString, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The identifier of the session token returned.</p>"}))
    GetManagedEndpointSessionCredentialsResponse.add_member(:credentials, Smithy::Schema::Shapes::ShapeRef.new(shape: Credentials, location_name: 'credentials', traits: {"smithy.api#documentation" => "<p>The structure containing the session credentials.</p>"}))
    GetManagedEndpointSessionCredentialsResponse.add_member(:expires_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'expiresAt', traits: {"smithy.api#documentation" => "<p>The date and time when the session token will expire.</p>"}))
    GetManagedEndpointSessionCredentialsResponse.type = Types::GetManagedEndpointSessionCredentialsResponse
    InTransitEncryptionConfiguration.add_member(:tls_certificate_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: TLSCertificateConfiguration, location_name: 'tlsCertificateConfiguration', traits: {"smithy.api#documentation" => "<p>TLS certificate-related configuration input for the security configuration.</p>"}))
    InTransitEncryptionConfiguration.type = Types::InTransitEncryptionConfiguration
    InternalServerException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String1024, location_name: 'message'))
    InternalServerException.type = Types::InternalServerException
    JobDriver.add_member(:spark_submit_job_driver, Smithy::Schema::Shapes::ShapeRef.new(shape: SparkSubmitJobDriver, location_name: 'sparkSubmitJobDriver', traits: {"smithy.api#documentation" => "<p>The job driver parameters specified for spark submit.</p>"}))
    JobDriver.add_member(:spark_sql_job_driver, Smithy::Schema::Shapes::ShapeRef.new(shape: SparkSqlJobDriver, location_name: 'sparkSqlJobDriver', traits: {"smithy.api#documentation" => "<p>The job driver for job type.</p>"}))
    JobDriver.type = Types::JobDriver
    JobRun.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdString, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the job run.</p>"}))
    JobRun.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNameString, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the job run.</p>"}))
    JobRun.add_member(:virtual_cluster_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdString, location_name: 'virtualClusterId', traits: {"smithy.api#documentation" => "<p>The ID of the job run's virtual cluster.</p>"}))
    JobRun.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: JobArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The ARN of job run.</p>"}))
    JobRun.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: JobRunState, location_name: 'state', traits: {"smithy.api#documentation" => "<p>The state of the job run. </p>"}))
    JobRun.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>The client token used to start a job run.</p>"}))
    JobRun.add_member(:execution_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IAMRoleArn, location_name: 'executionRoleArn', traits: {"smithy.api#documentation" => "<p>The execution role ARN of the job run.</p>"}))
    JobRun.add_member(:release_label, Smithy::Schema::Shapes::ShapeRef.new(shape: ReleaseLabel, location_name: 'releaseLabel', traits: {"smithy.api#documentation" => "<p>The release version of Amazon EMR.</p>"}))
    JobRun.add_member(:configuration_overrides, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationOverrides, location_name: 'configurationOverrides', traits: {"smithy.api#documentation" => "<p>The configuration settings that are used to override default configuration.</p>"}))
    JobRun.add_member(:job_driver, Smithy::Schema::Shapes::ShapeRef.new(shape: JobDriver, location_name: 'jobDriver', traits: {"smithy.api#documentation" => "<p>Parameters of job driver for the job run.</p>"}))
    JobRun.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The date and time when the job run was created.</p>"}))
    JobRun.add_member(:created_by, Smithy::Schema::Shapes::ShapeRef.new(shape: RequestIdentityUserArn, location_name: 'createdBy', traits: {"smithy.api#documentation" => "<p>The user who created the job run.</p>"}))
    JobRun.add_member(:finished_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'finishedAt', traits: {"smithy.api#documentation" => "<p>The date and time when the job run has finished.</p>"}))
    JobRun.add_member(:state_details, Smithy::Schema::Shapes::ShapeRef.new(shape: String256, location_name: 'stateDetails', traits: {"smithy.api#documentation" => "<p>Additional details of the job run state.</p>"}))
    JobRun.add_member(:failure_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: FailureReason, location_name: 'failureReason', traits: {"smithy.api#documentation" => "<p>The reasons why the job run has failed.</p>"}))
    JobRun.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The assigned tags of the job run.</p>"}))
    JobRun.add_member(:retry_policy_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: RetryPolicyConfiguration, location_name: 'retryPolicyConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration of the retry policy that the job runs on.</p>"}))
    JobRun.add_member(:retry_policy_execution, Smithy::Schema::Shapes::ShapeRef.new(shape: RetryPolicyExecution, location_name: 'retryPolicyExecution', traits: {"smithy.api#documentation" => "<p>The current status of the retry policy executed on the job.</p>"}))
    JobRun.type = Types::JobRun
    JobRunState.add_member(:pending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "PENDING"}))
    JobRunState.add_member(:submitted, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUBMITTED', traits: {"smithy.api#enumValue" => "SUBMITTED"}))
    JobRunState.add_member(:running, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RUNNING', traits: {"smithy.api#enumValue" => "RUNNING"}))
    JobRunState.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    JobRunState.add_member(:cancelled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANCELLED', traits: {"smithy.api#enumValue" => "CANCELLED"}))
    JobRunState.add_member(:cancel_pending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANCEL_PENDING', traits: {"smithy.api#enumValue" => "CANCEL_PENDING"}))
    JobRunState.add_member(:completed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETED', traits: {"smithy.api#enumValue" => "COMPLETED"}))
    JobRunStates.member = Smithy::Schema::Shapes::ShapeRef.new(shape: JobRunState)
    JobRuns.member = Smithy::Schema::Shapes::ShapeRef.new(shape: JobRun)
    JobTemplate.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNameString, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the job template.</p>"}))
    JobTemplate.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdString, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the job template.</p>"}))
    JobTemplate.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: JobTemplateArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The ARN of the job template.</p>"}))
    JobTemplate.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p> The date and time when the job template was created.</p>"}))
    JobTemplate.add_member(:created_by, Smithy::Schema::Shapes::ShapeRef.new(shape: RequestIdentityUserArn, location_name: 'createdBy', traits: {"smithy.api#documentation" => "<p> The user who created the job template.</p>"}))
    JobTemplate.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags assigned to the job template.</p>"}))
    JobTemplate.add_member(:job_template_data, Smithy::Schema::Shapes::ShapeRef.new(shape: JobTemplateData, location_name: 'jobTemplateData', traits: {"smithy.api#documentation" => "<p>The job template data which holds values of StartJobRun API request.</p>", "smithy.api#required" => {}}))
    JobTemplate.add_member(:kms_key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'kmsKeyArn', traits: {"smithy.api#documentation" => "<p> The KMS key ARN used to encrypt the job template.</p>"}))
    JobTemplate.add_member(:decryption_error, Smithy::Schema::Shapes::ShapeRef.new(shape: String2048, location_name: 'decryptionError', traits: {"smithy.api#documentation" => "<p>The error message in case the decryption of job template fails.</p>"}))
    JobTemplate.type = Types::JobTemplate
    JobTemplateData.add_member(:execution_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ParametricIAMRoleArn, location_name: 'executionRoleArn', traits: {"smithy.api#documentation" => "<p>The execution role ARN of the job run.</p>", "smithy.api#required" => {}}))
    JobTemplateData.add_member(:release_label, Smithy::Schema::Shapes::ShapeRef.new(shape: ParametricReleaseLabel, location_name: 'releaseLabel', traits: {"smithy.api#documentation" => "<p> The release version of Amazon EMR.</p>", "smithy.api#required" => {}}))
    JobTemplateData.add_member(:configuration_overrides, Smithy::Schema::Shapes::ShapeRef.new(shape: ParametricConfigurationOverrides, location_name: 'configurationOverrides', traits: {"smithy.api#documentation" => "<p> The configuration settings that are used to override defaults configuration.</p>"}))
    JobTemplateData.add_member(:job_driver, Smithy::Schema::Shapes::ShapeRef.new(shape: JobDriver, location_name: 'jobDriver', traits: {"smithy.api#required" => {}}))
    JobTemplateData.add_member(:parameter_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateParameterConfigurationMap, location_name: 'parameterConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration of parameters existing in the job template.</p>"}))
    JobTemplateData.add_member(:job_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'jobTags', traits: {"smithy.api#documentation" => "<p>The tags assigned to jobs started using the job template.</p>"}))
    JobTemplateData.type = Types::JobTemplateData
    JobTemplates.member = Smithy::Schema::Shapes::ShapeRef.new(shape: JobTemplate)
    LakeFormationConfiguration.add_member(:authorized_session_tag_value, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionTagValue, location_name: 'authorizedSessionTagValue', traits: {"smithy.api#documentation" => "<p>The session tag to authorize Amazon EMR on EKS for API calls to Lake Formation.</p>"}))
    LakeFormationConfiguration.add_member(:secure_namespace_info, Smithy::Schema::Shapes::ShapeRef.new(shape: SecureNamespaceInfo, location_name: 'secureNamespaceInfo', traits: {"smithy.api#documentation" => "<p>The namespace input of the system job.</p>"}))
    LakeFormationConfiguration.add_member(:query_engine_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IAMRoleArn, location_name: 'queryEngineRoleArn', traits: {"smithy.api#documentation" => "<p>The query engine IAM role ARN that is tied to the secure Spark job. The\n         <code>QueryEngine</code> role assumes the <code>JobExecutionRole</code> to execute all\n         the Lake Formation calls.</p>"}))
    LakeFormationConfiguration.type = Types::LakeFormationConfiguration
    ListJobRunsRequest.add_member(:virtual_cluster_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdString, location_name: 'virtualClusterId', traits: {"smithy.api#documentation" => "<p>The ID of the virtual cluster for which to list the job run. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListJobRunsRequest.add_member(:created_before, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'createdBefore', traits: {"smithy.api#documentation" => "<p>The date and time before which the job runs were submitted.</p>", "smithy.api#httpQuery" => "createdBefore"}))
    ListJobRunsRequest.add_member(:created_after, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'createdAfter', traits: {"smithy.api#documentation" => "<p>The date and time after which the job runs were submitted.</p>", "smithy.api#httpQuery" => "createdAfter"}))
    ListJobRunsRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNameString, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the job run.</p>", "smithy.api#httpQuery" => "name"}))
    ListJobRunsRequest.add_member(:states, Smithy::Schema::Shapes::ShapeRef.new(shape: JobRunStates, location_name: 'states', traits: {"smithy.api#documentation" => "<p>The states of the job run.</p>", "smithy.api#httpQuery" => "states"}))
    ListJobRunsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: JavaInteger, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of job runs that can be listed.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListJobRunsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of job runs to return.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListJobRunsRequest.type = Types::ListJobRunsRequest
    ListJobRunsResponse.add_member(:job_runs, Smithy::Schema::Shapes::ShapeRef.new(shape: JobRuns, location_name: 'jobRuns', traits: {"smithy.api#documentation" => "<p>This output lists information about the specified job runs.</p>"}))
    ListJobRunsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>This output displays the token for the next set of job runs.</p>"}))
    ListJobRunsResponse.type = Types::ListJobRunsResponse
    ListJobTemplatesRequest.add_member(:created_after, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'createdAfter', traits: {"smithy.api#documentation" => "<p>The date and time after which the job templates were created.</p>", "smithy.api#httpQuery" => "createdAfter"}))
    ListJobTemplatesRequest.add_member(:created_before, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'createdBefore', traits: {"smithy.api#documentation" => "<p> The date and time before which the job templates were created.</p>", "smithy.api#httpQuery" => "createdBefore"}))
    ListJobTemplatesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: JavaInteger, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p> The maximum number of job templates that can be listed.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListJobTemplatesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p> The token for the next set of job templates to return.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListJobTemplatesRequest.type = Types::ListJobTemplatesRequest
    ListJobTemplatesResponse.add_member(:templates, Smithy::Schema::Shapes::ShapeRef.new(shape: JobTemplates, location_name: 'templates', traits: {"smithy.api#documentation" => "<p>This output lists information about the specified job templates.</p>"}))
    ListJobTemplatesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p> This output displays the token for the next set of job templates.</p>"}))
    ListJobTemplatesResponse.type = Types::ListJobTemplatesResponse
    ListManagedEndpointsRequest.add_member(:virtual_cluster_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdString, location_name: 'virtualClusterId', traits: {"smithy.api#documentation" => "<p>The ID of the virtual cluster.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListManagedEndpointsRequest.add_member(:created_before, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'createdBefore', traits: {"smithy.api#documentation" => "<p>The date and time before which the endpoints are created.</p>", "smithy.api#httpQuery" => "createdBefore"}))
    ListManagedEndpointsRequest.add_member(:created_after, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'createdAfter', traits: {"smithy.api#documentation" => "<p> The date and time after which the endpoints are created.</p>", "smithy.api#httpQuery" => "createdAfter"}))
    ListManagedEndpointsRequest.add_member(:types, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointTypes, location_name: 'types', traits: {"smithy.api#documentation" => "<p>The types of the managed endpoints.</p>", "smithy.api#httpQuery" => "types"}))
    ListManagedEndpointsRequest.add_member(:states, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointStates, location_name: 'states', traits: {"smithy.api#documentation" => "<p>The states of the managed endpoints.</p>", "smithy.api#httpQuery" => "states"}))
    ListManagedEndpointsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: JavaInteger, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of managed endpoints that can be listed.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListManagedEndpointsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p> The token for the next set of managed endpoints to return. </p>", "smithy.api#httpQuery" => "nextToken"}))
    ListManagedEndpointsRequest.type = Types::ListManagedEndpointsRequest
    ListManagedEndpointsResponse.add_member(:endpoints, Smithy::Schema::Shapes::ShapeRef.new(shape: Endpoints, location_name: 'endpoints', traits: {"smithy.api#documentation" => "<p>The managed endpoints to be listed.</p>"}))
    ListManagedEndpointsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p> The token for the next set of endpoints to return. </p>"}))
    ListManagedEndpointsResponse.type = Types::ListManagedEndpointsResponse
    ListSecurityConfigurationsRequest.add_member(:created_after, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'createdAfter', traits: {"smithy.api#documentation" => "<p>The date and time after which the security configuration was created.</p>", "smithy.api#httpQuery" => "createdAfter"}))
    ListSecurityConfigurationsRequest.add_member(:created_before, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'createdBefore', traits: {"smithy.api#documentation" => "<p>The date and time before which the security configuration was created.</p>", "smithy.api#httpQuery" => "createdBefore"}))
    ListSecurityConfigurationsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: JavaInteger, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of security configurations the operation can list.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListSecurityConfigurationsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of security configurations to return.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListSecurityConfigurationsRequest.type = Types::ListSecurityConfigurationsRequest
    ListSecurityConfigurationsResponse.add_member(:security_configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityConfigurations, location_name: 'securityConfigurations', traits: {"smithy.api#documentation" => "<p>The list of returned security configurations.</p>"}))
    ListSecurityConfigurationsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of security configurations to return.</p>"}))
    ListSecurityConfigurationsResponse.type = Types::ListSecurityConfigurationsResponse
    ListTagsForResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RsiArn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The ARN of tagged resources.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags assigned to resources.</p>"}))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ListVirtualClustersRequest.add_member(:container_provider_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String1024, location_name: 'containerProviderId', traits: {"smithy.api#documentation" => "<p>The container provider ID of the virtual cluster.</p>", "smithy.api#httpQuery" => "containerProviderId"}))
    ListVirtualClustersRequest.add_member(:container_provider_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerProviderType, location_name: 'containerProviderType', traits: {"smithy.api#documentation" => "<p>The container provider type of the virtual cluster. Amazon EKS is the only\n         supported type as of now.</p>", "smithy.api#httpQuery" => "containerProviderType"}))
    ListVirtualClustersRequest.add_member(:created_after, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'createdAfter', traits: {"smithy.api#documentation" => "<p>The date and time after which the virtual clusters are created.</p>", "smithy.api#httpQuery" => "createdAfter"}))
    ListVirtualClustersRequest.add_member(:created_before, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'createdBefore', traits: {"smithy.api#documentation" => "<p>The date and time before which the virtual clusters are created.</p>", "smithy.api#httpQuery" => "createdBefore"}))
    ListVirtualClustersRequest.add_member(:states, Smithy::Schema::Shapes::ShapeRef.new(shape: VirtualClusterStates, location_name: 'states', traits: {"smithy.api#documentation" => "<p>The states of the requested virtual clusters.</p>", "smithy.api#httpQuery" => "states"}))
    ListVirtualClustersRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: JavaInteger, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of virtual clusters that can be listed.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListVirtualClustersRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of virtual clusters to return. </p>", "smithy.api#httpQuery" => "nextToken"}))
    ListVirtualClustersRequest.add_member(:eks_access_entry_integrated, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'eksAccessEntryIntegrated', traits: {"smithy.api#documentation" => "<p>Optional Boolean that specifies whether the operation should return the \n         virtual clusters that have the access entry integration enabled or disabled. If not specified,\n      the operation returns all applicable virtual clusters.</p>", "smithy.api#httpQuery" => "eksAccessEntryIntegrated"}))
    ListVirtualClustersRequest.type = Types::ListVirtualClustersRequest
    ListVirtualClustersResponse.add_member(:virtual_clusters, Smithy::Schema::Shapes::ShapeRef.new(shape: VirtualClusters, location_name: 'virtualClusters', traits: {"smithy.api#documentation" => "<p>This output lists the specified virtual clusters.</p>"}))
    ListVirtualClustersResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>This output displays the token for the next set of virtual clusters.</p>"}))
    ListVirtualClustersResponse.type = Types::ListVirtualClustersResponse
    ManagedLogs.add_member(:allow_aws_to_retain_logs, Smithy::Schema::Shapes::ShapeRef.new(shape: AllowAWSToRetainLogs, location_name: 'allowAWSToRetainLogs', traits: {"smithy.api#documentation" => "<p>Determines whether Amazon Web Services can retain logs.</p>"}))
    ManagedLogs.add_member(:encryption_key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'encryptionKeyArn', traits: {"smithy.api#documentation" => "<p>The Amazon resource name (ARN) of the encryption key for logs.</p>"}))
    ManagedLogs.type = Types::ManagedLogs
    MonitoringConfiguration.add_member(:managed_logs, Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedLogs, location_name: 'managedLogs', traits: {"smithy.api#documentation" => "<p>The entity that controls configuration for managed logs.</p>"}))
    MonitoringConfiguration.add_member(:persistent_app_ui, Smithy::Schema::Shapes::ShapeRef.new(shape: PersistentAppUI, location_name: 'persistentAppUI', traits: {"smithy.api#documentation" => "<p>Monitoring configurations for the persistent application UI. </p>"}))
    MonitoringConfiguration.add_member(:cloud_watch_monitoring_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchMonitoringConfiguration, location_name: 'cloudWatchMonitoringConfiguration', traits: {"smithy.api#documentation" => "<p>Monitoring configurations for CloudWatch.</p>"}))
    MonitoringConfiguration.add_member(:s3_monitoring_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: S3MonitoringConfiguration, location_name: 's3MonitoringConfiguration', traits: {"smithy.api#documentation" => "<p>Amazon S3 configuration for monitoring log publishing.</p>"}))
    MonitoringConfiguration.add_member(:container_log_rotation_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerLogRotationConfiguration, location_name: 'containerLogRotationConfiguration', traits: {"smithy.api#documentation" => "<p>Enable or disable container log rotation.</p>"}))
    MonitoringConfiguration.type = Types::MonitoringConfiguration
    ParametricCloudWatchMonitoringConfiguration.add_member(:log_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateParameter, location_name: 'logGroupName', traits: {"smithy.api#documentation" => "<p> The name of the log group for log publishing.</p>"}))
    ParametricCloudWatchMonitoringConfiguration.add_member(:log_stream_name_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: String256, location_name: 'logStreamNamePrefix', traits: {"smithy.api#documentation" => "<p> The specified name prefix for log streams.</p>"}))
    ParametricCloudWatchMonitoringConfiguration.type = Types::ParametricCloudWatchMonitoringConfiguration
    ParametricConfigurationOverrides.add_member(:application_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationList, location_name: 'applicationConfiguration', traits: {"smithy.api#documentation" => "<p> The configurations for the application running by the job run.</p>"}))
    ParametricConfigurationOverrides.add_member(:monitoring_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ParametricMonitoringConfiguration, location_name: 'monitoringConfiguration', traits: {"smithy.api#documentation" => "<p> The configurations for monitoring. </p>"}))
    ParametricConfigurationOverrides.type = Types::ParametricConfigurationOverrides
    ParametricMonitoringConfiguration.add_member(:persistent_app_ui, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateParameter, location_name: 'persistentAppUI', traits: {"smithy.api#documentation" => "<p> Monitoring configurations for the persistent application UI.</p>"}))
    ParametricMonitoringConfiguration.add_member(:cloud_watch_monitoring_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ParametricCloudWatchMonitoringConfiguration, location_name: 'cloudWatchMonitoringConfiguration', traits: {"smithy.api#documentation" => "<p> Monitoring configurations for CloudWatch.</p>"}))
    ParametricMonitoringConfiguration.add_member(:s3_monitoring_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ParametricS3MonitoringConfiguration, location_name: 's3MonitoringConfiguration', traits: {"smithy.api#documentation" => "<p> Amazon S3 configuration for monitoring log publishing.</p>"}))
    ParametricMonitoringConfiguration.type = Types::ParametricMonitoringConfiguration
    ParametricS3MonitoringConfiguration.add_member(:log_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: UriString, location_name: 'logUri', traits: {"smithy.api#documentation" => "<p>Amazon S3 destination URI for log publishing.</p>"}))
    ParametricS3MonitoringConfiguration.type = Types::ParametricS3MonitoringConfiguration
    PersistentAppUI.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    PersistentAppUI.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    RequestThrottledException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String1024, location_name: 'message'))
    RequestThrottledException.type = Types::RequestThrottledException
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String1024, location_name: 'message'))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    RetryPolicyConfiguration.add_member(:max_attempts, Smithy::Schema::Shapes::ShapeRef.new(shape: JavaInteger, location_name: 'maxAttempts', traits: {"smithy.api#documentation" => "<p>The maximum number of attempts on the job's driver.</p>", "smithy.api#required" => {}}))
    RetryPolicyConfiguration.type = Types::RetryPolicyConfiguration
    RetryPolicyExecution.add_member(:current_attempt_count, Smithy::Schema::Shapes::ShapeRef.new(shape: JavaInteger, location_name: 'currentAttemptCount', traits: {"smithy.api#documentation" => "<p>The current number of attempts made on the driver of the job.</p>", "smithy.api#required" => {}}))
    RetryPolicyExecution.type = Types::RetryPolicyExecution
    S3MonitoringConfiguration.add_member(:log_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: UriString, location_name: 'logUri', traits: {"smithy.api#documentation" => "<p>Amazon S3 destination URI for log publishing.</p>", "smithy.api#required" => {}}))
    S3MonitoringConfiguration.type = Types::S3MonitoringConfiguration
    SecureNamespaceInfo.add_member(:cluster_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterId, location_name: 'clusterId', traits: {"smithy.api#documentation" => "<p>The ID of the Amazon EKS cluster where Amazon EMR on EKS jobs run.</p>"}))
    SecureNamespaceInfo.add_member(:namespace, Smithy::Schema::Shapes::ShapeRef.new(shape: KubernetesNamespace, location_name: 'namespace', traits: {"smithy.api#documentation" => "<p>The namespace of the Amazon EKS cluster where the system jobs run.</p>"}))
    SecureNamespaceInfo.type = Types::SecureNamespaceInfo
    SecurityConfiguration.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdString, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the security configuration.</p>"}))
    SecurityConfiguration.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNameString, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the security configuration.</p>"}))
    SecurityConfiguration.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityConfigurationArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The ARN (Amazon Resource Name) of the security configuration.</p>"}))
    SecurityConfiguration.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The date and time that the job run was created.</p>"}))
    SecurityConfiguration.add_member(:created_by, Smithy::Schema::Shapes::ShapeRef.new(shape: RequestIdentityUserArn, location_name: 'createdBy', traits: {"smithy.api#documentation" => "<p>The user who created the job run.</p>"}))
    SecurityConfiguration.add_member(:security_configuration_data, Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityConfigurationData, location_name: 'securityConfigurationData', traits: {"smithy.api#documentation" => "<p>Security configuration inputs for the request.</p>"}))
    SecurityConfiguration.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags to assign to the security configuration.</p>"}))
    SecurityConfiguration.type = Types::SecurityConfiguration
    SecurityConfigurationData.add_member(:authorization_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationConfiguration, location_name: 'authorizationConfiguration', traits: {"smithy.api#documentation" => "<p>Authorization-related configuration input for the security configuration.</p>"}))
    SecurityConfigurationData.type = Types::SecurityConfigurationData
    SecurityConfigurations.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityConfiguration)
    SensitivePropertiesMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: String1024)
    SensitivePropertiesMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: String1024)
    SparkSqlJobDriver.add_member(:entry_point, Smithy::Schema::Shapes::ShapeRef.new(shape: EntryPointPath, location_name: 'entryPoint', traits: {"smithy.api#documentation" => "<p>The SQL file to be executed.</p>"}))
    SparkSqlJobDriver.add_member(:spark_sql_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: SparkSqlParameters, location_name: 'sparkSqlParameters', traits: {"smithy.api#documentation" => "<p>The Spark parameters to be included in the Spark SQL command.</p>"}))
    SparkSqlJobDriver.type = Types::SparkSqlJobDriver
    SparkSubmitJobDriver.add_member(:entry_point, Smithy::Schema::Shapes::ShapeRef.new(shape: EntryPointPath, location_name: 'entryPoint', traits: {"smithy.api#documentation" => "<p>The entry point of job application.</p>", "smithy.api#required" => {}}))
    SparkSubmitJobDriver.add_member(:entry_point_arguments, Smithy::Schema::Shapes::ShapeRef.new(shape: EntryPointArguments, location_name: 'entryPointArguments', traits: {"smithy.api#documentation" => "<p>The arguments for job application.</p>"}))
    SparkSubmitJobDriver.add_member(:spark_submit_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: SparkSubmitParameters, location_name: 'sparkSubmitParameters', traits: {"smithy.api#documentation" => "<p>The Spark submit parameters that are used for job runs.</p>"}))
    SparkSubmitJobDriver.type = Types::SparkSubmitJobDriver
    StartJobRunRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNameString, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the job run.</p>"}))
    StartJobRunRequest.add_member(:virtual_cluster_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdString, location_name: 'virtualClusterId', traits: {"smithy.api#documentation" => "<p>The virtual cluster ID for which the job run request is submitted.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartJobRunRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>The client idempotency token of the job run request. </p>", "smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    StartJobRunRequest.add_member(:execution_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IAMRoleArn, location_name: 'executionRoleArn', traits: {"smithy.api#documentation" => "<p>The execution role ARN for the job run.</p>"}))
    StartJobRunRequest.add_member(:release_label, Smithy::Schema::Shapes::ShapeRef.new(shape: ReleaseLabel, location_name: 'releaseLabel', traits: {"smithy.api#documentation" => "<p>The Amazon EMR release version to use for the job run.</p>"}))
    StartJobRunRequest.add_member(:job_driver, Smithy::Schema::Shapes::ShapeRef.new(shape: JobDriver, location_name: 'jobDriver', traits: {"smithy.api#documentation" => "<p>The job driver for the job run.</p>"}))
    StartJobRunRequest.add_member(:configuration_overrides, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationOverrides, location_name: 'configurationOverrides', traits: {"smithy.api#documentation" => "<p>The configuration overrides for the job run.</p>"}))
    StartJobRunRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags assigned to job runs.</p>"}))
    StartJobRunRequest.add_member(:job_template_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdString, location_name: 'jobTemplateId', traits: {"smithy.api#documentation" => "<p>The job template ID to be used to start the job run.</p>"}))
    StartJobRunRequest.add_member(:job_template_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateParameterInputMap, location_name: 'jobTemplateParameters', traits: {"smithy.api#documentation" => "<p>The values of job template parameters to start a job run.</p>"}))
    StartJobRunRequest.add_member(:retry_policy_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: RetryPolicyConfiguration, location_name: 'retryPolicyConfiguration', traits: {"smithy.api#documentation" => "<p>The retry policy configuration for the job run.</p>"}))
    StartJobRunRequest.type = Types::StartJobRunRequest
    StartJobRunResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdString, location_name: 'id', traits: {"smithy.api#documentation" => "<p>This output displays the started job run ID.</p>"}))
    StartJobRunResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNameString, location_name: 'name', traits: {"smithy.api#documentation" => "<p>This output displays the name of the started job run.</p>"}))
    StartJobRunResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: JobArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>This output lists the ARN of job run.</p>"}))
    StartJobRunResponse.add_member(:virtual_cluster_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdString, location_name: 'virtualClusterId', traits: {"smithy.api#documentation" => "<p>This output displays the virtual cluster ID for which the job run was submitted.</p>"}))
    StartJobRunResponse.type = Types::StartJobRunResponse
    SubnetIds.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String256)
    TLSCertificateConfiguration.add_member(:certificate_provider_type, Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateProviderType, location_name: 'certificateProviderType', traits: {"smithy.api#documentation" => "<p>The TLS certificate type. Acceptable values: <code>PEM</code> or\n         <code>Custom</code>.</p>"}))
    TLSCertificateConfiguration.add_member(:public_certificate_secret_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SecretsManagerArn, location_name: 'publicCertificateSecretArn', traits: {"smithy.api#documentation" => "<p>Secrets Manager ARN that contains the public TLS certificate contents, used for\n         communication between the user job and the system job.</p>"}))
    TLSCertificateConfiguration.add_member(:private_certificate_secret_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SecretsManagerArn, location_name: 'privateCertificateSecretArn', traits: {"smithy.api#documentation" => "<p>Secrets Manager ARN that contains the private TLS certificate contents, used for\n         communication between the user job and the system job.</p>"}))
    TLSCertificateConfiguration.type = Types::TLSCertificateConfiguration
    TagKeyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String128)
    TagMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: String128)
    TagMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: StringEmpty256)
    TagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RsiArn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The ARN of resources.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags assigned to resources.</p>", "smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    TemplateParameterConfiguration.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateParameterDataType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of the job template parameter. Allowed values are: ‘STRING’, ‘NUMBER’.</p>"}))
    TemplateParameterConfiguration.add_member(:default_value, Smithy::Schema::Shapes::ShapeRef.new(shape: String1024, location_name: 'defaultValue', traits: {"smithy.api#documentation" => "<p>The default value for the job template parameter.</p>"}))
    TemplateParameterConfiguration.type = Types::TemplateParameterConfiguration
    TemplateParameterConfigurationMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateParameterName)
    TemplateParameterConfigurationMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateParameterConfiguration)
    TemplateParameterDataType.add_member(:number, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NUMBER', traits: {"smithy.api#enumValue" => "NUMBER"}))
    TemplateParameterDataType.add_member(:string, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STRING', traits: {"smithy.api#enumValue" => "STRING"}))
    TemplateParameterInputMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateParameterName)
    TemplateParameterInputMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: String1024)
    UntagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RsiArn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The ARN of resources.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'tagKeys', traits: {"smithy.api#documentation" => "<p>The tag keys of the resources.</p>", "smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    ValidationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String1024, location_name: 'message'))
    ValidationException.type = Types::ValidationException
    VirtualCluster.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdString, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the virtual cluster.</p>"}))
    VirtualCluster.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNameString, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the virtual cluster.</p>"}))
    VirtualCluster.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: VirtualClusterArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The ARN of the virtual cluster.</p>"}))
    VirtualCluster.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: VirtualClusterState, location_name: 'state', traits: {"smithy.api#documentation" => "<p>The state of the virtual cluster.</p>"}))
    VirtualCluster.add_member(:container_provider, Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerProvider, location_name: 'containerProvider', traits: {"smithy.api#documentation" => "<p>The container provider of the virtual cluster.</p>"}))
    VirtualCluster.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The date and time when the virtual cluster is created.</p>"}))
    VirtualCluster.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The assigned tags of the virtual cluster.</p>"}))
    VirtualCluster.add_member(:security_configuration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdString, location_name: 'securityConfigurationId', traits: {"smithy.api#documentation" => "<p>The ID of the security configuration.</p>"}))
    VirtualCluster.type = Types::VirtualCluster
    VirtualClusterState.add_member(:running, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RUNNING', traits: {"smithy.api#enumValue" => "RUNNING"}))
    VirtualClusterState.add_member(:terminating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TERMINATING', traits: {"smithy.api#enumValue" => "TERMINATING"}))
    VirtualClusterState.add_member(:terminated, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TERMINATED', traits: {"smithy.api#enumValue" => "TERMINATED"}))
    VirtualClusterState.add_member(:arrested, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ARRESTED', traits: {"smithy.api#enumValue" => "ARRESTED"}))
    VirtualClusterStates.member = Smithy::Schema::Shapes::ShapeRef.new(shape: VirtualClusterState)
    VirtualClusters.member = Smithy::Schema::Shapes::ShapeRef.new(shape: VirtualCluster)

    AwsChicagoWebService = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.emrcontainers#AwsChicagoWebService"
      service.name = "AwsChicagoWebService"
      service.version = "2020-10-01"
      service.traits = {"aws.api#service" => {"sdkId" => "EMR containers", "arnNamespace" => "emr-containers", "cloudFormationName" => "EMRcontainers", "cloudTrailEventSource" => "emrcontainers.amazonaws.com", "endpointPrefix" => "emr-containers"}, "aws.auth#sigv4" => {"name" => "emr-containers"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "Amazon EMR Containers"}
      service.add_operation(:cancel_job_run, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emrcontainers#CancelJobRun"
        operation.name = "CancelJobRun"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CancelJobRunRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CancelJobRunResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/virtualclusters/{virtualClusterId}/jobruns/{id}", "code" => 200}}
      end)
      service.add_operation(:create_job_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emrcontainers#CreateJobTemplate"
        operation.name = "CreateJobTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateJobTemplateRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateJobTemplateResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/jobtemplates", "code" => 200}}
      end)
      service.add_operation(:create_managed_endpoint, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emrcontainers#CreateManagedEndpoint"
        operation.name = "CreateManagedEndpoint"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateManagedEndpointRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateManagedEndpointResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/virtualclusters/{virtualClusterId}/endpoints", "code" => 200}}
      end)
      service.add_operation(:create_security_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emrcontainers#CreateSecurityConfiguration"
        operation.name = "CreateSecurityConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSecurityConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSecurityConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/securityconfigurations", "code" => 200}}
      end)
      service.add_operation(:create_virtual_cluster, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emrcontainers#CreateVirtualCluster"
        operation.name = "CreateVirtualCluster"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateVirtualClusterRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateVirtualClusterResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EKSRequestThrottledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/virtualclusters", "code" => 200}}
      end)
      service.add_operation(:delete_job_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emrcontainers#DeleteJobTemplate"
        operation.name = "DeleteJobTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteJobTemplateRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteJobTemplateResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/jobtemplates/{id}", "code" => 200}}
      end)
      service.add_operation(:delete_managed_endpoint, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emrcontainers#DeleteManagedEndpoint"
        operation.name = "DeleteManagedEndpoint"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteManagedEndpointRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteManagedEndpointResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/virtualclusters/{virtualClusterId}/endpoints/{id}", "code" => 200}}
      end)
      service.add_operation(:delete_virtual_cluster, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emrcontainers#DeleteVirtualCluster"
        operation.name = "DeleteVirtualCluster"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteVirtualClusterRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteVirtualClusterResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/virtualclusters/{id}", "code" => 200}}
      end)
      service.add_operation(:describe_job_run, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emrcontainers#DescribeJobRun"
        operation.name = "DescribeJobRun"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeJobRunRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeJobRunResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/virtualclusters/{virtualClusterId}/jobruns/{id}", "code" => 200}}
      end)
      service.add_operation(:describe_job_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emrcontainers#DescribeJobTemplate"
        operation.name = "DescribeJobTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeJobTemplateRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeJobTemplateResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/jobtemplates/{id}", "code" => 200}}
      end)
      service.add_operation(:describe_managed_endpoint, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emrcontainers#DescribeManagedEndpoint"
        operation.name = "DescribeManagedEndpoint"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeManagedEndpointRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeManagedEndpointResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/virtualclusters/{virtualClusterId}/endpoints/{id}", "code" => 200}}
      end)
      service.add_operation(:describe_security_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emrcontainers#DescribeSecurityConfiguration"
        operation.name = "DescribeSecurityConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSecurityConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSecurityConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/securityconfigurations/{id}", "code" => 200}}
      end)
      service.add_operation(:describe_virtual_cluster, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emrcontainers#DescribeVirtualCluster"
        operation.name = "DescribeVirtualCluster"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeVirtualClusterRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeVirtualClusterResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/virtualclusters/{id}", "code" => 200}}
      end)
      service.add_operation(:get_managed_endpoint_session_credentials, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emrcontainers#GetManagedEndpointSessionCredentials"
        operation.name = "GetManagedEndpointSessionCredentials"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetManagedEndpointSessionCredentialsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetManagedEndpointSessionCredentialsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestThrottledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/virtualclusters/{virtualClusterIdentifier}/endpoints/{endpointIdentifier}/credentials", "code" => 200}}
      end)
      service.add_operation(:list_job_runs, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emrcontainers#ListJobRuns"
        operation.name = "ListJobRuns"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListJobRunsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListJobRunsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/virtualclusters/{virtualClusterId}/jobruns", "code" => 200}}
        operation[:paginator] = Paginators::ListJobRuns.new
      end)
      service.add_operation(:list_job_templates, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emrcontainers#ListJobTemplates"
        operation.name = "ListJobTemplates"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListJobTemplatesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListJobTemplatesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/jobtemplates", "code" => 200}}
        operation[:paginator] = Paginators::ListJobTemplates.new
      end)
      service.add_operation(:list_managed_endpoints, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emrcontainers#ListManagedEndpoints"
        operation.name = "ListManagedEndpoints"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListManagedEndpointsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListManagedEndpointsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/virtualclusters/{virtualClusterId}/endpoints", "code" => 200}}
        operation[:paginator] = Paginators::ListManagedEndpoints.new
      end)
      service.add_operation(:list_security_configurations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emrcontainers#ListSecurityConfigurations"
        operation.name = "ListSecurityConfigurations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSecurityConfigurationsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSecurityConfigurationsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/securityconfigurations", "code" => 200}}
        operation[:paginator] = Paginators::ListSecurityConfigurations.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emrcontainers#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{resourceArn}", "code" => 200}}
      end)
      service.add_operation(:list_virtual_clusters, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emrcontainers#ListVirtualClusters"
        operation.name = "ListVirtualClusters"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListVirtualClustersRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListVirtualClustersResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/virtualclusters", "code" => 200}}
        operation[:paginator] = Paginators::ListVirtualClusters.new
      end)
      service.add_operation(:start_job_run, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emrcontainers#StartJobRun"
        operation.name = "StartJobRun"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartJobRunRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartJobRunResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/virtualclusters/{virtualClusterId}/jobruns", "code" => 200}}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emrcontainers#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags/{resourceArn}", "code" => 200}}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emrcontainers#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{resourceArn}", "code" => 200}}
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
