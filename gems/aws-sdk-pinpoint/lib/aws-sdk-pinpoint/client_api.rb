# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Pinpoint
  # @api private
  module ClientApi

    include Seahorse::Model

    ADMChannelRequest = Shapes::StructureShape.new(name: 'ADMChannelRequest')
    ADMChannelResponse = Shapes::StructureShape.new(name: 'ADMChannelResponse')
    ADMMessage = Shapes::StructureShape.new(name: 'ADMMessage')
    APNSChannelRequest = Shapes::StructureShape.new(name: 'APNSChannelRequest')
    APNSChannelResponse = Shapes::StructureShape.new(name: 'APNSChannelResponse')
    APNSMessage = Shapes::StructureShape.new(name: 'APNSMessage')
    APNSPushNotificationTemplate = Shapes::StructureShape.new(name: 'APNSPushNotificationTemplate')
    APNSSandboxChannelRequest = Shapes::StructureShape.new(name: 'APNSSandboxChannelRequest')
    APNSSandboxChannelResponse = Shapes::StructureShape.new(name: 'APNSSandboxChannelResponse')
    APNSVoipChannelRequest = Shapes::StructureShape.new(name: 'APNSVoipChannelRequest')
    APNSVoipChannelResponse = Shapes::StructureShape.new(name: 'APNSVoipChannelResponse')
    APNSVoipSandboxChannelRequest = Shapes::StructureShape.new(name: 'APNSVoipSandboxChannelRequest')
    APNSVoipSandboxChannelResponse = Shapes::StructureShape.new(name: 'APNSVoipSandboxChannelResponse')
    Action = Shapes::StringShape.new(name: 'Action')
    ActivitiesResponse = Shapes::StructureShape.new(name: 'ActivitiesResponse')
    Activity = Shapes::StructureShape.new(name: 'Activity')
    ActivityResponse = Shapes::StructureShape.new(name: 'ActivityResponse')
    AddressConfiguration = Shapes::StructureShape.new(name: 'AddressConfiguration')
    AndroidPushNotificationTemplate = Shapes::StructureShape.new(name: 'AndroidPushNotificationTemplate')
    ApplicationDateRangeKpiResponse = Shapes::StructureShape.new(name: 'ApplicationDateRangeKpiResponse')
    ApplicationResponse = Shapes::StructureShape.new(name: 'ApplicationResponse')
    ApplicationSettingsResource = Shapes::StructureShape.new(name: 'ApplicationSettingsResource')
    ApplicationsResponse = Shapes::StructureShape.new(name: 'ApplicationsResponse')
    AttributeDimension = Shapes::StructureShape.new(name: 'AttributeDimension')
    AttributeType = Shapes::StringShape.new(name: 'AttributeType')
    AttributesResource = Shapes::StructureShape.new(name: 'AttributesResource')
    BadRequestException = Shapes::StructureShape.new(name: 'BadRequestException')
    BaiduChannelRequest = Shapes::StructureShape.new(name: 'BaiduChannelRequest')
    BaiduChannelResponse = Shapes::StructureShape.new(name: 'BaiduChannelResponse')
    BaiduMessage = Shapes::StructureShape.new(name: 'BaiduMessage')
    BaseKpiResult = Shapes::StructureShape.new(name: 'BaseKpiResult')
    CampaignCustomMessage = Shapes::StructureShape.new(name: 'CampaignCustomMessage')
    CampaignDateRangeKpiResponse = Shapes::StructureShape.new(name: 'CampaignDateRangeKpiResponse')
    CampaignEmailMessage = Shapes::StructureShape.new(name: 'CampaignEmailMessage')
    CampaignEventFilter = Shapes::StructureShape.new(name: 'CampaignEventFilter')
    CampaignHook = Shapes::StructureShape.new(name: 'CampaignHook')
    CampaignLimits = Shapes::StructureShape.new(name: 'CampaignLimits')
    CampaignResponse = Shapes::StructureShape.new(name: 'CampaignResponse')
    CampaignSmsMessage = Shapes::StructureShape.new(name: 'CampaignSmsMessage')
    CampaignState = Shapes::StructureShape.new(name: 'CampaignState')
    CampaignStatus = Shapes::StringShape.new(name: 'CampaignStatus')
    CampaignsResponse = Shapes::StructureShape.new(name: 'CampaignsResponse')
    ChannelResponse = Shapes::StructureShape.new(name: 'ChannelResponse')
    ChannelType = Shapes::StringShape.new(name: 'ChannelType')
    ChannelsResponse = Shapes::StructureShape.new(name: 'ChannelsResponse')
    Condition = Shapes::StructureShape.new(name: 'Condition')
    ConditionalSplitActivity = Shapes::StructureShape.new(name: 'ConditionalSplitActivity')
    CreateAppRequest = Shapes::StructureShape.new(name: 'CreateAppRequest')
    CreateAppResponse = Shapes::StructureShape.new(name: 'CreateAppResponse')
    CreateApplicationRequest = Shapes::StructureShape.new(name: 'CreateApplicationRequest')
    CreateCampaignRequest = Shapes::StructureShape.new(name: 'CreateCampaignRequest')
    CreateCampaignResponse = Shapes::StructureShape.new(name: 'CreateCampaignResponse')
    CreateEmailTemplateRequest = Shapes::StructureShape.new(name: 'CreateEmailTemplateRequest')
    CreateEmailTemplateResponse = Shapes::StructureShape.new(name: 'CreateEmailTemplateResponse')
    CreateExportJobRequest = Shapes::StructureShape.new(name: 'CreateExportJobRequest')
    CreateExportJobResponse = Shapes::StructureShape.new(name: 'CreateExportJobResponse')
    CreateImportJobRequest = Shapes::StructureShape.new(name: 'CreateImportJobRequest')
    CreateImportJobResponse = Shapes::StructureShape.new(name: 'CreateImportJobResponse')
    CreateJourneyRequest = Shapes::StructureShape.new(name: 'CreateJourneyRequest')
    CreateJourneyResponse = Shapes::StructureShape.new(name: 'CreateJourneyResponse')
    CreatePushTemplateRequest = Shapes::StructureShape.new(name: 'CreatePushTemplateRequest')
    CreatePushTemplateResponse = Shapes::StructureShape.new(name: 'CreatePushTemplateResponse')
    CreateRecommenderConfiguration = Shapes::StructureShape.new(name: 'CreateRecommenderConfiguration')
    CreateRecommenderConfigurationRequest = Shapes::StructureShape.new(name: 'CreateRecommenderConfigurationRequest')
    CreateRecommenderConfigurationResponse = Shapes::StructureShape.new(name: 'CreateRecommenderConfigurationResponse')
    CreateSegmentRequest = Shapes::StructureShape.new(name: 'CreateSegmentRequest')
    CreateSegmentResponse = Shapes::StructureShape.new(name: 'CreateSegmentResponse')
    CreateSmsTemplateRequest = Shapes::StructureShape.new(name: 'CreateSmsTemplateRequest')
    CreateSmsTemplateResponse = Shapes::StructureShape.new(name: 'CreateSmsTemplateResponse')
    CreateTemplateMessageBody = Shapes::StructureShape.new(name: 'CreateTemplateMessageBody')
    CreateVoiceTemplateRequest = Shapes::StructureShape.new(name: 'CreateVoiceTemplateRequest')
    CreateVoiceTemplateResponse = Shapes::StructureShape.new(name: 'CreateVoiceTemplateResponse')
    CustomDeliveryConfiguration = Shapes::StructureShape.new(name: 'CustomDeliveryConfiguration')
    CustomMessageActivity = Shapes::StructureShape.new(name: 'CustomMessageActivity')
    DefaultMessage = Shapes::StructureShape.new(name: 'DefaultMessage')
    DefaultPushNotificationMessage = Shapes::StructureShape.new(name: 'DefaultPushNotificationMessage')
    DefaultPushNotificationTemplate = Shapes::StructureShape.new(name: 'DefaultPushNotificationTemplate')
    DeleteAdmChannelRequest = Shapes::StructureShape.new(name: 'DeleteAdmChannelRequest')
    DeleteAdmChannelResponse = Shapes::StructureShape.new(name: 'DeleteAdmChannelResponse')
    DeleteApnsChannelRequest = Shapes::StructureShape.new(name: 'DeleteApnsChannelRequest')
    DeleteApnsChannelResponse = Shapes::StructureShape.new(name: 'DeleteApnsChannelResponse')
    DeleteApnsSandboxChannelRequest = Shapes::StructureShape.new(name: 'DeleteApnsSandboxChannelRequest')
    DeleteApnsSandboxChannelResponse = Shapes::StructureShape.new(name: 'DeleteApnsSandboxChannelResponse')
    DeleteApnsVoipChannelRequest = Shapes::StructureShape.new(name: 'DeleteApnsVoipChannelRequest')
    DeleteApnsVoipChannelResponse = Shapes::StructureShape.new(name: 'DeleteApnsVoipChannelResponse')
    DeleteApnsVoipSandboxChannelRequest = Shapes::StructureShape.new(name: 'DeleteApnsVoipSandboxChannelRequest')
    DeleteApnsVoipSandboxChannelResponse = Shapes::StructureShape.new(name: 'DeleteApnsVoipSandboxChannelResponse')
    DeleteAppRequest = Shapes::StructureShape.new(name: 'DeleteAppRequest')
    DeleteAppResponse = Shapes::StructureShape.new(name: 'DeleteAppResponse')
    DeleteBaiduChannelRequest = Shapes::StructureShape.new(name: 'DeleteBaiduChannelRequest')
    DeleteBaiduChannelResponse = Shapes::StructureShape.new(name: 'DeleteBaiduChannelResponse')
    DeleteCampaignRequest = Shapes::StructureShape.new(name: 'DeleteCampaignRequest')
    DeleteCampaignResponse = Shapes::StructureShape.new(name: 'DeleteCampaignResponse')
    DeleteEmailChannelRequest = Shapes::StructureShape.new(name: 'DeleteEmailChannelRequest')
    DeleteEmailChannelResponse = Shapes::StructureShape.new(name: 'DeleteEmailChannelResponse')
    DeleteEmailTemplateRequest = Shapes::StructureShape.new(name: 'DeleteEmailTemplateRequest')
    DeleteEmailTemplateResponse = Shapes::StructureShape.new(name: 'DeleteEmailTemplateResponse')
    DeleteEndpointRequest = Shapes::StructureShape.new(name: 'DeleteEndpointRequest')
    DeleteEndpointResponse = Shapes::StructureShape.new(name: 'DeleteEndpointResponse')
    DeleteEventStreamRequest = Shapes::StructureShape.new(name: 'DeleteEventStreamRequest')
    DeleteEventStreamResponse = Shapes::StructureShape.new(name: 'DeleteEventStreamResponse')
    DeleteGcmChannelRequest = Shapes::StructureShape.new(name: 'DeleteGcmChannelRequest')
    DeleteGcmChannelResponse = Shapes::StructureShape.new(name: 'DeleteGcmChannelResponse')
    DeleteJourneyRequest = Shapes::StructureShape.new(name: 'DeleteJourneyRequest')
    DeleteJourneyResponse = Shapes::StructureShape.new(name: 'DeleteJourneyResponse')
    DeletePushTemplateRequest = Shapes::StructureShape.new(name: 'DeletePushTemplateRequest')
    DeletePushTemplateResponse = Shapes::StructureShape.new(name: 'DeletePushTemplateResponse')
    DeleteRecommenderConfigurationRequest = Shapes::StructureShape.new(name: 'DeleteRecommenderConfigurationRequest')
    DeleteRecommenderConfigurationResponse = Shapes::StructureShape.new(name: 'DeleteRecommenderConfigurationResponse')
    DeleteSegmentRequest = Shapes::StructureShape.new(name: 'DeleteSegmentRequest')
    DeleteSegmentResponse = Shapes::StructureShape.new(name: 'DeleteSegmentResponse')
    DeleteSmsChannelRequest = Shapes::StructureShape.new(name: 'DeleteSmsChannelRequest')
    DeleteSmsChannelResponse = Shapes::StructureShape.new(name: 'DeleteSmsChannelResponse')
    DeleteSmsTemplateRequest = Shapes::StructureShape.new(name: 'DeleteSmsTemplateRequest')
    DeleteSmsTemplateResponse = Shapes::StructureShape.new(name: 'DeleteSmsTemplateResponse')
    DeleteUserEndpointsRequest = Shapes::StructureShape.new(name: 'DeleteUserEndpointsRequest')
    DeleteUserEndpointsResponse = Shapes::StructureShape.new(name: 'DeleteUserEndpointsResponse')
    DeleteVoiceChannelRequest = Shapes::StructureShape.new(name: 'DeleteVoiceChannelRequest')
    DeleteVoiceChannelResponse = Shapes::StructureShape.new(name: 'DeleteVoiceChannelResponse')
    DeleteVoiceTemplateRequest = Shapes::StructureShape.new(name: 'DeleteVoiceTemplateRequest')
    DeleteVoiceTemplateResponse = Shapes::StructureShape.new(name: 'DeleteVoiceTemplateResponse')
    DeliveryStatus = Shapes::StringShape.new(name: 'DeliveryStatus')
    DimensionType = Shapes::StringShape.new(name: 'DimensionType')
    DirectMessageConfiguration = Shapes::StructureShape.new(name: 'DirectMessageConfiguration')
    Duration = Shapes::StringShape.new(name: 'Duration')
    EmailChannelRequest = Shapes::StructureShape.new(name: 'EmailChannelRequest')
    EmailChannelResponse = Shapes::StructureShape.new(name: 'EmailChannelResponse')
    EmailMessage = Shapes::StructureShape.new(name: 'EmailMessage')
    EmailMessageActivity = Shapes::StructureShape.new(name: 'EmailMessageActivity')
    EmailTemplateRequest = Shapes::StructureShape.new(name: 'EmailTemplateRequest')
    EmailTemplateResponse = Shapes::StructureShape.new(name: 'EmailTemplateResponse')
    EndpointBatchItem = Shapes::StructureShape.new(name: 'EndpointBatchItem')
    EndpointBatchRequest = Shapes::StructureShape.new(name: 'EndpointBatchRequest')
    EndpointDemographic = Shapes::StructureShape.new(name: 'EndpointDemographic')
    EndpointItemResponse = Shapes::StructureShape.new(name: 'EndpointItemResponse')
    EndpointLocation = Shapes::StructureShape.new(name: 'EndpointLocation')
    EndpointMessageResult = Shapes::StructureShape.new(name: 'EndpointMessageResult')
    EndpointRequest = Shapes::StructureShape.new(name: 'EndpointRequest')
    EndpointResponse = Shapes::StructureShape.new(name: 'EndpointResponse')
    EndpointSendConfiguration = Shapes::StructureShape.new(name: 'EndpointSendConfiguration')
    EndpointUser = Shapes::StructureShape.new(name: 'EndpointUser')
    EndpointsResponse = Shapes::StructureShape.new(name: 'EndpointsResponse')
    Event = Shapes::StructureShape.new(name: 'Event')
    EventCondition = Shapes::StructureShape.new(name: 'EventCondition')
    EventDimensions = Shapes::StructureShape.new(name: 'EventDimensions')
    EventItemResponse = Shapes::StructureShape.new(name: 'EventItemResponse')
    EventStream = Shapes::StructureShape.new(name: 'EventStream')
    EventsBatch = Shapes::StructureShape.new(name: 'EventsBatch')
    EventsRequest = Shapes::StructureShape.new(name: 'EventsRequest')
    EventsResponse = Shapes::StructureShape.new(name: 'EventsResponse')
    ExportJobRequest = Shapes::StructureShape.new(name: 'ExportJobRequest')
    ExportJobResource = Shapes::StructureShape.new(name: 'ExportJobResource')
    ExportJobResponse = Shapes::StructureShape.new(name: 'ExportJobResponse')
    ExportJobsResponse = Shapes::StructureShape.new(name: 'ExportJobsResponse')
    FilterType = Shapes::StringShape.new(name: 'FilterType')
    ForbiddenException = Shapes::StructureShape.new(name: 'ForbiddenException')
    Format = Shapes::StringShape.new(name: 'Format')
    Frequency = Shapes::StringShape.new(name: 'Frequency')
    GCMChannelRequest = Shapes::StructureShape.new(name: 'GCMChannelRequest')
    GCMChannelResponse = Shapes::StructureShape.new(name: 'GCMChannelResponse')
    GCMMessage = Shapes::StructureShape.new(name: 'GCMMessage')
    GPSCoordinates = Shapes::StructureShape.new(name: 'GPSCoordinates')
    GPSPointDimension = Shapes::StructureShape.new(name: 'GPSPointDimension')
    GetAdmChannelRequest = Shapes::StructureShape.new(name: 'GetAdmChannelRequest')
    GetAdmChannelResponse = Shapes::StructureShape.new(name: 'GetAdmChannelResponse')
    GetApnsChannelRequest = Shapes::StructureShape.new(name: 'GetApnsChannelRequest')
    GetApnsChannelResponse = Shapes::StructureShape.new(name: 'GetApnsChannelResponse')
    GetApnsSandboxChannelRequest = Shapes::StructureShape.new(name: 'GetApnsSandboxChannelRequest')
    GetApnsSandboxChannelResponse = Shapes::StructureShape.new(name: 'GetApnsSandboxChannelResponse')
    GetApnsVoipChannelRequest = Shapes::StructureShape.new(name: 'GetApnsVoipChannelRequest')
    GetApnsVoipChannelResponse = Shapes::StructureShape.new(name: 'GetApnsVoipChannelResponse')
    GetApnsVoipSandboxChannelRequest = Shapes::StructureShape.new(name: 'GetApnsVoipSandboxChannelRequest')
    GetApnsVoipSandboxChannelResponse = Shapes::StructureShape.new(name: 'GetApnsVoipSandboxChannelResponse')
    GetAppRequest = Shapes::StructureShape.new(name: 'GetAppRequest')
    GetAppResponse = Shapes::StructureShape.new(name: 'GetAppResponse')
    GetApplicationDateRangeKpiRequest = Shapes::StructureShape.new(name: 'GetApplicationDateRangeKpiRequest')
    GetApplicationDateRangeKpiResponse = Shapes::StructureShape.new(name: 'GetApplicationDateRangeKpiResponse')
    GetApplicationSettingsRequest = Shapes::StructureShape.new(name: 'GetApplicationSettingsRequest')
    GetApplicationSettingsResponse = Shapes::StructureShape.new(name: 'GetApplicationSettingsResponse')
    GetAppsRequest = Shapes::StructureShape.new(name: 'GetAppsRequest')
    GetAppsResponse = Shapes::StructureShape.new(name: 'GetAppsResponse')
    GetBaiduChannelRequest = Shapes::StructureShape.new(name: 'GetBaiduChannelRequest')
    GetBaiduChannelResponse = Shapes::StructureShape.new(name: 'GetBaiduChannelResponse')
    GetCampaignActivitiesRequest = Shapes::StructureShape.new(name: 'GetCampaignActivitiesRequest')
    GetCampaignActivitiesResponse = Shapes::StructureShape.new(name: 'GetCampaignActivitiesResponse')
    GetCampaignDateRangeKpiRequest = Shapes::StructureShape.new(name: 'GetCampaignDateRangeKpiRequest')
    GetCampaignDateRangeKpiResponse = Shapes::StructureShape.new(name: 'GetCampaignDateRangeKpiResponse')
    GetCampaignRequest = Shapes::StructureShape.new(name: 'GetCampaignRequest')
    GetCampaignResponse = Shapes::StructureShape.new(name: 'GetCampaignResponse')
    GetCampaignVersionRequest = Shapes::StructureShape.new(name: 'GetCampaignVersionRequest')
    GetCampaignVersionResponse = Shapes::StructureShape.new(name: 'GetCampaignVersionResponse')
    GetCampaignVersionsRequest = Shapes::StructureShape.new(name: 'GetCampaignVersionsRequest')
    GetCampaignVersionsResponse = Shapes::StructureShape.new(name: 'GetCampaignVersionsResponse')
    GetCampaignsRequest = Shapes::StructureShape.new(name: 'GetCampaignsRequest')
    GetCampaignsResponse = Shapes::StructureShape.new(name: 'GetCampaignsResponse')
    GetChannelsRequest = Shapes::StructureShape.new(name: 'GetChannelsRequest')
    GetChannelsResponse = Shapes::StructureShape.new(name: 'GetChannelsResponse')
    GetEmailChannelRequest = Shapes::StructureShape.new(name: 'GetEmailChannelRequest')
    GetEmailChannelResponse = Shapes::StructureShape.new(name: 'GetEmailChannelResponse')
    GetEmailTemplateRequest = Shapes::StructureShape.new(name: 'GetEmailTemplateRequest')
    GetEmailTemplateResponse = Shapes::StructureShape.new(name: 'GetEmailTemplateResponse')
    GetEndpointRequest = Shapes::StructureShape.new(name: 'GetEndpointRequest')
    GetEndpointResponse = Shapes::StructureShape.new(name: 'GetEndpointResponse')
    GetEventStreamRequest = Shapes::StructureShape.new(name: 'GetEventStreamRequest')
    GetEventStreamResponse = Shapes::StructureShape.new(name: 'GetEventStreamResponse')
    GetExportJobRequest = Shapes::StructureShape.new(name: 'GetExportJobRequest')
    GetExportJobResponse = Shapes::StructureShape.new(name: 'GetExportJobResponse')
    GetExportJobsRequest = Shapes::StructureShape.new(name: 'GetExportJobsRequest')
    GetExportJobsResponse = Shapes::StructureShape.new(name: 'GetExportJobsResponse')
    GetGcmChannelRequest = Shapes::StructureShape.new(name: 'GetGcmChannelRequest')
    GetGcmChannelResponse = Shapes::StructureShape.new(name: 'GetGcmChannelResponse')
    GetImportJobRequest = Shapes::StructureShape.new(name: 'GetImportJobRequest')
    GetImportJobResponse = Shapes::StructureShape.new(name: 'GetImportJobResponse')
    GetImportJobsRequest = Shapes::StructureShape.new(name: 'GetImportJobsRequest')
    GetImportJobsResponse = Shapes::StructureShape.new(name: 'GetImportJobsResponse')
    GetJourneyDateRangeKpiRequest = Shapes::StructureShape.new(name: 'GetJourneyDateRangeKpiRequest')
    GetJourneyDateRangeKpiResponse = Shapes::StructureShape.new(name: 'GetJourneyDateRangeKpiResponse')
    GetJourneyExecutionActivityMetricsRequest = Shapes::StructureShape.new(name: 'GetJourneyExecutionActivityMetricsRequest')
    GetJourneyExecutionActivityMetricsResponse = Shapes::StructureShape.new(name: 'GetJourneyExecutionActivityMetricsResponse')
    GetJourneyExecutionMetricsRequest = Shapes::StructureShape.new(name: 'GetJourneyExecutionMetricsRequest')
    GetJourneyExecutionMetricsResponse = Shapes::StructureShape.new(name: 'GetJourneyExecutionMetricsResponse')
    GetJourneyRequest = Shapes::StructureShape.new(name: 'GetJourneyRequest')
    GetJourneyResponse = Shapes::StructureShape.new(name: 'GetJourneyResponse')
    GetPushTemplateRequest = Shapes::StructureShape.new(name: 'GetPushTemplateRequest')
    GetPushTemplateResponse = Shapes::StructureShape.new(name: 'GetPushTemplateResponse')
    GetRecommenderConfigurationRequest = Shapes::StructureShape.new(name: 'GetRecommenderConfigurationRequest')
    GetRecommenderConfigurationResponse = Shapes::StructureShape.new(name: 'GetRecommenderConfigurationResponse')
    GetRecommenderConfigurationsRequest = Shapes::StructureShape.new(name: 'GetRecommenderConfigurationsRequest')
    GetRecommenderConfigurationsResponse = Shapes::StructureShape.new(name: 'GetRecommenderConfigurationsResponse')
    GetSegmentExportJobsRequest = Shapes::StructureShape.new(name: 'GetSegmentExportJobsRequest')
    GetSegmentExportJobsResponse = Shapes::StructureShape.new(name: 'GetSegmentExportJobsResponse')
    GetSegmentImportJobsRequest = Shapes::StructureShape.new(name: 'GetSegmentImportJobsRequest')
    GetSegmentImportJobsResponse = Shapes::StructureShape.new(name: 'GetSegmentImportJobsResponse')
    GetSegmentRequest = Shapes::StructureShape.new(name: 'GetSegmentRequest')
    GetSegmentResponse = Shapes::StructureShape.new(name: 'GetSegmentResponse')
    GetSegmentVersionRequest = Shapes::StructureShape.new(name: 'GetSegmentVersionRequest')
    GetSegmentVersionResponse = Shapes::StructureShape.new(name: 'GetSegmentVersionResponse')
    GetSegmentVersionsRequest = Shapes::StructureShape.new(name: 'GetSegmentVersionsRequest')
    GetSegmentVersionsResponse = Shapes::StructureShape.new(name: 'GetSegmentVersionsResponse')
    GetSegmentsRequest = Shapes::StructureShape.new(name: 'GetSegmentsRequest')
    GetSegmentsResponse = Shapes::StructureShape.new(name: 'GetSegmentsResponse')
    GetSmsChannelRequest = Shapes::StructureShape.new(name: 'GetSmsChannelRequest')
    GetSmsChannelResponse = Shapes::StructureShape.new(name: 'GetSmsChannelResponse')
    GetSmsTemplateRequest = Shapes::StructureShape.new(name: 'GetSmsTemplateRequest')
    GetSmsTemplateResponse = Shapes::StructureShape.new(name: 'GetSmsTemplateResponse')
    GetUserEndpointsRequest = Shapes::StructureShape.new(name: 'GetUserEndpointsRequest')
    GetUserEndpointsResponse = Shapes::StructureShape.new(name: 'GetUserEndpointsResponse')
    GetVoiceChannelRequest = Shapes::StructureShape.new(name: 'GetVoiceChannelRequest')
    GetVoiceChannelResponse = Shapes::StructureShape.new(name: 'GetVoiceChannelResponse')
    GetVoiceTemplateRequest = Shapes::StructureShape.new(name: 'GetVoiceTemplateRequest')
    GetVoiceTemplateResponse = Shapes::StructureShape.new(name: 'GetVoiceTemplateResponse')
    HoldoutActivity = Shapes::StructureShape.new(name: 'HoldoutActivity')
    ImportJobRequest = Shapes::StructureShape.new(name: 'ImportJobRequest')
    ImportJobResource = Shapes::StructureShape.new(name: 'ImportJobResource')
    ImportJobResponse = Shapes::StructureShape.new(name: 'ImportJobResponse')
    ImportJobsResponse = Shapes::StructureShape.new(name: 'ImportJobsResponse')
    Include = Shapes::StringShape.new(name: 'Include')
    InternalServerErrorException = Shapes::StructureShape.new(name: 'InternalServerErrorException')
    ItemResponse = Shapes::StructureShape.new(name: 'ItemResponse')
    JobStatus = Shapes::StringShape.new(name: 'JobStatus')
    JourneyCustomMessage = Shapes::StructureShape.new(name: 'JourneyCustomMessage')
    JourneyDateRangeKpiResponse = Shapes::StructureShape.new(name: 'JourneyDateRangeKpiResponse')
    JourneyEmailMessage = Shapes::StructureShape.new(name: 'JourneyEmailMessage')
    JourneyExecutionActivityMetricsResponse = Shapes::StructureShape.new(name: 'JourneyExecutionActivityMetricsResponse')
    JourneyExecutionMetricsResponse = Shapes::StructureShape.new(name: 'JourneyExecutionMetricsResponse')
    JourneyLimits = Shapes::StructureShape.new(name: 'JourneyLimits')
    JourneyPushMessage = Shapes::StructureShape.new(name: 'JourneyPushMessage')
    JourneyResponse = Shapes::StructureShape.new(name: 'JourneyResponse')
    JourneySMSMessage = Shapes::StructureShape.new(name: 'JourneySMSMessage')
    JourneySchedule = Shapes::StructureShape.new(name: 'JourneySchedule')
    JourneyStateRequest = Shapes::StructureShape.new(name: 'JourneyStateRequest')
    JourneysResponse = Shapes::StructureShape.new(name: 'JourneysResponse')
    ListJourneysRequest = Shapes::StructureShape.new(name: 'ListJourneysRequest')
    ListJourneysResponse = Shapes::StructureShape.new(name: 'ListJourneysResponse')
    ListOfActivityResponse = Shapes::ListShape.new(name: 'ListOfActivityResponse')
    ListOfApplicationResponse = Shapes::ListShape.new(name: 'ListOfApplicationResponse')
    ListOfCampaignResponse = Shapes::ListShape.new(name: 'ListOfCampaignResponse')
    ListOfEndpointBatchItem = Shapes::ListShape.new(name: 'ListOfEndpointBatchItem')
    ListOfEndpointResponse = Shapes::ListShape.new(name: 'ListOfEndpointResponse')
    ListOfExportJobResponse = Shapes::ListShape.new(name: 'ListOfExportJobResponse')
    ListOfImportJobResponse = Shapes::ListShape.new(name: 'ListOfImportJobResponse')
    ListOfJourneyResponse = Shapes::ListShape.new(name: 'ListOfJourneyResponse')
    ListOfMultiConditionalBranch = Shapes::ListShape.new(name: 'ListOfMultiConditionalBranch')
    ListOfRandomSplitEntry = Shapes::ListShape.new(name: 'ListOfRandomSplitEntry')
    ListOfRecommenderConfigurationResponse = Shapes::ListShape.new(name: 'ListOfRecommenderConfigurationResponse')
    ListOfResultRow = Shapes::ListShape.new(name: 'ListOfResultRow')
    ListOfResultRowValue = Shapes::ListShape.new(name: 'ListOfResultRowValue')
    ListOfSegmentDimensions = Shapes::ListShape.new(name: 'ListOfSegmentDimensions')
    ListOfSegmentGroup = Shapes::ListShape.new(name: 'ListOfSegmentGroup')
    ListOfSegmentReference = Shapes::ListShape.new(name: 'ListOfSegmentReference')
    ListOfSegmentResponse = Shapes::ListShape.new(name: 'ListOfSegmentResponse')
    ListOfSimpleCondition = Shapes::ListShape.new(name: 'ListOfSimpleCondition')
    ListOfTemplateResponse = Shapes::ListShape.new(name: 'ListOfTemplateResponse')
    ListOfTemplateVersionResponse = Shapes::ListShape.new(name: 'ListOfTemplateVersionResponse')
    ListOfTreatmentResource = Shapes::ListShape.new(name: 'ListOfTreatmentResource')
    ListOfWriteTreatmentResource = Shapes::ListShape.new(name: 'ListOfWriteTreatmentResource')
    ListOf__EndpointTypesElement = Shapes::ListShape.new(name: 'ListOf__EndpointTypesElement')
    ListOf__string = Shapes::ListShape.new(name: 'ListOf__string')
    ListRecommenderConfigurationsResponse = Shapes::StructureShape.new(name: 'ListRecommenderConfigurationsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    ListTemplateVersionsRequest = Shapes::StructureShape.new(name: 'ListTemplateVersionsRequest')
    ListTemplateVersionsResponse = Shapes::StructureShape.new(name: 'ListTemplateVersionsResponse')
    ListTemplatesRequest = Shapes::StructureShape.new(name: 'ListTemplatesRequest')
    ListTemplatesResponse = Shapes::StructureShape.new(name: 'ListTemplatesResponse')
    MapOfActivity = Shapes::MapShape.new(name: 'MapOfActivity')
    MapOfAddressConfiguration = Shapes::MapShape.new(name: 'MapOfAddressConfiguration')
    MapOfAttributeDimension = Shapes::MapShape.new(name: 'MapOfAttributeDimension')
    MapOfChannelResponse = Shapes::MapShape.new(name: 'MapOfChannelResponse')
    MapOfEndpointMessageResult = Shapes::MapShape.new(name: 'MapOfEndpointMessageResult')
    MapOfEndpointSendConfiguration = Shapes::MapShape.new(name: 'MapOfEndpointSendConfiguration')
    MapOfEvent = Shapes::MapShape.new(name: 'MapOfEvent')
    MapOfEventItemResponse = Shapes::MapShape.new(name: 'MapOfEventItemResponse')
    MapOfEventsBatch = Shapes::MapShape.new(name: 'MapOfEventsBatch')
    MapOfItemResponse = Shapes::MapShape.new(name: 'MapOfItemResponse')
    MapOfListOf__string = Shapes::MapShape.new(name: 'MapOfListOf__string')
    MapOfMapOfEndpointMessageResult = Shapes::MapShape.new(name: 'MapOfMapOfEndpointMessageResult')
    MapOfMessageResult = Shapes::MapShape.new(name: 'MapOfMessageResult')
    MapOfMetricDimension = Shapes::MapShape.new(name: 'MapOfMetricDimension')
    MapOf__double = Shapes::MapShape.new(name: 'MapOf__double')
    MapOf__integer = Shapes::MapShape.new(name: 'MapOf__integer')
    MapOf__string = Shapes::MapShape.new(name: 'MapOf__string')
    Message = Shapes::StructureShape.new(name: 'Message')
    MessageBody = Shapes::StructureShape.new(name: 'MessageBody')
    MessageConfiguration = Shapes::StructureShape.new(name: 'MessageConfiguration')
    MessageRequest = Shapes::StructureShape.new(name: 'MessageRequest')
    MessageResponse = Shapes::StructureShape.new(name: 'MessageResponse')
    MessageResult = Shapes::StructureShape.new(name: 'MessageResult')
    MessageType = Shapes::StringShape.new(name: 'MessageType')
    MethodNotAllowedException = Shapes::StructureShape.new(name: 'MethodNotAllowedException')
    MetricDimension = Shapes::StructureShape.new(name: 'MetricDimension')
    Mode = Shapes::StringShape.new(name: 'Mode')
    MultiConditionalBranch = Shapes::StructureShape.new(name: 'MultiConditionalBranch')
    MultiConditionalSplitActivity = Shapes::StructureShape.new(name: 'MultiConditionalSplitActivity')
    NotFoundException = Shapes::StructureShape.new(name: 'NotFoundException')
    NumberValidateRequest = Shapes::StructureShape.new(name: 'NumberValidateRequest')
    NumberValidateResponse = Shapes::StructureShape.new(name: 'NumberValidateResponse')
    Operator = Shapes::StringShape.new(name: 'Operator')
    PayloadTooLargeException = Shapes::StructureShape.new(name: 'PayloadTooLargeException')
    PhoneNumberValidateRequest = Shapes::StructureShape.new(name: 'PhoneNumberValidateRequest')
    PhoneNumberValidateResponse = Shapes::StructureShape.new(name: 'PhoneNumberValidateResponse')
    PublicEndpoint = Shapes::StructureShape.new(name: 'PublicEndpoint')
    PushMessageActivity = Shapes::StructureShape.new(name: 'PushMessageActivity')
    PushNotificationTemplateRequest = Shapes::StructureShape.new(name: 'PushNotificationTemplateRequest')
    PushNotificationTemplateResponse = Shapes::StructureShape.new(name: 'PushNotificationTemplateResponse')
    PutEventStreamRequest = Shapes::StructureShape.new(name: 'PutEventStreamRequest')
    PutEventStreamResponse = Shapes::StructureShape.new(name: 'PutEventStreamResponse')
    PutEventsRequest = Shapes::StructureShape.new(name: 'PutEventsRequest')
    PutEventsResponse = Shapes::StructureShape.new(name: 'PutEventsResponse')
    QuietTime = Shapes::StructureShape.new(name: 'QuietTime')
    RandomSplitActivity = Shapes::StructureShape.new(name: 'RandomSplitActivity')
    RandomSplitEntry = Shapes::StructureShape.new(name: 'RandomSplitEntry')
    RawEmail = Shapes::StructureShape.new(name: 'RawEmail')
    RecencyDimension = Shapes::StructureShape.new(name: 'RecencyDimension')
    RecencyType = Shapes::StringShape.new(name: 'RecencyType')
    RecommenderConfigurationResponse = Shapes::StructureShape.new(name: 'RecommenderConfigurationResponse')
    RemoveAttributesRequest = Shapes::StructureShape.new(name: 'RemoveAttributesRequest')
    RemoveAttributesResponse = Shapes::StructureShape.new(name: 'RemoveAttributesResponse')
    ResultRow = Shapes::StructureShape.new(name: 'ResultRow')
    ResultRowValue = Shapes::StructureShape.new(name: 'ResultRowValue')
    SMSChannelRequest = Shapes::StructureShape.new(name: 'SMSChannelRequest')
    SMSChannelResponse = Shapes::StructureShape.new(name: 'SMSChannelResponse')
    SMSMessage = Shapes::StructureShape.new(name: 'SMSMessage')
    SMSMessageActivity = Shapes::StructureShape.new(name: 'SMSMessageActivity')
    SMSTemplateRequest = Shapes::StructureShape.new(name: 'SMSTemplateRequest')
    SMSTemplateResponse = Shapes::StructureShape.new(name: 'SMSTemplateResponse')
    Schedule = Shapes::StructureShape.new(name: 'Schedule')
    SegmentBehaviors = Shapes::StructureShape.new(name: 'SegmentBehaviors')
    SegmentCondition = Shapes::StructureShape.new(name: 'SegmentCondition')
    SegmentDemographics = Shapes::StructureShape.new(name: 'SegmentDemographics')
    SegmentDimensions = Shapes::StructureShape.new(name: 'SegmentDimensions')
    SegmentGroup = Shapes::StructureShape.new(name: 'SegmentGroup')
    SegmentGroupList = Shapes::StructureShape.new(name: 'SegmentGroupList')
    SegmentImportResource = Shapes::StructureShape.new(name: 'SegmentImportResource')
    SegmentLocation = Shapes::StructureShape.new(name: 'SegmentLocation')
    SegmentReference = Shapes::StructureShape.new(name: 'SegmentReference')
    SegmentResponse = Shapes::StructureShape.new(name: 'SegmentResponse')
    SegmentType = Shapes::StringShape.new(name: 'SegmentType')
    SegmentsResponse = Shapes::StructureShape.new(name: 'SegmentsResponse')
    SendMessagesRequest = Shapes::StructureShape.new(name: 'SendMessagesRequest')
    SendMessagesResponse = Shapes::StructureShape.new(name: 'SendMessagesResponse')
    SendUsersMessageRequest = Shapes::StructureShape.new(name: 'SendUsersMessageRequest')
    SendUsersMessageResponse = Shapes::StructureShape.new(name: 'SendUsersMessageResponse')
    SendUsersMessagesRequest = Shapes::StructureShape.new(name: 'SendUsersMessagesRequest')
    SendUsersMessagesResponse = Shapes::StructureShape.new(name: 'SendUsersMessagesResponse')
    Session = Shapes::StructureShape.new(name: 'Session')
    SetDimension = Shapes::StructureShape.new(name: 'SetDimension')
    SimpleCondition = Shapes::StructureShape.new(name: 'SimpleCondition')
    SimpleEmail = Shapes::StructureShape.new(name: 'SimpleEmail')
    SimpleEmailPart = Shapes::StructureShape.new(name: 'SimpleEmailPart')
    SourceType = Shapes::StringShape.new(name: 'SourceType')
    StartCondition = Shapes::StructureShape.new(name: 'StartCondition')
    State = Shapes::StringShape.new(name: 'State')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagsModel = Shapes::StructureShape.new(name: 'TagsModel')
    Template = Shapes::StructureShape.new(name: 'Template')
    TemplateActiveVersionRequest = Shapes::StructureShape.new(name: 'TemplateActiveVersionRequest')
    TemplateConfiguration = Shapes::StructureShape.new(name: 'TemplateConfiguration')
    TemplateResponse = Shapes::StructureShape.new(name: 'TemplateResponse')
    TemplateType = Shapes::StringShape.new(name: 'TemplateType')
    TemplateVersionResponse = Shapes::StructureShape.new(name: 'TemplateVersionResponse')
    TemplateVersionsResponse = Shapes::StructureShape.new(name: 'TemplateVersionsResponse')
    TemplatesResponse = Shapes::StructureShape.new(name: 'TemplatesResponse')
    TooManyRequestsException = Shapes::StructureShape.new(name: 'TooManyRequestsException')
    TreatmentResource = Shapes::StructureShape.new(name: 'TreatmentResource')
    Type = Shapes::StringShape.new(name: 'Type')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UpdateAdmChannelRequest = Shapes::StructureShape.new(name: 'UpdateAdmChannelRequest')
    UpdateAdmChannelResponse = Shapes::StructureShape.new(name: 'UpdateAdmChannelResponse')
    UpdateApnsChannelRequest = Shapes::StructureShape.new(name: 'UpdateApnsChannelRequest')
    UpdateApnsChannelResponse = Shapes::StructureShape.new(name: 'UpdateApnsChannelResponse')
    UpdateApnsSandboxChannelRequest = Shapes::StructureShape.new(name: 'UpdateApnsSandboxChannelRequest')
    UpdateApnsSandboxChannelResponse = Shapes::StructureShape.new(name: 'UpdateApnsSandboxChannelResponse')
    UpdateApnsVoipChannelRequest = Shapes::StructureShape.new(name: 'UpdateApnsVoipChannelRequest')
    UpdateApnsVoipChannelResponse = Shapes::StructureShape.new(name: 'UpdateApnsVoipChannelResponse')
    UpdateApnsVoipSandboxChannelRequest = Shapes::StructureShape.new(name: 'UpdateApnsVoipSandboxChannelRequest')
    UpdateApnsVoipSandboxChannelResponse = Shapes::StructureShape.new(name: 'UpdateApnsVoipSandboxChannelResponse')
    UpdateApplicationSettingsRequest = Shapes::StructureShape.new(name: 'UpdateApplicationSettingsRequest')
    UpdateApplicationSettingsResponse = Shapes::StructureShape.new(name: 'UpdateApplicationSettingsResponse')
    UpdateAttributesRequest = Shapes::StructureShape.new(name: 'UpdateAttributesRequest')
    UpdateBaiduChannelRequest = Shapes::StructureShape.new(name: 'UpdateBaiduChannelRequest')
    UpdateBaiduChannelResponse = Shapes::StructureShape.new(name: 'UpdateBaiduChannelResponse')
    UpdateCampaignRequest = Shapes::StructureShape.new(name: 'UpdateCampaignRequest')
    UpdateCampaignResponse = Shapes::StructureShape.new(name: 'UpdateCampaignResponse')
    UpdateEmailChannelRequest = Shapes::StructureShape.new(name: 'UpdateEmailChannelRequest')
    UpdateEmailChannelResponse = Shapes::StructureShape.new(name: 'UpdateEmailChannelResponse')
    UpdateEmailTemplateRequest = Shapes::StructureShape.new(name: 'UpdateEmailTemplateRequest')
    UpdateEmailTemplateResponse = Shapes::StructureShape.new(name: 'UpdateEmailTemplateResponse')
    UpdateEndpointRequest = Shapes::StructureShape.new(name: 'UpdateEndpointRequest')
    UpdateEndpointResponse = Shapes::StructureShape.new(name: 'UpdateEndpointResponse')
    UpdateEndpointsBatchRequest = Shapes::StructureShape.new(name: 'UpdateEndpointsBatchRequest')
    UpdateEndpointsBatchResponse = Shapes::StructureShape.new(name: 'UpdateEndpointsBatchResponse')
    UpdateGcmChannelRequest = Shapes::StructureShape.new(name: 'UpdateGcmChannelRequest')
    UpdateGcmChannelResponse = Shapes::StructureShape.new(name: 'UpdateGcmChannelResponse')
    UpdateJourneyRequest = Shapes::StructureShape.new(name: 'UpdateJourneyRequest')
    UpdateJourneyResponse = Shapes::StructureShape.new(name: 'UpdateJourneyResponse')
    UpdateJourneyStateRequest = Shapes::StructureShape.new(name: 'UpdateJourneyStateRequest')
    UpdateJourneyStateResponse = Shapes::StructureShape.new(name: 'UpdateJourneyStateResponse')
    UpdatePushTemplateRequest = Shapes::StructureShape.new(name: 'UpdatePushTemplateRequest')
    UpdatePushTemplateResponse = Shapes::StructureShape.new(name: 'UpdatePushTemplateResponse')
    UpdateRecommenderConfiguration = Shapes::StructureShape.new(name: 'UpdateRecommenderConfiguration')
    UpdateRecommenderConfigurationRequest = Shapes::StructureShape.new(name: 'UpdateRecommenderConfigurationRequest')
    UpdateRecommenderConfigurationResponse = Shapes::StructureShape.new(name: 'UpdateRecommenderConfigurationResponse')
    UpdateSegmentRequest = Shapes::StructureShape.new(name: 'UpdateSegmentRequest')
    UpdateSegmentResponse = Shapes::StructureShape.new(name: 'UpdateSegmentResponse')
    UpdateSmsChannelRequest = Shapes::StructureShape.new(name: 'UpdateSmsChannelRequest')
    UpdateSmsChannelResponse = Shapes::StructureShape.new(name: 'UpdateSmsChannelResponse')
    UpdateSmsTemplateRequest = Shapes::StructureShape.new(name: 'UpdateSmsTemplateRequest')
    UpdateSmsTemplateResponse = Shapes::StructureShape.new(name: 'UpdateSmsTemplateResponse')
    UpdateTemplateActiveVersionRequest = Shapes::StructureShape.new(name: 'UpdateTemplateActiveVersionRequest')
    UpdateTemplateActiveVersionResponse = Shapes::StructureShape.new(name: 'UpdateTemplateActiveVersionResponse')
    UpdateVoiceChannelRequest = Shapes::StructureShape.new(name: 'UpdateVoiceChannelRequest')
    UpdateVoiceChannelResponse = Shapes::StructureShape.new(name: 'UpdateVoiceChannelResponse')
    UpdateVoiceTemplateRequest = Shapes::StructureShape.new(name: 'UpdateVoiceTemplateRequest')
    UpdateVoiceTemplateResponse = Shapes::StructureShape.new(name: 'UpdateVoiceTemplateResponse')
    VoiceChannelRequest = Shapes::StructureShape.new(name: 'VoiceChannelRequest')
    VoiceChannelResponse = Shapes::StructureShape.new(name: 'VoiceChannelResponse')
    VoiceMessage = Shapes::StructureShape.new(name: 'VoiceMessage')
    VoiceTemplateRequest = Shapes::StructureShape.new(name: 'VoiceTemplateRequest')
    VoiceTemplateResponse = Shapes::StructureShape.new(name: 'VoiceTemplateResponse')
    WaitActivity = Shapes::StructureShape.new(name: 'WaitActivity')
    WaitTime = Shapes::StructureShape.new(name: 'WaitTime')
    WriteApplicationSettingsRequest = Shapes::StructureShape.new(name: 'WriteApplicationSettingsRequest')
    WriteCampaignRequest = Shapes::StructureShape.new(name: 'WriteCampaignRequest')
    WriteEventStream = Shapes::StructureShape.new(name: 'WriteEventStream')
    WriteJourneyRequest = Shapes::StructureShape.new(name: 'WriteJourneyRequest')
    WriteSegmentRequest = Shapes::StructureShape.new(name: 'WriteSegmentRequest')
    WriteTreatmentResource = Shapes::StructureShape.new(name: 'WriteTreatmentResource')
    __EndpointTypesElement = Shapes::StringShape.new(name: '__EndpointTypesElement')
    __blob = Shapes::BlobShape.new(name: '__blob')
    __boolean = Shapes::BooleanShape.new(name: '__boolean')
    __double = Shapes::FloatShape.new(name: '__double')
    __integer = Shapes::IntegerShape.new(name: '__integer')
    __long = Shapes::IntegerShape.new(name: '__long')
    __string = Shapes::StringShape.new(name: '__string')
    __timestampIso8601 = Shapes::TimestampShape.new(name: '__timestampIso8601', timestampFormat: "iso8601")
    __timestampUnix = Shapes::TimestampShape.new(name: '__timestampUnix', timestampFormat: "unixTimestamp")

    ADMChannelRequest.add_member(:client_id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "ClientId"))
    ADMChannelRequest.add_member(:client_secret, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "ClientSecret"))
    ADMChannelRequest.add_member(:enabled, Shapes::ShapeRef.new(shape: __boolean, location_name: "Enabled"))
    ADMChannelRequest.struct_class = Types::ADMChannelRequest

    ADMChannelResponse.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, location_name: "ApplicationId"))
    ADMChannelResponse.add_member(:creation_date, Shapes::ShapeRef.new(shape: __string, location_name: "CreationDate"))
    ADMChannelResponse.add_member(:enabled, Shapes::ShapeRef.new(shape: __boolean, location_name: "Enabled"))
    ADMChannelResponse.add_member(:has_credential, Shapes::ShapeRef.new(shape: __boolean, location_name: "HasCredential"))
    ADMChannelResponse.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "Id"))
    ADMChannelResponse.add_member(:is_archived, Shapes::ShapeRef.new(shape: __boolean, location_name: "IsArchived"))
    ADMChannelResponse.add_member(:last_modified_by, Shapes::ShapeRef.new(shape: __string, location_name: "LastModifiedBy"))
    ADMChannelResponse.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: __string, location_name: "LastModifiedDate"))
    ADMChannelResponse.add_member(:platform, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "Platform"))
    ADMChannelResponse.add_member(:version, Shapes::ShapeRef.new(shape: __integer, location_name: "Version"))
    ADMChannelResponse.struct_class = Types::ADMChannelResponse

    ADMMessage.add_member(:action, Shapes::ShapeRef.new(shape: Action, location_name: "Action"))
    ADMMessage.add_member(:body, Shapes::ShapeRef.new(shape: __string, location_name: "Body"))
    ADMMessage.add_member(:consolidation_key, Shapes::ShapeRef.new(shape: __string, location_name: "ConsolidationKey"))
    ADMMessage.add_member(:data, Shapes::ShapeRef.new(shape: MapOf__string, location_name: "Data"))
    ADMMessage.add_member(:expires_after, Shapes::ShapeRef.new(shape: __string, location_name: "ExpiresAfter"))
    ADMMessage.add_member(:icon_reference, Shapes::ShapeRef.new(shape: __string, location_name: "IconReference"))
    ADMMessage.add_member(:image_icon_url, Shapes::ShapeRef.new(shape: __string, location_name: "ImageIconUrl"))
    ADMMessage.add_member(:image_url, Shapes::ShapeRef.new(shape: __string, location_name: "ImageUrl"))
    ADMMessage.add_member(:md5, Shapes::ShapeRef.new(shape: __string, location_name: "MD5"))
    ADMMessage.add_member(:raw_content, Shapes::ShapeRef.new(shape: __string, location_name: "RawContent"))
    ADMMessage.add_member(:silent_push, Shapes::ShapeRef.new(shape: __boolean, location_name: "SilentPush"))
    ADMMessage.add_member(:small_image_icon_url, Shapes::ShapeRef.new(shape: __string, location_name: "SmallImageIconUrl"))
    ADMMessage.add_member(:sound, Shapes::ShapeRef.new(shape: __string, location_name: "Sound"))
    ADMMessage.add_member(:substitutions, Shapes::ShapeRef.new(shape: MapOfListOf__string, location_name: "Substitutions"))
    ADMMessage.add_member(:title, Shapes::ShapeRef.new(shape: __string, location_name: "Title"))
    ADMMessage.add_member(:url, Shapes::ShapeRef.new(shape: __string, location_name: "Url"))
    ADMMessage.struct_class = Types::ADMMessage

    APNSChannelRequest.add_member(:bundle_id, Shapes::ShapeRef.new(shape: __string, location_name: "BundleId"))
    APNSChannelRequest.add_member(:certificate, Shapes::ShapeRef.new(shape: __string, location_name: "Certificate"))
    APNSChannelRequest.add_member(:default_authentication_method, Shapes::ShapeRef.new(shape: __string, location_name: "DefaultAuthenticationMethod"))
    APNSChannelRequest.add_member(:enabled, Shapes::ShapeRef.new(shape: __boolean, location_name: "Enabled"))
    APNSChannelRequest.add_member(:private_key, Shapes::ShapeRef.new(shape: __string, location_name: "PrivateKey"))
    APNSChannelRequest.add_member(:team_id, Shapes::ShapeRef.new(shape: __string, location_name: "TeamId"))
    APNSChannelRequest.add_member(:token_key, Shapes::ShapeRef.new(shape: __string, location_name: "TokenKey"))
    APNSChannelRequest.add_member(:token_key_id, Shapes::ShapeRef.new(shape: __string, location_name: "TokenKeyId"))
    APNSChannelRequest.struct_class = Types::APNSChannelRequest

    APNSChannelResponse.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, location_name: "ApplicationId"))
    APNSChannelResponse.add_member(:creation_date, Shapes::ShapeRef.new(shape: __string, location_name: "CreationDate"))
    APNSChannelResponse.add_member(:default_authentication_method, Shapes::ShapeRef.new(shape: __string, location_name: "DefaultAuthenticationMethod"))
    APNSChannelResponse.add_member(:enabled, Shapes::ShapeRef.new(shape: __boolean, location_name: "Enabled"))
    APNSChannelResponse.add_member(:has_credential, Shapes::ShapeRef.new(shape: __boolean, location_name: "HasCredential"))
    APNSChannelResponse.add_member(:has_token_key, Shapes::ShapeRef.new(shape: __boolean, location_name: "HasTokenKey"))
    APNSChannelResponse.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "Id"))
    APNSChannelResponse.add_member(:is_archived, Shapes::ShapeRef.new(shape: __boolean, location_name: "IsArchived"))
    APNSChannelResponse.add_member(:last_modified_by, Shapes::ShapeRef.new(shape: __string, location_name: "LastModifiedBy"))
    APNSChannelResponse.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: __string, location_name: "LastModifiedDate"))
    APNSChannelResponse.add_member(:platform, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "Platform"))
    APNSChannelResponse.add_member(:version, Shapes::ShapeRef.new(shape: __integer, location_name: "Version"))
    APNSChannelResponse.struct_class = Types::APNSChannelResponse

    APNSMessage.add_member(:apns_push_type, Shapes::ShapeRef.new(shape: __string, location_name: "APNSPushType"))
    APNSMessage.add_member(:action, Shapes::ShapeRef.new(shape: Action, location_name: "Action"))
    APNSMessage.add_member(:badge, Shapes::ShapeRef.new(shape: __integer, location_name: "Badge"))
    APNSMessage.add_member(:body, Shapes::ShapeRef.new(shape: __string, location_name: "Body"))
    APNSMessage.add_member(:category, Shapes::ShapeRef.new(shape: __string, location_name: "Category"))
    APNSMessage.add_member(:collapse_id, Shapes::ShapeRef.new(shape: __string, location_name: "CollapseId"))
    APNSMessage.add_member(:data, Shapes::ShapeRef.new(shape: MapOf__string, location_name: "Data"))
    APNSMessage.add_member(:media_url, Shapes::ShapeRef.new(shape: __string, location_name: "MediaUrl"))
    APNSMessage.add_member(:preferred_authentication_method, Shapes::ShapeRef.new(shape: __string, location_name: "PreferredAuthenticationMethod"))
    APNSMessage.add_member(:priority, Shapes::ShapeRef.new(shape: __string, location_name: "Priority"))
    APNSMessage.add_member(:raw_content, Shapes::ShapeRef.new(shape: __string, location_name: "RawContent"))
    APNSMessage.add_member(:silent_push, Shapes::ShapeRef.new(shape: __boolean, location_name: "SilentPush"))
    APNSMessage.add_member(:sound, Shapes::ShapeRef.new(shape: __string, location_name: "Sound"))
    APNSMessage.add_member(:substitutions, Shapes::ShapeRef.new(shape: MapOfListOf__string, location_name: "Substitutions"))
    APNSMessage.add_member(:thread_id, Shapes::ShapeRef.new(shape: __string, location_name: "ThreadId"))
    APNSMessage.add_member(:time_to_live, Shapes::ShapeRef.new(shape: __integer, location_name: "TimeToLive"))
    APNSMessage.add_member(:title, Shapes::ShapeRef.new(shape: __string, location_name: "Title"))
    APNSMessage.add_member(:url, Shapes::ShapeRef.new(shape: __string, location_name: "Url"))
    APNSMessage.struct_class = Types::APNSMessage

    APNSPushNotificationTemplate.add_member(:action, Shapes::ShapeRef.new(shape: Action, location_name: "Action"))
    APNSPushNotificationTemplate.add_member(:body, Shapes::ShapeRef.new(shape: __string, location_name: "Body"))
    APNSPushNotificationTemplate.add_member(:media_url, Shapes::ShapeRef.new(shape: __string, location_name: "MediaUrl"))
    APNSPushNotificationTemplate.add_member(:raw_content, Shapes::ShapeRef.new(shape: __string, location_name: "RawContent"))
    APNSPushNotificationTemplate.add_member(:sound, Shapes::ShapeRef.new(shape: __string, location_name: "Sound"))
    APNSPushNotificationTemplate.add_member(:title, Shapes::ShapeRef.new(shape: __string, location_name: "Title"))
    APNSPushNotificationTemplate.add_member(:url, Shapes::ShapeRef.new(shape: __string, location_name: "Url"))
    APNSPushNotificationTemplate.struct_class = Types::APNSPushNotificationTemplate

    APNSSandboxChannelRequest.add_member(:bundle_id, Shapes::ShapeRef.new(shape: __string, location_name: "BundleId"))
    APNSSandboxChannelRequest.add_member(:certificate, Shapes::ShapeRef.new(shape: __string, location_name: "Certificate"))
    APNSSandboxChannelRequest.add_member(:default_authentication_method, Shapes::ShapeRef.new(shape: __string, location_name: "DefaultAuthenticationMethod"))
    APNSSandboxChannelRequest.add_member(:enabled, Shapes::ShapeRef.new(shape: __boolean, location_name: "Enabled"))
    APNSSandboxChannelRequest.add_member(:private_key, Shapes::ShapeRef.new(shape: __string, location_name: "PrivateKey"))
    APNSSandboxChannelRequest.add_member(:team_id, Shapes::ShapeRef.new(shape: __string, location_name: "TeamId"))
    APNSSandboxChannelRequest.add_member(:token_key, Shapes::ShapeRef.new(shape: __string, location_name: "TokenKey"))
    APNSSandboxChannelRequest.add_member(:token_key_id, Shapes::ShapeRef.new(shape: __string, location_name: "TokenKeyId"))
    APNSSandboxChannelRequest.struct_class = Types::APNSSandboxChannelRequest

    APNSSandboxChannelResponse.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, location_name: "ApplicationId"))
    APNSSandboxChannelResponse.add_member(:creation_date, Shapes::ShapeRef.new(shape: __string, location_name: "CreationDate"))
    APNSSandboxChannelResponse.add_member(:default_authentication_method, Shapes::ShapeRef.new(shape: __string, location_name: "DefaultAuthenticationMethod"))
    APNSSandboxChannelResponse.add_member(:enabled, Shapes::ShapeRef.new(shape: __boolean, location_name: "Enabled"))
    APNSSandboxChannelResponse.add_member(:has_credential, Shapes::ShapeRef.new(shape: __boolean, location_name: "HasCredential"))
    APNSSandboxChannelResponse.add_member(:has_token_key, Shapes::ShapeRef.new(shape: __boolean, location_name: "HasTokenKey"))
    APNSSandboxChannelResponse.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "Id"))
    APNSSandboxChannelResponse.add_member(:is_archived, Shapes::ShapeRef.new(shape: __boolean, location_name: "IsArchived"))
    APNSSandboxChannelResponse.add_member(:last_modified_by, Shapes::ShapeRef.new(shape: __string, location_name: "LastModifiedBy"))
    APNSSandboxChannelResponse.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: __string, location_name: "LastModifiedDate"))
    APNSSandboxChannelResponse.add_member(:platform, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "Platform"))
    APNSSandboxChannelResponse.add_member(:version, Shapes::ShapeRef.new(shape: __integer, location_name: "Version"))
    APNSSandboxChannelResponse.struct_class = Types::APNSSandboxChannelResponse

    APNSVoipChannelRequest.add_member(:bundle_id, Shapes::ShapeRef.new(shape: __string, location_name: "BundleId"))
    APNSVoipChannelRequest.add_member(:certificate, Shapes::ShapeRef.new(shape: __string, location_name: "Certificate"))
    APNSVoipChannelRequest.add_member(:default_authentication_method, Shapes::ShapeRef.new(shape: __string, location_name: "DefaultAuthenticationMethod"))
    APNSVoipChannelRequest.add_member(:enabled, Shapes::ShapeRef.new(shape: __boolean, location_name: "Enabled"))
    APNSVoipChannelRequest.add_member(:private_key, Shapes::ShapeRef.new(shape: __string, location_name: "PrivateKey"))
    APNSVoipChannelRequest.add_member(:team_id, Shapes::ShapeRef.new(shape: __string, location_name: "TeamId"))
    APNSVoipChannelRequest.add_member(:token_key, Shapes::ShapeRef.new(shape: __string, location_name: "TokenKey"))
    APNSVoipChannelRequest.add_member(:token_key_id, Shapes::ShapeRef.new(shape: __string, location_name: "TokenKeyId"))
    APNSVoipChannelRequest.struct_class = Types::APNSVoipChannelRequest

    APNSVoipChannelResponse.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, location_name: "ApplicationId"))
    APNSVoipChannelResponse.add_member(:creation_date, Shapes::ShapeRef.new(shape: __string, location_name: "CreationDate"))
    APNSVoipChannelResponse.add_member(:default_authentication_method, Shapes::ShapeRef.new(shape: __string, location_name: "DefaultAuthenticationMethod"))
    APNSVoipChannelResponse.add_member(:enabled, Shapes::ShapeRef.new(shape: __boolean, location_name: "Enabled"))
    APNSVoipChannelResponse.add_member(:has_credential, Shapes::ShapeRef.new(shape: __boolean, location_name: "HasCredential"))
    APNSVoipChannelResponse.add_member(:has_token_key, Shapes::ShapeRef.new(shape: __boolean, location_name: "HasTokenKey"))
    APNSVoipChannelResponse.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "Id"))
    APNSVoipChannelResponse.add_member(:is_archived, Shapes::ShapeRef.new(shape: __boolean, location_name: "IsArchived"))
    APNSVoipChannelResponse.add_member(:last_modified_by, Shapes::ShapeRef.new(shape: __string, location_name: "LastModifiedBy"))
    APNSVoipChannelResponse.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: __string, location_name: "LastModifiedDate"))
    APNSVoipChannelResponse.add_member(:platform, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "Platform"))
    APNSVoipChannelResponse.add_member(:version, Shapes::ShapeRef.new(shape: __integer, location_name: "Version"))
    APNSVoipChannelResponse.struct_class = Types::APNSVoipChannelResponse

    APNSVoipSandboxChannelRequest.add_member(:bundle_id, Shapes::ShapeRef.new(shape: __string, location_name: "BundleId"))
    APNSVoipSandboxChannelRequest.add_member(:certificate, Shapes::ShapeRef.new(shape: __string, location_name: "Certificate"))
    APNSVoipSandboxChannelRequest.add_member(:default_authentication_method, Shapes::ShapeRef.new(shape: __string, location_name: "DefaultAuthenticationMethod"))
    APNSVoipSandboxChannelRequest.add_member(:enabled, Shapes::ShapeRef.new(shape: __boolean, location_name: "Enabled"))
    APNSVoipSandboxChannelRequest.add_member(:private_key, Shapes::ShapeRef.new(shape: __string, location_name: "PrivateKey"))
    APNSVoipSandboxChannelRequest.add_member(:team_id, Shapes::ShapeRef.new(shape: __string, location_name: "TeamId"))
    APNSVoipSandboxChannelRequest.add_member(:token_key, Shapes::ShapeRef.new(shape: __string, location_name: "TokenKey"))
    APNSVoipSandboxChannelRequest.add_member(:token_key_id, Shapes::ShapeRef.new(shape: __string, location_name: "TokenKeyId"))
    APNSVoipSandboxChannelRequest.struct_class = Types::APNSVoipSandboxChannelRequest

    APNSVoipSandboxChannelResponse.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, location_name: "ApplicationId"))
    APNSVoipSandboxChannelResponse.add_member(:creation_date, Shapes::ShapeRef.new(shape: __string, location_name: "CreationDate"))
    APNSVoipSandboxChannelResponse.add_member(:default_authentication_method, Shapes::ShapeRef.new(shape: __string, location_name: "DefaultAuthenticationMethod"))
    APNSVoipSandboxChannelResponse.add_member(:enabled, Shapes::ShapeRef.new(shape: __boolean, location_name: "Enabled"))
    APNSVoipSandboxChannelResponse.add_member(:has_credential, Shapes::ShapeRef.new(shape: __boolean, location_name: "HasCredential"))
    APNSVoipSandboxChannelResponse.add_member(:has_token_key, Shapes::ShapeRef.new(shape: __boolean, location_name: "HasTokenKey"))
    APNSVoipSandboxChannelResponse.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "Id"))
    APNSVoipSandboxChannelResponse.add_member(:is_archived, Shapes::ShapeRef.new(shape: __boolean, location_name: "IsArchived"))
    APNSVoipSandboxChannelResponse.add_member(:last_modified_by, Shapes::ShapeRef.new(shape: __string, location_name: "LastModifiedBy"))
    APNSVoipSandboxChannelResponse.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: __string, location_name: "LastModifiedDate"))
    APNSVoipSandboxChannelResponse.add_member(:platform, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "Platform"))
    APNSVoipSandboxChannelResponse.add_member(:version, Shapes::ShapeRef.new(shape: __integer, location_name: "Version"))
    APNSVoipSandboxChannelResponse.struct_class = Types::APNSVoipSandboxChannelResponse

    ActivitiesResponse.add_member(:item, Shapes::ShapeRef.new(shape: ListOfActivityResponse, required: true, location_name: "Item"))
    ActivitiesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "NextToken"))
    ActivitiesResponse.struct_class = Types::ActivitiesResponse

    Activity.add_member(:custom, Shapes::ShapeRef.new(shape: CustomMessageActivity, location_name: "CUSTOM"))
    Activity.add_member(:conditional_split, Shapes::ShapeRef.new(shape: ConditionalSplitActivity, location_name: "ConditionalSplit"))
    Activity.add_member(:description, Shapes::ShapeRef.new(shape: __string, location_name: "Description"))
    Activity.add_member(:email, Shapes::ShapeRef.new(shape: EmailMessageActivity, location_name: "EMAIL"))
    Activity.add_member(:holdout, Shapes::ShapeRef.new(shape: HoldoutActivity, location_name: "Holdout"))
    Activity.add_member(:multi_condition, Shapes::ShapeRef.new(shape: MultiConditionalSplitActivity, location_name: "MultiCondition"))
    Activity.add_member(:push, Shapes::ShapeRef.new(shape: PushMessageActivity, location_name: "PUSH"))
    Activity.add_member(:random_split, Shapes::ShapeRef.new(shape: RandomSplitActivity, location_name: "RandomSplit"))
    Activity.add_member(:sms, Shapes::ShapeRef.new(shape: SMSMessageActivity, location_name: "SMS"))
    Activity.add_member(:wait, Shapes::ShapeRef.new(shape: WaitActivity, location_name: "Wait"))
    Activity.struct_class = Types::Activity

    ActivityResponse.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "ApplicationId"))
    ActivityResponse.add_member(:campaign_id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "CampaignId"))
    ActivityResponse.add_member(:end, Shapes::ShapeRef.new(shape: __string, location_name: "End"))
    ActivityResponse.add_member(:id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "Id"))
    ActivityResponse.add_member(:result, Shapes::ShapeRef.new(shape: __string, location_name: "Result"))
    ActivityResponse.add_member(:scheduled_start, Shapes::ShapeRef.new(shape: __string, location_name: "ScheduledStart"))
    ActivityResponse.add_member(:start, Shapes::ShapeRef.new(shape: __string, location_name: "Start"))
    ActivityResponse.add_member(:state, Shapes::ShapeRef.new(shape: __string, location_name: "State"))
    ActivityResponse.add_member(:successful_endpoint_count, Shapes::ShapeRef.new(shape: __integer, location_name: "SuccessfulEndpointCount"))
    ActivityResponse.add_member(:timezones_completed_count, Shapes::ShapeRef.new(shape: __integer, location_name: "TimezonesCompletedCount"))
    ActivityResponse.add_member(:timezones_total_count, Shapes::ShapeRef.new(shape: __integer, location_name: "TimezonesTotalCount"))
    ActivityResponse.add_member(:total_endpoint_count, Shapes::ShapeRef.new(shape: __integer, location_name: "TotalEndpointCount"))
    ActivityResponse.add_member(:treatment_id, Shapes::ShapeRef.new(shape: __string, location_name: "TreatmentId"))
    ActivityResponse.struct_class = Types::ActivityResponse

    AddressConfiguration.add_member(:body_override, Shapes::ShapeRef.new(shape: __string, location_name: "BodyOverride"))
    AddressConfiguration.add_member(:channel_type, Shapes::ShapeRef.new(shape: ChannelType, location_name: "ChannelType"))
    AddressConfiguration.add_member(:context, Shapes::ShapeRef.new(shape: MapOf__string, location_name: "Context"))
    AddressConfiguration.add_member(:raw_content, Shapes::ShapeRef.new(shape: __string, location_name: "RawContent"))
    AddressConfiguration.add_member(:substitutions, Shapes::ShapeRef.new(shape: MapOfListOf__string, location_name: "Substitutions"))
    AddressConfiguration.add_member(:title_override, Shapes::ShapeRef.new(shape: __string, location_name: "TitleOverride"))
    AddressConfiguration.struct_class = Types::AddressConfiguration

    AndroidPushNotificationTemplate.add_member(:action, Shapes::ShapeRef.new(shape: Action, location_name: "Action"))
    AndroidPushNotificationTemplate.add_member(:body, Shapes::ShapeRef.new(shape: __string, location_name: "Body"))
    AndroidPushNotificationTemplate.add_member(:image_icon_url, Shapes::ShapeRef.new(shape: __string, location_name: "ImageIconUrl"))
    AndroidPushNotificationTemplate.add_member(:image_url, Shapes::ShapeRef.new(shape: __string, location_name: "ImageUrl"))
    AndroidPushNotificationTemplate.add_member(:raw_content, Shapes::ShapeRef.new(shape: __string, location_name: "RawContent"))
    AndroidPushNotificationTemplate.add_member(:small_image_icon_url, Shapes::ShapeRef.new(shape: __string, location_name: "SmallImageIconUrl"))
    AndroidPushNotificationTemplate.add_member(:sound, Shapes::ShapeRef.new(shape: __string, location_name: "Sound"))
    AndroidPushNotificationTemplate.add_member(:title, Shapes::ShapeRef.new(shape: __string, location_name: "Title"))
    AndroidPushNotificationTemplate.add_member(:url, Shapes::ShapeRef.new(shape: __string, location_name: "Url"))
    AndroidPushNotificationTemplate.struct_class = Types::AndroidPushNotificationTemplate

    ApplicationDateRangeKpiResponse.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "ApplicationId"))
    ApplicationDateRangeKpiResponse.add_member(:end_time, Shapes::ShapeRef.new(shape: __timestampIso8601, required: true, location_name: "EndTime"))
    ApplicationDateRangeKpiResponse.add_member(:kpi_name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "KpiName"))
    ApplicationDateRangeKpiResponse.add_member(:kpi_result, Shapes::ShapeRef.new(shape: BaseKpiResult, required: true, location_name: "KpiResult"))
    ApplicationDateRangeKpiResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "NextToken"))
    ApplicationDateRangeKpiResponse.add_member(:start_time, Shapes::ShapeRef.new(shape: __timestampIso8601, required: true, location_name: "StartTime"))
    ApplicationDateRangeKpiResponse.struct_class = Types::ApplicationDateRangeKpiResponse

    ApplicationResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "Arn"))
    ApplicationResponse.add_member(:id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "Id"))
    ApplicationResponse.add_member(:name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "Name"))
    ApplicationResponse.add_member(:tags, Shapes::ShapeRef.new(shape: MapOf__string, location_name: "tags"))
    ApplicationResponse.struct_class = Types::ApplicationResponse

    ApplicationSettingsResource.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "ApplicationId"))
    ApplicationSettingsResource.add_member(:campaign_hook, Shapes::ShapeRef.new(shape: CampaignHook, location_name: "CampaignHook"))
    ApplicationSettingsResource.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: __string, location_name: "LastModifiedDate"))
    ApplicationSettingsResource.add_member(:limits, Shapes::ShapeRef.new(shape: CampaignLimits, location_name: "Limits"))
    ApplicationSettingsResource.add_member(:quiet_time, Shapes::ShapeRef.new(shape: QuietTime, location_name: "QuietTime"))
    ApplicationSettingsResource.struct_class = Types::ApplicationSettingsResource

    ApplicationsResponse.add_member(:item, Shapes::ShapeRef.new(shape: ListOfApplicationResponse, location_name: "Item"))
    ApplicationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "NextToken"))
    ApplicationsResponse.struct_class = Types::ApplicationsResponse

    AttributeDimension.add_member(:attribute_type, Shapes::ShapeRef.new(shape: AttributeType, location_name: "AttributeType"))
    AttributeDimension.add_member(:values, Shapes::ShapeRef.new(shape: ListOf__string, required: true, location_name: "Values"))
    AttributeDimension.struct_class = Types::AttributeDimension

    AttributesResource.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "ApplicationId"))
    AttributesResource.add_member(:attribute_type, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "AttributeType"))
    AttributesResource.add_member(:attributes, Shapes::ShapeRef.new(shape: ListOf__string, location_name: "Attributes"))
    AttributesResource.struct_class = Types::AttributesResource

    BadRequestException.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "Message"))
    BadRequestException.add_member(:request_id, Shapes::ShapeRef.new(shape: __string, location_name: "RequestID"))
    BadRequestException.struct_class = Types::BadRequestException

    BaiduChannelRequest.add_member(:api_key, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "ApiKey"))
    BaiduChannelRequest.add_member(:enabled, Shapes::ShapeRef.new(shape: __boolean, location_name: "Enabled"))
    BaiduChannelRequest.add_member(:secret_key, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "SecretKey"))
    BaiduChannelRequest.struct_class = Types::BaiduChannelRequest

    BaiduChannelResponse.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, location_name: "ApplicationId"))
    BaiduChannelResponse.add_member(:creation_date, Shapes::ShapeRef.new(shape: __string, location_name: "CreationDate"))
    BaiduChannelResponse.add_member(:credential, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "Credential"))
    BaiduChannelResponse.add_member(:enabled, Shapes::ShapeRef.new(shape: __boolean, location_name: "Enabled"))
    BaiduChannelResponse.add_member(:has_credential, Shapes::ShapeRef.new(shape: __boolean, location_name: "HasCredential"))
    BaiduChannelResponse.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "Id"))
    BaiduChannelResponse.add_member(:is_archived, Shapes::ShapeRef.new(shape: __boolean, location_name: "IsArchived"))
    BaiduChannelResponse.add_member(:last_modified_by, Shapes::ShapeRef.new(shape: __string, location_name: "LastModifiedBy"))
    BaiduChannelResponse.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: __string, location_name: "LastModifiedDate"))
    BaiduChannelResponse.add_member(:platform, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "Platform"))
    BaiduChannelResponse.add_member(:version, Shapes::ShapeRef.new(shape: __integer, location_name: "Version"))
    BaiduChannelResponse.struct_class = Types::BaiduChannelResponse

    BaiduMessage.add_member(:action, Shapes::ShapeRef.new(shape: Action, location_name: "Action"))
    BaiduMessage.add_member(:body, Shapes::ShapeRef.new(shape: __string, location_name: "Body"))
    BaiduMessage.add_member(:data, Shapes::ShapeRef.new(shape: MapOf__string, location_name: "Data"))
    BaiduMessage.add_member(:icon_reference, Shapes::ShapeRef.new(shape: __string, location_name: "IconReference"))
    BaiduMessage.add_member(:image_icon_url, Shapes::ShapeRef.new(shape: __string, location_name: "ImageIconUrl"))
    BaiduMessage.add_member(:image_url, Shapes::ShapeRef.new(shape: __string, location_name: "ImageUrl"))
    BaiduMessage.add_member(:raw_content, Shapes::ShapeRef.new(shape: __string, location_name: "RawContent"))
    BaiduMessage.add_member(:silent_push, Shapes::ShapeRef.new(shape: __boolean, location_name: "SilentPush"))
    BaiduMessage.add_member(:small_image_icon_url, Shapes::ShapeRef.new(shape: __string, location_name: "SmallImageIconUrl"))
    BaiduMessage.add_member(:sound, Shapes::ShapeRef.new(shape: __string, location_name: "Sound"))
    BaiduMessage.add_member(:substitutions, Shapes::ShapeRef.new(shape: MapOfListOf__string, location_name: "Substitutions"))
    BaiduMessage.add_member(:time_to_live, Shapes::ShapeRef.new(shape: __integer, location_name: "TimeToLive"))
    BaiduMessage.add_member(:title, Shapes::ShapeRef.new(shape: __string, location_name: "Title"))
    BaiduMessage.add_member(:url, Shapes::ShapeRef.new(shape: __string, location_name: "Url"))
    BaiduMessage.struct_class = Types::BaiduMessage

    BaseKpiResult.add_member(:rows, Shapes::ShapeRef.new(shape: ListOfResultRow, required: true, location_name: "Rows"))
    BaseKpiResult.struct_class = Types::BaseKpiResult

    CampaignCustomMessage.add_member(:data, Shapes::ShapeRef.new(shape: __string, location_name: "Data"))
    CampaignCustomMessage.struct_class = Types::CampaignCustomMessage

    CampaignDateRangeKpiResponse.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "ApplicationId"))
    CampaignDateRangeKpiResponse.add_member(:campaign_id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "CampaignId"))
    CampaignDateRangeKpiResponse.add_member(:end_time, Shapes::ShapeRef.new(shape: __timestampIso8601, required: true, location_name: "EndTime"))
    CampaignDateRangeKpiResponse.add_member(:kpi_name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "KpiName"))
    CampaignDateRangeKpiResponse.add_member(:kpi_result, Shapes::ShapeRef.new(shape: BaseKpiResult, required: true, location_name: "KpiResult"))
    CampaignDateRangeKpiResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "NextToken"))
    CampaignDateRangeKpiResponse.add_member(:start_time, Shapes::ShapeRef.new(shape: __timestampIso8601, required: true, location_name: "StartTime"))
    CampaignDateRangeKpiResponse.struct_class = Types::CampaignDateRangeKpiResponse

    CampaignEmailMessage.add_member(:body, Shapes::ShapeRef.new(shape: __string, location_name: "Body"))
    CampaignEmailMessage.add_member(:from_address, Shapes::ShapeRef.new(shape: __string, location_name: "FromAddress"))
    CampaignEmailMessage.add_member(:html_body, Shapes::ShapeRef.new(shape: __string, location_name: "HtmlBody"))
    CampaignEmailMessage.add_member(:title, Shapes::ShapeRef.new(shape: __string, location_name: "Title"))
    CampaignEmailMessage.struct_class = Types::CampaignEmailMessage

    CampaignEventFilter.add_member(:dimensions, Shapes::ShapeRef.new(shape: EventDimensions, required: true, location_name: "Dimensions"))
    CampaignEventFilter.add_member(:filter_type, Shapes::ShapeRef.new(shape: FilterType, required: true, location_name: "FilterType"))
    CampaignEventFilter.struct_class = Types::CampaignEventFilter

    CampaignHook.add_member(:lambda_function_name, Shapes::ShapeRef.new(shape: __string, location_name: "LambdaFunctionName"))
    CampaignHook.add_member(:mode, Shapes::ShapeRef.new(shape: Mode, location_name: "Mode"))
    CampaignHook.add_member(:web_url, Shapes::ShapeRef.new(shape: __string, location_name: "WebUrl"))
    CampaignHook.struct_class = Types::CampaignHook

    CampaignLimits.add_member(:daily, Shapes::ShapeRef.new(shape: __integer, location_name: "Daily"))
    CampaignLimits.add_member(:maximum_duration, Shapes::ShapeRef.new(shape: __integer, location_name: "MaximumDuration"))
    CampaignLimits.add_member(:messages_per_second, Shapes::ShapeRef.new(shape: __integer, location_name: "MessagesPerSecond"))
    CampaignLimits.add_member(:total, Shapes::ShapeRef.new(shape: __integer, location_name: "Total"))
    CampaignLimits.struct_class = Types::CampaignLimits

    CampaignResponse.add_member(:additional_treatments, Shapes::ShapeRef.new(shape: ListOfTreatmentResource, location_name: "AdditionalTreatments"))
    CampaignResponse.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "ApplicationId"))
    CampaignResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "Arn"))
    CampaignResponse.add_member(:creation_date, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "CreationDate"))
    CampaignResponse.add_member(:custom_delivery_configuration, Shapes::ShapeRef.new(shape: CustomDeliveryConfiguration, location_name: "CustomDeliveryConfiguration"))
    CampaignResponse.add_member(:default_state, Shapes::ShapeRef.new(shape: CampaignState, location_name: "DefaultState"))
    CampaignResponse.add_member(:description, Shapes::ShapeRef.new(shape: __string, location_name: "Description"))
    CampaignResponse.add_member(:holdout_percent, Shapes::ShapeRef.new(shape: __integer, location_name: "HoldoutPercent"))
    CampaignResponse.add_member(:hook, Shapes::ShapeRef.new(shape: CampaignHook, location_name: "Hook"))
    CampaignResponse.add_member(:id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "Id"))
    CampaignResponse.add_member(:is_paused, Shapes::ShapeRef.new(shape: __boolean, location_name: "IsPaused"))
    CampaignResponse.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "LastModifiedDate"))
    CampaignResponse.add_member(:limits, Shapes::ShapeRef.new(shape: CampaignLimits, location_name: "Limits"))
    CampaignResponse.add_member(:message_configuration, Shapes::ShapeRef.new(shape: MessageConfiguration, location_name: "MessageConfiguration"))
    CampaignResponse.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "Name"))
    CampaignResponse.add_member(:schedule, Shapes::ShapeRef.new(shape: Schedule, location_name: "Schedule"))
    CampaignResponse.add_member(:segment_id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "SegmentId"))
    CampaignResponse.add_member(:segment_version, Shapes::ShapeRef.new(shape: __integer, required: true, location_name: "SegmentVersion"))
    CampaignResponse.add_member(:state, Shapes::ShapeRef.new(shape: CampaignState, location_name: "State"))
    CampaignResponse.add_member(:tags, Shapes::ShapeRef.new(shape: MapOf__string, location_name: "tags"))
    CampaignResponse.add_member(:template_configuration, Shapes::ShapeRef.new(shape: TemplateConfiguration, location_name: "TemplateConfiguration"))
    CampaignResponse.add_member(:treatment_description, Shapes::ShapeRef.new(shape: __string, location_name: "TreatmentDescription"))
    CampaignResponse.add_member(:treatment_name, Shapes::ShapeRef.new(shape: __string, location_name: "TreatmentName"))
    CampaignResponse.add_member(:version, Shapes::ShapeRef.new(shape: __integer, location_name: "Version"))
    CampaignResponse.struct_class = Types::CampaignResponse

    CampaignSmsMessage.add_member(:body, Shapes::ShapeRef.new(shape: __string, location_name: "Body"))
    CampaignSmsMessage.add_member(:message_type, Shapes::ShapeRef.new(shape: MessageType, location_name: "MessageType"))
    CampaignSmsMessage.add_member(:sender_id, Shapes::ShapeRef.new(shape: __string, location_name: "SenderId"))
    CampaignSmsMessage.struct_class = Types::CampaignSmsMessage

    CampaignState.add_member(:campaign_status, Shapes::ShapeRef.new(shape: CampaignStatus, location_name: "CampaignStatus"))
    CampaignState.struct_class = Types::CampaignState

    CampaignsResponse.add_member(:item, Shapes::ShapeRef.new(shape: ListOfCampaignResponse, required: true, location_name: "Item"))
    CampaignsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "NextToken"))
    CampaignsResponse.struct_class = Types::CampaignsResponse

    ChannelResponse.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, location_name: "ApplicationId"))
    ChannelResponse.add_member(:creation_date, Shapes::ShapeRef.new(shape: __string, location_name: "CreationDate"))
    ChannelResponse.add_member(:enabled, Shapes::ShapeRef.new(shape: __boolean, location_name: "Enabled"))
    ChannelResponse.add_member(:has_credential, Shapes::ShapeRef.new(shape: __boolean, location_name: "HasCredential"))
    ChannelResponse.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "Id"))
    ChannelResponse.add_member(:is_archived, Shapes::ShapeRef.new(shape: __boolean, location_name: "IsArchived"))
    ChannelResponse.add_member(:last_modified_by, Shapes::ShapeRef.new(shape: __string, location_name: "LastModifiedBy"))
    ChannelResponse.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: __string, location_name: "LastModifiedDate"))
    ChannelResponse.add_member(:version, Shapes::ShapeRef.new(shape: __integer, location_name: "Version"))
    ChannelResponse.struct_class = Types::ChannelResponse

    ChannelsResponse.add_member(:channels, Shapes::ShapeRef.new(shape: MapOfChannelResponse, required: true, location_name: "Channels"))
    ChannelsResponse.struct_class = Types::ChannelsResponse

    Condition.add_member(:conditions, Shapes::ShapeRef.new(shape: ListOfSimpleCondition, location_name: "Conditions"))
    Condition.add_member(:operator, Shapes::ShapeRef.new(shape: Operator, location_name: "Operator"))
    Condition.struct_class = Types::Condition

    ConditionalSplitActivity.add_member(:condition, Shapes::ShapeRef.new(shape: Condition, location_name: "Condition"))
    ConditionalSplitActivity.add_member(:evaluation_wait_time, Shapes::ShapeRef.new(shape: WaitTime, location_name: "EvaluationWaitTime"))
    ConditionalSplitActivity.add_member(:false_activity, Shapes::ShapeRef.new(shape: __string, location_name: "FalseActivity"))
    ConditionalSplitActivity.add_member(:true_activity, Shapes::ShapeRef.new(shape: __string, location_name: "TrueActivity"))
    ConditionalSplitActivity.struct_class = Types::ConditionalSplitActivity

    CreateAppRequest.add_member(:create_application_request, Shapes::ShapeRef.new(shape: CreateApplicationRequest, required: true, location_name: "CreateApplicationRequest"))
    CreateAppRequest.struct_class = Types::CreateAppRequest
    CreateAppRequest[:payload] = :create_application_request
    CreateAppRequest[:payload_member] = CreateAppRequest.member(:create_application_request)

    CreateAppResponse.add_member(:application_response, Shapes::ShapeRef.new(shape: ApplicationResponse, required: true, location_name: "ApplicationResponse"))
    CreateAppResponse.struct_class = Types::CreateAppResponse
    CreateAppResponse[:payload] = :application_response
    CreateAppResponse[:payload_member] = CreateAppResponse.member(:application_response)

    CreateApplicationRequest.add_member(:name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "Name"))
    CreateApplicationRequest.add_member(:tags, Shapes::ShapeRef.new(shape: MapOf__string, location_name: "tags"))
    CreateApplicationRequest.struct_class = Types::CreateApplicationRequest

    CreateCampaignRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "application-id"))
    CreateCampaignRequest.add_member(:write_campaign_request, Shapes::ShapeRef.new(shape: WriteCampaignRequest, required: true, location_name: "WriteCampaignRequest"))
    CreateCampaignRequest.struct_class = Types::CreateCampaignRequest
    CreateCampaignRequest[:payload] = :write_campaign_request
    CreateCampaignRequest[:payload_member] = CreateCampaignRequest.member(:write_campaign_request)

    CreateCampaignResponse.add_member(:campaign_response, Shapes::ShapeRef.new(shape: CampaignResponse, required: true, location_name: "CampaignResponse"))
    CreateCampaignResponse.struct_class = Types::CreateCampaignResponse
    CreateCampaignResponse[:payload] = :campaign_response
    CreateCampaignResponse[:payload_member] = CreateCampaignResponse.member(:campaign_response)

    CreateEmailTemplateRequest.add_member(:email_template_request, Shapes::ShapeRef.new(shape: EmailTemplateRequest, required: true, location_name: "EmailTemplateRequest"))
    CreateEmailTemplateRequest.add_member(:template_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "template-name"))
    CreateEmailTemplateRequest.struct_class = Types::CreateEmailTemplateRequest
    CreateEmailTemplateRequest[:payload] = :email_template_request
    CreateEmailTemplateRequest[:payload_member] = CreateEmailTemplateRequest.member(:email_template_request)

    CreateEmailTemplateResponse.add_member(:create_template_message_body, Shapes::ShapeRef.new(shape: CreateTemplateMessageBody, required: true, location_name: "CreateTemplateMessageBody"))
    CreateEmailTemplateResponse.struct_class = Types::CreateEmailTemplateResponse
    CreateEmailTemplateResponse[:payload] = :create_template_message_body
    CreateEmailTemplateResponse[:payload_member] = CreateEmailTemplateResponse.member(:create_template_message_body)

    CreateExportJobRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "application-id"))
    CreateExportJobRequest.add_member(:export_job_request, Shapes::ShapeRef.new(shape: ExportJobRequest, required: true, location_name: "ExportJobRequest"))
    CreateExportJobRequest.struct_class = Types::CreateExportJobRequest
    CreateExportJobRequest[:payload] = :export_job_request
    CreateExportJobRequest[:payload_member] = CreateExportJobRequest.member(:export_job_request)

    CreateExportJobResponse.add_member(:export_job_response, Shapes::ShapeRef.new(shape: ExportJobResponse, required: true, location_name: "ExportJobResponse"))
    CreateExportJobResponse.struct_class = Types::CreateExportJobResponse
    CreateExportJobResponse[:payload] = :export_job_response
    CreateExportJobResponse[:payload_member] = CreateExportJobResponse.member(:export_job_response)

    CreateImportJobRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "application-id"))
    CreateImportJobRequest.add_member(:import_job_request, Shapes::ShapeRef.new(shape: ImportJobRequest, required: true, location_name: "ImportJobRequest"))
    CreateImportJobRequest.struct_class = Types::CreateImportJobRequest
    CreateImportJobRequest[:payload] = :import_job_request
    CreateImportJobRequest[:payload_member] = CreateImportJobRequest.member(:import_job_request)

    CreateImportJobResponse.add_member(:import_job_response, Shapes::ShapeRef.new(shape: ImportJobResponse, required: true, location_name: "ImportJobResponse"))
    CreateImportJobResponse.struct_class = Types::CreateImportJobResponse
    CreateImportJobResponse[:payload] = :import_job_response
    CreateImportJobResponse[:payload_member] = CreateImportJobResponse.member(:import_job_response)

    CreateJourneyRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "application-id"))
    CreateJourneyRequest.add_member(:write_journey_request, Shapes::ShapeRef.new(shape: WriteJourneyRequest, required: true, location_name: "WriteJourneyRequest"))
    CreateJourneyRequest.struct_class = Types::CreateJourneyRequest
    CreateJourneyRequest[:payload] = :write_journey_request
    CreateJourneyRequest[:payload_member] = CreateJourneyRequest.member(:write_journey_request)

    CreateJourneyResponse.add_member(:journey_response, Shapes::ShapeRef.new(shape: JourneyResponse, required: true, location_name: "JourneyResponse"))
    CreateJourneyResponse.struct_class = Types::CreateJourneyResponse
    CreateJourneyResponse[:payload] = :journey_response
    CreateJourneyResponse[:payload_member] = CreateJourneyResponse.member(:journey_response)

    CreatePushTemplateRequest.add_member(:push_notification_template_request, Shapes::ShapeRef.new(shape: PushNotificationTemplateRequest, required: true, location_name: "PushNotificationTemplateRequest"))
    CreatePushTemplateRequest.add_member(:template_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "template-name"))
    CreatePushTemplateRequest.struct_class = Types::CreatePushTemplateRequest
    CreatePushTemplateRequest[:payload] = :push_notification_template_request
    CreatePushTemplateRequest[:payload_member] = CreatePushTemplateRequest.member(:push_notification_template_request)

    CreatePushTemplateResponse.add_member(:create_template_message_body, Shapes::ShapeRef.new(shape: CreateTemplateMessageBody, required: true, location_name: "CreateTemplateMessageBody"))
    CreatePushTemplateResponse.struct_class = Types::CreatePushTemplateResponse
    CreatePushTemplateResponse[:payload] = :create_template_message_body
    CreatePushTemplateResponse[:payload_member] = CreatePushTemplateResponse.member(:create_template_message_body)

    CreateRecommenderConfiguration.add_member(:attributes, Shapes::ShapeRef.new(shape: MapOf__string, location_name: "Attributes"))
    CreateRecommenderConfiguration.add_member(:description, Shapes::ShapeRef.new(shape: __string, location_name: "Description"))
    CreateRecommenderConfiguration.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "Name"))
    CreateRecommenderConfiguration.add_member(:recommendation_provider_id_type, Shapes::ShapeRef.new(shape: __string, location_name: "RecommendationProviderIdType"))
    CreateRecommenderConfiguration.add_member(:recommendation_provider_role_arn, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "RecommendationProviderRoleArn"))
    CreateRecommenderConfiguration.add_member(:recommendation_provider_uri, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "RecommendationProviderUri"))
    CreateRecommenderConfiguration.add_member(:recommendation_transformer_uri, Shapes::ShapeRef.new(shape: __string, location_name: "RecommendationTransformerUri"))
    CreateRecommenderConfiguration.add_member(:recommendations_display_name, Shapes::ShapeRef.new(shape: __string, location_name: "RecommendationsDisplayName"))
    CreateRecommenderConfiguration.add_member(:recommendations_per_message, Shapes::ShapeRef.new(shape: __integer, location_name: "RecommendationsPerMessage"))
    CreateRecommenderConfiguration.struct_class = Types::CreateRecommenderConfiguration

    CreateRecommenderConfigurationRequest.add_member(:create_recommender_configuration, Shapes::ShapeRef.new(shape: CreateRecommenderConfiguration, required: true, location_name: "CreateRecommenderConfiguration"))
    CreateRecommenderConfigurationRequest.struct_class = Types::CreateRecommenderConfigurationRequest
    CreateRecommenderConfigurationRequest[:payload] = :create_recommender_configuration
    CreateRecommenderConfigurationRequest[:payload_member] = CreateRecommenderConfigurationRequest.member(:create_recommender_configuration)

    CreateRecommenderConfigurationResponse.add_member(:recommender_configuration_response, Shapes::ShapeRef.new(shape: RecommenderConfigurationResponse, required: true, location_name: "RecommenderConfigurationResponse"))
    CreateRecommenderConfigurationResponse.struct_class = Types::CreateRecommenderConfigurationResponse
    CreateRecommenderConfigurationResponse[:payload] = :recommender_configuration_response
    CreateRecommenderConfigurationResponse[:payload_member] = CreateRecommenderConfigurationResponse.member(:recommender_configuration_response)

    CreateSegmentRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "application-id"))
    CreateSegmentRequest.add_member(:write_segment_request, Shapes::ShapeRef.new(shape: WriteSegmentRequest, required: true, location_name: "WriteSegmentRequest"))
    CreateSegmentRequest.struct_class = Types::CreateSegmentRequest
    CreateSegmentRequest[:payload] = :write_segment_request
    CreateSegmentRequest[:payload_member] = CreateSegmentRequest.member(:write_segment_request)

    CreateSegmentResponse.add_member(:segment_response, Shapes::ShapeRef.new(shape: SegmentResponse, required: true, location_name: "SegmentResponse"))
    CreateSegmentResponse.struct_class = Types::CreateSegmentResponse
    CreateSegmentResponse[:payload] = :segment_response
    CreateSegmentResponse[:payload_member] = CreateSegmentResponse.member(:segment_response)

    CreateSmsTemplateRequest.add_member(:sms_template_request, Shapes::ShapeRef.new(shape: SMSTemplateRequest, required: true, location_name: "SMSTemplateRequest"))
    CreateSmsTemplateRequest.add_member(:template_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "template-name"))
    CreateSmsTemplateRequest.struct_class = Types::CreateSmsTemplateRequest
    CreateSmsTemplateRequest[:payload] = :sms_template_request
    CreateSmsTemplateRequest[:payload_member] = CreateSmsTemplateRequest.member(:sms_template_request)

    CreateSmsTemplateResponse.add_member(:create_template_message_body, Shapes::ShapeRef.new(shape: CreateTemplateMessageBody, required: true, location_name: "CreateTemplateMessageBody"))
    CreateSmsTemplateResponse.struct_class = Types::CreateSmsTemplateResponse
    CreateSmsTemplateResponse[:payload] = :create_template_message_body
    CreateSmsTemplateResponse[:payload_member] = CreateSmsTemplateResponse.member(:create_template_message_body)

    CreateTemplateMessageBody.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "Arn"))
    CreateTemplateMessageBody.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "Message"))
    CreateTemplateMessageBody.add_member(:request_id, Shapes::ShapeRef.new(shape: __string, location_name: "RequestID"))
    CreateTemplateMessageBody.struct_class = Types::CreateTemplateMessageBody

    CreateVoiceTemplateRequest.add_member(:template_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "template-name"))
    CreateVoiceTemplateRequest.add_member(:voice_template_request, Shapes::ShapeRef.new(shape: VoiceTemplateRequest, required: true, location_name: "VoiceTemplateRequest"))
    CreateVoiceTemplateRequest.struct_class = Types::CreateVoiceTemplateRequest
    CreateVoiceTemplateRequest[:payload] = :voice_template_request
    CreateVoiceTemplateRequest[:payload_member] = CreateVoiceTemplateRequest.member(:voice_template_request)

    CreateVoiceTemplateResponse.add_member(:create_template_message_body, Shapes::ShapeRef.new(shape: CreateTemplateMessageBody, required: true, location_name: "CreateTemplateMessageBody"))
    CreateVoiceTemplateResponse.struct_class = Types::CreateVoiceTemplateResponse
    CreateVoiceTemplateResponse[:payload] = :create_template_message_body
    CreateVoiceTemplateResponse[:payload_member] = CreateVoiceTemplateResponse.member(:create_template_message_body)

    CustomDeliveryConfiguration.add_member(:delivery_uri, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "DeliveryUri"))
    CustomDeliveryConfiguration.add_member(:endpoint_types, Shapes::ShapeRef.new(shape: ListOf__EndpointTypesElement, location_name: "EndpointTypes"))
    CustomDeliveryConfiguration.struct_class = Types::CustomDeliveryConfiguration

    CustomMessageActivity.add_member(:delivery_uri, Shapes::ShapeRef.new(shape: __string, location_name: "DeliveryUri"))
    CustomMessageActivity.add_member(:endpoint_types, Shapes::ShapeRef.new(shape: ListOf__EndpointTypesElement, location_name: "EndpointTypes"))
    CustomMessageActivity.add_member(:message_config, Shapes::ShapeRef.new(shape: JourneyCustomMessage, location_name: "MessageConfig"))
    CustomMessageActivity.add_member(:next_activity, Shapes::ShapeRef.new(shape: __string, location_name: "NextActivity"))
    CustomMessageActivity.add_member(:template_name, Shapes::ShapeRef.new(shape: __string, location_name: "TemplateName"))
    CustomMessageActivity.add_member(:template_version, Shapes::ShapeRef.new(shape: __string, location_name: "TemplateVersion"))
    CustomMessageActivity.struct_class = Types::CustomMessageActivity

    DefaultMessage.add_member(:body, Shapes::ShapeRef.new(shape: __string, location_name: "Body"))
    DefaultMessage.add_member(:substitutions, Shapes::ShapeRef.new(shape: MapOfListOf__string, location_name: "Substitutions"))
    DefaultMessage.struct_class = Types::DefaultMessage

    DefaultPushNotificationMessage.add_member(:action, Shapes::ShapeRef.new(shape: Action, location_name: "Action"))
    DefaultPushNotificationMessage.add_member(:body, Shapes::ShapeRef.new(shape: __string, location_name: "Body"))
    DefaultPushNotificationMessage.add_member(:data, Shapes::ShapeRef.new(shape: MapOf__string, location_name: "Data"))
    DefaultPushNotificationMessage.add_member(:silent_push, Shapes::ShapeRef.new(shape: __boolean, location_name: "SilentPush"))
    DefaultPushNotificationMessage.add_member(:substitutions, Shapes::ShapeRef.new(shape: MapOfListOf__string, location_name: "Substitutions"))
    DefaultPushNotificationMessage.add_member(:title, Shapes::ShapeRef.new(shape: __string, location_name: "Title"))
    DefaultPushNotificationMessage.add_member(:url, Shapes::ShapeRef.new(shape: __string, location_name: "Url"))
    DefaultPushNotificationMessage.struct_class = Types::DefaultPushNotificationMessage

    DefaultPushNotificationTemplate.add_member(:action, Shapes::ShapeRef.new(shape: Action, location_name: "Action"))
    DefaultPushNotificationTemplate.add_member(:body, Shapes::ShapeRef.new(shape: __string, location_name: "Body"))
    DefaultPushNotificationTemplate.add_member(:sound, Shapes::ShapeRef.new(shape: __string, location_name: "Sound"))
    DefaultPushNotificationTemplate.add_member(:title, Shapes::ShapeRef.new(shape: __string, location_name: "Title"))
    DefaultPushNotificationTemplate.add_member(:url, Shapes::ShapeRef.new(shape: __string, location_name: "Url"))
    DefaultPushNotificationTemplate.struct_class = Types::DefaultPushNotificationTemplate

    DeleteAdmChannelRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "application-id"))
    DeleteAdmChannelRequest.struct_class = Types::DeleteAdmChannelRequest

    DeleteAdmChannelResponse.add_member(:adm_channel_response, Shapes::ShapeRef.new(shape: ADMChannelResponse, required: true, location_name: "ADMChannelResponse"))
    DeleteAdmChannelResponse.struct_class = Types::DeleteAdmChannelResponse
    DeleteAdmChannelResponse[:payload] = :adm_channel_response
    DeleteAdmChannelResponse[:payload_member] = DeleteAdmChannelResponse.member(:adm_channel_response)

    DeleteApnsChannelRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "application-id"))
    DeleteApnsChannelRequest.struct_class = Types::DeleteApnsChannelRequest

    DeleteApnsChannelResponse.add_member(:apns_channel_response, Shapes::ShapeRef.new(shape: APNSChannelResponse, required: true, location_name: "APNSChannelResponse"))
    DeleteApnsChannelResponse.struct_class = Types::DeleteApnsChannelResponse
    DeleteApnsChannelResponse[:payload] = :apns_channel_response
    DeleteApnsChannelResponse[:payload_member] = DeleteApnsChannelResponse.member(:apns_channel_response)

    DeleteApnsSandboxChannelRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "application-id"))
    DeleteApnsSandboxChannelRequest.struct_class = Types::DeleteApnsSandboxChannelRequest

    DeleteApnsSandboxChannelResponse.add_member(:apns_sandbox_channel_response, Shapes::ShapeRef.new(shape: APNSSandboxChannelResponse, required: true, location_name: "APNSSandboxChannelResponse"))
    DeleteApnsSandboxChannelResponse.struct_class = Types::DeleteApnsSandboxChannelResponse
    DeleteApnsSandboxChannelResponse[:payload] = :apns_sandbox_channel_response
    DeleteApnsSandboxChannelResponse[:payload_member] = DeleteApnsSandboxChannelResponse.member(:apns_sandbox_channel_response)

    DeleteApnsVoipChannelRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "application-id"))
    DeleteApnsVoipChannelRequest.struct_class = Types::DeleteApnsVoipChannelRequest

    DeleteApnsVoipChannelResponse.add_member(:apns_voip_channel_response, Shapes::ShapeRef.new(shape: APNSVoipChannelResponse, required: true, location_name: "APNSVoipChannelResponse"))
    DeleteApnsVoipChannelResponse.struct_class = Types::DeleteApnsVoipChannelResponse
    DeleteApnsVoipChannelResponse[:payload] = :apns_voip_channel_response
    DeleteApnsVoipChannelResponse[:payload_member] = DeleteApnsVoipChannelResponse.member(:apns_voip_channel_response)

    DeleteApnsVoipSandboxChannelRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "application-id"))
    DeleteApnsVoipSandboxChannelRequest.struct_class = Types::DeleteApnsVoipSandboxChannelRequest

    DeleteApnsVoipSandboxChannelResponse.add_member(:apns_voip_sandbox_channel_response, Shapes::ShapeRef.new(shape: APNSVoipSandboxChannelResponse, required: true, location_name: "APNSVoipSandboxChannelResponse"))
    DeleteApnsVoipSandboxChannelResponse.struct_class = Types::DeleteApnsVoipSandboxChannelResponse
    DeleteApnsVoipSandboxChannelResponse[:payload] = :apns_voip_sandbox_channel_response
    DeleteApnsVoipSandboxChannelResponse[:payload_member] = DeleteApnsVoipSandboxChannelResponse.member(:apns_voip_sandbox_channel_response)

    DeleteAppRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "application-id"))
    DeleteAppRequest.struct_class = Types::DeleteAppRequest

    DeleteAppResponse.add_member(:application_response, Shapes::ShapeRef.new(shape: ApplicationResponse, required: true, location_name: "ApplicationResponse"))
    DeleteAppResponse.struct_class = Types::DeleteAppResponse
    DeleteAppResponse[:payload] = :application_response
    DeleteAppResponse[:payload_member] = DeleteAppResponse.member(:application_response)

    DeleteBaiduChannelRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "application-id"))
    DeleteBaiduChannelRequest.struct_class = Types::DeleteBaiduChannelRequest

    DeleteBaiduChannelResponse.add_member(:baidu_channel_response, Shapes::ShapeRef.new(shape: BaiduChannelResponse, required: true, location_name: "BaiduChannelResponse"))
    DeleteBaiduChannelResponse.struct_class = Types::DeleteBaiduChannelResponse
    DeleteBaiduChannelResponse[:payload] = :baidu_channel_response
    DeleteBaiduChannelResponse[:payload_member] = DeleteBaiduChannelResponse.member(:baidu_channel_response)

    DeleteCampaignRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "application-id"))
    DeleteCampaignRequest.add_member(:campaign_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "campaign-id"))
    DeleteCampaignRequest.struct_class = Types::DeleteCampaignRequest

    DeleteCampaignResponse.add_member(:campaign_response, Shapes::ShapeRef.new(shape: CampaignResponse, required: true, location_name: "CampaignResponse"))
    DeleteCampaignResponse.struct_class = Types::DeleteCampaignResponse
    DeleteCampaignResponse[:payload] = :campaign_response
    DeleteCampaignResponse[:payload_member] = DeleteCampaignResponse.member(:campaign_response)

    DeleteEmailChannelRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "application-id"))
    DeleteEmailChannelRequest.struct_class = Types::DeleteEmailChannelRequest

    DeleteEmailChannelResponse.add_member(:email_channel_response, Shapes::ShapeRef.new(shape: EmailChannelResponse, required: true, location_name: "EmailChannelResponse"))
    DeleteEmailChannelResponse.struct_class = Types::DeleteEmailChannelResponse
    DeleteEmailChannelResponse[:payload] = :email_channel_response
    DeleteEmailChannelResponse[:payload_member] = DeleteEmailChannelResponse.member(:email_channel_response)

    DeleteEmailTemplateRequest.add_member(:template_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "template-name"))
    DeleteEmailTemplateRequest.add_member(:version, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "version"))
    DeleteEmailTemplateRequest.struct_class = Types::DeleteEmailTemplateRequest

    DeleteEmailTemplateResponse.add_member(:message_body, Shapes::ShapeRef.new(shape: MessageBody, required: true, location_name: "MessageBody"))
    DeleteEmailTemplateResponse.struct_class = Types::DeleteEmailTemplateResponse
    DeleteEmailTemplateResponse[:payload] = :message_body
    DeleteEmailTemplateResponse[:payload_member] = DeleteEmailTemplateResponse.member(:message_body)

    DeleteEndpointRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "application-id"))
    DeleteEndpointRequest.add_member(:endpoint_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "endpoint-id"))
    DeleteEndpointRequest.struct_class = Types::DeleteEndpointRequest

    DeleteEndpointResponse.add_member(:endpoint_response, Shapes::ShapeRef.new(shape: EndpointResponse, required: true, location_name: "EndpointResponse"))
    DeleteEndpointResponse.struct_class = Types::DeleteEndpointResponse
    DeleteEndpointResponse[:payload] = :endpoint_response
    DeleteEndpointResponse[:payload_member] = DeleteEndpointResponse.member(:endpoint_response)

    DeleteEventStreamRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "application-id"))
    DeleteEventStreamRequest.struct_class = Types::DeleteEventStreamRequest

    DeleteEventStreamResponse.add_member(:event_stream, Shapes::ShapeRef.new(shape: EventStream, required: true, location_name: "EventStream"))
    DeleteEventStreamResponse.struct_class = Types::DeleteEventStreamResponse
    DeleteEventStreamResponse[:payload] = :event_stream
    DeleteEventStreamResponse[:payload_member] = DeleteEventStreamResponse.member(:event_stream)

    DeleteGcmChannelRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "application-id"))
    DeleteGcmChannelRequest.struct_class = Types::DeleteGcmChannelRequest

    DeleteGcmChannelResponse.add_member(:gcm_channel_response, Shapes::ShapeRef.new(shape: GCMChannelResponse, required: true, location_name: "GCMChannelResponse"))
    DeleteGcmChannelResponse.struct_class = Types::DeleteGcmChannelResponse
    DeleteGcmChannelResponse[:payload] = :gcm_channel_response
    DeleteGcmChannelResponse[:payload_member] = DeleteGcmChannelResponse.member(:gcm_channel_response)

    DeleteJourneyRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "application-id"))
    DeleteJourneyRequest.add_member(:journey_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "journey-id"))
    DeleteJourneyRequest.struct_class = Types::DeleteJourneyRequest

    DeleteJourneyResponse.add_member(:journey_response, Shapes::ShapeRef.new(shape: JourneyResponse, required: true, location_name: "JourneyResponse"))
    DeleteJourneyResponse.struct_class = Types::DeleteJourneyResponse
    DeleteJourneyResponse[:payload] = :journey_response
    DeleteJourneyResponse[:payload_member] = DeleteJourneyResponse.member(:journey_response)

    DeletePushTemplateRequest.add_member(:template_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "template-name"))
    DeletePushTemplateRequest.add_member(:version, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "version"))
    DeletePushTemplateRequest.struct_class = Types::DeletePushTemplateRequest

    DeletePushTemplateResponse.add_member(:message_body, Shapes::ShapeRef.new(shape: MessageBody, required: true, location_name: "MessageBody"))
    DeletePushTemplateResponse.struct_class = Types::DeletePushTemplateResponse
    DeletePushTemplateResponse[:payload] = :message_body
    DeletePushTemplateResponse[:payload_member] = DeletePushTemplateResponse.member(:message_body)

    DeleteRecommenderConfigurationRequest.add_member(:recommender_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "recommender-id"))
    DeleteRecommenderConfigurationRequest.struct_class = Types::DeleteRecommenderConfigurationRequest

    DeleteRecommenderConfigurationResponse.add_member(:recommender_configuration_response, Shapes::ShapeRef.new(shape: RecommenderConfigurationResponse, required: true, location_name: "RecommenderConfigurationResponse"))
    DeleteRecommenderConfigurationResponse.struct_class = Types::DeleteRecommenderConfigurationResponse
    DeleteRecommenderConfigurationResponse[:payload] = :recommender_configuration_response
    DeleteRecommenderConfigurationResponse[:payload_member] = DeleteRecommenderConfigurationResponse.member(:recommender_configuration_response)

    DeleteSegmentRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "application-id"))
    DeleteSegmentRequest.add_member(:segment_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "segment-id"))
    DeleteSegmentRequest.struct_class = Types::DeleteSegmentRequest

    DeleteSegmentResponse.add_member(:segment_response, Shapes::ShapeRef.new(shape: SegmentResponse, required: true, location_name: "SegmentResponse"))
    DeleteSegmentResponse.struct_class = Types::DeleteSegmentResponse
    DeleteSegmentResponse[:payload] = :segment_response
    DeleteSegmentResponse[:payload_member] = DeleteSegmentResponse.member(:segment_response)

    DeleteSmsChannelRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "application-id"))
    DeleteSmsChannelRequest.struct_class = Types::DeleteSmsChannelRequest

    DeleteSmsChannelResponse.add_member(:sms_channel_response, Shapes::ShapeRef.new(shape: SMSChannelResponse, required: true, location_name: "SMSChannelResponse"))
    DeleteSmsChannelResponse.struct_class = Types::DeleteSmsChannelResponse
    DeleteSmsChannelResponse[:payload] = :sms_channel_response
    DeleteSmsChannelResponse[:payload_member] = DeleteSmsChannelResponse.member(:sms_channel_response)

    DeleteSmsTemplateRequest.add_member(:template_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "template-name"))
    DeleteSmsTemplateRequest.add_member(:version, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "version"))
    DeleteSmsTemplateRequest.struct_class = Types::DeleteSmsTemplateRequest

    DeleteSmsTemplateResponse.add_member(:message_body, Shapes::ShapeRef.new(shape: MessageBody, required: true, location_name: "MessageBody"))
    DeleteSmsTemplateResponse.struct_class = Types::DeleteSmsTemplateResponse
    DeleteSmsTemplateResponse[:payload] = :message_body
    DeleteSmsTemplateResponse[:payload_member] = DeleteSmsTemplateResponse.member(:message_body)

    DeleteUserEndpointsRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "application-id"))
    DeleteUserEndpointsRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "user-id"))
    DeleteUserEndpointsRequest.struct_class = Types::DeleteUserEndpointsRequest

    DeleteUserEndpointsResponse.add_member(:endpoints_response, Shapes::ShapeRef.new(shape: EndpointsResponse, required: true, location_name: "EndpointsResponse"))
    DeleteUserEndpointsResponse.struct_class = Types::DeleteUserEndpointsResponse
    DeleteUserEndpointsResponse[:payload] = :endpoints_response
    DeleteUserEndpointsResponse[:payload_member] = DeleteUserEndpointsResponse.member(:endpoints_response)

    DeleteVoiceChannelRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "application-id"))
    DeleteVoiceChannelRequest.struct_class = Types::DeleteVoiceChannelRequest

    DeleteVoiceChannelResponse.add_member(:voice_channel_response, Shapes::ShapeRef.new(shape: VoiceChannelResponse, required: true, location_name: "VoiceChannelResponse"))
    DeleteVoiceChannelResponse.struct_class = Types::DeleteVoiceChannelResponse
    DeleteVoiceChannelResponse[:payload] = :voice_channel_response
    DeleteVoiceChannelResponse[:payload_member] = DeleteVoiceChannelResponse.member(:voice_channel_response)

    DeleteVoiceTemplateRequest.add_member(:template_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "template-name"))
    DeleteVoiceTemplateRequest.add_member(:version, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "version"))
    DeleteVoiceTemplateRequest.struct_class = Types::DeleteVoiceTemplateRequest

    DeleteVoiceTemplateResponse.add_member(:message_body, Shapes::ShapeRef.new(shape: MessageBody, required: true, location_name: "MessageBody"))
    DeleteVoiceTemplateResponse.struct_class = Types::DeleteVoiceTemplateResponse
    DeleteVoiceTemplateResponse[:payload] = :message_body
    DeleteVoiceTemplateResponse[:payload_member] = DeleteVoiceTemplateResponse.member(:message_body)

    DirectMessageConfiguration.add_member(:adm_message, Shapes::ShapeRef.new(shape: ADMMessage, location_name: "ADMMessage"))
    DirectMessageConfiguration.add_member(:apns_message, Shapes::ShapeRef.new(shape: APNSMessage, location_name: "APNSMessage"))
    DirectMessageConfiguration.add_member(:baidu_message, Shapes::ShapeRef.new(shape: BaiduMessage, location_name: "BaiduMessage"))
    DirectMessageConfiguration.add_member(:default_message, Shapes::ShapeRef.new(shape: DefaultMessage, location_name: "DefaultMessage"))
    DirectMessageConfiguration.add_member(:default_push_notification_message, Shapes::ShapeRef.new(shape: DefaultPushNotificationMessage, location_name: "DefaultPushNotificationMessage"))
    DirectMessageConfiguration.add_member(:email_message, Shapes::ShapeRef.new(shape: EmailMessage, location_name: "EmailMessage"))
    DirectMessageConfiguration.add_member(:gcm_message, Shapes::ShapeRef.new(shape: GCMMessage, location_name: "GCMMessage"))
    DirectMessageConfiguration.add_member(:sms_message, Shapes::ShapeRef.new(shape: SMSMessage, location_name: "SMSMessage"))
    DirectMessageConfiguration.add_member(:voice_message, Shapes::ShapeRef.new(shape: VoiceMessage, location_name: "VoiceMessage"))
    DirectMessageConfiguration.struct_class = Types::DirectMessageConfiguration

    EmailChannelRequest.add_member(:configuration_set, Shapes::ShapeRef.new(shape: __string, location_name: "ConfigurationSet"))
    EmailChannelRequest.add_member(:enabled, Shapes::ShapeRef.new(shape: __boolean, location_name: "Enabled"))
    EmailChannelRequest.add_member(:from_address, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "FromAddress"))
    EmailChannelRequest.add_member(:identity, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "Identity"))
    EmailChannelRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: __string, location_name: "RoleArn"))
    EmailChannelRequest.struct_class = Types::EmailChannelRequest

    EmailChannelResponse.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, location_name: "ApplicationId"))
    EmailChannelResponse.add_member(:configuration_set, Shapes::ShapeRef.new(shape: __string, location_name: "ConfigurationSet"))
    EmailChannelResponse.add_member(:creation_date, Shapes::ShapeRef.new(shape: __string, location_name: "CreationDate"))
    EmailChannelResponse.add_member(:enabled, Shapes::ShapeRef.new(shape: __boolean, location_name: "Enabled"))
    EmailChannelResponse.add_member(:from_address, Shapes::ShapeRef.new(shape: __string, location_name: "FromAddress"))
    EmailChannelResponse.add_member(:has_credential, Shapes::ShapeRef.new(shape: __boolean, location_name: "HasCredential"))
    EmailChannelResponse.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "Id"))
    EmailChannelResponse.add_member(:identity, Shapes::ShapeRef.new(shape: __string, location_name: "Identity"))
    EmailChannelResponse.add_member(:is_archived, Shapes::ShapeRef.new(shape: __boolean, location_name: "IsArchived"))
    EmailChannelResponse.add_member(:last_modified_by, Shapes::ShapeRef.new(shape: __string, location_name: "LastModifiedBy"))
    EmailChannelResponse.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: __string, location_name: "LastModifiedDate"))
    EmailChannelResponse.add_member(:messages_per_second, Shapes::ShapeRef.new(shape: __integer, location_name: "MessagesPerSecond"))
    EmailChannelResponse.add_member(:platform, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "Platform"))
    EmailChannelResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: __string, location_name: "RoleArn"))
    EmailChannelResponse.add_member(:version, Shapes::ShapeRef.new(shape: __integer, location_name: "Version"))
    EmailChannelResponse.struct_class = Types::EmailChannelResponse

    EmailMessage.add_member(:body, Shapes::ShapeRef.new(shape: __string, location_name: "Body"))
    EmailMessage.add_member(:feedback_forwarding_address, Shapes::ShapeRef.new(shape: __string, location_name: "FeedbackForwardingAddress"))
    EmailMessage.add_member(:from_address, Shapes::ShapeRef.new(shape: __string, location_name: "FromAddress"))
    EmailMessage.add_member(:raw_email, Shapes::ShapeRef.new(shape: RawEmail, location_name: "RawEmail"))
    EmailMessage.add_member(:reply_to_addresses, Shapes::ShapeRef.new(shape: ListOf__string, location_name: "ReplyToAddresses"))
    EmailMessage.add_member(:simple_email, Shapes::ShapeRef.new(shape: SimpleEmail, location_name: "SimpleEmail"))
    EmailMessage.add_member(:substitutions, Shapes::ShapeRef.new(shape: MapOfListOf__string, location_name: "Substitutions"))
    EmailMessage.struct_class = Types::EmailMessage

    EmailMessageActivity.add_member(:message_config, Shapes::ShapeRef.new(shape: JourneyEmailMessage, location_name: "MessageConfig"))
    EmailMessageActivity.add_member(:next_activity, Shapes::ShapeRef.new(shape: __string, location_name: "NextActivity"))
    EmailMessageActivity.add_member(:template_name, Shapes::ShapeRef.new(shape: __string, location_name: "TemplateName"))
    EmailMessageActivity.add_member(:template_version, Shapes::ShapeRef.new(shape: __string, location_name: "TemplateVersion"))
    EmailMessageActivity.struct_class = Types::EmailMessageActivity

    EmailTemplateRequest.add_member(:default_substitutions, Shapes::ShapeRef.new(shape: __string, location_name: "DefaultSubstitutions"))
    EmailTemplateRequest.add_member(:html_part, Shapes::ShapeRef.new(shape: __string, location_name: "HtmlPart"))
    EmailTemplateRequest.add_member(:recommender_id, Shapes::ShapeRef.new(shape: __string, location_name: "RecommenderId"))
    EmailTemplateRequest.add_member(:subject, Shapes::ShapeRef.new(shape: __string, location_name: "Subject"))
    EmailTemplateRequest.add_member(:tags, Shapes::ShapeRef.new(shape: MapOf__string, location_name: "tags"))
    EmailTemplateRequest.add_member(:template_description, Shapes::ShapeRef.new(shape: __string, location_name: "TemplateDescription"))
    EmailTemplateRequest.add_member(:text_part, Shapes::ShapeRef.new(shape: __string, location_name: "TextPart"))
    EmailTemplateRequest.struct_class = Types::EmailTemplateRequest

    EmailTemplateResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "Arn"))
    EmailTemplateResponse.add_member(:creation_date, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "CreationDate"))
    EmailTemplateResponse.add_member(:default_substitutions, Shapes::ShapeRef.new(shape: __string, location_name: "DefaultSubstitutions"))
    EmailTemplateResponse.add_member(:html_part, Shapes::ShapeRef.new(shape: __string, location_name: "HtmlPart"))
    EmailTemplateResponse.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "LastModifiedDate"))
    EmailTemplateResponse.add_member(:recommender_id, Shapes::ShapeRef.new(shape: __string, location_name: "RecommenderId"))
    EmailTemplateResponse.add_member(:subject, Shapes::ShapeRef.new(shape: __string, location_name: "Subject"))
    EmailTemplateResponse.add_member(:tags, Shapes::ShapeRef.new(shape: MapOf__string, location_name: "tags"))
    EmailTemplateResponse.add_member(:template_description, Shapes::ShapeRef.new(shape: __string, location_name: "TemplateDescription"))
    EmailTemplateResponse.add_member(:template_name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "TemplateName"))
    EmailTemplateResponse.add_member(:template_type, Shapes::ShapeRef.new(shape: TemplateType, required: true, location_name: "TemplateType"))
    EmailTemplateResponse.add_member(:text_part, Shapes::ShapeRef.new(shape: __string, location_name: "TextPart"))
    EmailTemplateResponse.add_member(:version, Shapes::ShapeRef.new(shape: __string, location_name: "Version"))
    EmailTemplateResponse.struct_class = Types::EmailTemplateResponse

    EndpointBatchItem.add_member(:address, Shapes::ShapeRef.new(shape: __string, location_name: "Address"))
    EndpointBatchItem.add_member(:attributes, Shapes::ShapeRef.new(shape: MapOfListOf__string, location_name: "Attributes"))
    EndpointBatchItem.add_member(:channel_type, Shapes::ShapeRef.new(shape: ChannelType, location_name: "ChannelType"))
    EndpointBatchItem.add_member(:demographic, Shapes::ShapeRef.new(shape: EndpointDemographic, location_name: "Demographic"))
    EndpointBatchItem.add_member(:effective_date, Shapes::ShapeRef.new(shape: __string, location_name: "EffectiveDate"))
    EndpointBatchItem.add_member(:endpoint_status, Shapes::ShapeRef.new(shape: __string, location_name: "EndpointStatus"))
    EndpointBatchItem.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "Id"))
    EndpointBatchItem.add_member(:location, Shapes::ShapeRef.new(shape: EndpointLocation, location_name: "Location"))
    EndpointBatchItem.add_member(:metrics, Shapes::ShapeRef.new(shape: MapOf__double, location_name: "Metrics"))
    EndpointBatchItem.add_member(:opt_out, Shapes::ShapeRef.new(shape: __string, location_name: "OptOut"))
    EndpointBatchItem.add_member(:request_id, Shapes::ShapeRef.new(shape: __string, location_name: "RequestId"))
    EndpointBatchItem.add_member(:user, Shapes::ShapeRef.new(shape: EndpointUser, location_name: "User"))
    EndpointBatchItem.struct_class = Types::EndpointBatchItem

    EndpointBatchRequest.add_member(:item, Shapes::ShapeRef.new(shape: ListOfEndpointBatchItem, required: true, location_name: "Item"))
    EndpointBatchRequest.struct_class = Types::EndpointBatchRequest

    EndpointDemographic.add_member(:app_version, Shapes::ShapeRef.new(shape: __string, location_name: "AppVersion"))
    EndpointDemographic.add_member(:locale, Shapes::ShapeRef.new(shape: __string, location_name: "Locale"))
    EndpointDemographic.add_member(:make, Shapes::ShapeRef.new(shape: __string, location_name: "Make"))
    EndpointDemographic.add_member(:model, Shapes::ShapeRef.new(shape: __string, location_name: "Model"))
    EndpointDemographic.add_member(:model_version, Shapes::ShapeRef.new(shape: __string, location_name: "ModelVersion"))
    EndpointDemographic.add_member(:platform, Shapes::ShapeRef.new(shape: __string, location_name: "Platform"))
    EndpointDemographic.add_member(:platform_version, Shapes::ShapeRef.new(shape: __string, location_name: "PlatformVersion"))
    EndpointDemographic.add_member(:timezone, Shapes::ShapeRef.new(shape: __string, location_name: "Timezone"))
    EndpointDemographic.struct_class = Types::EndpointDemographic

    EndpointItemResponse.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "Message"))
    EndpointItemResponse.add_member(:status_code, Shapes::ShapeRef.new(shape: __integer, location_name: "StatusCode"))
    EndpointItemResponse.struct_class = Types::EndpointItemResponse

    EndpointLocation.add_member(:city, Shapes::ShapeRef.new(shape: __string, location_name: "City"))
    EndpointLocation.add_member(:country, Shapes::ShapeRef.new(shape: __string, location_name: "Country"))
    EndpointLocation.add_member(:latitude, Shapes::ShapeRef.new(shape: __double, location_name: "Latitude"))
    EndpointLocation.add_member(:longitude, Shapes::ShapeRef.new(shape: __double, location_name: "Longitude"))
    EndpointLocation.add_member(:postal_code, Shapes::ShapeRef.new(shape: __string, location_name: "PostalCode"))
    EndpointLocation.add_member(:region, Shapes::ShapeRef.new(shape: __string, location_name: "Region"))
    EndpointLocation.struct_class = Types::EndpointLocation

    EndpointMessageResult.add_member(:address, Shapes::ShapeRef.new(shape: __string, location_name: "Address"))
    EndpointMessageResult.add_member(:delivery_status, Shapes::ShapeRef.new(shape: DeliveryStatus, required: true, location_name: "DeliveryStatus"))
    EndpointMessageResult.add_member(:message_id, Shapes::ShapeRef.new(shape: __string, location_name: "MessageId"))
    EndpointMessageResult.add_member(:status_code, Shapes::ShapeRef.new(shape: __integer, required: true, location_name: "StatusCode"))
    EndpointMessageResult.add_member(:status_message, Shapes::ShapeRef.new(shape: __string, location_name: "StatusMessage"))
    EndpointMessageResult.add_member(:updated_token, Shapes::ShapeRef.new(shape: __string, location_name: "UpdatedToken"))
    EndpointMessageResult.struct_class = Types::EndpointMessageResult

    EndpointRequest.add_member(:address, Shapes::ShapeRef.new(shape: __string, location_name: "Address"))
    EndpointRequest.add_member(:attributes, Shapes::ShapeRef.new(shape: MapOfListOf__string, location_name: "Attributes"))
    EndpointRequest.add_member(:channel_type, Shapes::ShapeRef.new(shape: ChannelType, location_name: "ChannelType"))
    EndpointRequest.add_member(:demographic, Shapes::ShapeRef.new(shape: EndpointDemographic, location_name: "Demographic"))
    EndpointRequest.add_member(:effective_date, Shapes::ShapeRef.new(shape: __string, location_name: "EffectiveDate"))
    EndpointRequest.add_member(:endpoint_status, Shapes::ShapeRef.new(shape: __string, location_name: "EndpointStatus"))
    EndpointRequest.add_member(:location, Shapes::ShapeRef.new(shape: EndpointLocation, location_name: "Location"))
    EndpointRequest.add_member(:metrics, Shapes::ShapeRef.new(shape: MapOf__double, location_name: "Metrics"))
    EndpointRequest.add_member(:opt_out, Shapes::ShapeRef.new(shape: __string, location_name: "OptOut"))
    EndpointRequest.add_member(:request_id, Shapes::ShapeRef.new(shape: __string, location_name: "RequestId"))
    EndpointRequest.add_member(:user, Shapes::ShapeRef.new(shape: EndpointUser, location_name: "User"))
    EndpointRequest.struct_class = Types::EndpointRequest

    EndpointResponse.add_member(:address, Shapes::ShapeRef.new(shape: __string, location_name: "Address"))
    EndpointResponse.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, location_name: "ApplicationId"))
    EndpointResponse.add_member(:attributes, Shapes::ShapeRef.new(shape: MapOfListOf__string, location_name: "Attributes"))
    EndpointResponse.add_member(:channel_type, Shapes::ShapeRef.new(shape: ChannelType, location_name: "ChannelType"))
    EndpointResponse.add_member(:cohort_id, Shapes::ShapeRef.new(shape: __string, location_name: "CohortId"))
    EndpointResponse.add_member(:creation_date, Shapes::ShapeRef.new(shape: __string, location_name: "CreationDate"))
    EndpointResponse.add_member(:demographic, Shapes::ShapeRef.new(shape: EndpointDemographic, location_name: "Demographic"))
    EndpointResponse.add_member(:effective_date, Shapes::ShapeRef.new(shape: __string, location_name: "EffectiveDate"))
    EndpointResponse.add_member(:endpoint_status, Shapes::ShapeRef.new(shape: __string, location_name: "EndpointStatus"))
    EndpointResponse.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "Id"))
    EndpointResponse.add_member(:location, Shapes::ShapeRef.new(shape: EndpointLocation, location_name: "Location"))
    EndpointResponse.add_member(:metrics, Shapes::ShapeRef.new(shape: MapOf__double, location_name: "Metrics"))
    EndpointResponse.add_member(:opt_out, Shapes::ShapeRef.new(shape: __string, location_name: "OptOut"))
    EndpointResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: __string, location_name: "RequestId"))
    EndpointResponse.add_member(:user, Shapes::ShapeRef.new(shape: EndpointUser, location_name: "User"))
    EndpointResponse.struct_class = Types::EndpointResponse

    EndpointSendConfiguration.add_member(:body_override, Shapes::ShapeRef.new(shape: __string, location_name: "BodyOverride"))
    EndpointSendConfiguration.add_member(:context, Shapes::ShapeRef.new(shape: MapOf__string, location_name: "Context"))
    EndpointSendConfiguration.add_member(:raw_content, Shapes::ShapeRef.new(shape: __string, location_name: "RawContent"))
    EndpointSendConfiguration.add_member(:substitutions, Shapes::ShapeRef.new(shape: MapOfListOf__string, location_name: "Substitutions"))
    EndpointSendConfiguration.add_member(:title_override, Shapes::ShapeRef.new(shape: __string, location_name: "TitleOverride"))
    EndpointSendConfiguration.struct_class = Types::EndpointSendConfiguration

    EndpointUser.add_member(:user_attributes, Shapes::ShapeRef.new(shape: MapOfListOf__string, location_name: "UserAttributes"))
    EndpointUser.add_member(:user_id, Shapes::ShapeRef.new(shape: __string, location_name: "UserId"))
    EndpointUser.struct_class = Types::EndpointUser

    EndpointsResponse.add_member(:item, Shapes::ShapeRef.new(shape: ListOfEndpointResponse, required: true, location_name: "Item"))
    EndpointsResponse.struct_class = Types::EndpointsResponse

    Event.add_member(:app_package_name, Shapes::ShapeRef.new(shape: __string, location_name: "AppPackageName"))
    Event.add_member(:app_title, Shapes::ShapeRef.new(shape: __string, location_name: "AppTitle"))
    Event.add_member(:app_version_code, Shapes::ShapeRef.new(shape: __string, location_name: "AppVersionCode"))
    Event.add_member(:attributes, Shapes::ShapeRef.new(shape: MapOf__string, location_name: "Attributes"))
    Event.add_member(:client_sdk_version, Shapes::ShapeRef.new(shape: __string, location_name: "ClientSdkVersion"))
    Event.add_member(:event_type, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "EventType"))
    Event.add_member(:metrics, Shapes::ShapeRef.new(shape: MapOf__double, location_name: "Metrics"))
    Event.add_member(:sdk_name, Shapes::ShapeRef.new(shape: __string, location_name: "SdkName"))
    Event.add_member(:session, Shapes::ShapeRef.new(shape: Session, location_name: "Session"))
    Event.add_member(:timestamp, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "Timestamp"))
    Event.struct_class = Types::Event

    EventCondition.add_member(:dimensions, Shapes::ShapeRef.new(shape: EventDimensions, required: true, location_name: "Dimensions"))
    EventCondition.add_member(:message_activity, Shapes::ShapeRef.new(shape: __string, location_name: "MessageActivity"))
    EventCondition.struct_class = Types::EventCondition

    EventDimensions.add_member(:attributes, Shapes::ShapeRef.new(shape: MapOfAttributeDimension, location_name: "Attributes"))
    EventDimensions.add_member(:event_type, Shapes::ShapeRef.new(shape: SetDimension, location_name: "EventType"))
    EventDimensions.add_member(:metrics, Shapes::ShapeRef.new(shape: MapOfMetricDimension, location_name: "Metrics"))
    EventDimensions.struct_class = Types::EventDimensions

    EventItemResponse.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "Message"))
    EventItemResponse.add_member(:status_code, Shapes::ShapeRef.new(shape: __integer, location_name: "StatusCode"))
    EventItemResponse.struct_class = Types::EventItemResponse

    EventStream.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "ApplicationId"))
    EventStream.add_member(:destination_stream_arn, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "DestinationStreamArn"))
    EventStream.add_member(:external_id, Shapes::ShapeRef.new(shape: __string, location_name: "ExternalId"))
    EventStream.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: __string, location_name: "LastModifiedDate"))
    EventStream.add_member(:last_updated_by, Shapes::ShapeRef.new(shape: __string, location_name: "LastUpdatedBy"))
    EventStream.add_member(:role_arn, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "RoleArn"))
    EventStream.struct_class = Types::EventStream

    EventsBatch.add_member(:endpoint, Shapes::ShapeRef.new(shape: PublicEndpoint, required: true, location_name: "Endpoint"))
    EventsBatch.add_member(:events, Shapes::ShapeRef.new(shape: MapOfEvent, required: true, location_name: "Events"))
    EventsBatch.struct_class = Types::EventsBatch

    EventsRequest.add_member(:batch_item, Shapes::ShapeRef.new(shape: MapOfEventsBatch, required: true, location_name: "BatchItem"))
    EventsRequest.struct_class = Types::EventsRequest

    EventsResponse.add_member(:results, Shapes::ShapeRef.new(shape: MapOfItemResponse, location_name: "Results"))
    EventsResponse.struct_class = Types::EventsResponse

    ExportJobRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "RoleArn"))
    ExportJobRequest.add_member(:s3_url_prefix, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "S3UrlPrefix"))
    ExportJobRequest.add_member(:segment_id, Shapes::ShapeRef.new(shape: __string, location_name: "SegmentId"))
    ExportJobRequest.add_member(:segment_version, Shapes::ShapeRef.new(shape: __integer, location_name: "SegmentVersion"))
    ExportJobRequest.struct_class = Types::ExportJobRequest

    ExportJobResource.add_member(:role_arn, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "RoleArn"))
    ExportJobResource.add_member(:s3_url_prefix, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "S3UrlPrefix"))
    ExportJobResource.add_member(:segment_id, Shapes::ShapeRef.new(shape: __string, location_name: "SegmentId"))
    ExportJobResource.add_member(:segment_version, Shapes::ShapeRef.new(shape: __integer, location_name: "SegmentVersion"))
    ExportJobResource.struct_class = Types::ExportJobResource

    ExportJobResponse.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "ApplicationId"))
    ExportJobResponse.add_member(:completed_pieces, Shapes::ShapeRef.new(shape: __integer, location_name: "CompletedPieces"))
    ExportJobResponse.add_member(:completion_date, Shapes::ShapeRef.new(shape: __string, location_name: "CompletionDate"))
    ExportJobResponse.add_member(:creation_date, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "CreationDate"))
    ExportJobResponse.add_member(:definition, Shapes::ShapeRef.new(shape: ExportJobResource, required: true, location_name: "Definition"))
    ExportJobResponse.add_member(:failed_pieces, Shapes::ShapeRef.new(shape: __integer, location_name: "FailedPieces"))
    ExportJobResponse.add_member(:failures, Shapes::ShapeRef.new(shape: ListOf__string, location_name: "Failures"))
    ExportJobResponse.add_member(:id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "Id"))
    ExportJobResponse.add_member(:job_status, Shapes::ShapeRef.new(shape: JobStatus, required: true, location_name: "JobStatus"))
    ExportJobResponse.add_member(:total_failures, Shapes::ShapeRef.new(shape: __integer, location_name: "TotalFailures"))
    ExportJobResponse.add_member(:total_pieces, Shapes::ShapeRef.new(shape: __integer, location_name: "TotalPieces"))
    ExportJobResponse.add_member(:total_processed, Shapes::ShapeRef.new(shape: __integer, location_name: "TotalProcessed"))
    ExportJobResponse.add_member(:type, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "Type"))
    ExportJobResponse.struct_class = Types::ExportJobResponse

    ExportJobsResponse.add_member(:item, Shapes::ShapeRef.new(shape: ListOfExportJobResponse, required: true, location_name: "Item"))
    ExportJobsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "NextToken"))
    ExportJobsResponse.struct_class = Types::ExportJobsResponse

    ForbiddenException.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "Message"))
    ForbiddenException.add_member(:request_id, Shapes::ShapeRef.new(shape: __string, location_name: "RequestID"))
    ForbiddenException.struct_class = Types::ForbiddenException

    GCMChannelRequest.add_member(:api_key, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "ApiKey"))
    GCMChannelRequest.add_member(:enabled, Shapes::ShapeRef.new(shape: __boolean, location_name: "Enabled"))
    GCMChannelRequest.struct_class = Types::GCMChannelRequest

    GCMChannelResponse.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, location_name: "ApplicationId"))
    GCMChannelResponse.add_member(:creation_date, Shapes::ShapeRef.new(shape: __string, location_name: "CreationDate"))
    GCMChannelResponse.add_member(:credential, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "Credential"))
    GCMChannelResponse.add_member(:enabled, Shapes::ShapeRef.new(shape: __boolean, location_name: "Enabled"))
    GCMChannelResponse.add_member(:has_credential, Shapes::ShapeRef.new(shape: __boolean, location_name: "HasCredential"))
    GCMChannelResponse.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "Id"))
    GCMChannelResponse.add_member(:is_archived, Shapes::ShapeRef.new(shape: __boolean, location_name: "IsArchived"))
    GCMChannelResponse.add_member(:last_modified_by, Shapes::ShapeRef.new(shape: __string, location_name: "LastModifiedBy"))
    GCMChannelResponse.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: __string, location_name: "LastModifiedDate"))
    GCMChannelResponse.add_member(:platform, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "Platform"))
    GCMChannelResponse.add_member(:version, Shapes::ShapeRef.new(shape: __integer, location_name: "Version"))
    GCMChannelResponse.struct_class = Types::GCMChannelResponse

    GCMMessage.add_member(:action, Shapes::ShapeRef.new(shape: Action, location_name: "Action"))
    GCMMessage.add_member(:body, Shapes::ShapeRef.new(shape: __string, location_name: "Body"))
    GCMMessage.add_member(:collapse_key, Shapes::ShapeRef.new(shape: __string, location_name: "CollapseKey"))
    GCMMessage.add_member(:data, Shapes::ShapeRef.new(shape: MapOf__string, location_name: "Data"))
    GCMMessage.add_member(:icon_reference, Shapes::ShapeRef.new(shape: __string, location_name: "IconReference"))
    GCMMessage.add_member(:image_icon_url, Shapes::ShapeRef.new(shape: __string, location_name: "ImageIconUrl"))
    GCMMessage.add_member(:image_url, Shapes::ShapeRef.new(shape: __string, location_name: "ImageUrl"))
    GCMMessage.add_member(:priority, Shapes::ShapeRef.new(shape: __string, location_name: "Priority"))
    GCMMessage.add_member(:raw_content, Shapes::ShapeRef.new(shape: __string, location_name: "RawContent"))
    GCMMessage.add_member(:restricted_package_name, Shapes::ShapeRef.new(shape: __string, location_name: "RestrictedPackageName"))
    GCMMessage.add_member(:silent_push, Shapes::ShapeRef.new(shape: __boolean, location_name: "SilentPush"))
    GCMMessage.add_member(:small_image_icon_url, Shapes::ShapeRef.new(shape: __string, location_name: "SmallImageIconUrl"))
    GCMMessage.add_member(:sound, Shapes::ShapeRef.new(shape: __string, location_name: "Sound"))
    GCMMessage.add_member(:substitutions, Shapes::ShapeRef.new(shape: MapOfListOf__string, location_name: "Substitutions"))
    GCMMessage.add_member(:time_to_live, Shapes::ShapeRef.new(shape: __integer, location_name: "TimeToLive"))
    GCMMessage.add_member(:title, Shapes::ShapeRef.new(shape: __string, location_name: "Title"))
    GCMMessage.add_member(:url, Shapes::ShapeRef.new(shape: __string, location_name: "Url"))
    GCMMessage.struct_class = Types::GCMMessage

    GPSCoordinates.add_member(:latitude, Shapes::ShapeRef.new(shape: __double, required: true, location_name: "Latitude"))
    GPSCoordinates.add_member(:longitude, Shapes::ShapeRef.new(shape: __double, required: true, location_name: "Longitude"))
    GPSCoordinates.struct_class = Types::GPSCoordinates

    GPSPointDimension.add_member(:coordinates, Shapes::ShapeRef.new(shape: GPSCoordinates, required: true, location_name: "Coordinates"))
    GPSPointDimension.add_member(:range_in_kilometers, Shapes::ShapeRef.new(shape: __double, location_name: "RangeInKilometers"))
    GPSPointDimension.struct_class = Types::GPSPointDimension

    GetAdmChannelRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "application-id"))
    GetAdmChannelRequest.struct_class = Types::GetAdmChannelRequest

    GetAdmChannelResponse.add_member(:adm_channel_response, Shapes::ShapeRef.new(shape: ADMChannelResponse, required: true, location_name: "ADMChannelResponse"))
    GetAdmChannelResponse.struct_class = Types::GetAdmChannelResponse
    GetAdmChannelResponse[:payload] = :adm_channel_response
    GetAdmChannelResponse[:payload_member] = GetAdmChannelResponse.member(:adm_channel_response)

    GetApnsChannelRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "application-id"))
    GetApnsChannelRequest.struct_class = Types::GetApnsChannelRequest

    GetApnsChannelResponse.add_member(:apns_channel_response, Shapes::ShapeRef.new(shape: APNSChannelResponse, required: true, location_name: "APNSChannelResponse"))
    GetApnsChannelResponse.struct_class = Types::GetApnsChannelResponse
    GetApnsChannelResponse[:payload] = :apns_channel_response
    GetApnsChannelResponse[:payload_member] = GetApnsChannelResponse.member(:apns_channel_response)

    GetApnsSandboxChannelRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "application-id"))
    GetApnsSandboxChannelRequest.struct_class = Types::GetApnsSandboxChannelRequest

    GetApnsSandboxChannelResponse.add_member(:apns_sandbox_channel_response, Shapes::ShapeRef.new(shape: APNSSandboxChannelResponse, required: true, location_name: "APNSSandboxChannelResponse"))
    GetApnsSandboxChannelResponse.struct_class = Types::GetApnsSandboxChannelResponse
    GetApnsSandboxChannelResponse[:payload] = :apns_sandbox_channel_response
    GetApnsSandboxChannelResponse[:payload_member] = GetApnsSandboxChannelResponse.member(:apns_sandbox_channel_response)

    GetApnsVoipChannelRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "application-id"))
    GetApnsVoipChannelRequest.struct_class = Types::GetApnsVoipChannelRequest

    GetApnsVoipChannelResponse.add_member(:apns_voip_channel_response, Shapes::ShapeRef.new(shape: APNSVoipChannelResponse, required: true, location_name: "APNSVoipChannelResponse"))
    GetApnsVoipChannelResponse.struct_class = Types::GetApnsVoipChannelResponse
    GetApnsVoipChannelResponse[:payload] = :apns_voip_channel_response
    GetApnsVoipChannelResponse[:payload_member] = GetApnsVoipChannelResponse.member(:apns_voip_channel_response)

    GetApnsVoipSandboxChannelRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "application-id"))
    GetApnsVoipSandboxChannelRequest.struct_class = Types::GetApnsVoipSandboxChannelRequest

    GetApnsVoipSandboxChannelResponse.add_member(:apns_voip_sandbox_channel_response, Shapes::ShapeRef.new(shape: APNSVoipSandboxChannelResponse, required: true, location_name: "APNSVoipSandboxChannelResponse"))
    GetApnsVoipSandboxChannelResponse.struct_class = Types::GetApnsVoipSandboxChannelResponse
    GetApnsVoipSandboxChannelResponse[:payload] = :apns_voip_sandbox_channel_response
    GetApnsVoipSandboxChannelResponse[:payload_member] = GetApnsVoipSandboxChannelResponse.member(:apns_voip_sandbox_channel_response)

    GetAppRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "application-id"))
    GetAppRequest.struct_class = Types::GetAppRequest

    GetAppResponse.add_member(:application_response, Shapes::ShapeRef.new(shape: ApplicationResponse, required: true, location_name: "ApplicationResponse"))
    GetAppResponse.struct_class = Types::GetAppResponse
    GetAppResponse[:payload] = :application_response
    GetAppResponse[:payload_member] = GetAppResponse.member(:application_response)

    GetApplicationDateRangeKpiRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "application-id"))
    GetApplicationDateRangeKpiRequest.add_member(:end_time, Shapes::ShapeRef.new(shape: __timestampIso8601, location: "querystring", location_name: "end-time"))
    GetApplicationDateRangeKpiRequest.add_member(:kpi_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "kpi-name"))
    GetApplicationDateRangeKpiRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "next-token"))
    GetApplicationDateRangeKpiRequest.add_member(:page_size, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "page-size"))
    GetApplicationDateRangeKpiRequest.add_member(:start_time, Shapes::ShapeRef.new(shape: __timestampIso8601, location: "querystring", location_name: "start-time"))
    GetApplicationDateRangeKpiRequest.struct_class = Types::GetApplicationDateRangeKpiRequest

    GetApplicationDateRangeKpiResponse.add_member(:application_date_range_kpi_response, Shapes::ShapeRef.new(shape: ApplicationDateRangeKpiResponse, required: true, location_name: "ApplicationDateRangeKpiResponse"))
    GetApplicationDateRangeKpiResponse.struct_class = Types::GetApplicationDateRangeKpiResponse
    GetApplicationDateRangeKpiResponse[:payload] = :application_date_range_kpi_response
    GetApplicationDateRangeKpiResponse[:payload_member] = GetApplicationDateRangeKpiResponse.member(:application_date_range_kpi_response)

    GetApplicationSettingsRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "application-id"))
    GetApplicationSettingsRequest.struct_class = Types::GetApplicationSettingsRequest

    GetApplicationSettingsResponse.add_member(:application_settings_resource, Shapes::ShapeRef.new(shape: ApplicationSettingsResource, required: true, location_name: "ApplicationSettingsResource"))
    GetApplicationSettingsResponse.struct_class = Types::GetApplicationSettingsResponse
    GetApplicationSettingsResponse[:payload] = :application_settings_resource
    GetApplicationSettingsResponse[:payload_member] = GetApplicationSettingsResponse.member(:application_settings_resource)

    GetAppsRequest.add_member(:page_size, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "page-size"))
    GetAppsRequest.add_member(:token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "token"))
    GetAppsRequest.struct_class = Types::GetAppsRequest

    GetAppsResponse.add_member(:applications_response, Shapes::ShapeRef.new(shape: ApplicationsResponse, required: true, location_name: "ApplicationsResponse"))
    GetAppsResponse.struct_class = Types::GetAppsResponse
    GetAppsResponse[:payload] = :applications_response
    GetAppsResponse[:payload_member] = GetAppsResponse.member(:applications_response)

    GetBaiduChannelRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "application-id"))
    GetBaiduChannelRequest.struct_class = Types::GetBaiduChannelRequest

    GetBaiduChannelResponse.add_member(:baidu_channel_response, Shapes::ShapeRef.new(shape: BaiduChannelResponse, required: true, location_name: "BaiduChannelResponse"))
    GetBaiduChannelResponse.struct_class = Types::GetBaiduChannelResponse
    GetBaiduChannelResponse[:payload] = :baidu_channel_response
    GetBaiduChannelResponse[:payload_member] = GetBaiduChannelResponse.member(:baidu_channel_response)

    GetCampaignActivitiesRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "application-id"))
    GetCampaignActivitiesRequest.add_member(:campaign_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "campaign-id"))
    GetCampaignActivitiesRequest.add_member(:page_size, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "page-size"))
    GetCampaignActivitiesRequest.add_member(:token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "token"))
    GetCampaignActivitiesRequest.struct_class = Types::GetCampaignActivitiesRequest

    GetCampaignActivitiesResponse.add_member(:activities_response, Shapes::ShapeRef.new(shape: ActivitiesResponse, required: true, location_name: "ActivitiesResponse"))
    GetCampaignActivitiesResponse.struct_class = Types::GetCampaignActivitiesResponse
    GetCampaignActivitiesResponse[:payload] = :activities_response
    GetCampaignActivitiesResponse[:payload_member] = GetCampaignActivitiesResponse.member(:activities_response)

    GetCampaignDateRangeKpiRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "application-id"))
    GetCampaignDateRangeKpiRequest.add_member(:campaign_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "campaign-id"))
    GetCampaignDateRangeKpiRequest.add_member(:end_time, Shapes::ShapeRef.new(shape: __timestampIso8601, location: "querystring", location_name: "end-time"))
    GetCampaignDateRangeKpiRequest.add_member(:kpi_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "kpi-name"))
    GetCampaignDateRangeKpiRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "next-token"))
    GetCampaignDateRangeKpiRequest.add_member(:page_size, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "page-size"))
    GetCampaignDateRangeKpiRequest.add_member(:start_time, Shapes::ShapeRef.new(shape: __timestampIso8601, location: "querystring", location_name: "start-time"))
    GetCampaignDateRangeKpiRequest.struct_class = Types::GetCampaignDateRangeKpiRequest

    GetCampaignDateRangeKpiResponse.add_member(:campaign_date_range_kpi_response, Shapes::ShapeRef.new(shape: CampaignDateRangeKpiResponse, required: true, location_name: "CampaignDateRangeKpiResponse"))
    GetCampaignDateRangeKpiResponse.struct_class = Types::GetCampaignDateRangeKpiResponse
    GetCampaignDateRangeKpiResponse[:payload] = :campaign_date_range_kpi_response
    GetCampaignDateRangeKpiResponse[:payload_member] = GetCampaignDateRangeKpiResponse.member(:campaign_date_range_kpi_response)

    GetCampaignRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "application-id"))
    GetCampaignRequest.add_member(:campaign_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "campaign-id"))
    GetCampaignRequest.struct_class = Types::GetCampaignRequest

    GetCampaignResponse.add_member(:campaign_response, Shapes::ShapeRef.new(shape: CampaignResponse, required: true, location_name: "CampaignResponse"))
    GetCampaignResponse.struct_class = Types::GetCampaignResponse
    GetCampaignResponse[:payload] = :campaign_response
    GetCampaignResponse[:payload_member] = GetCampaignResponse.member(:campaign_response)

    GetCampaignVersionRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "application-id"))
    GetCampaignVersionRequest.add_member(:campaign_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "campaign-id"))
    GetCampaignVersionRequest.add_member(:version, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "version"))
    GetCampaignVersionRequest.struct_class = Types::GetCampaignVersionRequest

    GetCampaignVersionResponse.add_member(:campaign_response, Shapes::ShapeRef.new(shape: CampaignResponse, required: true, location_name: "CampaignResponse"))
    GetCampaignVersionResponse.struct_class = Types::GetCampaignVersionResponse
    GetCampaignVersionResponse[:payload] = :campaign_response
    GetCampaignVersionResponse[:payload_member] = GetCampaignVersionResponse.member(:campaign_response)

    GetCampaignVersionsRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "application-id"))
    GetCampaignVersionsRequest.add_member(:campaign_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "campaign-id"))
    GetCampaignVersionsRequest.add_member(:page_size, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "page-size"))
    GetCampaignVersionsRequest.add_member(:token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "token"))
    GetCampaignVersionsRequest.struct_class = Types::GetCampaignVersionsRequest

    GetCampaignVersionsResponse.add_member(:campaigns_response, Shapes::ShapeRef.new(shape: CampaignsResponse, required: true, location_name: "CampaignsResponse"))
    GetCampaignVersionsResponse.struct_class = Types::GetCampaignVersionsResponse
    GetCampaignVersionsResponse[:payload] = :campaigns_response
    GetCampaignVersionsResponse[:payload_member] = GetCampaignVersionsResponse.member(:campaigns_response)

    GetCampaignsRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "application-id"))
    GetCampaignsRequest.add_member(:page_size, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "page-size"))
    GetCampaignsRequest.add_member(:token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "token"))
    GetCampaignsRequest.struct_class = Types::GetCampaignsRequest

    GetCampaignsResponse.add_member(:campaigns_response, Shapes::ShapeRef.new(shape: CampaignsResponse, required: true, location_name: "CampaignsResponse"))
    GetCampaignsResponse.struct_class = Types::GetCampaignsResponse
    GetCampaignsResponse[:payload] = :campaigns_response
    GetCampaignsResponse[:payload_member] = GetCampaignsResponse.member(:campaigns_response)

    GetChannelsRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "application-id"))
    GetChannelsRequest.struct_class = Types::GetChannelsRequest

    GetChannelsResponse.add_member(:channels_response, Shapes::ShapeRef.new(shape: ChannelsResponse, required: true, location_name: "ChannelsResponse"))
    GetChannelsResponse.struct_class = Types::GetChannelsResponse
    GetChannelsResponse[:payload] = :channels_response
    GetChannelsResponse[:payload_member] = GetChannelsResponse.member(:channels_response)

    GetEmailChannelRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "application-id"))
    GetEmailChannelRequest.struct_class = Types::GetEmailChannelRequest

    GetEmailChannelResponse.add_member(:email_channel_response, Shapes::ShapeRef.new(shape: EmailChannelResponse, required: true, location_name: "EmailChannelResponse"))
    GetEmailChannelResponse.struct_class = Types::GetEmailChannelResponse
    GetEmailChannelResponse[:payload] = :email_channel_response
    GetEmailChannelResponse[:payload_member] = GetEmailChannelResponse.member(:email_channel_response)

    GetEmailTemplateRequest.add_member(:template_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "template-name"))
    GetEmailTemplateRequest.add_member(:version, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "version"))
    GetEmailTemplateRequest.struct_class = Types::GetEmailTemplateRequest

    GetEmailTemplateResponse.add_member(:email_template_response, Shapes::ShapeRef.new(shape: EmailTemplateResponse, required: true, location_name: "EmailTemplateResponse"))
    GetEmailTemplateResponse.struct_class = Types::GetEmailTemplateResponse
    GetEmailTemplateResponse[:payload] = :email_template_response
    GetEmailTemplateResponse[:payload_member] = GetEmailTemplateResponse.member(:email_template_response)

    GetEndpointRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "application-id"))
    GetEndpointRequest.add_member(:endpoint_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "endpoint-id"))
    GetEndpointRequest.struct_class = Types::GetEndpointRequest

    GetEndpointResponse.add_member(:endpoint_response, Shapes::ShapeRef.new(shape: EndpointResponse, required: true, location_name: "EndpointResponse"))
    GetEndpointResponse.struct_class = Types::GetEndpointResponse
    GetEndpointResponse[:payload] = :endpoint_response
    GetEndpointResponse[:payload_member] = GetEndpointResponse.member(:endpoint_response)

    GetEventStreamRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "application-id"))
    GetEventStreamRequest.struct_class = Types::GetEventStreamRequest

    GetEventStreamResponse.add_member(:event_stream, Shapes::ShapeRef.new(shape: EventStream, required: true, location_name: "EventStream"))
    GetEventStreamResponse.struct_class = Types::GetEventStreamResponse
    GetEventStreamResponse[:payload] = :event_stream
    GetEventStreamResponse[:payload_member] = GetEventStreamResponse.member(:event_stream)

    GetExportJobRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "application-id"))
    GetExportJobRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "job-id"))
    GetExportJobRequest.struct_class = Types::GetExportJobRequest

    GetExportJobResponse.add_member(:export_job_response, Shapes::ShapeRef.new(shape: ExportJobResponse, required: true, location_name: "ExportJobResponse"))
    GetExportJobResponse.struct_class = Types::GetExportJobResponse
    GetExportJobResponse[:payload] = :export_job_response
    GetExportJobResponse[:payload_member] = GetExportJobResponse.member(:export_job_response)

    GetExportJobsRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "application-id"))
    GetExportJobsRequest.add_member(:page_size, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "page-size"))
    GetExportJobsRequest.add_member(:token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "token"))
    GetExportJobsRequest.struct_class = Types::GetExportJobsRequest

    GetExportJobsResponse.add_member(:export_jobs_response, Shapes::ShapeRef.new(shape: ExportJobsResponse, required: true, location_name: "ExportJobsResponse"))
    GetExportJobsResponse.struct_class = Types::GetExportJobsResponse
    GetExportJobsResponse[:payload] = :export_jobs_response
    GetExportJobsResponse[:payload_member] = GetExportJobsResponse.member(:export_jobs_response)

    GetGcmChannelRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "application-id"))
    GetGcmChannelRequest.struct_class = Types::GetGcmChannelRequest

    GetGcmChannelResponse.add_member(:gcm_channel_response, Shapes::ShapeRef.new(shape: GCMChannelResponse, required: true, location_name: "GCMChannelResponse"))
    GetGcmChannelResponse.struct_class = Types::GetGcmChannelResponse
    GetGcmChannelResponse[:payload] = :gcm_channel_response
    GetGcmChannelResponse[:payload_member] = GetGcmChannelResponse.member(:gcm_channel_response)

    GetImportJobRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "application-id"))
    GetImportJobRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "job-id"))
    GetImportJobRequest.struct_class = Types::GetImportJobRequest

    GetImportJobResponse.add_member(:import_job_response, Shapes::ShapeRef.new(shape: ImportJobResponse, required: true, location_name: "ImportJobResponse"))
    GetImportJobResponse.struct_class = Types::GetImportJobResponse
    GetImportJobResponse[:payload] = :import_job_response
    GetImportJobResponse[:payload_member] = GetImportJobResponse.member(:import_job_response)

    GetImportJobsRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "application-id"))
    GetImportJobsRequest.add_member(:page_size, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "page-size"))
    GetImportJobsRequest.add_member(:token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "token"))
    GetImportJobsRequest.struct_class = Types::GetImportJobsRequest

    GetImportJobsResponse.add_member(:import_jobs_response, Shapes::ShapeRef.new(shape: ImportJobsResponse, required: true, location_name: "ImportJobsResponse"))
    GetImportJobsResponse.struct_class = Types::GetImportJobsResponse
    GetImportJobsResponse[:payload] = :import_jobs_response
    GetImportJobsResponse[:payload_member] = GetImportJobsResponse.member(:import_jobs_response)

    GetJourneyDateRangeKpiRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "application-id"))
    GetJourneyDateRangeKpiRequest.add_member(:end_time, Shapes::ShapeRef.new(shape: __timestampIso8601, location: "querystring", location_name: "end-time"))
    GetJourneyDateRangeKpiRequest.add_member(:journey_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "journey-id"))
    GetJourneyDateRangeKpiRequest.add_member(:kpi_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "kpi-name"))
    GetJourneyDateRangeKpiRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "next-token"))
    GetJourneyDateRangeKpiRequest.add_member(:page_size, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "page-size"))
    GetJourneyDateRangeKpiRequest.add_member(:start_time, Shapes::ShapeRef.new(shape: __timestampIso8601, location: "querystring", location_name: "start-time"))
    GetJourneyDateRangeKpiRequest.struct_class = Types::GetJourneyDateRangeKpiRequest

    GetJourneyDateRangeKpiResponse.add_member(:journey_date_range_kpi_response, Shapes::ShapeRef.new(shape: JourneyDateRangeKpiResponse, required: true, location_name: "JourneyDateRangeKpiResponse"))
    GetJourneyDateRangeKpiResponse.struct_class = Types::GetJourneyDateRangeKpiResponse
    GetJourneyDateRangeKpiResponse[:payload] = :journey_date_range_kpi_response
    GetJourneyDateRangeKpiResponse[:payload_member] = GetJourneyDateRangeKpiResponse.member(:journey_date_range_kpi_response)

    GetJourneyExecutionActivityMetricsRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "application-id"))
    GetJourneyExecutionActivityMetricsRequest.add_member(:journey_activity_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "journey-activity-id"))
    GetJourneyExecutionActivityMetricsRequest.add_member(:journey_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "journey-id"))
    GetJourneyExecutionActivityMetricsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "next-token"))
    GetJourneyExecutionActivityMetricsRequest.add_member(:page_size, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "page-size"))
    GetJourneyExecutionActivityMetricsRequest.struct_class = Types::GetJourneyExecutionActivityMetricsRequest

    GetJourneyExecutionActivityMetricsResponse.add_member(:journey_execution_activity_metrics_response, Shapes::ShapeRef.new(shape: JourneyExecutionActivityMetricsResponse, required: true, location_name: "JourneyExecutionActivityMetricsResponse"))
    GetJourneyExecutionActivityMetricsResponse.struct_class = Types::GetJourneyExecutionActivityMetricsResponse
    GetJourneyExecutionActivityMetricsResponse[:payload] = :journey_execution_activity_metrics_response
    GetJourneyExecutionActivityMetricsResponse[:payload_member] = GetJourneyExecutionActivityMetricsResponse.member(:journey_execution_activity_metrics_response)

    GetJourneyExecutionMetricsRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "application-id"))
    GetJourneyExecutionMetricsRequest.add_member(:journey_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "journey-id"))
    GetJourneyExecutionMetricsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "next-token"))
    GetJourneyExecutionMetricsRequest.add_member(:page_size, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "page-size"))
    GetJourneyExecutionMetricsRequest.struct_class = Types::GetJourneyExecutionMetricsRequest

    GetJourneyExecutionMetricsResponse.add_member(:journey_execution_metrics_response, Shapes::ShapeRef.new(shape: JourneyExecutionMetricsResponse, required: true, location_name: "JourneyExecutionMetricsResponse"))
    GetJourneyExecutionMetricsResponse.struct_class = Types::GetJourneyExecutionMetricsResponse
    GetJourneyExecutionMetricsResponse[:payload] = :journey_execution_metrics_response
    GetJourneyExecutionMetricsResponse[:payload_member] = GetJourneyExecutionMetricsResponse.member(:journey_execution_metrics_response)

    GetJourneyRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "application-id"))
    GetJourneyRequest.add_member(:journey_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "journey-id"))
    GetJourneyRequest.struct_class = Types::GetJourneyRequest

    GetJourneyResponse.add_member(:journey_response, Shapes::ShapeRef.new(shape: JourneyResponse, required: true, location_name: "JourneyResponse"))
    GetJourneyResponse.struct_class = Types::GetJourneyResponse
    GetJourneyResponse[:payload] = :journey_response
    GetJourneyResponse[:payload_member] = GetJourneyResponse.member(:journey_response)

    GetPushTemplateRequest.add_member(:template_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "template-name"))
    GetPushTemplateRequest.add_member(:version, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "version"))
    GetPushTemplateRequest.struct_class = Types::GetPushTemplateRequest

    GetPushTemplateResponse.add_member(:push_notification_template_response, Shapes::ShapeRef.new(shape: PushNotificationTemplateResponse, required: true, location_name: "PushNotificationTemplateResponse"))
    GetPushTemplateResponse.struct_class = Types::GetPushTemplateResponse
    GetPushTemplateResponse[:payload] = :push_notification_template_response
    GetPushTemplateResponse[:payload_member] = GetPushTemplateResponse.member(:push_notification_template_response)

    GetRecommenderConfigurationRequest.add_member(:recommender_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "recommender-id"))
    GetRecommenderConfigurationRequest.struct_class = Types::GetRecommenderConfigurationRequest

    GetRecommenderConfigurationResponse.add_member(:recommender_configuration_response, Shapes::ShapeRef.new(shape: RecommenderConfigurationResponse, required: true, location_name: "RecommenderConfigurationResponse"))
    GetRecommenderConfigurationResponse.struct_class = Types::GetRecommenderConfigurationResponse
    GetRecommenderConfigurationResponse[:payload] = :recommender_configuration_response
    GetRecommenderConfigurationResponse[:payload_member] = GetRecommenderConfigurationResponse.member(:recommender_configuration_response)

    GetRecommenderConfigurationsRequest.add_member(:page_size, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "page-size"))
    GetRecommenderConfigurationsRequest.add_member(:token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "token"))
    GetRecommenderConfigurationsRequest.struct_class = Types::GetRecommenderConfigurationsRequest

    GetRecommenderConfigurationsResponse.add_member(:list_recommender_configurations_response, Shapes::ShapeRef.new(shape: ListRecommenderConfigurationsResponse, required: true, location_name: "ListRecommenderConfigurationsResponse"))
    GetRecommenderConfigurationsResponse.struct_class = Types::GetRecommenderConfigurationsResponse
    GetRecommenderConfigurationsResponse[:payload] = :list_recommender_configurations_response
    GetRecommenderConfigurationsResponse[:payload_member] = GetRecommenderConfigurationsResponse.member(:list_recommender_configurations_response)

    GetSegmentExportJobsRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "application-id"))
    GetSegmentExportJobsRequest.add_member(:page_size, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "page-size"))
    GetSegmentExportJobsRequest.add_member(:segment_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "segment-id"))
    GetSegmentExportJobsRequest.add_member(:token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "token"))
    GetSegmentExportJobsRequest.struct_class = Types::GetSegmentExportJobsRequest

    GetSegmentExportJobsResponse.add_member(:export_jobs_response, Shapes::ShapeRef.new(shape: ExportJobsResponse, required: true, location_name: "ExportJobsResponse"))
    GetSegmentExportJobsResponse.struct_class = Types::GetSegmentExportJobsResponse
    GetSegmentExportJobsResponse[:payload] = :export_jobs_response
    GetSegmentExportJobsResponse[:payload_member] = GetSegmentExportJobsResponse.member(:export_jobs_response)

    GetSegmentImportJobsRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "application-id"))
    GetSegmentImportJobsRequest.add_member(:page_size, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "page-size"))
    GetSegmentImportJobsRequest.add_member(:segment_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "segment-id"))
    GetSegmentImportJobsRequest.add_member(:token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "token"))
    GetSegmentImportJobsRequest.struct_class = Types::GetSegmentImportJobsRequest

    GetSegmentImportJobsResponse.add_member(:import_jobs_response, Shapes::ShapeRef.new(shape: ImportJobsResponse, required: true, location_name: "ImportJobsResponse"))
    GetSegmentImportJobsResponse.struct_class = Types::GetSegmentImportJobsResponse
    GetSegmentImportJobsResponse[:payload] = :import_jobs_response
    GetSegmentImportJobsResponse[:payload_member] = GetSegmentImportJobsResponse.member(:import_jobs_response)

    GetSegmentRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "application-id"))
    GetSegmentRequest.add_member(:segment_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "segment-id"))
    GetSegmentRequest.struct_class = Types::GetSegmentRequest

    GetSegmentResponse.add_member(:segment_response, Shapes::ShapeRef.new(shape: SegmentResponse, required: true, location_name: "SegmentResponse"))
    GetSegmentResponse.struct_class = Types::GetSegmentResponse
    GetSegmentResponse[:payload] = :segment_response
    GetSegmentResponse[:payload_member] = GetSegmentResponse.member(:segment_response)

    GetSegmentVersionRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "application-id"))
    GetSegmentVersionRequest.add_member(:segment_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "segment-id"))
    GetSegmentVersionRequest.add_member(:version, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "version"))
    GetSegmentVersionRequest.struct_class = Types::GetSegmentVersionRequest

    GetSegmentVersionResponse.add_member(:segment_response, Shapes::ShapeRef.new(shape: SegmentResponse, required: true, location_name: "SegmentResponse"))
    GetSegmentVersionResponse.struct_class = Types::GetSegmentVersionResponse
    GetSegmentVersionResponse[:payload] = :segment_response
    GetSegmentVersionResponse[:payload_member] = GetSegmentVersionResponse.member(:segment_response)

    GetSegmentVersionsRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "application-id"))
    GetSegmentVersionsRequest.add_member(:page_size, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "page-size"))
    GetSegmentVersionsRequest.add_member(:segment_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "segment-id"))
    GetSegmentVersionsRequest.add_member(:token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "token"))
    GetSegmentVersionsRequest.struct_class = Types::GetSegmentVersionsRequest

    GetSegmentVersionsResponse.add_member(:segments_response, Shapes::ShapeRef.new(shape: SegmentsResponse, required: true, location_name: "SegmentsResponse"))
    GetSegmentVersionsResponse.struct_class = Types::GetSegmentVersionsResponse
    GetSegmentVersionsResponse[:payload] = :segments_response
    GetSegmentVersionsResponse[:payload_member] = GetSegmentVersionsResponse.member(:segments_response)

    GetSegmentsRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "application-id"))
    GetSegmentsRequest.add_member(:page_size, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "page-size"))
    GetSegmentsRequest.add_member(:token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "token"))
    GetSegmentsRequest.struct_class = Types::GetSegmentsRequest

    GetSegmentsResponse.add_member(:segments_response, Shapes::ShapeRef.new(shape: SegmentsResponse, required: true, location_name: "SegmentsResponse"))
    GetSegmentsResponse.struct_class = Types::GetSegmentsResponse
    GetSegmentsResponse[:payload] = :segments_response
    GetSegmentsResponse[:payload_member] = GetSegmentsResponse.member(:segments_response)

    GetSmsChannelRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "application-id"))
    GetSmsChannelRequest.struct_class = Types::GetSmsChannelRequest

    GetSmsChannelResponse.add_member(:sms_channel_response, Shapes::ShapeRef.new(shape: SMSChannelResponse, required: true, location_name: "SMSChannelResponse"))
    GetSmsChannelResponse.struct_class = Types::GetSmsChannelResponse
    GetSmsChannelResponse[:payload] = :sms_channel_response
    GetSmsChannelResponse[:payload_member] = GetSmsChannelResponse.member(:sms_channel_response)

    GetSmsTemplateRequest.add_member(:template_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "template-name"))
    GetSmsTemplateRequest.add_member(:version, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "version"))
    GetSmsTemplateRequest.struct_class = Types::GetSmsTemplateRequest

    GetSmsTemplateResponse.add_member(:sms_template_response, Shapes::ShapeRef.new(shape: SMSTemplateResponse, required: true, location_name: "SMSTemplateResponse"))
    GetSmsTemplateResponse.struct_class = Types::GetSmsTemplateResponse
    GetSmsTemplateResponse[:payload] = :sms_template_response
    GetSmsTemplateResponse[:payload_member] = GetSmsTemplateResponse.member(:sms_template_response)

    GetUserEndpointsRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "application-id"))
    GetUserEndpointsRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "user-id"))
    GetUserEndpointsRequest.struct_class = Types::GetUserEndpointsRequest

    GetUserEndpointsResponse.add_member(:endpoints_response, Shapes::ShapeRef.new(shape: EndpointsResponse, required: true, location_name: "EndpointsResponse"))
    GetUserEndpointsResponse.struct_class = Types::GetUserEndpointsResponse
    GetUserEndpointsResponse[:payload] = :endpoints_response
    GetUserEndpointsResponse[:payload_member] = GetUserEndpointsResponse.member(:endpoints_response)

    GetVoiceChannelRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "application-id"))
    GetVoiceChannelRequest.struct_class = Types::GetVoiceChannelRequest

    GetVoiceChannelResponse.add_member(:voice_channel_response, Shapes::ShapeRef.new(shape: VoiceChannelResponse, required: true, location_name: "VoiceChannelResponse"))
    GetVoiceChannelResponse.struct_class = Types::GetVoiceChannelResponse
    GetVoiceChannelResponse[:payload] = :voice_channel_response
    GetVoiceChannelResponse[:payload_member] = GetVoiceChannelResponse.member(:voice_channel_response)

    GetVoiceTemplateRequest.add_member(:template_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "template-name"))
    GetVoiceTemplateRequest.add_member(:version, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "version"))
    GetVoiceTemplateRequest.struct_class = Types::GetVoiceTemplateRequest

    GetVoiceTemplateResponse.add_member(:voice_template_response, Shapes::ShapeRef.new(shape: VoiceTemplateResponse, required: true, location_name: "VoiceTemplateResponse"))
    GetVoiceTemplateResponse.struct_class = Types::GetVoiceTemplateResponse
    GetVoiceTemplateResponse[:payload] = :voice_template_response
    GetVoiceTemplateResponse[:payload_member] = GetVoiceTemplateResponse.member(:voice_template_response)

    HoldoutActivity.add_member(:next_activity, Shapes::ShapeRef.new(shape: __string, location_name: "NextActivity"))
    HoldoutActivity.add_member(:percentage, Shapes::ShapeRef.new(shape: __integer, required: true, location_name: "Percentage"))
    HoldoutActivity.struct_class = Types::HoldoutActivity

    ImportJobRequest.add_member(:define_segment, Shapes::ShapeRef.new(shape: __boolean, location_name: "DefineSegment"))
    ImportJobRequest.add_member(:external_id, Shapes::ShapeRef.new(shape: __string, location_name: "ExternalId"))
    ImportJobRequest.add_member(:format, Shapes::ShapeRef.new(shape: Format, required: true, location_name: "Format"))
    ImportJobRequest.add_member(:register_endpoints, Shapes::ShapeRef.new(shape: __boolean, location_name: "RegisterEndpoints"))
    ImportJobRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "RoleArn"))
    ImportJobRequest.add_member(:s3_url, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "S3Url"))
    ImportJobRequest.add_member(:segment_id, Shapes::ShapeRef.new(shape: __string, location_name: "SegmentId"))
    ImportJobRequest.add_member(:segment_name, Shapes::ShapeRef.new(shape: __string, location_name: "SegmentName"))
    ImportJobRequest.struct_class = Types::ImportJobRequest

    ImportJobResource.add_member(:define_segment, Shapes::ShapeRef.new(shape: __boolean, location_name: "DefineSegment"))
    ImportJobResource.add_member(:external_id, Shapes::ShapeRef.new(shape: __string, location_name: "ExternalId"))
    ImportJobResource.add_member(:format, Shapes::ShapeRef.new(shape: Format, required: true, location_name: "Format"))
    ImportJobResource.add_member(:register_endpoints, Shapes::ShapeRef.new(shape: __boolean, location_name: "RegisterEndpoints"))
    ImportJobResource.add_member(:role_arn, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "RoleArn"))
    ImportJobResource.add_member(:s3_url, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "S3Url"))
    ImportJobResource.add_member(:segment_id, Shapes::ShapeRef.new(shape: __string, location_name: "SegmentId"))
    ImportJobResource.add_member(:segment_name, Shapes::ShapeRef.new(shape: __string, location_name: "SegmentName"))
    ImportJobResource.struct_class = Types::ImportJobResource

    ImportJobResponse.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "ApplicationId"))
    ImportJobResponse.add_member(:completed_pieces, Shapes::ShapeRef.new(shape: __integer, location_name: "CompletedPieces"))
    ImportJobResponse.add_member(:completion_date, Shapes::ShapeRef.new(shape: __string, location_name: "CompletionDate"))
    ImportJobResponse.add_member(:creation_date, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "CreationDate"))
    ImportJobResponse.add_member(:definition, Shapes::ShapeRef.new(shape: ImportJobResource, required: true, location_name: "Definition"))
    ImportJobResponse.add_member(:failed_pieces, Shapes::ShapeRef.new(shape: __integer, location_name: "FailedPieces"))
    ImportJobResponse.add_member(:failures, Shapes::ShapeRef.new(shape: ListOf__string, location_name: "Failures"))
    ImportJobResponse.add_member(:id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "Id"))
    ImportJobResponse.add_member(:job_status, Shapes::ShapeRef.new(shape: JobStatus, required: true, location_name: "JobStatus"))
    ImportJobResponse.add_member(:total_failures, Shapes::ShapeRef.new(shape: __integer, location_name: "TotalFailures"))
    ImportJobResponse.add_member(:total_pieces, Shapes::ShapeRef.new(shape: __integer, location_name: "TotalPieces"))
    ImportJobResponse.add_member(:total_processed, Shapes::ShapeRef.new(shape: __integer, location_name: "TotalProcessed"))
    ImportJobResponse.add_member(:type, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "Type"))
    ImportJobResponse.struct_class = Types::ImportJobResponse

    ImportJobsResponse.add_member(:item, Shapes::ShapeRef.new(shape: ListOfImportJobResponse, required: true, location_name: "Item"))
    ImportJobsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "NextToken"))
    ImportJobsResponse.struct_class = Types::ImportJobsResponse

    InternalServerErrorException.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "Message"))
    InternalServerErrorException.add_member(:request_id, Shapes::ShapeRef.new(shape: __string, location_name: "RequestID"))
    InternalServerErrorException.struct_class = Types::InternalServerErrorException

    ItemResponse.add_member(:endpoint_item_response, Shapes::ShapeRef.new(shape: EndpointItemResponse, location_name: "EndpointItemResponse"))
    ItemResponse.add_member(:events_item_response, Shapes::ShapeRef.new(shape: MapOfEventItemResponse, location_name: "EventsItemResponse"))
    ItemResponse.struct_class = Types::ItemResponse

    JourneyCustomMessage.add_member(:data, Shapes::ShapeRef.new(shape: __string, location_name: "Data"))
    JourneyCustomMessage.struct_class = Types::JourneyCustomMessage

    JourneyDateRangeKpiResponse.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "ApplicationId"))
    JourneyDateRangeKpiResponse.add_member(:end_time, Shapes::ShapeRef.new(shape: __timestampIso8601, required: true, location_name: "EndTime"))
    JourneyDateRangeKpiResponse.add_member(:journey_id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "JourneyId"))
    JourneyDateRangeKpiResponse.add_member(:kpi_name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "KpiName"))
    JourneyDateRangeKpiResponse.add_member(:kpi_result, Shapes::ShapeRef.new(shape: BaseKpiResult, required: true, location_name: "KpiResult"))
    JourneyDateRangeKpiResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "NextToken"))
    JourneyDateRangeKpiResponse.add_member(:start_time, Shapes::ShapeRef.new(shape: __timestampIso8601, required: true, location_name: "StartTime"))
    JourneyDateRangeKpiResponse.struct_class = Types::JourneyDateRangeKpiResponse

    JourneyEmailMessage.add_member(:from_address, Shapes::ShapeRef.new(shape: __string, location_name: "FromAddress"))
    JourneyEmailMessage.struct_class = Types::JourneyEmailMessage

    JourneyExecutionActivityMetricsResponse.add_member(:activity_type, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "ActivityType"))
    JourneyExecutionActivityMetricsResponse.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "ApplicationId"))
    JourneyExecutionActivityMetricsResponse.add_member(:journey_activity_id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "JourneyActivityId"))
    JourneyExecutionActivityMetricsResponse.add_member(:journey_id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "JourneyId"))
    JourneyExecutionActivityMetricsResponse.add_member(:last_evaluated_time, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "LastEvaluatedTime"))
    JourneyExecutionActivityMetricsResponse.add_member(:metrics, Shapes::ShapeRef.new(shape: MapOf__string, required: true, location_name: "Metrics"))
    JourneyExecutionActivityMetricsResponse.struct_class = Types::JourneyExecutionActivityMetricsResponse

    JourneyExecutionMetricsResponse.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "ApplicationId"))
    JourneyExecutionMetricsResponse.add_member(:journey_id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "JourneyId"))
    JourneyExecutionMetricsResponse.add_member(:last_evaluated_time, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "LastEvaluatedTime"))
    JourneyExecutionMetricsResponse.add_member(:metrics, Shapes::ShapeRef.new(shape: MapOf__string, required: true, location_name: "Metrics"))
    JourneyExecutionMetricsResponse.struct_class = Types::JourneyExecutionMetricsResponse

    JourneyLimits.add_member(:daily_cap, Shapes::ShapeRef.new(shape: __integer, location_name: "DailyCap"))
    JourneyLimits.add_member(:endpoint_reentry_cap, Shapes::ShapeRef.new(shape: __integer, location_name: "EndpointReentryCap"))
    JourneyLimits.add_member(:messages_per_second, Shapes::ShapeRef.new(shape: __integer, location_name: "MessagesPerSecond"))
    JourneyLimits.struct_class = Types::JourneyLimits

    JourneyPushMessage.add_member(:time_to_live, Shapes::ShapeRef.new(shape: __string, location_name: "TimeToLive"))
    JourneyPushMessage.struct_class = Types::JourneyPushMessage

    JourneyResponse.add_member(:activities, Shapes::ShapeRef.new(shape: MapOfActivity, location_name: "Activities"))
    JourneyResponse.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "ApplicationId"))
    JourneyResponse.add_member(:creation_date, Shapes::ShapeRef.new(shape: __string, location_name: "CreationDate"))
    JourneyResponse.add_member(:id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "Id"))
    JourneyResponse.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: __string, location_name: "LastModifiedDate"))
    JourneyResponse.add_member(:limits, Shapes::ShapeRef.new(shape: JourneyLimits, location_name: "Limits"))
    JourneyResponse.add_member(:local_time, Shapes::ShapeRef.new(shape: __boolean, location_name: "LocalTime"))
    JourneyResponse.add_member(:name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "Name"))
    JourneyResponse.add_member(:quiet_time, Shapes::ShapeRef.new(shape: QuietTime, location_name: "QuietTime"))
    JourneyResponse.add_member(:refresh_frequency, Shapes::ShapeRef.new(shape: __string, location_name: "RefreshFrequency"))
    JourneyResponse.add_member(:schedule, Shapes::ShapeRef.new(shape: JourneySchedule, location_name: "Schedule"))
    JourneyResponse.add_member(:start_activity, Shapes::ShapeRef.new(shape: __string, location_name: "StartActivity"))
    JourneyResponse.add_member(:start_condition, Shapes::ShapeRef.new(shape: StartCondition, location_name: "StartCondition"))
    JourneyResponse.add_member(:state, Shapes::ShapeRef.new(shape: State, location_name: "State"))
    JourneyResponse.add_member(:tags, Shapes::ShapeRef.new(shape: MapOf__string, location_name: "tags"))
    JourneyResponse.struct_class = Types::JourneyResponse

    JourneySMSMessage.add_member(:message_type, Shapes::ShapeRef.new(shape: MessageType, location_name: "MessageType"))
    JourneySMSMessage.add_member(:sender_id, Shapes::ShapeRef.new(shape: __string, location_name: "SenderId"))
    JourneySMSMessage.struct_class = Types::JourneySMSMessage

    JourneySchedule.add_member(:end_time, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "EndTime"))
    JourneySchedule.add_member(:start_time, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "StartTime"))
    JourneySchedule.add_member(:timezone, Shapes::ShapeRef.new(shape: __string, location_name: "Timezone"))
    JourneySchedule.struct_class = Types::JourneySchedule

    JourneyStateRequest.add_member(:state, Shapes::ShapeRef.new(shape: State, location_name: "State"))
    JourneyStateRequest.struct_class = Types::JourneyStateRequest

    JourneysResponse.add_member(:item, Shapes::ShapeRef.new(shape: ListOfJourneyResponse, required: true, location_name: "Item"))
    JourneysResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "NextToken"))
    JourneysResponse.struct_class = Types::JourneysResponse

    ListJourneysRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "application-id"))
    ListJourneysRequest.add_member(:page_size, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "page-size"))
    ListJourneysRequest.add_member(:token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "token"))
    ListJourneysRequest.struct_class = Types::ListJourneysRequest

    ListJourneysResponse.add_member(:journeys_response, Shapes::ShapeRef.new(shape: JourneysResponse, required: true, location_name: "JourneysResponse"))
    ListJourneysResponse.struct_class = Types::ListJourneysResponse
    ListJourneysResponse[:payload] = :journeys_response
    ListJourneysResponse[:payload_member] = ListJourneysResponse.member(:journeys_response)

    ListOfActivityResponse.member = Shapes::ShapeRef.new(shape: ActivityResponse)

    ListOfApplicationResponse.member = Shapes::ShapeRef.new(shape: ApplicationResponse)

    ListOfCampaignResponse.member = Shapes::ShapeRef.new(shape: CampaignResponse)

    ListOfEndpointBatchItem.member = Shapes::ShapeRef.new(shape: EndpointBatchItem)

    ListOfEndpointResponse.member = Shapes::ShapeRef.new(shape: EndpointResponse)

    ListOfExportJobResponse.member = Shapes::ShapeRef.new(shape: ExportJobResponse)

    ListOfImportJobResponse.member = Shapes::ShapeRef.new(shape: ImportJobResponse)

    ListOfJourneyResponse.member = Shapes::ShapeRef.new(shape: JourneyResponse)

    ListOfMultiConditionalBranch.member = Shapes::ShapeRef.new(shape: MultiConditionalBranch)

    ListOfRandomSplitEntry.member = Shapes::ShapeRef.new(shape: RandomSplitEntry)

    ListOfRecommenderConfigurationResponse.member = Shapes::ShapeRef.new(shape: RecommenderConfigurationResponse)

    ListOfResultRow.member = Shapes::ShapeRef.new(shape: ResultRow)

    ListOfResultRowValue.member = Shapes::ShapeRef.new(shape: ResultRowValue)

    ListOfSegmentDimensions.member = Shapes::ShapeRef.new(shape: SegmentDimensions)

    ListOfSegmentGroup.member = Shapes::ShapeRef.new(shape: SegmentGroup)

    ListOfSegmentReference.member = Shapes::ShapeRef.new(shape: SegmentReference)

    ListOfSegmentResponse.member = Shapes::ShapeRef.new(shape: SegmentResponse)

    ListOfSimpleCondition.member = Shapes::ShapeRef.new(shape: SimpleCondition)

    ListOfTemplateResponse.member = Shapes::ShapeRef.new(shape: TemplateResponse)

    ListOfTemplateVersionResponse.member = Shapes::ShapeRef.new(shape: TemplateVersionResponse)

    ListOfTreatmentResource.member = Shapes::ShapeRef.new(shape: TreatmentResource)

    ListOfWriteTreatmentResource.member = Shapes::ShapeRef.new(shape: WriteTreatmentResource)

    ListOf__EndpointTypesElement.member = Shapes::ShapeRef.new(shape: __EndpointTypesElement)

    ListOf__string.member = Shapes::ShapeRef.new(shape: __string)

    ListRecommenderConfigurationsResponse.add_member(:item, Shapes::ShapeRef.new(shape: ListOfRecommenderConfigurationResponse, required: true, location_name: "Item"))
    ListRecommenderConfigurationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "NextToken"))
    ListRecommenderConfigurationsResponse.struct_class = Types::ListRecommenderConfigurationsResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "resource-arn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags_model, Shapes::ShapeRef.new(shape: TagsModel, required: true, location_name: "TagsModel"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse
    ListTagsForResourceResponse[:payload] = :tags_model
    ListTagsForResourceResponse[:payload_member] = ListTagsForResourceResponse.member(:tags_model)

    ListTemplateVersionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "next-token"))
    ListTemplateVersionsRequest.add_member(:page_size, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "page-size"))
    ListTemplateVersionsRequest.add_member(:template_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "template-name"))
    ListTemplateVersionsRequest.add_member(:template_type, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "template-type"))
    ListTemplateVersionsRequest.struct_class = Types::ListTemplateVersionsRequest

    ListTemplateVersionsResponse.add_member(:template_versions_response, Shapes::ShapeRef.new(shape: TemplateVersionsResponse, required: true, location_name: "TemplateVersionsResponse"))
    ListTemplateVersionsResponse.struct_class = Types::ListTemplateVersionsResponse
    ListTemplateVersionsResponse[:payload] = :template_versions_response
    ListTemplateVersionsResponse[:payload_member] = ListTemplateVersionsResponse.member(:template_versions_response)

    ListTemplatesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "next-token"))
    ListTemplatesRequest.add_member(:page_size, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "page-size"))
    ListTemplatesRequest.add_member(:prefix, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "prefix"))
    ListTemplatesRequest.add_member(:template_type, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "template-type"))
    ListTemplatesRequest.struct_class = Types::ListTemplatesRequest

    ListTemplatesResponse.add_member(:templates_response, Shapes::ShapeRef.new(shape: TemplatesResponse, required: true, location_name: "TemplatesResponse"))
    ListTemplatesResponse.struct_class = Types::ListTemplatesResponse
    ListTemplatesResponse[:payload] = :templates_response
    ListTemplatesResponse[:payload_member] = ListTemplatesResponse.member(:templates_response)

    MapOfActivity.key = Shapes::ShapeRef.new(shape: __string)
    MapOfActivity.value = Shapes::ShapeRef.new(shape: Activity)

    MapOfAddressConfiguration.key = Shapes::ShapeRef.new(shape: __string)
    MapOfAddressConfiguration.value = Shapes::ShapeRef.new(shape: AddressConfiguration)

    MapOfAttributeDimension.key = Shapes::ShapeRef.new(shape: __string)
    MapOfAttributeDimension.value = Shapes::ShapeRef.new(shape: AttributeDimension)

    MapOfChannelResponse.key = Shapes::ShapeRef.new(shape: __string)
    MapOfChannelResponse.value = Shapes::ShapeRef.new(shape: ChannelResponse)

    MapOfEndpointMessageResult.key = Shapes::ShapeRef.new(shape: __string)
    MapOfEndpointMessageResult.value = Shapes::ShapeRef.new(shape: EndpointMessageResult)

    MapOfEndpointSendConfiguration.key = Shapes::ShapeRef.new(shape: __string)
    MapOfEndpointSendConfiguration.value = Shapes::ShapeRef.new(shape: EndpointSendConfiguration)

    MapOfEvent.key = Shapes::ShapeRef.new(shape: __string)
    MapOfEvent.value = Shapes::ShapeRef.new(shape: Event)

    MapOfEventItemResponse.key = Shapes::ShapeRef.new(shape: __string)
    MapOfEventItemResponse.value = Shapes::ShapeRef.new(shape: EventItemResponse)

    MapOfEventsBatch.key = Shapes::ShapeRef.new(shape: __string)
    MapOfEventsBatch.value = Shapes::ShapeRef.new(shape: EventsBatch)

    MapOfItemResponse.key = Shapes::ShapeRef.new(shape: __string)
    MapOfItemResponse.value = Shapes::ShapeRef.new(shape: ItemResponse)

    MapOfListOf__string.key = Shapes::ShapeRef.new(shape: __string)
    MapOfListOf__string.value = Shapes::ShapeRef.new(shape: ListOf__string)

    MapOfMapOfEndpointMessageResult.key = Shapes::ShapeRef.new(shape: __string)
    MapOfMapOfEndpointMessageResult.value = Shapes::ShapeRef.new(shape: MapOfEndpointMessageResult)

    MapOfMessageResult.key = Shapes::ShapeRef.new(shape: __string)
    MapOfMessageResult.value = Shapes::ShapeRef.new(shape: MessageResult)

    MapOfMetricDimension.key = Shapes::ShapeRef.new(shape: __string)
    MapOfMetricDimension.value = Shapes::ShapeRef.new(shape: MetricDimension)

    MapOf__double.key = Shapes::ShapeRef.new(shape: __string)
    MapOf__double.value = Shapes::ShapeRef.new(shape: __double)

    MapOf__integer.key = Shapes::ShapeRef.new(shape: __string)
    MapOf__integer.value = Shapes::ShapeRef.new(shape: __integer)

    MapOf__string.key = Shapes::ShapeRef.new(shape: __string)
    MapOf__string.value = Shapes::ShapeRef.new(shape: __string)

    Message.add_member(:action, Shapes::ShapeRef.new(shape: Action, location_name: "Action"))
    Message.add_member(:body, Shapes::ShapeRef.new(shape: __string, location_name: "Body"))
    Message.add_member(:image_icon_url, Shapes::ShapeRef.new(shape: __string, location_name: "ImageIconUrl"))
    Message.add_member(:image_small_icon_url, Shapes::ShapeRef.new(shape: __string, location_name: "ImageSmallIconUrl"))
    Message.add_member(:image_url, Shapes::ShapeRef.new(shape: __string, location_name: "ImageUrl"))
    Message.add_member(:json_body, Shapes::ShapeRef.new(shape: __string, location_name: "JsonBody"))
    Message.add_member(:media_url, Shapes::ShapeRef.new(shape: __string, location_name: "MediaUrl"))
    Message.add_member(:raw_content, Shapes::ShapeRef.new(shape: __string, location_name: "RawContent"))
    Message.add_member(:silent_push, Shapes::ShapeRef.new(shape: __boolean, location_name: "SilentPush"))
    Message.add_member(:time_to_live, Shapes::ShapeRef.new(shape: __integer, location_name: "TimeToLive"))
    Message.add_member(:title, Shapes::ShapeRef.new(shape: __string, location_name: "Title"))
    Message.add_member(:url, Shapes::ShapeRef.new(shape: __string, location_name: "Url"))
    Message.struct_class = Types::Message

    MessageBody.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "Message"))
    MessageBody.add_member(:request_id, Shapes::ShapeRef.new(shape: __string, location_name: "RequestID"))
    MessageBody.struct_class = Types::MessageBody

    MessageConfiguration.add_member(:adm_message, Shapes::ShapeRef.new(shape: Message, location_name: "ADMMessage"))
    MessageConfiguration.add_member(:apns_message, Shapes::ShapeRef.new(shape: Message, location_name: "APNSMessage"))
    MessageConfiguration.add_member(:baidu_message, Shapes::ShapeRef.new(shape: Message, location_name: "BaiduMessage"))
    MessageConfiguration.add_member(:custom_message, Shapes::ShapeRef.new(shape: CampaignCustomMessage, location_name: "CustomMessage"))
    MessageConfiguration.add_member(:default_message, Shapes::ShapeRef.new(shape: Message, location_name: "DefaultMessage"))
    MessageConfiguration.add_member(:email_message, Shapes::ShapeRef.new(shape: CampaignEmailMessage, location_name: "EmailMessage"))
    MessageConfiguration.add_member(:gcm_message, Shapes::ShapeRef.new(shape: Message, location_name: "GCMMessage"))
    MessageConfiguration.add_member(:sms_message, Shapes::ShapeRef.new(shape: CampaignSmsMessage, location_name: "SMSMessage"))
    MessageConfiguration.struct_class = Types::MessageConfiguration

    MessageRequest.add_member(:addresses, Shapes::ShapeRef.new(shape: MapOfAddressConfiguration, location_name: "Addresses"))
    MessageRequest.add_member(:context, Shapes::ShapeRef.new(shape: MapOf__string, location_name: "Context"))
    MessageRequest.add_member(:endpoints, Shapes::ShapeRef.new(shape: MapOfEndpointSendConfiguration, location_name: "Endpoints"))
    MessageRequest.add_member(:message_configuration, Shapes::ShapeRef.new(shape: DirectMessageConfiguration, required: true, location_name: "MessageConfiguration"))
    MessageRequest.add_member(:template_configuration, Shapes::ShapeRef.new(shape: TemplateConfiguration, location_name: "TemplateConfiguration"))
    MessageRequest.add_member(:trace_id, Shapes::ShapeRef.new(shape: __string, location_name: "TraceId"))
    MessageRequest.struct_class = Types::MessageRequest

    MessageResponse.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "ApplicationId"))
    MessageResponse.add_member(:endpoint_result, Shapes::ShapeRef.new(shape: MapOfEndpointMessageResult, location_name: "EndpointResult"))
    MessageResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: __string, location_name: "RequestId"))
    MessageResponse.add_member(:result, Shapes::ShapeRef.new(shape: MapOfMessageResult, location_name: "Result"))
    MessageResponse.struct_class = Types::MessageResponse

    MessageResult.add_member(:delivery_status, Shapes::ShapeRef.new(shape: DeliveryStatus, required: true, location_name: "DeliveryStatus"))
    MessageResult.add_member(:message_id, Shapes::ShapeRef.new(shape: __string, location_name: "MessageId"))
    MessageResult.add_member(:status_code, Shapes::ShapeRef.new(shape: __integer, required: true, location_name: "StatusCode"))
    MessageResult.add_member(:status_message, Shapes::ShapeRef.new(shape: __string, location_name: "StatusMessage"))
    MessageResult.add_member(:updated_token, Shapes::ShapeRef.new(shape: __string, location_name: "UpdatedToken"))
    MessageResult.struct_class = Types::MessageResult

    MethodNotAllowedException.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "Message"))
    MethodNotAllowedException.add_member(:request_id, Shapes::ShapeRef.new(shape: __string, location_name: "RequestID"))
    MethodNotAllowedException.struct_class = Types::MethodNotAllowedException

    MetricDimension.add_member(:comparison_operator, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "ComparisonOperator"))
    MetricDimension.add_member(:value, Shapes::ShapeRef.new(shape: __double, required: true, location_name: "Value"))
    MetricDimension.struct_class = Types::MetricDimension

    MultiConditionalBranch.add_member(:condition, Shapes::ShapeRef.new(shape: SimpleCondition, location_name: "Condition"))
    MultiConditionalBranch.add_member(:next_activity, Shapes::ShapeRef.new(shape: __string, location_name: "NextActivity"))
    MultiConditionalBranch.struct_class = Types::MultiConditionalBranch

    MultiConditionalSplitActivity.add_member(:branches, Shapes::ShapeRef.new(shape: ListOfMultiConditionalBranch, location_name: "Branches"))
    MultiConditionalSplitActivity.add_member(:default_activity, Shapes::ShapeRef.new(shape: __string, location_name: "DefaultActivity"))
    MultiConditionalSplitActivity.add_member(:evaluation_wait_time, Shapes::ShapeRef.new(shape: WaitTime, location_name: "EvaluationWaitTime"))
    MultiConditionalSplitActivity.struct_class = Types::MultiConditionalSplitActivity

    NotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "Message"))
    NotFoundException.add_member(:request_id, Shapes::ShapeRef.new(shape: __string, location_name: "RequestID"))
    NotFoundException.struct_class = Types::NotFoundException

    NumberValidateRequest.add_member(:iso_country_code, Shapes::ShapeRef.new(shape: __string, location_name: "IsoCountryCode"))
    NumberValidateRequest.add_member(:phone_number, Shapes::ShapeRef.new(shape: __string, location_name: "PhoneNumber"))
    NumberValidateRequest.struct_class = Types::NumberValidateRequest

    NumberValidateResponse.add_member(:carrier, Shapes::ShapeRef.new(shape: __string, location_name: "Carrier"))
    NumberValidateResponse.add_member(:city, Shapes::ShapeRef.new(shape: __string, location_name: "City"))
    NumberValidateResponse.add_member(:cleansed_phone_number_e164, Shapes::ShapeRef.new(shape: __string, location_name: "CleansedPhoneNumberE164"))
    NumberValidateResponse.add_member(:cleansed_phone_number_national, Shapes::ShapeRef.new(shape: __string, location_name: "CleansedPhoneNumberNational"))
    NumberValidateResponse.add_member(:country, Shapes::ShapeRef.new(shape: __string, location_name: "Country"))
    NumberValidateResponse.add_member(:country_code_iso_2, Shapes::ShapeRef.new(shape: __string, location_name: "CountryCodeIso2"))
    NumberValidateResponse.add_member(:country_code_numeric, Shapes::ShapeRef.new(shape: __string, location_name: "CountryCodeNumeric"))
    NumberValidateResponse.add_member(:county, Shapes::ShapeRef.new(shape: __string, location_name: "County"))
    NumberValidateResponse.add_member(:original_country_code_iso_2, Shapes::ShapeRef.new(shape: __string, location_name: "OriginalCountryCodeIso2"))
    NumberValidateResponse.add_member(:original_phone_number, Shapes::ShapeRef.new(shape: __string, location_name: "OriginalPhoneNumber"))
    NumberValidateResponse.add_member(:phone_type, Shapes::ShapeRef.new(shape: __string, location_name: "PhoneType"))
    NumberValidateResponse.add_member(:phone_type_code, Shapes::ShapeRef.new(shape: __integer, location_name: "PhoneTypeCode"))
    NumberValidateResponse.add_member(:timezone, Shapes::ShapeRef.new(shape: __string, location_name: "Timezone"))
    NumberValidateResponse.add_member(:zip_code, Shapes::ShapeRef.new(shape: __string, location_name: "ZipCode"))
    NumberValidateResponse.struct_class = Types::NumberValidateResponse

    PayloadTooLargeException.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "Message"))
    PayloadTooLargeException.add_member(:request_id, Shapes::ShapeRef.new(shape: __string, location_name: "RequestID"))
    PayloadTooLargeException.struct_class = Types::PayloadTooLargeException

    PhoneNumberValidateRequest.add_member(:number_validate_request, Shapes::ShapeRef.new(shape: NumberValidateRequest, required: true, location_name: "NumberValidateRequest"))
    PhoneNumberValidateRequest.struct_class = Types::PhoneNumberValidateRequest
    PhoneNumberValidateRequest[:payload] = :number_validate_request
    PhoneNumberValidateRequest[:payload_member] = PhoneNumberValidateRequest.member(:number_validate_request)

    PhoneNumberValidateResponse.add_member(:number_validate_response, Shapes::ShapeRef.new(shape: NumberValidateResponse, required: true, location_name: "NumberValidateResponse"))
    PhoneNumberValidateResponse.struct_class = Types::PhoneNumberValidateResponse
    PhoneNumberValidateResponse[:payload] = :number_validate_response
    PhoneNumberValidateResponse[:payload_member] = PhoneNumberValidateResponse.member(:number_validate_response)

    PublicEndpoint.add_member(:address, Shapes::ShapeRef.new(shape: __string, location_name: "Address"))
    PublicEndpoint.add_member(:attributes, Shapes::ShapeRef.new(shape: MapOfListOf__string, location_name: "Attributes"))
    PublicEndpoint.add_member(:channel_type, Shapes::ShapeRef.new(shape: ChannelType, location_name: "ChannelType"))
    PublicEndpoint.add_member(:demographic, Shapes::ShapeRef.new(shape: EndpointDemographic, location_name: "Demographic"))
    PublicEndpoint.add_member(:effective_date, Shapes::ShapeRef.new(shape: __string, location_name: "EffectiveDate"))
    PublicEndpoint.add_member(:endpoint_status, Shapes::ShapeRef.new(shape: __string, location_name: "EndpointStatus"))
    PublicEndpoint.add_member(:location, Shapes::ShapeRef.new(shape: EndpointLocation, location_name: "Location"))
    PublicEndpoint.add_member(:metrics, Shapes::ShapeRef.new(shape: MapOf__double, location_name: "Metrics"))
    PublicEndpoint.add_member(:opt_out, Shapes::ShapeRef.new(shape: __string, location_name: "OptOut"))
    PublicEndpoint.add_member(:request_id, Shapes::ShapeRef.new(shape: __string, location_name: "RequestId"))
    PublicEndpoint.add_member(:user, Shapes::ShapeRef.new(shape: EndpointUser, location_name: "User"))
    PublicEndpoint.struct_class = Types::PublicEndpoint

    PushMessageActivity.add_member(:message_config, Shapes::ShapeRef.new(shape: JourneyPushMessage, location_name: "MessageConfig"))
    PushMessageActivity.add_member(:next_activity, Shapes::ShapeRef.new(shape: __string, location_name: "NextActivity"))
    PushMessageActivity.add_member(:template_name, Shapes::ShapeRef.new(shape: __string, location_name: "TemplateName"))
    PushMessageActivity.add_member(:template_version, Shapes::ShapeRef.new(shape: __string, location_name: "TemplateVersion"))
    PushMessageActivity.struct_class = Types::PushMessageActivity

    PushNotificationTemplateRequest.add_member(:adm, Shapes::ShapeRef.new(shape: AndroidPushNotificationTemplate, location_name: "ADM"))
    PushNotificationTemplateRequest.add_member(:apns, Shapes::ShapeRef.new(shape: APNSPushNotificationTemplate, location_name: "APNS"))
    PushNotificationTemplateRequest.add_member(:baidu, Shapes::ShapeRef.new(shape: AndroidPushNotificationTemplate, location_name: "Baidu"))
    PushNotificationTemplateRequest.add_member(:default, Shapes::ShapeRef.new(shape: DefaultPushNotificationTemplate, location_name: "Default"))
    PushNotificationTemplateRequest.add_member(:default_substitutions, Shapes::ShapeRef.new(shape: __string, location_name: "DefaultSubstitutions"))
    PushNotificationTemplateRequest.add_member(:gcm, Shapes::ShapeRef.new(shape: AndroidPushNotificationTemplate, location_name: "GCM"))
    PushNotificationTemplateRequest.add_member(:recommender_id, Shapes::ShapeRef.new(shape: __string, location_name: "RecommenderId"))
    PushNotificationTemplateRequest.add_member(:tags, Shapes::ShapeRef.new(shape: MapOf__string, location_name: "tags"))
    PushNotificationTemplateRequest.add_member(:template_description, Shapes::ShapeRef.new(shape: __string, location_name: "TemplateDescription"))
    PushNotificationTemplateRequest.struct_class = Types::PushNotificationTemplateRequest

    PushNotificationTemplateResponse.add_member(:adm, Shapes::ShapeRef.new(shape: AndroidPushNotificationTemplate, location_name: "ADM"))
    PushNotificationTemplateResponse.add_member(:apns, Shapes::ShapeRef.new(shape: APNSPushNotificationTemplate, location_name: "APNS"))
    PushNotificationTemplateResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "Arn"))
    PushNotificationTemplateResponse.add_member(:baidu, Shapes::ShapeRef.new(shape: AndroidPushNotificationTemplate, location_name: "Baidu"))
    PushNotificationTemplateResponse.add_member(:creation_date, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "CreationDate"))
    PushNotificationTemplateResponse.add_member(:default, Shapes::ShapeRef.new(shape: DefaultPushNotificationTemplate, location_name: "Default"))
    PushNotificationTemplateResponse.add_member(:default_substitutions, Shapes::ShapeRef.new(shape: __string, location_name: "DefaultSubstitutions"))
    PushNotificationTemplateResponse.add_member(:gcm, Shapes::ShapeRef.new(shape: AndroidPushNotificationTemplate, location_name: "GCM"))
    PushNotificationTemplateResponse.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "LastModifiedDate"))
    PushNotificationTemplateResponse.add_member(:recommender_id, Shapes::ShapeRef.new(shape: __string, location_name: "RecommenderId"))
    PushNotificationTemplateResponse.add_member(:tags, Shapes::ShapeRef.new(shape: MapOf__string, location_name: "tags"))
    PushNotificationTemplateResponse.add_member(:template_description, Shapes::ShapeRef.new(shape: __string, location_name: "TemplateDescription"))
    PushNotificationTemplateResponse.add_member(:template_name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "TemplateName"))
    PushNotificationTemplateResponse.add_member(:template_type, Shapes::ShapeRef.new(shape: TemplateType, required: true, location_name: "TemplateType"))
    PushNotificationTemplateResponse.add_member(:version, Shapes::ShapeRef.new(shape: __string, location_name: "Version"))
    PushNotificationTemplateResponse.struct_class = Types::PushNotificationTemplateResponse

    PutEventStreamRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "application-id"))
    PutEventStreamRequest.add_member(:write_event_stream, Shapes::ShapeRef.new(shape: WriteEventStream, required: true, location_name: "WriteEventStream"))
    PutEventStreamRequest.struct_class = Types::PutEventStreamRequest
    PutEventStreamRequest[:payload] = :write_event_stream
    PutEventStreamRequest[:payload_member] = PutEventStreamRequest.member(:write_event_stream)

    PutEventStreamResponse.add_member(:event_stream, Shapes::ShapeRef.new(shape: EventStream, required: true, location_name: "EventStream"))
    PutEventStreamResponse.struct_class = Types::PutEventStreamResponse
    PutEventStreamResponse[:payload] = :event_stream
    PutEventStreamResponse[:payload_member] = PutEventStreamResponse.member(:event_stream)

    PutEventsRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "application-id"))
    PutEventsRequest.add_member(:events_request, Shapes::ShapeRef.new(shape: EventsRequest, required: true, location_name: "EventsRequest"))
    PutEventsRequest.struct_class = Types::PutEventsRequest
    PutEventsRequest[:payload] = :events_request
    PutEventsRequest[:payload_member] = PutEventsRequest.member(:events_request)

    PutEventsResponse.add_member(:events_response, Shapes::ShapeRef.new(shape: EventsResponse, required: true, location_name: "EventsResponse"))
    PutEventsResponse.struct_class = Types::PutEventsResponse
    PutEventsResponse[:payload] = :events_response
    PutEventsResponse[:payload_member] = PutEventsResponse.member(:events_response)

    QuietTime.add_member(:end, Shapes::ShapeRef.new(shape: __string, location_name: "End"))
    QuietTime.add_member(:start, Shapes::ShapeRef.new(shape: __string, location_name: "Start"))
    QuietTime.struct_class = Types::QuietTime

    RandomSplitActivity.add_member(:branches, Shapes::ShapeRef.new(shape: ListOfRandomSplitEntry, location_name: "Branches"))
    RandomSplitActivity.struct_class = Types::RandomSplitActivity

    RandomSplitEntry.add_member(:next_activity, Shapes::ShapeRef.new(shape: __string, location_name: "NextActivity"))
    RandomSplitEntry.add_member(:percentage, Shapes::ShapeRef.new(shape: __integer, location_name: "Percentage"))
    RandomSplitEntry.struct_class = Types::RandomSplitEntry

    RawEmail.add_member(:data, Shapes::ShapeRef.new(shape: __blob, location_name: "Data"))
    RawEmail.struct_class = Types::RawEmail

    RecencyDimension.add_member(:duration, Shapes::ShapeRef.new(shape: Duration, required: true, location_name: "Duration"))
    RecencyDimension.add_member(:recency_type, Shapes::ShapeRef.new(shape: RecencyType, required: true, location_name: "RecencyType"))
    RecencyDimension.struct_class = Types::RecencyDimension

    RecommenderConfigurationResponse.add_member(:attributes, Shapes::ShapeRef.new(shape: MapOf__string, location_name: "Attributes"))
    RecommenderConfigurationResponse.add_member(:creation_date, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "CreationDate"))
    RecommenderConfigurationResponse.add_member(:description, Shapes::ShapeRef.new(shape: __string, location_name: "Description"))
    RecommenderConfigurationResponse.add_member(:id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "Id"))
    RecommenderConfigurationResponse.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "LastModifiedDate"))
    RecommenderConfigurationResponse.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "Name"))
    RecommenderConfigurationResponse.add_member(:recommendation_provider_id_type, Shapes::ShapeRef.new(shape: __string, location_name: "RecommendationProviderIdType"))
    RecommenderConfigurationResponse.add_member(:recommendation_provider_role_arn, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "RecommendationProviderRoleArn"))
    RecommenderConfigurationResponse.add_member(:recommendation_provider_uri, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "RecommendationProviderUri"))
    RecommenderConfigurationResponse.add_member(:recommendation_transformer_uri, Shapes::ShapeRef.new(shape: __string, location_name: "RecommendationTransformerUri"))
    RecommenderConfigurationResponse.add_member(:recommendations_display_name, Shapes::ShapeRef.new(shape: __string, location_name: "RecommendationsDisplayName"))
    RecommenderConfigurationResponse.add_member(:recommendations_per_message, Shapes::ShapeRef.new(shape: __integer, location_name: "RecommendationsPerMessage"))
    RecommenderConfigurationResponse.struct_class = Types::RecommenderConfigurationResponse

    RemoveAttributesRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "application-id"))
    RemoveAttributesRequest.add_member(:attribute_type, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "attribute-type"))
    RemoveAttributesRequest.add_member(:update_attributes_request, Shapes::ShapeRef.new(shape: UpdateAttributesRequest, required: true, location_name: "UpdateAttributesRequest"))
    RemoveAttributesRequest.struct_class = Types::RemoveAttributesRequest
    RemoveAttributesRequest[:payload] = :update_attributes_request
    RemoveAttributesRequest[:payload_member] = RemoveAttributesRequest.member(:update_attributes_request)

    RemoveAttributesResponse.add_member(:attributes_resource, Shapes::ShapeRef.new(shape: AttributesResource, required: true, location_name: "AttributesResource"))
    RemoveAttributesResponse.struct_class = Types::RemoveAttributesResponse
    RemoveAttributesResponse[:payload] = :attributes_resource
    RemoveAttributesResponse[:payload_member] = RemoveAttributesResponse.member(:attributes_resource)

    ResultRow.add_member(:grouped_bys, Shapes::ShapeRef.new(shape: ListOfResultRowValue, required: true, location_name: "GroupedBys"))
    ResultRow.add_member(:values, Shapes::ShapeRef.new(shape: ListOfResultRowValue, required: true, location_name: "Values"))
    ResultRow.struct_class = Types::ResultRow

    ResultRowValue.add_member(:key, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "Key"))
    ResultRowValue.add_member(:type, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "Type"))
    ResultRowValue.add_member(:value, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "Value"))
    ResultRowValue.struct_class = Types::ResultRowValue

    SMSChannelRequest.add_member(:enabled, Shapes::ShapeRef.new(shape: __boolean, location_name: "Enabled"))
    SMSChannelRequest.add_member(:sender_id, Shapes::ShapeRef.new(shape: __string, location_name: "SenderId"))
    SMSChannelRequest.add_member(:short_code, Shapes::ShapeRef.new(shape: __string, location_name: "ShortCode"))
    SMSChannelRequest.struct_class = Types::SMSChannelRequest

    SMSChannelResponse.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, location_name: "ApplicationId"))
    SMSChannelResponse.add_member(:creation_date, Shapes::ShapeRef.new(shape: __string, location_name: "CreationDate"))
    SMSChannelResponse.add_member(:enabled, Shapes::ShapeRef.new(shape: __boolean, location_name: "Enabled"))
    SMSChannelResponse.add_member(:has_credential, Shapes::ShapeRef.new(shape: __boolean, location_name: "HasCredential"))
    SMSChannelResponse.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "Id"))
    SMSChannelResponse.add_member(:is_archived, Shapes::ShapeRef.new(shape: __boolean, location_name: "IsArchived"))
    SMSChannelResponse.add_member(:last_modified_by, Shapes::ShapeRef.new(shape: __string, location_name: "LastModifiedBy"))
    SMSChannelResponse.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: __string, location_name: "LastModifiedDate"))
    SMSChannelResponse.add_member(:platform, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "Platform"))
    SMSChannelResponse.add_member(:promotional_messages_per_second, Shapes::ShapeRef.new(shape: __integer, location_name: "PromotionalMessagesPerSecond"))
    SMSChannelResponse.add_member(:sender_id, Shapes::ShapeRef.new(shape: __string, location_name: "SenderId"))
    SMSChannelResponse.add_member(:short_code, Shapes::ShapeRef.new(shape: __string, location_name: "ShortCode"))
    SMSChannelResponse.add_member(:transactional_messages_per_second, Shapes::ShapeRef.new(shape: __integer, location_name: "TransactionalMessagesPerSecond"))
    SMSChannelResponse.add_member(:version, Shapes::ShapeRef.new(shape: __integer, location_name: "Version"))
    SMSChannelResponse.struct_class = Types::SMSChannelResponse

    SMSMessage.add_member(:body, Shapes::ShapeRef.new(shape: __string, location_name: "Body"))
    SMSMessage.add_member(:keyword, Shapes::ShapeRef.new(shape: __string, location_name: "Keyword"))
    SMSMessage.add_member(:media_url, Shapes::ShapeRef.new(shape: __string, location_name: "MediaUrl"))
    SMSMessage.add_member(:message_type, Shapes::ShapeRef.new(shape: MessageType, location_name: "MessageType"))
    SMSMessage.add_member(:origination_number, Shapes::ShapeRef.new(shape: __string, location_name: "OriginationNumber"))
    SMSMessage.add_member(:sender_id, Shapes::ShapeRef.new(shape: __string, location_name: "SenderId"))
    SMSMessage.add_member(:substitutions, Shapes::ShapeRef.new(shape: MapOfListOf__string, location_name: "Substitutions"))
    SMSMessage.struct_class = Types::SMSMessage

    SMSMessageActivity.add_member(:message_config, Shapes::ShapeRef.new(shape: JourneySMSMessage, location_name: "MessageConfig"))
    SMSMessageActivity.add_member(:next_activity, Shapes::ShapeRef.new(shape: __string, location_name: "NextActivity"))
    SMSMessageActivity.add_member(:template_name, Shapes::ShapeRef.new(shape: __string, location_name: "TemplateName"))
    SMSMessageActivity.add_member(:template_version, Shapes::ShapeRef.new(shape: __string, location_name: "TemplateVersion"))
    SMSMessageActivity.struct_class = Types::SMSMessageActivity

    SMSTemplateRequest.add_member(:body, Shapes::ShapeRef.new(shape: __string, location_name: "Body"))
    SMSTemplateRequest.add_member(:default_substitutions, Shapes::ShapeRef.new(shape: __string, location_name: "DefaultSubstitutions"))
    SMSTemplateRequest.add_member(:recommender_id, Shapes::ShapeRef.new(shape: __string, location_name: "RecommenderId"))
    SMSTemplateRequest.add_member(:tags, Shapes::ShapeRef.new(shape: MapOf__string, location_name: "tags"))
    SMSTemplateRequest.add_member(:template_description, Shapes::ShapeRef.new(shape: __string, location_name: "TemplateDescription"))
    SMSTemplateRequest.struct_class = Types::SMSTemplateRequest

    SMSTemplateResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "Arn"))
    SMSTemplateResponse.add_member(:body, Shapes::ShapeRef.new(shape: __string, location_name: "Body"))
    SMSTemplateResponse.add_member(:creation_date, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "CreationDate"))
    SMSTemplateResponse.add_member(:default_substitutions, Shapes::ShapeRef.new(shape: __string, location_name: "DefaultSubstitutions"))
    SMSTemplateResponse.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "LastModifiedDate"))
    SMSTemplateResponse.add_member(:recommender_id, Shapes::ShapeRef.new(shape: __string, location_name: "RecommenderId"))
    SMSTemplateResponse.add_member(:tags, Shapes::ShapeRef.new(shape: MapOf__string, location_name: "tags"))
    SMSTemplateResponse.add_member(:template_description, Shapes::ShapeRef.new(shape: __string, location_name: "TemplateDescription"))
    SMSTemplateResponse.add_member(:template_name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "TemplateName"))
    SMSTemplateResponse.add_member(:template_type, Shapes::ShapeRef.new(shape: TemplateType, required: true, location_name: "TemplateType"))
    SMSTemplateResponse.add_member(:version, Shapes::ShapeRef.new(shape: __string, location_name: "Version"))
    SMSTemplateResponse.struct_class = Types::SMSTemplateResponse

    Schedule.add_member(:end_time, Shapes::ShapeRef.new(shape: __string, location_name: "EndTime"))
    Schedule.add_member(:event_filter, Shapes::ShapeRef.new(shape: CampaignEventFilter, location_name: "EventFilter"))
    Schedule.add_member(:frequency, Shapes::ShapeRef.new(shape: Frequency, location_name: "Frequency"))
    Schedule.add_member(:is_local_time, Shapes::ShapeRef.new(shape: __boolean, location_name: "IsLocalTime"))
    Schedule.add_member(:quiet_time, Shapes::ShapeRef.new(shape: QuietTime, location_name: "QuietTime"))
    Schedule.add_member(:start_time, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "StartTime"))
    Schedule.add_member(:timezone, Shapes::ShapeRef.new(shape: __string, location_name: "Timezone"))
    Schedule.struct_class = Types::Schedule

    SegmentBehaviors.add_member(:recency, Shapes::ShapeRef.new(shape: RecencyDimension, location_name: "Recency"))
    SegmentBehaviors.struct_class = Types::SegmentBehaviors

    SegmentCondition.add_member(:segment_id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "SegmentId"))
    SegmentCondition.struct_class = Types::SegmentCondition

    SegmentDemographics.add_member(:app_version, Shapes::ShapeRef.new(shape: SetDimension, location_name: "AppVersion"))
    SegmentDemographics.add_member(:channel, Shapes::ShapeRef.new(shape: SetDimension, location_name: "Channel"))
    SegmentDemographics.add_member(:device_type, Shapes::ShapeRef.new(shape: SetDimension, location_name: "DeviceType"))
    SegmentDemographics.add_member(:make, Shapes::ShapeRef.new(shape: SetDimension, location_name: "Make"))
    SegmentDemographics.add_member(:model, Shapes::ShapeRef.new(shape: SetDimension, location_name: "Model"))
    SegmentDemographics.add_member(:platform, Shapes::ShapeRef.new(shape: SetDimension, location_name: "Platform"))
    SegmentDemographics.struct_class = Types::SegmentDemographics

    SegmentDimensions.add_member(:attributes, Shapes::ShapeRef.new(shape: MapOfAttributeDimension, location_name: "Attributes"))
    SegmentDimensions.add_member(:behavior, Shapes::ShapeRef.new(shape: SegmentBehaviors, location_name: "Behavior"))
    SegmentDimensions.add_member(:demographic, Shapes::ShapeRef.new(shape: SegmentDemographics, location_name: "Demographic"))
    SegmentDimensions.add_member(:location, Shapes::ShapeRef.new(shape: SegmentLocation, location_name: "Location"))
    SegmentDimensions.add_member(:metrics, Shapes::ShapeRef.new(shape: MapOfMetricDimension, location_name: "Metrics"))
    SegmentDimensions.add_member(:user_attributes, Shapes::ShapeRef.new(shape: MapOfAttributeDimension, location_name: "UserAttributes"))
    SegmentDimensions.struct_class = Types::SegmentDimensions

    SegmentGroup.add_member(:dimensions, Shapes::ShapeRef.new(shape: ListOfSegmentDimensions, location_name: "Dimensions"))
    SegmentGroup.add_member(:source_segments, Shapes::ShapeRef.new(shape: ListOfSegmentReference, location_name: "SourceSegments"))
    SegmentGroup.add_member(:source_type, Shapes::ShapeRef.new(shape: SourceType, location_name: "SourceType"))
    SegmentGroup.add_member(:type, Shapes::ShapeRef.new(shape: Type, location_name: "Type"))
    SegmentGroup.struct_class = Types::SegmentGroup

    SegmentGroupList.add_member(:groups, Shapes::ShapeRef.new(shape: ListOfSegmentGroup, location_name: "Groups"))
    SegmentGroupList.add_member(:include, Shapes::ShapeRef.new(shape: Include, location_name: "Include"))
    SegmentGroupList.struct_class = Types::SegmentGroupList

    SegmentImportResource.add_member(:channel_counts, Shapes::ShapeRef.new(shape: MapOf__integer, location_name: "ChannelCounts"))
    SegmentImportResource.add_member(:external_id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "ExternalId"))
    SegmentImportResource.add_member(:format, Shapes::ShapeRef.new(shape: Format, required: true, location_name: "Format"))
    SegmentImportResource.add_member(:role_arn, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "RoleArn"))
    SegmentImportResource.add_member(:s3_url, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "S3Url"))
    SegmentImportResource.add_member(:size, Shapes::ShapeRef.new(shape: __integer, required: true, location_name: "Size"))
    SegmentImportResource.struct_class = Types::SegmentImportResource

    SegmentLocation.add_member(:country, Shapes::ShapeRef.new(shape: SetDimension, location_name: "Country"))
    SegmentLocation.add_member(:gps_point, Shapes::ShapeRef.new(shape: GPSPointDimension, location_name: "GPSPoint"))
    SegmentLocation.struct_class = Types::SegmentLocation

    SegmentReference.add_member(:id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "Id"))
    SegmentReference.add_member(:version, Shapes::ShapeRef.new(shape: __integer, location_name: "Version"))
    SegmentReference.struct_class = Types::SegmentReference

    SegmentResponse.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "ApplicationId"))
    SegmentResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "Arn"))
    SegmentResponse.add_member(:creation_date, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "CreationDate"))
    SegmentResponse.add_member(:dimensions, Shapes::ShapeRef.new(shape: SegmentDimensions, location_name: "Dimensions"))
    SegmentResponse.add_member(:id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "Id"))
    SegmentResponse.add_member(:import_definition, Shapes::ShapeRef.new(shape: SegmentImportResource, location_name: "ImportDefinition"))
    SegmentResponse.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: __string, location_name: "LastModifiedDate"))
    SegmentResponse.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "Name"))
    SegmentResponse.add_member(:segment_groups, Shapes::ShapeRef.new(shape: SegmentGroupList, location_name: "SegmentGroups"))
    SegmentResponse.add_member(:segment_type, Shapes::ShapeRef.new(shape: SegmentType, required: true, location_name: "SegmentType"))
    SegmentResponse.add_member(:tags, Shapes::ShapeRef.new(shape: MapOf__string, location_name: "tags"))
    SegmentResponse.add_member(:version, Shapes::ShapeRef.new(shape: __integer, location_name: "Version"))
    SegmentResponse.struct_class = Types::SegmentResponse

    SegmentsResponse.add_member(:item, Shapes::ShapeRef.new(shape: ListOfSegmentResponse, required: true, location_name: "Item"))
    SegmentsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "NextToken"))
    SegmentsResponse.struct_class = Types::SegmentsResponse

    SendMessagesRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "application-id"))
    SendMessagesRequest.add_member(:message_request, Shapes::ShapeRef.new(shape: MessageRequest, required: true, location_name: "MessageRequest"))
    SendMessagesRequest.struct_class = Types::SendMessagesRequest
    SendMessagesRequest[:payload] = :message_request
    SendMessagesRequest[:payload_member] = SendMessagesRequest.member(:message_request)

    SendMessagesResponse.add_member(:message_response, Shapes::ShapeRef.new(shape: MessageResponse, required: true, location_name: "MessageResponse"))
    SendMessagesResponse.struct_class = Types::SendMessagesResponse
    SendMessagesResponse[:payload] = :message_response
    SendMessagesResponse[:payload_member] = SendMessagesResponse.member(:message_response)

    SendUsersMessageRequest.add_member(:context, Shapes::ShapeRef.new(shape: MapOf__string, location_name: "Context"))
    SendUsersMessageRequest.add_member(:message_configuration, Shapes::ShapeRef.new(shape: DirectMessageConfiguration, required: true, location_name: "MessageConfiguration"))
    SendUsersMessageRequest.add_member(:template_configuration, Shapes::ShapeRef.new(shape: TemplateConfiguration, location_name: "TemplateConfiguration"))
    SendUsersMessageRequest.add_member(:trace_id, Shapes::ShapeRef.new(shape: __string, location_name: "TraceId"))
    SendUsersMessageRequest.add_member(:users, Shapes::ShapeRef.new(shape: MapOfEndpointSendConfiguration, required: true, location_name: "Users"))
    SendUsersMessageRequest.struct_class = Types::SendUsersMessageRequest

    SendUsersMessageResponse.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "ApplicationId"))
    SendUsersMessageResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: __string, location_name: "RequestId"))
    SendUsersMessageResponse.add_member(:result, Shapes::ShapeRef.new(shape: MapOfMapOfEndpointMessageResult, location_name: "Result"))
    SendUsersMessageResponse.struct_class = Types::SendUsersMessageResponse

    SendUsersMessagesRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "application-id"))
    SendUsersMessagesRequest.add_member(:send_users_message_request, Shapes::ShapeRef.new(shape: SendUsersMessageRequest, required: true, location_name: "SendUsersMessageRequest"))
    SendUsersMessagesRequest.struct_class = Types::SendUsersMessagesRequest
    SendUsersMessagesRequest[:payload] = :send_users_message_request
    SendUsersMessagesRequest[:payload_member] = SendUsersMessagesRequest.member(:send_users_message_request)

    SendUsersMessagesResponse.add_member(:send_users_message_response, Shapes::ShapeRef.new(shape: SendUsersMessageResponse, required: true, location_name: "SendUsersMessageResponse"))
    SendUsersMessagesResponse.struct_class = Types::SendUsersMessagesResponse
    SendUsersMessagesResponse[:payload] = :send_users_message_response
    SendUsersMessagesResponse[:payload_member] = SendUsersMessagesResponse.member(:send_users_message_response)

    Session.add_member(:duration, Shapes::ShapeRef.new(shape: __integer, location_name: "Duration"))
    Session.add_member(:id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "Id"))
    Session.add_member(:start_timestamp, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "StartTimestamp"))
    Session.add_member(:stop_timestamp, Shapes::ShapeRef.new(shape: __string, location_name: "StopTimestamp"))
    Session.struct_class = Types::Session

    SetDimension.add_member(:dimension_type, Shapes::ShapeRef.new(shape: DimensionType, location_name: "DimensionType"))
    SetDimension.add_member(:values, Shapes::ShapeRef.new(shape: ListOf__string, required: true, location_name: "Values"))
    SetDimension.struct_class = Types::SetDimension

    SimpleCondition.add_member(:event_condition, Shapes::ShapeRef.new(shape: EventCondition, location_name: "EventCondition"))
    SimpleCondition.add_member(:segment_condition, Shapes::ShapeRef.new(shape: SegmentCondition, location_name: "SegmentCondition"))
    SimpleCondition.add_member(:segment_dimensions, Shapes::ShapeRef.new(shape: SegmentDimensions, location_name: "segmentDimensions"))
    SimpleCondition.struct_class = Types::SimpleCondition

    SimpleEmail.add_member(:html_part, Shapes::ShapeRef.new(shape: SimpleEmailPart, location_name: "HtmlPart"))
    SimpleEmail.add_member(:subject, Shapes::ShapeRef.new(shape: SimpleEmailPart, location_name: "Subject"))
    SimpleEmail.add_member(:text_part, Shapes::ShapeRef.new(shape: SimpleEmailPart, location_name: "TextPart"))
    SimpleEmail.struct_class = Types::SimpleEmail

    SimpleEmailPart.add_member(:charset, Shapes::ShapeRef.new(shape: __string, location_name: "Charset"))
    SimpleEmailPart.add_member(:data, Shapes::ShapeRef.new(shape: __string, location_name: "Data"))
    SimpleEmailPart.struct_class = Types::SimpleEmailPart

    StartCondition.add_member(:description, Shapes::ShapeRef.new(shape: __string, location_name: "Description"))
    StartCondition.add_member(:segment_start_condition, Shapes::ShapeRef.new(shape: SegmentCondition, location_name: "SegmentStartCondition"))
    StartCondition.struct_class = Types::StartCondition

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "resource-arn"))
    TagResourceRequest.add_member(:tags_model, Shapes::ShapeRef.new(shape: TagsModel, required: true, location_name: "TagsModel"))
    TagResourceRequest.struct_class = Types::TagResourceRequest
    TagResourceRequest[:payload] = :tags_model
    TagResourceRequest[:payload_member] = TagResourceRequest.member(:tags_model)

    TagsModel.add_member(:tags, Shapes::ShapeRef.new(shape: MapOf__string, required: true, location_name: "tags"))
    TagsModel.struct_class = Types::TagsModel

    Template.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "Name"))
    Template.add_member(:version, Shapes::ShapeRef.new(shape: __string, location_name: "Version"))
    Template.struct_class = Types::Template

    TemplateActiveVersionRequest.add_member(:version, Shapes::ShapeRef.new(shape: __string, location_name: "Version"))
    TemplateActiveVersionRequest.struct_class = Types::TemplateActiveVersionRequest

    TemplateConfiguration.add_member(:email_template, Shapes::ShapeRef.new(shape: Template, location_name: "EmailTemplate"))
    TemplateConfiguration.add_member(:push_template, Shapes::ShapeRef.new(shape: Template, location_name: "PushTemplate"))
    TemplateConfiguration.add_member(:sms_template, Shapes::ShapeRef.new(shape: Template, location_name: "SMSTemplate"))
    TemplateConfiguration.add_member(:voice_template, Shapes::ShapeRef.new(shape: Template, location_name: "VoiceTemplate"))
    TemplateConfiguration.struct_class = Types::TemplateConfiguration

    TemplateResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "Arn"))
    TemplateResponse.add_member(:creation_date, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "CreationDate"))
    TemplateResponse.add_member(:default_substitutions, Shapes::ShapeRef.new(shape: __string, location_name: "DefaultSubstitutions"))
    TemplateResponse.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "LastModifiedDate"))
    TemplateResponse.add_member(:tags, Shapes::ShapeRef.new(shape: MapOf__string, location_name: "tags"))
    TemplateResponse.add_member(:template_description, Shapes::ShapeRef.new(shape: __string, location_name: "TemplateDescription"))
    TemplateResponse.add_member(:template_name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "TemplateName"))
    TemplateResponse.add_member(:template_type, Shapes::ShapeRef.new(shape: TemplateType, required: true, location_name: "TemplateType"))
    TemplateResponse.add_member(:version, Shapes::ShapeRef.new(shape: __string, location_name: "Version"))
    TemplateResponse.struct_class = Types::TemplateResponse

    TemplateVersionResponse.add_member(:creation_date, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "CreationDate"))
    TemplateVersionResponse.add_member(:default_substitutions, Shapes::ShapeRef.new(shape: __string, location_name: "DefaultSubstitutions"))
    TemplateVersionResponse.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "LastModifiedDate"))
    TemplateVersionResponse.add_member(:template_description, Shapes::ShapeRef.new(shape: __string, location_name: "TemplateDescription"))
    TemplateVersionResponse.add_member(:template_name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "TemplateName"))
    TemplateVersionResponse.add_member(:template_type, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "TemplateType"))
    TemplateVersionResponse.add_member(:version, Shapes::ShapeRef.new(shape: __string, location_name: "Version"))
    TemplateVersionResponse.struct_class = Types::TemplateVersionResponse

    TemplateVersionsResponse.add_member(:item, Shapes::ShapeRef.new(shape: ListOfTemplateVersionResponse, required: true, location_name: "Item"))
    TemplateVersionsResponse.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "Message"))
    TemplateVersionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "NextToken"))
    TemplateVersionsResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: __string, location_name: "RequestID"))
    TemplateVersionsResponse.struct_class = Types::TemplateVersionsResponse

    TemplatesResponse.add_member(:item, Shapes::ShapeRef.new(shape: ListOfTemplateResponse, required: true, location_name: "Item"))
    TemplatesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "NextToken"))
    TemplatesResponse.struct_class = Types::TemplatesResponse

    TooManyRequestsException.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "Message"))
    TooManyRequestsException.add_member(:request_id, Shapes::ShapeRef.new(shape: __string, location_name: "RequestID"))
    TooManyRequestsException.struct_class = Types::TooManyRequestsException

    TreatmentResource.add_member(:custom_delivery_configuration, Shapes::ShapeRef.new(shape: CustomDeliveryConfiguration, location_name: "CustomDeliveryConfiguration"))
    TreatmentResource.add_member(:id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "Id"))
    TreatmentResource.add_member(:message_configuration, Shapes::ShapeRef.new(shape: MessageConfiguration, location_name: "MessageConfiguration"))
    TreatmentResource.add_member(:schedule, Shapes::ShapeRef.new(shape: Schedule, location_name: "Schedule"))
    TreatmentResource.add_member(:size_percent, Shapes::ShapeRef.new(shape: __integer, required: true, location_name: "SizePercent"))
    TreatmentResource.add_member(:state, Shapes::ShapeRef.new(shape: CampaignState, location_name: "State"))
    TreatmentResource.add_member(:template_configuration, Shapes::ShapeRef.new(shape: TemplateConfiguration, location_name: "TemplateConfiguration"))
    TreatmentResource.add_member(:treatment_description, Shapes::ShapeRef.new(shape: __string, location_name: "TreatmentDescription"))
    TreatmentResource.add_member(:treatment_name, Shapes::ShapeRef.new(shape: __string, location_name: "TreatmentName"))
    TreatmentResource.struct_class = Types::TreatmentResource

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "resource-arn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: ListOf__string, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UpdateAdmChannelRequest.add_member(:adm_channel_request, Shapes::ShapeRef.new(shape: ADMChannelRequest, required: true, location_name: "ADMChannelRequest"))
    UpdateAdmChannelRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "application-id"))
    UpdateAdmChannelRequest.struct_class = Types::UpdateAdmChannelRequest
    UpdateAdmChannelRequest[:payload] = :adm_channel_request
    UpdateAdmChannelRequest[:payload_member] = UpdateAdmChannelRequest.member(:adm_channel_request)

    UpdateAdmChannelResponse.add_member(:adm_channel_response, Shapes::ShapeRef.new(shape: ADMChannelResponse, required: true, location_name: "ADMChannelResponse"))
    UpdateAdmChannelResponse.struct_class = Types::UpdateAdmChannelResponse
    UpdateAdmChannelResponse[:payload] = :adm_channel_response
    UpdateAdmChannelResponse[:payload_member] = UpdateAdmChannelResponse.member(:adm_channel_response)

    UpdateApnsChannelRequest.add_member(:apns_channel_request, Shapes::ShapeRef.new(shape: APNSChannelRequest, required: true, location_name: "APNSChannelRequest"))
    UpdateApnsChannelRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "application-id"))
    UpdateApnsChannelRequest.struct_class = Types::UpdateApnsChannelRequest
    UpdateApnsChannelRequest[:payload] = :apns_channel_request
    UpdateApnsChannelRequest[:payload_member] = UpdateApnsChannelRequest.member(:apns_channel_request)

    UpdateApnsChannelResponse.add_member(:apns_channel_response, Shapes::ShapeRef.new(shape: APNSChannelResponse, required: true, location_name: "APNSChannelResponse"))
    UpdateApnsChannelResponse.struct_class = Types::UpdateApnsChannelResponse
    UpdateApnsChannelResponse[:payload] = :apns_channel_response
    UpdateApnsChannelResponse[:payload_member] = UpdateApnsChannelResponse.member(:apns_channel_response)

    UpdateApnsSandboxChannelRequest.add_member(:apns_sandbox_channel_request, Shapes::ShapeRef.new(shape: APNSSandboxChannelRequest, required: true, location_name: "APNSSandboxChannelRequest"))
    UpdateApnsSandboxChannelRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "application-id"))
    UpdateApnsSandboxChannelRequest.struct_class = Types::UpdateApnsSandboxChannelRequest
    UpdateApnsSandboxChannelRequest[:payload] = :apns_sandbox_channel_request
    UpdateApnsSandboxChannelRequest[:payload_member] = UpdateApnsSandboxChannelRequest.member(:apns_sandbox_channel_request)

    UpdateApnsSandboxChannelResponse.add_member(:apns_sandbox_channel_response, Shapes::ShapeRef.new(shape: APNSSandboxChannelResponse, required: true, location_name: "APNSSandboxChannelResponse"))
    UpdateApnsSandboxChannelResponse.struct_class = Types::UpdateApnsSandboxChannelResponse
    UpdateApnsSandboxChannelResponse[:payload] = :apns_sandbox_channel_response
    UpdateApnsSandboxChannelResponse[:payload_member] = UpdateApnsSandboxChannelResponse.member(:apns_sandbox_channel_response)

    UpdateApnsVoipChannelRequest.add_member(:apns_voip_channel_request, Shapes::ShapeRef.new(shape: APNSVoipChannelRequest, required: true, location_name: "APNSVoipChannelRequest"))
    UpdateApnsVoipChannelRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "application-id"))
    UpdateApnsVoipChannelRequest.struct_class = Types::UpdateApnsVoipChannelRequest
    UpdateApnsVoipChannelRequest[:payload] = :apns_voip_channel_request
    UpdateApnsVoipChannelRequest[:payload_member] = UpdateApnsVoipChannelRequest.member(:apns_voip_channel_request)

    UpdateApnsVoipChannelResponse.add_member(:apns_voip_channel_response, Shapes::ShapeRef.new(shape: APNSVoipChannelResponse, required: true, location_name: "APNSVoipChannelResponse"))
    UpdateApnsVoipChannelResponse.struct_class = Types::UpdateApnsVoipChannelResponse
    UpdateApnsVoipChannelResponse[:payload] = :apns_voip_channel_response
    UpdateApnsVoipChannelResponse[:payload_member] = UpdateApnsVoipChannelResponse.member(:apns_voip_channel_response)

    UpdateApnsVoipSandboxChannelRequest.add_member(:apns_voip_sandbox_channel_request, Shapes::ShapeRef.new(shape: APNSVoipSandboxChannelRequest, required: true, location_name: "APNSVoipSandboxChannelRequest"))
    UpdateApnsVoipSandboxChannelRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "application-id"))
    UpdateApnsVoipSandboxChannelRequest.struct_class = Types::UpdateApnsVoipSandboxChannelRequest
    UpdateApnsVoipSandboxChannelRequest[:payload] = :apns_voip_sandbox_channel_request
    UpdateApnsVoipSandboxChannelRequest[:payload_member] = UpdateApnsVoipSandboxChannelRequest.member(:apns_voip_sandbox_channel_request)

    UpdateApnsVoipSandboxChannelResponse.add_member(:apns_voip_sandbox_channel_response, Shapes::ShapeRef.new(shape: APNSVoipSandboxChannelResponse, required: true, location_name: "APNSVoipSandboxChannelResponse"))
    UpdateApnsVoipSandboxChannelResponse.struct_class = Types::UpdateApnsVoipSandboxChannelResponse
    UpdateApnsVoipSandboxChannelResponse[:payload] = :apns_voip_sandbox_channel_response
    UpdateApnsVoipSandboxChannelResponse[:payload_member] = UpdateApnsVoipSandboxChannelResponse.member(:apns_voip_sandbox_channel_response)

    UpdateApplicationSettingsRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "application-id"))
    UpdateApplicationSettingsRequest.add_member(:write_application_settings_request, Shapes::ShapeRef.new(shape: WriteApplicationSettingsRequest, required: true, location_name: "WriteApplicationSettingsRequest"))
    UpdateApplicationSettingsRequest.struct_class = Types::UpdateApplicationSettingsRequest
    UpdateApplicationSettingsRequest[:payload] = :write_application_settings_request
    UpdateApplicationSettingsRequest[:payload_member] = UpdateApplicationSettingsRequest.member(:write_application_settings_request)

    UpdateApplicationSettingsResponse.add_member(:application_settings_resource, Shapes::ShapeRef.new(shape: ApplicationSettingsResource, required: true, location_name: "ApplicationSettingsResource"))
    UpdateApplicationSettingsResponse.struct_class = Types::UpdateApplicationSettingsResponse
    UpdateApplicationSettingsResponse[:payload] = :application_settings_resource
    UpdateApplicationSettingsResponse[:payload_member] = UpdateApplicationSettingsResponse.member(:application_settings_resource)

    UpdateAttributesRequest.add_member(:blacklist, Shapes::ShapeRef.new(shape: ListOf__string, location_name: "Blacklist"))
    UpdateAttributesRequest.struct_class = Types::UpdateAttributesRequest

    UpdateBaiduChannelRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "application-id"))
    UpdateBaiduChannelRequest.add_member(:baidu_channel_request, Shapes::ShapeRef.new(shape: BaiduChannelRequest, required: true, location_name: "BaiduChannelRequest"))
    UpdateBaiduChannelRequest.struct_class = Types::UpdateBaiduChannelRequest
    UpdateBaiduChannelRequest[:payload] = :baidu_channel_request
    UpdateBaiduChannelRequest[:payload_member] = UpdateBaiduChannelRequest.member(:baidu_channel_request)

    UpdateBaiduChannelResponse.add_member(:baidu_channel_response, Shapes::ShapeRef.new(shape: BaiduChannelResponse, required: true, location_name: "BaiduChannelResponse"))
    UpdateBaiduChannelResponse.struct_class = Types::UpdateBaiduChannelResponse
    UpdateBaiduChannelResponse[:payload] = :baidu_channel_response
    UpdateBaiduChannelResponse[:payload_member] = UpdateBaiduChannelResponse.member(:baidu_channel_response)

    UpdateCampaignRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "application-id"))
    UpdateCampaignRequest.add_member(:campaign_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "campaign-id"))
    UpdateCampaignRequest.add_member(:write_campaign_request, Shapes::ShapeRef.new(shape: WriteCampaignRequest, required: true, location_name: "WriteCampaignRequest"))
    UpdateCampaignRequest.struct_class = Types::UpdateCampaignRequest
    UpdateCampaignRequest[:payload] = :write_campaign_request
    UpdateCampaignRequest[:payload_member] = UpdateCampaignRequest.member(:write_campaign_request)

    UpdateCampaignResponse.add_member(:campaign_response, Shapes::ShapeRef.new(shape: CampaignResponse, required: true, location_name: "CampaignResponse"))
    UpdateCampaignResponse.struct_class = Types::UpdateCampaignResponse
    UpdateCampaignResponse[:payload] = :campaign_response
    UpdateCampaignResponse[:payload_member] = UpdateCampaignResponse.member(:campaign_response)

    UpdateEmailChannelRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "application-id"))
    UpdateEmailChannelRequest.add_member(:email_channel_request, Shapes::ShapeRef.new(shape: EmailChannelRequest, required: true, location_name: "EmailChannelRequest"))
    UpdateEmailChannelRequest.struct_class = Types::UpdateEmailChannelRequest
    UpdateEmailChannelRequest[:payload] = :email_channel_request
    UpdateEmailChannelRequest[:payload_member] = UpdateEmailChannelRequest.member(:email_channel_request)

    UpdateEmailChannelResponse.add_member(:email_channel_response, Shapes::ShapeRef.new(shape: EmailChannelResponse, required: true, location_name: "EmailChannelResponse"))
    UpdateEmailChannelResponse.struct_class = Types::UpdateEmailChannelResponse
    UpdateEmailChannelResponse[:payload] = :email_channel_response
    UpdateEmailChannelResponse[:payload_member] = UpdateEmailChannelResponse.member(:email_channel_response)

    UpdateEmailTemplateRequest.add_member(:create_new_version, Shapes::ShapeRef.new(shape: __boolean, location: "querystring", location_name: "create-new-version"))
    UpdateEmailTemplateRequest.add_member(:email_template_request, Shapes::ShapeRef.new(shape: EmailTemplateRequest, required: true, location_name: "EmailTemplateRequest"))
    UpdateEmailTemplateRequest.add_member(:template_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "template-name"))
    UpdateEmailTemplateRequest.add_member(:version, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "version"))
    UpdateEmailTemplateRequest.struct_class = Types::UpdateEmailTemplateRequest
    UpdateEmailTemplateRequest[:payload] = :email_template_request
    UpdateEmailTemplateRequest[:payload_member] = UpdateEmailTemplateRequest.member(:email_template_request)

    UpdateEmailTemplateResponse.add_member(:message_body, Shapes::ShapeRef.new(shape: MessageBody, required: true, location_name: "MessageBody"))
    UpdateEmailTemplateResponse.struct_class = Types::UpdateEmailTemplateResponse
    UpdateEmailTemplateResponse[:payload] = :message_body
    UpdateEmailTemplateResponse[:payload_member] = UpdateEmailTemplateResponse.member(:message_body)

    UpdateEndpointRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "application-id"))
    UpdateEndpointRequest.add_member(:endpoint_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "endpoint-id"))
    UpdateEndpointRequest.add_member(:endpoint_request, Shapes::ShapeRef.new(shape: EndpointRequest, required: true, location_name: "EndpointRequest"))
    UpdateEndpointRequest.struct_class = Types::UpdateEndpointRequest
    UpdateEndpointRequest[:payload] = :endpoint_request
    UpdateEndpointRequest[:payload_member] = UpdateEndpointRequest.member(:endpoint_request)

    UpdateEndpointResponse.add_member(:message_body, Shapes::ShapeRef.new(shape: MessageBody, required: true, location_name: "MessageBody"))
    UpdateEndpointResponse.struct_class = Types::UpdateEndpointResponse
    UpdateEndpointResponse[:payload] = :message_body
    UpdateEndpointResponse[:payload_member] = UpdateEndpointResponse.member(:message_body)

    UpdateEndpointsBatchRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "application-id"))
    UpdateEndpointsBatchRequest.add_member(:endpoint_batch_request, Shapes::ShapeRef.new(shape: EndpointBatchRequest, required: true, location_name: "EndpointBatchRequest"))
    UpdateEndpointsBatchRequest.struct_class = Types::UpdateEndpointsBatchRequest
    UpdateEndpointsBatchRequest[:payload] = :endpoint_batch_request
    UpdateEndpointsBatchRequest[:payload_member] = UpdateEndpointsBatchRequest.member(:endpoint_batch_request)

    UpdateEndpointsBatchResponse.add_member(:message_body, Shapes::ShapeRef.new(shape: MessageBody, required: true, location_name: "MessageBody"))
    UpdateEndpointsBatchResponse.struct_class = Types::UpdateEndpointsBatchResponse
    UpdateEndpointsBatchResponse[:payload] = :message_body
    UpdateEndpointsBatchResponse[:payload_member] = UpdateEndpointsBatchResponse.member(:message_body)

    UpdateGcmChannelRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "application-id"))
    UpdateGcmChannelRequest.add_member(:gcm_channel_request, Shapes::ShapeRef.new(shape: GCMChannelRequest, required: true, location_name: "GCMChannelRequest"))
    UpdateGcmChannelRequest.struct_class = Types::UpdateGcmChannelRequest
    UpdateGcmChannelRequest[:payload] = :gcm_channel_request
    UpdateGcmChannelRequest[:payload_member] = UpdateGcmChannelRequest.member(:gcm_channel_request)

    UpdateGcmChannelResponse.add_member(:gcm_channel_response, Shapes::ShapeRef.new(shape: GCMChannelResponse, required: true, location_name: "GCMChannelResponse"))
    UpdateGcmChannelResponse.struct_class = Types::UpdateGcmChannelResponse
    UpdateGcmChannelResponse[:payload] = :gcm_channel_response
    UpdateGcmChannelResponse[:payload_member] = UpdateGcmChannelResponse.member(:gcm_channel_response)

    UpdateJourneyRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "application-id"))
    UpdateJourneyRequest.add_member(:journey_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "journey-id"))
    UpdateJourneyRequest.add_member(:write_journey_request, Shapes::ShapeRef.new(shape: WriteJourneyRequest, required: true, location_name: "WriteJourneyRequest"))
    UpdateJourneyRequest.struct_class = Types::UpdateJourneyRequest
    UpdateJourneyRequest[:payload] = :write_journey_request
    UpdateJourneyRequest[:payload_member] = UpdateJourneyRequest.member(:write_journey_request)

    UpdateJourneyResponse.add_member(:journey_response, Shapes::ShapeRef.new(shape: JourneyResponse, required: true, location_name: "JourneyResponse"))
    UpdateJourneyResponse.struct_class = Types::UpdateJourneyResponse
    UpdateJourneyResponse[:payload] = :journey_response
    UpdateJourneyResponse[:payload_member] = UpdateJourneyResponse.member(:journey_response)

    UpdateJourneyStateRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "application-id"))
    UpdateJourneyStateRequest.add_member(:journey_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "journey-id"))
    UpdateJourneyStateRequest.add_member(:journey_state_request, Shapes::ShapeRef.new(shape: JourneyStateRequest, required: true, location_name: "JourneyStateRequest"))
    UpdateJourneyStateRequest.struct_class = Types::UpdateJourneyStateRequest
    UpdateJourneyStateRequest[:payload] = :journey_state_request
    UpdateJourneyStateRequest[:payload_member] = UpdateJourneyStateRequest.member(:journey_state_request)

    UpdateJourneyStateResponse.add_member(:journey_response, Shapes::ShapeRef.new(shape: JourneyResponse, required: true, location_name: "JourneyResponse"))
    UpdateJourneyStateResponse.struct_class = Types::UpdateJourneyStateResponse
    UpdateJourneyStateResponse[:payload] = :journey_response
    UpdateJourneyStateResponse[:payload_member] = UpdateJourneyStateResponse.member(:journey_response)

    UpdatePushTemplateRequest.add_member(:create_new_version, Shapes::ShapeRef.new(shape: __boolean, location: "querystring", location_name: "create-new-version"))
    UpdatePushTemplateRequest.add_member(:push_notification_template_request, Shapes::ShapeRef.new(shape: PushNotificationTemplateRequest, required: true, location_name: "PushNotificationTemplateRequest"))
    UpdatePushTemplateRequest.add_member(:template_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "template-name"))
    UpdatePushTemplateRequest.add_member(:version, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "version"))
    UpdatePushTemplateRequest.struct_class = Types::UpdatePushTemplateRequest
    UpdatePushTemplateRequest[:payload] = :push_notification_template_request
    UpdatePushTemplateRequest[:payload_member] = UpdatePushTemplateRequest.member(:push_notification_template_request)

    UpdatePushTemplateResponse.add_member(:message_body, Shapes::ShapeRef.new(shape: MessageBody, required: true, location_name: "MessageBody"))
    UpdatePushTemplateResponse.struct_class = Types::UpdatePushTemplateResponse
    UpdatePushTemplateResponse[:payload] = :message_body
    UpdatePushTemplateResponse[:payload_member] = UpdatePushTemplateResponse.member(:message_body)

    UpdateRecommenderConfiguration.add_member(:attributes, Shapes::ShapeRef.new(shape: MapOf__string, location_name: "Attributes"))
    UpdateRecommenderConfiguration.add_member(:description, Shapes::ShapeRef.new(shape: __string, location_name: "Description"))
    UpdateRecommenderConfiguration.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "Name"))
    UpdateRecommenderConfiguration.add_member(:recommendation_provider_id_type, Shapes::ShapeRef.new(shape: __string, location_name: "RecommendationProviderIdType"))
    UpdateRecommenderConfiguration.add_member(:recommendation_provider_role_arn, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "RecommendationProviderRoleArn"))
    UpdateRecommenderConfiguration.add_member(:recommendation_provider_uri, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "RecommendationProviderUri"))
    UpdateRecommenderConfiguration.add_member(:recommendation_transformer_uri, Shapes::ShapeRef.new(shape: __string, location_name: "RecommendationTransformerUri"))
    UpdateRecommenderConfiguration.add_member(:recommendations_display_name, Shapes::ShapeRef.new(shape: __string, location_name: "RecommendationsDisplayName"))
    UpdateRecommenderConfiguration.add_member(:recommendations_per_message, Shapes::ShapeRef.new(shape: __integer, location_name: "RecommendationsPerMessage"))
    UpdateRecommenderConfiguration.struct_class = Types::UpdateRecommenderConfiguration

    UpdateRecommenderConfigurationRequest.add_member(:recommender_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "recommender-id"))
    UpdateRecommenderConfigurationRequest.add_member(:update_recommender_configuration, Shapes::ShapeRef.new(shape: UpdateRecommenderConfiguration, required: true, location_name: "UpdateRecommenderConfiguration"))
    UpdateRecommenderConfigurationRequest.struct_class = Types::UpdateRecommenderConfigurationRequest
    UpdateRecommenderConfigurationRequest[:payload] = :update_recommender_configuration
    UpdateRecommenderConfigurationRequest[:payload_member] = UpdateRecommenderConfigurationRequest.member(:update_recommender_configuration)

    UpdateRecommenderConfigurationResponse.add_member(:recommender_configuration_response, Shapes::ShapeRef.new(shape: RecommenderConfigurationResponse, required: true, location_name: "RecommenderConfigurationResponse"))
    UpdateRecommenderConfigurationResponse.struct_class = Types::UpdateRecommenderConfigurationResponse
    UpdateRecommenderConfigurationResponse[:payload] = :recommender_configuration_response
    UpdateRecommenderConfigurationResponse[:payload_member] = UpdateRecommenderConfigurationResponse.member(:recommender_configuration_response)

    UpdateSegmentRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "application-id"))
    UpdateSegmentRequest.add_member(:segment_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "segment-id"))
    UpdateSegmentRequest.add_member(:write_segment_request, Shapes::ShapeRef.new(shape: WriteSegmentRequest, required: true, location_name: "WriteSegmentRequest"))
    UpdateSegmentRequest.struct_class = Types::UpdateSegmentRequest
    UpdateSegmentRequest[:payload] = :write_segment_request
    UpdateSegmentRequest[:payload_member] = UpdateSegmentRequest.member(:write_segment_request)

    UpdateSegmentResponse.add_member(:segment_response, Shapes::ShapeRef.new(shape: SegmentResponse, required: true, location_name: "SegmentResponse"))
    UpdateSegmentResponse.struct_class = Types::UpdateSegmentResponse
    UpdateSegmentResponse[:payload] = :segment_response
    UpdateSegmentResponse[:payload_member] = UpdateSegmentResponse.member(:segment_response)

    UpdateSmsChannelRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "application-id"))
    UpdateSmsChannelRequest.add_member(:sms_channel_request, Shapes::ShapeRef.new(shape: SMSChannelRequest, required: true, location_name: "SMSChannelRequest"))
    UpdateSmsChannelRequest.struct_class = Types::UpdateSmsChannelRequest
    UpdateSmsChannelRequest[:payload] = :sms_channel_request
    UpdateSmsChannelRequest[:payload_member] = UpdateSmsChannelRequest.member(:sms_channel_request)

    UpdateSmsChannelResponse.add_member(:sms_channel_response, Shapes::ShapeRef.new(shape: SMSChannelResponse, required: true, location_name: "SMSChannelResponse"))
    UpdateSmsChannelResponse.struct_class = Types::UpdateSmsChannelResponse
    UpdateSmsChannelResponse[:payload] = :sms_channel_response
    UpdateSmsChannelResponse[:payload_member] = UpdateSmsChannelResponse.member(:sms_channel_response)

    UpdateSmsTemplateRequest.add_member(:create_new_version, Shapes::ShapeRef.new(shape: __boolean, location: "querystring", location_name: "create-new-version"))
    UpdateSmsTemplateRequest.add_member(:sms_template_request, Shapes::ShapeRef.new(shape: SMSTemplateRequest, required: true, location_name: "SMSTemplateRequest"))
    UpdateSmsTemplateRequest.add_member(:template_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "template-name"))
    UpdateSmsTemplateRequest.add_member(:version, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "version"))
    UpdateSmsTemplateRequest.struct_class = Types::UpdateSmsTemplateRequest
    UpdateSmsTemplateRequest[:payload] = :sms_template_request
    UpdateSmsTemplateRequest[:payload_member] = UpdateSmsTemplateRequest.member(:sms_template_request)

    UpdateSmsTemplateResponse.add_member(:message_body, Shapes::ShapeRef.new(shape: MessageBody, required: true, location_name: "MessageBody"))
    UpdateSmsTemplateResponse.struct_class = Types::UpdateSmsTemplateResponse
    UpdateSmsTemplateResponse[:payload] = :message_body
    UpdateSmsTemplateResponse[:payload_member] = UpdateSmsTemplateResponse.member(:message_body)

    UpdateTemplateActiveVersionRequest.add_member(:template_active_version_request, Shapes::ShapeRef.new(shape: TemplateActiveVersionRequest, required: true, location_name: "TemplateActiveVersionRequest"))
    UpdateTemplateActiveVersionRequest.add_member(:template_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "template-name"))
    UpdateTemplateActiveVersionRequest.add_member(:template_type, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "template-type"))
    UpdateTemplateActiveVersionRequest.struct_class = Types::UpdateTemplateActiveVersionRequest
    UpdateTemplateActiveVersionRequest[:payload] = :template_active_version_request
    UpdateTemplateActiveVersionRequest[:payload_member] = UpdateTemplateActiveVersionRequest.member(:template_active_version_request)

    UpdateTemplateActiveVersionResponse.add_member(:message_body, Shapes::ShapeRef.new(shape: MessageBody, required: true, location_name: "MessageBody"))
    UpdateTemplateActiveVersionResponse.struct_class = Types::UpdateTemplateActiveVersionResponse
    UpdateTemplateActiveVersionResponse[:payload] = :message_body
    UpdateTemplateActiveVersionResponse[:payload_member] = UpdateTemplateActiveVersionResponse.member(:message_body)

    UpdateVoiceChannelRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "application-id"))
    UpdateVoiceChannelRequest.add_member(:voice_channel_request, Shapes::ShapeRef.new(shape: VoiceChannelRequest, required: true, location_name: "VoiceChannelRequest"))
    UpdateVoiceChannelRequest.struct_class = Types::UpdateVoiceChannelRequest
    UpdateVoiceChannelRequest[:payload] = :voice_channel_request
    UpdateVoiceChannelRequest[:payload_member] = UpdateVoiceChannelRequest.member(:voice_channel_request)

    UpdateVoiceChannelResponse.add_member(:voice_channel_response, Shapes::ShapeRef.new(shape: VoiceChannelResponse, required: true, location_name: "VoiceChannelResponse"))
    UpdateVoiceChannelResponse.struct_class = Types::UpdateVoiceChannelResponse
    UpdateVoiceChannelResponse[:payload] = :voice_channel_response
    UpdateVoiceChannelResponse[:payload_member] = UpdateVoiceChannelResponse.member(:voice_channel_response)

    UpdateVoiceTemplateRequest.add_member(:create_new_version, Shapes::ShapeRef.new(shape: __boolean, location: "querystring", location_name: "create-new-version"))
    UpdateVoiceTemplateRequest.add_member(:template_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "template-name"))
    UpdateVoiceTemplateRequest.add_member(:version, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "version"))
    UpdateVoiceTemplateRequest.add_member(:voice_template_request, Shapes::ShapeRef.new(shape: VoiceTemplateRequest, required: true, location_name: "VoiceTemplateRequest"))
    UpdateVoiceTemplateRequest.struct_class = Types::UpdateVoiceTemplateRequest
    UpdateVoiceTemplateRequest[:payload] = :voice_template_request
    UpdateVoiceTemplateRequest[:payload_member] = UpdateVoiceTemplateRequest.member(:voice_template_request)

    UpdateVoiceTemplateResponse.add_member(:message_body, Shapes::ShapeRef.new(shape: MessageBody, required: true, location_name: "MessageBody"))
    UpdateVoiceTemplateResponse.struct_class = Types::UpdateVoiceTemplateResponse
    UpdateVoiceTemplateResponse[:payload] = :message_body
    UpdateVoiceTemplateResponse[:payload_member] = UpdateVoiceTemplateResponse.member(:message_body)

    VoiceChannelRequest.add_member(:enabled, Shapes::ShapeRef.new(shape: __boolean, location_name: "Enabled"))
    VoiceChannelRequest.struct_class = Types::VoiceChannelRequest

    VoiceChannelResponse.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, location_name: "ApplicationId"))
    VoiceChannelResponse.add_member(:creation_date, Shapes::ShapeRef.new(shape: __string, location_name: "CreationDate"))
    VoiceChannelResponse.add_member(:enabled, Shapes::ShapeRef.new(shape: __boolean, location_name: "Enabled"))
    VoiceChannelResponse.add_member(:has_credential, Shapes::ShapeRef.new(shape: __boolean, location_name: "HasCredential"))
    VoiceChannelResponse.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "Id"))
    VoiceChannelResponse.add_member(:is_archived, Shapes::ShapeRef.new(shape: __boolean, location_name: "IsArchived"))
    VoiceChannelResponse.add_member(:last_modified_by, Shapes::ShapeRef.new(shape: __string, location_name: "LastModifiedBy"))
    VoiceChannelResponse.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: __string, location_name: "LastModifiedDate"))
    VoiceChannelResponse.add_member(:platform, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "Platform"))
    VoiceChannelResponse.add_member(:version, Shapes::ShapeRef.new(shape: __integer, location_name: "Version"))
    VoiceChannelResponse.struct_class = Types::VoiceChannelResponse

    VoiceMessage.add_member(:body, Shapes::ShapeRef.new(shape: __string, location_name: "Body"))
    VoiceMessage.add_member(:language_code, Shapes::ShapeRef.new(shape: __string, location_name: "LanguageCode"))
    VoiceMessage.add_member(:origination_number, Shapes::ShapeRef.new(shape: __string, location_name: "OriginationNumber"))
    VoiceMessage.add_member(:substitutions, Shapes::ShapeRef.new(shape: MapOfListOf__string, location_name: "Substitutions"))
    VoiceMessage.add_member(:voice_id, Shapes::ShapeRef.new(shape: __string, location_name: "VoiceId"))
    VoiceMessage.struct_class = Types::VoiceMessage

    VoiceTemplateRequest.add_member(:body, Shapes::ShapeRef.new(shape: __string, location_name: "Body"))
    VoiceTemplateRequest.add_member(:default_substitutions, Shapes::ShapeRef.new(shape: __string, location_name: "DefaultSubstitutions"))
    VoiceTemplateRequest.add_member(:language_code, Shapes::ShapeRef.new(shape: __string, location_name: "LanguageCode"))
    VoiceTemplateRequest.add_member(:tags, Shapes::ShapeRef.new(shape: MapOf__string, location_name: "tags"))
    VoiceTemplateRequest.add_member(:template_description, Shapes::ShapeRef.new(shape: __string, location_name: "TemplateDescription"))
    VoiceTemplateRequest.add_member(:voice_id, Shapes::ShapeRef.new(shape: __string, location_name: "VoiceId"))
    VoiceTemplateRequest.struct_class = Types::VoiceTemplateRequest

    VoiceTemplateResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "Arn"))
    VoiceTemplateResponse.add_member(:body, Shapes::ShapeRef.new(shape: __string, location_name: "Body"))
    VoiceTemplateResponse.add_member(:creation_date, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "CreationDate"))
    VoiceTemplateResponse.add_member(:default_substitutions, Shapes::ShapeRef.new(shape: __string, location_name: "DefaultSubstitutions"))
    VoiceTemplateResponse.add_member(:language_code, Shapes::ShapeRef.new(shape: __string, location_name: "LanguageCode"))
    VoiceTemplateResponse.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "LastModifiedDate"))
    VoiceTemplateResponse.add_member(:tags, Shapes::ShapeRef.new(shape: MapOf__string, location_name: "tags"))
    VoiceTemplateResponse.add_member(:template_description, Shapes::ShapeRef.new(shape: __string, location_name: "TemplateDescription"))
    VoiceTemplateResponse.add_member(:template_name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "TemplateName"))
    VoiceTemplateResponse.add_member(:template_type, Shapes::ShapeRef.new(shape: TemplateType, required: true, location_name: "TemplateType"))
    VoiceTemplateResponse.add_member(:version, Shapes::ShapeRef.new(shape: __string, location_name: "Version"))
    VoiceTemplateResponse.add_member(:voice_id, Shapes::ShapeRef.new(shape: __string, location_name: "VoiceId"))
    VoiceTemplateResponse.struct_class = Types::VoiceTemplateResponse

    WaitActivity.add_member(:next_activity, Shapes::ShapeRef.new(shape: __string, location_name: "NextActivity"))
    WaitActivity.add_member(:wait_time, Shapes::ShapeRef.new(shape: WaitTime, location_name: "WaitTime"))
    WaitActivity.struct_class = Types::WaitActivity

    WaitTime.add_member(:wait_for, Shapes::ShapeRef.new(shape: __string, location_name: "WaitFor"))
    WaitTime.add_member(:wait_until, Shapes::ShapeRef.new(shape: __string, location_name: "WaitUntil"))
    WaitTime.struct_class = Types::WaitTime

    WriteApplicationSettingsRequest.add_member(:campaign_hook, Shapes::ShapeRef.new(shape: CampaignHook, location_name: "CampaignHook"))
    WriteApplicationSettingsRequest.add_member(:cloud_watch_metrics_enabled, Shapes::ShapeRef.new(shape: __boolean, location_name: "CloudWatchMetricsEnabled"))
    WriteApplicationSettingsRequest.add_member(:limits, Shapes::ShapeRef.new(shape: CampaignLimits, location_name: "Limits"))
    WriteApplicationSettingsRequest.add_member(:quiet_time, Shapes::ShapeRef.new(shape: QuietTime, location_name: "QuietTime"))
    WriteApplicationSettingsRequest.struct_class = Types::WriteApplicationSettingsRequest

    WriteCampaignRequest.add_member(:additional_treatments, Shapes::ShapeRef.new(shape: ListOfWriteTreatmentResource, location_name: "AdditionalTreatments"))
    WriteCampaignRequest.add_member(:custom_delivery_configuration, Shapes::ShapeRef.new(shape: CustomDeliveryConfiguration, location_name: "CustomDeliveryConfiguration"))
    WriteCampaignRequest.add_member(:description, Shapes::ShapeRef.new(shape: __string, location_name: "Description"))
    WriteCampaignRequest.add_member(:holdout_percent, Shapes::ShapeRef.new(shape: __integer, location_name: "HoldoutPercent"))
    WriteCampaignRequest.add_member(:hook, Shapes::ShapeRef.new(shape: CampaignHook, location_name: "Hook"))
    WriteCampaignRequest.add_member(:is_paused, Shapes::ShapeRef.new(shape: __boolean, location_name: "IsPaused"))
    WriteCampaignRequest.add_member(:limits, Shapes::ShapeRef.new(shape: CampaignLimits, location_name: "Limits"))
    WriteCampaignRequest.add_member(:message_configuration, Shapes::ShapeRef.new(shape: MessageConfiguration, location_name: "MessageConfiguration"))
    WriteCampaignRequest.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "Name"))
    WriteCampaignRequest.add_member(:schedule, Shapes::ShapeRef.new(shape: Schedule, location_name: "Schedule"))
    WriteCampaignRequest.add_member(:segment_id, Shapes::ShapeRef.new(shape: __string, location_name: "SegmentId"))
    WriteCampaignRequest.add_member(:segment_version, Shapes::ShapeRef.new(shape: __integer, location_name: "SegmentVersion"))
    WriteCampaignRequest.add_member(:tags, Shapes::ShapeRef.new(shape: MapOf__string, location_name: "tags"))
    WriteCampaignRequest.add_member(:template_configuration, Shapes::ShapeRef.new(shape: TemplateConfiguration, location_name: "TemplateConfiguration"))
    WriteCampaignRequest.add_member(:treatment_description, Shapes::ShapeRef.new(shape: __string, location_name: "TreatmentDescription"))
    WriteCampaignRequest.add_member(:treatment_name, Shapes::ShapeRef.new(shape: __string, location_name: "TreatmentName"))
    WriteCampaignRequest.struct_class = Types::WriteCampaignRequest

    WriteEventStream.add_member(:destination_stream_arn, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "DestinationStreamArn"))
    WriteEventStream.add_member(:role_arn, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "RoleArn"))
    WriteEventStream.struct_class = Types::WriteEventStream

    WriteJourneyRequest.add_member(:activities, Shapes::ShapeRef.new(shape: MapOfActivity, location_name: "Activities"))
    WriteJourneyRequest.add_member(:creation_date, Shapes::ShapeRef.new(shape: __string, location_name: "CreationDate"))
    WriteJourneyRequest.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: __string, location_name: "LastModifiedDate"))
    WriteJourneyRequest.add_member(:limits, Shapes::ShapeRef.new(shape: JourneyLimits, location_name: "Limits"))
    WriteJourneyRequest.add_member(:local_time, Shapes::ShapeRef.new(shape: __boolean, location_name: "LocalTime"))
    WriteJourneyRequest.add_member(:name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "Name"))
    WriteJourneyRequest.add_member(:quiet_time, Shapes::ShapeRef.new(shape: QuietTime, location_name: "QuietTime"))
    WriteJourneyRequest.add_member(:refresh_frequency, Shapes::ShapeRef.new(shape: __string, location_name: "RefreshFrequency"))
    WriteJourneyRequest.add_member(:schedule, Shapes::ShapeRef.new(shape: JourneySchedule, location_name: "Schedule"))
    WriteJourneyRequest.add_member(:start_activity, Shapes::ShapeRef.new(shape: __string, location_name: "StartActivity"))
    WriteJourneyRequest.add_member(:start_condition, Shapes::ShapeRef.new(shape: StartCondition, location_name: "StartCondition"))
    WriteJourneyRequest.add_member(:state, Shapes::ShapeRef.new(shape: State, location_name: "State"))
    WriteJourneyRequest.struct_class = Types::WriteJourneyRequest

    WriteSegmentRequest.add_member(:dimensions, Shapes::ShapeRef.new(shape: SegmentDimensions, location_name: "Dimensions"))
    WriteSegmentRequest.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "Name"))
    WriteSegmentRequest.add_member(:segment_groups, Shapes::ShapeRef.new(shape: SegmentGroupList, location_name: "SegmentGroups"))
    WriteSegmentRequest.add_member(:tags, Shapes::ShapeRef.new(shape: MapOf__string, location_name: "tags"))
    WriteSegmentRequest.struct_class = Types::WriteSegmentRequest

    WriteTreatmentResource.add_member(:custom_delivery_configuration, Shapes::ShapeRef.new(shape: CustomDeliveryConfiguration, location_name: "CustomDeliveryConfiguration"))
    WriteTreatmentResource.add_member(:message_configuration, Shapes::ShapeRef.new(shape: MessageConfiguration, location_name: "MessageConfiguration"))
    WriteTreatmentResource.add_member(:schedule, Shapes::ShapeRef.new(shape: Schedule, location_name: "Schedule"))
    WriteTreatmentResource.add_member(:size_percent, Shapes::ShapeRef.new(shape: __integer, required: true, location_name: "SizePercent"))
    WriteTreatmentResource.add_member(:template_configuration, Shapes::ShapeRef.new(shape: TemplateConfiguration, location_name: "TemplateConfiguration"))
    WriteTreatmentResource.add_member(:treatment_description, Shapes::ShapeRef.new(shape: __string, location_name: "TreatmentDescription"))
    WriteTreatmentResource.add_member(:treatment_name, Shapes::ShapeRef.new(shape: __string, location_name: "TreatmentName"))
    WriteTreatmentResource.struct_class = Types::WriteTreatmentResource


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2016-12-01"

      api.metadata = {
        "apiVersion" => "2016-12-01",
        "endpointPrefix" => "pinpoint",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceFullName" => "Amazon Pinpoint",
        "serviceId" => "Pinpoint",
        "signatureVersion" => "v4",
        "signingName" => "mobiletargeting",
        "uid" => "pinpoint-2016-12-01",
      }

      api.add_operation(:create_app, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateApp"
        o.http_method = "POST"
        o.http_request_uri = "/v1/apps"
        o.input = Shapes::ShapeRef.new(shape: CreateAppRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateAppResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:create_campaign, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateCampaign"
        o.http_method = "POST"
        o.http_request_uri = "/v1/apps/{application-id}/campaigns"
        o.input = Shapes::ShapeRef.new(shape: CreateCampaignRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateCampaignResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:create_email_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateEmailTemplate"
        o.http_method = "POST"
        o.http_request_uri = "/v1/templates/{template-name}/email"
        o.input = Shapes::ShapeRef.new(shape: CreateEmailTemplateRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateEmailTemplateResponse)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
      end)

      api.add_operation(:create_export_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateExportJob"
        o.http_method = "POST"
        o.http_request_uri = "/v1/apps/{application-id}/jobs/export"
        o.input = Shapes::ShapeRef.new(shape: CreateExportJobRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateExportJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:create_import_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateImportJob"
        o.http_method = "POST"
        o.http_request_uri = "/v1/apps/{application-id}/jobs/import"
        o.input = Shapes::ShapeRef.new(shape: CreateImportJobRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateImportJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:create_journey, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateJourney"
        o.http_method = "POST"
        o.http_request_uri = "/v1/apps/{application-id}/journeys"
        o.input = Shapes::ShapeRef.new(shape: CreateJourneyRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateJourneyResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:create_push_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreatePushTemplate"
        o.http_method = "POST"
        o.http_request_uri = "/v1/templates/{template-name}/push"
        o.input = Shapes::ShapeRef.new(shape: CreatePushTemplateRequest)
        o.output = Shapes::ShapeRef.new(shape: CreatePushTemplateResponse)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
      end)

      api.add_operation(:create_recommender_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateRecommenderConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/v1/recommenders"
        o.input = Shapes::ShapeRef.new(shape: CreateRecommenderConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateRecommenderConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:create_segment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateSegment"
        o.http_method = "POST"
        o.http_request_uri = "/v1/apps/{application-id}/segments"
        o.input = Shapes::ShapeRef.new(shape: CreateSegmentRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateSegmentResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:create_sms_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateSmsTemplate"
        o.http_method = "POST"
        o.http_request_uri = "/v1/templates/{template-name}/sms"
        o.input = Shapes::ShapeRef.new(shape: CreateSmsTemplateRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateSmsTemplateResponse)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
      end)

      api.add_operation(:create_voice_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateVoiceTemplate"
        o.http_method = "POST"
        o.http_request_uri = "/v1/templates/{template-name}/voice"
        o.input = Shapes::ShapeRef.new(shape: CreateVoiceTemplateRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateVoiceTemplateResponse)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
      end)

      api.add_operation(:delete_adm_channel, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAdmChannel"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/apps/{application-id}/channels/adm"
        o.input = Shapes::ShapeRef.new(shape: DeleteAdmChannelRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteAdmChannelResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:delete_apns_channel, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteApnsChannel"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/apps/{application-id}/channels/apns"
        o.input = Shapes::ShapeRef.new(shape: DeleteApnsChannelRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteApnsChannelResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:delete_apns_sandbox_channel, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteApnsSandboxChannel"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/apps/{application-id}/channels/apns_sandbox"
        o.input = Shapes::ShapeRef.new(shape: DeleteApnsSandboxChannelRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteApnsSandboxChannelResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:delete_apns_voip_channel, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteApnsVoipChannel"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/apps/{application-id}/channels/apns_voip"
        o.input = Shapes::ShapeRef.new(shape: DeleteApnsVoipChannelRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteApnsVoipChannelResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:delete_apns_voip_sandbox_channel, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteApnsVoipSandboxChannel"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/apps/{application-id}/channels/apns_voip_sandbox"
        o.input = Shapes::ShapeRef.new(shape: DeleteApnsVoipSandboxChannelRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteApnsVoipSandboxChannelResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:delete_app, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteApp"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/apps/{application-id}"
        o.input = Shapes::ShapeRef.new(shape: DeleteAppRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteAppResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:delete_baidu_channel, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteBaiduChannel"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/apps/{application-id}/channels/baidu"
        o.input = Shapes::ShapeRef.new(shape: DeleteBaiduChannelRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteBaiduChannelResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:delete_campaign, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteCampaign"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/apps/{application-id}/campaigns/{campaign-id}"
        o.input = Shapes::ShapeRef.new(shape: DeleteCampaignRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteCampaignResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:delete_email_channel, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteEmailChannel"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/apps/{application-id}/channels/email"
        o.input = Shapes::ShapeRef.new(shape: DeleteEmailChannelRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteEmailChannelResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:delete_email_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteEmailTemplate"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/templates/{template-name}/email"
        o.input = Shapes::ShapeRef.new(shape: DeleteEmailTemplateRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteEmailTemplateResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:delete_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteEndpoint"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/apps/{application-id}/endpoints/{endpoint-id}"
        o.input = Shapes::ShapeRef.new(shape: DeleteEndpointRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteEndpointResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:delete_event_stream, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteEventStream"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/apps/{application-id}/eventstream"
        o.input = Shapes::ShapeRef.new(shape: DeleteEventStreamRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteEventStreamResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:delete_gcm_channel, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteGcmChannel"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/apps/{application-id}/channels/gcm"
        o.input = Shapes::ShapeRef.new(shape: DeleteGcmChannelRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteGcmChannelResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:delete_journey, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteJourney"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/apps/{application-id}/journeys/{journey-id}"
        o.input = Shapes::ShapeRef.new(shape: DeleteJourneyRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteJourneyResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:delete_push_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeletePushTemplate"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/templates/{template-name}/push"
        o.input = Shapes::ShapeRef.new(shape: DeletePushTemplateRequest)
        o.output = Shapes::ShapeRef.new(shape: DeletePushTemplateResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:delete_recommender_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteRecommenderConfiguration"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/recommenders/{recommender-id}"
        o.input = Shapes::ShapeRef.new(shape: DeleteRecommenderConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteRecommenderConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:delete_segment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteSegment"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/apps/{application-id}/segments/{segment-id}"
        o.input = Shapes::ShapeRef.new(shape: DeleteSegmentRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteSegmentResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:delete_sms_channel, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteSmsChannel"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/apps/{application-id}/channels/sms"
        o.input = Shapes::ShapeRef.new(shape: DeleteSmsChannelRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteSmsChannelResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:delete_sms_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteSmsTemplate"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/templates/{template-name}/sms"
        o.input = Shapes::ShapeRef.new(shape: DeleteSmsTemplateRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteSmsTemplateResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:delete_user_endpoints, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteUserEndpoints"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/apps/{application-id}/users/{user-id}"
        o.input = Shapes::ShapeRef.new(shape: DeleteUserEndpointsRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteUserEndpointsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:delete_voice_channel, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteVoiceChannel"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/apps/{application-id}/channels/voice"
        o.input = Shapes::ShapeRef.new(shape: DeleteVoiceChannelRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteVoiceChannelResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:delete_voice_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteVoiceTemplate"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/templates/{template-name}/voice"
        o.input = Shapes::ShapeRef.new(shape: DeleteVoiceTemplateRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteVoiceTemplateResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:get_adm_channel, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAdmChannel"
        o.http_method = "GET"
        o.http_request_uri = "/v1/apps/{application-id}/channels/adm"
        o.input = Shapes::ShapeRef.new(shape: GetAdmChannelRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAdmChannelResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:get_apns_channel, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetApnsChannel"
        o.http_method = "GET"
        o.http_request_uri = "/v1/apps/{application-id}/channels/apns"
        o.input = Shapes::ShapeRef.new(shape: GetApnsChannelRequest)
        o.output = Shapes::ShapeRef.new(shape: GetApnsChannelResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:get_apns_sandbox_channel, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetApnsSandboxChannel"
        o.http_method = "GET"
        o.http_request_uri = "/v1/apps/{application-id}/channels/apns_sandbox"
        o.input = Shapes::ShapeRef.new(shape: GetApnsSandboxChannelRequest)
        o.output = Shapes::ShapeRef.new(shape: GetApnsSandboxChannelResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:get_apns_voip_channel, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetApnsVoipChannel"
        o.http_method = "GET"
        o.http_request_uri = "/v1/apps/{application-id}/channels/apns_voip"
        o.input = Shapes::ShapeRef.new(shape: GetApnsVoipChannelRequest)
        o.output = Shapes::ShapeRef.new(shape: GetApnsVoipChannelResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:get_apns_voip_sandbox_channel, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetApnsVoipSandboxChannel"
        o.http_method = "GET"
        o.http_request_uri = "/v1/apps/{application-id}/channels/apns_voip_sandbox"
        o.input = Shapes::ShapeRef.new(shape: GetApnsVoipSandboxChannelRequest)
        o.output = Shapes::ShapeRef.new(shape: GetApnsVoipSandboxChannelResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:get_app, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetApp"
        o.http_method = "GET"
        o.http_request_uri = "/v1/apps/{application-id}"
        o.input = Shapes::ShapeRef.new(shape: GetAppRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAppResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:get_application_date_range_kpi, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetApplicationDateRangeKpi"
        o.http_method = "GET"
        o.http_request_uri = "/v1/apps/{application-id}/kpis/daterange/{kpi-name}"
        o.input = Shapes::ShapeRef.new(shape: GetApplicationDateRangeKpiRequest)
        o.output = Shapes::ShapeRef.new(shape: GetApplicationDateRangeKpiResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:get_application_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetApplicationSettings"
        o.http_method = "GET"
        o.http_request_uri = "/v1/apps/{application-id}/settings"
        o.input = Shapes::ShapeRef.new(shape: GetApplicationSettingsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetApplicationSettingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:get_apps, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetApps"
        o.http_method = "GET"
        o.http_request_uri = "/v1/apps"
        o.input = Shapes::ShapeRef.new(shape: GetAppsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAppsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:get_baidu_channel, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetBaiduChannel"
        o.http_method = "GET"
        o.http_request_uri = "/v1/apps/{application-id}/channels/baidu"
        o.input = Shapes::ShapeRef.new(shape: GetBaiduChannelRequest)
        o.output = Shapes::ShapeRef.new(shape: GetBaiduChannelResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:get_campaign, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCampaign"
        o.http_method = "GET"
        o.http_request_uri = "/v1/apps/{application-id}/campaigns/{campaign-id}"
        o.input = Shapes::ShapeRef.new(shape: GetCampaignRequest)
        o.output = Shapes::ShapeRef.new(shape: GetCampaignResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:get_campaign_activities, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCampaignActivities"
        o.http_method = "GET"
        o.http_request_uri = "/v1/apps/{application-id}/campaigns/{campaign-id}/activities"
        o.input = Shapes::ShapeRef.new(shape: GetCampaignActivitiesRequest)
        o.output = Shapes::ShapeRef.new(shape: GetCampaignActivitiesResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:get_campaign_date_range_kpi, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCampaignDateRangeKpi"
        o.http_method = "GET"
        o.http_request_uri = "/v1/apps/{application-id}/campaigns/{campaign-id}/kpis/daterange/{kpi-name}"
        o.input = Shapes::ShapeRef.new(shape: GetCampaignDateRangeKpiRequest)
        o.output = Shapes::ShapeRef.new(shape: GetCampaignDateRangeKpiResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:get_campaign_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCampaignVersion"
        o.http_method = "GET"
        o.http_request_uri = "/v1/apps/{application-id}/campaigns/{campaign-id}/versions/{version}"
        o.input = Shapes::ShapeRef.new(shape: GetCampaignVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetCampaignVersionResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:get_campaign_versions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCampaignVersions"
        o.http_method = "GET"
        o.http_request_uri = "/v1/apps/{application-id}/campaigns/{campaign-id}/versions"
        o.input = Shapes::ShapeRef.new(shape: GetCampaignVersionsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetCampaignVersionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:get_campaigns, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCampaigns"
        o.http_method = "GET"
        o.http_request_uri = "/v1/apps/{application-id}/campaigns"
        o.input = Shapes::ShapeRef.new(shape: GetCampaignsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetCampaignsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:get_channels, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetChannels"
        o.http_method = "GET"
        o.http_request_uri = "/v1/apps/{application-id}/channels"
        o.input = Shapes::ShapeRef.new(shape: GetChannelsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetChannelsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:get_email_channel, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetEmailChannel"
        o.http_method = "GET"
        o.http_request_uri = "/v1/apps/{application-id}/channels/email"
        o.input = Shapes::ShapeRef.new(shape: GetEmailChannelRequest)
        o.output = Shapes::ShapeRef.new(shape: GetEmailChannelResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:get_email_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetEmailTemplate"
        o.http_method = "GET"
        o.http_request_uri = "/v1/templates/{template-name}/email"
        o.input = Shapes::ShapeRef.new(shape: GetEmailTemplateRequest)
        o.output = Shapes::ShapeRef.new(shape: GetEmailTemplateResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:get_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetEndpoint"
        o.http_method = "GET"
        o.http_request_uri = "/v1/apps/{application-id}/endpoints/{endpoint-id}"
        o.input = Shapes::ShapeRef.new(shape: GetEndpointRequest)
        o.output = Shapes::ShapeRef.new(shape: GetEndpointResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:get_event_stream, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetEventStream"
        o.http_method = "GET"
        o.http_request_uri = "/v1/apps/{application-id}/eventstream"
        o.input = Shapes::ShapeRef.new(shape: GetEventStreamRequest)
        o.output = Shapes::ShapeRef.new(shape: GetEventStreamResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:get_export_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetExportJob"
        o.http_method = "GET"
        o.http_request_uri = "/v1/apps/{application-id}/jobs/export/{job-id}"
        o.input = Shapes::ShapeRef.new(shape: GetExportJobRequest)
        o.output = Shapes::ShapeRef.new(shape: GetExportJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:get_export_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetExportJobs"
        o.http_method = "GET"
        o.http_request_uri = "/v1/apps/{application-id}/jobs/export"
        o.input = Shapes::ShapeRef.new(shape: GetExportJobsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetExportJobsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:get_gcm_channel, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetGcmChannel"
        o.http_method = "GET"
        o.http_request_uri = "/v1/apps/{application-id}/channels/gcm"
        o.input = Shapes::ShapeRef.new(shape: GetGcmChannelRequest)
        o.output = Shapes::ShapeRef.new(shape: GetGcmChannelResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:get_import_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetImportJob"
        o.http_method = "GET"
        o.http_request_uri = "/v1/apps/{application-id}/jobs/import/{job-id}"
        o.input = Shapes::ShapeRef.new(shape: GetImportJobRequest)
        o.output = Shapes::ShapeRef.new(shape: GetImportJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:get_import_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetImportJobs"
        o.http_method = "GET"
        o.http_request_uri = "/v1/apps/{application-id}/jobs/import"
        o.input = Shapes::ShapeRef.new(shape: GetImportJobsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetImportJobsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:get_journey, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetJourney"
        o.http_method = "GET"
        o.http_request_uri = "/v1/apps/{application-id}/journeys/{journey-id}"
        o.input = Shapes::ShapeRef.new(shape: GetJourneyRequest)
        o.output = Shapes::ShapeRef.new(shape: GetJourneyResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:get_journey_date_range_kpi, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetJourneyDateRangeKpi"
        o.http_method = "GET"
        o.http_request_uri = "/v1/apps/{application-id}/journeys/{journey-id}/kpis/daterange/{kpi-name}"
        o.input = Shapes::ShapeRef.new(shape: GetJourneyDateRangeKpiRequest)
        o.output = Shapes::ShapeRef.new(shape: GetJourneyDateRangeKpiResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:get_journey_execution_activity_metrics, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetJourneyExecutionActivityMetrics"
        o.http_method = "GET"
        o.http_request_uri = "/v1/apps/{application-id}/journeys/{journey-id}/activities/{journey-activity-id}/execution-metrics"
        o.input = Shapes::ShapeRef.new(shape: GetJourneyExecutionActivityMetricsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetJourneyExecutionActivityMetricsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:get_journey_execution_metrics, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetJourneyExecutionMetrics"
        o.http_method = "GET"
        o.http_request_uri = "/v1/apps/{application-id}/journeys/{journey-id}/execution-metrics"
        o.input = Shapes::ShapeRef.new(shape: GetJourneyExecutionMetricsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetJourneyExecutionMetricsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:get_push_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPushTemplate"
        o.http_method = "GET"
        o.http_request_uri = "/v1/templates/{template-name}/push"
        o.input = Shapes::ShapeRef.new(shape: GetPushTemplateRequest)
        o.output = Shapes::ShapeRef.new(shape: GetPushTemplateResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:get_recommender_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRecommenderConfiguration"
        o.http_method = "GET"
        o.http_request_uri = "/v1/recommenders/{recommender-id}"
        o.input = Shapes::ShapeRef.new(shape: GetRecommenderConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetRecommenderConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:get_recommender_configurations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRecommenderConfigurations"
        o.http_method = "GET"
        o.http_request_uri = "/v1/recommenders"
        o.input = Shapes::ShapeRef.new(shape: GetRecommenderConfigurationsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetRecommenderConfigurationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:get_segment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSegment"
        o.http_method = "GET"
        o.http_request_uri = "/v1/apps/{application-id}/segments/{segment-id}"
        o.input = Shapes::ShapeRef.new(shape: GetSegmentRequest)
        o.output = Shapes::ShapeRef.new(shape: GetSegmentResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:get_segment_export_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSegmentExportJobs"
        o.http_method = "GET"
        o.http_request_uri = "/v1/apps/{application-id}/segments/{segment-id}/jobs/export"
        o.input = Shapes::ShapeRef.new(shape: GetSegmentExportJobsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetSegmentExportJobsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:get_segment_import_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSegmentImportJobs"
        o.http_method = "GET"
        o.http_request_uri = "/v1/apps/{application-id}/segments/{segment-id}/jobs/import"
        o.input = Shapes::ShapeRef.new(shape: GetSegmentImportJobsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetSegmentImportJobsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:get_segment_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSegmentVersion"
        o.http_method = "GET"
        o.http_request_uri = "/v1/apps/{application-id}/segments/{segment-id}/versions/{version}"
        o.input = Shapes::ShapeRef.new(shape: GetSegmentVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetSegmentVersionResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:get_segment_versions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSegmentVersions"
        o.http_method = "GET"
        o.http_request_uri = "/v1/apps/{application-id}/segments/{segment-id}/versions"
        o.input = Shapes::ShapeRef.new(shape: GetSegmentVersionsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetSegmentVersionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:get_segments, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSegments"
        o.http_method = "GET"
        o.http_request_uri = "/v1/apps/{application-id}/segments"
        o.input = Shapes::ShapeRef.new(shape: GetSegmentsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetSegmentsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:get_sms_channel, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSmsChannel"
        o.http_method = "GET"
        o.http_request_uri = "/v1/apps/{application-id}/channels/sms"
        o.input = Shapes::ShapeRef.new(shape: GetSmsChannelRequest)
        o.output = Shapes::ShapeRef.new(shape: GetSmsChannelResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:get_sms_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSmsTemplate"
        o.http_method = "GET"
        o.http_request_uri = "/v1/templates/{template-name}/sms"
        o.input = Shapes::ShapeRef.new(shape: GetSmsTemplateRequest)
        o.output = Shapes::ShapeRef.new(shape: GetSmsTemplateResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:get_user_endpoints, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetUserEndpoints"
        o.http_method = "GET"
        o.http_request_uri = "/v1/apps/{application-id}/users/{user-id}"
        o.input = Shapes::ShapeRef.new(shape: GetUserEndpointsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetUserEndpointsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:get_voice_channel, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetVoiceChannel"
        o.http_method = "GET"
        o.http_request_uri = "/v1/apps/{application-id}/channels/voice"
        o.input = Shapes::ShapeRef.new(shape: GetVoiceChannelRequest)
        o.output = Shapes::ShapeRef.new(shape: GetVoiceChannelResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:get_voice_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetVoiceTemplate"
        o.http_method = "GET"
        o.http_request_uri = "/v1/templates/{template-name}/voice"
        o.input = Shapes::ShapeRef.new(shape: GetVoiceTemplateRequest)
        o.output = Shapes::ShapeRef.new(shape: GetVoiceTemplateResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:list_journeys, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListJourneys"
        o.http_method = "GET"
        o.http_request_uri = "/v1/apps/{application-id}/journeys"
        o.input = Shapes::ShapeRef.new(shape: ListJourneysRequest)
        o.output = Shapes::ShapeRef.new(shape: ListJourneysResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "GET"
        o.http_request_uri = "/v1/tags/{resource-arn}"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
      end)

      api.add_operation(:list_template_versions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTemplateVersions"
        o.http_method = "GET"
        o.http_request_uri = "/v1/templates/{template-name}/{template-type}/versions"
        o.input = Shapes::ShapeRef.new(shape: ListTemplateVersionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTemplateVersionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:list_templates, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTemplates"
        o.http_method = "GET"
        o.http_request_uri = "/v1/templates"
        o.input = Shapes::ShapeRef.new(shape: ListTemplatesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTemplatesResponse)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
      end)

      api.add_operation(:phone_number_validate, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PhoneNumberValidate"
        o.http_method = "POST"
        o.http_request_uri = "/v1/phone/number/validate"
        o.input = Shapes::ShapeRef.new(shape: PhoneNumberValidateRequest)
        o.output = Shapes::ShapeRef.new(shape: PhoneNumberValidateResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:put_event_stream, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutEventStream"
        o.http_method = "POST"
        o.http_request_uri = "/v1/apps/{application-id}/eventstream"
        o.input = Shapes::ShapeRef.new(shape: PutEventStreamRequest)
        o.output = Shapes::ShapeRef.new(shape: PutEventStreamResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:put_events, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutEvents"
        o.http_method = "POST"
        o.http_request_uri = "/v1/apps/{application-id}/events"
        o.input = Shapes::ShapeRef.new(shape: PutEventsRequest)
        o.output = Shapes::ShapeRef.new(shape: PutEventsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:remove_attributes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RemoveAttributes"
        o.http_method = "PUT"
        o.http_request_uri = "/v1/apps/{application-id}/attributes/{attribute-type}"
        o.input = Shapes::ShapeRef.new(shape: RemoveAttributesRequest)
        o.output = Shapes::ShapeRef.new(shape: RemoveAttributesResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:send_messages, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SendMessages"
        o.http_method = "POST"
        o.http_request_uri = "/v1/apps/{application-id}/messages"
        o.input = Shapes::ShapeRef.new(shape: SendMessagesRequest)
        o.output = Shapes::ShapeRef.new(shape: SendMessagesResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:send_users_messages, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SendUsersMessages"
        o.http_method = "POST"
        o.http_request_uri = "/v1/apps/{application-id}/users-messages"
        o.input = Shapes::ShapeRef.new(shape: SendUsersMessagesRequest)
        o.output = Shapes::ShapeRef.new(shape: SendUsersMessagesResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/v1/tags/{resource-arn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/tags/{resource-arn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
      end)

      api.add_operation(:update_adm_channel, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAdmChannel"
        o.http_method = "PUT"
        o.http_request_uri = "/v1/apps/{application-id}/channels/adm"
        o.input = Shapes::ShapeRef.new(shape: UpdateAdmChannelRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateAdmChannelResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:update_apns_channel, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateApnsChannel"
        o.http_method = "PUT"
        o.http_request_uri = "/v1/apps/{application-id}/channels/apns"
        o.input = Shapes::ShapeRef.new(shape: UpdateApnsChannelRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateApnsChannelResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:update_apns_sandbox_channel, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateApnsSandboxChannel"
        o.http_method = "PUT"
        o.http_request_uri = "/v1/apps/{application-id}/channels/apns_sandbox"
        o.input = Shapes::ShapeRef.new(shape: UpdateApnsSandboxChannelRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateApnsSandboxChannelResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:update_apns_voip_channel, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateApnsVoipChannel"
        o.http_method = "PUT"
        o.http_request_uri = "/v1/apps/{application-id}/channels/apns_voip"
        o.input = Shapes::ShapeRef.new(shape: UpdateApnsVoipChannelRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateApnsVoipChannelResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:update_apns_voip_sandbox_channel, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateApnsVoipSandboxChannel"
        o.http_method = "PUT"
        o.http_request_uri = "/v1/apps/{application-id}/channels/apns_voip_sandbox"
        o.input = Shapes::ShapeRef.new(shape: UpdateApnsVoipSandboxChannelRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateApnsVoipSandboxChannelResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:update_application_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateApplicationSettings"
        o.http_method = "PUT"
        o.http_request_uri = "/v1/apps/{application-id}/settings"
        o.input = Shapes::ShapeRef.new(shape: UpdateApplicationSettingsRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateApplicationSettingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:update_baidu_channel, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateBaiduChannel"
        o.http_method = "PUT"
        o.http_request_uri = "/v1/apps/{application-id}/channels/baidu"
        o.input = Shapes::ShapeRef.new(shape: UpdateBaiduChannelRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateBaiduChannelResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:update_campaign, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateCampaign"
        o.http_method = "PUT"
        o.http_request_uri = "/v1/apps/{application-id}/campaigns/{campaign-id}"
        o.input = Shapes::ShapeRef.new(shape: UpdateCampaignRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateCampaignResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:update_email_channel, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateEmailChannel"
        o.http_method = "PUT"
        o.http_request_uri = "/v1/apps/{application-id}/channels/email"
        o.input = Shapes::ShapeRef.new(shape: UpdateEmailChannelRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateEmailChannelResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:update_email_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateEmailTemplate"
        o.http_method = "PUT"
        o.http_request_uri = "/v1/templates/{template-name}/email"
        o.input = Shapes::ShapeRef.new(shape: UpdateEmailTemplateRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateEmailTemplateResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:update_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateEndpoint"
        o.http_method = "PUT"
        o.http_request_uri = "/v1/apps/{application-id}/endpoints/{endpoint-id}"
        o.input = Shapes::ShapeRef.new(shape: UpdateEndpointRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateEndpointResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:update_endpoints_batch, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateEndpointsBatch"
        o.http_method = "PUT"
        o.http_request_uri = "/v1/apps/{application-id}/endpoints"
        o.input = Shapes::ShapeRef.new(shape: UpdateEndpointsBatchRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateEndpointsBatchResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:update_gcm_channel, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateGcmChannel"
        o.http_method = "PUT"
        o.http_request_uri = "/v1/apps/{application-id}/channels/gcm"
        o.input = Shapes::ShapeRef.new(shape: UpdateGcmChannelRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateGcmChannelResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:update_journey, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateJourney"
        o.http_method = "PUT"
        o.http_request_uri = "/v1/apps/{application-id}/journeys/{journey-id}"
        o.input = Shapes::ShapeRef.new(shape: UpdateJourneyRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateJourneyResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:update_journey_state, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateJourneyState"
        o.http_method = "PUT"
        o.http_request_uri = "/v1/apps/{application-id}/journeys/{journey-id}/state"
        o.input = Shapes::ShapeRef.new(shape: UpdateJourneyStateRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateJourneyStateResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:update_push_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdatePushTemplate"
        o.http_method = "PUT"
        o.http_request_uri = "/v1/templates/{template-name}/push"
        o.input = Shapes::ShapeRef.new(shape: UpdatePushTemplateRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdatePushTemplateResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:update_recommender_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateRecommenderConfiguration"
        o.http_method = "PUT"
        o.http_request_uri = "/v1/recommenders/{recommender-id}"
        o.input = Shapes::ShapeRef.new(shape: UpdateRecommenderConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateRecommenderConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:update_segment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateSegment"
        o.http_method = "PUT"
        o.http_request_uri = "/v1/apps/{application-id}/segments/{segment-id}"
        o.input = Shapes::ShapeRef.new(shape: UpdateSegmentRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateSegmentResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:update_sms_channel, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateSmsChannel"
        o.http_method = "PUT"
        o.http_request_uri = "/v1/apps/{application-id}/channels/sms"
        o.input = Shapes::ShapeRef.new(shape: UpdateSmsChannelRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateSmsChannelResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:update_sms_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateSmsTemplate"
        o.http_method = "PUT"
        o.http_request_uri = "/v1/templates/{template-name}/sms"
        o.input = Shapes::ShapeRef.new(shape: UpdateSmsTemplateRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateSmsTemplateResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:update_template_active_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateTemplateActiveVersion"
        o.http_method = "PUT"
        o.http_request_uri = "/v1/templates/{template-name}/{template-type}/active-version"
        o.input = Shapes::ShapeRef.new(shape: UpdateTemplateActiveVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateTemplateActiveVersionResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:update_voice_channel, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateVoiceChannel"
        o.http_method = "PUT"
        o.http_request_uri = "/v1/apps/{application-id}/channels/voice"
        o.input = Shapes::ShapeRef.new(shape: UpdateVoiceChannelRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateVoiceChannelResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:update_voice_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateVoiceTemplate"
        o.http_method = "PUT"
        o.http_request_uri = "/v1/templates/{template-name}/voice"
        o.input = Shapes::ShapeRef.new(shape: UpdateVoiceTemplateRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateVoiceTemplateResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)
    end

  end
end
