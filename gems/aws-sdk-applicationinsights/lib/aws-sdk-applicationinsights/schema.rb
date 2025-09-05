# frozen_string_literal: true

# This is generated code!

module Aws::ApplicationInsights
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#AccessDeniedException', name: 'AccessDeniedException', traits: {"aws.protocols#awsQueryError" => {"code" => "AccessDeniedException", "httpResponseCode" => 403}, "smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccountId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#AccountId', name: 'AccountId', traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "^\\d{12}$"})
    AddWorkloadRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#AddWorkloadRequest', name: 'AddWorkloadRequest')
    AddWorkloadResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#AddWorkloadResponse', name: 'AddWorkloadResponse')
    AffectedResource = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#AffectedResource', name: 'AffectedResource')
    AmazonResourceName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#AmazonResourceName', name: 'AmazonResourceName', traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}, "smithy.api#pattern" => "^arn:aws(-\\w+)*:[\\w\\d-]+:([\\w\\d-]*)?:[\\w\\d_-]*([:/].+)*$"})
    ApplicationComponent = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#ApplicationComponent', name: 'ApplicationComponent')
    ApplicationComponentList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.applicationinsights#ApplicationComponentList', name: 'ApplicationComponentList')
    ApplicationInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#ApplicationInfo', name: 'ApplicationInfo')
    ApplicationInfoList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.applicationinsights#ApplicationInfoList', name: 'ApplicationInfoList')
    AttachMissingPermission = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.applicationinsights#AttachMissingPermission', name: 'AttachMissingPermission')
    AutoConfigEnabled = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.applicationinsights#AutoConfigEnabled', name: 'AutoConfigEnabled')
    AutoCreate = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.applicationinsights#AutoCreate', name: 'AutoCreate')
    BadRequestException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#BadRequestException', name: 'BadRequestException', traits: {"aws.protocols#awsQueryError" => {"code" => "BadRequestException", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    CWEMonitorEnabled = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.applicationinsights#CWEMonitorEnabled', name: 'CWEMonitorEnabled')
    CloudWatchEventDetailType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#CloudWatchEventDetailType', name: 'CloudWatchEventDetailType')
    CloudWatchEventId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#CloudWatchEventId', name: 'CloudWatchEventId')
    CloudWatchEventSource = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.applicationinsights#CloudWatchEventSource', name: 'CloudWatchEventSource')
    CodeDeployApplication = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#CodeDeployApplication', name: 'CodeDeployApplication')
    CodeDeployDeploymentGroup = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#CodeDeployDeploymentGroup', name: 'CodeDeployDeploymentGroup')
    CodeDeployDeploymentId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#CodeDeployDeploymentId', name: 'CodeDeployDeploymentId')
    CodeDeployInstanceGroupId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#CodeDeployInstanceGroupId', name: 'CodeDeployInstanceGroupId')
    CodeDeployState = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#CodeDeployState', name: 'CodeDeployState')
    ComponentConfiguration = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#ComponentConfiguration', name: 'ComponentConfiguration', traits: {"smithy.api#length" => {"min" => 1, "max" => 10000}, "smithy.api#pattern" => "^[\\S\\s]+$"})
    ComponentName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#ComponentName', name: 'ComponentName', traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}, "smithy.api#pattern" => "^(?:^[\\d\\w\\-_\\.+]*$)|(?:^arn:aws(-\\w+)*:[\\w\\d-]+:([\\w\\d-]*)?:[\\w\\d_-]*([:/].+)*$)$"})
    ConfigurationEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#ConfigurationEvent', name: 'ConfigurationEvent')
    ConfigurationEventDetail = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#ConfigurationEventDetail', name: 'ConfigurationEventDetail')
    ConfigurationEventList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.applicationinsights#ConfigurationEventList', name: 'ConfigurationEventList')
    ConfigurationEventMonitoredResourceARN = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#ConfigurationEventMonitoredResourceARN', name: 'ConfigurationEventMonitoredResourceARN')
    ConfigurationEventResourceName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#ConfigurationEventResourceName', name: 'ConfigurationEventResourceName')
    ConfigurationEventResourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.applicationinsights#ConfigurationEventResourceType', name: 'ConfigurationEventResourceType')
    ConfigurationEventStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.applicationinsights#ConfigurationEventStatus', name: 'ConfigurationEventStatus')
    ConfigurationEventTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.applicationinsights#ConfigurationEventTime', name: 'ConfigurationEventTime')
    CreateApplicationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#CreateApplicationRequest', name: 'CreateApplicationRequest')
    CreateApplicationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#CreateApplicationResponse', name: 'CreateApplicationResponse')
    CreateComponentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#CreateComponentRequest', name: 'CreateComponentRequest')
    CreateComponentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#CreateComponentResponse', name: 'CreateComponentResponse')
    CreateLogPatternRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#CreateLogPatternRequest', name: 'CreateLogPatternRequest')
    CreateLogPatternResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#CreateLogPatternResponse', name: 'CreateLogPatternResponse')
    CustomComponentName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#CustomComponentName', name: 'CustomComponentName', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\d\\w\\-_\\.+]*$"})
    DeleteApplicationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#DeleteApplicationRequest', name: 'DeleteApplicationRequest')
    DeleteApplicationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#DeleteApplicationResponse', name: 'DeleteApplicationResponse')
    DeleteComponentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#DeleteComponentRequest', name: 'DeleteComponentRequest')
    DeleteComponentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#DeleteComponentResponse', name: 'DeleteComponentResponse')
    DeleteLogPatternRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#DeleteLogPatternRequest', name: 'DeleteLogPatternRequest')
    DeleteLogPatternResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#DeleteLogPatternResponse', name: 'DeleteLogPatternResponse')
    DescribeApplicationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#DescribeApplicationRequest', name: 'DescribeApplicationRequest')
    DescribeApplicationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#DescribeApplicationResponse', name: 'DescribeApplicationResponse')
    DescribeComponentConfigurationRecommendationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#DescribeComponentConfigurationRecommendationRequest', name: 'DescribeComponentConfigurationRecommendationRequest')
    DescribeComponentConfigurationRecommendationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#DescribeComponentConfigurationRecommendationResponse', name: 'DescribeComponentConfigurationRecommendationResponse')
    DescribeComponentConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#DescribeComponentConfigurationRequest', name: 'DescribeComponentConfigurationRequest')
    DescribeComponentConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#DescribeComponentConfigurationResponse', name: 'DescribeComponentConfigurationResponse')
    DescribeComponentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#DescribeComponentRequest', name: 'DescribeComponentRequest')
    DescribeComponentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#DescribeComponentResponse', name: 'DescribeComponentResponse')
    DescribeLogPatternRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#DescribeLogPatternRequest', name: 'DescribeLogPatternRequest')
    DescribeLogPatternResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#DescribeLogPatternResponse', name: 'DescribeLogPatternResponse')
    DescribeObservationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#DescribeObservationRequest', name: 'DescribeObservationRequest')
    DescribeObservationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#DescribeObservationResponse', name: 'DescribeObservationResponse')
    DescribeProblemObservationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#DescribeProblemObservationsRequest', name: 'DescribeProblemObservationsRequest')
    DescribeProblemObservationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#DescribeProblemObservationsResponse', name: 'DescribeProblemObservationsResponse')
    DescribeProblemRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#DescribeProblemRequest', name: 'DescribeProblemRequest')
    DescribeProblemResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#DescribeProblemResponse', name: 'DescribeProblemResponse')
    DescribeWorkloadRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#DescribeWorkloadRequest', name: 'DescribeWorkloadRequest')
    DescribeWorkloadResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#DescribeWorkloadResponse', name: 'DescribeWorkloadResponse')
    DetectedWorkload = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.applicationinsights#DetectedWorkload', name: 'DetectedWorkload')
    DiscoveryType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.applicationinsights#DiscoveryType', name: 'DiscoveryType')
    EbsCause = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#EbsCause', name: 'EbsCause')
    EbsEvent = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#EbsEvent', name: 'EbsEvent')
    EbsRequestId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#EbsRequestId', name: 'EbsRequestId')
    EbsResult = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#EbsResult', name: 'EbsResult')
    Ec2State = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#Ec2State', name: 'Ec2State')
    EndTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.applicationinsights#EndTime', name: 'EndTime')
    ErrorMsg = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#ErrorMsg', name: 'ErrorMsg')
    ExceptionMessage = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#ExceptionMessage', name: 'ExceptionMessage')
    Feedback = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.applicationinsights#Feedback', name: 'Feedback', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    FeedbackKey = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.applicationinsights#FeedbackKey', name: 'FeedbackKey')
    FeedbackValue = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.applicationinsights#FeedbackValue', name: 'FeedbackValue')
    GroupingType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.applicationinsights#GroupingType', name: 'GroupingType')
    HealthEventArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#HealthEventArn', name: 'HealthEventArn')
    HealthEventDescription = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#HealthEventDescription', name: 'HealthEventDescription')
    HealthEventTypeCategory = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#HealthEventTypeCategory', name: 'HealthEventTypeCategory')
    HealthEventTypeCode = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#HealthEventTypeCode', name: 'HealthEventTypeCode')
    HealthService = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#HealthService', name: 'HealthService')
    Insights = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#Insights', name: 'Insights')
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#InternalServerException', name: 'InternalServerException', traits: {"aws.protocols#awsQueryError" => {"code" => "InternalServerException", "httpResponseCode" => 500}, "smithy.api#error" => "server", "smithy.api#httpError" => 500})
    LastRecurrenceTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.applicationinsights#LastRecurrenceTime', name: 'LastRecurrenceTime')
    LifeCycle = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#LifeCycle', name: 'LifeCycle')
    LineTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.applicationinsights#LineTime', name: 'LineTime')
    ListApplicationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#ListApplicationsRequest', name: 'ListApplicationsRequest')
    ListApplicationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#ListApplicationsResponse', name: 'ListApplicationsResponse')
    ListComponentsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#ListComponentsRequest', name: 'ListComponentsRequest')
    ListComponentsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#ListComponentsResponse', name: 'ListComponentsResponse')
    ListConfigurationHistoryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#ListConfigurationHistoryRequest', name: 'ListConfigurationHistoryRequest')
    ListConfigurationHistoryResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#ListConfigurationHistoryResponse', name: 'ListConfigurationHistoryResponse')
    ListLogPatternSetsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#ListLogPatternSetsRequest', name: 'ListLogPatternSetsRequest')
    ListLogPatternSetsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#ListLogPatternSetsResponse', name: 'ListLogPatternSetsResponse')
    ListLogPatternsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#ListLogPatternsRequest', name: 'ListLogPatternsRequest')
    ListLogPatternsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#ListLogPatternsResponse', name: 'ListLogPatternsResponse')
    ListProblemsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#ListProblemsRequest', name: 'ListProblemsRequest')
    ListProblemsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#ListProblemsResponse', name: 'ListProblemsResponse')
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    ListWorkloadsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#ListWorkloadsRequest', name: 'ListWorkloadsRequest')
    ListWorkloadsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#ListWorkloadsResponse', name: 'ListWorkloadsResponse')
    LogFilter = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.applicationinsights#LogFilter', name: 'LogFilter')
    LogGroup = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#LogGroup', name: 'LogGroup')
    LogPattern = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#LogPattern', name: 'LogPattern')
    LogPatternList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.applicationinsights#LogPatternList', name: 'LogPatternList')
    LogPatternName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#LogPatternName', name: 'LogPatternName', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#pattern" => "^[a-zA-Z0-9\\.\\-_]*$"})
    LogPatternRank = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.applicationinsights#LogPatternRank', name: 'LogPatternRank', traits: {"smithy.api#default" => 0})
    LogPatternRegex = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#LogPatternRegex', name: 'LogPatternRegex', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#pattern" => "^[\\S\\s]+$"})
    LogPatternSetList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.applicationinsights#LogPatternSetList', name: 'LogPatternSetList')
    LogPatternSetName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#LogPatternSetName', name: 'LogPatternSetName', traits: {"smithy.api#length" => {"min" => 1, "max" => 30}, "smithy.api#pattern" => "^[a-zA-Z0-9\\.\\-_]*$"})
    LogText = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#LogText', name: 'LogText')
    MaxEntities = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.applicationinsights#MaxEntities', name: 'MaxEntities', traits: {"smithy.api#range" => {"min" => 1, "max" => 40}})
    MetaDataKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#MetaDataKey', name: 'MetaDataKey')
    MetaDataValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#MetaDataValue', name: 'MetaDataValue')
    MetricName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#MetricName', name: 'MetricName')
    MetricNamespace = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#MetricNamespace', name: 'MetricNamespace')
    MissingWorkloadConfig = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.applicationinsights#MissingWorkloadConfig', name: 'MissingWorkloadConfig')
    Monitor = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.applicationinsights#Monitor', name: 'Monitor')
    Observation = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#Observation', name: 'Observation')
    ObservationId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#ObservationId', name: 'ObservationId', traits: {"smithy.api#length" => {"min" => 38, "max" => 38}, "smithy.api#pattern" => "^o-[0-9a-fA-F]{8}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{12}$"})
    ObservationList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.applicationinsights#ObservationList', name: 'ObservationList')
    OpsCenterEnabled = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.applicationinsights#OpsCenterEnabled', name: 'OpsCenterEnabled')
    OpsItemSNSTopicArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#OpsItemSNSTopicArn', name: 'OpsItemSNSTopicArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 300}, "smithy.api#pattern" => "^arn:aws(-\\w+)*:[\\w\\d-]+:([\\w\\d-]*)?:[\\w\\d_-]*([:/].+)*$"})
    OsType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.applicationinsights#OsType', name: 'OsType')
    PaginationToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#PaginationToken', name: 'PaginationToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^.+$"})
    Problem = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#Problem', name: 'Problem')
    ProblemId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#ProblemId', name: 'ProblemId', traits: {"smithy.api#length" => {"min" => 38, "max" => 38}, "smithy.api#pattern" => "^p-[0-9a-fA-F]{8}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{12}$"})
    ProblemList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.applicationinsights#ProblemList', name: 'ProblemList')
    RdsEventCategories = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#RdsEventCategories', name: 'RdsEventCategories')
    RdsEventMessage = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#RdsEventMessage', name: 'RdsEventMessage')
    RecommendationType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.applicationinsights#RecommendationType', name: 'RecommendationType')
    RecurringCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.applicationinsights#RecurringCount', name: 'RecurringCount')
    RelatedObservations = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#RelatedObservations', name: 'RelatedObservations')
    Remarks = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#Remarks', name: 'Remarks')
    RemoveSNSTopic = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.applicationinsights#RemoveSNSTopic', name: 'RemoveSNSTopic')
    RemoveWorkloadRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#RemoveWorkloadRequest', name: 'RemoveWorkloadRequest')
    RemoveWorkloadResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#RemoveWorkloadResponse', name: 'RemoveWorkloadResponse')
    ResolutionMethod = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.applicationinsights#ResolutionMethod', name: 'ResolutionMethod')
    ResourceARN = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#ResourceARN', name: 'ResourceARN', traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}, "smithy.api#pattern" => "^arn:aws(-\\w+)*:[\\w\\d-]+:([\\w\\d-]*)?:[\\w\\d_-]*([:/].+)*$"})
    ResourceGroupName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#ResourceGroupName', name: 'ResourceGroupName', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9\\.\\-_]*$"})
    ResourceInUseException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#ResourceInUseException', name: 'ResourceInUseException', traits: {"aws.protocols#awsQueryError" => {"code" => "ResourceInUseException", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ResourceList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.applicationinsights#ResourceList', name: 'ResourceList')
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"aws.protocols#awsQueryError" => {"code" => "ResourceNotFoundException", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#ResourceType', name: 'ResourceType', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#pattern" => "^[0-9a-zA-Z:_]*$"})
    S3EventName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#S3EventName', name: 'S3EventName')
    SNSNotificationArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#SNSNotificationArn', name: 'SNSNotificationArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 300}, "smithy.api#pattern" => "^arn:aws(-\\w+)*:[\\w\\d-]+:([\\w\\d-]*)?:[\\w\\d_-]*([:/].+)*$"})
    SeverityLevel = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.applicationinsights#SeverityLevel', name: 'SeverityLevel')
    ShortName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#ShortName', name: 'ShortName')
    SourceARN = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#SourceARN', name: 'SourceARN')
    SourceType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#SourceType', name: 'SourceType')
    StartTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.applicationinsights#StartTime', name: 'StartTime')
    StatesArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#StatesArn', name: 'StatesArn')
    StatesExecutionArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#StatesExecutionArn', name: 'StatesExecutionArn')
    StatesInput = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#StatesInput', name: 'StatesInput')
    StatesStatus = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#StatesStatus', name: 'StatesStatus')
    Status = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.applicationinsights#Status', name: 'Status')
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#Tag', name: 'Tag')
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.applicationinsights#TagKeyList', name: 'TagKeyList', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.applicationinsights#TagList', name: 'TagList', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#TagResourceRequest', name: 'TagResourceRequest')
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#TagResourceResponse', name: 'TagResourceResponse')
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    TagsAlreadyExistException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#TagsAlreadyExistException', name: 'TagsAlreadyExistException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Tier = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.applicationinsights#Tier', name: 'Tier', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    Title = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#Title', name: 'Title')
    TooManyTagsException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#TooManyTagsException', name: 'TooManyTagsException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Unit = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#Unit', name: 'Unit')
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#UntagResourceRequest', name: 'UntagResourceRequest')
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#UntagResourceResponse', name: 'UntagResourceResponse')
    UpdateApplicationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#UpdateApplicationRequest', name: 'UpdateApplicationRequest')
    UpdateApplicationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#UpdateApplicationResponse', name: 'UpdateApplicationResponse')
    UpdateComponentConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#UpdateComponentConfigurationRequest', name: 'UpdateComponentConfigurationRequest')
    UpdateComponentConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#UpdateComponentConfigurationResponse', name: 'UpdateComponentConfigurationResponse')
    UpdateComponentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#UpdateComponentRequest', name: 'UpdateComponentRequest')
    UpdateComponentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#UpdateComponentResponse', name: 'UpdateComponentResponse')
    UpdateLogPatternRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#UpdateLogPatternRequest', name: 'UpdateLogPatternRequest')
    UpdateLogPatternResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#UpdateLogPatternResponse', name: 'UpdateLogPatternResponse')
    UpdateProblemRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#UpdateProblemRequest', name: 'UpdateProblemRequest')
    UpdateProblemResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#UpdateProblemResponse', name: 'UpdateProblemResponse')
    UpdateStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.applicationinsights#UpdateStatus', name: 'UpdateStatus')
    UpdateWorkloadRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#UpdateWorkloadRequest', name: 'UpdateWorkloadRequest')
    UpdateWorkloadResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#UpdateWorkloadResponse', name: 'UpdateWorkloadResponse')
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#ValidationException', name: 'ValidationException', traits: {"aws.protocols#awsQueryError" => {"code" => "ValidationException", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Value = ::Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.applicationinsights#Value', name: 'Value')
    Visibility = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.applicationinsights#Visibility', name: 'Visibility')
    Workload = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#Workload', name: 'Workload')
    WorkloadConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationinsights#WorkloadConfiguration', name: 'WorkloadConfiguration')
    WorkloadId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#WorkloadId', name: 'WorkloadId', traits: {"smithy.api#length" => {"min" => 38, "max" => 38}, "smithy.api#pattern" => "^w-[0-9a-fA-F]{8}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{12}$"})
    WorkloadList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.applicationinsights#WorkloadList', name: 'WorkloadList')
    WorkloadMetaData = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.applicationinsights#WorkloadMetaData', name: 'WorkloadMetaData')
    WorkloadName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#WorkloadName', name: 'WorkloadName', traits: {"smithy.api#length" => {"min" => 1, "max" => 12}, "smithy.api#pattern" => "^[a-zA-Z0-9\\.\\-_]*$"})
    XRayErrorPercent = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.applicationinsights#XRayErrorPercent', name: 'XRayErrorPercent')
    XRayFaultPercent = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.applicationinsights#XRayFaultPercent', name: 'XRayFaultPercent')
    XRayNodeName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#XRayNodeName', name: 'XRayNodeName')
    XRayNodeType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationinsights#XRayNodeType', name: 'XRayNodeType')
    XRayRequestAverageLatency = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.applicationinsights#XRayRequestAverageLatency', name: 'XRayRequestAverageLatency')
    XRayRequestCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.applicationinsights#XRayRequestCount', name: 'XRayRequestCount')
    XRayThrottlePercent = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.applicationinsights#XRayThrottlePercent', name: 'XRayThrottlePercent')

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMsg, location_name: 'Message'))
    AccessDeniedException.type = Types::AccessDeniedException
    AddWorkloadRequest.add_member(:resource_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceGroupName, location_name: 'ResourceGroupName', traits: {"smithy.api#required" => {}}))
    AddWorkloadRequest.add_member(:component_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentName, location_name: 'ComponentName', traits: {"smithy.api#required" => {}}))
    AddWorkloadRequest.add_member(:workload_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadConfiguration, location_name: 'WorkloadConfiguration', traits: {"smithy.api#required" => {}}))
    AddWorkloadRequest.type = Types::AddWorkloadRequest
    AddWorkloadResponse.add_member(:workload_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadId, location_name: 'WorkloadId'))
    AddWorkloadResponse.add_member(:workload_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadConfiguration, location_name: 'WorkloadConfiguration'))
    AddWorkloadResponse.type = Types::AddWorkloadResponse
    ApplicationComponent.add_member(:component_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentName, location_name: 'ComponentName'))
    ApplicationComponent.add_member(:component_remarks, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Remarks, location_name: 'ComponentRemarks'))
    ApplicationComponent.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'ResourceType'))
    ApplicationComponent.add_member(:os_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OsType, location_name: 'OsType'))
    ApplicationComponent.add_member(:tier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tier, location_name: 'Tier'))
    ApplicationComponent.add_member(:monitor, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Monitor, location_name: 'Monitor'))
    ApplicationComponent.add_member(:detected_workload, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DetectedWorkload, location_name: 'DetectedWorkload'))
    ApplicationComponent.type = Types::ApplicationComponent
    ApplicationComponentList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationComponent)
    ApplicationInfo.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId'))
    ApplicationInfo.add_member(:resource_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceGroupName, location_name: 'ResourceGroupName'))
    ApplicationInfo.add_member(:life_cycle, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LifeCycle, location_name: 'LifeCycle'))
    ApplicationInfo.add_member(:ops_item_sns_topic_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OpsItemSNSTopicArn, location_name: 'OpsItemSNSTopicArn'))
    ApplicationInfo.add_member(:sns_notification_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SNSNotificationArn, location_name: 'SNSNotificationArn'))
    ApplicationInfo.add_member(:ops_center_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OpsCenterEnabled, location_name: 'OpsCenterEnabled'))
    ApplicationInfo.add_member(:cwe_monitor_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CWEMonitorEnabled, location_name: 'CWEMonitorEnabled'))
    ApplicationInfo.add_member(:remarks, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Remarks, location_name: 'Remarks'))
    ApplicationInfo.add_member(:auto_config_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutoConfigEnabled, location_name: 'AutoConfigEnabled'))
    ApplicationInfo.add_member(:discovery_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DiscoveryType, location_name: 'DiscoveryType'))
    ApplicationInfo.add_member(:attach_missing_permission, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttachMissingPermission, location_name: 'AttachMissingPermission'))
    ApplicationInfo.type = Types::ApplicationInfo
    ApplicationInfoList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationInfo)
    BadRequestException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMsg, location_name: 'Message'))
    BadRequestException.type = Types::BadRequestException
    CloudWatchEventSource.add_member(:ec2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EC2', traits: {"smithy.api#enumValue" => "EC2"}))
    CloudWatchEventSource.add_member(:code_deploy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CODE_DEPLOY', traits: {"smithy.api#enumValue" => "CODE_DEPLOY"}))
    CloudWatchEventSource.add_member(:health, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HEALTH', traits: {"smithy.api#enumValue" => "HEALTH"}))
    CloudWatchEventSource.add_member(:rds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RDS', traits: {"smithy.api#enumValue" => "RDS"}))
    ConfigurationEvent.add_member(:resource_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceGroupName, location_name: 'ResourceGroupName'))
    ConfigurationEvent.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId'))
    ConfigurationEvent.add_member(:monitored_resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationEventMonitoredResourceARN, location_name: 'MonitoredResourceARN'))
    ConfigurationEvent.add_member(:event_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationEventStatus, location_name: 'EventStatus'))
    ConfigurationEvent.add_member(:event_resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationEventResourceType, location_name: 'EventResourceType'))
    ConfigurationEvent.add_member(:event_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationEventTime, location_name: 'EventTime'))
    ConfigurationEvent.add_member(:event_detail, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationEventDetail, location_name: 'EventDetail'))
    ConfigurationEvent.add_member(:event_resource_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationEventResourceName, location_name: 'EventResourceName'))
    ConfigurationEvent.type = Types::ConfigurationEvent
    ConfigurationEventList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationEvent)
    ConfigurationEventResourceType.add_member(:cloudwatch_alarm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CLOUDWATCH_ALARM', traits: {"smithy.api#enumValue" => "CLOUDWATCH_ALARM"}))
    ConfigurationEventResourceType.add_member(:cloudwatch_log, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CLOUDWATCH_LOG', traits: {"smithy.api#enumValue" => "CLOUDWATCH_LOG"}))
    ConfigurationEventResourceType.add_member(:cloudformation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CLOUDFORMATION', traits: {"smithy.api#enumValue" => "CLOUDFORMATION"}))
    ConfigurationEventResourceType.add_member(:ssm_association, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SSM_ASSOCIATION', traits: {"smithy.api#enumValue" => "SSM_ASSOCIATION"}))
    ConfigurationEventStatus.add_member(:info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INFO', traits: {"smithy.api#enumValue" => "INFO"}))
    ConfigurationEventStatus.add_member(:warn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WARN', traits: {"smithy.api#enumValue" => "WARN"}))
    ConfigurationEventStatus.add_member(:error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ERROR', traits: {"smithy.api#enumValue" => "ERROR"}))
    CreateApplicationRequest.add_member(:resource_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceGroupName, location_name: 'ResourceGroupName'))
    CreateApplicationRequest.add_member(:ops_center_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OpsCenterEnabled, location_name: 'OpsCenterEnabled'))
    CreateApplicationRequest.add_member(:cwe_monitor_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CWEMonitorEnabled, location_name: 'CWEMonitorEnabled'))
    CreateApplicationRequest.add_member(:ops_item_sns_topic_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OpsItemSNSTopicArn, location_name: 'OpsItemSNSTopicArn'))
    CreateApplicationRequest.add_member(:sns_notification_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SNSNotificationArn, location_name: 'SNSNotificationArn'))
    CreateApplicationRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    CreateApplicationRequest.add_member(:auto_config_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutoConfigEnabled, location_name: 'AutoConfigEnabled'))
    CreateApplicationRequest.add_member(:auto_create, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutoCreate, location_name: 'AutoCreate'))
    CreateApplicationRequest.add_member(:grouping_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GroupingType, location_name: 'GroupingType'))
    CreateApplicationRequest.add_member(:attach_missing_permission, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttachMissingPermission, location_name: 'AttachMissingPermission'))
    CreateApplicationRequest.type = Types::CreateApplicationRequest
    CreateApplicationResponse.add_member(:application_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationInfo, location_name: 'ApplicationInfo'))
    CreateApplicationResponse.type = Types::CreateApplicationResponse
    CreateComponentRequest.add_member(:resource_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceGroupName, location_name: 'ResourceGroupName', traits: {"smithy.api#required" => {}}))
    CreateComponentRequest.add_member(:component_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomComponentName, location_name: 'ComponentName', traits: {"smithy.api#required" => {}}))
    CreateComponentRequest.add_member(:resource_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceList, location_name: 'ResourceList', traits: {"smithy.api#required" => {}}))
    CreateComponentRequest.type = Types::CreateComponentRequest
    CreateComponentResponse.type = Types::CreateComponentResponse
    CreateLogPatternRequest.add_member(:resource_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceGroupName, location_name: 'ResourceGroupName', traits: {"smithy.api#required" => {}}))
    CreateLogPatternRequest.add_member(:pattern_set_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogPatternSetName, location_name: 'PatternSetName', traits: {"smithy.api#required" => {}}))
    CreateLogPatternRequest.add_member(:pattern_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogPatternName, location_name: 'PatternName', traits: {"smithy.api#required" => {}}))
    CreateLogPatternRequest.add_member(:pattern, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogPatternRegex, location_name: 'Pattern', traits: {"smithy.api#required" => {}}))
    CreateLogPatternRequest.add_member(:rank, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogPatternRank, location_name: 'Rank', traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    CreateLogPatternRequest.type = Types::CreateLogPatternRequest
    CreateLogPatternResponse.add_member(:log_pattern, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogPattern, location_name: 'LogPattern'))
    CreateLogPatternResponse.add_member(:resource_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceGroupName, location_name: 'ResourceGroupName'))
    CreateLogPatternResponse.type = Types::CreateLogPatternResponse
    DeleteApplicationRequest.add_member(:resource_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceGroupName, location_name: 'ResourceGroupName', traits: {"smithy.api#required" => {}}))
    DeleteApplicationRequest.type = Types::DeleteApplicationRequest
    DeleteApplicationResponse.type = Types::DeleteApplicationResponse
    DeleteComponentRequest.add_member(:resource_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceGroupName, location_name: 'ResourceGroupName', traits: {"smithy.api#required" => {}}))
    DeleteComponentRequest.add_member(:component_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomComponentName, location_name: 'ComponentName', traits: {"smithy.api#required" => {}}))
    DeleteComponentRequest.type = Types::DeleteComponentRequest
    DeleteComponentResponse.type = Types::DeleteComponentResponse
    DeleteLogPatternRequest.add_member(:resource_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceGroupName, location_name: 'ResourceGroupName', traits: {"smithy.api#required" => {}}))
    DeleteLogPatternRequest.add_member(:pattern_set_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogPatternSetName, location_name: 'PatternSetName', traits: {"smithy.api#required" => {}}))
    DeleteLogPatternRequest.add_member(:pattern_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogPatternName, location_name: 'PatternName', traits: {"smithy.api#required" => {}}))
    DeleteLogPatternRequest.type = Types::DeleteLogPatternRequest
    DeleteLogPatternResponse.type = Types::DeleteLogPatternResponse
    DescribeApplicationRequest.add_member(:resource_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceGroupName, location_name: 'ResourceGroupName', traits: {"smithy.api#required" => {}}))
    DescribeApplicationRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId'))
    DescribeApplicationRequest.type = Types::DescribeApplicationRequest
    DescribeApplicationResponse.add_member(:application_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationInfo, location_name: 'ApplicationInfo'))
    DescribeApplicationResponse.type = Types::DescribeApplicationResponse
    DescribeComponentConfigurationRecommendationRequest.add_member(:resource_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceGroupName, location_name: 'ResourceGroupName', traits: {"smithy.api#required" => {}}))
    DescribeComponentConfigurationRecommendationRequest.add_member(:component_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentName, location_name: 'ComponentName', traits: {"smithy.api#required" => {}}))
    DescribeComponentConfigurationRecommendationRequest.add_member(:tier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tier, location_name: 'Tier', traits: {"smithy.api#required" => {}}))
    DescribeComponentConfigurationRecommendationRequest.add_member(:workload_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadName, location_name: 'WorkloadName'))
    DescribeComponentConfigurationRecommendationRequest.add_member(:recommendation_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendationType, location_name: 'RecommendationType'))
    DescribeComponentConfigurationRecommendationRequest.type = Types::DescribeComponentConfigurationRecommendationRequest
    DescribeComponentConfigurationRecommendationResponse.add_member(:component_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentConfiguration, location_name: 'ComponentConfiguration'))
    DescribeComponentConfigurationRecommendationResponse.type = Types::DescribeComponentConfigurationRecommendationResponse
    DescribeComponentConfigurationRequest.add_member(:resource_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceGroupName, location_name: 'ResourceGroupName', traits: {"smithy.api#required" => {}}))
    DescribeComponentConfigurationRequest.add_member(:component_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentName, location_name: 'ComponentName', traits: {"smithy.api#required" => {}}))
    DescribeComponentConfigurationRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId'))
    DescribeComponentConfigurationRequest.type = Types::DescribeComponentConfigurationRequest
    DescribeComponentConfigurationResponse.add_member(:monitor, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Monitor, location_name: 'Monitor'))
    DescribeComponentConfigurationResponse.add_member(:tier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tier, location_name: 'Tier'))
    DescribeComponentConfigurationResponse.add_member(:component_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentConfiguration, location_name: 'ComponentConfiguration'))
    DescribeComponentConfigurationResponse.type = Types::DescribeComponentConfigurationResponse
    DescribeComponentRequest.add_member(:resource_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceGroupName, location_name: 'ResourceGroupName', traits: {"smithy.api#required" => {}}))
    DescribeComponentRequest.add_member(:component_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentName, location_name: 'ComponentName', traits: {"smithy.api#required" => {}}))
    DescribeComponentRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId'))
    DescribeComponentRequest.type = Types::DescribeComponentRequest
    DescribeComponentResponse.add_member(:application_component, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationComponent, location_name: 'ApplicationComponent'))
    DescribeComponentResponse.add_member(:resource_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceList, location_name: 'ResourceList'))
    DescribeComponentResponse.type = Types::DescribeComponentResponse
    DescribeLogPatternRequest.add_member(:resource_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceGroupName, location_name: 'ResourceGroupName', traits: {"smithy.api#required" => {}}))
    DescribeLogPatternRequest.add_member(:pattern_set_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogPatternSetName, location_name: 'PatternSetName', traits: {"smithy.api#required" => {}}))
    DescribeLogPatternRequest.add_member(:pattern_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogPatternName, location_name: 'PatternName', traits: {"smithy.api#required" => {}}))
    DescribeLogPatternRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId'))
    DescribeLogPatternRequest.type = Types::DescribeLogPatternRequest
    DescribeLogPatternResponse.add_member(:resource_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceGroupName, location_name: 'ResourceGroupName'))
    DescribeLogPatternResponse.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId'))
    DescribeLogPatternResponse.add_member(:log_pattern, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogPattern, location_name: 'LogPattern'))
    DescribeLogPatternResponse.type = Types::DescribeLogPatternResponse
    DescribeObservationRequest.add_member(:observation_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ObservationId, location_name: 'ObservationId', traits: {"smithy.api#required" => {}}))
    DescribeObservationRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId'))
    DescribeObservationRequest.type = Types::DescribeObservationRequest
    DescribeObservationResponse.add_member(:observation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Observation, location_name: 'Observation'))
    DescribeObservationResponse.type = Types::DescribeObservationResponse
    DescribeProblemObservationsRequest.add_member(:problem_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProblemId, location_name: 'ProblemId', traits: {"smithy.api#required" => {}}))
    DescribeProblemObservationsRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId'))
    DescribeProblemObservationsRequest.type = Types::DescribeProblemObservationsRequest
    DescribeProblemObservationsResponse.add_member(:related_observations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RelatedObservations, location_name: 'RelatedObservations'))
    DescribeProblemObservationsResponse.type = Types::DescribeProblemObservationsResponse
    DescribeProblemRequest.add_member(:problem_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProblemId, location_name: 'ProblemId', traits: {"smithy.api#required" => {}}))
    DescribeProblemRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId'))
    DescribeProblemRequest.type = Types::DescribeProblemRequest
    DescribeProblemResponse.add_member(:problem, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Problem, location_name: 'Problem'))
    DescribeProblemResponse.add_member(:sns_notification_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SNSNotificationArn, location_name: 'SNSNotificationArn'))
    DescribeProblemResponse.type = Types::DescribeProblemResponse
    DescribeWorkloadRequest.add_member(:resource_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceGroupName, location_name: 'ResourceGroupName', traits: {"smithy.api#required" => {}}))
    DescribeWorkloadRequest.add_member(:component_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentName, location_name: 'ComponentName', traits: {"smithy.api#required" => {}}))
    DescribeWorkloadRequest.add_member(:workload_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadId, location_name: 'WorkloadId', traits: {"smithy.api#required" => {}}))
    DescribeWorkloadRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId'))
    DescribeWorkloadRequest.type = Types::DescribeWorkloadRequest
    DescribeWorkloadResponse.add_member(:workload_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadId, location_name: 'WorkloadId'))
    DescribeWorkloadResponse.add_member(:workload_remarks, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Remarks, location_name: 'WorkloadRemarks'))
    DescribeWorkloadResponse.add_member(:workload_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadConfiguration, location_name: 'WorkloadConfiguration'))
    DescribeWorkloadResponse.type = Types::DescribeWorkloadResponse
    DetectedWorkload.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tier)
    DetectedWorkload.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadMetaData)
    DiscoveryType.add_member(:resource_group_based, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESOURCE_GROUP_BASED', traits: {"smithy.api#enumValue" => "RESOURCE_GROUP_BASED"}))
    DiscoveryType.add_member(:account_based, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCOUNT_BASED', traits: {"smithy.api#enumValue" => "ACCOUNT_BASED"}))
    Feedback.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: FeedbackKey)
    Feedback.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: FeedbackValue)
    FeedbackKey.add_member(:insights_feedback, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INSIGHTS_FEEDBACK', traits: {"smithy.api#enumValue" => "INSIGHTS_FEEDBACK"}))
    FeedbackValue.add_member(:not_specified, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOT_SPECIFIED', traits: {"smithy.api#enumValue" => "NOT_SPECIFIED"}))
    FeedbackValue.add_member(:useful, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'USEFUL', traits: {"smithy.api#enumValue" => "USEFUL"}))
    FeedbackValue.add_member(:not_useful, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOT_USEFUL', traits: {"smithy.api#enumValue" => "NOT_USEFUL"}))
    GroupingType.add_member(:account_based, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCOUNT_BASED', traits: {"smithy.api#enumValue" => "ACCOUNT_BASED"}))
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMsg, location_name: 'Message'))
    InternalServerException.type = Types::InternalServerException
    ListApplicationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxEntities, location_name: 'MaxResults'))
    ListApplicationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken'))
    ListApplicationsRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId'))
    ListApplicationsRequest.type = Types::ListApplicationsRequest
    ListApplicationsResponse.add_member(:application_info_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationInfoList, location_name: 'ApplicationInfoList'))
    ListApplicationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken'))
    ListApplicationsResponse.type = Types::ListApplicationsResponse
    ListComponentsRequest.add_member(:resource_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceGroupName, location_name: 'ResourceGroupName', traits: {"smithy.api#required" => {}}))
    ListComponentsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxEntities, location_name: 'MaxResults'))
    ListComponentsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken'))
    ListComponentsRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId'))
    ListComponentsRequest.type = Types::ListComponentsRequest
    ListComponentsResponse.add_member(:application_component_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationComponentList, location_name: 'ApplicationComponentList'))
    ListComponentsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken'))
    ListComponentsResponse.type = Types::ListComponentsResponse
    ListConfigurationHistoryRequest.add_member(:resource_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceGroupName, location_name: 'ResourceGroupName'))
    ListConfigurationHistoryRequest.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartTime, location_name: 'StartTime'))
    ListConfigurationHistoryRequest.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndTime, location_name: 'EndTime'))
    ListConfigurationHistoryRequest.add_member(:event_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationEventStatus, location_name: 'EventStatus'))
    ListConfigurationHistoryRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxEntities, location_name: 'MaxResults'))
    ListConfigurationHistoryRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken'))
    ListConfigurationHistoryRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId'))
    ListConfigurationHistoryRequest.type = Types::ListConfigurationHistoryRequest
    ListConfigurationHistoryResponse.add_member(:event_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationEventList, location_name: 'EventList'))
    ListConfigurationHistoryResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken'))
    ListConfigurationHistoryResponse.type = Types::ListConfigurationHistoryResponse
    ListLogPatternSetsRequest.add_member(:resource_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceGroupName, location_name: 'ResourceGroupName', traits: {"smithy.api#required" => {}}))
    ListLogPatternSetsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxEntities, location_name: 'MaxResults'))
    ListLogPatternSetsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken'))
    ListLogPatternSetsRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId'))
    ListLogPatternSetsRequest.type = Types::ListLogPatternSetsRequest
    ListLogPatternSetsResponse.add_member(:resource_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceGroupName, location_name: 'ResourceGroupName'))
    ListLogPatternSetsResponse.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId'))
    ListLogPatternSetsResponse.add_member(:log_pattern_sets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogPatternSetList, location_name: 'LogPatternSets'))
    ListLogPatternSetsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken'))
    ListLogPatternSetsResponse.type = Types::ListLogPatternSetsResponse
    ListLogPatternsRequest.add_member(:resource_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceGroupName, location_name: 'ResourceGroupName', traits: {"smithy.api#required" => {}}))
    ListLogPatternsRequest.add_member(:pattern_set_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogPatternSetName, location_name: 'PatternSetName'))
    ListLogPatternsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxEntities, location_name: 'MaxResults'))
    ListLogPatternsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken'))
    ListLogPatternsRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId'))
    ListLogPatternsRequest.type = Types::ListLogPatternsRequest
    ListLogPatternsResponse.add_member(:resource_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceGroupName, location_name: 'ResourceGroupName'))
    ListLogPatternsResponse.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId'))
    ListLogPatternsResponse.add_member(:log_patterns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogPatternList, location_name: 'LogPatterns'))
    ListLogPatternsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken'))
    ListLogPatternsResponse.type = Types::ListLogPatternsResponse
    ListProblemsRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId'))
    ListProblemsRequest.add_member(:resource_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceGroupName, location_name: 'ResourceGroupName'))
    ListProblemsRequest.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartTime, location_name: 'StartTime'))
    ListProblemsRequest.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndTime, location_name: 'EndTime'))
    ListProblemsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxEntities, location_name: 'MaxResults'))
    ListProblemsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken'))
    ListProblemsRequest.add_member(:component_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentName, location_name: 'ComponentName'))
    ListProblemsRequest.add_member(:visibility, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Visibility, location_name: 'Visibility'))
    ListProblemsRequest.type = Types::ListProblemsRequest
    ListProblemsResponse.add_member(:problem_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProblemList, location_name: 'ProblemList'))
    ListProblemsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken'))
    ListProblemsResponse.add_member(:resource_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceGroupName, location_name: 'ResourceGroupName'))
    ListProblemsResponse.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId'))
    ListProblemsResponse.type = Types::ListProblemsResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'ResourceARN', traits: {"smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ListWorkloadsRequest.add_member(:resource_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceGroupName, location_name: 'ResourceGroupName', traits: {"smithy.api#required" => {}}))
    ListWorkloadsRequest.add_member(:component_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentName, location_name: 'ComponentName', traits: {"smithy.api#required" => {}}))
    ListWorkloadsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxEntities, location_name: 'MaxResults'))
    ListWorkloadsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken'))
    ListWorkloadsRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId'))
    ListWorkloadsRequest.type = Types::ListWorkloadsRequest
    ListWorkloadsResponse.add_member(:workload_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadList, location_name: 'WorkloadList'))
    ListWorkloadsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken'))
    ListWorkloadsResponse.type = Types::ListWorkloadsResponse
    LogFilter.add_member(:error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ERROR', traits: {"smithy.api#enumValue" => "ERROR"}))
    LogFilter.add_member(:warn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WARN', traits: {"smithy.api#enumValue" => "WARN"}))
    LogFilter.add_member(:info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INFO', traits: {"smithy.api#enumValue" => "INFO"}))
    LogPattern.add_member(:pattern_set_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogPatternSetName, location_name: 'PatternSetName'))
    LogPattern.add_member(:pattern_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogPatternName, location_name: 'PatternName'))
    LogPattern.add_member(:pattern, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogPatternRegex, location_name: 'Pattern'))
    LogPattern.add_member(:rank, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogPatternRank, location_name: 'Rank', traits: {"smithy.api#default" => 0}))
    LogPattern.type = Types::LogPattern
    LogPatternList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogPattern)
    LogPatternSetList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogPatternSetName)
    Observation.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ObservationId, location_name: 'Id'))
    Observation.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartTime, location_name: 'StartTime'))
    Observation.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndTime, location_name: 'EndTime'))
    Observation.add_member(:source_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceType, location_name: 'SourceType'))
    Observation.add_member(:source_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceARN, location_name: 'SourceARN'))
    Observation.add_member(:log_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogGroup, location_name: 'LogGroup'))
    Observation.add_member(:line_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LineTime, location_name: 'LineTime'))
    Observation.add_member(:log_text, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogText, location_name: 'LogText'))
    Observation.add_member(:log_filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogFilter, location_name: 'LogFilter'))
    Observation.add_member(:metric_namespace, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricNamespace, location_name: 'MetricNamespace'))
    Observation.add_member(:metric_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricName, location_name: 'MetricName'))
    Observation.add_member(:unit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Unit, location_name: 'Unit'))
    Observation.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Value, location_name: 'Value'))
    Observation.add_member(:cloud_watch_event_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchEventId, location_name: 'CloudWatchEventId'))
    Observation.add_member(:cloud_watch_event_source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchEventSource, location_name: 'CloudWatchEventSource'))
    Observation.add_member(:cloud_watch_event_detail_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchEventDetailType, location_name: 'CloudWatchEventDetailType'))
    Observation.add_member(:health_event_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HealthEventArn, location_name: 'HealthEventArn'))
    Observation.add_member(:health_service, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HealthService, location_name: 'HealthService'))
    Observation.add_member(:health_event_type_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HealthEventTypeCode, location_name: 'HealthEventTypeCode'))
    Observation.add_member(:health_event_type_category, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HealthEventTypeCategory, location_name: 'HealthEventTypeCategory'))
    Observation.add_member(:health_event_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HealthEventDescription, location_name: 'HealthEventDescription'))
    Observation.add_member(:code_deploy_deployment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CodeDeployDeploymentId, location_name: 'CodeDeployDeploymentId'))
    Observation.add_member(:code_deploy_deployment_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CodeDeployDeploymentGroup, location_name: 'CodeDeployDeploymentGroup'))
    Observation.add_member(:code_deploy_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CodeDeployState, location_name: 'CodeDeployState'))
    Observation.add_member(:code_deploy_application, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CodeDeployApplication, location_name: 'CodeDeployApplication'))
    Observation.add_member(:code_deploy_instance_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CodeDeployInstanceGroupId, location_name: 'CodeDeployInstanceGroupId'))
    Observation.add_member(:ec2_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Ec2State, location_name: 'Ec2State'))
    Observation.add_member(:rds_event_categories, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RdsEventCategories, location_name: 'RdsEventCategories'))
    Observation.add_member(:rds_event_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RdsEventMessage, location_name: 'RdsEventMessage'))
    Observation.add_member(:s3_event_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3EventName, location_name: 'S3EventName'))
    Observation.add_member(:states_execution_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatesExecutionArn, location_name: 'StatesExecutionArn'))
    Observation.add_member(:states_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatesArn, location_name: 'StatesArn'))
    Observation.add_member(:states_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatesStatus, location_name: 'StatesStatus'))
    Observation.add_member(:states_input, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatesInput, location_name: 'StatesInput'))
    Observation.add_member(:ebs_event, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EbsEvent, location_name: 'EbsEvent'))
    Observation.add_member(:ebs_result, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EbsResult, location_name: 'EbsResult'))
    Observation.add_member(:ebs_cause, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EbsCause, location_name: 'EbsCause'))
    Observation.add_member(:ebs_request_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EbsRequestId, location_name: 'EbsRequestId'))
    Observation.add_member(:x_ray_fault_percent, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XRayFaultPercent, location_name: 'XRayFaultPercent'))
    Observation.add_member(:x_ray_throttle_percent, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XRayThrottlePercent, location_name: 'XRayThrottlePercent'))
    Observation.add_member(:x_ray_error_percent, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XRayErrorPercent, location_name: 'XRayErrorPercent'))
    Observation.add_member(:x_ray_request_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XRayRequestCount, location_name: 'XRayRequestCount'))
    Observation.add_member(:x_ray_request_average_latency, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XRayRequestAverageLatency, location_name: 'XRayRequestAverageLatency'))
    Observation.add_member(:x_ray_node_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XRayNodeName, location_name: 'XRayNodeName'))
    Observation.add_member(:x_ray_node_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XRayNodeType, location_name: 'XRayNodeType'))
    Observation.type = Types::Observation
    ObservationList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Observation)
    OsType.add_member(:windows, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WINDOWS', traits: {"smithy.api#enumValue" => "WINDOWS"}))
    OsType.add_member(:linux, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LINUX', traits: {"smithy.api#enumValue" => "LINUX"}))
    Problem.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProblemId, location_name: 'Id'))
    Problem.add_member(:title, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Title, location_name: 'Title'))
    Problem.add_member(:short_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ShortName, location_name: 'ShortName'))
    Problem.add_member(:insights, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Insights, location_name: 'Insights'))
    Problem.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'Status'))
    Problem.add_member(:affected_resource, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AffectedResource, location_name: 'AffectedResource'))
    Problem.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartTime, location_name: 'StartTime'))
    Problem.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndTime, location_name: 'EndTime'))
    Problem.add_member(:severity_level, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SeverityLevel, location_name: 'SeverityLevel'))
    Problem.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId'))
    Problem.add_member(:resource_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceGroupName, location_name: 'ResourceGroupName'))
    Problem.add_member(:feedback, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Feedback, location_name: 'Feedback'))
    Problem.add_member(:recurring_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecurringCount, location_name: 'RecurringCount'))
    Problem.add_member(:last_recurrence_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LastRecurrenceTime, location_name: 'LastRecurrenceTime'))
    Problem.add_member(:visibility, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Visibility, location_name: 'Visibility'))
    Problem.add_member(:resolution_method, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResolutionMethod, location_name: 'ResolutionMethod'))
    Problem.type = Types::Problem
    ProblemList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Problem)
    RecommendationType.add_member(:infra_only, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INFRA_ONLY', traits: {"smithy.api#enumValue" => "INFRA_ONLY"}))
    RecommendationType.add_member(:workload_only, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WORKLOAD_ONLY', traits: {"smithy.api#enumValue" => "WORKLOAD_ONLY"}))
    RecommendationType.add_member(:all, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALL', traits: {"smithy.api#enumValue" => "ALL"}))
    RelatedObservations.add_member(:observation_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ObservationList, location_name: 'ObservationList'))
    RelatedObservations.type = Types::RelatedObservations
    RemoveWorkloadRequest.add_member(:resource_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceGroupName, location_name: 'ResourceGroupName', traits: {"smithy.api#required" => {}}))
    RemoveWorkloadRequest.add_member(:component_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentName, location_name: 'ComponentName', traits: {"smithy.api#required" => {}}))
    RemoveWorkloadRequest.add_member(:workload_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadId, location_name: 'WorkloadId', traits: {"smithy.api#required" => {}}))
    RemoveWorkloadRequest.type = Types::RemoveWorkloadRequest
    RemoveWorkloadResponse.type = Types::RemoveWorkloadResponse
    ResolutionMethod.add_member(:manual, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MANUAL', traits: {"smithy.api#enumValue" => "MANUAL"}))
    ResolutionMethod.add_member(:automatic, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AUTOMATIC', traits: {"smithy.api#enumValue" => "AUTOMATIC"}))
    ResolutionMethod.add_member(:unresolved, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNRESOLVED', traits: {"smithy.api#enumValue" => "UNRESOLVED"}))
    ResourceInUseException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMsg, location_name: 'Message'))
    ResourceInUseException.type = Types::ResourceInUseException
    ResourceList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN)
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMsg, location_name: 'Message'))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    SeverityLevel.add_member(:informative, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Informative', traits: {"smithy.api#enumValue" => "Informative"}))
    SeverityLevel.add_member(:low, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Low', traits: {"smithy.api#enumValue" => "Low"}))
    SeverityLevel.add_member(:medium, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Medium', traits: {"smithy.api#enumValue" => "Medium"}))
    SeverityLevel.add_member(:high, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'High', traits: {"smithy.api#enumValue" => "High"}))
    Status.add_member(:ignore, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IGNORE', traits: {"smithy.api#enumValue" => "IGNORE"}))
    Status.add_member(:resolved, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESOLVED', traits: {"smithy.api#enumValue" => "RESOLVED"}))
    Status.add_member(:pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "PENDING"}))
    Status.add_member(:recurring, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RECURRING', traits: {"smithy.api#enumValue" => "RECURRING"}))
    Status.add_member(:recovering, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RECOVERING', traits: {"smithy.api#enumValue" => "RECOVERING"}))
    Tag.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'Key', traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'Value', traits: {"smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'ResourceARN', traits: {"smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    TagsAlreadyExistException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    TagsAlreadyExistException.type = Types::TagsAlreadyExistException
    Tier.add_member(:custom, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CUSTOM', traits: {"smithy.api#enumValue" => "CUSTOM"}))
    Tier.add_member(:default, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEFAULT', traits: {"smithy.api#enumValue" => "DEFAULT"}))
    Tier.add_member(:dot_net_core, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DOT_NET_CORE', traits: {"smithy.api#enumValue" => "DOT_NET_CORE"}))
    Tier.add_member(:dot_net_worker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DOT_NET_WORKER', traits: {"smithy.api#enumValue" => "DOT_NET_WORKER"}))
    Tier.add_member(:dot_net_web_tier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DOT_NET_WEB_TIER', traits: {"smithy.api#enumValue" => "DOT_NET_WEB_TIER"}))
    Tier.add_member(:dot_net_web, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DOT_NET_WEB', traits: {"smithy.api#enumValue" => "DOT_NET_WEB"}))
    Tier.add_member(:sql_server, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SQL_SERVER', traits: {"smithy.api#enumValue" => "SQL_SERVER"}))
    Tier.add_member(:sql_server_alwayson_availability_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SQL_SERVER_ALWAYSON_AVAILABILITY_GROUP', traits: {"smithy.api#enumValue" => "SQL_SERVER_ALWAYSON_AVAILABILITY_GROUP"}))
    Tier.add_member(:mysql, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MYSQL', traits: {"smithy.api#enumValue" => "MYSQL"}))
    Tier.add_member(:postgresql, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'POSTGRESQL', traits: {"smithy.api#enumValue" => "POSTGRESQL"}))
    Tier.add_member(:java_jmx, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'JAVA_JMX', traits: {"smithy.api#enumValue" => "JAVA_JMX"}))
    Tier.add_member(:oracle, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ORACLE', traits: {"smithy.api#enumValue" => "ORACLE"}))
    Tier.add_member(:sap_hana_multi_node, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SAP_HANA_MULTI_NODE', traits: {"smithy.api#enumValue" => "SAP_HANA_MULTI_NODE"}))
    Tier.add_member(:sap_hana_single_node, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SAP_HANA_SINGLE_NODE', traits: {"smithy.api#enumValue" => "SAP_HANA_SINGLE_NODE"}))
    Tier.add_member(:sap_hana_high_availability, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SAP_HANA_HIGH_AVAILABILITY', traits: {"smithy.api#enumValue" => "SAP_HANA_HIGH_AVAILABILITY"}))
    Tier.add_member(:sap_ase_single_node, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SAP_ASE_SINGLE_NODE', traits: {"smithy.api#enumValue" => "SAP_ASE_SINGLE_NODE"}))
    Tier.add_member(:sap_ase_high_availability, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SAP_ASE_HIGH_AVAILABILITY', traits: {"smithy.api#enumValue" => "SAP_ASE_HIGH_AVAILABILITY"}))
    Tier.add_member(:sql_server_failover_cluster_instance, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SQL_SERVER_FAILOVER_CLUSTER_INSTANCE', traits: {"smithy.api#enumValue" => "SQL_SERVER_FAILOVER_CLUSTER_INSTANCE"}))
    Tier.add_member(:sharepoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SHAREPOINT', traits: {"smithy.api#enumValue" => "SHAREPOINT"}))
    Tier.add_member(:active_directory, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE_DIRECTORY', traits: {"smithy.api#enumValue" => "ACTIVE_DIRECTORY"}))
    Tier.add_member(:sap_netweaver_standard, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SAP_NETWEAVER_STANDARD', traits: {"smithy.api#enumValue" => "SAP_NETWEAVER_STANDARD"}))
    Tier.add_member(:sap_netweaver_distributed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SAP_NETWEAVER_DISTRIBUTED', traits: {"smithy.api#enumValue" => "SAP_NETWEAVER_DISTRIBUTED"}))
    Tier.add_member(:sap_netweaver_high_availability, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SAP_NETWEAVER_HIGH_AVAILABILITY', traits: {"smithy.api#enumValue" => "SAP_NETWEAVER_HIGH_AVAILABILITY"}))
    TooManyTagsException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    TooManyTagsException.add_member(:resource_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'ResourceName'))
    TooManyTagsException.type = Types::TooManyTagsException
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'ResourceARN', traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'TagKeys', traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateApplicationRequest.add_member(:resource_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceGroupName, location_name: 'ResourceGroupName', traits: {"smithy.api#required" => {}}))
    UpdateApplicationRequest.add_member(:ops_center_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OpsCenterEnabled, location_name: 'OpsCenterEnabled'))
    UpdateApplicationRequest.add_member(:cwe_monitor_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CWEMonitorEnabled, location_name: 'CWEMonitorEnabled'))
    UpdateApplicationRequest.add_member(:ops_item_sns_topic_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OpsItemSNSTopicArn, location_name: 'OpsItemSNSTopicArn'))
    UpdateApplicationRequest.add_member(:sns_notification_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SNSNotificationArn, location_name: 'SNSNotificationArn'))
    UpdateApplicationRequest.add_member(:remove_sns_topic, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RemoveSNSTopic, location_name: 'RemoveSNSTopic'))
    UpdateApplicationRequest.add_member(:auto_config_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutoConfigEnabled, location_name: 'AutoConfigEnabled'))
    UpdateApplicationRequest.add_member(:attach_missing_permission, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttachMissingPermission, location_name: 'AttachMissingPermission'))
    UpdateApplicationRequest.type = Types::UpdateApplicationRequest
    UpdateApplicationResponse.add_member(:application_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationInfo, location_name: 'ApplicationInfo'))
    UpdateApplicationResponse.type = Types::UpdateApplicationResponse
    UpdateComponentConfigurationRequest.add_member(:resource_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceGroupName, location_name: 'ResourceGroupName', traits: {"smithy.api#required" => {}}))
    UpdateComponentConfigurationRequest.add_member(:component_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentName, location_name: 'ComponentName', traits: {"smithy.api#required" => {}}))
    UpdateComponentConfigurationRequest.add_member(:monitor, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Monitor, location_name: 'Monitor'))
    UpdateComponentConfigurationRequest.add_member(:tier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tier, location_name: 'Tier'))
    UpdateComponentConfigurationRequest.add_member(:component_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentConfiguration, location_name: 'ComponentConfiguration'))
    UpdateComponentConfigurationRequest.add_member(:auto_config_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutoConfigEnabled, location_name: 'AutoConfigEnabled'))
    UpdateComponentConfigurationRequest.type = Types::UpdateComponentConfigurationRequest
    UpdateComponentConfigurationResponse.type = Types::UpdateComponentConfigurationResponse
    UpdateComponentRequest.add_member(:resource_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceGroupName, location_name: 'ResourceGroupName', traits: {"smithy.api#required" => {}}))
    UpdateComponentRequest.add_member(:component_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomComponentName, location_name: 'ComponentName', traits: {"smithy.api#required" => {}}))
    UpdateComponentRequest.add_member(:new_component_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomComponentName, location_name: 'NewComponentName'))
    UpdateComponentRequest.add_member(:resource_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceList, location_name: 'ResourceList'))
    UpdateComponentRequest.type = Types::UpdateComponentRequest
    UpdateComponentResponse.type = Types::UpdateComponentResponse
    UpdateLogPatternRequest.add_member(:resource_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceGroupName, location_name: 'ResourceGroupName', traits: {"smithy.api#required" => {}}))
    UpdateLogPatternRequest.add_member(:pattern_set_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogPatternSetName, location_name: 'PatternSetName', traits: {"smithy.api#required" => {}}))
    UpdateLogPatternRequest.add_member(:pattern_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogPatternName, location_name: 'PatternName', traits: {"smithy.api#required" => {}}))
    UpdateLogPatternRequest.add_member(:pattern, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogPatternRegex, location_name: 'Pattern'))
    UpdateLogPatternRequest.add_member(:rank, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogPatternRank, location_name: 'Rank', traits: {"smithy.api#default" => 0}))
    UpdateLogPatternRequest.type = Types::UpdateLogPatternRequest
    UpdateLogPatternResponse.add_member(:resource_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceGroupName, location_name: 'ResourceGroupName'))
    UpdateLogPatternResponse.add_member(:log_pattern, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogPattern, location_name: 'LogPattern'))
    UpdateLogPatternResponse.type = Types::UpdateLogPatternResponse
    UpdateProblemRequest.add_member(:problem_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProblemId, location_name: 'ProblemId', traits: {"smithy.api#required" => {}}))
    UpdateProblemRequest.add_member(:update_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateStatus, location_name: 'UpdateStatus'))
    UpdateProblemRequest.add_member(:visibility, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Visibility, location_name: 'Visibility'))
    UpdateProblemRequest.type = Types::UpdateProblemRequest
    UpdateProblemResponse.type = Types::UpdateProblemResponse
    UpdateStatus.add_member(:resolved, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESOLVED', traits: {"smithy.api#enumValue" => "RESOLVED"}))
    UpdateWorkloadRequest.add_member(:resource_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceGroupName, location_name: 'ResourceGroupName', traits: {"smithy.api#required" => {}}))
    UpdateWorkloadRequest.add_member(:component_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentName, location_name: 'ComponentName', traits: {"smithy.api#required" => {}}))
    UpdateWorkloadRequest.add_member(:workload_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadId, location_name: 'WorkloadId'))
    UpdateWorkloadRequest.add_member(:workload_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadConfiguration, location_name: 'WorkloadConfiguration', traits: {"smithy.api#required" => {}}))
    UpdateWorkloadRequest.type = Types::UpdateWorkloadRequest
    UpdateWorkloadResponse.add_member(:workload_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadId, location_name: 'WorkloadId'))
    UpdateWorkloadResponse.add_member(:workload_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadConfiguration, location_name: 'WorkloadConfiguration'))
    UpdateWorkloadResponse.type = Types::UpdateWorkloadResponse
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMsg, location_name: 'Message'))
    ValidationException.type = Types::ValidationException
    Visibility.add_member(:ignored, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IGNORED', traits: {"smithy.api#enumValue" => "IGNORED"}))
    Visibility.add_member(:visible, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VISIBLE', traits: {"smithy.api#enumValue" => "VISIBLE"}))
    Workload.add_member(:workload_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadId, location_name: 'WorkloadId'))
    Workload.add_member(:component_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentName, location_name: 'ComponentName'))
    Workload.add_member(:workload_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadName, location_name: 'WorkloadName'))
    Workload.add_member(:tier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tier, location_name: 'Tier'))
    Workload.add_member(:workload_remarks, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Remarks, location_name: 'WorkloadRemarks'))
    Workload.add_member(:missing_workload_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingWorkloadConfig, location_name: 'MissingWorkloadConfig'))
    Workload.type = Types::Workload
    WorkloadConfiguration.add_member(:workload_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadName, location_name: 'WorkloadName'))
    WorkloadConfiguration.add_member(:tier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tier, location_name: 'Tier'))
    WorkloadConfiguration.add_member(:configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentConfiguration, location_name: 'Configuration'))
    WorkloadConfiguration.type = Types::WorkloadConfiguration
    WorkloadList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Workload)
    WorkloadMetaData.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetaDataKey)
    WorkloadMetaData.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetaDataValue)

    EC2WindowsBarleyService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.applicationinsights#EC2WindowsBarleyService"
      service.name = "EC2WindowsBarleyService"
      service.version = "2018-11-25"
      service.traits = {"aws.api#service" => {"sdkId" => "Application Insights", "arnNamespace" => "applicationinsights", "cloudFormationName" => "ApplicationInsights", "cloudTrailEventSource" => "applicationinsights.amazonaws.com", "endpointPrefix" => "applicationinsights"}, "aws.auth#sigv4" => {"name" => "applicationinsights"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "Amazon CloudWatch Application Insights"}
      service.add_operation(:add_workload, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationinsights#AddWorkload"
        operation.name = "AddWorkload"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddWorkloadRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddWorkloadResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:create_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationinsights#CreateApplication"
        operation.name = "CreateApplication"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateApplicationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateApplicationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagsAlreadyExistException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:create_component, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationinsights#CreateComponent"
        operation.name = "CreateComponent"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateComponentRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateComponentResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:create_log_pattern, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationinsights#CreateLogPattern"
        operation.name = "CreateLogPattern"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLogPatternRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLogPatternResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationinsights#DeleteApplication"
        operation.name = "DeleteApplication"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteApplicationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteApplicationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_component, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationinsights#DeleteComponent"
        operation.name = "DeleteComponent"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteComponentRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteComponentResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_log_pattern, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationinsights#DeleteLogPattern"
        operation.name = "DeleteLogPattern"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteLogPatternRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteLogPatternResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:describe_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationinsights#DescribeApplication"
        operation.name = "DescribeApplication"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeApplicationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeApplicationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:describe_component, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationinsights#DescribeComponent"
        operation.name = "DescribeComponent"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeComponentRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeComponentResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:describe_component_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationinsights#DescribeComponentConfiguration"
        operation.name = "DescribeComponentConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeComponentConfigurationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeComponentConfigurationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:describe_component_configuration_recommendation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationinsights#DescribeComponentConfigurationRecommendation"
        operation.name = "DescribeComponentConfigurationRecommendation"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeComponentConfigurationRecommendationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeComponentConfigurationRecommendationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:describe_log_pattern, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationinsights#DescribeLogPattern"
        operation.name = "DescribeLogPattern"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeLogPatternRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeLogPatternResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:describe_observation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationinsights#DescribeObservation"
        operation.name = "DescribeObservation"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeObservationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeObservationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:describe_problem, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationinsights#DescribeProblem"
        operation.name = "DescribeProblem"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeProblemRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeProblemResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:describe_problem_observations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationinsights#DescribeProblemObservations"
        operation.name = "DescribeProblemObservations"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeProblemObservationsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeProblemObservationsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:describe_workload, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationinsights#DescribeWorkload"
        operation.name = "DescribeWorkload"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeWorkloadRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeWorkloadResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:list_applications, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationinsights#ListApplications"
        operation.name = "ListApplications"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListApplicationsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListApplicationsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListApplications.new
      end)
      service.add_operation(:list_components, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationinsights#ListComponents"
        operation.name = "ListComponents"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListComponentsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListComponentsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListComponents.new
      end)
      service.add_operation(:list_configuration_history, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationinsights#ListConfigurationHistory"
        operation.name = "ListConfigurationHistory"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListConfigurationHistoryRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListConfigurationHistoryResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListConfigurationHistory.new
      end)
      service.add_operation(:list_log_pattern_sets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationinsights#ListLogPatternSets"
        operation.name = "ListLogPatternSets"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListLogPatternSetsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListLogPatternSetsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListLogPatternSets.new
      end)
      service.add_operation(:list_log_patterns, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationinsights#ListLogPatterns"
        operation.name = "ListLogPatterns"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListLogPatternsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListLogPatternsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListLogPatterns.new
      end)
      service.add_operation(:list_problems, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationinsights#ListProblems"
        operation.name = "ListProblems"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListProblemsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListProblemsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListProblems.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationinsights#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:list_workloads, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationinsights#ListWorkloads"
        operation.name = "ListWorkloads"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListWorkloadsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListWorkloadsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListWorkloads.new
      end)
      service.add_operation(:remove_workload, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationinsights#RemoveWorkload"
        operation.name = "RemoveWorkload"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RemoveWorkloadRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RemoveWorkloadResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationinsights#TagResource"
        operation.name = "TagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationinsights#UntagResource"
        operation.name = "UntagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationinsights#UpdateApplication"
        operation.name = "UpdateApplication"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateApplicationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateApplicationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_component, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationinsights#UpdateComponent"
        operation.name = "UpdateComponent"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateComponentRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateComponentResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_component_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationinsights#UpdateComponentConfiguration"
        operation.name = "UpdateComponentConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateComponentConfigurationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateComponentConfigurationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_log_pattern, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationinsights#UpdateLogPattern"
        operation.name = "UpdateLogPattern"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateLogPatternRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateLogPatternResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_problem, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationinsights#UpdateProblem"
        operation.name = "UpdateProblem"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateProblemRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateProblemResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_workload, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationinsights#UpdateWorkload"
        operation.name = "UpdateWorkload"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateWorkloadRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateWorkloadResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
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
