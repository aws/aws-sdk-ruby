# frozen_string_literal: true

# This is generated code!

module Aws::ApplicationInsights
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#AccessDeniedException', name: 'AccessDeniedException', traits: {"aws.protocols#awsQueryError" => {"code" => "AccessDeniedException", "httpResponseCode" => 403}, "smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccountId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#AccountId', name: 'AccountId', traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "^\\d{12}$"})
    AddWorkloadRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#AddWorkloadRequest', name: 'AddWorkloadRequest')
    AddWorkloadResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#AddWorkloadResponse', name: 'AddWorkloadResponse')
    AffectedResource = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#AffectedResource', name: 'AffectedResource')
    AmazonResourceName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#AmazonResourceName', name: 'AmazonResourceName', traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}, "smithy.api#pattern" => "^arn:aws(-\\w+)*:[\\w\\d-]+:([\\w\\d-]*)?:[\\w\\d_-]*([:/].+)*$"})
    ApplicationComponent = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#ApplicationComponent', name: 'ApplicationComponent')
    ApplicationComponentList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.applicationinsights#ApplicationComponentList', name: 'ApplicationComponentList')
    ApplicationInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#ApplicationInfo', name: 'ApplicationInfo')
    ApplicationInfoList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.applicationinsights#ApplicationInfoList', name: 'ApplicationInfoList')
    AttachMissingPermission = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.applicationinsights#AttachMissingPermission', name: 'AttachMissingPermission')
    AutoConfigEnabled = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.applicationinsights#AutoConfigEnabled', name: 'AutoConfigEnabled')
    AutoCreate = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.applicationinsights#AutoCreate', name: 'AutoCreate')
    BadRequestException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#BadRequestException', name: 'BadRequestException', traits: {"aws.protocols#awsQueryError" => {"code" => "BadRequestException", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    CWEMonitorEnabled = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.applicationinsights#CWEMonitorEnabled', name: 'CWEMonitorEnabled')
    CloudWatchEventDetailType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#CloudWatchEventDetailType', name: 'CloudWatchEventDetailType')
    CloudWatchEventId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#CloudWatchEventId', name: 'CloudWatchEventId')
    CloudWatchEventSource = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.applicationinsights#CloudWatchEventSource', name: 'CloudWatchEventSource')
    CodeDeployApplication = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#CodeDeployApplication', name: 'CodeDeployApplication')
    CodeDeployDeploymentGroup = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#CodeDeployDeploymentGroup', name: 'CodeDeployDeploymentGroup')
    CodeDeployDeploymentId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#CodeDeployDeploymentId', name: 'CodeDeployDeploymentId')
    CodeDeployInstanceGroupId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#CodeDeployInstanceGroupId', name: 'CodeDeployInstanceGroupId')
    CodeDeployState = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#CodeDeployState', name: 'CodeDeployState')
    ComponentConfiguration = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#ComponentConfiguration', name: 'ComponentConfiguration', traits: {"smithy.api#length" => {"min" => 1, "max" => 10000}, "smithy.api#pattern" => "^[\\S\\s]+$"})
    ComponentName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#ComponentName', name: 'ComponentName', traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}, "smithy.api#pattern" => "^(?:^[\\d\\w\\-_\\.+]*$)|(?:^arn:aws(-\\w+)*:[\\w\\d-]+:([\\w\\d-]*)?:[\\w\\d_-]*([:/].+)*$)$"})
    ConfigurationEvent = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#ConfigurationEvent', name: 'ConfigurationEvent')
    ConfigurationEventDetail = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#ConfigurationEventDetail', name: 'ConfigurationEventDetail')
    ConfigurationEventList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.applicationinsights#ConfigurationEventList', name: 'ConfigurationEventList')
    ConfigurationEventMonitoredResourceARN = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#ConfigurationEventMonitoredResourceARN', name: 'ConfigurationEventMonitoredResourceARN')
    ConfigurationEventResourceName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#ConfigurationEventResourceName', name: 'ConfigurationEventResourceName')
    ConfigurationEventResourceType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.applicationinsights#ConfigurationEventResourceType', name: 'ConfigurationEventResourceType')
    ConfigurationEventStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.applicationinsights#ConfigurationEventStatus', name: 'ConfigurationEventStatus')
    ConfigurationEventTime = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.applicationinsights#ConfigurationEventTime', name: 'ConfigurationEventTime')
    CreateApplicationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#CreateApplicationRequest', name: 'CreateApplicationRequest')
    CreateApplicationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#CreateApplicationResponse', name: 'CreateApplicationResponse')
    CreateComponentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#CreateComponentRequest', name: 'CreateComponentRequest')
    CreateComponentResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#CreateComponentResponse', name: 'CreateComponentResponse')
    CreateLogPatternRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#CreateLogPatternRequest', name: 'CreateLogPatternRequest')
    CreateLogPatternResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#CreateLogPatternResponse', name: 'CreateLogPatternResponse')
    CustomComponentName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#CustomComponentName', name: 'CustomComponentName', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\d\\w\\-_\\.+]*$"})
    DeleteApplicationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#DeleteApplicationRequest', name: 'DeleteApplicationRequest')
    DeleteApplicationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#DeleteApplicationResponse', name: 'DeleteApplicationResponse')
    DeleteComponentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#DeleteComponentRequest', name: 'DeleteComponentRequest')
    DeleteComponentResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#DeleteComponentResponse', name: 'DeleteComponentResponse')
    DeleteLogPatternRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#DeleteLogPatternRequest', name: 'DeleteLogPatternRequest')
    DeleteLogPatternResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#DeleteLogPatternResponse', name: 'DeleteLogPatternResponse')
    DescribeApplicationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#DescribeApplicationRequest', name: 'DescribeApplicationRequest')
    DescribeApplicationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#DescribeApplicationResponse', name: 'DescribeApplicationResponse')
    DescribeComponentConfigurationRecommendationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#DescribeComponentConfigurationRecommendationRequest', name: 'DescribeComponentConfigurationRecommendationRequest')
    DescribeComponentConfigurationRecommendationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#DescribeComponentConfigurationRecommendationResponse', name: 'DescribeComponentConfigurationRecommendationResponse')
    DescribeComponentConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#DescribeComponentConfigurationRequest', name: 'DescribeComponentConfigurationRequest')
    DescribeComponentConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#DescribeComponentConfigurationResponse', name: 'DescribeComponentConfigurationResponse')
    DescribeComponentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#DescribeComponentRequest', name: 'DescribeComponentRequest')
    DescribeComponentResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#DescribeComponentResponse', name: 'DescribeComponentResponse')
    DescribeLogPatternRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#DescribeLogPatternRequest', name: 'DescribeLogPatternRequest')
    DescribeLogPatternResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#DescribeLogPatternResponse', name: 'DescribeLogPatternResponse')
    DescribeObservationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#DescribeObservationRequest', name: 'DescribeObservationRequest')
    DescribeObservationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#DescribeObservationResponse', name: 'DescribeObservationResponse')
    DescribeProblemObservationsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#DescribeProblemObservationsRequest', name: 'DescribeProblemObservationsRequest')
    DescribeProblemObservationsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#DescribeProblemObservationsResponse', name: 'DescribeProblemObservationsResponse')
    DescribeProblemRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#DescribeProblemRequest', name: 'DescribeProblemRequest')
    DescribeProblemResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#DescribeProblemResponse', name: 'DescribeProblemResponse')
    DescribeWorkloadRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#DescribeWorkloadRequest', name: 'DescribeWorkloadRequest')
    DescribeWorkloadResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#DescribeWorkloadResponse', name: 'DescribeWorkloadResponse')
    DetectedWorkload = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.applicationinsights#DetectedWorkload', name: 'DetectedWorkload')
    DiscoveryType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.applicationinsights#DiscoveryType', name: 'DiscoveryType')
    EbsCause = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#EbsCause', name: 'EbsCause')
    EbsEvent = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#EbsEvent', name: 'EbsEvent')
    EbsRequestId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#EbsRequestId', name: 'EbsRequestId')
    EbsResult = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#EbsResult', name: 'EbsResult')
    Ec2State = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#Ec2State', name: 'Ec2State')
    EndTime = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.applicationinsights#EndTime', name: 'EndTime')
    ErrorMsg = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#ErrorMsg', name: 'ErrorMsg')
    ExceptionMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#ExceptionMessage', name: 'ExceptionMessage')
    Feedback = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.applicationinsights#Feedback', name: 'Feedback', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    FeedbackKey = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.applicationinsights#FeedbackKey', name: 'FeedbackKey')
    FeedbackValue = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.applicationinsights#FeedbackValue', name: 'FeedbackValue')
    GroupingType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.applicationinsights#GroupingType', name: 'GroupingType')
    HealthEventArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#HealthEventArn', name: 'HealthEventArn')
    HealthEventDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#HealthEventDescription', name: 'HealthEventDescription')
    HealthEventTypeCategory = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#HealthEventTypeCategory', name: 'HealthEventTypeCategory')
    HealthEventTypeCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#HealthEventTypeCode', name: 'HealthEventTypeCode')
    HealthService = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#HealthService', name: 'HealthService')
    Insights = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#Insights', name: 'Insights')
    InternalServerException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#InternalServerException', name: 'InternalServerException', traits: {"aws.protocols#awsQueryError" => {"code" => "InternalServerException", "httpResponseCode" => 500}, "smithy.api#error" => "server", "smithy.api#httpError" => 500})
    LastRecurrenceTime = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.applicationinsights#LastRecurrenceTime', name: 'LastRecurrenceTime')
    LifeCycle = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#LifeCycle', name: 'LifeCycle')
    LineTime = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.applicationinsights#LineTime', name: 'LineTime')
    ListApplicationsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#ListApplicationsRequest', name: 'ListApplicationsRequest')
    ListApplicationsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#ListApplicationsResponse', name: 'ListApplicationsResponse')
    ListComponentsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#ListComponentsRequest', name: 'ListComponentsRequest')
    ListComponentsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#ListComponentsResponse', name: 'ListComponentsResponse')
    ListConfigurationHistoryRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#ListConfigurationHistoryRequest', name: 'ListConfigurationHistoryRequest')
    ListConfigurationHistoryResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#ListConfigurationHistoryResponse', name: 'ListConfigurationHistoryResponse')
    ListLogPatternSetsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#ListLogPatternSetsRequest', name: 'ListLogPatternSetsRequest')
    ListLogPatternSetsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#ListLogPatternSetsResponse', name: 'ListLogPatternSetsResponse')
    ListLogPatternsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#ListLogPatternsRequest', name: 'ListLogPatternsRequest')
    ListLogPatternsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#ListLogPatternsResponse', name: 'ListLogPatternsResponse')
    ListProblemsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#ListProblemsRequest', name: 'ListProblemsRequest')
    ListProblemsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#ListProblemsResponse', name: 'ListProblemsResponse')
    ListTagsForResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    ListWorkloadsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#ListWorkloadsRequest', name: 'ListWorkloadsRequest')
    ListWorkloadsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#ListWorkloadsResponse', name: 'ListWorkloadsResponse')
    LogFilter = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.applicationinsights#LogFilter', name: 'LogFilter')
    LogGroup = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#LogGroup', name: 'LogGroup')
    LogPattern = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#LogPattern', name: 'LogPattern')
    LogPatternList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.applicationinsights#LogPatternList', name: 'LogPatternList')
    LogPatternName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#LogPatternName', name: 'LogPatternName', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#pattern" => "^[a-zA-Z0-9\\.\\-_]*$"})
    LogPatternRank = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.applicationinsights#LogPatternRank', name: 'LogPatternRank', traits: {"smithy.api#default" => 0})
    LogPatternRegex = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#LogPatternRegex', name: 'LogPatternRegex', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#pattern" => "^[\\S\\s]+$"})
    LogPatternSetList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.applicationinsights#LogPatternSetList', name: 'LogPatternSetList')
    LogPatternSetName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#LogPatternSetName', name: 'LogPatternSetName', traits: {"smithy.api#length" => {"min" => 1, "max" => 30}, "smithy.api#pattern" => "^[a-zA-Z0-9\\.\\-_]*$"})
    LogText = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#LogText', name: 'LogText')
    MaxEntities = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.applicationinsights#MaxEntities', name: 'MaxEntities', traits: {"smithy.api#range" => {"min" => 1, "max" => 40}})
    MetaDataKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#MetaDataKey', name: 'MetaDataKey')
    MetaDataValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#MetaDataValue', name: 'MetaDataValue')
    MetricName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#MetricName', name: 'MetricName')
    MetricNamespace = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#MetricNamespace', name: 'MetricNamespace')
    MissingWorkloadConfig = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.applicationinsights#MissingWorkloadConfig', name: 'MissingWorkloadConfig')
    Monitor = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.applicationinsights#Monitor', name: 'Monitor')
    Observation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#Observation', name: 'Observation')
    ObservationId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#ObservationId', name: 'ObservationId', traits: {"smithy.api#length" => {"min" => 38, "max" => 38}, "smithy.api#pattern" => "^o-[0-9a-fA-F]{8}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{12}$"})
    ObservationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.applicationinsights#ObservationList', name: 'ObservationList')
    OpsCenterEnabled = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.applicationinsights#OpsCenterEnabled', name: 'OpsCenterEnabled')
    OpsItemSNSTopicArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#OpsItemSNSTopicArn', name: 'OpsItemSNSTopicArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 300}, "smithy.api#pattern" => "^arn:aws(-\\w+)*:[\\w\\d-]+:([\\w\\d-]*)?:[\\w\\d_-]*([:/].+)*$"})
    OsType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.applicationinsights#OsType', name: 'OsType')
    PaginationToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#PaginationToken', name: 'PaginationToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^.+$"})
    Problem = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#Problem', name: 'Problem')
    ProblemId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#ProblemId', name: 'ProblemId', traits: {"smithy.api#length" => {"min" => 38, "max" => 38}, "smithy.api#pattern" => "^p-[0-9a-fA-F]{8}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{12}$"})
    ProblemList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.applicationinsights#ProblemList', name: 'ProblemList')
    RdsEventCategories = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#RdsEventCategories', name: 'RdsEventCategories')
    RdsEventMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#RdsEventMessage', name: 'RdsEventMessage')
    RecommendationType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.applicationinsights#RecommendationType', name: 'RecommendationType')
    RecurringCount = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.applicationinsights#RecurringCount', name: 'RecurringCount')
    RelatedObservations = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#RelatedObservations', name: 'RelatedObservations')
    Remarks = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#Remarks', name: 'Remarks')
    RemoveSNSTopic = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.applicationinsights#RemoveSNSTopic', name: 'RemoveSNSTopic')
    RemoveWorkloadRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#RemoveWorkloadRequest', name: 'RemoveWorkloadRequest')
    RemoveWorkloadResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#RemoveWorkloadResponse', name: 'RemoveWorkloadResponse')
    ResolutionMethod = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.applicationinsights#ResolutionMethod', name: 'ResolutionMethod')
    ResourceARN = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#ResourceARN', name: 'ResourceARN', traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}, "smithy.api#pattern" => "^arn:aws(-\\w+)*:[\\w\\d-]+:([\\w\\d-]*)?:[\\w\\d_-]*([:/].+)*$"})
    ResourceGroupName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#ResourceGroupName', name: 'ResourceGroupName', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9\\.\\-_]*$"})
    ResourceInUseException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#ResourceInUseException', name: 'ResourceInUseException', traits: {"aws.protocols#awsQueryError" => {"code" => "ResourceInUseException", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ResourceList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.applicationinsights#ResourceList', name: 'ResourceList')
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"aws.protocols#awsQueryError" => {"code" => "ResourceNotFoundException", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#ResourceType', name: 'ResourceType', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#pattern" => "^[0-9a-zA-Z:_]*$"})
    S3EventName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#S3EventName', name: 'S3EventName')
    SNSNotificationArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#SNSNotificationArn', name: 'SNSNotificationArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 300}, "smithy.api#pattern" => "^arn:aws(-\\w+)*:[\\w\\d-]+:([\\w\\d-]*)?:[\\w\\d_-]*([:/].+)*$"})
    SeverityLevel = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.applicationinsights#SeverityLevel', name: 'SeverityLevel')
    ShortName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#ShortName', name: 'ShortName')
    SourceARN = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#SourceARN', name: 'SourceARN')
    SourceType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#SourceType', name: 'SourceType')
    StartTime = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.applicationinsights#StartTime', name: 'StartTime')
    StatesArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#StatesArn', name: 'StatesArn')
    StatesExecutionArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#StatesExecutionArn', name: 'StatesExecutionArn')
    StatesInput = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#StatesInput', name: 'StatesInput')
    StatesStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#StatesStatus', name: 'StatesStatus')
    Status = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.applicationinsights#Status', name: 'Status')
    Tag = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#Tag', name: 'Tag')
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    TagKeyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.applicationinsights#TagKeyList', name: 'TagKeyList', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.applicationinsights#TagList', name: 'TagList', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#TagResourceRequest', name: 'TagResourceRequest')
    TagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#TagResourceResponse', name: 'TagResourceResponse')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    TagsAlreadyExistException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#TagsAlreadyExistException', name: 'TagsAlreadyExistException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Tier = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.applicationinsights#Tier', name: 'Tier', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    Title = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#Title', name: 'Title')
    TooManyTagsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#TooManyTagsException', name: 'TooManyTagsException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Unit = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#Unit', name: 'Unit')
    UntagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#UntagResourceRequest', name: 'UntagResourceRequest')
    UntagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#UntagResourceResponse', name: 'UntagResourceResponse')
    UpdateApplicationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#UpdateApplicationRequest', name: 'UpdateApplicationRequest')
    UpdateApplicationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#UpdateApplicationResponse', name: 'UpdateApplicationResponse')
    UpdateComponentConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#UpdateComponentConfigurationRequest', name: 'UpdateComponentConfigurationRequest')
    UpdateComponentConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#UpdateComponentConfigurationResponse', name: 'UpdateComponentConfigurationResponse')
    UpdateComponentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#UpdateComponentRequest', name: 'UpdateComponentRequest')
    UpdateComponentResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#UpdateComponentResponse', name: 'UpdateComponentResponse')
    UpdateLogPatternRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#UpdateLogPatternRequest', name: 'UpdateLogPatternRequest')
    UpdateLogPatternResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#UpdateLogPatternResponse', name: 'UpdateLogPatternResponse')
    UpdateProblemRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#UpdateProblemRequest', name: 'UpdateProblemRequest')
    UpdateProblemResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#UpdateProblemResponse', name: 'UpdateProblemResponse')
    UpdateStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.applicationinsights#UpdateStatus', name: 'UpdateStatus')
    UpdateWorkloadRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#UpdateWorkloadRequest', name: 'UpdateWorkloadRequest')
    UpdateWorkloadResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#UpdateWorkloadResponse', name: 'UpdateWorkloadResponse')
    ValidationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#ValidationException', name: 'ValidationException', traits: {"aws.protocols#awsQueryError" => {"code" => "ValidationException", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Value = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.applicationinsights#Value', name: 'Value')
    Visibility = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.applicationinsights#Visibility', name: 'Visibility')
    Workload = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#Workload', name: 'Workload')
    WorkloadConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#WorkloadConfiguration', name: 'WorkloadConfiguration')
    WorkloadId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#WorkloadId', name: 'WorkloadId', traits: {"smithy.api#length" => {"min" => 38, "max" => 38}, "smithy.api#pattern" => "^w-[0-9a-fA-F]{8}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{12}$"})
    WorkloadList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.applicationinsights#WorkloadList', name: 'WorkloadList')
    WorkloadMetaData = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.applicationinsights#WorkloadMetaData', name: 'WorkloadMetaData')
    WorkloadName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#WorkloadName', name: 'WorkloadName', traits: {"smithy.api#length" => {"min" => 1, "max" => 12}, "smithy.api#pattern" => "^[a-zA-Z0-9\\.\\-_]*$"})
    XRayErrorPercent = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.applicationinsights#XRayErrorPercent', name: 'XRayErrorPercent')
    XRayFaultPercent = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.applicationinsights#XRayFaultPercent', name: 'XRayFaultPercent')
    XRayNodeName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#XRayNodeName', name: 'XRayNodeName')
    XRayNodeType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#XRayNodeType', name: 'XRayNodeType')
    XRayRequestAverageLatency = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.applicationinsights#XRayRequestAverageLatency', name: 'XRayRequestAverageLatency')
    XRayRequestCount = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.applicationinsights#XRayRequestCount', name: 'XRayRequestCount')
    XRayThrottlePercent = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.applicationinsights#XRayThrottlePercent', name: 'XRayThrottlePercent')

    AccessDeniedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMsg, location_name: 'Message'))
    AccessDeniedException.type = Types::AccessDeniedException
    AddWorkloadRequest.add_member(:resource_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceGroupName, location_name: 'ResourceGroupName', traits: {"smithy.api#documentation" => "<p>The name of the resource group.</p>", "smithy.api#required" => {}}))
    AddWorkloadRequest.add_member(:component_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentName, location_name: 'ComponentName', traits: {"smithy.api#documentation" => "<p>The name of the component.</p>", "smithy.api#required" => {}}))
    AddWorkloadRequest.add_member(:workload_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadConfiguration, location_name: 'WorkloadConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration settings of the workload. The value is the escaped JSON of the configuration.</p>", "smithy.api#required" => {}}))
    AddWorkloadRequest.type = Types::AddWorkloadRequest
    AddWorkloadResponse.add_member(:workload_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadId, location_name: 'WorkloadId', traits: {"smithy.api#documentation" => "<p>The ID of the workload.</p>"}))
    AddWorkloadResponse.add_member(:workload_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadConfiguration, location_name: 'WorkloadConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration settings of the workload. The value is the escaped JSON of the configuration.</p>"}))
    AddWorkloadResponse.type = Types::AddWorkloadResponse
    ApplicationComponent.add_member(:component_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentName, location_name: 'ComponentName', traits: {"smithy.api#documentation" => "<p>The name of the component.</p>"}))
    ApplicationComponent.add_member(:component_remarks, Smithy::Schema::Shapes::ShapeRef.new(shape: Remarks, location_name: 'ComponentRemarks', traits: {"smithy.api#documentation" => "<p> If logging is supported for the resource type, indicates whether the component has\n         configured logs to be monitored. </p>"}))
    ApplicationComponent.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'ResourceType', traits: {"smithy.api#documentation" => "<p>The resource type. Supported resource types include EC2 instances, Auto Scaling group,\n         Classic ELB, Application ELB, and SQS Queue.</p>"}))
    ApplicationComponent.add_member(:os_type, Smithy::Schema::Shapes::ShapeRef.new(shape: OsType, location_name: 'OsType', traits: {"smithy.api#documentation" => "<p> The operating system of the component. </p>"}))
    ApplicationComponent.add_member(:tier, Smithy::Schema::Shapes::ShapeRef.new(shape: Tier, location_name: 'Tier', traits: {"smithy.api#documentation" => "<p>The stack tier of the application component.</p>"}))
    ApplicationComponent.add_member(:monitor, Smithy::Schema::Shapes::ShapeRef.new(shape: Monitor, location_name: 'Monitor', traits: {"smithy.api#documentation" => "<p>Indicates whether the application component is monitored. </p>"}))
    ApplicationComponent.add_member(:detected_workload, Smithy::Schema::Shapes::ShapeRef.new(shape: DetectedWorkload, location_name: 'DetectedWorkload', traits: {"smithy.api#documentation" => "<p> Workloads detected in the application component. </p>"}))
    ApplicationComponent.type = Types::ApplicationComponent
    ApplicationComponentList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationComponent)
    ApplicationInfo.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID for the owner of the application.</p>"}))
    ApplicationInfo.add_member(:resource_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceGroupName, location_name: 'ResourceGroupName', traits: {"smithy.api#documentation" => "<p>The name of the resource group used for the application.</p>"}))
    ApplicationInfo.add_member(:life_cycle, Smithy::Schema::Shapes::ShapeRef.new(shape: LifeCycle, location_name: 'LifeCycle', traits: {"smithy.api#documentation" => "<p>The lifecycle of the application. </p>"}))
    ApplicationInfo.add_member(:ops_item_sns_topic_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: OpsItemSNSTopicArn, location_name: 'OpsItemSNSTopicArn', traits: {"smithy.api#documentation" => "<p> The SNS topic provided to Application Insights that is associated to the created\n         opsItems to receive SNS notifications for opsItem updates. </p>"}))
    ApplicationInfo.add_member(:sns_notification_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SNSNotificationArn, location_name: 'SNSNotificationArn', traits: {"smithy.api#documentation" => "<p>\n         The SNS topic ARN that is associated with SNS notifications for updates or issues.\n      </p>"}))
    ApplicationInfo.add_member(:ops_center_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: OpsCenterEnabled, location_name: 'OpsCenterEnabled', traits: {"smithy.api#documentation" => "<p> Indicates whether Application Insights will create opsItems for any problem detected by\n         Application Insights for an application. </p>"}))
    ApplicationInfo.add_member(:cwe_monitor_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: CWEMonitorEnabled, location_name: 'CWEMonitorEnabled', traits: {"smithy.api#documentation" => "<p> Indicates whether Application Insights can listen to CloudWatch events for the\n         application resources, such as <code>instance terminated</code>, <code>failed\n            deployment</code>, and others. </p>"}))
    ApplicationInfo.add_member(:remarks, Smithy::Schema::Shapes::ShapeRef.new(shape: Remarks, location_name: 'Remarks', traits: {"smithy.api#documentation" => "<p>The issues on the user side that block Application Insights from successfully monitoring\n         an application. Example remarks include:</p>\n         <ul>\n            <li>\n               <p>“Configuring application, detected 1 Errors, 3 Warnings”</p>\n            </li>\n            <li>\n               <p>“Configuring application, detected 1 Unconfigured Components”</p>\n            </li>\n         </ul>"}))
    ApplicationInfo.add_member(:auto_config_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoConfigEnabled, location_name: 'AutoConfigEnabled', traits: {"smithy.api#documentation" => "<p> Indicates whether auto-configuration is turned on for this application. </p>"}))
    ApplicationInfo.add_member(:discovery_type, Smithy::Schema::Shapes::ShapeRef.new(shape: DiscoveryType, location_name: 'DiscoveryType', traits: {"smithy.api#documentation" => "<p> The method used by Application Insights to onboard your resources. </p>"}))
    ApplicationInfo.add_member(:attach_missing_permission, Smithy::Schema::Shapes::ShapeRef.new(shape: AttachMissingPermission, location_name: 'AttachMissingPermission', traits: {"smithy.api#documentation" => "<p>If set to true, the managed policies for SSM and CW will be attached to the instance roles if they are missing.</p>"}))
    ApplicationInfo.type = Types::ApplicationInfo
    ApplicationInfoList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationInfo)
    BadRequestException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMsg, location_name: 'Message'))
    BadRequestException.type = Types::BadRequestException
    CloudWatchEventSource.add_member(:ec2, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EC2', traits: {"smithy.api#enumValue" => "EC2"}))
    CloudWatchEventSource.add_member(:code_deploy, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CODE_DEPLOY', traits: {"smithy.api#enumValue" => "CODE_DEPLOY"}))
    CloudWatchEventSource.add_member(:health, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HEALTH', traits: {"smithy.api#enumValue" => "HEALTH"}))
    CloudWatchEventSource.add_member(:rds, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RDS', traits: {"smithy.api#enumValue" => "RDS"}))
    ConfigurationEvent.add_member(:resource_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceGroupName, location_name: 'ResourceGroupName', traits: {"smithy.api#documentation" => "<p>The name of the resource group of the application to which the configuration event belongs.</p>"}))
    ConfigurationEvent.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID for the owner of the application to which the configuration event belongs.</p>"}))
    ConfigurationEvent.add_member(:monitored_resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationEventMonitoredResourceARN, location_name: 'MonitoredResourceARN', traits: {"smithy.api#documentation" => "<p> The resource monitored by Application Insights. </p>"}))
    ConfigurationEvent.add_member(:event_status, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationEventStatus, location_name: 'EventStatus', traits: {"smithy.api#documentation" => "<p> The status of the configuration update event. Possible values include INFO, WARN, and\n         ERROR. </p>"}))
    ConfigurationEvent.add_member(:event_resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationEventResourceType, location_name: 'EventResourceType', traits: {"smithy.api#documentation" => "<p> The resource type that Application Insights attempted to configure, for example,\n         CLOUDWATCH_ALARM. </p>"}))
    ConfigurationEvent.add_member(:event_time, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationEventTime, location_name: 'EventTime', traits: {"smithy.api#documentation" => "<p> The timestamp of the event. </p>"}))
    ConfigurationEvent.add_member(:event_detail, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationEventDetail, location_name: 'EventDetail', traits: {"smithy.api#documentation" => "<p> The details of the event in plain text. </p>"}))
    ConfigurationEvent.add_member(:event_resource_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationEventResourceName, location_name: 'EventResourceName', traits: {"smithy.api#documentation" => "<p> The name of the resource Application Insights attempted to configure. </p>"}))
    ConfigurationEvent.type = Types::ConfigurationEvent
    ConfigurationEventList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationEvent)
    ConfigurationEventResourceType.add_member(:cloudwatch_alarm, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CLOUDWATCH_ALARM', traits: {"smithy.api#enumValue" => "CLOUDWATCH_ALARM"}))
    ConfigurationEventResourceType.add_member(:cloudwatch_log, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CLOUDWATCH_LOG', traits: {"smithy.api#enumValue" => "CLOUDWATCH_LOG"}))
    ConfigurationEventResourceType.add_member(:cloudformation, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CLOUDFORMATION', traits: {"smithy.api#enumValue" => "CLOUDFORMATION"}))
    ConfigurationEventResourceType.add_member(:ssm_association, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SSM_ASSOCIATION', traits: {"smithy.api#enumValue" => "SSM_ASSOCIATION"}))
    ConfigurationEventStatus.add_member(:info, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INFO', traits: {"smithy.api#enumValue" => "INFO"}))
    ConfigurationEventStatus.add_member(:warn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WARN', traits: {"smithy.api#enumValue" => "WARN"}))
    ConfigurationEventStatus.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ERROR', traits: {"smithy.api#enumValue" => "ERROR"}))
    CreateApplicationRequest.add_member(:resource_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceGroupName, location_name: 'ResourceGroupName', traits: {"smithy.api#documentation" => "<p>The name of the resource group.</p>"}))
    CreateApplicationRequest.add_member(:ops_center_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: OpsCenterEnabled, location_name: 'OpsCenterEnabled', traits: {"smithy.api#documentation" => "<p> When set to <code>true</code>, creates opsItems for any problems detected on an\n         application. </p>"}))
    CreateApplicationRequest.add_member(:cwe_monitor_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: CWEMonitorEnabled, location_name: 'CWEMonitorEnabled', traits: {"smithy.api#documentation" => "<p> Indicates whether Application Insights can listen to CloudWatch events for the\n         application resources, such as <code>instance terminated</code>, <code>failed\n            deployment</code>, and others. </p>"}))
    CreateApplicationRequest.add_member(:ops_item_sns_topic_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: OpsItemSNSTopicArn, location_name: 'OpsItemSNSTopicArn', traits: {"smithy.api#documentation" => "<p> The SNS topic provided to Application Insights that is associated to the created\n         opsItem. Allows you to receive notifications for updates to the opsItem. </p>"}))
    CreateApplicationRequest.add_member(:sns_notification_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SNSNotificationArn, location_name: 'SNSNotificationArn', traits: {"smithy.api#documentation" => "<p>\n         The SNS notification topic ARN.\n      </p>"}))
    CreateApplicationRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>List of tags to add to the application. tag key (<code>Key</code>) and an associated tag\n         value (<code>Value</code>). The maximum length of a tag key is 128 characters. The maximum\n         length of a tag value is 256 characters.</p>"}))
    CreateApplicationRequest.add_member(:auto_config_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoConfigEnabled, location_name: 'AutoConfigEnabled', traits: {"smithy.api#documentation" => "<p> Indicates whether Application Insights automatically configures unmonitored resources\n         in the resource group. </p>"}))
    CreateApplicationRequest.add_member(:auto_create, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoCreate, location_name: 'AutoCreate', traits: {"smithy.api#documentation" => "<p> Configures all of the resources in the resource group by applying the recommended\n         configurations. </p>"}))
    CreateApplicationRequest.add_member(:grouping_type, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupingType, location_name: 'GroupingType', traits: {"smithy.api#documentation" => "<p>Application Insights can create applications based on a resource group or on an account.\n         To create an account-based application using all of the resources in the account, set this\n         parameter to <code>ACCOUNT_BASED</code>. </p>"}))
    CreateApplicationRequest.add_member(:attach_missing_permission, Smithy::Schema::Shapes::ShapeRef.new(shape: AttachMissingPermission, location_name: 'AttachMissingPermission', traits: {"smithy.api#documentation" => "<p>If set to true, the managed policies for SSM and CW will be attached to the instance roles if they are missing.</p>"}))
    CreateApplicationRequest.type = Types::CreateApplicationRequest
    CreateApplicationResponse.add_member(:application_info, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationInfo, location_name: 'ApplicationInfo', traits: {"smithy.api#documentation" => "<p>Information about the application.</p>"}))
    CreateApplicationResponse.type = Types::CreateApplicationResponse
    CreateComponentRequest.add_member(:resource_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceGroupName, location_name: 'ResourceGroupName', traits: {"smithy.api#documentation" => "<p>The name of the resource group.</p>", "smithy.api#required" => {}}))
    CreateComponentRequest.add_member(:component_name, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomComponentName, location_name: 'ComponentName', traits: {"smithy.api#documentation" => "<p>The name of the component.</p>", "smithy.api#required" => {}}))
    CreateComponentRequest.add_member(:resource_list, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceList, location_name: 'ResourceList', traits: {"smithy.api#documentation" => "<p>The list of resource ARNs that belong to the component.</p>", "smithy.api#required" => {}}))
    CreateComponentRequest.type = Types::CreateComponentRequest
    CreateComponentResponse.type = Types::CreateComponentResponse
    CreateLogPatternRequest.add_member(:resource_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceGroupName, location_name: 'ResourceGroupName', traits: {"smithy.api#documentation" => "<p>The name of the resource group.</p>", "smithy.api#required" => {}}))
    CreateLogPatternRequest.add_member(:pattern_set_name, Smithy::Schema::Shapes::ShapeRef.new(shape: LogPatternSetName, location_name: 'PatternSetName', traits: {"smithy.api#documentation" => "<p>The name of the log pattern set.</p>", "smithy.api#required" => {}}))
    CreateLogPatternRequest.add_member(:pattern_name, Smithy::Schema::Shapes::ShapeRef.new(shape: LogPatternName, location_name: 'PatternName', traits: {"smithy.api#documentation" => "<p>The name of the log pattern.</p>", "smithy.api#required" => {}}))
    CreateLogPatternRequest.add_member(:pattern, Smithy::Schema::Shapes::ShapeRef.new(shape: LogPatternRegex, location_name: 'Pattern', traits: {"smithy.api#documentation" => "<p>The log pattern. The pattern must be DFA compatible. Patterns that utilize forward\n         lookahead or backreference constructions are not supported.</p>", "smithy.api#required" => {}}))
    CreateLogPatternRequest.add_member(:rank, Smithy::Schema::Shapes::ShapeRef.new(shape: LogPatternRank, location_name: 'Rank', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Rank of the log pattern. Must be a value between <code>1</code> and\n            <code>1,000,000</code>. The patterns are sorted by rank, so we recommend that you set\n         your highest priority patterns with the lowest rank. A pattern of rank <code>1</code> will\n         be the first to get matched to a log line. A pattern of rank <code>1,000,000</code> will be\n         last to get matched. When you configure custom log patterns from the console, a\n            <code>Low</code> severity pattern translates to a <code>750,000</code> rank. A\n            <code>Medium</code> severity pattern translates to a <code>500,000</code> rank. And a\n            <code>High</code> severity pattern translates to a <code>250,000</code> rank. Rank\n         values less than <code>1</code> or greater than <code>1,000,000</code> are reserved for\n         Amazon Web Services provided patterns. </p>", "smithy.api#required" => {}}))
    CreateLogPatternRequest.type = Types::CreateLogPatternRequest
    CreateLogPatternResponse.add_member(:log_pattern, Smithy::Schema::Shapes::ShapeRef.new(shape: LogPattern, location_name: 'LogPattern', traits: {"smithy.api#documentation" => "<p>The successfully created log pattern.</p>"}))
    CreateLogPatternResponse.add_member(:resource_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceGroupName, location_name: 'ResourceGroupName', traits: {"smithy.api#documentation" => "<p>The name of the resource group.</p>"}))
    CreateLogPatternResponse.type = Types::CreateLogPatternResponse
    DeleteApplicationRequest.add_member(:resource_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceGroupName, location_name: 'ResourceGroupName', traits: {"smithy.api#documentation" => "<p>The name of the resource group.</p>", "smithy.api#required" => {}}))
    DeleteApplicationRequest.type = Types::DeleteApplicationRequest
    DeleteApplicationResponse.type = Types::DeleteApplicationResponse
    DeleteComponentRequest.add_member(:resource_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceGroupName, location_name: 'ResourceGroupName', traits: {"smithy.api#documentation" => "<p>The name of the resource group.</p>", "smithy.api#required" => {}}))
    DeleteComponentRequest.add_member(:component_name, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomComponentName, location_name: 'ComponentName', traits: {"smithy.api#documentation" => "<p>The name of the component.</p>", "smithy.api#required" => {}}))
    DeleteComponentRequest.type = Types::DeleteComponentRequest
    DeleteComponentResponse.type = Types::DeleteComponentResponse
    DeleteLogPatternRequest.add_member(:resource_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceGroupName, location_name: 'ResourceGroupName', traits: {"smithy.api#documentation" => "<p>The name of the resource group.</p>", "smithy.api#required" => {}}))
    DeleteLogPatternRequest.add_member(:pattern_set_name, Smithy::Schema::Shapes::ShapeRef.new(shape: LogPatternSetName, location_name: 'PatternSetName', traits: {"smithy.api#documentation" => "<p>The name of the log pattern set.</p>", "smithy.api#required" => {}}))
    DeleteLogPatternRequest.add_member(:pattern_name, Smithy::Schema::Shapes::ShapeRef.new(shape: LogPatternName, location_name: 'PatternName', traits: {"smithy.api#documentation" => "<p>The name of the log pattern.</p>", "smithy.api#required" => {}}))
    DeleteLogPatternRequest.type = Types::DeleteLogPatternRequest
    DeleteLogPatternResponse.type = Types::DeleteLogPatternResponse
    DescribeApplicationRequest.add_member(:resource_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceGroupName, location_name: 'ResourceGroupName', traits: {"smithy.api#documentation" => "<p>The name of the resource group.</p>", "smithy.api#required" => {}}))
    DescribeApplicationRequest.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID for the resource group owner.</p>"}))
    DescribeApplicationRequest.type = Types::DescribeApplicationRequest
    DescribeApplicationResponse.add_member(:application_info, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationInfo, location_name: 'ApplicationInfo', traits: {"smithy.api#documentation" => "<p>Information about the application.</p>"}))
    DescribeApplicationResponse.type = Types::DescribeApplicationResponse
    DescribeComponentConfigurationRecommendationRequest.add_member(:resource_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceGroupName, location_name: 'ResourceGroupName', traits: {"smithy.api#documentation" => "<p>The name of the resource group.</p>", "smithy.api#required" => {}}))
    DescribeComponentConfigurationRecommendationRequest.add_member(:component_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentName, location_name: 'ComponentName', traits: {"smithy.api#documentation" => "<p>The name of the component.</p>", "smithy.api#required" => {}}))
    DescribeComponentConfigurationRecommendationRequest.add_member(:tier, Smithy::Schema::Shapes::ShapeRef.new(shape: Tier, location_name: 'Tier', traits: {"smithy.api#documentation" => "<p>The tier of the application component.</p>", "smithy.api#required" => {}}))
    DescribeComponentConfigurationRecommendationRequest.add_member(:workload_name, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadName, location_name: 'WorkloadName', traits: {"smithy.api#documentation" => "<p>The name of the workload. The name of the workload is required when the tier of the application component is \n         <code>SAP_ASE_SINGLE_NODE</code> or <code>SAP_ASE_HIGH_AVAILABILITY</code>.</p>"}))
    DescribeComponentConfigurationRecommendationRequest.add_member(:recommendation_type, Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendationType, location_name: 'RecommendationType', traits: {"smithy.api#documentation" => "<p>The recommended configuration type.</p>"}))
    DescribeComponentConfigurationRecommendationRequest.type = Types::DescribeComponentConfigurationRecommendationRequest
    DescribeComponentConfigurationRecommendationResponse.add_member(:component_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentConfiguration, location_name: 'ComponentConfiguration', traits: {"smithy.api#documentation" => "<p>The recommended configuration settings of the component. The value is the escaped JSON\n         of the configuration.</p>"}))
    DescribeComponentConfigurationRecommendationResponse.type = Types::DescribeComponentConfigurationRecommendationResponse
    DescribeComponentConfigurationRequest.add_member(:resource_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceGroupName, location_name: 'ResourceGroupName', traits: {"smithy.api#documentation" => "<p>The name of the resource group.</p>", "smithy.api#required" => {}}))
    DescribeComponentConfigurationRequest.add_member(:component_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentName, location_name: 'ComponentName', traits: {"smithy.api#documentation" => "<p>The name of the component.</p>", "smithy.api#required" => {}}))
    DescribeComponentConfigurationRequest.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID for the resource group owner.</p>"}))
    DescribeComponentConfigurationRequest.type = Types::DescribeComponentConfigurationRequest
    DescribeComponentConfigurationResponse.add_member(:monitor, Smithy::Schema::Shapes::ShapeRef.new(shape: Monitor, location_name: 'Monitor', traits: {"smithy.api#documentation" => "<p>Indicates whether the application component is monitored.</p>"}))
    DescribeComponentConfigurationResponse.add_member(:tier, Smithy::Schema::Shapes::ShapeRef.new(shape: Tier, location_name: 'Tier', traits: {"smithy.api#documentation" => "<p>The tier of the application component. Supported tiers include\n         <code>DOT_NET_CORE</code>, <code>DOT_NET_WORKER</code>, <code>DOT_NET_WEB</code>,\n            <code>SQL_SERVER</code>, and <code>DEFAULT</code>\n         </p>"}))
    DescribeComponentConfigurationResponse.add_member(:component_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentConfiguration, location_name: 'ComponentConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration settings of the component. The value is the escaped JSON of the\n         configuration.</p>"}))
    DescribeComponentConfigurationResponse.type = Types::DescribeComponentConfigurationResponse
    DescribeComponentRequest.add_member(:resource_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceGroupName, location_name: 'ResourceGroupName', traits: {"smithy.api#documentation" => "<p>The name of the resource group.</p>", "smithy.api#required" => {}}))
    DescribeComponentRequest.add_member(:component_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentName, location_name: 'ComponentName', traits: {"smithy.api#documentation" => "<p>The name of the component.</p>", "smithy.api#required" => {}}))
    DescribeComponentRequest.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID for the resource group owner.</p>"}))
    DescribeComponentRequest.type = Types::DescribeComponentRequest
    DescribeComponentResponse.add_member(:application_component, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationComponent, location_name: 'ApplicationComponent'))
    DescribeComponentResponse.add_member(:resource_list, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceList, location_name: 'ResourceList', traits: {"smithy.api#documentation" => "<p>The list of resource ARNs that belong to the component.</p>"}))
    DescribeComponentResponse.type = Types::DescribeComponentResponse
    DescribeLogPatternRequest.add_member(:resource_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceGroupName, location_name: 'ResourceGroupName', traits: {"smithy.api#documentation" => "<p>The name of the resource group.</p>", "smithy.api#required" => {}}))
    DescribeLogPatternRequest.add_member(:pattern_set_name, Smithy::Schema::Shapes::ShapeRef.new(shape: LogPatternSetName, location_name: 'PatternSetName', traits: {"smithy.api#documentation" => "<p>The name of the log pattern set.</p>", "smithy.api#required" => {}}))
    DescribeLogPatternRequest.add_member(:pattern_name, Smithy::Schema::Shapes::ShapeRef.new(shape: LogPatternName, location_name: 'PatternName', traits: {"smithy.api#documentation" => "<p>The name of the log pattern.</p>", "smithy.api#required" => {}}))
    DescribeLogPatternRequest.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID for the resource group owner.</p>"}))
    DescribeLogPatternRequest.type = Types::DescribeLogPatternRequest
    DescribeLogPatternResponse.add_member(:resource_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceGroupName, location_name: 'ResourceGroupName', traits: {"smithy.api#documentation" => "<p>The name of the resource group.</p>"}))
    DescribeLogPatternResponse.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID for the resource group owner.</p>"}))
    DescribeLogPatternResponse.add_member(:log_pattern, Smithy::Schema::Shapes::ShapeRef.new(shape: LogPattern, location_name: 'LogPattern', traits: {"smithy.api#documentation" => "<p>The successfully created log pattern.</p>"}))
    DescribeLogPatternResponse.type = Types::DescribeLogPatternResponse
    DescribeObservationRequest.add_member(:observation_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ObservationId, location_name: 'ObservationId', traits: {"smithy.api#documentation" => "<p>The ID of the observation.</p>", "smithy.api#required" => {}}))
    DescribeObservationRequest.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID for the resource group owner.</p>"}))
    DescribeObservationRequest.type = Types::DescribeObservationRequest
    DescribeObservationResponse.add_member(:observation, Smithy::Schema::Shapes::ShapeRef.new(shape: Observation, location_name: 'Observation', traits: {"smithy.api#documentation" => "<p>Information about the observation.</p>"}))
    DescribeObservationResponse.type = Types::DescribeObservationResponse
    DescribeProblemObservationsRequest.add_member(:problem_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ProblemId, location_name: 'ProblemId', traits: {"smithy.api#documentation" => "<p>The ID of the problem.</p>", "smithy.api#required" => {}}))
    DescribeProblemObservationsRequest.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID for the resource group owner.</p>"}))
    DescribeProblemObservationsRequest.type = Types::DescribeProblemObservationsRequest
    DescribeProblemObservationsResponse.add_member(:related_observations, Smithy::Schema::Shapes::ShapeRef.new(shape: RelatedObservations, location_name: 'RelatedObservations', traits: {"smithy.api#documentation" => "<p>Observations related to the problem.</p>"}))
    DescribeProblemObservationsResponse.type = Types::DescribeProblemObservationsResponse
    DescribeProblemRequest.add_member(:problem_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ProblemId, location_name: 'ProblemId', traits: {"smithy.api#documentation" => "<p>The ID of the problem.</p>", "smithy.api#required" => {}}))
    DescribeProblemRequest.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID for the owner of the resource group affected by the problem.</p>"}))
    DescribeProblemRequest.type = Types::DescribeProblemRequest
    DescribeProblemResponse.add_member(:problem, Smithy::Schema::Shapes::ShapeRef.new(shape: Problem, location_name: 'Problem', traits: {"smithy.api#documentation" => "<p>Information about the problem. </p>"}))
    DescribeProblemResponse.add_member(:sns_notification_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SNSNotificationArn, location_name: 'SNSNotificationArn', traits: {"smithy.api#documentation" => "<p>\n         The SNS notification topic ARN of the problem.\n      </p>"}))
    DescribeProblemResponse.type = Types::DescribeProblemResponse
    DescribeWorkloadRequest.add_member(:resource_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceGroupName, location_name: 'ResourceGroupName', traits: {"smithy.api#documentation" => "<p>The name of the resource group.</p>", "smithy.api#required" => {}}))
    DescribeWorkloadRequest.add_member(:component_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentName, location_name: 'ComponentName', traits: {"smithy.api#documentation" => "<p>The name of the component.</p>", "smithy.api#required" => {}}))
    DescribeWorkloadRequest.add_member(:workload_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadId, location_name: 'WorkloadId', traits: {"smithy.api#documentation" => "<p>The ID of the workload.</p>", "smithy.api#required" => {}}))
    DescribeWorkloadRequest.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID for the workload owner.</p>"}))
    DescribeWorkloadRequest.type = Types::DescribeWorkloadRequest
    DescribeWorkloadResponse.add_member(:workload_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadId, location_name: 'WorkloadId', traits: {"smithy.api#documentation" => "<p>The ID of the workload.</p>"}))
    DescribeWorkloadResponse.add_member(:workload_remarks, Smithy::Schema::Shapes::ShapeRef.new(shape: Remarks, location_name: 'WorkloadRemarks', traits: {"smithy.api#documentation" => "<p>If logging is supported for the resource type, shows whether the component has configured logs to be monitored.</p>"}))
    DescribeWorkloadResponse.add_member(:workload_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadConfiguration, location_name: 'WorkloadConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration settings of the workload. The value is the escaped JSON of the configuration.</p>"}))
    DescribeWorkloadResponse.type = Types::DescribeWorkloadResponse
    DetectedWorkload.key = Smithy::Schema::Shapes::ShapeRef.new(shape: Tier)
    DetectedWorkload.value = Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadMetaData)
    DiscoveryType.add_member(:resource_group_based, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESOURCE_GROUP_BASED', traits: {"smithy.api#enumValue" => "RESOURCE_GROUP_BASED"}))
    DiscoveryType.add_member(:account_based, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCOUNT_BASED', traits: {"smithy.api#enumValue" => "ACCOUNT_BASED"}))
    Feedback.key = Smithy::Schema::Shapes::ShapeRef.new(shape: FeedbackKey)
    Feedback.value = Smithy::Schema::Shapes::ShapeRef.new(shape: FeedbackValue)
    FeedbackKey.add_member(:insights_feedback, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INSIGHTS_FEEDBACK', traits: {"smithy.api#enumValue" => "INSIGHTS_FEEDBACK"}))
    FeedbackValue.add_member(:not_specified, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOT_SPECIFIED', traits: {"smithy.api#enumValue" => "NOT_SPECIFIED"}))
    FeedbackValue.add_member(:useful, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'USEFUL', traits: {"smithy.api#enumValue" => "USEFUL"}))
    FeedbackValue.add_member(:not_useful, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOT_USEFUL', traits: {"smithy.api#enumValue" => "NOT_USEFUL"}))
    GroupingType.add_member(:account_based, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCOUNT_BASED', traits: {"smithy.api#enumValue" => "ACCOUNT_BASED"}))
    InternalServerException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMsg, location_name: 'Message'))
    InternalServerException.type = Types::InternalServerException
    ListApplicationsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxEntities, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return in a single call. To retrieve the remaining\n         results, make another call with the returned <code>NextToken</code> value.</p>"}))
    ListApplicationsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token to request the next page of results.</p>"}))
    ListApplicationsRequest.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID for the resource group owner.</p>"}))
    ListApplicationsRequest.type = Types::ListApplicationsRequest
    ListApplicationsResponse.add_member(:application_info_list, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationInfoList, location_name: 'ApplicationInfoList', traits: {"smithy.api#documentation" => "<p>The list of applications.</p>"}))
    ListApplicationsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token used to retrieve the next page of results. This value is <code>null</code>\n         when there are no more results to return. </p>"}))
    ListApplicationsResponse.type = Types::ListApplicationsResponse
    ListComponentsRequest.add_member(:resource_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceGroupName, location_name: 'ResourceGroupName', traits: {"smithy.api#documentation" => "<p>The name of the resource group.</p>", "smithy.api#required" => {}}))
    ListComponentsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxEntities, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return in a single call. To retrieve the remaining\n         results, make another call with the returned <code>NextToken</code> value.</p>"}))
    ListComponentsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token to request the next page of results.</p>"}))
    ListComponentsRequest.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID for the resource group owner.</p>"}))
    ListComponentsRequest.type = Types::ListComponentsRequest
    ListComponentsResponse.add_member(:application_component_list, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationComponentList, location_name: 'ApplicationComponentList', traits: {"smithy.api#documentation" => "<p>The list of application components.</p>"}))
    ListComponentsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token to request the next page of results.</p>"}))
    ListComponentsResponse.type = Types::ListComponentsResponse
    ListConfigurationHistoryRequest.add_member(:resource_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceGroupName, location_name: 'ResourceGroupName', traits: {"smithy.api#documentation" => "<p>Resource group to which the application belongs. </p>"}))
    ListConfigurationHistoryRequest.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: StartTime, location_name: 'StartTime', traits: {"smithy.api#documentation" => "<p>The start time of the event. </p>"}))
    ListConfigurationHistoryRequest.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: EndTime, location_name: 'EndTime', traits: {"smithy.api#documentation" => "<p>The end time of the event.</p>"}))
    ListConfigurationHistoryRequest.add_member(:event_status, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationEventStatus, location_name: 'EventStatus', traits: {"smithy.api#documentation" => "<p>The status of the configuration update event. Possible values include INFO, WARN, and\n         ERROR.</p>"}))
    ListConfigurationHistoryRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxEntities, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p> The maximum number of results returned by <code>ListConfigurationHistory</code> in\n         paginated output. When this parameter is used, <code>ListConfigurationHistory</code>\n         returns only <code>MaxResults</code> in a single page along with a <code>NextToken</code>\n         response element. The remaining results of the initial request can be seen by sending\n         another <code>ListConfigurationHistory</code> request with the returned\n            <code>NextToken</code> value. If this parameter is not used, then\n            <code>ListConfigurationHistory</code> returns all results. </p>"}))
    ListConfigurationHistoryRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The <code>NextToken</code> value returned from a previous paginated\n            <code>ListConfigurationHistory</code> request where <code>MaxResults</code> was used and\n         the results exceeded the value of that parameter. Pagination continues from the end of the\n         previous results that returned the <code>NextToken</code> value. This value is\n            <code>null</code> when there are no more results to return.</p>"}))
    ListConfigurationHistoryRequest.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID for the resource group owner.</p>"}))
    ListConfigurationHistoryRequest.type = Types::ListConfigurationHistoryRequest
    ListConfigurationHistoryResponse.add_member(:event_list, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationEventList, location_name: 'EventList', traits: {"smithy.api#documentation" => "<p> The list of configuration events and their corresponding details. </p>"}))
    ListConfigurationHistoryResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The <code>NextToken</code> value to include in a future\n            <code>ListConfigurationHistory</code> request. When the results of a\n            <code>ListConfigurationHistory</code> request exceed <code>MaxResults</code>, this value\n         can be used to retrieve the next page of results. This value is <code>null</code> when\n         there are no more results to return.</p>"}))
    ListConfigurationHistoryResponse.type = Types::ListConfigurationHistoryResponse
    ListLogPatternSetsRequest.add_member(:resource_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceGroupName, location_name: 'ResourceGroupName', traits: {"smithy.api#documentation" => "<p>The name of the resource group.</p>", "smithy.api#required" => {}}))
    ListLogPatternSetsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxEntities, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return in a single call. To retrieve the remaining\n         results, make another call with the returned <code>NextToken</code> value.</p>"}))
    ListLogPatternSetsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token to request the next page of results.</p>"}))
    ListLogPatternSetsRequest.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID for the resource group owner.</p>"}))
    ListLogPatternSetsRequest.type = Types::ListLogPatternSetsRequest
    ListLogPatternSetsResponse.add_member(:resource_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceGroupName, location_name: 'ResourceGroupName', traits: {"smithy.api#documentation" => "<p>The name of the resource group.</p>"}))
    ListLogPatternSetsResponse.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID for the resource group owner.</p>"}))
    ListLogPatternSetsResponse.add_member(:log_pattern_sets, Smithy::Schema::Shapes::ShapeRef.new(shape: LogPatternSetList, location_name: 'LogPatternSets', traits: {"smithy.api#documentation" => "<p>The list of log pattern sets.</p>"}))
    ListLogPatternSetsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token used to retrieve the next page of results. This value is <code>null</code>\n         when there are no more results to return. </p>"}))
    ListLogPatternSetsResponse.type = Types::ListLogPatternSetsResponse
    ListLogPatternsRequest.add_member(:resource_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceGroupName, location_name: 'ResourceGroupName', traits: {"smithy.api#documentation" => "<p>The name of the resource group.</p>", "smithy.api#required" => {}}))
    ListLogPatternsRequest.add_member(:pattern_set_name, Smithy::Schema::Shapes::ShapeRef.new(shape: LogPatternSetName, location_name: 'PatternSetName', traits: {"smithy.api#documentation" => "<p>The name of the log pattern set.</p>"}))
    ListLogPatternsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxEntities, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return in a single call. To retrieve the remaining\n         results, make another call with the returned <code>NextToken</code> value.</p>"}))
    ListLogPatternsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token to request the next page of results.</p>"}))
    ListLogPatternsRequest.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID for the resource group owner.</p>"}))
    ListLogPatternsRequest.type = Types::ListLogPatternsRequest
    ListLogPatternsResponse.add_member(:resource_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceGroupName, location_name: 'ResourceGroupName', traits: {"smithy.api#documentation" => "<p>The name of the resource group.</p>"}))
    ListLogPatternsResponse.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID for the resource group owner.</p>"}))
    ListLogPatternsResponse.add_member(:log_patterns, Smithy::Schema::Shapes::ShapeRef.new(shape: LogPatternList, location_name: 'LogPatterns', traits: {"smithy.api#documentation" => "<p>The list of log patterns.</p>"}))
    ListLogPatternsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token used to retrieve the next page of results. This value is <code>null</code>\n         when there are no more results to return. </p>"}))
    ListLogPatternsResponse.type = Types::ListLogPatternsResponse
    ListProblemsRequest.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID for the resource group owner.</p>"}))
    ListProblemsRequest.add_member(:resource_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceGroupName, location_name: 'ResourceGroupName', traits: {"smithy.api#documentation" => "<p>The name of the resource group.</p>"}))
    ListProblemsRequest.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: StartTime, location_name: 'StartTime', traits: {"smithy.api#documentation" => "<p>The time when the problem was detected, in epoch seconds. If you don't specify a time\n         frame for the request, problems within the past seven days are returned.</p>"}))
    ListProblemsRequest.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: EndTime, location_name: 'EndTime', traits: {"smithy.api#documentation" => "<p>The time when the problem ended, in epoch seconds. If not specified, problems within the\n         past seven days are returned.</p>"}))
    ListProblemsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxEntities, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return in a single call. To retrieve the remaining\n         results, make another call with the returned <code>NextToken</code> value.</p>"}))
    ListProblemsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token to request the next page of results.</p>"}))
    ListProblemsRequest.add_member(:component_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentName, location_name: 'ComponentName', traits: {"smithy.api#documentation" => "<p> The name of the component. </p>"}))
    ListProblemsRequest.add_member(:visibility, Smithy::Schema::Shapes::ShapeRef.new(shape: Visibility, location_name: 'Visibility', traits: {"smithy.api#documentation" => "<p>Specifies whether or not you can view the problem. If not specified, visible and\n         ignored problems are returned.</p>"}))
    ListProblemsRequest.type = Types::ListProblemsRequest
    ListProblemsResponse.add_member(:problem_list, Smithy::Schema::Shapes::ShapeRef.new(shape: ProblemList, location_name: 'ProblemList', traits: {"smithy.api#documentation" => "<p>The list of problems. </p>"}))
    ListProblemsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token used to retrieve the next page of results. This value is <code>null</code>\n         when there are no more results to return. </p>"}))
    ListProblemsResponse.add_member(:resource_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceGroupName, location_name: 'ResourceGroupName', traits: {"smithy.api#documentation" => "<p> The name of the resource group. </p>"}))
    ListProblemsResponse.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID for the resource group owner.</p>"}))
    ListProblemsResponse.type = Types::ListProblemsResponse
    ListTagsForResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'ResourceARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the application that you want to retrieve tag\n         information for.</p>", "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>An array that lists all the tags that are associated with the application. Each tag\n         consists of a required tag key (<code>Key</code>) and an associated tag value\n            (<code>Value</code>).</p>"}))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ListWorkloadsRequest.add_member(:resource_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceGroupName, location_name: 'ResourceGroupName', traits: {"smithy.api#documentation" => "<p>The name of the resource group.</p>", "smithy.api#required" => {}}))
    ListWorkloadsRequest.add_member(:component_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentName, location_name: 'ComponentName', traits: {"smithy.api#documentation" => "<p>The name of the component.</p>", "smithy.api#required" => {}}))
    ListWorkloadsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxEntities, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return in a single call. To retrieve the remaining\n      results, make another call with the returned <code>NextToken</code> value.</p>"}))
    ListWorkloadsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token to request the next page of results.</p>"}))
    ListWorkloadsRequest.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID of the owner of the workload.</p>"}))
    ListWorkloadsRequest.type = Types::ListWorkloadsRequest
    ListWorkloadsResponse.add_member(:workload_list, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadList, location_name: 'WorkloadList', traits: {"smithy.api#documentation" => "<p>The list of workloads.</p>"}))
    ListWorkloadsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token to request the next page of results.</p>"}))
    ListWorkloadsResponse.type = Types::ListWorkloadsResponse
    LogFilter.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ERROR', traits: {"smithy.api#enumValue" => "ERROR"}))
    LogFilter.add_member(:warn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WARN', traits: {"smithy.api#enumValue" => "WARN"}))
    LogFilter.add_member(:info, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INFO', traits: {"smithy.api#enumValue" => "INFO"}))
    LogPattern.add_member(:pattern_set_name, Smithy::Schema::Shapes::ShapeRef.new(shape: LogPatternSetName, location_name: 'PatternSetName', traits: {"smithy.api#documentation" => "<p>The name of the log pattern. A log pattern name can contain as many as 30 characters,\n         and it cannot be empty. The characters can be Unicode letters, digits, or one of the\n         following symbols: period, dash, underscore.</p>"}))
    LogPattern.add_member(:pattern_name, Smithy::Schema::Shapes::ShapeRef.new(shape: LogPatternName, location_name: 'PatternName', traits: {"smithy.api#documentation" => "<p>The name of the log pattern. A log pattern name can contain as many as 50 characters,\n         and it cannot be empty. The characters can be Unicode letters, digits, or one of the\n         following symbols: period, dash, underscore.</p>"}))
    LogPattern.add_member(:pattern, Smithy::Schema::Shapes::ShapeRef.new(shape: LogPatternRegex, location_name: 'Pattern', traits: {"smithy.api#documentation" => "<p>A regular expression that defines the log pattern. A log pattern can contain as many as\n         50 characters, and it cannot be empty. The pattern must be DFA compatible. Patterns that\n         utilize forward lookahead or backreference constructions are not supported.</p>"}))
    LogPattern.add_member(:rank, Smithy::Schema::Shapes::ShapeRef.new(shape: LogPatternRank, location_name: 'Rank', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Rank of the log pattern. Must be a value between <code>1</code> and\n            <code>1,000,000</code>. The patterns are sorted by rank, so we recommend that you set\n         your highest priority patterns with the lowest rank. A pattern of rank <code>1</code> will\n         be the first to get matched to a log line. A pattern of rank <code>1,000,000</code> will be\n         last to get matched. When you configure custom log patterns from the console, a\n            <code>Low</code> severity pattern translates to a <code>750,000</code> rank. A\n            <code>Medium</code> severity pattern translates to a <code>500,000</code> rank. And a\n            <code>High</code> severity pattern translates to a <code>250,000</code> rank. Rank\n         values less than <code>1</code> or greater than <code>1,000,000</code> are reserved for\n         Amazon Web Services provided patterns. </p>"}))
    LogPattern.type = Types::LogPattern
    LogPatternList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LogPattern)
    LogPatternSetList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LogPatternSetName)
    Observation.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ObservationId, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The ID of the observation type.</p>"}))
    Observation.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: StartTime, location_name: 'StartTime', traits: {"smithy.api#documentation" => "<p>The time when the observation was first detected, in epoch seconds.</p>"}))
    Observation.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: EndTime, location_name: 'EndTime', traits: {"smithy.api#documentation" => "<p>The time when the observation ended, in epoch seconds.</p>"}))
    Observation.add_member(:source_type, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceType, location_name: 'SourceType', traits: {"smithy.api#documentation" => "<p>The source type of the observation.</p>"}))
    Observation.add_member(:source_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceARN, location_name: 'SourceARN', traits: {"smithy.api#documentation" => "<p>The source resource ARN of the observation.</p>"}))
    Observation.add_member(:log_group, Smithy::Schema::Shapes::ShapeRef.new(shape: LogGroup, location_name: 'LogGroup', traits: {"smithy.api#documentation" => "<p>The log group name.</p>"}))
    Observation.add_member(:line_time, Smithy::Schema::Shapes::ShapeRef.new(shape: LineTime, location_name: 'LineTime', traits: {"smithy.api#documentation" => "<p>The timestamp in the CloudWatch Logs that specifies when the matched line\n         occurred.</p>"}))
    Observation.add_member(:log_text, Smithy::Schema::Shapes::ShapeRef.new(shape: LogText, location_name: 'LogText', traits: {"smithy.api#documentation" => "<p>The log text of the observation.</p>"}))
    Observation.add_member(:log_filter, Smithy::Schema::Shapes::ShapeRef.new(shape: LogFilter, location_name: 'LogFilter', traits: {"smithy.api#documentation" => "<p>The log filter of the observation.</p>"}))
    Observation.add_member(:metric_namespace, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricNamespace, location_name: 'MetricNamespace', traits: {"smithy.api#documentation" => "<p>The namespace of the observation metric.</p>"}))
    Observation.add_member(:metric_name, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricName, location_name: 'MetricName', traits: {"smithy.api#documentation" => "<p>The name of the observation metric.</p>"}))
    Observation.add_member(:unit, Smithy::Schema::Shapes::ShapeRef.new(shape: Unit, location_name: 'Unit', traits: {"smithy.api#documentation" => "<p>The unit of the source observation metric.</p>"}))
    Observation.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: Value, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>The value of the source observation metric.</p>"}))
    Observation.add_member(:cloud_watch_event_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchEventId, location_name: 'CloudWatchEventId', traits: {"smithy.api#documentation" => "<p> The ID of the CloudWatch Event-based observation related to the detected problem.\n      </p>"}))
    Observation.add_member(:cloud_watch_event_source, Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchEventSource, location_name: 'CloudWatchEventSource', traits: {"smithy.api#documentation" => "<p> The source of the CloudWatch Event. </p>"}))
    Observation.add_member(:cloud_watch_event_detail_type, Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchEventDetailType, location_name: 'CloudWatchEventDetailType', traits: {"smithy.api#documentation" => "<p> The detail type of the CloudWatch Event-based observation, for example, <code>EC2\n            Instance State-change Notification</code>. </p>"}))
    Observation.add_member(:health_event_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: HealthEventArn, location_name: 'HealthEventArn', traits: {"smithy.api#documentation" => "<p> The Amazon Resource Name (ARN) of the Health Event-based observation.</p>"}))
    Observation.add_member(:health_service, Smithy::Schema::Shapes::ShapeRef.new(shape: HealthService, location_name: 'HealthService', traits: {"smithy.api#documentation" => "<p> The service to which the Health Event belongs, such as EC2. </p>"}))
    Observation.add_member(:health_event_type_code, Smithy::Schema::Shapes::ShapeRef.new(shape: HealthEventTypeCode, location_name: 'HealthEventTypeCode', traits: {"smithy.api#documentation" => "<p> The type of the Health event, for example,\n            <code>AWS_EC2_POWER_CONNECTIVITY_ISSUE</code>. </p>"}))
    Observation.add_member(:health_event_type_category, Smithy::Schema::Shapes::ShapeRef.new(shape: HealthEventTypeCategory, location_name: 'HealthEventTypeCategory', traits: {"smithy.api#documentation" => "<p> The category of the Health event, such as <code>issue</code>. </p>"}))
    Observation.add_member(:health_event_description, Smithy::Schema::Shapes::ShapeRef.new(shape: HealthEventDescription, location_name: 'HealthEventDescription', traits: {"smithy.api#documentation" => "<p> The description of the Health event provided by the service, such as Amazon EC2.\n      </p>"}))
    Observation.add_member(:code_deploy_deployment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CodeDeployDeploymentId, location_name: 'CodeDeployDeploymentId', traits: {"smithy.api#documentation" => "<p> The deployment ID of the CodeDeploy-based observation related to the detected problem.\n      </p>"}))
    Observation.add_member(:code_deploy_deployment_group, Smithy::Schema::Shapes::ShapeRef.new(shape: CodeDeployDeploymentGroup, location_name: 'CodeDeployDeploymentGroup', traits: {"smithy.api#documentation" => "<p> The deployment group to which the CodeDeploy deployment belongs. </p>"}))
    Observation.add_member(:code_deploy_state, Smithy::Schema::Shapes::ShapeRef.new(shape: CodeDeployState, location_name: 'CodeDeployState', traits: {"smithy.api#documentation" => "<p> The status of the CodeDeploy deployment, for example <code>SUCCESS</code> or <code>\n            FAILURE</code>. </p>"}))
    Observation.add_member(:code_deploy_application, Smithy::Schema::Shapes::ShapeRef.new(shape: CodeDeployApplication, location_name: 'CodeDeployApplication', traits: {"smithy.api#documentation" => "<p> The CodeDeploy application to which the deployment belongs. </p>"}))
    Observation.add_member(:code_deploy_instance_group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CodeDeployInstanceGroupId, location_name: 'CodeDeployInstanceGroupId', traits: {"smithy.api#documentation" => "<p> The instance group to which the CodeDeploy instance belongs. </p>"}))
    Observation.add_member(:ec2_state, Smithy::Schema::Shapes::ShapeRef.new(shape: Ec2State, location_name: 'Ec2State', traits: {"smithy.api#documentation" => "<p> The state of the instance, such as <code>STOPPING</code> or <code>TERMINATING</code>.\n      </p>"}))
    Observation.add_member(:rds_event_categories, Smithy::Schema::Shapes::ShapeRef.new(shape: RdsEventCategories, location_name: 'RdsEventCategories', traits: {"smithy.api#documentation" => "<p> The category of an RDS event. </p>"}))
    Observation.add_member(:rds_event_message, Smithy::Schema::Shapes::ShapeRef.new(shape: RdsEventMessage, location_name: 'RdsEventMessage', traits: {"smithy.api#documentation" => "<p> The message of an RDS event. </p>"}))
    Observation.add_member(:s3_event_name, Smithy::Schema::Shapes::ShapeRef.new(shape: S3EventName, location_name: 'S3EventName', traits: {"smithy.api#documentation" => "<p> The name of the S3 CloudWatch Event-based observation. </p>"}))
    Observation.add_member(:states_execution_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: StatesExecutionArn, location_name: 'StatesExecutionArn', traits: {"smithy.api#documentation" => "<p> The Amazon Resource Name (ARN) of the step function execution-based observation.\n      </p>"}))
    Observation.add_member(:states_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: StatesArn, location_name: 'StatesArn', traits: {"smithy.api#documentation" => "<p> The Amazon Resource Name (ARN) of the step function-based observation. </p>"}))
    Observation.add_member(:states_status, Smithy::Schema::Shapes::ShapeRef.new(shape: StatesStatus, location_name: 'StatesStatus', traits: {"smithy.api#documentation" => "<p> The status of the step function-related observation. </p>"}))
    Observation.add_member(:states_input, Smithy::Schema::Shapes::ShapeRef.new(shape: StatesInput, location_name: 'StatesInput', traits: {"smithy.api#documentation" => "<p> The input to the step function-based observation. </p>"}))
    Observation.add_member(:ebs_event, Smithy::Schema::Shapes::ShapeRef.new(shape: EbsEvent, location_name: 'EbsEvent', traits: {"smithy.api#documentation" => "<p> The type of EBS CloudWatch event, such as <code>createVolume</code>,\n            <code>deleteVolume</code> or <code>attachVolume</code>. </p>"}))
    Observation.add_member(:ebs_result, Smithy::Schema::Shapes::ShapeRef.new(shape: EbsResult, location_name: 'EbsResult', traits: {"smithy.api#documentation" => "<p> The result of an EBS CloudWatch event, such as <code>failed</code> or\n            <code>succeeded</code>. </p>"}))
    Observation.add_member(:ebs_cause, Smithy::Schema::Shapes::ShapeRef.new(shape: EbsCause, location_name: 'EbsCause', traits: {"smithy.api#documentation" => "<p> The cause of an EBS CloudWatch event. </p>"}))
    Observation.add_member(:ebs_request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EbsRequestId, location_name: 'EbsRequestId', traits: {"smithy.api#documentation" => "<p> The request ID of an EBS CloudWatch event. </p>"}))
    Observation.add_member(:x_ray_fault_percent, Smithy::Schema::Shapes::ShapeRef.new(shape: XRayFaultPercent, location_name: 'XRayFaultPercent', traits: {"smithy.api#documentation" => "<p> The X-Ray request fault percentage for this node. </p>"}))
    Observation.add_member(:x_ray_throttle_percent, Smithy::Schema::Shapes::ShapeRef.new(shape: XRayThrottlePercent, location_name: 'XRayThrottlePercent', traits: {"smithy.api#documentation" => "<p> The X-Ray request throttle percentage for this node. </p>"}))
    Observation.add_member(:x_ray_error_percent, Smithy::Schema::Shapes::ShapeRef.new(shape: XRayErrorPercent, location_name: 'XRayErrorPercent', traits: {"smithy.api#documentation" => "<p> The X-Ray request error percentage for this node. </p>"}))
    Observation.add_member(:x_ray_request_count, Smithy::Schema::Shapes::ShapeRef.new(shape: XRayRequestCount, location_name: 'XRayRequestCount', traits: {"smithy.api#documentation" => "<p> The X-Ray request count for this node. </p>"}))
    Observation.add_member(:x_ray_request_average_latency, Smithy::Schema::Shapes::ShapeRef.new(shape: XRayRequestAverageLatency, location_name: 'XRayRequestAverageLatency', traits: {"smithy.api#documentation" => "<p> The X-Ray node request average latency for this node. </p>"}))
    Observation.add_member(:x_ray_node_name, Smithy::Schema::Shapes::ShapeRef.new(shape: XRayNodeName, location_name: 'XRayNodeName', traits: {"smithy.api#documentation" => "<p> The name of the X-Ray node. </p>"}))
    Observation.add_member(:x_ray_node_type, Smithy::Schema::Shapes::ShapeRef.new(shape: XRayNodeType, location_name: 'XRayNodeType', traits: {"smithy.api#documentation" => "<p> The type of the X-Ray node. </p>"}))
    Observation.type = Types::Observation
    ObservationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Observation)
    OsType.add_member(:windows, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WINDOWS', traits: {"smithy.api#enumValue" => "WINDOWS"}))
    OsType.add_member(:linux, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LINUX', traits: {"smithy.api#enumValue" => "LINUX"}))
    Problem.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ProblemId, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The ID of the problem.</p>"}))
    Problem.add_member(:title, Smithy::Schema::Shapes::ShapeRef.new(shape: Title, location_name: 'Title', traits: {"smithy.api#documentation" => "<p>The name of the problem.</p>"}))
    Problem.add_member(:short_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ShortName, location_name: 'ShortName', traits: {"smithy.api#documentation" => "<p>\n         The short name of the problem associated with the SNS notification.\n      </p>"}))
    Problem.add_member(:insights, Smithy::Schema::Shapes::ShapeRef.new(shape: Insights, location_name: 'Insights', traits: {"smithy.api#documentation" => "<p>A detailed analysis of the problem using machine learning.</p>"}))
    Problem.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the problem.</p>"}))
    Problem.add_member(:affected_resource, Smithy::Schema::Shapes::ShapeRef.new(shape: AffectedResource, location_name: 'AffectedResource', traits: {"smithy.api#documentation" => "<p>The resource affected by the problem.</p>"}))
    Problem.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: StartTime, location_name: 'StartTime', traits: {"smithy.api#documentation" => "<p>The time when the problem started, in epoch seconds.</p>"}))
    Problem.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: EndTime, location_name: 'EndTime', traits: {"smithy.api#documentation" => "<p>The time when the problem ended, in epoch seconds.</p>"}))
    Problem.add_member(:severity_level, Smithy::Schema::Shapes::ShapeRef.new(shape: SeverityLevel, location_name: 'SeverityLevel', traits: {"smithy.api#documentation" => "<p>A measure of the level of impact of the problem.</p>"}))
    Problem.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID for the owner of the resource group affected by the problem.</p>"}))
    Problem.add_member(:resource_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceGroupName, location_name: 'ResourceGroupName', traits: {"smithy.api#documentation" => "<p>The name of the resource group affected by the problem.</p>"}))
    Problem.add_member(:feedback, Smithy::Schema::Shapes::ShapeRef.new(shape: Feedback, location_name: 'Feedback', traits: {"smithy.api#documentation" => "<p>Feedback provided by the user about the problem.</p>"}))
    Problem.add_member(:recurring_count, Smithy::Schema::Shapes::ShapeRef.new(shape: RecurringCount, location_name: 'RecurringCount', traits: {"smithy.api#documentation" => "<p> The number of times that the same problem reoccurred after the first time it was\n         resolved. </p>"}))
    Problem.add_member(:last_recurrence_time, Smithy::Schema::Shapes::ShapeRef.new(shape: LastRecurrenceTime, location_name: 'LastRecurrenceTime', traits: {"smithy.api#documentation" => "<p> The last time that the problem reoccurred after its last resolution. </p>"}))
    Problem.add_member(:visibility, Smithy::Schema::Shapes::ShapeRef.new(shape: Visibility, location_name: 'Visibility', traits: {"smithy.api#documentation" => "<p>Specifies whether or not you can view the problem. Updates to ignored problems do not\n         generate notifications.</p>"}))
    Problem.add_member(:resolution_method, Smithy::Schema::Shapes::ShapeRef.new(shape: ResolutionMethod, location_name: 'ResolutionMethod', traits: {"smithy.api#documentation" => "<p>Specifies how the problem was resolved. If the value is <code>AUTOMATIC</code>, the\n         system resolved the problem. If the value is <code>MANUAL</code>, the user resolved the\n         problem. If the value is <code>UNRESOLVED</code>, then the problem is not resolved.</p>"}))
    Problem.type = Types::Problem
    ProblemList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Problem)
    RecommendationType.add_member(:infra_only, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INFRA_ONLY', traits: {"smithy.api#enumValue" => "INFRA_ONLY"}))
    RecommendationType.add_member(:workload_only, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WORKLOAD_ONLY', traits: {"smithy.api#enumValue" => "WORKLOAD_ONLY"}))
    RecommendationType.add_member(:all, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALL', traits: {"smithy.api#enumValue" => "ALL"}))
    RelatedObservations.add_member(:observation_list, Smithy::Schema::Shapes::ShapeRef.new(shape: ObservationList, location_name: 'ObservationList', traits: {"smithy.api#documentation" => "<p>The list of observations related to the problem.</p>"}))
    RelatedObservations.type = Types::RelatedObservations
    RemoveWorkloadRequest.add_member(:resource_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceGroupName, location_name: 'ResourceGroupName', traits: {"smithy.api#documentation" => "<p>The name of the resource group.</p>", "smithy.api#required" => {}}))
    RemoveWorkloadRequest.add_member(:component_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentName, location_name: 'ComponentName', traits: {"smithy.api#documentation" => "<p>The name of the component.</p>", "smithy.api#required" => {}}))
    RemoveWorkloadRequest.add_member(:workload_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadId, location_name: 'WorkloadId', traits: {"smithy.api#documentation" => "<p>The ID of the workload.</p>", "smithy.api#required" => {}}))
    RemoveWorkloadRequest.type = Types::RemoveWorkloadRequest
    RemoveWorkloadResponse.type = Types::RemoveWorkloadResponse
    ResolutionMethod.add_member(:manual, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MANUAL', traits: {"smithy.api#enumValue" => "MANUAL"}))
    ResolutionMethod.add_member(:automatic, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AUTOMATIC', traits: {"smithy.api#enumValue" => "AUTOMATIC"}))
    ResolutionMethod.add_member(:unresolved, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNRESOLVED', traits: {"smithy.api#enumValue" => "UNRESOLVED"}))
    ResourceInUseException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMsg, location_name: 'Message'))
    ResourceInUseException.type = Types::ResourceInUseException
    ResourceList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN)
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMsg, location_name: 'Message'))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    SeverityLevel.add_member(:informative, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Informative', traits: {"smithy.api#enumValue" => "Informative"}))
    SeverityLevel.add_member(:low, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Low', traits: {"smithy.api#enumValue" => "Low"}))
    SeverityLevel.add_member(:medium, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Medium', traits: {"smithy.api#enumValue" => "Medium"}))
    SeverityLevel.add_member(:high, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'High', traits: {"smithy.api#enumValue" => "High"}))
    Status.add_member(:ignore, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IGNORE', traits: {"smithy.api#enumValue" => "IGNORE"}))
    Status.add_member(:resolved, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESOLVED', traits: {"smithy.api#enumValue" => "RESOLVED"}))
    Status.add_member(:pending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "PENDING"}))
    Status.add_member(:recurring, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RECURRING', traits: {"smithy.api#enumValue" => "RECURRING"}))
    Status.add_member(:recovering, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RECOVERING', traits: {"smithy.api#enumValue" => "RECOVERING"}))
    Tag.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'Key', traits: {"smithy.api#documentation" => "<p>One part of a key-value pair that defines a tag. The maximum length of a tag key is 128\n         characters. The minimum length is 1 character.</p>", "smithy.api#required" => {}}))
    Tag.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>The optional part of a key-value pair that defines a tag. The maximum length of a tag\n         value is 256 characters. The minimum length is 0 characters. If you don't want an\n         application to have a specific tag value, don't specify a value for this parameter.</p>", "smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    TagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'ResourceARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the application that you want to add one or more tags\n         to.</p>", "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A list of tags that to add to the application. A tag consists of a required tag key\n            (<code>Key</code>) and an associated tag value (<code>Value</code>). The maximum length\n         of a tag key is 128 characters. The maximum length of a tag value is 256 characters.</p>", "smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    TagsAlreadyExistException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    TagsAlreadyExistException.type = Types::TagsAlreadyExistException
    Tier.add_member(:custom, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CUSTOM', traits: {"smithy.api#enumValue" => "CUSTOM"}))
    Tier.add_member(:default, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEFAULT', traits: {"smithy.api#enumValue" => "DEFAULT"}))
    Tier.add_member(:dot_net_core, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DOT_NET_CORE', traits: {"smithy.api#enumValue" => "DOT_NET_CORE"}))
    Tier.add_member(:dot_net_worker, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DOT_NET_WORKER', traits: {"smithy.api#enumValue" => "DOT_NET_WORKER"}))
    Tier.add_member(:dot_net_web_tier, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DOT_NET_WEB_TIER', traits: {"smithy.api#enumValue" => "DOT_NET_WEB_TIER"}))
    Tier.add_member(:dot_net_web, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DOT_NET_WEB', traits: {"smithy.api#enumValue" => "DOT_NET_WEB"}))
    Tier.add_member(:sql_server, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SQL_SERVER', traits: {"smithy.api#enumValue" => "SQL_SERVER"}))
    Tier.add_member(:sql_server_alwayson_availability_group, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SQL_SERVER_ALWAYSON_AVAILABILITY_GROUP', traits: {"smithy.api#enumValue" => "SQL_SERVER_ALWAYSON_AVAILABILITY_GROUP"}))
    Tier.add_member(:mysql, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MYSQL', traits: {"smithy.api#enumValue" => "MYSQL"}))
    Tier.add_member(:postgresql, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'POSTGRESQL', traits: {"smithy.api#enumValue" => "POSTGRESQL"}))
    Tier.add_member(:java_jmx, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'JAVA_JMX', traits: {"smithy.api#enumValue" => "JAVA_JMX"}))
    Tier.add_member(:oracle, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ORACLE', traits: {"smithy.api#enumValue" => "ORACLE"}))
    Tier.add_member(:sap_hana_multi_node, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SAP_HANA_MULTI_NODE', traits: {"smithy.api#enumValue" => "SAP_HANA_MULTI_NODE"}))
    Tier.add_member(:sap_hana_single_node, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SAP_HANA_SINGLE_NODE', traits: {"smithy.api#enumValue" => "SAP_HANA_SINGLE_NODE"}))
    Tier.add_member(:sap_hana_high_availability, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SAP_HANA_HIGH_AVAILABILITY', traits: {"smithy.api#enumValue" => "SAP_HANA_HIGH_AVAILABILITY"}))
    Tier.add_member(:sap_ase_single_node, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SAP_ASE_SINGLE_NODE', traits: {"smithy.api#enumValue" => "SAP_ASE_SINGLE_NODE"}))
    Tier.add_member(:sap_ase_high_availability, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SAP_ASE_HIGH_AVAILABILITY', traits: {"smithy.api#enumValue" => "SAP_ASE_HIGH_AVAILABILITY"}))
    Tier.add_member(:sql_server_failover_cluster_instance, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SQL_SERVER_FAILOVER_CLUSTER_INSTANCE', traits: {"smithy.api#enumValue" => "SQL_SERVER_FAILOVER_CLUSTER_INSTANCE"}))
    Tier.add_member(:sharepoint, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SHAREPOINT', traits: {"smithy.api#enumValue" => "SHAREPOINT"}))
    Tier.add_member(:active_directory, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE_DIRECTORY', traits: {"smithy.api#enumValue" => "ACTIVE_DIRECTORY"}))
    Tier.add_member(:sap_netweaver_standard, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SAP_NETWEAVER_STANDARD', traits: {"smithy.api#enumValue" => "SAP_NETWEAVER_STANDARD"}))
    Tier.add_member(:sap_netweaver_distributed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SAP_NETWEAVER_DISTRIBUTED', traits: {"smithy.api#enumValue" => "SAP_NETWEAVER_DISTRIBUTED"}))
    Tier.add_member(:sap_netweaver_high_availability, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SAP_NETWEAVER_HIGH_AVAILABILITY', traits: {"smithy.api#enumValue" => "SAP_NETWEAVER_HIGH_AVAILABILITY"}))
    TooManyTagsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    TooManyTagsException.add_member(:resource_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'ResourceName', traits: {"smithy.api#documentation" => "<p>The name of the resource with too many tags.</p>"}))
    TooManyTagsException.type = Types::TooManyTagsException
    UntagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'ResourceARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the application that you want to remove one or more\n         tags from.</p>", "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'TagKeys', traits: {"smithy.api#documentation" => "<p>The tags (tag keys) that you want to remove from the resource. When you specify a tag\n         key, the action removes both that key and its associated tag value.</p>\n         <p>To remove more than one tag from the application, append the <code>TagKeys</code>\n         parameter and argument for each additional tag to remove, separated by an ampersand.\n      </p>", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateApplicationRequest.add_member(:resource_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceGroupName, location_name: 'ResourceGroupName', traits: {"smithy.api#documentation" => "<p>The name of the resource group.</p>", "smithy.api#required" => {}}))
    UpdateApplicationRequest.add_member(:ops_center_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: OpsCenterEnabled, location_name: 'OpsCenterEnabled', traits: {"smithy.api#documentation" => "<p> When set to <code>true</code>, creates opsItems for any problems detected on an\n         application. </p>"}))
    UpdateApplicationRequest.add_member(:cwe_monitor_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: CWEMonitorEnabled, location_name: 'CWEMonitorEnabled', traits: {"smithy.api#documentation" => "<p> Indicates whether Application Insights can listen to CloudWatch events for the\n         application resources, such as <code>instance terminated</code>, <code>failed\n            deployment</code>, and others. </p>"}))
    UpdateApplicationRequest.add_member(:ops_item_sns_topic_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: OpsItemSNSTopicArn, location_name: 'OpsItemSNSTopicArn', traits: {"smithy.api#documentation" => "<p> The SNS topic provided to Application Insights that is associated to the created\n         opsItem. Allows you to receive notifications for updates to the opsItem.</p>"}))
    UpdateApplicationRequest.add_member(:sns_notification_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SNSNotificationArn, location_name: 'SNSNotificationArn', traits: {"smithy.api#documentation" => "<p>\n         The SNS topic ARN. Allows you to receive SNS notifications for updates and issues with an application.\n      </p>"}))
    UpdateApplicationRequest.add_member(:remove_sns_topic, Smithy::Schema::Shapes::ShapeRef.new(shape: RemoveSNSTopic, location_name: 'RemoveSNSTopic', traits: {"smithy.api#documentation" => "<p> Disassociates the SNS topic from the opsItem created for detected problems.</p>"}))
    UpdateApplicationRequest.add_member(:auto_config_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoConfigEnabled, location_name: 'AutoConfigEnabled', traits: {"smithy.api#documentation" => "<p> Turns auto-configuration on or off. </p>"}))
    UpdateApplicationRequest.add_member(:attach_missing_permission, Smithy::Schema::Shapes::ShapeRef.new(shape: AttachMissingPermission, location_name: 'AttachMissingPermission', traits: {"smithy.api#documentation" => "<p>If set to true, the managed policies for SSM and CW will be attached to the instance roles if they are missing.</p>"}))
    UpdateApplicationRequest.type = Types::UpdateApplicationRequest
    UpdateApplicationResponse.add_member(:application_info, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationInfo, location_name: 'ApplicationInfo', traits: {"smithy.api#documentation" => "<p>Information about the application. </p>"}))
    UpdateApplicationResponse.type = Types::UpdateApplicationResponse
    UpdateComponentConfigurationRequest.add_member(:resource_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceGroupName, location_name: 'ResourceGroupName', traits: {"smithy.api#documentation" => "<p>The name of the resource group.</p>", "smithy.api#required" => {}}))
    UpdateComponentConfigurationRequest.add_member(:component_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentName, location_name: 'ComponentName', traits: {"smithy.api#documentation" => "<p>The name of the component.</p>", "smithy.api#required" => {}}))
    UpdateComponentConfigurationRequest.add_member(:monitor, Smithy::Schema::Shapes::ShapeRef.new(shape: Monitor, location_name: 'Monitor', traits: {"smithy.api#documentation" => "<p>Indicates whether the application component is monitored.</p>"}))
    UpdateComponentConfigurationRequest.add_member(:tier, Smithy::Schema::Shapes::ShapeRef.new(shape: Tier, location_name: 'Tier', traits: {"smithy.api#documentation" => "<p>The tier of the application component.</p>"}))
    UpdateComponentConfigurationRequest.add_member(:component_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentConfiguration, location_name: 'ComponentConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration settings of the component. The value is the escaped JSON of the\n         configuration. For more information about the JSON format, see <a href=\"https://docs.aws.amazon.com/sdk-for-javascript/v2/developer-guide/working-with-json.html\">Working with JSON</a>. You can send a request to\n            <code>DescribeComponentConfigurationRecommendation</code> to see the recommended\n         configuration for a component. For the complete format of the component configuration file,\n         see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/component-config.html\">Component Configuration</a>.</p>"}))
    UpdateComponentConfigurationRequest.add_member(:auto_config_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoConfigEnabled, location_name: 'AutoConfigEnabled', traits: {"smithy.api#documentation" => "<p> Automatically configures the component by applying the recommended configurations.\n      </p>"}))
    UpdateComponentConfigurationRequest.type = Types::UpdateComponentConfigurationRequest
    UpdateComponentConfigurationResponse.type = Types::UpdateComponentConfigurationResponse
    UpdateComponentRequest.add_member(:resource_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceGroupName, location_name: 'ResourceGroupName', traits: {"smithy.api#documentation" => "<p>The name of the resource group.</p>", "smithy.api#required" => {}}))
    UpdateComponentRequest.add_member(:component_name, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomComponentName, location_name: 'ComponentName', traits: {"smithy.api#documentation" => "<p>The name of the component.</p>", "smithy.api#required" => {}}))
    UpdateComponentRequest.add_member(:new_component_name, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomComponentName, location_name: 'NewComponentName', traits: {"smithy.api#documentation" => "<p>The new name of the component.</p>"}))
    UpdateComponentRequest.add_member(:resource_list, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceList, location_name: 'ResourceList', traits: {"smithy.api#documentation" => "<p>The list of resource ARNs that belong to the component.</p>"}))
    UpdateComponentRequest.type = Types::UpdateComponentRequest
    UpdateComponentResponse.type = Types::UpdateComponentResponse
    UpdateLogPatternRequest.add_member(:resource_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceGroupName, location_name: 'ResourceGroupName', traits: {"smithy.api#documentation" => "<p>The name of the resource group.</p>", "smithy.api#required" => {}}))
    UpdateLogPatternRequest.add_member(:pattern_set_name, Smithy::Schema::Shapes::ShapeRef.new(shape: LogPatternSetName, location_name: 'PatternSetName', traits: {"smithy.api#documentation" => "<p>The name of the log pattern set.</p>", "smithy.api#required" => {}}))
    UpdateLogPatternRequest.add_member(:pattern_name, Smithy::Schema::Shapes::ShapeRef.new(shape: LogPatternName, location_name: 'PatternName', traits: {"smithy.api#documentation" => "<p>The name of the log pattern.</p>", "smithy.api#required" => {}}))
    UpdateLogPatternRequest.add_member(:pattern, Smithy::Schema::Shapes::ShapeRef.new(shape: LogPatternRegex, location_name: 'Pattern', traits: {"smithy.api#documentation" => "<p>The log pattern. The pattern must be DFA compatible. Patterns that utilize forward\n         lookahead or backreference constructions are not supported.</p>"}))
    UpdateLogPatternRequest.add_member(:rank, Smithy::Schema::Shapes::ShapeRef.new(shape: LogPatternRank, location_name: 'Rank', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Rank of the log pattern. Must be a value between <code>1</code> and\n            <code>1,000,000</code>. The patterns are sorted by rank, so we recommend that you set\n         your highest priority patterns with the lowest rank. A pattern of rank <code>1</code> will\n         be the first to get matched to a log line. A pattern of rank <code>1,000,000</code> will be\n         last to get matched. When you configure custom log patterns from the console, a\n            <code>Low</code> severity pattern translates to a <code>750,000</code> rank. A\n            <code>Medium</code> severity pattern translates to a <code>500,000</code> rank. And a\n            <code>High</code> severity pattern translates to a <code>250,000</code> rank. Rank\n         values less than <code>1</code> or greater than <code>1,000,000</code> are reserved for\n         Amazon Web Services provided patterns. </p>"}))
    UpdateLogPatternRequest.type = Types::UpdateLogPatternRequest
    UpdateLogPatternResponse.add_member(:resource_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceGroupName, location_name: 'ResourceGroupName', traits: {"smithy.api#documentation" => "<p>The name of the resource group.</p>"}))
    UpdateLogPatternResponse.add_member(:log_pattern, Smithy::Schema::Shapes::ShapeRef.new(shape: LogPattern, location_name: 'LogPattern', traits: {"smithy.api#documentation" => "<p>The successfully created log pattern.</p>"}))
    UpdateLogPatternResponse.type = Types::UpdateLogPatternResponse
    UpdateProblemRequest.add_member(:problem_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ProblemId, location_name: 'ProblemId', traits: {"smithy.api#documentation" => "<p>The ID of the problem.</p>", "smithy.api#required" => {}}))
    UpdateProblemRequest.add_member(:update_status, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateStatus, location_name: 'UpdateStatus', traits: {"smithy.api#documentation" => "<p>The status of the problem. Arguments can be passed for only problems that show a status\n         of <code>RECOVERING</code>.</p>"}))
    UpdateProblemRequest.add_member(:visibility, Smithy::Schema::Shapes::ShapeRef.new(shape: Visibility, location_name: 'Visibility', traits: {"smithy.api#documentation" => "<p>The visibility of a problem. When you pass a value of <code>IGNORED</code>, the problem\n         is removed from the default view, and all notifications for the problem are suspended. When\n         <code>VISIBLE</code> is passed, the <code>IGNORED</code> action is reversed.</p>"}))
    UpdateProblemRequest.type = Types::UpdateProblemRequest
    UpdateProblemResponse.type = Types::UpdateProblemResponse
    UpdateStatus.add_member(:resolved, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESOLVED', traits: {"smithy.api#enumValue" => "RESOLVED"}))
    UpdateWorkloadRequest.add_member(:resource_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceGroupName, location_name: 'ResourceGroupName', traits: {"smithy.api#documentation" => "<p>The name of the resource group.</p>", "smithy.api#required" => {}}))
    UpdateWorkloadRequest.add_member(:component_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentName, location_name: 'ComponentName', traits: {"smithy.api#documentation" => "<p> The name of the component. </p>", "smithy.api#required" => {}}))
    UpdateWorkloadRequest.add_member(:workload_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadId, location_name: 'WorkloadId', traits: {"smithy.api#documentation" => "<p>The ID of the workload.</p>"}))
    UpdateWorkloadRequest.add_member(:workload_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadConfiguration, location_name: 'WorkloadConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration settings of the workload. The value is the escaped JSON of the configuration.</p>", "smithy.api#required" => {}}))
    UpdateWorkloadRequest.type = Types::UpdateWorkloadRequest
    UpdateWorkloadResponse.add_member(:workload_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadId, location_name: 'WorkloadId', traits: {"smithy.api#documentation" => "<p>The ID of the workload.</p>"}))
    UpdateWorkloadResponse.add_member(:workload_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadConfiguration, location_name: 'WorkloadConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration settings of the workload. The value is the escaped JSON of the configuration.</p>"}))
    UpdateWorkloadResponse.type = Types::UpdateWorkloadResponse
    ValidationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMsg, location_name: 'Message'))
    ValidationException.type = Types::ValidationException
    Visibility.add_member(:ignored, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IGNORED', traits: {"smithy.api#enumValue" => "IGNORED"}))
    Visibility.add_member(:visible, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VISIBLE', traits: {"smithy.api#enumValue" => "VISIBLE"}))
    Workload.add_member(:workload_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadId, location_name: 'WorkloadId', traits: {"smithy.api#documentation" => "<p>The ID of the workload.</p>"}))
    Workload.add_member(:component_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentName, location_name: 'ComponentName', traits: {"smithy.api#documentation" => "<p>The name of the component.</p>"}))
    Workload.add_member(:workload_name, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadName, location_name: 'WorkloadName', traits: {"smithy.api#documentation" => "<p>The name of the workload.</p>"}))
    Workload.add_member(:tier, Smithy::Schema::Shapes::ShapeRef.new(shape: Tier, location_name: 'Tier', traits: {"smithy.api#documentation" => "<p>The tier of the workload.</p>"}))
    Workload.add_member(:workload_remarks, Smithy::Schema::Shapes::ShapeRef.new(shape: Remarks, location_name: 'WorkloadRemarks', traits: {"smithy.api#documentation" => "<p>If logging is supported for the resource type, shows whether the component has configured logs to be monitored.</p>"}))
    Workload.add_member(:missing_workload_config, Smithy::Schema::Shapes::ShapeRef.new(shape: MissingWorkloadConfig, location_name: 'MissingWorkloadConfig', traits: {"smithy.api#documentation" => "<p>Indicates whether all of the component configurations required to monitor a workload were provided.</p>"}))
    Workload.type = Types::Workload
    WorkloadConfiguration.add_member(:workload_name, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadName, location_name: 'WorkloadName', traits: {"smithy.api#documentation" => "<p>The name of the workload.</p>"}))
    WorkloadConfiguration.add_member(:tier, Smithy::Schema::Shapes::ShapeRef.new(shape: Tier, location_name: 'Tier', traits: {"smithy.api#documentation" => "<p>The configuration of the workload tier.</p>"}))
    WorkloadConfiguration.add_member(:configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentConfiguration, location_name: 'Configuration', traits: {"smithy.api#documentation" => "<p>The configuration settings of the workload.</p>"}))
    WorkloadConfiguration.type = Types::WorkloadConfiguration
    WorkloadList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Workload)
    WorkloadMetaData.key = Smithy::Schema::Shapes::ShapeRef.new(shape: MetaDataKey)
    WorkloadMetaData.value = Smithy::Schema::Shapes::ShapeRef.new(shape: MetaDataValue)

    EC2WindowsBarleyService = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.applicationinsights#EC2WindowsBarleyService"
      service.name = "EC2WindowsBarleyService"
      service.version = "2018-11-25"
      service.traits = {"aws.api#service" => {"sdkId" => "Application Insights", "arnNamespace" => "applicationinsights", "cloudFormationName" => "ApplicationInsights", "cloudTrailEventSource" => "applicationinsights.amazonaws.com", "endpointPrefix" => "applicationinsights"}, "aws.auth#sigv4" => {"name" => "applicationinsights"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "Amazon CloudWatch Application Insights"}
      service.add_operation(:add_workload, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationinsights#AddWorkload"
        operation.name = "AddWorkload"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AddWorkloadRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AddWorkloadResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:create_application, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationinsights#CreateApplication"
        operation.name = "CreateApplication"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateApplicationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateApplicationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TagsAlreadyExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:create_component, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationinsights#CreateComponent"
        operation.name = "CreateComponent"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateComponentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateComponentResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:create_log_pattern, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationinsights#CreateLogPattern"
        operation.name = "CreateLogPattern"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLogPatternRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLogPatternResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_application, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationinsights#DeleteApplication"
        operation.name = "DeleteApplication"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteApplicationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteApplicationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_component, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationinsights#DeleteComponent"
        operation.name = "DeleteComponent"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteComponentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteComponentResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_log_pattern, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationinsights#DeleteLogPattern"
        operation.name = "DeleteLogPattern"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteLogPatternRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteLogPatternResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:describe_application, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationinsights#DescribeApplication"
        operation.name = "DescribeApplication"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeApplicationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeApplicationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:describe_component, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationinsights#DescribeComponent"
        operation.name = "DescribeComponent"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeComponentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeComponentResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:describe_component_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationinsights#DescribeComponentConfiguration"
        operation.name = "DescribeComponentConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeComponentConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeComponentConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:describe_component_configuration_recommendation, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationinsights#DescribeComponentConfigurationRecommendation"
        operation.name = "DescribeComponentConfigurationRecommendation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeComponentConfigurationRecommendationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeComponentConfigurationRecommendationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:describe_log_pattern, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationinsights#DescribeLogPattern"
        operation.name = "DescribeLogPattern"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeLogPatternRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeLogPatternResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:describe_observation, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationinsights#DescribeObservation"
        operation.name = "DescribeObservation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeObservationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeObservationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:describe_problem, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationinsights#DescribeProblem"
        operation.name = "DescribeProblem"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeProblemRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeProblemResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:describe_problem_observations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationinsights#DescribeProblemObservations"
        operation.name = "DescribeProblemObservations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeProblemObservationsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeProblemObservationsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:describe_workload, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationinsights#DescribeWorkload"
        operation.name = "DescribeWorkload"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeWorkloadRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeWorkloadResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:list_applications, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationinsights#ListApplications"
        operation.name = "ListApplications"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListApplicationsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListApplicationsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListApplications.new
      end)
      service.add_operation(:list_components, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationinsights#ListComponents"
        operation.name = "ListComponents"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListComponentsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListComponentsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListComponents.new
      end)
      service.add_operation(:list_configuration_history, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationinsights#ListConfigurationHistory"
        operation.name = "ListConfigurationHistory"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListConfigurationHistoryRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListConfigurationHistoryResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListConfigurationHistory.new
      end)
      service.add_operation(:list_log_pattern_sets, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationinsights#ListLogPatternSets"
        operation.name = "ListLogPatternSets"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListLogPatternSetsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListLogPatternSetsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListLogPatternSets.new
      end)
      service.add_operation(:list_log_patterns, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationinsights#ListLogPatterns"
        operation.name = "ListLogPatterns"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListLogPatternsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListLogPatternsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListLogPatterns.new
      end)
      service.add_operation(:list_problems, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationinsights#ListProblems"
        operation.name = "ListProblems"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListProblemsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListProblemsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListProblems.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationinsights#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:list_workloads, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationinsights#ListWorkloads"
        operation.name = "ListWorkloads"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListWorkloadsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListWorkloadsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListWorkloads.new
      end)
      service.add_operation(:remove_workload, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationinsights#RemoveWorkload"
        operation.name = "RemoveWorkload"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RemoveWorkloadRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RemoveWorkloadResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationinsights#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationinsights#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_application, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationinsights#UpdateApplication"
        operation.name = "UpdateApplication"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateApplicationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateApplicationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_component, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationinsights#UpdateComponent"
        operation.name = "UpdateComponent"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateComponentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateComponentResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_component_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationinsights#UpdateComponentConfiguration"
        operation.name = "UpdateComponentConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateComponentConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateComponentConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_log_pattern, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationinsights#UpdateLogPattern"
        operation.name = "UpdateLogPattern"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateLogPatternRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateLogPatternResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_problem, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationinsights#UpdateProblem"
        operation.name = "UpdateProblem"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateProblemRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateProblemResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_workload, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationinsights#UpdateWorkload"
        operation.name = "UpdateWorkload"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateWorkloadRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateWorkloadResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
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
