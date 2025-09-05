# frozen_string_literal: true

# This is generated code!

module Aws::Pinpoint
  # This module contains a schema composed of shapes used by the client.
  module Schema

    ADMChannelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#ADMChannelRequest', name: 'ADMChannelRequest')
    ADMChannelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#ADMChannelResponse', name: 'ADMChannelResponse')
    ADMMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#ADMMessage', name: 'ADMMessage')
    APNSChannelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#APNSChannelRequest', name: 'APNSChannelRequest')
    APNSChannelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#APNSChannelResponse', name: 'APNSChannelResponse')
    APNSMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#APNSMessage', name: 'APNSMessage')
    APNSPushNotificationTemplate = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#APNSPushNotificationTemplate', name: 'APNSPushNotificationTemplate')
    APNSSandboxChannelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#APNSSandboxChannelRequest', name: 'APNSSandboxChannelRequest')
    APNSSandboxChannelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#APNSSandboxChannelResponse', name: 'APNSSandboxChannelResponse')
    APNSVoipChannelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#APNSVoipChannelRequest', name: 'APNSVoipChannelRequest')
    APNSVoipChannelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#APNSVoipChannelResponse', name: 'APNSVoipChannelResponse')
    APNSVoipSandboxChannelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#APNSVoipSandboxChannelRequest', name: 'APNSVoipSandboxChannelRequest')
    APNSVoipSandboxChannelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#APNSVoipSandboxChannelResponse', name: 'APNSVoipSandboxChannelResponse')
    Action = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.pinpoint#Action', name: 'Action')
    ActivitiesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#ActivitiesResponse', name: 'ActivitiesResponse')
    Activity = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#Activity', name: 'Activity')
    ActivityResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#ActivityResponse', name: 'ActivityResponse')
    AddressConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#AddressConfiguration', name: 'AddressConfiguration')
    Alignment = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.pinpoint#Alignment', name: 'Alignment')
    AndroidPushNotificationTemplate = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#AndroidPushNotificationTemplate', name: 'AndroidPushNotificationTemplate')
    ApplicationDateRangeKpiResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#ApplicationDateRangeKpiResponse', name: 'ApplicationDateRangeKpiResponse')
    ApplicationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#ApplicationResponse', name: 'ApplicationResponse')
    ApplicationSettingsJourneyLimits = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#ApplicationSettingsJourneyLimits', name: 'ApplicationSettingsJourneyLimits')
    ApplicationSettingsResource = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#ApplicationSettingsResource', name: 'ApplicationSettingsResource')
    ApplicationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#ApplicationsResponse', name: 'ApplicationsResponse')
    AttributeDimension = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#AttributeDimension', name: 'AttributeDimension')
    AttributeType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.pinpoint#AttributeType', name: 'AttributeType')
    AttributesResource = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#AttributesResource', name: 'AttributesResource')
    BadRequestException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#BadRequestException', name: 'BadRequestException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    BaiduChannelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#BaiduChannelRequest', name: 'BaiduChannelRequest')
    BaiduChannelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#BaiduChannelResponse', name: 'BaiduChannelResponse')
    BaiduMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#BaiduMessage', name: 'BaiduMessage')
    BaseKpiResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#BaseKpiResult', name: 'BaseKpiResult')
    ButtonAction = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.pinpoint#ButtonAction', name: 'ButtonAction')
    CampaignCustomMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#CampaignCustomMessage', name: 'CampaignCustomMessage')
    CampaignDateRangeKpiResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#CampaignDateRangeKpiResponse', name: 'CampaignDateRangeKpiResponse')
    CampaignEmailMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#CampaignEmailMessage', name: 'CampaignEmailMessage')
    CampaignEventFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#CampaignEventFilter', name: 'CampaignEventFilter')
    CampaignHook = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#CampaignHook', name: 'CampaignHook')
    CampaignInAppMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#CampaignInAppMessage', name: 'CampaignInAppMessage')
    CampaignLimits = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#CampaignLimits', name: 'CampaignLimits')
    CampaignResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#CampaignResponse', name: 'CampaignResponse')
    CampaignSmsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#CampaignSmsMessage', name: 'CampaignSmsMessage')
    CampaignState = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#CampaignState', name: 'CampaignState')
    CampaignStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.pinpoint#CampaignStatus', name: 'CampaignStatus')
    CampaignsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#CampaignsResponse', name: 'CampaignsResponse')
    ChannelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#ChannelResponse', name: 'ChannelResponse')
    ChannelType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.pinpoint#ChannelType', name: 'ChannelType')
    ChannelsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#ChannelsResponse', name: 'ChannelsResponse')
    ClosedDays = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#ClosedDays', name: 'ClosedDays')
    ClosedDaysRule = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#ClosedDaysRule', name: 'ClosedDaysRule')
    Condition = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#Condition', name: 'Condition')
    ConditionalSplitActivity = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#ConditionalSplitActivity', name: 'ConditionalSplitActivity')
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ContactCenterActivity = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#ContactCenterActivity', name: 'ContactCenterActivity')
    CreateAppRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#CreateAppRequest', name: 'CreateAppRequest')
    CreateAppResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#CreateAppResponse', name: 'CreateAppResponse')
    CreateApplicationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#CreateApplicationRequest', name: 'CreateApplicationRequest')
    CreateCampaignRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#CreateCampaignRequest', name: 'CreateCampaignRequest')
    CreateCampaignResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#CreateCampaignResponse', name: 'CreateCampaignResponse')
    CreateEmailTemplateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#CreateEmailTemplateRequest', name: 'CreateEmailTemplateRequest')
    CreateEmailTemplateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#CreateEmailTemplateResponse', name: 'CreateEmailTemplateResponse')
    CreateExportJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#CreateExportJobRequest', name: 'CreateExportJobRequest')
    CreateExportJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#CreateExportJobResponse', name: 'CreateExportJobResponse')
    CreateImportJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#CreateImportJobRequest', name: 'CreateImportJobRequest')
    CreateImportJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#CreateImportJobResponse', name: 'CreateImportJobResponse')
    CreateInAppTemplateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#CreateInAppTemplateRequest', name: 'CreateInAppTemplateRequest')
    CreateInAppTemplateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#CreateInAppTemplateResponse', name: 'CreateInAppTemplateResponse')
    CreateJourneyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#CreateJourneyRequest', name: 'CreateJourneyRequest')
    CreateJourneyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#CreateJourneyResponse', name: 'CreateJourneyResponse')
    CreatePushTemplateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#CreatePushTemplateRequest', name: 'CreatePushTemplateRequest')
    CreatePushTemplateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#CreatePushTemplateResponse', name: 'CreatePushTemplateResponse')
    CreateRecommenderConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#CreateRecommenderConfigurationRequest', name: 'CreateRecommenderConfigurationRequest')
    CreateRecommenderConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#CreateRecommenderConfigurationResponse', name: 'CreateRecommenderConfigurationResponse')
    CreateRecommenderConfigurationShape = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#CreateRecommenderConfigurationShape', name: 'CreateRecommenderConfigurationShape')
    CreateSegmentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#CreateSegmentRequest', name: 'CreateSegmentRequest')
    CreateSegmentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#CreateSegmentResponse', name: 'CreateSegmentResponse')
    CreateSmsTemplateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#CreateSmsTemplateRequest', name: 'CreateSmsTemplateRequest')
    CreateSmsTemplateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#CreateSmsTemplateResponse', name: 'CreateSmsTemplateResponse')
    CreateTemplateMessageBody = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#CreateTemplateMessageBody', name: 'CreateTemplateMessageBody')
    CreateVoiceTemplateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#CreateVoiceTemplateRequest', name: 'CreateVoiceTemplateRequest')
    CreateVoiceTemplateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#CreateVoiceTemplateResponse', name: 'CreateVoiceTemplateResponse')
    CustomDeliveryConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#CustomDeliveryConfiguration', name: 'CustomDeliveryConfiguration')
    CustomMessageActivity = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#CustomMessageActivity', name: 'CustomMessageActivity')
    DayOfWeek = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.pinpoint#DayOfWeek', name: 'DayOfWeek')
    DefaultButtonConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#DefaultButtonConfiguration', name: 'DefaultButtonConfiguration')
    DefaultMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#DefaultMessage', name: 'DefaultMessage')
    DefaultPushNotificationMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#DefaultPushNotificationMessage', name: 'DefaultPushNotificationMessage')
    DefaultPushNotificationTemplate = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#DefaultPushNotificationTemplate', name: 'DefaultPushNotificationTemplate')
    DeleteAdmChannelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#DeleteAdmChannelRequest', name: 'DeleteAdmChannelRequest')
    DeleteAdmChannelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#DeleteAdmChannelResponse', name: 'DeleteAdmChannelResponse')
    DeleteApnsChannelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#DeleteApnsChannelRequest', name: 'DeleteApnsChannelRequest')
    DeleteApnsChannelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#DeleteApnsChannelResponse', name: 'DeleteApnsChannelResponse')
    DeleteApnsSandboxChannelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#DeleteApnsSandboxChannelRequest', name: 'DeleteApnsSandboxChannelRequest')
    DeleteApnsSandboxChannelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#DeleteApnsSandboxChannelResponse', name: 'DeleteApnsSandboxChannelResponse')
    DeleteApnsVoipChannelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#DeleteApnsVoipChannelRequest', name: 'DeleteApnsVoipChannelRequest')
    DeleteApnsVoipChannelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#DeleteApnsVoipChannelResponse', name: 'DeleteApnsVoipChannelResponse')
    DeleteApnsVoipSandboxChannelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#DeleteApnsVoipSandboxChannelRequest', name: 'DeleteApnsVoipSandboxChannelRequest')
    DeleteApnsVoipSandboxChannelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#DeleteApnsVoipSandboxChannelResponse', name: 'DeleteApnsVoipSandboxChannelResponse')
    DeleteAppRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#DeleteAppRequest', name: 'DeleteAppRequest')
    DeleteAppResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#DeleteAppResponse', name: 'DeleteAppResponse')
    DeleteBaiduChannelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#DeleteBaiduChannelRequest', name: 'DeleteBaiduChannelRequest')
    DeleteBaiduChannelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#DeleteBaiduChannelResponse', name: 'DeleteBaiduChannelResponse')
    DeleteCampaignRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#DeleteCampaignRequest', name: 'DeleteCampaignRequest')
    DeleteCampaignResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#DeleteCampaignResponse', name: 'DeleteCampaignResponse')
    DeleteEmailChannelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#DeleteEmailChannelRequest', name: 'DeleteEmailChannelRequest')
    DeleteEmailChannelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#DeleteEmailChannelResponse', name: 'DeleteEmailChannelResponse')
    DeleteEmailTemplateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#DeleteEmailTemplateRequest', name: 'DeleteEmailTemplateRequest')
    DeleteEmailTemplateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#DeleteEmailTemplateResponse', name: 'DeleteEmailTemplateResponse')
    DeleteEndpointRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#DeleteEndpointRequest', name: 'DeleteEndpointRequest')
    DeleteEndpointResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#DeleteEndpointResponse', name: 'DeleteEndpointResponse')
    DeleteEventStreamRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#DeleteEventStreamRequest', name: 'DeleteEventStreamRequest')
    DeleteEventStreamResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#DeleteEventStreamResponse', name: 'DeleteEventStreamResponse')
    DeleteGcmChannelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#DeleteGcmChannelRequest', name: 'DeleteGcmChannelRequest')
    DeleteGcmChannelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#DeleteGcmChannelResponse', name: 'DeleteGcmChannelResponse')
    DeleteInAppTemplateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#DeleteInAppTemplateRequest', name: 'DeleteInAppTemplateRequest')
    DeleteInAppTemplateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#DeleteInAppTemplateResponse', name: 'DeleteInAppTemplateResponse')
    DeleteJourneyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#DeleteJourneyRequest', name: 'DeleteJourneyRequest')
    DeleteJourneyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#DeleteJourneyResponse', name: 'DeleteJourneyResponse')
    DeletePushTemplateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#DeletePushTemplateRequest', name: 'DeletePushTemplateRequest')
    DeletePushTemplateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#DeletePushTemplateResponse', name: 'DeletePushTemplateResponse')
    DeleteRecommenderConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#DeleteRecommenderConfigurationRequest', name: 'DeleteRecommenderConfigurationRequest')
    DeleteRecommenderConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#DeleteRecommenderConfigurationResponse', name: 'DeleteRecommenderConfigurationResponse')
    DeleteSegmentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#DeleteSegmentRequest', name: 'DeleteSegmentRequest')
    DeleteSegmentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#DeleteSegmentResponse', name: 'DeleteSegmentResponse')
    DeleteSmsChannelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#DeleteSmsChannelRequest', name: 'DeleteSmsChannelRequest')
    DeleteSmsChannelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#DeleteSmsChannelResponse', name: 'DeleteSmsChannelResponse')
    DeleteSmsTemplateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#DeleteSmsTemplateRequest', name: 'DeleteSmsTemplateRequest')
    DeleteSmsTemplateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#DeleteSmsTemplateResponse', name: 'DeleteSmsTemplateResponse')
    DeleteUserEndpointsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#DeleteUserEndpointsRequest', name: 'DeleteUserEndpointsRequest')
    DeleteUserEndpointsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#DeleteUserEndpointsResponse', name: 'DeleteUserEndpointsResponse')
    DeleteVoiceChannelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#DeleteVoiceChannelRequest', name: 'DeleteVoiceChannelRequest')
    DeleteVoiceChannelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#DeleteVoiceChannelResponse', name: 'DeleteVoiceChannelResponse')
    DeleteVoiceTemplateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#DeleteVoiceTemplateRequest', name: 'DeleteVoiceTemplateRequest')
    DeleteVoiceTemplateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#DeleteVoiceTemplateResponse', name: 'DeleteVoiceTemplateResponse')
    DeliveryStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.pinpoint#DeliveryStatus', name: 'DeliveryStatus')
    DimensionType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.pinpoint#DimensionType', name: 'DimensionType')
    DirectMessageConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#DirectMessageConfiguration', name: 'DirectMessageConfiguration')
    Duration = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.pinpoint#Duration', name: 'Duration')
    EmailChannelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#EmailChannelRequest', name: 'EmailChannelRequest')
    EmailChannelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#EmailChannelResponse', name: 'EmailChannelResponse')
    EmailMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#EmailMessage', name: 'EmailMessage')
    EmailMessageActivity = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#EmailMessageActivity', name: 'EmailMessageActivity')
    EmailTemplateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#EmailTemplateRequest', name: 'EmailTemplateRequest')
    EmailTemplateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#EmailTemplateResponse', name: 'EmailTemplateResponse')
    EndpointBatchItem = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#EndpointBatchItem', name: 'EndpointBatchItem')
    EndpointBatchRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#EndpointBatchRequest', name: 'EndpointBatchRequest')
    EndpointDemographic = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#EndpointDemographic', name: 'EndpointDemographic')
    EndpointItemResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#EndpointItemResponse', name: 'EndpointItemResponse')
    EndpointLocation = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#EndpointLocation', name: 'EndpointLocation')
    EndpointMessageResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#EndpointMessageResult', name: 'EndpointMessageResult')
    EndpointRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#EndpointRequest', name: 'EndpointRequest')
    EndpointResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#EndpointResponse', name: 'EndpointResponse')
    EndpointSendConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#EndpointSendConfiguration', name: 'EndpointSendConfiguration')
    EndpointUser = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#EndpointUser', name: 'EndpointUser')
    EndpointsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#EndpointsResponse', name: 'EndpointsResponse')
    Event = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#Event', name: 'Event')
    EventCondition = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#EventCondition', name: 'EventCondition')
    EventDimensions = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#EventDimensions', name: 'EventDimensions')
    EventFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#EventFilter', name: 'EventFilter')
    EventItemResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#EventItemResponse', name: 'EventItemResponse')
    EventStartCondition = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#EventStartCondition', name: 'EventStartCondition')
    EventStream = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#EventStream', name: 'EventStream')
    EventsBatch = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#EventsBatch', name: 'EventsBatch')
    EventsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#EventsRequest', name: 'EventsRequest')
    EventsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#EventsResponse', name: 'EventsResponse')
    ExportJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#ExportJobRequest', name: 'ExportJobRequest')
    ExportJobResource = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#ExportJobResource', name: 'ExportJobResource')
    ExportJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#ExportJobResponse', name: 'ExportJobResponse')
    ExportJobsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#ExportJobsResponse', name: 'ExportJobsResponse')
    FilterType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.pinpoint#FilterType', name: 'FilterType')
    ForbiddenException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#ForbiddenException', name: 'ForbiddenException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    Format = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.pinpoint#Format', name: 'Format')
    Frequency = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.pinpoint#Frequency', name: 'Frequency')
    GCMChannelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GCMChannelRequest', name: 'GCMChannelRequest')
    GCMChannelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GCMChannelResponse', name: 'GCMChannelResponse')
    GCMMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GCMMessage', name: 'GCMMessage')
    GPSCoordinates = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GPSCoordinates', name: 'GPSCoordinates')
    GPSPointDimension = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GPSPointDimension', name: 'GPSPointDimension')
    GetAdmChannelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetAdmChannelRequest', name: 'GetAdmChannelRequest')
    GetAdmChannelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetAdmChannelResponse', name: 'GetAdmChannelResponse')
    GetApnsChannelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetApnsChannelRequest', name: 'GetApnsChannelRequest')
    GetApnsChannelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetApnsChannelResponse', name: 'GetApnsChannelResponse')
    GetApnsSandboxChannelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetApnsSandboxChannelRequest', name: 'GetApnsSandboxChannelRequest')
    GetApnsSandboxChannelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetApnsSandboxChannelResponse', name: 'GetApnsSandboxChannelResponse')
    GetApnsVoipChannelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetApnsVoipChannelRequest', name: 'GetApnsVoipChannelRequest')
    GetApnsVoipChannelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetApnsVoipChannelResponse', name: 'GetApnsVoipChannelResponse')
    GetApnsVoipSandboxChannelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetApnsVoipSandboxChannelRequest', name: 'GetApnsVoipSandboxChannelRequest')
    GetApnsVoipSandboxChannelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetApnsVoipSandboxChannelResponse', name: 'GetApnsVoipSandboxChannelResponse')
    GetAppRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetAppRequest', name: 'GetAppRequest')
    GetAppResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetAppResponse', name: 'GetAppResponse')
    GetApplicationDateRangeKpiRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetApplicationDateRangeKpiRequest', name: 'GetApplicationDateRangeKpiRequest')
    GetApplicationDateRangeKpiResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetApplicationDateRangeKpiResponse', name: 'GetApplicationDateRangeKpiResponse')
    GetApplicationSettingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetApplicationSettingsRequest', name: 'GetApplicationSettingsRequest')
    GetApplicationSettingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetApplicationSettingsResponse', name: 'GetApplicationSettingsResponse')
    GetAppsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetAppsRequest', name: 'GetAppsRequest')
    GetAppsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetAppsResponse', name: 'GetAppsResponse')
    GetBaiduChannelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetBaiduChannelRequest', name: 'GetBaiduChannelRequest')
    GetBaiduChannelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetBaiduChannelResponse', name: 'GetBaiduChannelResponse')
    GetCampaignActivitiesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetCampaignActivitiesRequest', name: 'GetCampaignActivitiesRequest')
    GetCampaignActivitiesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetCampaignActivitiesResponse', name: 'GetCampaignActivitiesResponse')
    GetCampaignDateRangeKpiRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetCampaignDateRangeKpiRequest', name: 'GetCampaignDateRangeKpiRequest')
    GetCampaignDateRangeKpiResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetCampaignDateRangeKpiResponse', name: 'GetCampaignDateRangeKpiResponse')
    GetCampaignRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetCampaignRequest', name: 'GetCampaignRequest')
    GetCampaignResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetCampaignResponse', name: 'GetCampaignResponse')
    GetCampaignVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetCampaignVersionRequest', name: 'GetCampaignVersionRequest')
    GetCampaignVersionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetCampaignVersionResponse', name: 'GetCampaignVersionResponse')
    GetCampaignVersionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetCampaignVersionsRequest', name: 'GetCampaignVersionsRequest')
    GetCampaignVersionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetCampaignVersionsResponse', name: 'GetCampaignVersionsResponse')
    GetCampaignsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetCampaignsRequest', name: 'GetCampaignsRequest')
    GetCampaignsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetCampaignsResponse', name: 'GetCampaignsResponse')
    GetChannelsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetChannelsRequest', name: 'GetChannelsRequest')
    GetChannelsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetChannelsResponse', name: 'GetChannelsResponse')
    GetEmailChannelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetEmailChannelRequest', name: 'GetEmailChannelRequest')
    GetEmailChannelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetEmailChannelResponse', name: 'GetEmailChannelResponse')
    GetEmailTemplateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetEmailTemplateRequest', name: 'GetEmailTemplateRequest')
    GetEmailTemplateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetEmailTemplateResponse', name: 'GetEmailTemplateResponse')
    GetEndpointRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetEndpointRequest', name: 'GetEndpointRequest')
    GetEndpointResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetEndpointResponse', name: 'GetEndpointResponse')
    GetEventStreamRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetEventStreamRequest', name: 'GetEventStreamRequest')
    GetEventStreamResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetEventStreamResponse', name: 'GetEventStreamResponse')
    GetExportJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetExportJobRequest', name: 'GetExportJobRequest')
    GetExportJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetExportJobResponse', name: 'GetExportJobResponse')
    GetExportJobsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetExportJobsRequest', name: 'GetExportJobsRequest')
    GetExportJobsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetExportJobsResponse', name: 'GetExportJobsResponse')
    GetGcmChannelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetGcmChannelRequest', name: 'GetGcmChannelRequest')
    GetGcmChannelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetGcmChannelResponse', name: 'GetGcmChannelResponse')
    GetImportJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetImportJobRequest', name: 'GetImportJobRequest')
    GetImportJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetImportJobResponse', name: 'GetImportJobResponse')
    GetImportJobsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetImportJobsRequest', name: 'GetImportJobsRequest')
    GetImportJobsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetImportJobsResponse', name: 'GetImportJobsResponse')
    GetInAppMessagesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetInAppMessagesRequest', name: 'GetInAppMessagesRequest')
    GetInAppMessagesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetInAppMessagesResponse', name: 'GetInAppMessagesResponse')
    GetInAppTemplateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetInAppTemplateRequest', name: 'GetInAppTemplateRequest')
    GetInAppTemplateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetInAppTemplateResponse', name: 'GetInAppTemplateResponse')
    GetJourneyDateRangeKpiRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetJourneyDateRangeKpiRequest', name: 'GetJourneyDateRangeKpiRequest')
    GetJourneyDateRangeKpiResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetJourneyDateRangeKpiResponse', name: 'GetJourneyDateRangeKpiResponse')
    GetJourneyExecutionActivityMetricsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetJourneyExecutionActivityMetricsRequest', name: 'GetJourneyExecutionActivityMetricsRequest')
    GetJourneyExecutionActivityMetricsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetJourneyExecutionActivityMetricsResponse', name: 'GetJourneyExecutionActivityMetricsResponse')
    GetJourneyExecutionMetricsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetJourneyExecutionMetricsRequest', name: 'GetJourneyExecutionMetricsRequest')
    GetJourneyExecutionMetricsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetJourneyExecutionMetricsResponse', name: 'GetJourneyExecutionMetricsResponse')
    GetJourneyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetJourneyRequest', name: 'GetJourneyRequest')
    GetJourneyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetJourneyResponse', name: 'GetJourneyResponse')
    GetJourneyRunExecutionActivityMetricsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetJourneyRunExecutionActivityMetricsRequest', name: 'GetJourneyRunExecutionActivityMetricsRequest')
    GetJourneyRunExecutionActivityMetricsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetJourneyRunExecutionActivityMetricsResponse', name: 'GetJourneyRunExecutionActivityMetricsResponse')
    GetJourneyRunExecutionMetricsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetJourneyRunExecutionMetricsRequest', name: 'GetJourneyRunExecutionMetricsRequest')
    GetJourneyRunExecutionMetricsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetJourneyRunExecutionMetricsResponse', name: 'GetJourneyRunExecutionMetricsResponse')
    GetJourneyRunsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetJourneyRunsRequest', name: 'GetJourneyRunsRequest')
    GetJourneyRunsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetJourneyRunsResponse', name: 'GetJourneyRunsResponse')
    GetPushTemplateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetPushTemplateRequest', name: 'GetPushTemplateRequest')
    GetPushTemplateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetPushTemplateResponse', name: 'GetPushTemplateResponse')
    GetRecommenderConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetRecommenderConfigurationRequest', name: 'GetRecommenderConfigurationRequest')
    GetRecommenderConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetRecommenderConfigurationResponse', name: 'GetRecommenderConfigurationResponse')
    GetRecommenderConfigurationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetRecommenderConfigurationsRequest', name: 'GetRecommenderConfigurationsRequest')
    GetRecommenderConfigurationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetRecommenderConfigurationsResponse', name: 'GetRecommenderConfigurationsResponse')
    GetSegmentExportJobsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetSegmentExportJobsRequest', name: 'GetSegmentExportJobsRequest')
    GetSegmentExportJobsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetSegmentExportJobsResponse', name: 'GetSegmentExportJobsResponse')
    GetSegmentImportJobsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetSegmentImportJobsRequest', name: 'GetSegmentImportJobsRequest')
    GetSegmentImportJobsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetSegmentImportJobsResponse', name: 'GetSegmentImportJobsResponse')
    GetSegmentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetSegmentRequest', name: 'GetSegmentRequest')
    GetSegmentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetSegmentResponse', name: 'GetSegmentResponse')
    GetSegmentVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetSegmentVersionRequest', name: 'GetSegmentVersionRequest')
    GetSegmentVersionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetSegmentVersionResponse', name: 'GetSegmentVersionResponse')
    GetSegmentVersionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetSegmentVersionsRequest', name: 'GetSegmentVersionsRequest')
    GetSegmentVersionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetSegmentVersionsResponse', name: 'GetSegmentVersionsResponse')
    GetSegmentsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetSegmentsRequest', name: 'GetSegmentsRequest')
    GetSegmentsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetSegmentsResponse', name: 'GetSegmentsResponse')
    GetSmsChannelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetSmsChannelRequest', name: 'GetSmsChannelRequest')
    GetSmsChannelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetSmsChannelResponse', name: 'GetSmsChannelResponse')
    GetSmsTemplateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetSmsTemplateRequest', name: 'GetSmsTemplateRequest')
    GetSmsTemplateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetSmsTemplateResponse', name: 'GetSmsTemplateResponse')
    GetUserEndpointsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetUserEndpointsRequest', name: 'GetUserEndpointsRequest')
    GetUserEndpointsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetUserEndpointsResponse', name: 'GetUserEndpointsResponse')
    GetVoiceChannelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetVoiceChannelRequest', name: 'GetVoiceChannelRequest')
    GetVoiceChannelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetVoiceChannelResponse', name: 'GetVoiceChannelResponse')
    GetVoiceTemplateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetVoiceTemplateRequest', name: 'GetVoiceTemplateRequest')
    GetVoiceTemplateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetVoiceTemplateResponse', name: 'GetVoiceTemplateResponse')
    HoldoutActivity = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#HoldoutActivity', name: 'HoldoutActivity')
    ImportJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#ImportJobRequest', name: 'ImportJobRequest')
    ImportJobResource = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#ImportJobResource', name: 'ImportJobResource')
    ImportJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#ImportJobResponse', name: 'ImportJobResponse')
    ImportJobsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#ImportJobsResponse', name: 'ImportJobsResponse')
    InAppCampaignSchedule = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#InAppCampaignSchedule', name: 'InAppCampaignSchedule')
    InAppMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#InAppMessage', name: 'InAppMessage')
    InAppMessageBodyConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#InAppMessageBodyConfig', name: 'InAppMessageBodyConfig')
    InAppMessageButton = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#InAppMessageButton', name: 'InAppMessageButton')
    InAppMessageCampaign = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#InAppMessageCampaign', name: 'InAppMessageCampaign')
    InAppMessageContent = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#InAppMessageContent', name: 'InAppMessageContent')
    InAppMessageHeaderConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#InAppMessageHeaderConfig', name: 'InAppMessageHeaderConfig')
    InAppMessagesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#InAppMessagesResponse', name: 'InAppMessagesResponse')
    InAppTemplateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#InAppTemplateRequest', name: 'InAppTemplateRequest')
    InAppTemplateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#InAppTemplateResponse', name: 'InAppTemplateResponse')
    Include = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.pinpoint#Include', name: 'Include')
    InternalServerErrorException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#InternalServerErrorException', name: 'InternalServerErrorException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    ItemResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#ItemResponse', name: 'ItemResponse')
    JobStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.pinpoint#JobStatus', name: 'JobStatus')
    JourneyChannelSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#JourneyChannelSettings', name: 'JourneyChannelSettings')
    JourneyCustomMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#JourneyCustomMessage', name: 'JourneyCustomMessage')
    JourneyDateRangeKpiResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#JourneyDateRangeKpiResponse', name: 'JourneyDateRangeKpiResponse')
    JourneyEmailMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#JourneyEmailMessage', name: 'JourneyEmailMessage')
    JourneyExecutionActivityMetricsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#JourneyExecutionActivityMetricsResponse', name: 'JourneyExecutionActivityMetricsResponse')
    JourneyExecutionMetricsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#JourneyExecutionMetricsResponse', name: 'JourneyExecutionMetricsResponse')
    JourneyLimits = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#JourneyLimits', name: 'JourneyLimits')
    JourneyPushMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#JourneyPushMessage', name: 'JourneyPushMessage')
    JourneyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#JourneyResponse', name: 'JourneyResponse')
    JourneyRunExecutionActivityMetricsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#JourneyRunExecutionActivityMetricsResponse', name: 'JourneyRunExecutionActivityMetricsResponse')
    JourneyRunExecutionMetricsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#JourneyRunExecutionMetricsResponse', name: 'JourneyRunExecutionMetricsResponse')
    JourneyRunResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#JourneyRunResponse', name: 'JourneyRunResponse')
    JourneyRunStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.pinpoint#JourneyRunStatus', name: 'JourneyRunStatus')
    JourneyRunsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#JourneyRunsResponse', name: 'JourneyRunsResponse')
    JourneySMSMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#JourneySMSMessage', name: 'JourneySMSMessage')
    JourneySchedule = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#JourneySchedule', name: 'JourneySchedule')
    JourneyStateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#JourneyStateRequest', name: 'JourneyStateRequest')
    JourneyTimeframeCap = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#JourneyTimeframeCap', name: 'JourneyTimeframeCap')
    JourneysResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#JourneysResponse', name: 'JourneysResponse')
    Layout = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.pinpoint#Layout', name: 'Layout')
    ListJourneysRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#ListJourneysRequest', name: 'ListJourneysRequest')
    ListJourneysResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#ListJourneysResponse', name: 'ListJourneysResponse')
    ListOfActivityResponse = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpoint#ListOfActivityResponse', name: 'ListOfActivityResponse')
    ListOfApplicationResponse = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpoint#ListOfApplicationResponse', name: 'ListOfApplicationResponse')
    ListOfCampaignResponse = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpoint#ListOfCampaignResponse', name: 'ListOfCampaignResponse')
    ListOfClosedDaysRules = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpoint#ListOfClosedDaysRules', name: 'ListOfClosedDaysRules')
    ListOfEndpointBatchItem = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpoint#ListOfEndpointBatchItem', name: 'ListOfEndpointBatchItem')
    ListOfEndpointResponse = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpoint#ListOfEndpointResponse', name: 'ListOfEndpointResponse')
    ListOfExportJobResponse = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpoint#ListOfExportJobResponse', name: 'ListOfExportJobResponse')
    ListOfImportJobResponse = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpoint#ListOfImportJobResponse', name: 'ListOfImportJobResponse')
    ListOfInAppMessageCampaign = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpoint#ListOfInAppMessageCampaign', name: 'ListOfInAppMessageCampaign')
    ListOfInAppMessageContent = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpoint#ListOfInAppMessageContent', name: 'ListOfInAppMessageContent')
    ListOfJourneyResponse = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpoint#ListOfJourneyResponse', name: 'ListOfJourneyResponse')
    ListOfJourneyRunResponse = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpoint#ListOfJourneyRunResponse', name: 'ListOfJourneyRunResponse')
    ListOfMessageHeader = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpoint#ListOfMessageHeader', name: 'ListOfMessageHeader')
    ListOfMultiConditionalBranch = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpoint#ListOfMultiConditionalBranch', name: 'ListOfMultiConditionalBranch')
    ListOfOpenHoursRules = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpoint#ListOfOpenHoursRules', name: 'ListOfOpenHoursRules')
    ListOfRandomSplitEntry = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpoint#ListOfRandomSplitEntry', name: 'ListOfRandomSplitEntry')
    ListOfRecommenderConfigurationResponse = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpoint#ListOfRecommenderConfigurationResponse', name: 'ListOfRecommenderConfigurationResponse')
    ListOfResultRow = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpoint#ListOfResultRow', name: 'ListOfResultRow')
    ListOfResultRowValue = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpoint#ListOfResultRowValue', name: 'ListOfResultRowValue')
    ListOfSegmentDimensions = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpoint#ListOfSegmentDimensions', name: 'ListOfSegmentDimensions')
    ListOfSegmentGroup = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpoint#ListOfSegmentGroup', name: 'ListOfSegmentGroup')
    ListOfSegmentReference = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpoint#ListOfSegmentReference', name: 'ListOfSegmentReference')
    ListOfSegmentResponse = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpoint#ListOfSegmentResponse', name: 'ListOfSegmentResponse')
    ListOfSimpleCondition = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpoint#ListOfSimpleCondition', name: 'ListOfSimpleCondition')
    ListOfTemplateResponse = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpoint#ListOfTemplateResponse', name: 'ListOfTemplateResponse')
    ListOfTemplateVersionResponse = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpoint#ListOfTemplateVersionResponse', name: 'ListOfTemplateVersionResponse')
    ListOfTreatmentResource = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpoint#ListOfTreatmentResource', name: 'ListOfTreatmentResource')
    ListOfWriteTreatmentResource = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpoint#ListOfWriteTreatmentResource', name: 'ListOfWriteTreatmentResource')
    ListOfEndpointtypeselement = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpoint#ListOf__EndpointTypesElement', name: 'ListOfEndpointtypeselement')
    ListOfTimezoneestimationmethodselement = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpoint#ListOf__TimezoneEstimationMethodsElement', name: 'ListOfTimezoneestimationmethodselement')
    ListOfString = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpoint#ListOf__string', name: 'ListOfString')
    ListRecommenderConfigurationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#ListRecommenderConfigurationsResponse', name: 'ListRecommenderConfigurationsResponse')
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    ListTemplateVersionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#ListTemplateVersionsRequest', name: 'ListTemplateVersionsRequest')
    ListTemplateVersionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#ListTemplateVersionsResponse', name: 'ListTemplateVersionsResponse')
    ListTemplatesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#ListTemplatesRequest', name: 'ListTemplatesRequest')
    ListTemplatesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#ListTemplatesResponse', name: 'ListTemplatesResponse')
    MapOfActivity = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.pinpoint#MapOfActivity', name: 'MapOfActivity')
    MapOfAddressConfiguration = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.pinpoint#MapOfAddressConfiguration', name: 'MapOfAddressConfiguration')
    MapOfAttributeDimension = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.pinpoint#MapOfAttributeDimension', name: 'MapOfAttributeDimension')
    MapOfChannelResponse = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.pinpoint#MapOfChannelResponse', name: 'MapOfChannelResponse')
    MapOfEndpointMessageResult = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.pinpoint#MapOfEndpointMessageResult', name: 'MapOfEndpointMessageResult')
    MapOfEndpointSendConfiguration = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.pinpoint#MapOfEndpointSendConfiguration', name: 'MapOfEndpointSendConfiguration')
    MapOfEvent = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.pinpoint#MapOfEvent', name: 'MapOfEvent')
    MapOfEventItemResponse = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.pinpoint#MapOfEventItemResponse', name: 'MapOfEventItemResponse')
    MapOfEventsBatch = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.pinpoint#MapOfEventsBatch', name: 'MapOfEventsBatch')
    MapOfItemResponse = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.pinpoint#MapOfItemResponse', name: 'MapOfItemResponse')
    MapOfListOfOpenHoursRules = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.pinpoint#MapOfListOfOpenHoursRules', name: 'MapOfListOfOpenHoursRules')
    MapOfListOfString = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.pinpoint#MapOfListOf__string', name: 'MapOfListOfString')
    MapOfMapOfEndpointMessageResult = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.pinpoint#MapOfMapOfEndpointMessageResult', name: 'MapOfMapOfEndpointMessageResult')
    MapOfMessageResult = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.pinpoint#MapOfMessageResult', name: 'MapOfMessageResult')
    MapOfMetricDimension = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.pinpoint#MapOfMetricDimension', name: 'MapOfMetricDimension')
    MapOfDouble = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.pinpoint#MapOf__double', name: 'MapOfDouble')
    MapOfInteger = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.pinpoint#MapOf__integer', name: 'MapOfInteger')
    MapOfString = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.pinpoint#MapOf__string', name: 'MapOfString')
    Message = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#Message', name: 'Message')
    MessageBody = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#MessageBody', name: 'MessageBody')
    MessageConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#MessageConfiguration', name: 'MessageConfiguration')
    MessageHeader = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#MessageHeader', name: 'MessageHeader')
    MessageRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#MessageRequest', name: 'MessageRequest')
    MessageResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#MessageResponse', name: 'MessageResponse')
    MessageResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#MessageResult', name: 'MessageResult')
    MessageType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.pinpoint#MessageType', name: 'MessageType')
    MethodNotAllowedException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#MethodNotAllowedException', name: 'MethodNotAllowedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 405})
    MetricDimension = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#MetricDimension', name: 'MetricDimension')
    Mode = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.pinpoint#Mode', name: 'Mode')
    MultiConditionalBranch = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#MultiConditionalBranch', name: 'MultiConditionalBranch')
    MultiConditionalSplitActivity = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#MultiConditionalSplitActivity', name: 'MultiConditionalSplitActivity')
    NotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#NotFoundException', name: 'NotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    NumberValidateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#NumberValidateRequest', name: 'NumberValidateRequest')
    NumberValidateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#NumberValidateResponse', name: 'NumberValidateResponse')
    OpenHours = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#OpenHours', name: 'OpenHours')
    OpenHoursRule = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#OpenHoursRule', name: 'OpenHoursRule')
    Operator = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.pinpoint#Operator', name: 'Operator')
    OverrideButtonConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#OverrideButtonConfiguration', name: 'OverrideButtonConfiguration')
    PayloadTooLargeException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#PayloadTooLargeException', name: 'PayloadTooLargeException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 413})
    PhoneNumberValidateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#PhoneNumberValidateRequest', name: 'PhoneNumberValidateRequest')
    PhoneNumberValidateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#PhoneNumberValidateResponse', name: 'PhoneNumberValidateResponse')
    PublicEndpoint = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#PublicEndpoint', name: 'PublicEndpoint')
    PushMessageActivity = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#PushMessageActivity', name: 'PushMessageActivity')
    PushNotificationTemplateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#PushNotificationTemplateRequest', name: 'PushNotificationTemplateRequest')
    PushNotificationTemplateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#PushNotificationTemplateResponse', name: 'PushNotificationTemplateResponse')
    PutEventStreamRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#PutEventStreamRequest', name: 'PutEventStreamRequest')
    PutEventStreamResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#PutEventStreamResponse', name: 'PutEventStreamResponse')
    PutEventsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#PutEventsRequest', name: 'PutEventsRequest')
    PutEventsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#PutEventsResponse', name: 'PutEventsResponse')
    QuietTime = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#QuietTime', name: 'QuietTime')
    RandomSplitActivity = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#RandomSplitActivity', name: 'RandomSplitActivity')
    RandomSplitEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#RandomSplitEntry', name: 'RandomSplitEntry')
    RawEmail = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#RawEmail', name: 'RawEmail')
    RecencyDimension = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#RecencyDimension', name: 'RecencyDimension')
    RecencyType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.pinpoint#RecencyType', name: 'RecencyType')
    RecommenderConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#RecommenderConfigurationResponse', name: 'RecommenderConfigurationResponse')
    RemoveAttributesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#RemoveAttributesRequest', name: 'RemoveAttributesRequest')
    RemoveAttributesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#RemoveAttributesResponse', name: 'RemoveAttributesResponse')
    ResultRow = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#ResultRow', name: 'ResultRow')
    ResultRowValue = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#ResultRowValue', name: 'ResultRowValue')
    SMSChannelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#SMSChannelRequest', name: 'SMSChannelRequest')
    SMSChannelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#SMSChannelResponse', name: 'SMSChannelResponse')
    SMSMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#SMSMessage', name: 'SMSMessage')
    SMSMessageActivity = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#SMSMessageActivity', name: 'SMSMessageActivity')
    SMSTemplateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#SMSTemplateRequest', name: 'SMSTemplateRequest')
    SMSTemplateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#SMSTemplateResponse', name: 'SMSTemplateResponse')
    Schedule = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#Schedule', name: 'Schedule')
    SegmentBehaviors = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#SegmentBehaviors', name: 'SegmentBehaviors')
    SegmentCondition = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#SegmentCondition', name: 'SegmentCondition')
    SegmentDemographics = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#SegmentDemographics', name: 'SegmentDemographics')
    SegmentDimensions = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#SegmentDimensions', name: 'SegmentDimensions')
    SegmentGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#SegmentGroup', name: 'SegmentGroup')
    SegmentGroupList = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#SegmentGroupList', name: 'SegmentGroupList')
    SegmentImportResource = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#SegmentImportResource', name: 'SegmentImportResource')
    SegmentLocation = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#SegmentLocation', name: 'SegmentLocation')
    SegmentReference = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#SegmentReference', name: 'SegmentReference')
    SegmentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#SegmentResponse', name: 'SegmentResponse')
    SegmentType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.pinpoint#SegmentType', name: 'SegmentType')
    SegmentsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#SegmentsResponse', name: 'SegmentsResponse')
    SendMessagesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#SendMessagesRequest', name: 'SendMessagesRequest')
    SendMessagesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#SendMessagesResponse', name: 'SendMessagesResponse')
    SendOTPMessageRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#SendOTPMessageRequest', name: 'SendOTPMessageRequest')
    SendOTPMessageRequestParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#SendOTPMessageRequestParameters', name: 'SendOTPMessageRequestParameters')
    SendOTPMessageResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#SendOTPMessageResponse', name: 'SendOTPMessageResponse')
    SendUsersMessageRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#SendUsersMessageRequest', name: 'SendUsersMessageRequest')
    SendUsersMessageResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#SendUsersMessageResponse', name: 'SendUsersMessageResponse')
    SendUsersMessagesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#SendUsersMessagesRequest', name: 'SendUsersMessagesRequest')
    SendUsersMessagesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#SendUsersMessagesResponse', name: 'SendUsersMessagesResponse')
    Session = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#Session', name: 'Session')
    SetDimension = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#SetDimension', name: 'SetDimension')
    SimpleCondition = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#SimpleCondition', name: 'SimpleCondition')
    SimpleEmail = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#SimpleEmail', name: 'SimpleEmail')
    SimpleEmailPart = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#SimpleEmailPart', name: 'SimpleEmailPart')
    SourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.pinpoint#SourceType', name: 'SourceType')
    StartCondition = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#StartCondition', name: 'StartCondition')
    State = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.pinpoint#State', name: 'State')
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#TagResourceRequest', name: 'TagResourceRequest')
    TagsModel = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#TagsModel', name: 'TagsModel')
    Template = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#Template', name: 'Template')
    TemplateActiveVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#TemplateActiveVersionRequest', name: 'TemplateActiveVersionRequest')
    TemplateConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#TemplateConfiguration', name: 'TemplateConfiguration')
    TemplateCreateMessageBody = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#TemplateCreateMessageBody', name: 'TemplateCreateMessageBody')
    TemplateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#TemplateResponse', name: 'TemplateResponse')
    TemplateType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.pinpoint#TemplateType', name: 'TemplateType')
    TemplateVersionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#TemplateVersionResponse', name: 'TemplateVersionResponse')
    TemplateVersionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#TemplateVersionsResponse', name: 'TemplateVersionsResponse')
    TemplatesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#TemplatesResponse', name: 'TemplatesResponse')
    TooManyRequestsException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#TooManyRequestsException', name: 'TooManyRequestsException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    TreatmentResource = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#TreatmentResource', name: 'TreatmentResource')
    Type = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.pinpoint#Type', name: 'Type')
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#UntagResourceRequest', name: 'UntagResourceRequest')
    UpdateAdmChannelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#UpdateAdmChannelRequest', name: 'UpdateAdmChannelRequest')
    UpdateAdmChannelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#UpdateAdmChannelResponse', name: 'UpdateAdmChannelResponse')
    UpdateApnsChannelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#UpdateApnsChannelRequest', name: 'UpdateApnsChannelRequest')
    UpdateApnsChannelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#UpdateApnsChannelResponse', name: 'UpdateApnsChannelResponse')
    UpdateApnsSandboxChannelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#UpdateApnsSandboxChannelRequest', name: 'UpdateApnsSandboxChannelRequest')
    UpdateApnsSandboxChannelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#UpdateApnsSandboxChannelResponse', name: 'UpdateApnsSandboxChannelResponse')
    UpdateApnsVoipChannelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#UpdateApnsVoipChannelRequest', name: 'UpdateApnsVoipChannelRequest')
    UpdateApnsVoipChannelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#UpdateApnsVoipChannelResponse', name: 'UpdateApnsVoipChannelResponse')
    UpdateApnsVoipSandboxChannelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#UpdateApnsVoipSandboxChannelRequest', name: 'UpdateApnsVoipSandboxChannelRequest')
    UpdateApnsVoipSandboxChannelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#UpdateApnsVoipSandboxChannelResponse', name: 'UpdateApnsVoipSandboxChannelResponse')
    UpdateApplicationSettingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#UpdateApplicationSettingsRequest', name: 'UpdateApplicationSettingsRequest')
    UpdateApplicationSettingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#UpdateApplicationSettingsResponse', name: 'UpdateApplicationSettingsResponse')
    UpdateAttributesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#UpdateAttributesRequest', name: 'UpdateAttributesRequest')
    UpdateBaiduChannelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#UpdateBaiduChannelRequest', name: 'UpdateBaiduChannelRequest')
    UpdateBaiduChannelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#UpdateBaiduChannelResponse', name: 'UpdateBaiduChannelResponse')
    UpdateCampaignRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#UpdateCampaignRequest', name: 'UpdateCampaignRequest')
    UpdateCampaignResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#UpdateCampaignResponse', name: 'UpdateCampaignResponse')
    UpdateEmailChannelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#UpdateEmailChannelRequest', name: 'UpdateEmailChannelRequest')
    UpdateEmailChannelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#UpdateEmailChannelResponse', name: 'UpdateEmailChannelResponse')
    UpdateEmailTemplateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#UpdateEmailTemplateRequest', name: 'UpdateEmailTemplateRequest')
    UpdateEmailTemplateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#UpdateEmailTemplateResponse', name: 'UpdateEmailTemplateResponse')
    UpdateEndpointRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#UpdateEndpointRequest', name: 'UpdateEndpointRequest')
    UpdateEndpointResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#UpdateEndpointResponse', name: 'UpdateEndpointResponse')
    UpdateEndpointsBatchRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#UpdateEndpointsBatchRequest', name: 'UpdateEndpointsBatchRequest')
    UpdateEndpointsBatchResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#UpdateEndpointsBatchResponse', name: 'UpdateEndpointsBatchResponse')
    UpdateGcmChannelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#UpdateGcmChannelRequest', name: 'UpdateGcmChannelRequest')
    UpdateGcmChannelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#UpdateGcmChannelResponse', name: 'UpdateGcmChannelResponse')
    UpdateInAppTemplateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#UpdateInAppTemplateRequest', name: 'UpdateInAppTemplateRequest')
    UpdateInAppTemplateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#UpdateInAppTemplateResponse', name: 'UpdateInAppTemplateResponse')
    UpdateJourneyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#UpdateJourneyRequest', name: 'UpdateJourneyRequest')
    UpdateJourneyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#UpdateJourneyResponse', name: 'UpdateJourneyResponse')
    UpdateJourneyStateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#UpdateJourneyStateRequest', name: 'UpdateJourneyStateRequest')
    UpdateJourneyStateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#UpdateJourneyStateResponse', name: 'UpdateJourneyStateResponse')
    UpdatePushTemplateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#UpdatePushTemplateRequest', name: 'UpdatePushTemplateRequest')
    UpdatePushTemplateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#UpdatePushTemplateResponse', name: 'UpdatePushTemplateResponse')
    UpdateRecommenderConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#UpdateRecommenderConfigurationRequest', name: 'UpdateRecommenderConfigurationRequest')
    UpdateRecommenderConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#UpdateRecommenderConfigurationResponse', name: 'UpdateRecommenderConfigurationResponse')
    UpdateRecommenderConfigurationShape = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#UpdateRecommenderConfigurationShape', name: 'UpdateRecommenderConfigurationShape')
    UpdateSegmentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#UpdateSegmentRequest', name: 'UpdateSegmentRequest')
    UpdateSegmentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#UpdateSegmentResponse', name: 'UpdateSegmentResponse')
    UpdateSmsChannelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#UpdateSmsChannelRequest', name: 'UpdateSmsChannelRequest')
    UpdateSmsChannelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#UpdateSmsChannelResponse', name: 'UpdateSmsChannelResponse')
    UpdateSmsTemplateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#UpdateSmsTemplateRequest', name: 'UpdateSmsTemplateRequest')
    UpdateSmsTemplateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#UpdateSmsTemplateResponse', name: 'UpdateSmsTemplateResponse')
    UpdateTemplateActiveVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#UpdateTemplateActiveVersionRequest', name: 'UpdateTemplateActiveVersionRequest')
    UpdateTemplateActiveVersionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#UpdateTemplateActiveVersionResponse', name: 'UpdateTemplateActiveVersionResponse')
    UpdateVoiceChannelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#UpdateVoiceChannelRequest', name: 'UpdateVoiceChannelRequest')
    UpdateVoiceChannelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#UpdateVoiceChannelResponse', name: 'UpdateVoiceChannelResponse')
    UpdateVoiceTemplateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#UpdateVoiceTemplateRequest', name: 'UpdateVoiceTemplateRequest')
    UpdateVoiceTemplateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#UpdateVoiceTemplateResponse', name: 'UpdateVoiceTemplateResponse')
    VerificationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#VerificationResponse', name: 'VerificationResponse')
    VerifyOTPMessageRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#VerifyOTPMessageRequest', name: 'VerifyOTPMessageRequest')
    VerifyOTPMessageRequestParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#VerifyOTPMessageRequestParameters', name: 'VerifyOTPMessageRequestParameters')
    VerifyOTPMessageResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#VerifyOTPMessageResponse', name: 'VerifyOTPMessageResponse')
    VoiceChannelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#VoiceChannelRequest', name: 'VoiceChannelRequest')
    VoiceChannelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#VoiceChannelResponse', name: 'VoiceChannelResponse')
    VoiceMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#VoiceMessage', name: 'VoiceMessage')
    VoiceTemplateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#VoiceTemplateRequest', name: 'VoiceTemplateRequest')
    VoiceTemplateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#VoiceTemplateResponse', name: 'VoiceTemplateResponse')
    WaitActivity = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#WaitActivity', name: 'WaitActivity')
    WaitTime = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#WaitTime', name: 'WaitTime')
    WriteApplicationSettingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#WriteApplicationSettingsRequest', name: 'WriteApplicationSettingsRequest')
    WriteCampaignRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#WriteCampaignRequest', name: 'WriteCampaignRequest')
    WriteEventStream = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#WriteEventStream', name: 'WriteEventStream')
    WriteJourneyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#WriteJourneyRequest', name: 'WriteJourneyRequest')
    WriteSegmentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#WriteSegmentRequest', name: 'WriteSegmentRequest')
    WriteTreatmentResource = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#WriteTreatmentResource', name: 'WriteTreatmentResource')
    Endpointtypeselement = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.pinpoint#__EndpointTypesElement', name: 'Endpointtypeselement')
    Timezoneestimationmethodselement = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.pinpoint#__TimezoneEstimationMethodsElement', name: 'Timezoneestimationmethodselement')
    Blob = ::Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.pinpoint#__blob', name: 'Blob')
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.pinpoint#__boolean', name: 'Boolean')
    Double = ::Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.pinpoint#__double', name: 'Double')
    Integer = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.pinpoint#__integer', name: 'Integer')
    String = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpoint#__string', name: 'String')
    Timestampiso8601 = ::Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.pinpoint#__timestampIso8601', name: 'Timestampiso8601', traits: {"smithy.api#timestampFormat" => "date-time"})

    ADMChannelRequest.add_member(:client_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClientId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ADMChannelRequest.add_member(:client_secret, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClientSecret', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ADMChannelRequest.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled'))
    ADMChannelRequest.type = Types::ADMChannelRequest
    ADMChannelResponse.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId'))
    ADMChannelResponse.add_member(:creation_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreationDate'))
    ADMChannelResponse.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled'))
    ADMChannelResponse.add_member(:has_credential, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'HasCredential'))
    ADMChannelResponse.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id'))
    ADMChannelResponse.add_member(:is_archived, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IsArchived'))
    ADMChannelResponse.add_member(:last_modified_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LastModifiedBy'))
    ADMChannelResponse.add_member(:last_modified_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LastModifiedDate'))
    ADMChannelResponse.add_member(:platform, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Platform', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ADMChannelResponse.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Version'))
    ADMChannelResponse.type = Types::ADMChannelResponse
    ADMMessage.add_member(:action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Action, location_name: 'Action'))
    ADMMessage.add_member(:body, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Body'))
    ADMMessage.add_member(:consolidation_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ConsolidationKey'))
    ADMMessage.add_member(:data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfString, location_name: 'Data'))
    ADMMessage.add_member(:expires_after, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ExpiresAfter'))
    ADMMessage.add_member(:icon_reference, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IconReference'))
    ADMMessage.add_member(:image_icon_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ImageIconUrl'))
    ADMMessage.add_member(:image_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ImageUrl'))
    ADMMessage.add_member(:md5, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MD5'))
    ADMMessage.add_member(:raw_content, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RawContent'))
    ADMMessage.add_member(:silent_push, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'SilentPush'))
    ADMMessage.add_member(:small_image_icon_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SmallImageIconUrl'))
    ADMMessage.add_member(:sound, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Sound'))
    ADMMessage.add_member(:substitutions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfListOfString, location_name: 'Substitutions'))
    ADMMessage.add_member(:title, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Title'))
    ADMMessage.add_member(:url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Url'))
    ADMMessage.type = Types::ADMMessage
    APNSChannelRequest.add_member(:bundle_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BundleId'))
    APNSChannelRequest.add_member(:certificate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Certificate'))
    APNSChannelRequest.add_member(:default_authentication_method, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DefaultAuthenticationMethod'))
    APNSChannelRequest.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled'))
    APNSChannelRequest.add_member(:private_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PrivateKey'))
    APNSChannelRequest.add_member(:team_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TeamId'))
    APNSChannelRequest.add_member(:token_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TokenKey'))
    APNSChannelRequest.add_member(:token_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TokenKeyId'))
    APNSChannelRequest.type = Types::APNSChannelRequest
    APNSChannelResponse.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId'))
    APNSChannelResponse.add_member(:creation_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreationDate'))
    APNSChannelResponse.add_member(:default_authentication_method, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DefaultAuthenticationMethod'))
    APNSChannelResponse.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled'))
    APNSChannelResponse.add_member(:has_credential, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'HasCredential'))
    APNSChannelResponse.add_member(:has_token_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'HasTokenKey'))
    APNSChannelResponse.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id'))
    APNSChannelResponse.add_member(:is_archived, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IsArchived'))
    APNSChannelResponse.add_member(:last_modified_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LastModifiedBy'))
    APNSChannelResponse.add_member(:last_modified_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LastModifiedDate'))
    APNSChannelResponse.add_member(:platform, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Platform', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    APNSChannelResponse.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Version'))
    APNSChannelResponse.type = Types::APNSChannelResponse
    APNSMessage.add_member(:apns_push_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'APNSPushType'))
    APNSMessage.add_member(:action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Action, location_name: 'Action'))
    APNSMessage.add_member(:badge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Badge'))
    APNSMessage.add_member(:body, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Body'))
    APNSMessage.add_member(:category, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Category'))
    APNSMessage.add_member(:collapse_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CollapseId'))
    APNSMessage.add_member(:data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfString, location_name: 'Data'))
    APNSMessage.add_member(:media_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MediaUrl'))
    APNSMessage.add_member(:preferred_authentication_method, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PreferredAuthenticationMethod'))
    APNSMessage.add_member(:priority, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Priority'))
    APNSMessage.add_member(:raw_content, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RawContent'))
    APNSMessage.add_member(:silent_push, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'SilentPush'))
    APNSMessage.add_member(:sound, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Sound'))
    APNSMessage.add_member(:substitutions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfListOfString, location_name: 'Substitutions'))
    APNSMessage.add_member(:thread_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ThreadId'))
    APNSMessage.add_member(:time_to_live, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'TimeToLive'))
    APNSMessage.add_member(:title, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Title'))
    APNSMessage.add_member(:url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Url'))
    APNSMessage.type = Types::APNSMessage
    APNSPushNotificationTemplate.add_member(:action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Action, location_name: 'Action'))
    APNSPushNotificationTemplate.add_member(:body, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Body'))
    APNSPushNotificationTemplate.add_member(:media_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MediaUrl'))
    APNSPushNotificationTemplate.add_member(:raw_content, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RawContent'))
    APNSPushNotificationTemplate.add_member(:sound, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Sound'))
    APNSPushNotificationTemplate.add_member(:title, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Title'))
    APNSPushNotificationTemplate.add_member(:url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Url'))
    APNSPushNotificationTemplate.type = Types::APNSPushNotificationTemplate
    APNSSandboxChannelRequest.add_member(:bundle_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BundleId'))
    APNSSandboxChannelRequest.add_member(:certificate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Certificate'))
    APNSSandboxChannelRequest.add_member(:default_authentication_method, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DefaultAuthenticationMethod'))
    APNSSandboxChannelRequest.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled'))
    APNSSandboxChannelRequest.add_member(:private_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PrivateKey'))
    APNSSandboxChannelRequest.add_member(:team_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TeamId'))
    APNSSandboxChannelRequest.add_member(:token_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TokenKey'))
    APNSSandboxChannelRequest.add_member(:token_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TokenKeyId'))
    APNSSandboxChannelRequest.type = Types::APNSSandboxChannelRequest
    APNSSandboxChannelResponse.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId'))
    APNSSandboxChannelResponse.add_member(:creation_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreationDate'))
    APNSSandboxChannelResponse.add_member(:default_authentication_method, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DefaultAuthenticationMethod'))
    APNSSandboxChannelResponse.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled'))
    APNSSandboxChannelResponse.add_member(:has_credential, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'HasCredential'))
    APNSSandboxChannelResponse.add_member(:has_token_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'HasTokenKey'))
    APNSSandboxChannelResponse.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id'))
    APNSSandboxChannelResponse.add_member(:is_archived, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IsArchived'))
    APNSSandboxChannelResponse.add_member(:last_modified_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LastModifiedBy'))
    APNSSandboxChannelResponse.add_member(:last_modified_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LastModifiedDate'))
    APNSSandboxChannelResponse.add_member(:platform, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Platform', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    APNSSandboxChannelResponse.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Version'))
    APNSSandboxChannelResponse.type = Types::APNSSandboxChannelResponse
    APNSVoipChannelRequest.add_member(:bundle_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BundleId'))
    APNSVoipChannelRequest.add_member(:certificate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Certificate'))
    APNSVoipChannelRequest.add_member(:default_authentication_method, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DefaultAuthenticationMethod'))
    APNSVoipChannelRequest.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled'))
    APNSVoipChannelRequest.add_member(:private_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PrivateKey'))
    APNSVoipChannelRequest.add_member(:team_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TeamId'))
    APNSVoipChannelRequest.add_member(:token_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TokenKey'))
    APNSVoipChannelRequest.add_member(:token_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TokenKeyId'))
    APNSVoipChannelRequest.type = Types::APNSVoipChannelRequest
    APNSVoipChannelResponse.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId'))
    APNSVoipChannelResponse.add_member(:creation_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreationDate'))
    APNSVoipChannelResponse.add_member(:default_authentication_method, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DefaultAuthenticationMethod'))
    APNSVoipChannelResponse.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled'))
    APNSVoipChannelResponse.add_member(:has_credential, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'HasCredential'))
    APNSVoipChannelResponse.add_member(:has_token_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'HasTokenKey'))
    APNSVoipChannelResponse.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id'))
    APNSVoipChannelResponse.add_member(:is_archived, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IsArchived'))
    APNSVoipChannelResponse.add_member(:last_modified_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LastModifiedBy'))
    APNSVoipChannelResponse.add_member(:last_modified_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LastModifiedDate'))
    APNSVoipChannelResponse.add_member(:platform, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Platform', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    APNSVoipChannelResponse.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Version'))
    APNSVoipChannelResponse.type = Types::APNSVoipChannelResponse
    APNSVoipSandboxChannelRequest.add_member(:bundle_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BundleId'))
    APNSVoipSandboxChannelRequest.add_member(:certificate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Certificate'))
    APNSVoipSandboxChannelRequest.add_member(:default_authentication_method, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DefaultAuthenticationMethod'))
    APNSVoipSandboxChannelRequest.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled'))
    APNSVoipSandboxChannelRequest.add_member(:private_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PrivateKey'))
    APNSVoipSandboxChannelRequest.add_member(:team_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TeamId'))
    APNSVoipSandboxChannelRequest.add_member(:token_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TokenKey'))
    APNSVoipSandboxChannelRequest.add_member(:token_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TokenKeyId'))
    APNSVoipSandboxChannelRequest.type = Types::APNSVoipSandboxChannelRequest
    APNSVoipSandboxChannelResponse.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId'))
    APNSVoipSandboxChannelResponse.add_member(:creation_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreationDate'))
    APNSVoipSandboxChannelResponse.add_member(:default_authentication_method, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DefaultAuthenticationMethod'))
    APNSVoipSandboxChannelResponse.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled'))
    APNSVoipSandboxChannelResponse.add_member(:has_credential, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'HasCredential'))
    APNSVoipSandboxChannelResponse.add_member(:has_token_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'HasTokenKey'))
    APNSVoipSandboxChannelResponse.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id'))
    APNSVoipSandboxChannelResponse.add_member(:is_archived, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IsArchived'))
    APNSVoipSandboxChannelResponse.add_member(:last_modified_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LastModifiedBy'))
    APNSVoipSandboxChannelResponse.add_member(:last_modified_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LastModifiedDate'))
    APNSVoipSandboxChannelResponse.add_member(:platform, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Platform', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    APNSVoipSandboxChannelResponse.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Version'))
    APNSVoipSandboxChannelResponse.type = Types::APNSVoipSandboxChannelResponse
    Action.add_member(:open_app, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OPEN_APP', traits: {"smithy.api#enumValue" => "OPEN_APP"}))
    Action.add_member(:deep_link, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEEP_LINK', traits: {"smithy.api#enumValue" => "DEEP_LINK"}))
    Action.add_member(:url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'URL', traits: {"smithy.api#enumValue" => "URL"}))
    ActivitiesResponse.add_member(:item, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfActivityResponse, location_name: 'Item', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ActivitiesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken'))
    ActivitiesResponse.type = Types::ActivitiesResponse
    Activity.add_member(:custom, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomMessageActivity, location_name: 'CUSTOM'))
    Activity.add_member(:conditional_split, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConditionalSplitActivity, location_name: 'ConditionalSplit'))
    Activity.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description'))
    Activity.add_member(:email, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmailMessageActivity, location_name: 'EMAIL'))
    Activity.add_member(:holdout, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HoldoutActivity, location_name: 'Holdout'))
    Activity.add_member(:multi_condition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MultiConditionalSplitActivity, location_name: 'MultiCondition'))
    Activity.add_member(:push, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PushMessageActivity, location_name: 'PUSH'))
    Activity.add_member(:random_split, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RandomSplitActivity, location_name: 'RandomSplit'))
    Activity.add_member(:sms, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SMSMessageActivity, location_name: 'SMS'))
    Activity.add_member(:wait, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WaitActivity, location_name: 'Wait'))
    Activity.add_member(:contact_center, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContactCenterActivity, location_name: 'ContactCenter'))
    Activity.type = Types::Activity
    ActivityResponse.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ActivityResponse.add_member(:campaign_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CampaignId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ActivityResponse.add_member(:end, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'End'))
    ActivityResponse.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ActivityResponse.add_member(:result, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Result'))
    ActivityResponse.add_member(:scheduled_start, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ScheduledStart'))
    ActivityResponse.add_member(:start, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Start'))
    ActivityResponse.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'State'))
    ActivityResponse.add_member(:successful_endpoint_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'SuccessfulEndpointCount'))
    ActivityResponse.add_member(:timezones_completed_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'TimezonesCompletedCount'))
    ActivityResponse.add_member(:timezones_total_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'TimezonesTotalCount'))
    ActivityResponse.add_member(:total_endpoint_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'TotalEndpointCount'))
    ActivityResponse.add_member(:treatment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TreatmentId'))
    ActivityResponse.add_member(:execution_metrics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfString, location_name: 'ExecutionMetrics'))
    ActivityResponse.type = Types::ActivityResponse
    AddressConfiguration.add_member(:body_override, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BodyOverride'))
    AddressConfiguration.add_member(:channel_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelType, location_name: 'ChannelType'))
    AddressConfiguration.add_member(:context, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfString, location_name: 'Context'))
    AddressConfiguration.add_member(:raw_content, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RawContent'))
    AddressConfiguration.add_member(:substitutions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfListOfString, location_name: 'Substitutions'))
    AddressConfiguration.add_member(:title_override, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TitleOverride'))
    AddressConfiguration.type = Types::AddressConfiguration
    Alignment.add_member(:left, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LEFT', traits: {"smithy.api#enumValue" => "LEFT"}))
    Alignment.add_member(:center, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CENTER', traits: {"smithy.api#enumValue" => "CENTER"}))
    Alignment.add_member(:right, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RIGHT', traits: {"smithy.api#enumValue" => "RIGHT"}))
    AndroidPushNotificationTemplate.add_member(:action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Action, location_name: 'Action'))
    AndroidPushNotificationTemplate.add_member(:body, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Body'))
    AndroidPushNotificationTemplate.add_member(:image_icon_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ImageIconUrl'))
    AndroidPushNotificationTemplate.add_member(:image_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ImageUrl'))
    AndroidPushNotificationTemplate.add_member(:raw_content, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RawContent'))
    AndroidPushNotificationTemplate.add_member(:small_image_icon_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SmallImageIconUrl'))
    AndroidPushNotificationTemplate.add_member(:sound, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Sound'))
    AndroidPushNotificationTemplate.add_member(:title, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Title'))
    AndroidPushNotificationTemplate.add_member(:url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Url'))
    AndroidPushNotificationTemplate.type = Types::AndroidPushNotificationTemplate
    ApplicationDateRangeKpiResponse.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ApplicationDateRangeKpiResponse.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'EndTime', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ApplicationDateRangeKpiResponse.add_member(:kpi_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KpiName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ApplicationDateRangeKpiResponse.add_member(:kpi_result, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaseKpiResult, location_name: 'KpiResult', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ApplicationDateRangeKpiResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken'))
    ApplicationDateRangeKpiResponse.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'StartTime', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ApplicationDateRangeKpiResponse.type = Types::ApplicationDateRangeKpiResponse
    ApplicationResponse.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ApplicationResponse.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ApplicationResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ApplicationResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfString, location_name: 'tags', traits: {"smithy.api#jsonName" => "tags"}))
    ApplicationResponse.add_member(:creation_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreationDate'))
    ApplicationResponse.type = Types::ApplicationResponse
    ApplicationSettingsJourneyLimits.add_member(:daily_cap, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'DailyCap'))
    ApplicationSettingsJourneyLimits.add_member(:timeframe_cap, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JourneyTimeframeCap, location_name: 'TimeframeCap'))
    ApplicationSettingsJourneyLimits.add_member(:total_cap, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'TotalCap'))
    ApplicationSettingsJourneyLimits.type = Types::ApplicationSettingsJourneyLimits
    ApplicationSettingsResource.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ApplicationSettingsResource.add_member(:campaign_hook, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignHook, location_name: 'CampaignHook'))
    ApplicationSettingsResource.add_member(:last_modified_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LastModifiedDate'))
    ApplicationSettingsResource.add_member(:limits, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignLimits, location_name: 'Limits'))
    ApplicationSettingsResource.add_member(:quiet_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QuietTime, location_name: 'QuietTime'))
    ApplicationSettingsResource.add_member(:journey_limits, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationSettingsJourneyLimits, location_name: 'JourneyLimits'))
    ApplicationSettingsResource.type = Types::ApplicationSettingsResource
    ApplicationsResponse.add_member(:item, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfApplicationResponse, location_name: 'Item'))
    ApplicationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken'))
    ApplicationsResponse.type = Types::ApplicationsResponse
    AttributeDimension.add_member(:attribute_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeType, location_name: 'AttributeType'))
    AttributeDimension.add_member(:values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfString, location_name: 'Values', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AttributeDimension.type = Types::AttributeDimension
    AttributeType.add_member(:inclusive, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INCLUSIVE', traits: {"smithy.api#enumValue" => "INCLUSIVE"}))
    AttributeType.add_member(:exclusive, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXCLUSIVE', traits: {"smithy.api#enumValue" => "EXCLUSIVE"}))
    AttributeType.add_member(:contains, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONTAINS', traits: {"smithy.api#enumValue" => "CONTAINS"}))
    AttributeType.add_member(:before, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BEFORE', traits: {"smithy.api#enumValue" => "BEFORE"}))
    AttributeType.add_member(:after, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AFTER', traits: {"smithy.api#enumValue" => "AFTER"}))
    AttributeType.add_member(:on, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ON', traits: {"smithy.api#enumValue" => "ON"}))
    AttributeType.add_member(:between, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BETWEEN', traits: {"smithy.api#enumValue" => "BETWEEN"}))
    AttributesResource.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AttributesResource.add_member(:attribute_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AttributeType', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AttributesResource.add_member(:attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfString, location_name: 'Attributes'))
    AttributesResource.type = Types::AttributesResource
    BadRequestException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    BadRequestException.add_member(:request_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RequestID'))
    BadRequestException.type = Types::BadRequestException
    BaiduChannelRequest.add_member(:api_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApiKey', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    BaiduChannelRequest.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled'))
    BaiduChannelRequest.add_member(:secret_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SecretKey', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    BaiduChannelRequest.type = Types::BaiduChannelRequest
    BaiduChannelResponse.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId'))
    BaiduChannelResponse.add_member(:creation_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreationDate'))
    BaiduChannelResponse.add_member(:credential, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Credential', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    BaiduChannelResponse.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled'))
    BaiduChannelResponse.add_member(:has_credential, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'HasCredential'))
    BaiduChannelResponse.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id'))
    BaiduChannelResponse.add_member(:is_archived, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IsArchived'))
    BaiduChannelResponse.add_member(:last_modified_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LastModifiedBy'))
    BaiduChannelResponse.add_member(:last_modified_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LastModifiedDate'))
    BaiduChannelResponse.add_member(:platform, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Platform', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    BaiduChannelResponse.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Version'))
    BaiduChannelResponse.type = Types::BaiduChannelResponse
    BaiduMessage.add_member(:action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Action, location_name: 'Action'))
    BaiduMessage.add_member(:body, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Body'))
    BaiduMessage.add_member(:data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfString, location_name: 'Data'))
    BaiduMessage.add_member(:icon_reference, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IconReference'))
    BaiduMessage.add_member(:image_icon_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ImageIconUrl'))
    BaiduMessage.add_member(:image_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ImageUrl'))
    BaiduMessage.add_member(:raw_content, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RawContent'))
    BaiduMessage.add_member(:silent_push, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'SilentPush'))
    BaiduMessage.add_member(:small_image_icon_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SmallImageIconUrl'))
    BaiduMessage.add_member(:sound, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Sound'))
    BaiduMessage.add_member(:substitutions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfListOfString, location_name: 'Substitutions'))
    BaiduMessage.add_member(:time_to_live, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'TimeToLive'))
    BaiduMessage.add_member(:title, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Title'))
    BaiduMessage.add_member(:url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Url'))
    BaiduMessage.type = Types::BaiduMessage
    BaseKpiResult.add_member(:rows, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfResultRow, location_name: 'Rows', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    BaseKpiResult.type = Types::BaseKpiResult
    ButtonAction.add_member(:link, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LINK', traits: {"smithy.api#enumValue" => "LINK"}))
    ButtonAction.add_member(:deep_link, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEEP_LINK', traits: {"smithy.api#enumValue" => "DEEP_LINK"}))
    ButtonAction.add_member(:close, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CLOSE', traits: {"smithy.api#enumValue" => "CLOSE"}))
    CampaignCustomMessage.add_member(:data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Data'))
    CampaignCustomMessage.type = Types::CampaignCustomMessage
    CampaignDateRangeKpiResponse.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CampaignDateRangeKpiResponse.add_member(:campaign_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CampaignId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CampaignDateRangeKpiResponse.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'EndTime', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CampaignDateRangeKpiResponse.add_member(:kpi_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KpiName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CampaignDateRangeKpiResponse.add_member(:kpi_result, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaseKpiResult, location_name: 'KpiResult', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CampaignDateRangeKpiResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken'))
    CampaignDateRangeKpiResponse.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'StartTime', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CampaignDateRangeKpiResponse.type = Types::CampaignDateRangeKpiResponse
    CampaignEmailMessage.add_member(:body, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Body'))
    CampaignEmailMessage.add_member(:from_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'FromAddress'))
    CampaignEmailMessage.add_member(:headers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfMessageHeader, location_name: 'Headers'))
    CampaignEmailMessage.add_member(:html_body, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'HtmlBody'))
    CampaignEmailMessage.add_member(:title, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Title'))
    CampaignEmailMessage.type = Types::CampaignEmailMessage
    CampaignEventFilter.add_member(:dimensions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventDimensions, location_name: 'Dimensions', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CampaignEventFilter.add_member(:filter_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterType, location_name: 'FilterType', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CampaignEventFilter.type = Types::CampaignEventFilter
    CampaignHook.add_member(:lambda_function_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LambdaFunctionName'))
    CampaignHook.add_member(:mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Mode, location_name: 'Mode'))
    CampaignHook.add_member(:web_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'WebUrl'))
    CampaignHook.type = Types::CampaignHook
    CampaignInAppMessage.add_member(:body, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Body'))
    CampaignInAppMessage.add_member(:content, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfInAppMessageContent, location_name: 'Content'))
    CampaignInAppMessage.add_member(:custom_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfString, location_name: 'CustomConfig'))
    CampaignInAppMessage.add_member(:layout, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Layout, location_name: 'Layout'))
    CampaignInAppMessage.type = Types::CampaignInAppMessage
    CampaignLimits.add_member(:daily, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Daily'))
    CampaignLimits.add_member(:maximum_duration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'MaximumDuration'))
    CampaignLimits.add_member(:messages_per_second, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'MessagesPerSecond'))
    CampaignLimits.add_member(:total, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Total'))
    CampaignLimits.add_member(:session, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Session'))
    CampaignLimits.type = Types::CampaignLimits
    CampaignResponse.add_member(:additional_treatments, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfTreatmentResource, location_name: 'AdditionalTreatments'))
    CampaignResponse.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CampaignResponse.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CampaignResponse.add_member(:creation_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreationDate', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CampaignResponse.add_member(:custom_delivery_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomDeliveryConfiguration, location_name: 'CustomDeliveryConfiguration'))
    CampaignResponse.add_member(:default_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignState, location_name: 'DefaultState'))
    CampaignResponse.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description'))
    CampaignResponse.add_member(:holdout_percent, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'HoldoutPercent'))
    CampaignResponse.add_member(:hook, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignHook, location_name: 'Hook'))
    CampaignResponse.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CampaignResponse.add_member(:is_paused, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IsPaused'))
    CampaignResponse.add_member(:last_modified_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LastModifiedDate', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CampaignResponse.add_member(:limits, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignLimits, location_name: 'Limits'))
    CampaignResponse.add_member(:message_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageConfiguration, location_name: 'MessageConfiguration'))
    CampaignResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name'))
    CampaignResponse.add_member(:schedule, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Schedule, location_name: 'Schedule'))
    CampaignResponse.add_member(:segment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SegmentId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CampaignResponse.add_member(:segment_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'SegmentVersion', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CampaignResponse.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignState, location_name: 'State'))
    CampaignResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfString, location_name: 'tags', traits: {"smithy.api#jsonName" => "tags"}))
    CampaignResponse.add_member(:template_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateConfiguration, location_name: 'TemplateConfiguration'))
    CampaignResponse.add_member(:treatment_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TreatmentDescription'))
    CampaignResponse.add_member(:treatment_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TreatmentName'))
    CampaignResponse.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Version'))
    CampaignResponse.add_member(:priority, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Priority'))
    CampaignResponse.type = Types::CampaignResponse
    CampaignSmsMessage.add_member(:body, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Body'))
    CampaignSmsMessage.add_member(:message_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageType, location_name: 'MessageType'))
    CampaignSmsMessage.add_member(:origination_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OriginationNumber'))
    CampaignSmsMessage.add_member(:sender_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SenderId'))
    CampaignSmsMessage.add_member(:entity_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EntityId'))
    CampaignSmsMessage.add_member(:template_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TemplateId'))
    CampaignSmsMessage.type = Types::CampaignSmsMessage
    CampaignState.add_member(:campaign_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignStatus, location_name: 'CampaignStatus'))
    CampaignState.type = Types::CampaignState
    CampaignStatus.add_member(:scheduled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SCHEDULED', traits: {"smithy.api#enumValue" => "SCHEDULED"}))
    CampaignStatus.add_member(:executing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXECUTING', traits: {"smithy.api#enumValue" => "EXECUTING"}))
    CampaignStatus.add_member(:pending_next_run, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING_NEXT_RUN', traits: {"smithy.api#enumValue" => "PENDING_NEXT_RUN"}))
    CampaignStatus.add_member(:completed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETED', traits: {"smithy.api#enumValue" => "COMPLETED"}))
    CampaignStatus.add_member(:paused, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PAUSED', traits: {"smithy.api#enumValue" => "PAUSED"}))
    CampaignStatus.add_member(:deleted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETED', traits: {"smithy.api#enumValue" => "DELETED"}))
    CampaignStatus.add_member(:invalid, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID', traits: {"smithy.api#enumValue" => "INVALID"}))
    CampaignsResponse.add_member(:item, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfCampaignResponse, location_name: 'Item', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CampaignsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken'))
    CampaignsResponse.type = Types::CampaignsResponse
    ChannelResponse.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId'))
    ChannelResponse.add_member(:creation_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreationDate'))
    ChannelResponse.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled'))
    ChannelResponse.add_member(:has_credential, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'HasCredential'))
    ChannelResponse.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id'))
    ChannelResponse.add_member(:is_archived, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IsArchived'))
    ChannelResponse.add_member(:last_modified_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LastModifiedBy'))
    ChannelResponse.add_member(:last_modified_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LastModifiedDate'))
    ChannelResponse.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Version'))
    ChannelResponse.type = Types::ChannelResponse
    ChannelType.add_member(:push, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PUSH', traits: {"smithy.api#enumValue" => "PUSH"}))
    ChannelType.add_member(:gcm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GCM', traits: {"smithy.api#enumValue" => "GCM"}))
    ChannelType.add_member(:apns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APNS', traits: {"smithy.api#enumValue" => "APNS"}))
    ChannelType.add_member(:apns_sandbox, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APNS_SANDBOX', traits: {"smithy.api#enumValue" => "APNS_SANDBOX"}))
    ChannelType.add_member(:apns_voip, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APNS_VOIP', traits: {"smithy.api#enumValue" => "APNS_VOIP"}))
    ChannelType.add_member(:apns_voip_sandbox, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APNS_VOIP_SANDBOX', traits: {"smithy.api#enumValue" => "APNS_VOIP_SANDBOX"}))
    ChannelType.add_member(:adm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ADM', traits: {"smithy.api#enumValue" => "ADM"}))
    ChannelType.add_member(:sms, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SMS', traits: {"smithy.api#enumValue" => "SMS"}))
    ChannelType.add_member(:voice, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VOICE', traits: {"smithy.api#enumValue" => "VOICE"}))
    ChannelType.add_member(:email, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EMAIL', traits: {"smithy.api#enumValue" => "EMAIL"}))
    ChannelType.add_member(:baidu, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BAIDU', traits: {"smithy.api#enumValue" => "BAIDU"}))
    ChannelType.add_member(:custom, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CUSTOM', traits: {"smithy.api#enumValue" => "CUSTOM"}))
    ChannelType.add_member(:in_app, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_APP', traits: {"smithy.api#enumValue" => "IN_APP"}))
    ChannelsResponse.add_member(:channels, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfChannelResponse, location_name: 'Channels', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ChannelsResponse.type = Types::ChannelsResponse
    ClosedDays.add_member(:email, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfClosedDaysRules, location_name: 'EMAIL'))
    ClosedDays.add_member(:sms, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfClosedDaysRules, location_name: 'SMS'))
    ClosedDays.add_member(:push, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfClosedDaysRules, location_name: 'PUSH'))
    ClosedDays.add_member(:voice, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfClosedDaysRules, location_name: 'VOICE'))
    ClosedDays.add_member(:custom, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfClosedDaysRules, location_name: 'CUSTOM'))
    ClosedDays.type = Types::ClosedDays
    ClosedDaysRule.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name'))
    ClosedDaysRule.add_member(:start_date_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StartDateTime'))
    ClosedDaysRule.add_member(:end_date_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EndDateTime'))
    ClosedDaysRule.type = Types::ClosedDaysRule
    Condition.add_member(:conditions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfSimpleCondition, location_name: 'Conditions'))
    Condition.add_member(:operator, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Operator, location_name: 'Operator'))
    Condition.type = Types::Condition
    ConditionalSplitActivity.add_member(:condition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Condition, location_name: 'Condition'))
    ConditionalSplitActivity.add_member(:evaluation_wait_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WaitTime, location_name: 'EvaluationWaitTime'))
    ConditionalSplitActivity.add_member(:false_activity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'FalseActivity'))
    ConditionalSplitActivity.add_member(:true_activity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TrueActivity'))
    ConditionalSplitActivity.type = Types::ConditionalSplitActivity
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    ConflictException.add_member(:request_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RequestID'))
    ConflictException.type = Types::ConflictException
    ContactCenterActivity.add_member(:next_activity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextActivity'))
    ContactCenterActivity.type = Types::ContactCenterActivity
    CreateAppRequest.add_member(:create_application_request, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateApplicationRequest, location_name: 'CreateApplicationRequest', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    CreateAppRequest[:http_payload] = :create_application_request
    CreateAppRequest[:http_payload_member] = CreateAppRequest.member(:create_application_request)
    CreateAppRequest.type = Types::CreateAppRequest
    CreateAppResponse.add_member(:application_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationResponse, location_name: 'ApplicationResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    CreateAppResponse[:http_payload] = :application_response
    CreateAppResponse[:http_payload_member] = CreateAppResponse.member(:application_response)
    CreateAppResponse.type = Types::CreateAppResponse
    CreateApplicationRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateApplicationRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfString, location_name: 'tags', traits: {"smithy.api#jsonName" => "tags"}))
    CreateApplicationRequest.type = Types::CreateApplicationRequest
    CreateCampaignRequest.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateCampaignRequest.add_member(:write_campaign_request, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WriteCampaignRequest, location_name: 'WriteCampaignRequest', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    CreateCampaignRequest[:http_payload] = :write_campaign_request
    CreateCampaignRequest[:http_payload_member] = CreateCampaignRequest.member(:write_campaign_request)
    CreateCampaignRequest.type = Types::CreateCampaignRequest
    CreateCampaignResponse.add_member(:campaign_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignResponse, location_name: 'CampaignResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    CreateCampaignResponse[:http_payload] = :campaign_response
    CreateCampaignResponse[:http_payload_member] = CreateCampaignResponse.member(:campaign_response)
    CreateCampaignResponse.type = Types::CreateCampaignResponse
    CreateEmailTemplateRequest.add_member(:email_template_request, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmailTemplateRequest, location_name: 'EmailTemplateRequest', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    CreateEmailTemplateRequest.add_member(:template_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TemplateName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateEmailTemplateRequest[:http_payload] = :email_template_request
    CreateEmailTemplateRequest[:http_payload_member] = CreateEmailTemplateRequest.member(:email_template_request)
    CreateEmailTemplateRequest.type = Types::CreateEmailTemplateRequest
    CreateEmailTemplateResponse.add_member(:create_template_message_body, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTemplateMessageBody, location_name: 'CreateTemplateMessageBody', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    CreateEmailTemplateResponse[:http_payload] = :create_template_message_body
    CreateEmailTemplateResponse[:http_payload_member] = CreateEmailTemplateResponse.member(:create_template_message_body)
    CreateEmailTemplateResponse.type = Types::CreateEmailTemplateResponse
    CreateExportJobRequest.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateExportJobRequest.add_member(:export_job_request, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportJobRequest, location_name: 'ExportJobRequest', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    CreateExportJobRequest[:http_payload] = :export_job_request
    CreateExportJobRequest[:http_payload_member] = CreateExportJobRequest.member(:export_job_request)
    CreateExportJobRequest.type = Types::CreateExportJobRequest
    CreateExportJobResponse.add_member(:export_job_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportJobResponse, location_name: 'ExportJobResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    CreateExportJobResponse[:http_payload] = :export_job_response
    CreateExportJobResponse[:http_payload_member] = CreateExportJobResponse.member(:export_job_response)
    CreateExportJobResponse.type = Types::CreateExportJobResponse
    CreateImportJobRequest.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateImportJobRequest.add_member(:import_job_request, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImportJobRequest, location_name: 'ImportJobRequest', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    CreateImportJobRequest[:http_payload] = :import_job_request
    CreateImportJobRequest[:http_payload_member] = CreateImportJobRequest.member(:import_job_request)
    CreateImportJobRequest.type = Types::CreateImportJobRequest
    CreateImportJobResponse.add_member(:import_job_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImportJobResponse, location_name: 'ImportJobResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    CreateImportJobResponse[:http_payload] = :import_job_response
    CreateImportJobResponse[:http_payload_member] = CreateImportJobResponse.member(:import_job_response)
    CreateImportJobResponse.type = Types::CreateImportJobResponse
    CreateInAppTemplateRequest.add_member(:in_app_template_request, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InAppTemplateRequest, location_name: 'InAppTemplateRequest', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    CreateInAppTemplateRequest.add_member(:template_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TemplateName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateInAppTemplateRequest[:http_payload] = :in_app_template_request
    CreateInAppTemplateRequest[:http_payload_member] = CreateInAppTemplateRequest.member(:in_app_template_request)
    CreateInAppTemplateRequest.type = Types::CreateInAppTemplateRequest
    CreateInAppTemplateResponse.add_member(:template_create_message_body, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateCreateMessageBody, location_name: 'TemplateCreateMessageBody', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    CreateInAppTemplateResponse[:http_payload] = :template_create_message_body
    CreateInAppTemplateResponse[:http_payload_member] = CreateInAppTemplateResponse.member(:template_create_message_body)
    CreateInAppTemplateResponse.type = Types::CreateInAppTemplateResponse
    CreateJourneyRequest.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateJourneyRequest.add_member(:write_journey_request, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WriteJourneyRequest, location_name: 'WriteJourneyRequest', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    CreateJourneyRequest[:http_payload] = :write_journey_request
    CreateJourneyRequest[:http_payload_member] = CreateJourneyRequest.member(:write_journey_request)
    CreateJourneyRequest.type = Types::CreateJourneyRequest
    CreateJourneyResponse.add_member(:journey_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JourneyResponse, location_name: 'JourneyResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    CreateJourneyResponse[:http_payload] = :journey_response
    CreateJourneyResponse[:http_payload_member] = CreateJourneyResponse.member(:journey_response)
    CreateJourneyResponse.type = Types::CreateJourneyResponse
    CreatePushTemplateRequest.add_member(:push_notification_template_request, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PushNotificationTemplateRequest, location_name: 'PushNotificationTemplateRequest', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    CreatePushTemplateRequest.add_member(:template_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TemplateName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreatePushTemplateRequest[:http_payload] = :push_notification_template_request
    CreatePushTemplateRequest[:http_payload_member] = CreatePushTemplateRequest.member(:push_notification_template_request)
    CreatePushTemplateRequest.type = Types::CreatePushTemplateRequest
    CreatePushTemplateResponse.add_member(:create_template_message_body, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTemplateMessageBody, location_name: 'CreateTemplateMessageBody', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    CreatePushTemplateResponse[:http_payload] = :create_template_message_body
    CreatePushTemplateResponse[:http_payload_member] = CreatePushTemplateResponse.member(:create_template_message_body)
    CreatePushTemplateResponse.type = Types::CreatePushTemplateResponse
    CreateRecommenderConfigurationRequest.add_member(:create_recommender_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRecommenderConfigurationShape, location_name: 'CreateRecommenderConfiguration', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    CreateRecommenderConfigurationRequest[:http_payload] = :create_recommender_configuration
    CreateRecommenderConfigurationRequest[:http_payload_member] = CreateRecommenderConfigurationRequest.member(:create_recommender_configuration)
    CreateRecommenderConfigurationRequest.type = Types::CreateRecommenderConfigurationRequest
    CreateRecommenderConfigurationResponse.add_member(:recommender_configuration_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecommenderConfigurationResponse, location_name: 'RecommenderConfigurationResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    CreateRecommenderConfigurationResponse[:http_payload] = :recommender_configuration_response
    CreateRecommenderConfigurationResponse[:http_payload_member] = CreateRecommenderConfigurationResponse.member(:recommender_configuration_response)
    CreateRecommenderConfigurationResponse.type = Types::CreateRecommenderConfigurationResponse
    CreateRecommenderConfigurationShape.add_member(:attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfString, location_name: 'Attributes'))
    CreateRecommenderConfigurationShape.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description'))
    CreateRecommenderConfigurationShape.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name'))
    CreateRecommenderConfigurationShape.add_member(:recommendation_provider_id_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RecommendationProviderIdType'))
    CreateRecommenderConfigurationShape.add_member(:recommendation_provider_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RecommendationProviderRoleArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateRecommenderConfigurationShape.add_member(:recommendation_provider_uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RecommendationProviderUri', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateRecommenderConfigurationShape.add_member(:recommendation_transformer_uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RecommendationTransformerUri'))
    CreateRecommenderConfigurationShape.add_member(:recommendations_display_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RecommendationsDisplayName'))
    CreateRecommenderConfigurationShape.add_member(:recommendations_per_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'RecommendationsPerMessage'))
    CreateRecommenderConfigurationShape.type = Types::CreateRecommenderConfigurationShape
    CreateSegmentRequest.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateSegmentRequest.add_member(:write_segment_request, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WriteSegmentRequest, location_name: 'WriteSegmentRequest', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    CreateSegmentRequest[:http_payload] = :write_segment_request
    CreateSegmentRequest[:http_payload_member] = CreateSegmentRequest.member(:write_segment_request)
    CreateSegmentRequest.type = Types::CreateSegmentRequest
    CreateSegmentResponse.add_member(:segment_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SegmentResponse, location_name: 'SegmentResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    CreateSegmentResponse[:http_payload] = :segment_response
    CreateSegmentResponse[:http_payload_member] = CreateSegmentResponse.member(:segment_response)
    CreateSegmentResponse.type = Types::CreateSegmentResponse
    CreateSmsTemplateRequest.add_member(:sms_template_request, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SMSTemplateRequest, location_name: 'SMSTemplateRequest', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    CreateSmsTemplateRequest.add_member(:template_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TemplateName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateSmsTemplateRequest[:http_payload] = :sms_template_request
    CreateSmsTemplateRequest[:http_payload_member] = CreateSmsTemplateRequest.member(:sms_template_request)
    CreateSmsTemplateRequest.type = Types::CreateSmsTemplateRequest
    CreateSmsTemplateResponse.add_member(:create_template_message_body, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTemplateMessageBody, location_name: 'CreateTemplateMessageBody', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    CreateSmsTemplateResponse[:http_payload] = :create_template_message_body
    CreateSmsTemplateResponse[:http_payload_member] = CreateSmsTemplateResponse.member(:create_template_message_body)
    CreateSmsTemplateResponse.type = Types::CreateSmsTemplateResponse
    CreateTemplateMessageBody.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn'))
    CreateTemplateMessageBody.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    CreateTemplateMessageBody.add_member(:request_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RequestID'))
    CreateTemplateMessageBody.type = Types::CreateTemplateMessageBody
    CreateVoiceTemplateRequest.add_member(:template_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TemplateName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateVoiceTemplateRequest.add_member(:voice_template_request, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VoiceTemplateRequest, location_name: 'VoiceTemplateRequest', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    CreateVoiceTemplateRequest[:http_payload] = :voice_template_request
    CreateVoiceTemplateRequest[:http_payload_member] = CreateVoiceTemplateRequest.member(:voice_template_request)
    CreateVoiceTemplateRequest.type = Types::CreateVoiceTemplateRequest
    CreateVoiceTemplateResponse.add_member(:create_template_message_body, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTemplateMessageBody, location_name: 'CreateTemplateMessageBody', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    CreateVoiceTemplateResponse[:http_payload] = :create_template_message_body
    CreateVoiceTemplateResponse[:http_payload_member] = CreateVoiceTemplateResponse.member(:create_template_message_body)
    CreateVoiceTemplateResponse.type = Types::CreateVoiceTemplateResponse
    CustomDeliveryConfiguration.add_member(:delivery_uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DeliveryUri', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CustomDeliveryConfiguration.add_member(:endpoint_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfEndpointtypeselement, location_name: 'EndpointTypes'))
    CustomDeliveryConfiguration.type = Types::CustomDeliveryConfiguration
    CustomMessageActivity.add_member(:delivery_uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DeliveryUri'))
    CustomMessageActivity.add_member(:endpoint_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfEndpointtypeselement, location_name: 'EndpointTypes'))
    CustomMessageActivity.add_member(:message_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JourneyCustomMessage, location_name: 'MessageConfig'))
    CustomMessageActivity.add_member(:next_activity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextActivity'))
    CustomMessageActivity.add_member(:template_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TemplateName'))
    CustomMessageActivity.add_member(:template_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TemplateVersion'))
    CustomMessageActivity.type = Types::CustomMessageActivity
    DayOfWeek.add_member(:monday, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MONDAY', traits: {"smithy.api#enumValue" => "MONDAY"}))
    DayOfWeek.add_member(:tuesday, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TUESDAY', traits: {"smithy.api#enumValue" => "TUESDAY"}))
    DayOfWeek.add_member(:wednesday, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WEDNESDAY', traits: {"smithy.api#enumValue" => "WEDNESDAY"}))
    DayOfWeek.add_member(:thursday, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'THURSDAY', traits: {"smithy.api#enumValue" => "THURSDAY"}))
    DayOfWeek.add_member(:friday, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FRIDAY', traits: {"smithy.api#enumValue" => "FRIDAY"}))
    DayOfWeek.add_member(:saturday, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SATURDAY', traits: {"smithy.api#enumValue" => "SATURDAY"}))
    DayOfWeek.add_member(:sunday, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUNDAY', traits: {"smithy.api#enumValue" => "SUNDAY"}))
    DefaultButtonConfiguration.add_member(:background_color, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BackgroundColor'))
    DefaultButtonConfiguration.add_member(:border_radius, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'BorderRadius'))
    DefaultButtonConfiguration.add_member(:button_action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ButtonAction, location_name: 'ButtonAction', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DefaultButtonConfiguration.add_member(:link, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Link'))
    DefaultButtonConfiguration.add_member(:text, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Text', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DefaultButtonConfiguration.add_member(:text_color, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TextColor'))
    DefaultButtonConfiguration.type = Types::DefaultButtonConfiguration
    DefaultMessage.add_member(:body, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Body'))
    DefaultMessage.add_member(:substitutions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfListOfString, location_name: 'Substitutions'))
    DefaultMessage.type = Types::DefaultMessage
    DefaultPushNotificationMessage.add_member(:action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Action, location_name: 'Action'))
    DefaultPushNotificationMessage.add_member(:body, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Body'))
    DefaultPushNotificationMessage.add_member(:data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfString, location_name: 'Data'))
    DefaultPushNotificationMessage.add_member(:silent_push, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'SilentPush'))
    DefaultPushNotificationMessage.add_member(:substitutions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfListOfString, location_name: 'Substitutions'))
    DefaultPushNotificationMessage.add_member(:title, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Title'))
    DefaultPushNotificationMessage.add_member(:url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Url'))
    DefaultPushNotificationMessage.type = Types::DefaultPushNotificationMessage
    DefaultPushNotificationTemplate.add_member(:action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Action, location_name: 'Action'))
    DefaultPushNotificationTemplate.add_member(:body, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Body'))
    DefaultPushNotificationTemplate.add_member(:sound, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Sound'))
    DefaultPushNotificationTemplate.add_member(:title, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Title'))
    DefaultPushNotificationTemplate.add_member(:url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Url'))
    DefaultPushNotificationTemplate.type = Types::DefaultPushNotificationTemplate
    DeleteAdmChannelRequest.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAdmChannelRequest.type = Types::DeleteAdmChannelRequest
    DeleteAdmChannelResponse.add_member(:adm_channel_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ADMChannelResponse, location_name: 'ADMChannelResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    DeleteAdmChannelResponse[:http_payload] = :adm_channel_response
    DeleteAdmChannelResponse[:http_payload_member] = DeleteAdmChannelResponse.member(:adm_channel_response)
    DeleteAdmChannelResponse.type = Types::DeleteAdmChannelResponse
    DeleteApnsChannelRequest.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteApnsChannelRequest.type = Types::DeleteApnsChannelRequest
    DeleteApnsChannelResponse.add_member(:apns_channel_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: APNSChannelResponse, location_name: 'APNSChannelResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    DeleteApnsChannelResponse[:http_payload] = :apns_channel_response
    DeleteApnsChannelResponse[:http_payload_member] = DeleteApnsChannelResponse.member(:apns_channel_response)
    DeleteApnsChannelResponse.type = Types::DeleteApnsChannelResponse
    DeleteApnsSandboxChannelRequest.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteApnsSandboxChannelRequest.type = Types::DeleteApnsSandboxChannelRequest
    DeleteApnsSandboxChannelResponse.add_member(:apns_sandbox_channel_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: APNSSandboxChannelResponse, location_name: 'APNSSandboxChannelResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    DeleteApnsSandboxChannelResponse[:http_payload] = :apns_sandbox_channel_response
    DeleteApnsSandboxChannelResponse[:http_payload_member] = DeleteApnsSandboxChannelResponse.member(:apns_sandbox_channel_response)
    DeleteApnsSandboxChannelResponse.type = Types::DeleteApnsSandboxChannelResponse
    DeleteApnsVoipChannelRequest.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteApnsVoipChannelRequest.type = Types::DeleteApnsVoipChannelRequest
    DeleteApnsVoipChannelResponse.add_member(:apns_voip_channel_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: APNSVoipChannelResponse, location_name: 'APNSVoipChannelResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    DeleteApnsVoipChannelResponse[:http_payload] = :apns_voip_channel_response
    DeleteApnsVoipChannelResponse[:http_payload_member] = DeleteApnsVoipChannelResponse.member(:apns_voip_channel_response)
    DeleteApnsVoipChannelResponse.type = Types::DeleteApnsVoipChannelResponse
    DeleteApnsVoipSandboxChannelRequest.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteApnsVoipSandboxChannelRequest.type = Types::DeleteApnsVoipSandboxChannelRequest
    DeleteApnsVoipSandboxChannelResponse.add_member(:apns_voip_sandbox_channel_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: APNSVoipSandboxChannelResponse, location_name: 'APNSVoipSandboxChannelResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    DeleteApnsVoipSandboxChannelResponse[:http_payload] = :apns_voip_sandbox_channel_response
    DeleteApnsVoipSandboxChannelResponse[:http_payload_member] = DeleteApnsVoipSandboxChannelResponse.member(:apns_voip_sandbox_channel_response)
    DeleteApnsVoipSandboxChannelResponse.type = Types::DeleteApnsVoipSandboxChannelResponse
    DeleteAppRequest.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAppRequest.type = Types::DeleteAppRequest
    DeleteAppResponse.add_member(:application_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationResponse, location_name: 'ApplicationResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    DeleteAppResponse[:http_payload] = :application_response
    DeleteAppResponse[:http_payload_member] = DeleteAppResponse.member(:application_response)
    DeleteAppResponse.type = Types::DeleteAppResponse
    DeleteBaiduChannelRequest.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteBaiduChannelRequest.type = Types::DeleteBaiduChannelRequest
    DeleteBaiduChannelResponse.add_member(:baidu_channel_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaiduChannelResponse, location_name: 'BaiduChannelResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    DeleteBaiduChannelResponse[:http_payload] = :baidu_channel_response
    DeleteBaiduChannelResponse[:http_payload_member] = DeleteBaiduChannelResponse.member(:baidu_channel_response)
    DeleteBaiduChannelResponse.type = Types::DeleteBaiduChannelResponse
    DeleteCampaignRequest.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteCampaignRequest.add_member(:campaign_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CampaignId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteCampaignRequest.type = Types::DeleteCampaignRequest
    DeleteCampaignResponse.add_member(:campaign_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignResponse, location_name: 'CampaignResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    DeleteCampaignResponse[:http_payload] = :campaign_response
    DeleteCampaignResponse[:http_payload_member] = DeleteCampaignResponse.member(:campaign_response)
    DeleteCampaignResponse.type = Types::DeleteCampaignResponse
    DeleteEmailChannelRequest.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteEmailChannelRequest.type = Types::DeleteEmailChannelRequest
    DeleteEmailChannelResponse.add_member(:email_channel_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmailChannelResponse, location_name: 'EmailChannelResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    DeleteEmailChannelResponse[:http_payload] = :email_channel_response
    DeleteEmailChannelResponse[:http_payload_member] = DeleteEmailChannelResponse.member(:email_channel_response)
    DeleteEmailChannelResponse.type = Types::DeleteEmailChannelResponse
    DeleteEmailTemplateRequest.add_member(:template_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TemplateName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteEmailTemplateRequest.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Version', traits: {"smithy.api#httpQuery" => "version"}))
    DeleteEmailTemplateRequest.type = Types::DeleteEmailTemplateRequest
    DeleteEmailTemplateResponse.add_member(:message_body, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageBody, location_name: 'MessageBody', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    DeleteEmailTemplateResponse[:http_payload] = :message_body
    DeleteEmailTemplateResponse[:http_payload_member] = DeleteEmailTemplateResponse.member(:message_body)
    DeleteEmailTemplateResponse.type = Types::DeleteEmailTemplateResponse
    DeleteEndpointRequest.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteEndpointRequest.add_member(:endpoint_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EndpointId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteEndpointRequest.type = Types::DeleteEndpointRequest
    DeleteEndpointResponse.add_member(:endpoint_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointResponse, location_name: 'EndpointResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    DeleteEndpointResponse[:http_payload] = :endpoint_response
    DeleteEndpointResponse[:http_payload_member] = DeleteEndpointResponse.member(:endpoint_response)
    DeleteEndpointResponse.type = Types::DeleteEndpointResponse
    DeleteEventStreamRequest.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteEventStreamRequest.type = Types::DeleteEventStreamRequest
    DeleteEventStreamResponse.add_member(:event_stream, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventStream, location_name: 'EventStream', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    DeleteEventStreamResponse[:http_payload] = :event_stream
    DeleteEventStreamResponse[:http_payload_member] = DeleteEventStreamResponse.member(:event_stream)
    DeleteEventStreamResponse.type = Types::DeleteEventStreamResponse
    DeleteGcmChannelRequest.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteGcmChannelRequest.type = Types::DeleteGcmChannelRequest
    DeleteGcmChannelResponse.add_member(:gcm_channel_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GCMChannelResponse, location_name: 'GCMChannelResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    DeleteGcmChannelResponse[:http_payload] = :gcm_channel_response
    DeleteGcmChannelResponse[:http_payload_member] = DeleteGcmChannelResponse.member(:gcm_channel_response)
    DeleteGcmChannelResponse.type = Types::DeleteGcmChannelResponse
    DeleteInAppTemplateRequest.add_member(:template_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TemplateName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteInAppTemplateRequest.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Version', traits: {"smithy.api#httpQuery" => "version"}))
    DeleteInAppTemplateRequest.type = Types::DeleteInAppTemplateRequest
    DeleteInAppTemplateResponse.add_member(:message_body, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageBody, location_name: 'MessageBody', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    DeleteInAppTemplateResponse[:http_payload] = :message_body
    DeleteInAppTemplateResponse[:http_payload_member] = DeleteInAppTemplateResponse.member(:message_body)
    DeleteInAppTemplateResponse.type = Types::DeleteInAppTemplateResponse
    DeleteJourneyRequest.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteJourneyRequest.add_member(:journey_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'JourneyId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteJourneyRequest.type = Types::DeleteJourneyRequest
    DeleteJourneyResponse.add_member(:journey_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JourneyResponse, location_name: 'JourneyResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    DeleteJourneyResponse[:http_payload] = :journey_response
    DeleteJourneyResponse[:http_payload_member] = DeleteJourneyResponse.member(:journey_response)
    DeleteJourneyResponse.type = Types::DeleteJourneyResponse
    DeletePushTemplateRequest.add_member(:template_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TemplateName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeletePushTemplateRequest.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Version', traits: {"smithy.api#httpQuery" => "version"}))
    DeletePushTemplateRequest.type = Types::DeletePushTemplateRequest
    DeletePushTemplateResponse.add_member(:message_body, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageBody, location_name: 'MessageBody', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    DeletePushTemplateResponse[:http_payload] = :message_body
    DeletePushTemplateResponse[:http_payload_member] = DeletePushTemplateResponse.member(:message_body)
    DeletePushTemplateResponse.type = Types::DeletePushTemplateResponse
    DeleteRecommenderConfigurationRequest.add_member(:recommender_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RecommenderId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteRecommenderConfigurationRequest.type = Types::DeleteRecommenderConfigurationRequest
    DeleteRecommenderConfigurationResponse.add_member(:recommender_configuration_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecommenderConfigurationResponse, location_name: 'RecommenderConfigurationResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    DeleteRecommenderConfigurationResponse[:http_payload] = :recommender_configuration_response
    DeleteRecommenderConfigurationResponse[:http_payload_member] = DeleteRecommenderConfigurationResponse.member(:recommender_configuration_response)
    DeleteRecommenderConfigurationResponse.type = Types::DeleteRecommenderConfigurationResponse
    DeleteSegmentRequest.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteSegmentRequest.add_member(:segment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SegmentId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteSegmentRequest.type = Types::DeleteSegmentRequest
    DeleteSegmentResponse.add_member(:segment_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SegmentResponse, location_name: 'SegmentResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    DeleteSegmentResponse[:http_payload] = :segment_response
    DeleteSegmentResponse[:http_payload_member] = DeleteSegmentResponse.member(:segment_response)
    DeleteSegmentResponse.type = Types::DeleteSegmentResponse
    DeleteSmsChannelRequest.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteSmsChannelRequest.type = Types::DeleteSmsChannelRequest
    DeleteSmsChannelResponse.add_member(:sms_channel_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SMSChannelResponse, location_name: 'SMSChannelResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    DeleteSmsChannelResponse[:http_payload] = :sms_channel_response
    DeleteSmsChannelResponse[:http_payload_member] = DeleteSmsChannelResponse.member(:sms_channel_response)
    DeleteSmsChannelResponse.type = Types::DeleteSmsChannelResponse
    DeleteSmsTemplateRequest.add_member(:template_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TemplateName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteSmsTemplateRequest.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Version', traits: {"smithy.api#httpQuery" => "version"}))
    DeleteSmsTemplateRequest.type = Types::DeleteSmsTemplateRequest
    DeleteSmsTemplateResponse.add_member(:message_body, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageBody, location_name: 'MessageBody', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    DeleteSmsTemplateResponse[:http_payload] = :message_body
    DeleteSmsTemplateResponse[:http_payload_member] = DeleteSmsTemplateResponse.member(:message_body)
    DeleteSmsTemplateResponse.type = Types::DeleteSmsTemplateResponse
    DeleteUserEndpointsRequest.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteUserEndpointsRequest.add_member(:user_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'UserId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteUserEndpointsRequest.type = Types::DeleteUserEndpointsRequest
    DeleteUserEndpointsResponse.add_member(:endpoints_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointsResponse, location_name: 'EndpointsResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    DeleteUserEndpointsResponse[:http_payload] = :endpoints_response
    DeleteUserEndpointsResponse[:http_payload_member] = DeleteUserEndpointsResponse.member(:endpoints_response)
    DeleteUserEndpointsResponse.type = Types::DeleteUserEndpointsResponse
    DeleteVoiceChannelRequest.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteVoiceChannelRequest.type = Types::DeleteVoiceChannelRequest
    DeleteVoiceChannelResponse.add_member(:voice_channel_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VoiceChannelResponse, location_name: 'VoiceChannelResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    DeleteVoiceChannelResponse[:http_payload] = :voice_channel_response
    DeleteVoiceChannelResponse[:http_payload_member] = DeleteVoiceChannelResponse.member(:voice_channel_response)
    DeleteVoiceChannelResponse.type = Types::DeleteVoiceChannelResponse
    DeleteVoiceTemplateRequest.add_member(:template_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TemplateName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteVoiceTemplateRequest.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Version', traits: {"smithy.api#httpQuery" => "version"}))
    DeleteVoiceTemplateRequest.type = Types::DeleteVoiceTemplateRequest
    DeleteVoiceTemplateResponse.add_member(:message_body, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageBody, location_name: 'MessageBody', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    DeleteVoiceTemplateResponse[:http_payload] = :message_body
    DeleteVoiceTemplateResponse[:http_payload_member] = DeleteVoiceTemplateResponse.member(:message_body)
    DeleteVoiceTemplateResponse.type = Types::DeleteVoiceTemplateResponse
    DeliveryStatus.add_member(:successful, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCESSFUL', traits: {"smithy.api#enumValue" => "SUCCESSFUL"}))
    DeliveryStatus.add_member(:throttled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'THROTTLED', traits: {"smithy.api#enumValue" => "THROTTLED"}))
    DeliveryStatus.add_member(:temporary_failure, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TEMPORARY_FAILURE', traits: {"smithy.api#enumValue" => "TEMPORARY_FAILURE"}))
    DeliveryStatus.add_member(:permanent_failure, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PERMANENT_FAILURE', traits: {"smithy.api#enumValue" => "PERMANENT_FAILURE"}))
    DeliveryStatus.add_member(:unknown_failure, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNKNOWN_FAILURE', traits: {"smithy.api#enumValue" => "UNKNOWN_FAILURE"}))
    DeliveryStatus.add_member(:opt_out, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OPT_OUT', traits: {"smithy.api#enumValue" => "OPT_OUT"}))
    DeliveryStatus.add_member(:duplicate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DUPLICATE', traits: {"smithy.api#enumValue" => "DUPLICATE"}))
    DimensionType.add_member(:inclusive, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INCLUSIVE', traits: {"smithy.api#enumValue" => "INCLUSIVE"}))
    DimensionType.add_member(:exclusive, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXCLUSIVE', traits: {"smithy.api#enumValue" => "EXCLUSIVE"}))
    DirectMessageConfiguration.add_member(:adm_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ADMMessage, location_name: 'ADMMessage'))
    DirectMessageConfiguration.add_member(:apns_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: APNSMessage, location_name: 'APNSMessage'))
    DirectMessageConfiguration.add_member(:baidu_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaiduMessage, location_name: 'BaiduMessage'))
    DirectMessageConfiguration.add_member(:default_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DefaultMessage, location_name: 'DefaultMessage'))
    DirectMessageConfiguration.add_member(:default_push_notification_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DefaultPushNotificationMessage, location_name: 'DefaultPushNotificationMessage'))
    DirectMessageConfiguration.add_member(:email_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmailMessage, location_name: 'EmailMessage'))
    DirectMessageConfiguration.add_member(:gcm_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GCMMessage, location_name: 'GCMMessage'))
    DirectMessageConfiguration.add_member(:sms_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SMSMessage, location_name: 'SMSMessage'))
    DirectMessageConfiguration.add_member(:voice_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VoiceMessage, location_name: 'VoiceMessage'))
    DirectMessageConfiguration.type = Types::DirectMessageConfiguration
    Duration.add_member(:hr_24, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HR_24', traits: {"smithy.api#enumValue" => "HR_24"}))
    Duration.add_member(:day_7, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DAY_7', traits: {"smithy.api#enumValue" => "DAY_7"}))
    Duration.add_member(:day_14, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DAY_14', traits: {"smithy.api#enumValue" => "DAY_14"}))
    Duration.add_member(:day_30, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DAY_30', traits: {"smithy.api#enumValue" => "DAY_30"}))
    EmailChannelRequest.add_member(:configuration_set, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ConfigurationSet'))
    EmailChannelRequest.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled'))
    EmailChannelRequest.add_member(:from_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'FromAddress', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    EmailChannelRequest.add_member(:identity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Identity', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    EmailChannelRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RoleArn'))
    EmailChannelRequest.add_member(:orchestration_sending_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OrchestrationSendingRoleArn'))
    EmailChannelRequest.type = Types::EmailChannelRequest
    EmailChannelResponse.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId'))
    EmailChannelResponse.add_member(:configuration_set, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ConfigurationSet'))
    EmailChannelResponse.add_member(:creation_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreationDate'))
    EmailChannelResponse.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled'))
    EmailChannelResponse.add_member(:from_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'FromAddress'))
    EmailChannelResponse.add_member(:has_credential, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'HasCredential'))
    EmailChannelResponse.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id'))
    EmailChannelResponse.add_member(:identity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Identity'))
    EmailChannelResponse.add_member(:is_archived, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IsArchived'))
    EmailChannelResponse.add_member(:last_modified_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LastModifiedBy'))
    EmailChannelResponse.add_member(:last_modified_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LastModifiedDate'))
    EmailChannelResponse.add_member(:messages_per_second, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'MessagesPerSecond'))
    EmailChannelResponse.add_member(:platform, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Platform', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    EmailChannelResponse.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RoleArn'))
    EmailChannelResponse.add_member(:orchestration_sending_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OrchestrationSendingRoleArn'))
    EmailChannelResponse.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Version'))
    EmailChannelResponse.type = Types::EmailChannelResponse
    EmailMessage.add_member(:body, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Body'))
    EmailMessage.add_member(:feedback_forwarding_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'FeedbackForwardingAddress'))
    EmailMessage.add_member(:from_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'FromAddress'))
    EmailMessage.add_member(:raw_email, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RawEmail, location_name: 'RawEmail'))
    EmailMessage.add_member(:reply_to_addresses, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfString, location_name: 'ReplyToAddresses'))
    EmailMessage.add_member(:simple_email, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SimpleEmail, location_name: 'SimpleEmail'))
    EmailMessage.add_member(:substitutions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfListOfString, location_name: 'Substitutions'))
    EmailMessage.type = Types::EmailMessage
    EmailMessageActivity.add_member(:message_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JourneyEmailMessage, location_name: 'MessageConfig'))
    EmailMessageActivity.add_member(:next_activity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextActivity'))
    EmailMessageActivity.add_member(:template_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TemplateName'))
    EmailMessageActivity.add_member(:template_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TemplateVersion'))
    EmailMessageActivity.type = Types::EmailMessageActivity
    EmailTemplateRequest.add_member(:default_substitutions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DefaultSubstitutions'))
    EmailTemplateRequest.add_member(:html_part, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'HtmlPart'))
    EmailTemplateRequest.add_member(:recommender_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RecommenderId'))
    EmailTemplateRequest.add_member(:subject, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Subject'))
    EmailTemplateRequest.add_member(:headers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfMessageHeader, location_name: 'Headers'))
    EmailTemplateRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfString, location_name: 'tags', traits: {"smithy.api#jsonName" => "tags"}))
    EmailTemplateRequest.add_member(:template_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TemplateDescription'))
    EmailTemplateRequest.add_member(:text_part, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TextPart'))
    EmailTemplateRequest.type = Types::EmailTemplateRequest
    EmailTemplateResponse.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn'))
    EmailTemplateResponse.add_member(:creation_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreationDate', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    EmailTemplateResponse.add_member(:default_substitutions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DefaultSubstitutions'))
    EmailTemplateResponse.add_member(:html_part, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'HtmlPart'))
    EmailTemplateResponse.add_member(:last_modified_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LastModifiedDate', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    EmailTemplateResponse.add_member(:recommender_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RecommenderId'))
    EmailTemplateResponse.add_member(:subject, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Subject'))
    EmailTemplateResponse.add_member(:headers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfMessageHeader, location_name: 'Headers'))
    EmailTemplateResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfString, location_name: 'tags', traits: {"smithy.api#jsonName" => "tags"}))
    EmailTemplateResponse.add_member(:template_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TemplateDescription'))
    EmailTemplateResponse.add_member(:template_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TemplateName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    EmailTemplateResponse.add_member(:template_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateType, location_name: 'TemplateType', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    EmailTemplateResponse.add_member(:text_part, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TextPart'))
    EmailTemplateResponse.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Version'))
    EmailTemplateResponse.type = Types::EmailTemplateResponse
    EndpointBatchItem.add_member(:address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Address'))
    EndpointBatchItem.add_member(:attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfListOfString, location_name: 'Attributes'))
    EndpointBatchItem.add_member(:channel_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelType, location_name: 'ChannelType'))
    EndpointBatchItem.add_member(:demographic, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointDemographic, location_name: 'Demographic'))
    EndpointBatchItem.add_member(:effective_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EffectiveDate'))
    EndpointBatchItem.add_member(:endpoint_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EndpointStatus'))
    EndpointBatchItem.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id'))
    EndpointBatchItem.add_member(:location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointLocation, location_name: 'Location'))
    EndpointBatchItem.add_member(:metrics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfDouble, location_name: 'Metrics'))
    EndpointBatchItem.add_member(:opt_out, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OptOut'))
    EndpointBatchItem.add_member(:request_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RequestId'))
    EndpointBatchItem.add_member(:user, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointUser, location_name: 'User'))
    EndpointBatchItem.type = Types::EndpointBatchItem
    EndpointBatchRequest.add_member(:item, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfEndpointBatchItem, location_name: 'Item', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    EndpointBatchRequest.type = Types::EndpointBatchRequest
    EndpointDemographic.add_member(:app_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AppVersion'))
    EndpointDemographic.add_member(:locale, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Locale'))
    EndpointDemographic.add_member(:make, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Make'))
    EndpointDemographic.add_member(:model, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Model'))
    EndpointDemographic.add_member(:model_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ModelVersion'))
    EndpointDemographic.add_member(:platform, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Platform'))
    EndpointDemographic.add_member(:platform_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PlatformVersion'))
    EndpointDemographic.add_member(:timezone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Timezone'))
    EndpointDemographic.type = Types::EndpointDemographic
    EndpointItemResponse.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    EndpointItemResponse.add_member(:status_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'StatusCode'))
    EndpointItemResponse.type = Types::EndpointItemResponse
    EndpointLocation.add_member(:city, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'City'))
    EndpointLocation.add_member(:country, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Country'))
    EndpointLocation.add_member(:latitude, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'Latitude'))
    EndpointLocation.add_member(:longitude, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'Longitude'))
    EndpointLocation.add_member(:postal_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PostalCode'))
    EndpointLocation.add_member(:region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Region'))
    EndpointLocation.type = Types::EndpointLocation
    EndpointMessageResult.add_member(:address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Address'))
    EndpointMessageResult.add_member(:delivery_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeliveryStatus, location_name: 'DeliveryStatus', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    EndpointMessageResult.add_member(:message_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MessageId'))
    EndpointMessageResult.add_member(:status_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'StatusCode', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    EndpointMessageResult.add_member(:status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StatusMessage'))
    EndpointMessageResult.add_member(:updated_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'UpdatedToken'))
    EndpointMessageResult.type = Types::EndpointMessageResult
    EndpointRequest.add_member(:address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Address'))
    EndpointRequest.add_member(:attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfListOfString, location_name: 'Attributes'))
    EndpointRequest.add_member(:channel_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelType, location_name: 'ChannelType'))
    EndpointRequest.add_member(:demographic, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointDemographic, location_name: 'Demographic'))
    EndpointRequest.add_member(:effective_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EffectiveDate'))
    EndpointRequest.add_member(:endpoint_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EndpointStatus'))
    EndpointRequest.add_member(:location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointLocation, location_name: 'Location'))
    EndpointRequest.add_member(:metrics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfDouble, location_name: 'Metrics'))
    EndpointRequest.add_member(:opt_out, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OptOut'))
    EndpointRequest.add_member(:request_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RequestId'))
    EndpointRequest.add_member(:user, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointUser, location_name: 'User'))
    EndpointRequest.type = Types::EndpointRequest
    EndpointResponse.add_member(:address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Address'))
    EndpointResponse.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId'))
    EndpointResponse.add_member(:attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfListOfString, location_name: 'Attributes'))
    EndpointResponse.add_member(:channel_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelType, location_name: 'ChannelType'))
    EndpointResponse.add_member(:cohort_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CohortId'))
    EndpointResponse.add_member(:creation_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreationDate'))
    EndpointResponse.add_member(:demographic, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointDemographic, location_name: 'Demographic'))
    EndpointResponse.add_member(:effective_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EffectiveDate'))
    EndpointResponse.add_member(:endpoint_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EndpointStatus'))
    EndpointResponse.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id'))
    EndpointResponse.add_member(:location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointLocation, location_name: 'Location'))
    EndpointResponse.add_member(:metrics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfDouble, location_name: 'Metrics'))
    EndpointResponse.add_member(:opt_out, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OptOut'))
    EndpointResponse.add_member(:request_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RequestId'))
    EndpointResponse.add_member(:user, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointUser, location_name: 'User'))
    EndpointResponse.type = Types::EndpointResponse
    EndpointSendConfiguration.add_member(:body_override, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BodyOverride'))
    EndpointSendConfiguration.add_member(:context, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfString, location_name: 'Context'))
    EndpointSendConfiguration.add_member(:raw_content, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RawContent'))
    EndpointSendConfiguration.add_member(:substitutions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfListOfString, location_name: 'Substitutions'))
    EndpointSendConfiguration.add_member(:title_override, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TitleOverride'))
    EndpointSendConfiguration.type = Types::EndpointSendConfiguration
    EndpointUser.add_member(:user_attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfListOfString, location_name: 'UserAttributes'))
    EndpointUser.add_member(:user_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'UserId'))
    EndpointUser.type = Types::EndpointUser
    EndpointsResponse.add_member(:item, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfEndpointResponse, location_name: 'Item', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    EndpointsResponse.type = Types::EndpointsResponse
    Event.add_member(:app_package_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AppPackageName'))
    Event.add_member(:app_title, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AppTitle'))
    Event.add_member(:app_version_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AppVersionCode'))
    Event.add_member(:attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfString, location_name: 'Attributes'))
    Event.add_member(:client_sdk_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClientSdkVersion'))
    Event.add_member(:event_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EventType', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Event.add_member(:metrics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfDouble, location_name: 'Metrics'))
    Event.add_member(:sdk_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SdkName'))
    Event.add_member(:session, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Session, location_name: 'Session'))
    Event.add_member(:timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Timestamp', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Event.type = Types::Event
    EventCondition.add_member(:dimensions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventDimensions, location_name: 'Dimensions'))
    EventCondition.add_member(:message_activity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MessageActivity'))
    EventCondition.type = Types::EventCondition
    EventDimensions.add_member(:attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfAttributeDimension, location_name: 'Attributes'))
    EventDimensions.add_member(:event_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SetDimension, location_name: 'EventType'))
    EventDimensions.add_member(:metrics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfMetricDimension, location_name: 'Metrics'))
    EventDimensions.type = Types::EventDimensions
    EventFilter.add_member(:dimensions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventDimensions, location_name: 'Dimensions', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    EventFilter.add_member(:filter_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterType, location_name: 'FilterType', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    EventFilter.type = Types::EventFilter
    EventItemResponse.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    EventItemResponse.add_member(:status_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'StatusCode'))
    EventItemResponse.type = Types::EventItemResponse
    EventStartCondition.add_member(:event_filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventFilter, location_name: 'EventFilter'))
    EventStartCondition.add_member(:segment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SegmentId'))
    EventStartCondition.type = Types::EventStartCondition
    EventStream.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    EventStream.add_member(:destination_stream_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DestinationStreamArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    EventStream.add_member(:external_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ExternalId'))
    EventStream.add_member(:last_modified_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LastModifiedDate'))
    EventStream.add_member(:last_updated_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LastUpdatedBy'))
    EventStream.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RoleArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    EventStream.type = Types::EventStream
    EventsBatch.add_member(:endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PublicEndpoint, location_name: 'Endpoint', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    EventsBatch.add_member(:events, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfEvent, location_name: 'Events', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    EventsBatch.type = Types::EventsBatch
    EventsRequest.add_member(:batch_item, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfEventsBatch, location_name: 'BatchItem', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    EventsRequest.type = Types::EventsRequest
    EventsResponse.add_member(:results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfItemResponse, location_name: 'Results'))
    EventsResponse.type = Types::EventsResponse
    ExportJobRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RoleArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ExportJobRequest.add_member(:s3_url_prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'S3UrlPrefix', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ExportJobRequest.add_member(:segment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SegmentId'))
    ExportJobRequest.add_member(:segment_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'SegmentVersion'))
    ExportJobRequest.type = Types::ExportJobRequest
    ExportJobResource.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RoleArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ExportJobResource.add_member(:s3_url_prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'S3UrlPrefix', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ExportJobResource.add_member(:segment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SegmentId'))
    ExportJobResource.add_member(:segment_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'SegmentVersion'))
    ExportJobResource.type = Types::ExportJobResource
    ExportJobResponse.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ExportJobResponse.add_member(:completed_pieces, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'CompletedPieces'))
    ExportJobResponse.add_member(:completion_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CompletionDate'))
    ExportJobResponse.add_member(:creation_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreationDate', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ExportJobResponse.add_member(:definition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportJobResource, location_name: 'Definition', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ExportJobResponse.add_member(:failed_pieces, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'FailedPieces'))
    ExportJobResponse.add_member(:failures, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfString, location_name: 'Failures'))
    ExportJobResponse.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ExportJobResponse.add_member(:job_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatus, location_name: 'JobStatus', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ExportJobResponse.add_member(:total_failures, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'TotalFailures'))
    ExportJobResponse.add_member(:total_pieces, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'TotalPieces'))
    ExportJobResponse.add_member(:total_processed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'TotalProcessed'))
    ExportJobResponse.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Type', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ExportJobResponse.type = Types::ExportJobResponse
    ExportJobsResponse.add_member(:item, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfExportJobResponse, location_name: 'Item', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ExportJobsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken'))
    ExportJobsResponse.type = Types::ExportJobsResponse
    FilterType.add_member(:system, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SYSTEM', traits: {"smithy.api#enumValue" => "SYSTEM"}))
    FilterType.add_member(:endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENDPOINT', traits: {"smithy.api#enumValue" => "ENDPOINT"}))
    ForbiddenException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    ForbiddenException.add_member(:request_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RequestID'))
    ForbiddenException.type = Types::ForbiddenException
    Format.add_member(:csv, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CSV', traits: {"smithy.api#enumValue" => "CSV"}))
    Format.add_member(:json, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'JSON', traits: {"smithy.api#enumValue" => "JSON"}))
    Frequency.add_member(:once, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ONCE', traits: {"smithy.api#enumValue" => "ONCE"}))
    Frequency.add_member(:hourly, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HOURLY', traits: {"smithy.api#enumValue" => "HOURLY"}))
    Frequency.add_member(:daily, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DAILY', traits: {"smithy.api#enumValue" => "DAILY"}))
    Frequency.add_member(:weekly, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WEEKLY', traits: {"smithy.api#enumValue" => "WEEKLY"}))
    Frequency.add_member(:monthly, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MONTHLY', traits: {"smithy.api#enumValue" => "MONTHLY"}))
    Frequency.add_member(:event, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EVENT', traits: {"smithy.api#enumValue" => "EVENT"}))
    Frequency.add_member(:in_app_event, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_APP_EVENT', traits: {"smithy.api#enumValue" => "IN_APP_EVENT"}))
    GCMChannelRequest.add_member(:api_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApiKey'))
    GCMChannelRequest.add_member(:default_authentication_method, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DefaultAuthenticationMethod'))
    GCMChannelRequest.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled'))
    GCMChannelRequest.add_member(:service_json, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ServiceJson'))
    GCMChannelRequest.type = Types::GCMChannelRequest
    GCMChannelResponse.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId'))
    GCMChannelResponse.add_member(:creation_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreationDate'))
    GCMChannelResponse.add_member(:credential, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Credential'))
    GCMChannelResponse.add_member(:default_authentication_method, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DefaultAuthenticationMethod'))
    GCMChannelResponse.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled'))
    GCMChannelResponse.add_member(:has_credential, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'HasCredential'))
    GCMChannelResponse.add_member(:has_fcm_service_credentials, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'HasFcmServiceCredentials'))
    GCMChannelResponse.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id'))
    GCMChannelResponse.add_member(:is_archived, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IsArchived'))
    GCMChannelResponse.add_member(:last_modified_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LastModifiedBy'))
    GCMChannelResponse.add_member(:last_modified_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LastModifiedDate'))
    GCMChannelResponse.add_member(:platform, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Platform', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    GCMChannelResponse.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Version'))
    GCMChannelResponse.type = Types::GCMChannelResponse
    GCMMessage.add_member(:action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Action, location_name: 'Action'))
    GCMMessage.add_member(:body, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Body'))
    GCMMessage.add_member(:collapse_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CollapseKey'))
    GCMMessage.add_member(:data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfString, location_name: 'Data'))
    GCMMessage.add_member(:icon_reference, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IconReference'))
    GCMMessage.add_member(:image_icon_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ImageIconUrl'))
    GCMMessage.add_member(:image_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ImageUrl'))
    GCMMessage.add_member(:preferred_authentication_method, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PreferredAuthenticationMethod'))
    GCMMessage.add_member(:priority, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Priority'))
    GCMMessage.add_member(:raw_content, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RawContent'))
    GCMMessage.add_member(:restricted_package_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RestrictedPackageName'))
    GCMMessage.add_member(:silent_push, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'SilentPush'))
    GCMMessage.add_member(:small_image_icon_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SmallImageIconUrl'))
    GCMMessage.add_member(:sound, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Sound'))
    GCMMessage.add_member(:substitutions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfListOfString, location_name: 'Substitutions'))
    GCMMessage.add_member(:time_to_live, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'TimeToLive'))
    GCMMessage.add_member(:title, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Title'))
    GCMMessage.add_member(:url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Url'))
    GCMMessage.type = Types::GCMMessage
    GPSCoordinates.add_member(:latitude, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'Latitude', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    GPSCoordinates.add_member(:longitude, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'Longitude', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    GPSCoordinates.type = Types::GPSCoordinates
    GPSPointDimension.add_member(:coordinates, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GPSCoordinates, location_name: 'Coordinates', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    GPSPointDimension.add_member(:range_in_kilometers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'RangeInKilometers'))
    GPSPointDimension.type = Types::GPSPointDimension
    GetAdmChannelRequest.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAdmChannelRequest.type = Types::GetAdmChannelRequest
    GetAdmChannelResponse.add_member(:adm_channel_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ADMChannelResponse, location_name: 'ADMChannelResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    GetAdmChannelResponse[:http_payload] = :adm_channel_response
    GetAdmChannelResponse[:http_payload_member] = GetAdmChannelResponse.member(:adm_channel_response)
    GetAdmChannelResponse.type = Types::GetAdmChannelResponse
    GetApnsChannelRequest.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetApnsChannelRequest.type = Types::GetApnsChannelRequest
    GetApnsChannelResponse.add_member(:apns_channel_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: APNSChannelResponse, location_name: 'APNSChannelResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    GetApnsChannelResponse[:http_payload] = :apns_channel_response
    GetApnsChannelResponse[:http_payload_member] = GetApnsChannelResponse.member(:apns_channel_response)
    GetApnsChannelResponse.type = Types::GetApnsChannelResponse
    GetApnsSandboxChannelRequest.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetApnsSandboxChannelRequest.type = Types::GetApnsSandboxChannelRequest
    GetApnsSandboxChannelResponse.add_member(:apns_sandbox_channel_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: APNSSandboxChannelResponse, location_name: 'APNSSandboxChannelResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    GetApnsSandboxChannelResponse[:http_payload] = :apns_sandbox_channel_response
    GetApnsSandboxChannelResponse[:http_payload_member] = GetApnsSandboxChannelResponse.member(:apns_sandbox_channel_response)
    GetApnsSandboxChannelResponse.type = Types::GetApnsSandboxChannelResponse
    GetApnsVoipChannelRequest.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetApnsVoipChannelRequest.type = Types::GetApnsVoipChannelRequest
    GetApnsVoipChannelResponse.add_member(:apns_voip_channel_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: APNSVoipChannelResponse, location_name: 'APNSVoipChannelResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    GetApnsVoipChannelResponse[:http_payload] = :apns_voip_channel_response
    GetApnsVoipChannelResponse[:http_payload_member] = GetApnsVoipChannelResponse.member(:apns_voip_channel_response)
    GetApnsVoipChannelResponse.type = Types::GetApnsVoipChannelResponse
    GetApnsVoipSandboxChannelRequest.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetApnsVoipSandboxChannelRequest.type = Types::GetApnsVoipSandboxChannelRequest
    GetApnsVoipSandboxChannelResponse.add_member(:apns_voip_sandbox_channel_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: APNSVoipSandboxChannelResponse, location_name: 'APNSVoipSandboxChannelResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    GetApnsVoipSandboxChannelResponse[:http_payload] = :apns_voip_sandbox_channel_response
    GetApnsVoipSandboxChannelResponse[:http_payload_member] = GetApnsVoipSandboxChannelResponse.member(:apns_voip_sandbox_channel_response)
    GetApnsVoipSandboxChannelResponse.type = Types::GetApnsVoipSandboxChannelResponse
    GetAppRequest.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAppRequest.type = Types::GetAppRequest
    GetAppResponse.add_member(:application_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationResponse, location_name: 'ApplicationResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    GetAppResponse[:http_payload] = :application_response
    GetAppResponse[:http_payload_member] = GetAppResponse.member(:application_response)
    GetAppResponse.type = Types::GetAppResponse
    GetApplicationDateRangeKpiRequest.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetApplicationDateRangeKpiRequest.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'EndTime', traits: {"smithy.api#httpQuery" => "end-time"}))
    GetApplicationDateRangeKpiRequest.add_member(:kpi_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KpiName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetApplicationDateRangeKpiRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#httpQuery" => "next-token"}))
    GetApplicationDateRangeKpiRequest.add_member(:page_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PageSize', traits: {"smithy.api#httpQuery" => "page-size"}))
    GetApplicationDateRangeKpiRequest.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'StartTime', traits: {"smithy.api#httpQuery" => "start-time"}))
    GetApplicationDateRangeKpiRequest.type = Types::GetApplicationDateRangeKpiRequest
    GetApplicationDateRangeKpiResponse.add_member(:application_date_range_kpi_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationDateRangeKpiResponse, location_name: 'ApplicationDateRangeKpiResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    GetApplicationDateRangeKpiResponse[:http_payload] = :application_date_range_kpi_response
    GetApplicationDateRangeKpiResponse[:http_payload_member] = GetApplicationDateRangeKpiResponse.member(:application_date_range_kpi_response)
    GetApplicationDateRangeKpiResponse.type = Types::GetApplicationDateRangeKpiResponse
    GetApplicationSettingsRequest.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetApplicationSettingsRequest.type = Types::GetApplicationSettingsRequest
    GetApplicationSettingsResponse.add_member(:application_settings_resource, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationSettingsResource, location_name: 'ApplicationSettingsResource', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    GetApplicationSettingsResponse[:http_payload] = :application_settings_resource
    GetApplicationSettingsResponse[:http_payload_member] = GetApplicationSettingsResponse.member(:application_settings_resource)
    GetApplicationSettingsResponse.type = Types::GetApplicationSettingsResponse
    GetAppsRequest.add_member(:page_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PageSize', traits: {"smithy.api#httpQuery" => "page-size"}))
    GetAppsRequest.add_member(:token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Token', traits: {"smithy.api#httpQuery" => "token"}))
    GetAppsRequest.type = Types::GetAppsRequest
    GetAppsResponse.add_member(:applications_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationsResponse, location_name: 'ApplicationsResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    GetAppsResponse[:http_payload] = :applications_response
    GetAppsResponse[:http_payload_member] = GetAppsResponse.member(:applications_response)
    GetAppsResponse.type = Types::GetAppsResponse
    GetBaiduChannelRequest.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetBaiduChannelRequest.type = Types::GetBaiduChannelRequest
    GetBaiduChannelResponse.add_member(:baidu_channel_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaiduChannelResponse, location_name: 'BaiduChannelResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    GetBaiduChannelResponse[:http_payload] = :baidu_channel_response
    GetBaiduChannelResponse[:http_payload_member] = GetBaiduChannelResponse.member(:baidu_channel_response)
    GetBaiduChannelResponse.type = Types::GetBaiduChannelResponse
    GetCampaignActivitiesRequest.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCampaignActivitiesRequest.add_member(:campaign_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CampaignId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCampaignActivitiesRequest.add_member(:page_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PageSize', traits: {"smithy.api#httpQuery" => "page-size"}))
    GetCampaignActivitiesRequest.add_member(:token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Token', traits: {"smithy.api#httpQuery" => "token"}))
    GetCampaignActivitiesRequest.type = Types::GetCampaignActivitiesRequest
    GetCampaignActivitiesResponse.add_member(:activities_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActivitiesResponse, location_name: 'ActivitiesResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    GetCampaignActivitiesResponse[:http_payload] = :activities_response
    GetCampaignActivitiesResponse[:http_payload_member] = GetCampaignActivitiesResponse.member(:activities_response)
    GetCampaignActivitiesResponse.type = Types::GetCampaignActivitiesResponse
    GetCampaignDateRangeKpiRequest.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCampaignDateRangeKpiRequest.add_member(:campaign_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CampaignId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCampaignDateRangeKpiRequest.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'EndTime', traits: {"smithy.api#httpQuery" => "end-time"}))
    GetCampaignDateRangeKpiRequest.add_member(:kpi_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KpiName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCampaignDateRangeKpiRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#httpQuery" => "next-token"}))
    GetCampaignDateRangeKpiRequest.add_member(:page_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PageSize', traits: {"smithy.api#httpQuery" => "page-size"}))
    GetCampaignDateRangeKpiRequest.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'StartTime', traits: {"smithy.api#httpQuery" => "start-time"}))
    GetCampaignDateRangeKpiRequest.type = Types::GetCampaignDateRangeKpiRequest
    GetCampaignDateRangeKpiResponse.add_member(:campaign_date_range_kpi_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignDateRangeKpiResponse, location_name: 'CampaignDateRangeKpiResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    GetCampaignDateRangeKpiResponse[:http_payload] = :campaign_date_range_kpi_response
    GetCampaignDateRangeKpiResponse[:http_payload_member] = GetCampaignDateRangeKpiResponse.member(:campaign_date_range_kpi_response)
    GetCampaignDateRangeKpiResponse.type = Types::GetCampaignDateRangeKpiResponse
    GetCampaignRequest.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCampaignRequest.add_member(:campaign_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CampaignId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCampaignRequest.type = Types::GetCampaignRequest
    GetCampaignResponse.add_member(:campaign_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignResponse, location_name: 'CampaignResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    GetCampaignResponse[:http_payload] = :campaign_response
    GetCampaignResponse[:http_payload_member] = GetCampaignResponse.member(:campaign_response)
    GetCampaignResponse.type = Types::GetCampaignResponse
    GetCampaignVersionRequest.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCampaignVersionRequest.add_member(:campaign_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CampaignId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCampaignVersionRequest.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Version', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCampaignVersionRequest.type = Types::GetCampaignVersionRequest
    GetCampaignVersionResponse.add_member(:campaign_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignResponse, location_name: 'CampaignResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    GetCampaignVersionResponse[:http_payload] = :campaign_response
    GetCampaignVersionResponse[:http_payload_member] = GetCampaignVersionResponse.member(:campaign_response)
    GetCampaignVersionResponse.type = Types::GetCampaignVersionResponse
    GetCampaignVersionsRequest.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCampaignVersionsRequest.add_member(:campaign_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CampaignId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCampaignVersionsRequest.add_member(:page_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PageSize', traits: {"smithy.api#httpQuery" => "page-size"}))
    GetCampaignVersionsRequest.add_member(:token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Token', traits: {"smithy.api#httpQuery" => "token"}))
    GetCampaignVersionsRequest.type = Types::GetCampaignVersionsRequest
    GetCampaignVersionsResponse.add_member(:campaigns_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignsResponse, location_name: 'CampaignsResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    GetCampaignVersionsResponse[:http_payload] = :campaigns_response
    GetCampaignVersionsResponse[:http_payload_member] = GetCampaignVersionsResponse.member(:campaigns_response)
    GetCampaignVersionsResponse.type = Types::GetCampaignVersionsResponse
    GetCampaignsRequest.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCampaignsRequest.add_member(:page_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PageSize', traits: {"smithy.api#httpQuery" => "page-size"}))
    GetCampaignsRequest.add_member(:token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Token', traits: {"smithy.api#httpQuery" => "token"}))
    GetCampaignsRequest.type = Types::GetCampaignsRequest
    GetCampaignsResponse.add_member(:campaigns_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignsResponse, location_name: 'CampaignsResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    GetCampaignsResponse[:http_payload] = :campaigns_response
    GetCampaignsResponse[:http_payload_member] = GetCampaignsResponse.member(:campaigns_response)
    GetCampaignsResponse.type = Types::GetCampaignsResponse
    GetChannelsRequest.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetChannelsRequest.type = Types::GetChannelsRequest
    GetChannelsResponse.add_member(:channels_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelsResponse, location_name: 'ChannelsResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    GetChannelsResponse[:http_payload] = :channels_response
    GetChannelsResponse[:http_payload_member] = GetChannelsResponse.member(:channels_response)
    GetChannelsResponse.type = Types::GetChannelsResponse
    GetEmailChannelRequest.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetEmailChannelRequest.type = Types::GetEmailChannelRequest
    GetEmailChannelResponse.add_member(:email_channel_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmailChannelResponse, location_name: 'EmailChannelResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    GetEmailChannelResponse[:http_payload] = :email_channel_response
    GetEmailChannelResponse[:http_payload_member] = GetEmailChannelResponse.member(:email_channel_response)
    GetEmailChannelResponse.type = Types::GetEmailChannelResponse
    GetEmailTemplateRequest.add_member(:template_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TemplateName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetEmailTemplateRequest.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Version', traits: {"smithy.api#httpQuery" => "version"}))
    GetEmailTemplateRequest.type = Types::GetEmailTemplateRequest
    GetEmailTemplateResponse.add_member(:email_template_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmailTemplateResponse, location_name: 'EmailTemplateResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    GetEmailTemplateResponse[:http_payload] = :email_template_response
    GetEmailTemplateResponse[:http_payload_member] = GetEmailTemplateResponse.member(:email_template_response)
    GetEmailTemplateResponse.type = Types::GetEmailTemplateResponse
    GetEndpointRequest.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetEndpointRequest.add_member(:endpoint_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EndpointId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetEndpointRequest.type = Types::GetEndpointRequest
    GetEndpointResponse.add_member(:endpoint_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointResponse, location_name: 'EndpointResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    GetEndpointResponse[:http_payload] = :endpoint_response
    GetEndpointResponse[:http_payload_member] = GetEndpointResponse.member(:endpoint_response)
    GetEndpointResponse.type = Types::GetEndpointResponse
    GetEventStreamRequest.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetEventStreamRequest.type = Types::GetEventStreamRequest
    GetEventStreamResponse.add_member(:event_stream, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventStream, location_name: 'EventStream', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    GetEventStreamResponse[:http_payload] = :event_stream
    GetEventStreamResponse[:http_payload_member] = GetEventStreamResponse.member(:event_stream)
    GetEventStreamResponse.type = Types::GetEventStreamResponse
    GetExportJobRequest.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetExportJobRequest.add_member(:job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'JobId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetExportJobRequest.type = Types::GetExportJobRequest
    GetExportJobResponse.add_member(:export_job_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportJobResponse, location_name: 'ExportJobResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    GetExportJobResponse[:http_payload] = :export_job_response
    GetExportJobResponse[:http_payload_member] = GetExportJobResponse.member(:export_job_response)
    GetExportJobResponse.type = Types::GetExportJobResponse
    GetExportJobsRequest.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetExportJobsRequest.add_member(:page_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PageSize', traits: {"smithy.api#httpQuery" => "page-size"}))
    GetExportJobsRequest.add_member(:token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Token', traits: {"smithy.api#httpQuery" => "token"}))
    GetExportJobsRequest.type = Types::GetExportJobsRequest
    GetExportJobsResponse.add_member(:export_jobs_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportJobsResponse, location_name: 'ExportJobsResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    GetExportJobsResponse[:http_payload] = :export_jobs_response
    GetExportJobsResponse[:http_payload_member] = GetExportJobsResponse.member(:export_jobs_response)
    GetExportJobsResponse.type = Types::GetExportJobsResponse
    GetGcmChannelRequest.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetGcmChannelRequest.type = Types::GetGcmChannelRequest
    GetGcmChannelResponse.add_member(:gcm_channel_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GCMChannelResponse, location_name: 'GCMChannelResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    GetGcmChannelResponse[:http_payload] = :gcm_channel_response
    GetGcmChannelResponse[:http_payload_member] = GetGcmChannelResponse.member(:gcm_channel_response)
    GetGcmChannelResponse.type = Types::GetGcmChannelResponse
    GetImportJobRequest.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetImportJobRequest.add_member(:job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'JobId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetImportJobRequest.type = Types::GetImportJobRequest
    GetImportJobResponse.add_member(:import_job_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImportJobResponse, location_name: 'ImportJobResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    GetImportJobResponse[:http_payload] = :import_job_response
    GetImportJobResponse[:http_payload_member] = GetImportJobResponse.member(:import_job_response)
    GetImportJobResponse.type = Types::GetImportJobResponse
    GetImportJobsRequest.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetImportJobsRequest.add_member(:page_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PageSize', traits: {"smithy.api#httpQuery" => "page-size"}))
    GetImportJobsRequest.add_member(:token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Token', traits: {"smithy.api#httpQuery" => "token"}))
    GetImportJobsRequest.type = Types::GetImportJobsRequest
    GetImportJobsResponse.add_member(:import_jobs_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImportJobsResponse, location_name: 'ImportJobsResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    GetImportJobsResponse[:http_payload] = :import_jobs_response
    GetImportJobsResponse[:http_payload_member] = GetImportJobsResponse.member(:import_jobs_response)
    GetImportJobsResponse.type = Types::GetImportJobsResponse
    GetInAppMessagesRequest.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetInAppMessagesRequest.add_member(:endpoint_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EndpointId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetInAppMessagesRequest.type = Types::GetInAppMessagesRequest
    GetInAppMessagesResponse.add_member(:in_app_messages_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InAppMessagesResponse, location_name: 'InAppMessagesResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    GetInAppMessagesResponse[:http_payload] = :in_app_messages_response
    GetInAppMessagesResponse[:http_payload_member] = GetInAppMessagesResponse.member(:in_app_messages_response)
    GetInAppMessagesResponse.type = Types::GetInAppMessagesResponse
    GetInAppTemplateRequest.add_member(:template_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TemplateName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetInAppTemplateRequest.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Version', traits: {"smithy.api#httpQuery" => "version"}))
    GetInAppTemplateRequest.type = Types::GetInAppTemplateRequest
    GetInAppTemplateResponse.add_member(:in_app_template_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InAppTemplateResponse, location_name: 'InAppTemplateResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    GetInAppTemplateResponse[:http_payload] = :in_app_template_response
    GetInAppTemplateResponse[:http_payload_member] = GetInAppTemplateResponse.member(:in_app_template_response)
    GetInAppTemplateResponse.type = Types::GetInAppTemplateResponse
    GetJourneyDateRangeKpiRequest.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetJourneyDateRangeKpiRequest.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'EndTime', traits: {"smithy.api#httpQuery" => "end-time"}))
    GetJourneyDateRangeKpiRequest.add_member(:journey_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'JourneyId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetJourneyDateRangeKpiRequest.add_member(:kpi_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KpiName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetJourneyDateRangeKpiRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#httpQuery" => "next-token"}))
    GetJourneyDateRangeKpiRequest.add_member(:page_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PageSize', traits: {"smithy.api#httpQuery" => "page-size"}))
    GetJourneyDateRangeKpiRequest.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'StartTime', traits: {"smithy.api#httpQuery" => "start-time"}))
    GetJourneyDateRangeKpiRequest.type = Types::GetJourneyDateRangeKpiRequest
    GetJourneyDateRangeKpiResponse.add_member(:journey_date_range_kpi_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JourneyDateRangeKpiResponse, location_name: 'JourneyDateRangeKpiResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    GetJourneyDateRangeKpiResponse[:http_payload] = :journey_date_range_kpi_response
    GetJourneyDateRangeKpiResponse[:http_payload_member] = GetJourneyDateRangeKpiResponse.member(:journey_date_range_kpi_response)
    GetJourneyDateRangeKpiResponse.type = Types::GetJourneyDateRangeKpiResponse
    GetJourneyExecutionActivityMetricsRequest.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetJourneyExecutionActivityMetricsRequest.add_member(:journey_activity_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'JourneyActivityId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetJourneyExecutionActivityMetricsRequest.add_member(:journey_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'JourneyId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetJourneyExecutionActivityMetricsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#httpQuery" => "next-token"}))
    GetJourneyExecutionActivityMetricsRequest.add_member(:page_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PageSize', traits: {"smithy.api#httpQuery" => "page-size"}))
    GetJourneyExecutionActivityMetricsRequest.type = Types::GetJourneyExecutionActivityMetricsRequest
    GetJourneyExecutionActivityMetricsResponse.add_member(:journey_execution_activity_metrics_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JourneyExecutionActivityMetricsResponse, location_name: 'JourneyExecutionActivityMetricsResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    GetJourneyExecutionActivityMetricsResponse[:http_payload] = :journey_execution_activity_metrics_response
    GetJourneyExecutionActivityMetricsResponse[:http_payload_member] = GetJourneyExecutionActivityMetricsResponse.member(:journey_execution_activity_metrics_response)
    GetJourneyExecutionActivityMetricsResponse.type = Types::GetJourneyExecutionActivityMetricsResponse
    GetJourneyExecutionMetricsRequest.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetJourneyExecutionMetricsRequest.add_member(:journey_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'JourneyId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetJourneyExecutionMetricsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#httpQuery" => "next-token"}))
    GetJourneyExecutionMetricsRequest.add_member(:page_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PageSize', traits: {"smithy.api#httpQuery" => "page-size"}))
    GetJourneyExecutionMetricsRequest.type = Types::GetJourneyExecutionMetricsRequest
    GetJourneyExecutionMetricsResponse.add_member(:journey_execution_metrics_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JourneyExecutionMetricsResponse, location_name: 'JourneyExecutionMetricsResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    GetJourneyExecutionMetricsResponse[:http_payload] = :journey_execution_metrics_response
    GetJourneyExecutionMetricsResponse[:http_payload_member] = GetJourneyExecutionMetricsResponse.member(:journey_execution_metrics_response)
    GetJourneyExecutionMetricsResponse.type = Types::GetJourneyExecutionMetricsResponse
    GetJourneyRequest.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetJourneyRequest.add_member(:journey_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'JourneyId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetJourneyRequest.type = Types::GetJourneyRequest
    GetJourneyResponse.add_member(:journey_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JourneyResponse, location_name: 'JourneyResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    GetJourneyResponse[:http_payload] = :journey_response
    GetJourneyResponse[:http_payload_member] = GetJourneyResponse.member(:journey_response)
    GetJourneyResponse.type = Types::GetJourneyResponse
    GetJourneyRunExecutionActivityMetricsRequest.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetJourneyRunExecutionActivityMetricsRequest.add_member(:journey_activity_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'JourneyActivityId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetJourneyRunExecutionActivityMetricsRequest.add_member(:journey_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'JourneyId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetJourneyRunExecutionActivityMetricsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#httpQuery" => "next-token"}))
    GetJourneyRunExecutionActivityMetricsRequest.add_member(:page_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PageSize', traits: {"smithy.api#httpQuery" => "page-size"}))
    GetJourneyRunExecutionActivityMetricsRequest.add_member(:run_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RunId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetJourneyRunExecutionActivityMetricsRequest.type = Types::GetJourneyRunExecutionActivityMetricsRequest
    GetJourneyRunExecutionActivityMetricsResponse.add_member(:journey_run_execution_activity_metrics_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JourneyRunExecutionActivityMetricsResponse, location_name: 'JourneyRunExecutionActivityMetricsResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    GetJourneyRunExecutionActivityMetricsResponse[:http_payload] = :journey_run_execution_activity_metrics_response
    GetJourneyRunExecutionActivityMetricsResponse[:http_payload_member] = GetJourneyRunExecutionActivityMetricsResponse.member(:journey_run_execution_activity_metrics_response)
    GetJourneyRunExecutionActivityMetricsResponse.type = Types::GetJourneyRunExecutionActivityMetricsResponse
    GetJourneyRunExecutionMetricsRequest.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetJourneyRunExecutionMetricsRequest.add_member(:journey_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'JourneyId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetJourneyRunExecutionMetricsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#httpQuery" => "next-token"}))
    GetJourneyRunExecutionMetricsRequest.add_member(:page_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PageSize', traits: {"smithy.api#httpQuery" => "page-size"}))
    GetJourneyRunExecutionMetricsRequest.add_member(:run_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RunId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetJourneyRunExecutionMetricsRequest.type = Types::GetJourneyRunExecutionMetricsRequest
    GetJourneyRunExecutionMetricsResponse.add_member(:journey_run_execution_metrics_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JourneyRunExecutionMetricsResponse, location_name: 'JourneyRunExecutionMetricsResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    GetJourneyRunExecutionMetricsResponse[:http_payload] = :journey_run_execution_metrics_response
    GetJourneyRunExecutionMetricsResponse[:http_payload_member] = GetJourneyRunExecutionMetricsResponse.member(:journey_run_execution_metrics_response)
    GetJourneyRunExecutionMetricsResponse.type = Types::GetJourneyRunExecutionMetricsResponse
    GetJourneyRunsRequest.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetJourneyRunsRequest.add_member(:journey_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'JourneyId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetJourneyRunsRequest.add_member(:page_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PageSize', traits: {"smithy.api#httpQuery" => "page-size"}))
    GetJourneyRunsRequest.add_member(:token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Token', traits: {"smithy.api#httpQuery" => "token"}))
    GetJourneyRunsRequest.type = Types::GetJourneyRunsRequest
    GetJourneyRunsResponse.add_member(:journey_runs_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JourneyRunsResponse, location_name: 'JourneyRunsResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    GetJourneyRunsResponse[:http_payload] = :journey_runs_response
    GetJourneyRunsResponse[:http_payload_member] = GetJourneyRunsResponse.member(:journey_runs_response)
    GetJourneyRunsResponse.type = Types::GetJourneyRunsResponse
    GetPushTemplateRequest.add_member(:template_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TemplateName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetPushTemplateRequest.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Version', traits: {"smithy.api#httpQuery" => "version"}))
    GetPushTemplateRequest.type = Types::GetPushTemplateRequest
    GetPushTemplateResponse.add_member(:push_notification_template_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PushNotificationTemplateResponse, location_name: 'PushNotificationTemplateResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    GetPushTemplateResponse[:http_payload] = :push_notification_template_response
    GetPushTemplateResponse[:http_payload_member] = GetPushTemplateResponse.member(:push_notification_template_response)
    GetPushTemplateResponse.type = Types::GetPushTemplateResponse
    GetRecommenderConfigurationRequest.add_member(:recommender_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RecommenderId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRecommenderConfigurationRequest.type = Types::GetRecommenderConfigurationRequest
    GetRecommenderConfigurationResponse.add_member(:recommender_configuration_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecommenderConfigurationResponse, location_name: 'RecommenderConfigurationResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    GetRecommenderConfigurationResponse[:http_payload] = :recommender_configuration_response
    GetRecommenderConfigurationResponse[:http_payload_member] = GetRecommenderConfigurationResponse.member(:recommender_configuration_response)
    GetRecommenderConfigurationResponse.type = Types::GetRecommenderConfigurationResponse
    GetRecommenderConfigurationsRequest.add_member(:page_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PageSize', traits: {"smithy.api#httpQuery" => "page-size"}))
    GetRecommenderConfigurationsRequest.add_member(:token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Token', traits: {"smithy.api#httpQuery" => "token"}))
    GetRecommenderConfigurationsRequest.type = Types::GetRecommenderConfigurationsRequest
    GetRecommenderConfigurationsResponse.add_member(:list_recommender_configurations_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListRecommenderConfigurationsResponse, location_name: 'ListRecommenderConfigurationsResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    GetRecommenderConfigurationsResponse[:http_payload] = :list_recommender_configurations_response
    GetRecommenderConfigurationsResponse[:http_payload_member] = GetRecommenderConfigurationsResponse.member(:list_recommender_configurations_response)
    GetRecommenderConfigurationsResponse.type = Types::GetRecommenderConfigurationsResponse
    GetSegmentExportJobsRequest.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSegmentExportJobsRequest.add_member(:page_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PageSize', traits: {"smithy.api#httpQuery" => "page-size"}))
    GetSegmentExportJobsRequest.add_member(:segment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SegmentId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSegmentExportJobsRequest.add_member(:token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Token', traits: {"smithy.api#httpQuery" => "token"}))
    GetSegmentExportJobsRequest.type = Types::GetSegmentExportJobsRequest
    GetSegmentExportJobsResponse.add_member(:export_jobs_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportJobsResponse, location_name: 'ExportJobsResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    GetSegmentExportJobsResponse[:http_payload] = :export_jobs_response
    GetSegmentExportJobsResponse[:http_payload_member] = GetSegmentExportJobsResponse.member(:export_jobs_response)
    GetSegmentExportJobsResponse.type = Types::GetSegmentExportJobsResponse
    GetSegmentImportJobsRequest.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSegmentImportJobsRequest.add_member(:page_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PageSize', traits: {"smithy.api#httpQuery" => "page-size"}))
    GetSegmentImportJobsRequest.add_member(:segment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SegmentId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSegmentImportJobsRequest.add_member(:token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Token', traits: {"smithy.api#httpQuery" => "token"}))
    GetSegmentImportJobsRequest.type = Types::GetSegmentImportJobsRequest
    GetSegmentImportJobsResponse.add_member(:import_jobs_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImportJobsResponse, location_name: 'ImportJobsResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    GetSegmentImportJobsResponse[:http_payload] = :import_jobs_response
    GetSegmentImportJobsResponse[:http_payload_member] = GetSegmentImportJobsResponse.member(:import_jobs_response)
    GetSegmentImportJobsResponse.type = Types::GetSegmentImportJobsResponse
    GetSegmentRequest.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSegmentRequest.add_member(:segment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SegmentId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSegmentRequest.type = Types::GetSegmentRequest
    GetSegmentResponse.add_member(:segment_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SegmentResponse, location_name: 'SegmentResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    GetSegmentResponse[:http_payload] = :segment_response
    GetSegmentResponse[:http_payload_member] = GetSegmentResponse.member(:segment_response)
    GetSegmentResponse.type = Types::GetSegmentResponse
    GetSegmentVersionRequest.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSegmentVersionRequest.add_member(:segment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SegmentId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSegmentVersionRequest.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Version', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSegmentVersionRequest.type = Types::GetSegmentVersionRequest
    GetSegmentVersionResponse.add_member(:segment_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SegmentResponse, location_name: 'SegmentResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    GetSegmentVersionResponse[:http_payload] = :segment_response
    GetSegmentVersionResponse[:http_payload_member] = GetSegmentVersionResponse.member(:segment_response)
    GetSegmentVersionResponse.type = Types::GetSegmentVersionResponse
    GetSegmentVersionsRequest.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSegmentVersionsRequest.add_member(:page_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PageSize', traits: {"smithy.api#httpQuery" => "page-size"}))
    GetSegmentVersionsRequest.add_member(:segment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SegmentId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSegmentVersionsRequest.add_member(:token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Token', traits: {"smithy.api#httpQuery" => "token"}))
    GetSegmentVersionsRequest.type = Types::GetSegmentVersionsRequest
    GetSegmentVersionsResponse.add_member(:segments_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SegmentsResponse, location_name: 'SegmentsResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    GetSegmentVersionsResponse[:http_payload] = :segments_response
    GetSegmentVersionsResponse[:http_payload_member] = GetSegmentVersionsResponse.member(:segments_response)
    GetSegmentVersionsResponse.type = Types::GetSegmentVersionsResponse
    GetSegmentsRequest.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSegmentsRequest.add_member(:page_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PageSize', traits: {"smithy.api#httpQuery" => "page-size"}))
    GetSegmentsRequest.add_member(:token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Token', traits: {"smithy.api#httpQuery" => "token"}))
    GetSegmentsRequest.type = Types::GetSegmentsRequest
    GetSegmentsResponse.add_member(:segments_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SegmentsResponse, location_name: 'SegmentsResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    GetSegmentsResponse[:http_payload] = :segments_response
    GetSegmentsResponse[:http_payload_member] = GetSegmentsResponse.member(:segments_response)
    GetSegmentsResponse.type = Types::GetSegmentsResponse
    GetSmsChannelRequest.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSmsChannelRequest.type = Types::GetSmsChannelRequest
    GetSmsChannelResponse.add_member(:sms_channel_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SMSChannelResponse, location_name: 'SMSChannelResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    GetSmsChannelResponse[:http_payload] = :sms_channel_response
    GetSmsChannelResponse[:http_payload_member] = GetSmsChannelResponse.member(:sms_channel_response)
    GetSmsChannelResponse.type = Types::GetSmsChannelResponse
    GetSmsTemplateRequest.add_member(:template_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TemplateName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSmsTemplateRequest.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Version', traits: {"smithy.api#httpQuery" => "version"}))
    GetSmsTemplateRequest.type = Types::GetSmsTemplateRequest
    GetSmsTemplateResponse.add_member(:sms_template_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SMSTemplateResponse, location_name: 'SMSTemplateResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    GetSmsTemplateResponse[:http_payload] = :sms_template_response
    GetSmsTemplateResponse[:http_payload_member] = GetSmsTemplateResponse.member(:sms_template_response)
    GetSmsTemplateResponse.type = Types::GetSmsTemplateResponse
    GetUserEndpointsRequest.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetUserEndpointsRequest.add_member(:user_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'UserId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetUserEndpointsRequest.type = Types::GetUserEndpointsRequest
    GetUserEndpointsResponse.add_member(:endpoints_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointsResponse, location_name: 'EndpointsResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    GetUserEndpointsResponse[:http_payload] = :endpoints_response
    GetUserEndpointsResponse[:http_payload_member] = GetUserEndpointsResponse.member(:endpoints_response)
    GetUserEndpointsResponse.type = Types::GetUserEndpointsResponse
    GetVoiceChannelRequest.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetVoiceChannelRequest.type = Types::GetVoiceChannelRequest
    GetVoiceChannelResponse.add_member(:voice_channel_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VoiceChannelResponse, location_name: 'VoiceChannelResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    GetVoiceChannelResponse[:http_payload] = :voice_channel_response
    GetVoiceChannelResponse[:http_payload_member] = GetVoiceChannelResponse.member(:voice_channel_response)
    GetVoiceChannelResponse.type = Types::GetVoiceChannelResponse
    GetVoiceTemplateRequest.add_member(:template_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TemplateName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetVoiceTemplateRequest.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Version', traits: {"smithy.api#httpQuery" => "version"}))
    GetVoiceTemplateRequest.type = Types::GetVoiceTemplateRequest
    GetVoiceTemplateResponse.add_member(:voice_template_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VoiceTemplateResponse, location_name: 'VoiceTemplateResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    GetVoiceTemplateResponse[:http_payload] = :voice_template_response
    GetVoiceTemplateResponse[:http_payload_member] = GetVoiceTemplateResponse.member(:voice_template_response)
    GetVoiceTemplateResponse.type = Types::GetVoiceTemplateResponse
    HoldoutActivity.add_member(:next_activity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextActivity'))
    HoldoutActivity.add_member(:percentage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Percentage', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    HoldoutActivity.type = Types::HoldoutActivity
    ImportJobRequest.add_member(:define_segment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'DefineSegment'))
    ImportJobRequest.add_member(:external_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ExternalId'))
    ImportJobRequest.add_member(:format, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Format, location_name: 'Format', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ImportJobRequest.add_member(:register_endpoints, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'RegisterEndpoints'))
    ImportJobRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RoleArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ImportJobRequest.add_member(:s3_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'S3Url', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ImportJobRequest.add_member(:segment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SegmentId'))
    ImportJobRequest.add_member(:segment_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SegmentName'))
    ImportJobRequest.type = Types::ImportJobRequest
    ImportJobResource.add_member(:define_segment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'DefineSegment'))
    ImportJobResource.add_member(:external_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ExternalId'))
    ImportJobResource.add_member(:format, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Format, location_name: 'Format', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ImportJobResource.add_member(:register_endpoints, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'RegisterEndpoints'))
    ImportJobResource.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RoleArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ImportJobResource.add_member(:s3_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'S3Url', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ImportJobResource.add_member(:segment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SegmentId'))
    ImportJobResource.add_member(:segment_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SegmentName'))
    ImportJobResource.type = Types::ImportJobResource
    ImportJobResponse.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ImportJobResponse.add_member(:completed_pieces, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'CompletedPieces'))
    ImportJobResponse.add_member(:completion_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CompletionDate'))
    ImportJobResponse.add_member(:creation_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreationDate', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ImportJobResponse.add_member(:definition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImportJobResource, location_name: 'Definition', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ImportJobResponse.add_member(:failed_pieces, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'FailedPieces'))
    ImportJobResponse.add_member(:failures, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfString, location_name: 'Failures'))
    ImportJobResponse.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ImportJobResponse.add_member(:job_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatus, location_name: 'JobStatus', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ImportJobResponse.add_member(:total_failures, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'TotalFailures'))
    ImportJobResponse.add_member(:total_pieces, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'TotalPieces'))
    ImportJobResponse.add_member(:total_processed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'TotalProcessed'))
    ImportJobResponse.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Type', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ImportJobResponse.type = Types::ImportJobResponse
    ImportJobsResponse.add_member(:item, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfImportJobResponse, location_name: 'Item', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ImportJobsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken'))
    ImportJobsResponse.type = Types::ImportJobsResponse
    InAppCampaignSchedule.add_member(:end_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EndDate'))
    InAppCampaignSchedule.add_member(:event_filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignEventFilter, location_name: 'EventFilter'))
    InAppCampaignSchedule.add_member(:quiet_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QuietTime, location_name: 'QuietTime'))
    InAppCampaignSchedule.type = Types::InAppCampaignSchedule
    InAppMessage.add_member(:content, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfInAppMessageContent, location_name: 'Content'))
    InAppMessage.add_member(:custom_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfString, location_name: 'CustomConfig'))
    InAppMessage.add_member(:layout, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Layout, location_name: 'Layout'))
    InAppMessage.type = Types::InAppMessage
    InAppMessageBodyConfig.add_member(:alignment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Alignment, location_name: 'Alignment', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    InAppMessageBodyConfig.add_member(:body, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Body', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    InAppMessageBodyConfig.add_member(:text_color, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TextColor', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    InAppMessageBodyConfig.type = Types::InAppMessageBodyConfig
    InAppMessageButton.add_member(:android, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OverrideButtonConfiguration, location_name: 'Android'))
    InAppMessageButton.add_member(:default_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DefaultButtonConfiguration, location_name: 'DefaultConfig'))
    InAppMessageButton.add_member(:ios, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OverrideButtonConfiguration, location_name: 'IOS'))
    InAppMessageButton.add_member(:web, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OverrideButtonConfiguration, location_name: 'Web'))
    InAppMessageButton.type = Types::InAppMessageButton
    InAppMessageCampaign.add_member(:campaign_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CampaignId'))
    InAppMessageCampaign.add_member(:daily_cap, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'DailyCap'))
    InAppMessageCampaign.add_member(:in_app_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InAppMessage, location_name: 'InAppMessage'))
    InAppMessageCampaign.add_member(:priority, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Priority'))
    InAppMessageCampaign.add_member(:schedule, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InAppCampaignSchedule, location_name: 'Schedule'))
    InAppMessageCampaign.add_member(:session_cap, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'SessionCap'))
    InAppMessageCampaign.add_member(:total_cap, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'TotalCap'))
    InAppMessageCampaign.add_member(:treatment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TreatmentId'))
    InAppMessageCampaign.type = Types::InAppMessageCampaign
    InAppMessageContent.add_member(:background_color, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BackgroundColor'))
    InAppMessageContent.add_member(:body_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InAppMessageBodyConfig, location_name: 'BodyConfig'))
    InAppMessageContent.add_member(:header_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InAppMessageHeaderConfig, location_name: 'HeaderConfig'))
    InAppMessageContent.add_member(:image_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ImageUrl'))
    InAppMessageContent.add_member(:primary_btn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InAppMessageButton, location_name: 'PrimaryBtn'))
    InAppMessageContent.add_member(:secondary_btn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InAppMessageButton, location_name: 'SecondaryBtn'))
    InAppMessageContent.type = Types::InAppMessageContent
    InAppMessageHeaderConfig.add_member(:alignment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Alignment, location_name: 'Alignment', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    InAppMessageHeaderConfig.add_member(:header, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Header', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    InAppMessageHeaderConfig.add_member(:text_color, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TextColor', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    InAppMessageHeaderConfig.type = Types::InAppMessageHeaderConfig
    InAppMessagesResponse.add_member(:in_app_message_campaigns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfInAppMessageCampaign, location_name: 'InAppMessageCampaigns'))
    InAppMessagesResponse.type = Types::InAppMessagesResponse
    InAppTemplateRequest.add_member(:content, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfInAppMessageContent, location_name: 'Content'))
    InAppTemplateRequest.add_member(:custom_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfString, location_name: 'CustomConfig'))
    InAppTemplateRequest.add_member(:layout, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Layout, location_name: 'Layout'))
    InAppTemplateRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfString, location_name: 'tags', traits: {"smithy.api#jsonName" => "tags"}))
    InAppTemplateRequest.add_member(:template_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TemplateDescription'))
    InAppTemplateRequest.type = Types::InAppTemplateRequest
    InAppTemplateResponse.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn'))
    InAppTemplateResponse.add_member(:content, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfInAppMessageContent, location_name: 'Content'))
    InAppTemplateResponse.add_member(:creation_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreationDate', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    InAppTemplateResponse.add_member(:custom_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfString, location_name: 'CustomConfig'))
    InAppTemplateResponse.add_member(:last_modified_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LastModifiedDate', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    InAppTemplateResponse.add_member(:layout, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Layout, location_name: 'Layout'))
    InAppTemplateResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfString, location_name: 'tags', traits: {"smithy.api#jsonName" => "tags"}))
    InAppTemplateResponse.add_member(:template_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TemplateDescription'))
    InAppTemplateResponse.add_member(:template_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TemplateName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    InAppTemplateResponse.add_member(:template_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateType, location_name: 'TemplateType', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    InAppTemplateResponse.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Version'))
    InAppTemplateResponse.type = Types::InAppTemplateResponse
    Include.add_member(:all, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALL', traits: {"smithy.api#enumValue" => "ALL"}))
    Include.add_member(:any, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ANY', traits: {"smithy.api#enumValue" => "ANY"}))
    Include.add_member(:none, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NONE', traits: {"smithy.api#enumValue" => "NONE"}))
    InternalServerErrorException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    InternalServerErrorException.add_member(:request_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RequestID'))
    InternalServerErrorException.type = Types::InternalServerErrorException
    ItemResponse.add_member(:endpoint_item_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointItemResponse, location_name: 'EndpointItemResponse'))
    ItemResponse.add_member(:events_item_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfEventItemResponse, location_name: 'EventsItemResponse'))
    ItemResponse.type = Types::ItemResponse
    JobStatus.add_member(:created, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATED', traits: {"smithy.api#enumValue" => "CREATED"}))
    JobStatus.add_member(:preparing_for_initialization, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PREPARING_FOR_INITIALIZATION', traits: {"smithy.api#enumValue" => "PREPARING_FOR_INITIALIZATION"}))
    JobStatus.add_member(:initializing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INITIALIZING', traits: {"smithy.api#enumValue" => "INITIALIZING"}))
    JobStatus.add_member(:processing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PROCESSING', traits: {"smithy.api#enumValue" => "PROCESSING"}))
    JobStatus.add_member(:pending_job, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING_JOB', traits: {"smithy.api#enumValue" => "PENDING_JOB"}))
    JobStatus.add_member(:completing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETING', traits: {"smithy.api#enumValue" => "COMPLETING"}))
    JobStatus.add_member(:completed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETED', traits: {"smithy.api#enumValue" => "COMPLETED"}))
    JobStatus.add_member(:failing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILING', traits: {"smithy.api#enumValue" => "FAILING"}))
    JobStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    JourneyChannelSettings.add_member(:connect_campaign_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ConnectCampaignArn'))
    JourneyChannelSettings.add_member(:connect_campaign_execution_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ConnectCampaignExecutionRoleArn'))
    JourneyChannelSettings.type = Types::JourneyChannelSettings
    JourneyCustomMessage.add_member(:data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Data'))
    JourneyCustomMessage.type = Types::JourneyCustomMessage
    JourneyDateRangeKpiResponse.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    JourneyDateRangeKpiResponse.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'EndTime', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    JourneyDateRangeKpiResponse.add_member(:journey_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'JourneyId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    JourneyDateRangeKpiResponse.add_member(:kpi_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KpiName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    JourneyDateRangeKpiResponse.add_member(:kpi_result, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaseKpiResult, location_name: 'KpiResult', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    JourneyDateRangeKpiResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken'))
    JourneyDateRangeKpiResponse.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'StartTime', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    JourneyDateRangeKpiResponse.type = Types::JourneyDateRangeKpiResponse
    JourneyEmailMessage.add_member(:from_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'FromAddress'))
    JourneyEmailMessage.type = Types::JourneyEmailMessage
    JourneyExecutionActivityMetricsResponse.add_member(:activity_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ActivityType', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    JourneyExecutionActivityMetricsResponse.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    JourneyExecutionActivityMetricsResponse.add_member(:journey_activity_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'JourneyActivityId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    JourneyExecutionActivityMetricsResponse.add_member(:journey_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'JourneyId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    JourneyExecutionActivityMetricsResponse.add_member(:last_evaluated_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LastEvaluatedTime', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    JourneyExecutionActivityMetricsResponse.add_member(:metrics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfString, location_name: 'Metrics', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    JourneyExecutionActivityMetricsResponse.type = Types::JourneyExecutionActivityMetricsResponse
    JourneyExecutionMetricsResponse.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    JourneyExecutionMetricsResponse.add_member(:journey_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'JourneyId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    JourneyExecutionMetricsResponse.add_member(:last_evaluated_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LastEvaluatedTime', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    JourneyExecutionMetricsResponse.add_member(:metrics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfString, location_name: 'Metrics', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    JourneyExecutionMetricsResponse.type = Types::JourneyExecutionMetricsResponse
    JourneyLimits.add_member(:daily_cap, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'DailyCap'))
    JourneyLimits.add_member(:endpoint_reentry_cap, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'EndpointReentryCap'))
    JourneyLimits.add_member(:messages_per_second, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'MessagesPerSecond'))
    JourneyLimits.add_member(:endpoint_reentry_interval, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EndpointReentryInterval'))
    JourneyLimits.add_member(:timeframe_cap, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JourneyTimeframeCap, location_name: 'TimeframeCap'))
    JourneyLimits.add_member(:total_cap, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'TotalCap'))
    JourneyLimits.type = Types::JourneyLimits
    JourneyPushMessage.add_member(:time_to_live, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TimeToLive'))
    JourneyPushMessage.type = Types::JourneyPushMessage
    JourneyResponse.add_member(:activities, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfActivity, location_name: 'Activities'))
    JourneyResponse.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    JourneyResponse.add_member(:creation_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreationDate'))
    JourneyResponse.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    JourneyResponse.add_member(:last_modified_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LastModifiedDate'))
    JourneyResponse.add_member(:limits, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JourneyLimits, location_name: 'Limits'))
    JourneyResponse.add_member(:local_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'LocalTime'))
    JourneyResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    JourneyResponse.add_member(:quiet_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QuietTime, location_name: 'QuietTime'))
    JourneyResponse.add_member(:refresh_frequency, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RefreshFrequency'))
    JourneyResponse.add_member(:schedule, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JourneySchedule, location_name: 'Schedule'))
    JourneyResponse.add_member(:start_activity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StartActivity'))
    JourneyResponse.add_member(:start_condition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartCondition, location_name: 'StartCondition'))
    JourneyResponse.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: State, location_name: 'State'))
    JourneyResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfString, location_name: 'tags', traits: {"smithy.api#jsonName" => "tags"}))
    JourneyResponse.add_member(:wait_for_quiet_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'WaitForQuietTime'))
    JourneyResponse.add_member(:refresh_on_segment_update, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'RefreshOnSegmentUpdate'))
    JourneyResponse.add_member(:journey_channel_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JourneyChannelSettings, location_name: 'JourneyChannelSettings'))
    JourneyResponse.add_member(:sending_schedule, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'SendingSchedule'))
    JourneyResponse.add_member(:open_hours, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OpenHours, location_name: 'OpenHours'))
    JourneyResponse.add_member(:closed_days, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClosedDays, location_name: 'ClosedDays'))
    JourneyResponse.add_member(:timezone_estimation_methods, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfTimezoneestimationmethodselement, location_name: 'TimezoneEstimationMethods'))
    JourneyResponse.type = Types::JourneyResponse
    JourneyRunExecutionActivityMetricsResponse.add_member(:activity_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ActivityType', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    JourneyRunExecutionActivityMetricsResponse.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    JourneyRunExecutionActivityMetricsResponse.add_member(:journey_activity_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'JourneyActivityId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    JourneyRunExecutionActivityMetricsResponse.add_member(:journey_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'JourneyId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    JourneyRunExecutionActivityMetricsResponse.add_member(:last_evaluated_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LastEvaluatedTime', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    JourneyRunExecutionActivityMetricsResponse.add_member(:metrics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfString, location_name: 'Metrics', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    JourneyRunExecutionActivityMetricsResponse.add_member(:run_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RunId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    JourneyRunExecutionActivityMetricsResponse.type = Types::JourneyRunExecutionActivityMetricsResponse
    JourneyRunExecutionMetricsResponse.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    JourneyRunExecutionMetricsResponse.add_member(:journey_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'JourneyId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    JourneyRunExecutionMetricsResponse.add_member(:last_evaluated_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LastEvaluatedTime', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    JourneyRunExecutionMetricsResponse.add_member(:metrics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfString, location_name: 'Metrics', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    JourneyRunExecutionMetricsResponse.add_member(:run_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RunId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    JourneyRunExecutionMetricsResponse.type = Types::JourneyRunExecutionMetricsResponse
    JourneyRunResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreationTime', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    JourneyRunResponse.add_member(:last_update_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LastUpdateTime', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    JourneyRunResponse.add_member(:run_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RunId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    JourneyRunResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JourneyRunStatus, location_name: 'Status', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    JourneyRunResponse.type = Types::JourneyRunResponse
    JourneyRunStatus.add_member(:scheduled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SCHEDULED', traits: {"smithy.api#enumValue" => "SCHEDULED"}))
    JourneyRunStatus.add_member(:running, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RUNNING', traits: {"smithy.api#enumValue" => "RUNNING"}))
    JourneyRunStatus.add_member(:completed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETED', traits: {"smithy.api#enumValue" => "COMPLETED"}))
    JourneyRunStatus.add_member(:cancelled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANCELLED', traits: {"smithy.api#enumValue" => "CANCELLED"}))
    JourneyRunsResponse.add_member(:item, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfJourneyRunResponse, location_name: 'Item', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    JourneyRunsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken'))
    JourneyRunsResponse.type = Types::JourneyRunsResponse
    JourneySMSMessage.add_member(:message_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageType, location_name: 'MessageType'))
    JourneySMSMessage.add_member(:origination_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OriginationNumber'))
    JourneySMSMessage.add_member(:sender_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SenderId'))
    JourneySMSMessage.add_member(:entity_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EntityId'))
    JourneySMSMessage.add_member(:template_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TemplateId'))
    JourneySMSMessage.type = Types::JourneySMSMessage
    JourneySchedule.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'EndTime'))
    JourneySchedule.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'StartTime'))
    JourneySchedule.add_member(:timezone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Timezone'))
    JourneySchedule.type = Types::JourneySchedule
    JourneyStateRequest.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: State, location_name: 'State'))
    JourneyStateRequest.type = Types::JourneyStateRequest
    JourneyTimeframeCap.add_member(:cap, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Cap'))
    JourneyTimeframeCap.add_member(:days, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Days'))
    JourneyTimeframeCap.type = Types::JourneyTimeframeCap
    JourneysResponse.add_member(:item, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfJourneyResponse, location_name: 'Item', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    JourneysResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken'))
    JourneysResponse.type = Types::JourneysResponse
    Layout.add_member(:bottom_banner, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BOTTOM_BANNER', traits: {"smithy.api#enumValue" => "BOTTOM_BANNER"}))
    Layout.add_member(:top_banner, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TOP_BANNER', traits: {"smithy.api#enumValue" => "TOP_BANNER"}))
    Layout.add_member(:overlays, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OVERLAYS', traits: {"smithy.api#enumValue" => "OVERLAYS"}))
    Layout.add_member(:mobile_feed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MOBILE_FEED', traits: {"smithy.api#enumValue" => "MOBILE_FEED"}))
    Layout.add_member(:middle_banner, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MIDDLE_BANNER', traits: {"smithy.api#enumValue" => "MIDDLE_BANNER"}))
    Layout.add_member(:carousel, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CAROUSEL', traits: {"smithy.api#enumValue" => "CAROUSEL"}))
    ListJourneysRequest.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListJourneysRequest.add_member(:page_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PageSize', traits: {"smithy.api#httpQuery" => "page-size"}))
    ListJourneysRequest.add_member(:token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Token', traits: {"smithy.api#httpQuery" => "token"}))
    ListJourneysRequest.type = Types::ListJourneysRequest
    ListJourneysResponse.add_member(:journeys_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JourneysResponse, location_name: 'JourneysResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    ListJourneysResponse[:http_payload] = :journeys_response
    ListJourneysResponse[:http_payload_member] = ListJourneysResponse.member(:journeys_response)
    ListJourneysResponse.type = Types::ListJourneysResponse
    ListOfActivityResponse.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActivityResponse)
    ListOfApplicationResponse.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationResponse)
    ListOfCampaignResponse.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignResponse)
    ListOfClosedDaysRules.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClosedDaysRule)
    ListOfEndpointBatchItem.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointBatchItem)
    ListOfEndpointResponse.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointResponse)
    ListOfExportJobResponse.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportJobResponse)
    ListOfImportJobResponse.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImportJobResponse)
    ListOfInAppMessageCampaign.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: InAppMessageCampaign)
    ListOfInAppMessageContent.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: InAppMessageContent)
    ListOfJourneyResponse.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: JourneyResponse)
    ListOfJourneyRunResponse.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: JourneyRunResponse)
    ListOfMessageHeader.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageHeader)
    ListOfMultiConditionalBranch.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MultiConditionalBranch)
    ListOfOpenHoursRules.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: OpenHoursRule)
    ListOfRandomSplitEntry.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RandomSplitEntry)
    ListOfRecommenderConfigurationResponse.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecommenderConfigurationResponse)
    ListOfResultRow.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResultRow)
    ListOfResultRowValue.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResultRowValue)
    ListOfSegmentDimensions.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SegmentDimensions)
    ListOfSegmentGroup.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SegmentGroup)
    ListOfSegmentReference.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SegmentReference)
    ListOfSegmentResponse.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SegmentResponse)
    ListOfSimpleCondition.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SimpleCondition)
    ListOfTemplateResponse.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateResponse)
    ListOfTemplateVersionResponse.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionResponse)
    ListOfTreatmentResource.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TreatmentResource)
    ListOfWriteTreatmentResource.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: WriteTreatmentResource)
    ListOfEndpointtypeselement.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Endpointtypeselement)
    ListOfTimezoneestimationmethodselement.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timezoneestimationmethodselement)
    ListOfString.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    ListRecommenderConfigurationsResponse.add_member(:item, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfRecommenderConfigurationResponse, location_name: 'Item', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ListRecommenderConfigurationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken'))
    ListRecommenderConfigurationsResponse.type = Types::ListRecommenderConfigurationsResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags_model, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagsModel, location_name: 'TagsModel', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceResponse[:http_payload] = :tags_model
    ListTagsForResourceResponse[:http_payload_member] = ListTagsForResourceResponse.member(:tags_model)
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ListTemplateVersionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#httpQuery" => "next-token"}))
    ListTemplateVersionsRequest.add_member(:page_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PageSize', traits: {"smithy.api#httpQuery" => "page-size"}))
    ListTemplateVersionsRequest.add_member(:template_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TemplateName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTemplateVersionsRequest.add_member(:template_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TemplateType', traits: {"smithy.api#httpLabel" => {}, "smithy.api#pattern" => "^[^a-z]*$", "smithy.api#required" => {}}))
    ListTemplateVersionsRequest.type = Types::ListTemplateVersionsRequest
    ListTemplateVersionsResponse.add_member(:template_versions_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionsResponse, location_name: 'TemplateVersionsResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    ListTemplateVersionsResponse[:http_payload] = :template_versions_response
    ListTemplateVersionsResponse[:http_payload_member] = ListTemplateVersionsResponse.member(:template_versions_response)
    ListTemplateVersionsResponse.type = Types::ListTemplateVersionsResponse
    ListTemplatesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#httpQuery" => "next-token"}))
    ListTemplatesRequest.add_member(:page_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PageSize', traits: {"smithy.api#httpQuery" => "page-size"}))
    ListTemplatesRequest.add_member(:prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Prefix', traits: {"smithy.api#httpQuery" => "prefix"}))
    ListTemplatesRequest.add_member(:template_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TemplateType', traits: {"smithy.api#httpQuery" => "template-type"}))
    ListTemplatesRequest.type = Types::ListTemplatesRequest
    ListTemplatesResponse.add_member(:templates_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplatesResponse, location_name: 'TemplatesResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    ListTemplatesResponse[:http_payload] = :templates_response
    ListTemplatesResponse[:http_payload_member] = ListTemplatesResponse.member(:templates_response)
    ListTemplatesResponse.type = Types::ListTemplatesResponse
    MapOfActivity.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    MapOfActivity.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Activity)
    MapOfAddressConfiguration.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    MapOfAddressConfiguration.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddressConfiguration)
    MapOfAttributeDimension.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    MapOfAttributeDimension.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeDimension)
    MapOfChannelResponse.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    MapOfChannelResponse.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelResponse)
    MapOfEndpointMessageResult.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    MapOfEndpointMessageResult.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointMessageResult)
    MapOfEndpointSendConfiguration.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    MapOfEndpointSendConfiguration.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointSendConfiguration)
    MapOfEvent.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    MapOfEvent.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Event)
    MapOfEventItemResponse.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    MapOfEventItemResponse.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventItemResponse)
    MapOfEventsBatch.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    MapOfEventsBatch.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventsBatch)
    MapOfItemResponse.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    MapOfItemResponse.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ItemResponse)
    MapOfListOfOpenHoursRules.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DayOfWeek)
    MapOfListOfOpenHoursRules.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfOpenHoursRules)
    MapOfListOfString.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    MapOfListOfString.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfString)
    MapOfMapOfEndpointMessageResult.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    MapOfMapOfEndpointMessageResult.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfEndpointMessageResult)
    MapOfMessageResult.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    MapOfMessageResult.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageResult)
    MapOfMetricDimension.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    MapOfMetricDimension.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricDimension)
    MapOfDouble.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    MapOfDouble.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Double)
    MapOfInteger.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    MapOfInteger.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer)
    MapOfString.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    MapOfString.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    Message.add_member(:action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Action, location_name: 'Action'))
    Message.add_member(:body, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Body'))
    Message.add_member(:image_icon_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ImageIconUrl'))
    Message.add_member(:image_small_icon_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ImageSmallIconUrl'))
    Message.add_member(:image_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ImageUrl'))
    Message.add_member(:json_body, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'JsonBody'))
    Message.add_member(:media_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MediaUrl'))
    Message.add_member(:raw_content, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RawContent'))
    Message.add_member(:silent_push, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'SilentPush'))
    Message.add_member(:time_to_live, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'TimeToLive'))
    Message.add_member(:title, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Title'))
    Message.add_member(:url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Url'))
    Message.type = Types::Message
    MessageBody.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    MessageBody.add_member(:request_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RequestID'))
    MessageBody.type = Types::MessageBody
    MessageConfiguration.add_member(:adm_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'ADMMessage'))
    MessageConfiguration.add_member(:apns_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'APNSMessage'))
    MessageConfiguration.add_member(:baidu_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'BaiduMessage'))
    MessageConfiguration.add_member(:custom_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignCustomMessage, location_name: 'CustomMessage'))
    MessageConfiguration.add_member(:default_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'DefaultMessage'))
    MessageConfiguration.add_member(:email_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignEmailMessage, location_name: 'EmailMessage'))
    MessageConfiguration.add_member(:gcm_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'GCMMessage'))
    MessageConfiguration.add_member(:sms_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignSmsMessage, location_name: 'SMSMessage'))
    MessageConfiguration.add_member(:in_app_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignInAppMessage, location_name: 'InAppMessage'))
    MessageConfiguration.type = Types::MessageConfiguration
    MessageHeader.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name'))
    MessageHeader.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Value'))
    MessageHeader.type = Types::MessageHeader
    MessageRequest.add_member(:addresses, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfAddressConfiguration, location_name: 'Addresses'))
    MessageRequest.add_member(:context, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfString, location_name: 'Context'))
    MessageRequest.add_member(:endpoints, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfEndpointSendConfiguration, location_name: 'Endpoints'))
    MessageRequest.add_member(:message_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectMessageConfiguration, location_name: 'MessageConfiguration', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    MessageRequest.add_member(:template_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateConfiguration, location_name: 'TemplateConfiguration'))
    MessageRequest.add_member(:trace_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TraceId'))
    MessageRequest.type = Types::MessageRequest
    MessageResponse.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    MessageResponse.add_member(:endpoint_result, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfEndpointMessageResult, location_name: 'EndpointResult'))
    MessageResponse.add_member(:request_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RequestId'))
    MessageResponse.add_member(:result, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfMessageResult, location_name: 'Result'))
    MessageResponse.type = Types::MessageResponse
    MessageResult.add_member(:delivery_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeliveryStatus, location_name: 'DeliveryStatus', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    MessageResult.add_member(:message_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MessageId'))
    MessageResult.add_member(:status_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'StatusCode', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    MessageResult.add_member(:status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StatusMessage'))
    MessageResult.add_member(:updated_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'UpdatedToken'))
    MessageResult.type = Types::MessageResult
    MessageType.add_member(:transactional, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TRANSACTIONAL', traits: {"smithy.api#enumValue" => "TRANSACTIONAL"}))
    MessageType.add_member(:promotional, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PROMOTIONAL', traits: {"smithy.api#enumValue" => "PROMOTIONAL"}))
    MethodNotAllowedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    MethodNotAllowedException.add_member(:request_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RequestID'))
    MethodNotAllowedException.type = Types::MethodNotAllowedException
    MetricDimension.add_member(:comparison_operator, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ComparisonOperator', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    MetricDimension.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'Value', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    MetricDimension.type = Types::MetricDimension
    Mode.add_member(:delivery, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELIVERY', traits: {"smithy.api#enumValue" => "DELIVERY"}))
    Mode.add_member(:filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FILTER', traits: {"smithy.api#enumValue" => "FILTER"}))
    MultiConditionalBranch.add_member(:condition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SimpleCondition, location_name: 'Condition'))
    MultiConditionalBranch.add_member(:next_activity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextActivity'))
    MultiConditionalBranch.type = Types::MultiConditionalBranch
    MultiConditionalSplitActivity.add_member(:branches, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfMultiConditionalBranch, location_name: 'Branches'))
    MultiConditionalSplitActivity.add_member(:default_activity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DefaultActivity'))
    MultiConditionalSplitActivity.add_member(:evaluation_wait_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WaitTime, location_name: 'EvaluationWaitTime'))
    MultiConditionalSplitActivity.type = Types::MultiConditionalSplitActivity
    NotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    NotFoundException.add_member(:request_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RequestID'))
    NotFoundException.type = Types::NotFoundException
    NumberValidateRequest.add_member(:iso_country_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IsoCountryCode'))
    NumberValidateRequest.add_member(:phone_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PhoneNumber'))
    NumberValidateRequest.type = Types::NumberValidateRequest
    NumberValidateResponse.add_member(:carrier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Carrier'))
    NumberValidateResponse.add_member(:city, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'City'))
    NumberValidateResponse.add_member(:cleansed_phone_number_e164, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CleansedPhoneNumberE164'))
    NumberValidateResponse.add_member(:cleansed_phone_number_national, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CleansedPhoneNumberNational'))
    NumberValidateResponse.add_member(:country, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Country'))
    NumberValidateResponse.add_member(:country_code_iso2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CountryCodeIso2'))
    NumberValidateResponse.add_member(:country_code_numeric, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CountryCodeNumeric'))
    NumberValidateResponse.add_member(:county, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'County'))
    NumberValidateResponse.add_member(:original_country_code_iso2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OriginalCountryCodeIso2'))
    NumberValidateResponse.add_member(:original_phone_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OriginalPhoneNumber'))
    NumberValidateResponse.add_member(:phone_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PhoneType'))
    NumberValidateResponse.add_member(:phone_type_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'PhoneTypeCode'))
    NumberValidateResponse.add_member(:timezone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Timezone'))
    NumberValidateResponse.add_member(:zip_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ZipCode'))
    NumberValidateResponse.type = Types::NumberValidateResponse
    OpenHours.add_member(:email, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfListOfOpenHoursRules, location_name: 'EMAIL'))
    OpenHours.add_member(:sms, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfListOfOpenHoursRules, location_name: 'SMS'))
    OpenHours.add_member(:push, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfListOfOpenHoursRules, location_name: 'PUSH'))
    OpenHours.add_member(:voice, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfListOfOpenHoursRules, location_name: 'VOICE'))
    OpenHours.add_member(:custom, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfListOfOpenHoursRules, location_name: 'CUSTOM'))
    OpenHours.type = Types::OpenHours
    OpenHoursRule.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StartTime'))
    OpenHoursRule.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EndTime'))
    OpenHoursRule.type = Types::OpenHoursRule
    Operator.add_member(:all, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALL', traits: {"smithy.api#enumValue" => "ALL"}))
    Operator.add_member(:any, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ANY', traits: {"smithy.api#enumValue" => "ANY"}))
    OverrideButtonConfiguration.add_member(:button_action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ButtonAction, location_name: 'ButtonAction', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    OverrideButtonConfiguration.add_member(:link, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Link'))
    OverrideButtonConfiguration.type = Types::OverrideButtonConfiguration
    PayloadTooLargeException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    PayloadTooLargeException.add_member(:request_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RequestID'))
    PayloadTooLargeException.type = Types::PayloadTooLargeException
    PhoneNumberValidateRequest.add_member(:number_validate_request, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NumberValidateRequest, location_name: 'NumberValidateRequest', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    PhoneNumberValidateRequest[:http_payload] = :number_validate_request
    PhoneNumberValidateRequest[:http_payload_member] = PhoneNumberValidateRequest.member(:number_validate_request)
    PhoneNumberValidateRequest.type = Types::PhoneNumberValidateRequest
    PhoneNumberValidateResponse.add_member(:number_validate_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NumberValidateResponse, location_name: 'NumberValidateResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    PhoneNumberValidateResponse[:http_payload] = :number_validate_response
    PhoneNumberValidateResponse[:http_payload_member] = PhoneNumberValidateResponse.member(:number_validate_response)
    PhoneNumberValidateResponse.type = Types::PhoneNumberValidateResponse
    PublicEndpoint.add_member(:address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Address'))
    PublicEndpoint.add_member(:attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfListOfString, location_name: 'Attributes'))
    PublicEndpoint.add_member(:channel_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelType, location_name: 'ChannelType'))
    PublicEndpoint.add_member(:demographic, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointDemographic, location_name: 'Demographic'))
    PublicEndpoint.add_member(:effective_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EffectiveDate'))
    PublicEndpoint.add_member(:endpoint_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EndpointStatus'))
    PublicEndpoint.add_member(:location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointLocation, location_name: 'Location'))
    PublicEndpoint.add_member(:metrics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfDouble, location_name: 'Metrics'))
    PublicEndpoint.add_member(:opt_out, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OptOut'))
    PublicEndpoint.add_member(:request_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RequestId'))
    PublicEndpoint.add_member(:user, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointUser, location_name: 'User'))
    PublicEndpoint.type = Types::PublicEndpoint
    PushMessageActivity.add_member(:message_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JourneyPushMessage, location_name: 'MessageConfig'))
    PushMessageActivity.add_member(:next_activity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextActivity'))
    PushMessageActivity.add_member(:template_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TemplateName'))
    PushMessageActivity.add_member(:template_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TemplateVersion'))
    PushMessageActivity.type = Types::PushMessageActivity
    PushNotificationTemplateRequest.add_member(:adm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AndroidPushNotificationTemplate, location_name: 'ADM'))
    PushNotificationTemplateRequest.add_member(:apns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: APNSPushNotificationTemplate, location_name: 'APNS'))
    PushNotificationTemplateRequest.add_member(:baidu, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AndroidPushNotificationTemplate, location_name: 'Baidu'))
    PushNotificationTemplateRequest.add_member(:default, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DefaultPushNotificationTemplate, location_name: 'Default'))
    PushNotificationTemplateRequest.add_member(:default_substitutions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DefaultSubstitutions'))
    PushNotificationTemplateRequest.add_member(:gcm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AndroidPushNotificationTemplate, location_name: 'GCM'))
    PushNotificationTemplateRequest.add_member(:recommender_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RecommenderId'))
    PushNotificationTemplateRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfString, location_name: 'tags', traits: {"smithy.api#jsonName" => "tags"}))
    PushNotificationTemplateRequest.add_member(:template_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TemplateDescription'))
    PushNotificationTemplateRequest.type = Types::PushNotificationTemplateRequest
    PushNotificationTemplateResponse.add_member(:adm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AndroidPushNotificationTemplate, location_name: 'ADM'))
    PushNotificationTemplateResponse.add_member(:apns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: APNSPushNotificationTemplate, location_name: 'APNS'))
    PushNotificationTemplateResponse.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn'))
    PushNotificationTemplateResponse.add_member(:baidu, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AndroidPushNotificationTemplate, location_name: 'Baidu'))
    PushNotificationTemplateResponse.add_member(:creation_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreationDate', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    PushNotificationTemplateResponse.add_member(:default, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DefaultPushNotificationTemplate, location_name: 'Default'))
    PushNotificationTemplateResponse.add_member(:default_substitutions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DefaultSubstitutions'))
    PushNotificationTemplateResponse.add_member(:gcm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AndroidPushNotificationTemplate, location_name: 'GCM'))
    PushNotificationTemplateResponse.add_member(:last_modified_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LastModifiedDate', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    PushNotificationTemplateResponse.add_member(:recommender_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RecommenderId'))
    PushNotificationTemplateResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfString, location_name: 'tags', traits: {"smithy.api#jsonName" => "tags"}))
    PushNotificationTemplateResponse.add_member(:template_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TemplateDescription'))
    PushNotificationTemplateResponse.add_member(:template_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TemplateName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    PushNotificationTemplateResponse.add_member(:template_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateType, location_name: 'TemplateType', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    PushNotificationTemplateResponse.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Version'))
    PushNotificationTemplateResponse.type = Types::PushNotificationTemplateResponse
    PutEventStreamRequest.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutEventStreamRequest.add_member(:write_event_stream, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WriteEventStream, location_name: 'WriteEventStream', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    PutEventStreamRequest[:http_payload] = :write_event_stream
    PutEventStreamRequest[:http_payload_member] = PutEventStreamRequest.member(:write_event_stream)
    PutEventStreamRequest.type = Types::PutEventStreamRequest
    PutEventStreamResponse.add_member(:event_stream, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventStream, location_name: 'EventStream', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    PutEventStreamResponse[:http_payload] = :event_stream
    PutEventStreamResponse[:http_payload_member] = PutEventStreamResponse.member(:event_stream)
    PutEventStreamResponse.type = Types::PutEventStreamResponse
    PutEventsRequest.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutEventsRequest.add_member(:events_request, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventsRequest, location_name: 'EventsRequest', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    PutEventsRequest[:http_payload] = :events_request
    PutEventsRequest[:http_payload_member] = PutEventsRequest.member(:events_request)
    PutEventsRequest.type = Types::PutEventsRequest
    PutEventsResponse.add_member(:events_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventsResponse, location_name: 'EventsResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    PutEventsResponse[:http_payload] = :events_response
    PutEventsResponse[:http_payload_member] = PutEventsResponse.member(:events_response)
    PutEventsResponse.type = Types::PutEventsResponse
    QuietTime.add_member(:end, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'End'))
    QuietTime.add_member(:start, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Start'))
    QuietTime.type = Types::QuietTime
    RandomSplitActivity.add_member(:branches, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfRandomSplitEntry, location_name: 'Branches'))
    RandomSplitActivity.type = Types::RandomSplitActivity
    RandomSplitEntry.add_member(:next_activity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextActivity'))
    RandomSplitEntry.add_member(:percentage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Percentage'))
    RandomSplitEntry.type = Types::RandomSplitEntry
    RawEmail.add_member(:data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Blob, location_name: 'Data'))
    RawEmail.type = Types::RawEmail
    RecencyDimension.add_member(:duration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Duration, location_name: 'Duration', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RecencyDimension.add_member(:recency_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecencyType, location_name: 'RecencyType', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RecencyDimension.type = Types::RecencyDimension
    RecencyType.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    RecencyType.add_member(:inactive, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INACTIVE', traits: {"smithy.api#enumValue" => "INACTIVE"}))
    RecommenderConfigurationResponse.add_member(:attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfString, location_name: 'Attributes'))
    RecommenderConfigurationResponse.add_member(:creation_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreationDate', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RecommenderConfigurationResponse.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description'))
    RecommenderConfigurationResponse.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RecommenderConfigurationResponse.add_member(:last_modified_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LastModifiedDate', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RecommenderConfigurationResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name'))
    RecommenderConfigurationResponse.add_member(:recommendation_provider_id_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RecommendationProviderIdType'))
    RecommenderConfigurationResponse.add_member(:recommendation_provider_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RecommendationProviderRoleArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RecommenderConfigurationResponse.add_member(:recommendation_provider_uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RecommendationProviderUri', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RecommenderConfigurationResponse.add_member(:recommendation_transformer_uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RecommendationTransformerUri'))
    RecommenderConfigurationResponse.add_member(:recommendations_display_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RecommendationsDisplayName'))
    RecommenderConfigurationResponse.add_member(:recommendations_per_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'RecommendationsPerMessage'))
    RecommenderConfigurationResponse.type = Types::RecommenderConfigurationResponse
    RemoveAttributesRequest.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RemoveAttributesRequest.add_member(:attribute_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AttributeType', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RemoveAttributesRequest.add_member(:update_attributes_request, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAttributesRequest, location_name: 'UpdateAttributesRequest', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    RemoveAttributesRequest[:http_payload] = :update_attributes_request
    RemoveAttributesRequest[:http_payload_member] = RemoveAttributesRequest.member(:update_attributes_request)
    RemoveAttributesRequest.type = Types::RemoveAttributesRequest
    RemoveAttributesResponse.add_member(:attributes_resource, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributesResource, location_name: 'AttributesResource', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    RemoveAttributesResponse[:http_payload] = :attributes_resource
    RemoveAttributesResponse[:http_payload_member] = RemoveAttributesResponse.member(:attributes_resource)
    RemoveAttributesResponse.type = Types::RemoveAttributesResponse
    ResultRow.add_member(:grouped_bys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfResultRowValue, location_name: 'GroupedBys', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ResultRow.add_member(:values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfResultRowValue, location_name: 'Values', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ResultRow.type = Types::ResultRow
    ResultRowValue.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Key', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ResultRowValue.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Type', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ResultRowValue.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Value', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ResultRowValue.type = Types::ResultRowValue
    SMSChannelRequest.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled'))
    SMSChannelRequest.add_member(:sender_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SenderId'))
    SMSChannelRequest.add_member(:short_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ShortCode'))
    SMSChannelRequest.type = Types::SMSChannelRequest
    SMSChannelResponse.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId'))
    SMSChannelResponse.add_member(:creation_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreationDate'))
    SMSChannelResponse.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled'))
    SMSChannelResponse.add_member(:has_credential, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'HasCredential'))
    SMSChannelResponse.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id'))
    SMSChannelResponse.add_member(:is_archived, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IsArchived'))
    SMSChannelResponse.add_member(:last_modified_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LastModifiedBy'))
    SMSChannelResponse.add_member(:last_modified_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LastModifiedDate'))
    SMSChannelResponse.add_member(:platform, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Platform', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SMSChannelResponse.add_member(:promotional_messages_per_second, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'PromotionalMessagesPerSecond'))
    SMSChannelResponse.add_member(:sender_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SenderId'))
    SMSChannelResponse.add_member(:short_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ShortCode'))
    SMSChannelResponse.add_member(:transactional_messages_per_second, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'TransactionalMessagesPerSecond'))
    SMSChannelResponse.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Version'))
    SMSChannelResponse.type = Types::SMSChannelResponse
    SMSMessage.add_member(:body, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Body'))
    SMSMessage.add_member(:keyword, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Keyword'))
    SMSMessage.add_member(:media_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MediaUrl'))
    SMSMessage.add_member(:message_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageType, location_name: 'MessageType'))
    SMSMessage.add_member(:origination_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OriginationNumber'))
    SMSMessage.add_member(:sender_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SenderId'))
    SMSMessage.add_member(:substitutions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfListOfString, location_name: 'Substitutions'))
    SMSMessage.add_member(:entity_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EntityId'))
    SMSMessage.add_member(:template_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TemplateId'))
    SMSMessage.type = Types::SMSMessage
    SMSMessageActivity.add_member(:message_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JourneySMSMessage, location_name: 'MessageConfig'))
    SMSMessageActivity.add_member(:next_activity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextActivity'))
    SMSMessageActivity.add_member(:template_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TemplateName'))
    SMSMessageActivity.add_member(:template_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TemplateVersion'))
    SMSMessageActivity.type = Types::SMSMessageActivity
    SMSTemplateRequest.add_member(:body, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Body'))
    SMSTemplateRequest.add_member(:default_substitutions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DefaultSubstitutions'))
    SMSTemplateRequest.add_member(:recommender_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RecommenderId'))
    SMSTemplateRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfString, location_name: 'tags', traits: {"smithy.api#jsonName" => "tags"}))
    SMSTemplateRequest.add_member(:template_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TemplateDescription'))
    SMSTemplateRequest.type = Types::SMSTemplateRequest
    SMSTemplateResponse.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn'))
    SMSTemplateResponse.add_member(:body, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Body'))
    SMSTemplateResponse.add_member(:creation_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreationDate', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SMSTemplateResponse.add_member(:default_substitutions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DefaultSubstitutions'))
    SMSTemplateResponse.add_member(:last_modified_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LastModifiedDate', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SMSTemplateResponse.add_member(:recommender_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RecommenderId'))
    SMSTemplateResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfString, location_name: 'tags', traits: {"smithy.api#jsonName" => "tags"}))
    SMSTemplateResponse.add_member(:template_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TemplateDescription'))
    SMSTemplateResponse.add_member(:template_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TemplateName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SMSTemplateResponse.add_member(:template_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateType, location_name: 'TemplateType', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SMSTemplateResponse.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Version'))
    SMSTemplateResponse.type = Types::SMSTemplateResponse
    Schedule.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EndTime'))
    Schedule.add_member(:event_filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignEventFilter, location_name: 'EventFilter'))
    Schedule.add_member(:frequency, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Frequency, location_name: 'Frequency'))
    Schedule.add_member(:is_local_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IsLocalTime'))
    Schedule.add_member(:quiet_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QuietTime, location_name: 'QuietTime'))
    Schedule.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StartTime', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Schedule.add_member(:timezone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Timezone'))
    Schedule.type = Types::Schedule
    SegmentBehaviors.add_member(:recency, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecencyDimension, location_name: 'Recency'))
    SegmentBehaviors.type = Types::SegmentBehaviors
    SegmentCondition.add_member(:segment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SegmentId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SegmentCondition.type = Types::SegmentCondition
    SegmentDemographics.add_member(:app_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SetDimension, location_name: 'AppVersion'))
    SegmentDemographics.add_member(:channel, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SetDimension, location_name: 'Channel'))
    SegmentDemographics.add_member(:device_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SetDimension, location_name: 'DeviceType'))
    SegmentDemographics.add_member(:make, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SetDimension, location_name: 'Make'))
    SegmentDemographics.add_member(:model, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SetDimension, location_name: 'Model'))
    SegmentDemographics.add_member(:platform, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SetDimension, location_name: 'Platform'))
    SegmentDemographics.type = Types::SegmentDemographics
    SegmentDimensions.add_member(:attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfAttributeDimension, location_name: 'Attributes'))
    SegmentDimensions.add_member(:behavior, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SegmentBehaviors, location_name: 'Behavior'))
    SegmentDimensions.add_member(:demographic, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SegmentDemographics, location_name: 'Demographic'))
    SegmentDimensions.add_member(:location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SegmentLocation, location_name: 'Location'))
    SegmentDimensions.add_member(:metrics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfMetricDimension, location_name: 'Metrics'))
    SegmentDimensions.add_member(:user_attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfAttributeDimension, location_name: 'UserAttributes'))
    SegmentDimensions.type = Types::SegmentDimensions
    SegmentGroup.add_member(:dimensions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfSegmentDimensions, location_name: 'Dimensions'))
    SegmentGroup.add_member(:source_segments, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfSegmentReference, location_name: 'SourceSegments'))
    SegmentGroup.add_member(:source_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceType, location_name: 'SourceType'))
    SegmentGroup.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Type, location_name: 'Type'))
    SegmentGroup.type = Types::SegmentGroup
    SegmentGroupList.add_member(:groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfSegmentGroup, location_name: 'Groups'))
    SegmentGroupList.add_member(:include, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Include, location_name: 'Include'))
    SegmentGroupList.type = Types::SegmentGroupList
    SegmentImportResource.add_member(:channel_counts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfInteger, location_name: 'ChannelCounts'))
    SegmentImportResource.add_member(:external_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ExternalId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SegmentImportResource.add_member(:format, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Format, location_name: 'Format', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SegmentImportResource.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RoleArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SegmentImportResource.add_member(:s3_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'S3Url', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SegmentImportResource.add_member(:size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Size', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SegmentImportResource.type = Types::SegmentImportResource
    SegmentLocation.add_member(:country, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SetDimension, location_name: 'Country'))
    SegmentLocation.add_member(:gps_point, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GPSPointDimension, location_name: 'GPSPoint'))
    SegmentLocation.type = Types::SegmentLocation
    SegmentReference.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SegmentReference.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Version'))
    SegmentReference.type = Types::SegmentReference
    SegmentResponse.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SegmentResponse.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SegmentResponse.add_member(:creation_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreationDate', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SegmentResponse.add_member(:dimensions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SegmentDimensions, location_name: 'Dimensions'))
    SegmentResponse.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SegmentResponse.add_member(:import_definition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SegmentImportResource, location_name: 'ImportDefinition'))
    SegmentResponse.add_member(:last_modified_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LastModifiedDate'))
    SegmentResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name'))
    SegmentResponse.add_member(:segment_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SegmentGroupList, location_name: 'SegmentGroups'))
    SegmentResponse.add_member(:segment_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SegmentType, location_name: 'SegmentType', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SegmentResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfString, location_name: 'tags', traits: {"smithy.api#jsonName" => "tags"}))
    SegmentResponse.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Version'))
    SegmentResponse.type = Types::SegmentResponse
    SegmentType.add_member(:dimensional, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DIMENSIONAL', traits: {"smithy.api#enumValue" => "DIMENSIONAL"}))
    SegmentType.add_member(:import, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IMPORT', traits: {"smithy.api#enumValue" => "IMPORT"}))
    SegmentsResponse.add_member(:item, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfSegmentResponse, location_name: 'Item', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SegmentsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken'))
    SegmentsResponse.type = Types::SegmentsResponse
    SendMessagesRequest.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    SendMessagesRequest.add_member(:message_request, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageRequest, location_name: 'MessageRequest', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    SendMessagesRequest[:http_payload] = :message_request
    SendMessagesRequest[:http_payload_member] = SendMessagesRequest.member(:message_request)
    SendMessagesRequest.type = Types::SendMessagesRequest
    SendMessagesResponse.add_member(:message_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageResponse, location_name: 'MessageResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    SendMessagesResponse[:http_payload] = :message_response
    SendMessagesResponse[:http_payload_member] = SendMessagesResponse.member(:message_response)
    SendMessagesResponse.type = Types::SendMessagesResponse
    SendOTPMessageRequest.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    SendOTPMessageRequest.add_member(:send_otp_message_request_parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SendOTPMessageRequestParameters, location_name: 'SendOTPMessageRequestParameters', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    SendOTPMessageRequest[:http_payload] = :send_otp_message_request_parameters
    SendOTPMessageRequest[:http_payload_member] = SendOTPMessageRequest.member(:send_otp_message_request_parameters)
    SendOTPMessageRequest.type = Types::SendOTPMessageRequest
    SendOTPMessageRequestParameters.add_member(:allowed_attempts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'AllowedAttempts'))
    SendOTPMessageRequestParameters.add_member(:brand_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BrandName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SendOTPMessageRequestParameters.add_member(:channel, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Channel', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SendOTPMessageRequestParameters.add_member(:code_length, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'CodeLength'))
    SendOTPMessageRequestParameters.add_member(:destination_identity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DestinationIdentity', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SendOTPMessageRequestParameters.add_member(:entity_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EntityId'))
    SendOTPMessageRequestParameters.add_member(:language, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Language'))
    SendOTPMessageRequestParameters.add_member(:origination_identity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OriginationIdentity', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SendOTPMessageRequestParameters.add_member(:reference_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReferenceId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SendOTPMessageRequestParameters.add_member(:template_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TemplateId'))
    SendOTPMessageRequestParameters.add_member(:validity_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'ValidityPeriod'))
    SendOTPMessageRequestParameters.type = Types::SendOTPMessageRequestParameters
    SendOTPMessageResponse.add_member(:message_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageResponse, location_name: 'MessageResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    SendOTPMessageResponse[:http_payload] = :message_response
    SendOTPMessageResponse[:http_payload_member] = SendOTPMessageResponse.member(:message_response)
    SendOTPMessageResponse.type = Types::SendOTPMessageResponse
    SendUsersMessageRequest.add_member(:context, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfString, location_name: 'Context'))
    SendUsersMessageRequest.add_member(:message_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectMessageConfiguration, location_name: 'MessageConfiguration', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SendUsersMessageRequest.add_member(:template_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateConfiguration, location_name: 'TemplateConfiguration'))
    SendUsersMessageRequest.add_member(:trace_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TraceId'))
    SendUsersMessageRequest.add_member(:users, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfEndpointSendConfiguration, location_name: 'Users', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SendUsersMessageRequest.type = Types::SendUsersMessageRequest
    SendUsersMessageResponse.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SendUsersMessageResponse.add_member(:request_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RequestId'))
    SendUsersMessageResponse.add_member(:result, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfMapOfEndpointMessageResult, location_name: 'Result'))
    SendUsersMessageResponse.type = Types::SendUsersMessageResponse
    SendUsersMessagesRequest.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    SendUsersMessagesRequest.add_member(:send_users_message_request, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SendUsersMessageRequest, location_name: 'SendUsersMessageRequest', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    SendUsersMessagesRequest[:http_payload] = :send_users_message_request
    SendUsersMessagesRequest[:http_payload_member] = SendUsersMessagesRequest.member(:send_users_message_request)
    SendUsersMessagesRequest.type = Types::SendUsersMessagesRequest
    SendUsersMessagesResponse.add_member(:send_users_message_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SendUsersMessageResponse, location_name: 'SendUsersMessageResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    SendUsersMessagesResponse[:http_payload] = :send_users_message_response
    SendUsersMessagesResponse[:http_payload_member] = SendUsersMessagesResponse.member(:send_users_message_response)
    SendUsersMessagesResponse.type = Types::SendUsersMessagesResponse
    Session.add_member(:duration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Duration'))
    Session.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Session.add_member(:start_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StartTimestamp', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Session.add_member(:stop_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StopTimestamp'))
    Session.type = Types::Session
    SetDimension.add_member(:dimension_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DimensionType, location_name: 'DimensionType'))
    SetDimension.add_member(:values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfString, location_name: 'Values', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SetDimension.type = Types::SetDimension
    SimpleCondition.add_member(:event_condition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventCondition, location_name: 'EventCondition'))
    SimpleCondition.add_member(:segment_condition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SegmentCondition, location_name: 'SegmentCondition'))
    SimpleCondition.add_member(:segment_dimensions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SegmentDimensions, location_name: 'SegmentDimensions', traits: {"smithy.api#jsonName" => "segmentDimensions"}))
    SimpleCondition.type = Types::SimpleCondition
    SimpleEmail.add_member(:html_part, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SimpleEmailPart, location_name: 'HtmlPart'))
    SimpleEmail.add_member(:subject, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SimpleEmailPart, location_name: 'Subject'))
    SimpleEmail.add_member(:text_part, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SimpleEmailPart, location_name: 'TextPart'))
    SimpleEmail.add_member(:headers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfMessageHeader, location_name: 'Headers'))
    SimpleEmail.type = Types::SimpleEmail
    SimpleEmailPart.add_member(:charset, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Charset'))
    SimpleEmailPart.add_member(:data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Data'))
    SimpleEmailPart.type = Types::SimpleEmailPart
    SourceType.add_member(:all, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALL', traits: {"smithy.api#enumValue" => "ALL"}))
    SourceType.add_member(:any, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ANY', traits: {"smithy.api#enumValue" => "ANY"}))
    SourceType.add_member(:none, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NONE', traits: {"smithy.api#enumValue" => "NONE"}))
    StartCondition.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description'))
    StartCondition.add_member(:event_start_condition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventStartCondition, location_name: 'EventStartCondition'))
    StartCondition.add_member(:segment_start_condition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SegmentCondition, location_name: 'SegmentStartCondition'))
    StartCondition.type = Types::StartCondition
    State.add_member(:draft, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DRAFT', traits: {"smithy.api#enumValue" => "DRAFT"}))
    State.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    State.add_member(:completed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETED', traits: {"smithy.api#enumValue" => "COMPLETED"}))
    State.add_member(:cancelled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANCELLED', traits: {"smithy.api#enumValue" => "CANCELLED"}))
    State.add_member(:closed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CLOSED', traits: {"smithy.api#enumValue" => "CLOSED"}))
    State.add_member(:paused, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PAUSED', traits: {"smithy.api#enumValue" => "PAUSED"}))
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags_model, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagsModel, location_name: 'TagsModel', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    TagResourceRequest[:http_payload] = :tags_model
    TagResourceRequest[:http_payload_member] = TagResourceRequest.member(:tags_model)
    TagResourceRequest.type = Types::TagResourceRequest
    TagsModel.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfString, location_name: 'tags', traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "tags", "smithy.api#required" => {}}))
    TagsModel.type = Types::TagsModel
    Template.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name'))
    Template.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Version'))
    Template.type = Types::Template
    TemplateActiveVersionRequest.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Version'))
    TemplateActiveVersionRequest.type = Types::TemplateActiveVersionRequest
    TemplateConfiguration.add_member(:email_template, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Template, location_name: 'EmailTemplate'))
    TemplateConfiguration.add_member(:push_template, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Template, location_name: 'PushTemplate'))
    TemplateConfiguration.add_member(:sms_template, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Template, location_name: 'SMSTemplate'))
    TemplateConfiguration.add_member(:voice_template, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Template, location_name: 'VoiceTemplate'))
    TemplateConfiguration.add_member(:in_app_template, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Template, location_name: 'InAppTemplate'))
    TemplateConfiguration.type = Types::TemplateConfiguration
    TemplateCreateMessageBody.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn'))
    TemplateCreateMessageBody.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    TemplateCreateMessageBody.add_member(:request_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RequestID'))
    TemplateCreateMessageBody.type = Types::TemplateCreateMessageBody
    TemplateResponse.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn'))
    TemplateResponse.add_member(:creation_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreationDate', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    TemplateResponse.add_member(:default_substitutions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DefaultSubstitutions'))
    TemplateResponse.add_member(:last_modified_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LastModifiedDate', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    TemplateResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfString, location_name: 'tags', traits: {"smithy.api#jsonName" => "tags"}))
    TemplateResponse.add_member(:template_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TemplateDescription'))
    TemplateResponse.add_member(:template_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TemplateName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    TemplateResponse.add_member(:template_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateType, location_name: 'TemplateType', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    TemplateResponse.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Version'))
    TemplateResponse.type = Types::TemplateResponse
    TemplateType.add_member(:email, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EMAIL', traits: {"smithy.api#enumValue" => "EMAIL"}))
    TemplateType.add_member(:sms, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SMS', traits: {"smithy.api#enumValue" => "SMS"}))
    TemplateType.add_member(:voice, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VOICE', traits: {"smithy.api#enumValue" => "VOICE"}))
    TemplateType.add_member(:push, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PUSH', traits: {"smithy.api#enumValue" => "PUSH"}))
    TemplateType.add_member(:inapp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INAPP', traits: {"smithy.api#enumValue" => "INAPP"}))
    TemplateVersionResponse.add_member(:creation_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreationDate', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    TemplateVersionResponse.add_member(:default_substitutions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DefaultSubstitutions'))
    TemplateVersionResponse.add_member(:last_modified_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LastModifiedDate', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    TemplateVersionResponse.add_member(:template_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TemplateDescription'))
    TemplateVersionResponse.add_member(:template_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TemplateName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    TemplateVersionResponse.add_member(:template_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TemplateType', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    TemplateVersionResponse.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Version'))
    TemplateVersionResponse.type = Types::TemplateVersionResponse
    TemplateVersionsResponse.add_member(:item, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfTemplateVersionResponse, location_name: 'Item', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    TemplateVersionsResponse.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    TemplateVersionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken'))
    TemplateVersionsResponse.add_member(:request_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RequestID'))
    TemplateVersionsResponse.type = Types::TemplateVersionsResponse
    TemplatesResponse.add_member(:item, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfTemplateResponse, location_name: 'Item', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    TemplatesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken'))
    TemplatesResponse.type = Types::TemplatesResponse
    TooManyRequestsException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    TooManyRequestsException.add_member(:request_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RequestID'))
    TooManyRequestsException.type = Types::TooManyRequestsException
    TreatmentResource.add_member(:custom_delivery_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomDeliveryConfiguration, location_name: 'CustomDeliveryConfiguration'))
    TreatmentResource.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    TreatmentResource.add_member(:message_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageConfiguration, location_name: 'MessageConfiguration'))
    TreatmentResource.add_member(:schedule, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Schedule, location_name: 'Schedule'))
    TreatmentResource.add_member(:size_percent, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'SizePercent', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    TreatmentResource.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignState, location_name: 'State'))
    TreatmentResource.add_member(:template_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateConfiguration, location_name: 'TemplateConfiguration'))
    TreatmentResource.add_member(:treatment_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TreatmentDescription'))
    TreatmentResource.add_member(:treatment_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TreatmentName'))
    TreatmentResource.type = Types::TreatmentResource
    Type.add_member(:all, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALL', traits: {"smithy.api#enumValue" => "ALL"}))
    Type.add_member(:any, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ANY', traits: {"smithy.api#enumValue" => "ANY"}))
    Type.add_member(:none, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NONE', traits: {"smithy.api#enumValue" => "NONE"}))
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfString, location_name: 'TagKeys', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UpdateAdmChannelRequest.add_member(:adm_channel_request, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ADMChannelRequest, location_name: 'ADMChannelRequest', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    UpdateAdmChannelRequest.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAdmChannelRequest[:http_payload] = :adm_channel_request
    UpdateAdmChannelRequest[:http_payload_member] = UpdateAdmChannelRequest.member(:adm_channel_request)
    UpdateAdmChannelRequest.type = Types::UpdateAdmChannelRequest
    UpdateAdmChannelResponse.add_member(:adm_channel_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ADMChannelResponse, location_name: 'ADMChannelResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    UpdateAdmChannelResponse[:http_payload] = :adm_channel_response
    UpdateAdmChannelResponse[:http_payload_member] = UpdateAdmChannelResponse.member(:adm_channel_response)
    UpdateAdmChannelResponse.type = Types::UpdateAdmChannelResponse
    UpdateApnsChannelRequest.add_member(:apns_channel_request, ::Smithy::Schema::Shapes::ShapeRef.new(shape: APNSChannelRequest, location_name: 'APNSChannelRequest', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    UpdateApnsChannelRequest.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateApnsChannelRequest[:http_payload] = :apns_channel_request
    UpdateApnsChannelRequest[:http_payload_member] = UpdateApnsChannelRequest.member(:apns_channel_request)
    UpdateApnsChannelRequest.type = Types::UpdateApnsChannelRequest
    UpdateApnsChannelResponse.add_member(:apns_channel_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: APNSChannelResponse, location_name: 'APNSChannelResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    UpdateApnsChannelResponse[:http_payload] = :apns_channel_response
    UpdateApnsChannelResponse[:http_payload_member] = UpdateApnsChannelResponse.member(:apns_channel_response)
    UpdateApnsChannelResponse.type = Types::UpdateApnsChannelResponse
    UpdateApnsSandboxChannelRequest.add_member(:apns_sandbox_channel_request, ::Smithy::Schema::Shapes::ShapeRef.new(shape: APNSSandboxChannelRequest, location_name: 'APNSSandboxChannelRequest', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    UpdateApnsSandboxChannelRequest.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateApnsSandboxChannelRequest[:http_payload] = :apns_sandbox_channel_request
    UpdateApnsSandboxChannelRequest[:http_payload_member] = UpdateApnsSandboxChannelRequest.member(:apns_sandbox_channel_request)
    UpdateApnsSandboxChannelRequest.type = Types::UpdateApnsSandboxChannelRequest
    UpdateApnsSandboxChannelResponse.add_member(:apns_sandbox_channel_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: APNSSandboxChannelResponse, location_name: 'APNSSandboxChannelResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    UpdateApnsSandboxChannelResponse[:http_payload] = :apns_sandbox_channel_response
    UpdateApnsSandboxChannelResponse[:http_payload_member] = UpdateApnsSandboxChannelResponse.member(:apns_sandbox_channel_response)
    UpdateApnsSandboxChannelResponse.type = Types::UpdateApnsSandboxChannelResponse
    UpdateApnsVoipChannelRequest.add_member(:apns_voip_channel_request, ::Smithy::Schema::Shapes::ShapeRef.new(shape: APNSVoipChannelRequest, location_name: 'APNSVoipChannelRequest', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    UpdateApnsVoipChannelRequest.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateApnsVoipChannelRequest[:http_payload] = :apns_voip_channel_request
    UpdateApnsVoipChannelRequest[:http_payload_member] = UpdateApnsVoipChannelRequest.member(:apns_voip_channel_request)
    UpdateApnsVoipChannelRequest.type = Types::UpdateApnsVoipChannelRequest
    UpdateApnsVoipChannelResponse.add_member(:apns_voip_channel_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: APNSVoipChannelResponse, location_name: 'APNSVoipChannelResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    UpdateApnsVoipChannelResponse[:http_payload] = :apns_voip_channel_response
    UpdateApnsVoipChannelResponse[:http_payload_member] = UpdateApnsVoipChannelResponse.member(:apns_voip_channel_response)
    UpdateApnsVoipChannelResponse.type = Types::UpdateApnsVoipChannelResponse
    UpdateApnsVoipSandboxChannelRequest.add_member(:apns_voip_sandbox_channel_request, ::Smithy::Schema::Shapes::ShapeRef.new(shape: APNSVoipSandboxChannelRequest, location_name: 'APNSVoipSandboxChannelRequest', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    UpdateApnsVoipSandboxChannelRequest.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateApnsVoipSandboxChannelRequest[:http_payload] = :apns_voip_sandbox_channel_request
    UpdateApnsVoipSandboxChannelRequest[:http_payload_member] = UpdateApnsVoipSandboxChannelRequest.member(:apns_voip_sandbox_channel_request)
    UpdateApnsVoipSandboxChannelRequest.type = Types::UpdateApnsVoipSandboxChannelRequest
    UpdateApnsVoipSandboxChannelResponse.add_member(:apns_voip_sandbox_channel_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: APNSVoipSandboxChannelResponse, location_name: 'APNSVoipSandboxChannelResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    UpdateApnsVoipSandboxChannelResponse[:http_payload] = :apns_voip_sandbox_channel_response
    UpdateApnsVoipSandboxChannelResponse[:http_payload_member] = UpdateApnsVoipSandboxChannelResponse.member(:apns_voip_sandbox_channel_response)
    UpdateApnsVoipSandboxChannelResponse.type = Types::UpdateApnsVoipSandboxChannelResponse
    UpdateApplicationSettingsRequest.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateApplicationSettingsRequest.add_member(:write_application_settings_request, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WriteApplicationSettingsRequest, location_name: 'WriteApplicationSettingsRequest', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    UpdateApplicationSettingsRequest[:http_payload] = :write_application_settings_request
    UpdateApplicationSettingsRequest[:http_payload_member] = UpdateApplicationSettingsRequest.member(:write_application_settings_request)
    UpdateApplicationSettingsRequest.type = Types::UpdateApplicationSettingsRequest
    UpdateApplicationSettingsResponse.add_member(:application_settings_resource, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationSettingsResource, location_name: 'ApplicationSettingsResource', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    UpdateApplicationSettingsResponse[:http_payload] = :application_settings_resource
    UpdateApplicationSettingsResponse[:http_payload_member] = UpdateApplicationSettingsResponse.member(:application_settings_resource)
    UpdateApplicationSettingsResponse.type = Types::UpdateApplicationSettingsResponse
    UpdateAttributesRequest.add_member(:blacklist, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfString, location_name: 'Blacklist'))
    UpdateAttributesRequest.type = Types::UpdateAttributesRequest
    UpdateBaiduChannelRequest.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateBaiduChannelRequest.add_member(:baidu_channel_request, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaiduChannelRequest, location_name: 'BaiduChannelRequest', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    UpdateBaiduChannelRequest[:http_payload] = :baidu_channel_request
    UpdateBaiduChannelRequest[:http_payload_member] = UpdateBaiduChannelRequest.member(:baidu_channel_request)
    UpdateBaiduChannelRequest.type = Types::UpdateBaiduChannelRequest
    UpdateBaiduChannelResponse.add_member(:baidu_channel_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaiduChannelResponse, location_name: 'BaiduChannelResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    UpdateBaiduChannelResponse[:http_payload] = :baidu_channel_response
    UpdateBaiduChannelResponse[:http_payload_member] = UpdateBaiduChannelResponse.member(:baidu_channel_response)
    UpdateBaiduChannelResponse.type = Types::UpdateBaiduChannelResponse
    UpdateCampaignRequest.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateCampaignRequest.add_member(:campaign_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CampaignId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateCampaignRequest.add_member(:write_campaign_request, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WriteCampaignRequest, location_name: 'WriteCampaignRequest', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    UpdateCampaignRequest[:http_payload] = :write_campaign_request
    UpdateCampaignRequest[:http_payload_member] = UpdateCampaignRequest.member(:write_campaign_request)
    UpdateCampaignRequest.type = Types::UpdateCampaignRequest
    UpdateCampaignResponse.add_member(:campaign_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignResponse, location_name: 'CampaignResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    UpdateCampaignResponse[:http_payload] = :campaign_response
    UpdateCampaignResponse[:http_payload_member] = UpdateCampaignResponse.member(:campaign_response)
    UpdateCampaignResponse.type = Types::UpdateCampaignResponse
    UpdateEmailChannelRequest.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateEmailChannelRequest.add_member(:email_channel_request, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmailChannelRequest, location_name: 'EmailChannelRequest', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    UpdateEmailChannelRequest[:http_payload] = :email_channel_request
    UpdateEmailChannelRequest[:http_payload_member] = UpdateEmailChannelRequest.member(:email_channel_request)
    UpdateEmailChannelRequest.type = Types::UpdateEmailChannelRequest
    UpdateEmailChannelResponse.add_member(:email_channel_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmailChannelResponse, location_name: 'EmailChannelResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    UpdateEmailChannelResponse[:http_payload] = :email_channel_response
    UpdateEmailChannelResponse[:http_payload_member] = UpdateEmailChannelResponse.member(:email_channel_response)
    UpdateEmailChannelResponse.type = Types::UpdateEmailChannelResponse
    UpdateEmailTemplateRequest.add_member(:create_new_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'CreateNewVersion', traits: {"smithy.api#httpQuery" => "create-new-version"}))
    UpdateEmailTemplateRequest.add_member(:email_template_request, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmailTemplateRequest, location_name: 'EmailTemplateRequest', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    UpdateEmailTemplateRequest.add_member(:template_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TemplateName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateEmailTemplateRequest.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Version', traits: {"smithy.api#httpQuery" => "version"}))
    UpdateEmailTemplateRequest[:http_payload] = :email_template_request
    UpdateEmailTemplateRequest[:http_payload_member] = UpdateEmailTemplateRequest.member(:email_template_request)
    UpdateEmailTemplateRequest.type = Types::UpdateEmailTemplateRequest
    UpdateEmailTemplateResponse.add_member(:message_body, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageBody, location_name: 'MessageBody', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    UpdateEmailTemplateResponse[:http_payload] = :message_body
    UpdateEmailTemplateResponse[:http_payload_member] = UpdateEmailTemplateResponse.member(:message_body)
    UpdateEmailTemplateResponse.type = Types::UpdateEmailTemplateResponse
    UpdateEndpointRequest.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateEndpointRequest.add_member(:endpoint_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EndpointId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateEndpointRequest.add_member(:endpoint_request, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointRequest, location_name: 'EndpointRequest', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    UpdateEndpointRequest[:http_payload] = :endpoint_request
    UpdateEndpointRequest[:http_payload_member] = UpdateEndpointRequest.member(:endpoint_request)
    UpdateEndpointRequest.type = Types::UpdateEndpointRequest
    UpdateEndpointResponse.add_member(:message_body, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageBody, location_name: 'MessageBody', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    UpdateEndpointResponse[:http_payload] = :message_body
    UpdateEndpointResponse[:http_payload_member] = UpdateEndpointResponse.member(:message_body)
    UpdateEndpointResponse.type = Types::UpdateEndpointResponse
    UpdateEndpointsBatchRequest.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateEndpointsBatchRequest.add_member(:endpoint_batch_request, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointBatchRequest, location_name: 'EndpointBatchRequest', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    UpdateEndpointsBatchRequest[:http_payload] = :endpoint_batch_request
    UpdateEndpointsBatchRequest[:http_payload_member] = UpdateEndpointsBatchRequest.member(:endpoint_batch_request)
    UpdateEndpointsBatchRequest.type = Types::UpdateEndpointsBatchRequest
    UpdateEndpointsBatchResponse.add_member(:message_body, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageBody, location_name: 'MessageBody', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    UpdateEndpointsBatchResponse[:http_payload] = :message_body
    UpdateEndpointsBatchResponse[:http_payload_member] = UpdateEndpointsBatchResponse.member(:message_body)
    UpdateEndpointsBatchResponse.type = Types::UpdateEndpointsBatchResponse
    UpdateGcmChannelRequest.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateGcmChannelRequest.add_member(:gcm_channel_request, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GCMChannelRequest, location_name: 'GCMChannelRequest', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    UpdateGcmChannelRequest[:http_payload] = :gcm_channel_request
    UpdateGcmChannelRequest[:http_payload_member] = UpdateGcmChannelRequest.member(:gcm_channel_request)
    UpdateGcmChannelRequest.type = Types::UpdateGcmChannelRequest
    UpdateGcmChannelResponse.add_member(:gcm_channel_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GCMChannelResponse, location_name: 'GCMChannelResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    UpdateGcmChannelResponse[:http_payload] = :gcm_channel_response
    UpdateGcmChannelResponse[:http_payload_member] = UpdateGcmChannelResponse.member(:gcm_channel_response)
    UpdateGcmChannelResponse.type = Types::UpdateGcmChannelResponse
    UpdateInAppTemplateRequest.add_member(:create_new_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'CreateNewVersion', traits: {"smithy.api#httpQuery" => "create-new-version"}))
    UpdateInAppTemplateRequest.add_member(:in_app_template_request, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InAppTemplateRequest, location_name: 'InAppTemplateRequest', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    UpdateInAppTemplateRequest.add_member(:template_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TemplateName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateInAppTemplateRequest.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Version', traits: {"smithy.api#httpQuery" => "version"}))
    UpdateInAppTemplateRequest[:http_payload] = :in_app_template_request
    UpdateInAppTemplateRequest[:http_payload_member] = UpdateInAppTemplateRequest.member(:in_app_template_request)
    UpdateInAppTemplateRequest.type = Types::UpdateInAppTemplateRequest
    UpdateInAppTemplateResponse.add_member(:message_body, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageBody, location_name: 'MessageBody', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    UpdateInAppTemplateResponse[:http_payload] = :message_body
    UpdateInAppTemplateResponse[:http_payload_member] = UpdateInAppTemplateResponse.member(:message_body)
    UpdateInAppTemplateResponse.type = Types::UpdateInAppTemplateResponse
    UpdateJourneyRequest.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateJourneyRequest.add_member(:journey_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'JourneyId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateJourneyRequest.add_member(:write_journey_request, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WriteJourneyRequest, location_name: 'WriteJourneyRequest', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    UpdateJourneyRequest[:http_payload] = :write_journey_request
    UpdateJourneyRequest[:http_payload_member] = UpdateJourneyRequest.member(:write_journey_request)
    UpdateJourneyRequest.type = Types::UpdateJourneyRequest
    UpdateJourneyResponse.add_member(:journey_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JourneyResponse, location_name: 'JourneyResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    UpdateJourneyResponse[:http_payload] = :journey_response
    UpdateJourneyResponse[:http_payload_member] = UpdateJourneyResponse.member(:journey_response)
    UpdateJourneyResponse.type = Types::UpdateJourneyResponse
    UpdateJourneyStateRequest.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateJourneyStateRequest.add_member(:journey_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'JourneyId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateJourneyStateRequest.add_member(:journey_state_request, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JourneyStateRequest, location_name: 'JourneyStateRequest', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    UpdateJourneyStateRequest[:http_payload] = :journey_state_request
    UpdateJourneyStateRequest[:http_payload_member] = UpdateJourneyStateRequest.member(:journey_state_request)
    UpdateJourneyStateRequest.type = Types::UpdateJourneyStateRequest
    UpdateJourneyStateResponse.add_member(:journey_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JourneyResponse, location_name: 'JourneyResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    UpdateJourneyStateResponse[:http_payload] = :journey_response
    UpdateJourneyStateResponse[:http_payload_member] = UpdateJourneyStateResponse.member(:journey_response)
    UpdateJourneyStateResponse.type = Types::UpdateJourneyStateResponse
    UpdatePushTemplateRequest.add_member(:create_new_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'CreateNewVersion', traits: {"smithy.api#httpQuery" => "create-new-version"}))
    UpdatePushTemplateRequest.add_member(:push_notification_template_request, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PushNotificationTemplateRequest, location_name: 'PushNotificationTemplateRequest', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    UpdatePushTemplateRequest.add_member(:template_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TemplateName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdatePushTemplateRequest.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Version', traits: {"smithy.api#httpQuery" => "version"}))
    UpdatePushTemplateRequest[:http_payload] = :push_notification_template_request
    UpdatePushTemplateRequest[:http_payload_member] = UpdatePushTemplateRequest.member(:push_notification_template_request)
    UpdatePushTemplateRequest.type = Types::UpdatePushTemplateRequest
    UpdatePushTemplateResponse.add_member(:message_body, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageBody, location_name: 'MessageBody', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    UpdatePushTemplateResponse[:http_payload] = :message_body
    UpdatePushTemplateResponse[:http_payload_member] = UpdatePushTemplateResponse.member(:message_body)
    UpdatePushTemplateResponse.type = Types::UpdatePushTemplateResponse
    UpdateRecommenderConfigurationRequest.add_member(:recommender_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RecommenderId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateRecommenderConfigurationRequest.add_member(:update_recommender_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRecommenderConfigurationShape, location_name: 'UpdateRecommenderConfiguration', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    UpdateRecommenderConfigurationRequest[:http_payload] = :update_recommender_configuration
    UpdateRecommenderConfigurationRequest[:http_payload_member] = UpdateRecommenderConfigurationRequest.member(:update_recommender_configuration)
    UpdateRecommenderConfigurationRequest.type = Types::UpdateRecommenderConfigurationRequest
    UpdateRecommenderConfigurationResponse.add_member(:recommender_configuration_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecommenderConfigurationResponse, location_name: 'RecommenderConfigurationResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    UpdateRecommenderConfigurationResponse[:http_payload] = :recommender_configuration_response
    UpdateRecommenderConfigurationResponse[:http_payload_member] = UpdateRecommenderConfigurationResponse.member(:recommender_configuration_response)
    UpdateRecommenderConfigurationResponse.type = Types::UpdateRecommenderConfigurationResponse
    UpdateRecommenderConfigurationShape.add_member(:attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfString, location_name: 'Attributes'))
    UpdateRecommenderConfigurationShape.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description'))
    UpdateRecommenderConfigurationShape.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name'))
    UpdateRecommenderConfigurationShape.add_member(:recommendation_provider_id_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RecommendationProviderIdType'))
    UpdateRecommenderConfigurationShape.add_member(:recommendation_provider_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RecommendationProviderRoleArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    UpdateRecommenderConfigurationShape.add_member(:recommendation_provider_uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RecommendationProviderUri', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    UpdateRecommenderConfigurationShape.add_member(:recommendation_transformer_uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RecommendationTransformerUri'))
    UpdateRecommenderConfigurationShape.add_member(:recommendations_display_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RecommendationsDisplayName'))
    UpdateRecommenderConfigurationShape.add_member(:recommendations_per_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'RecommendationsPerMessage'))
    UpdateRecommenderConfigurationShape.type = Types::UpdateRecommenderConfigurationShape
    UpdateSegmentRequest.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateSegmentRequest.add_member(:segment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SegmentId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateSegmentRequest.add_member(:write_segment_request, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WriteSegmentRequest, location_name: 'WriteSegmentRequest', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    UpdateSegmentRequest[:http_payload] = :write_segment_request
    UpdateSegmentRequest[:http_payload_member] = UpdateSegmentRequest.member(:write_segment_request)
    UpdateSegmentRequest.type = Types::UpdateSegmentRequest
    UpdateSegmentResponse.add_member(:segment_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SegmentResponse, location_name: 'SegmentResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    UpdateSegmentResponse[:http_payload] = :segment_response
    UpdateSegmentResponse[:http_payload_member] = UpdateSegmentResponse.member(:segment_response)
    UpdateSegmentResponse.type = Types::UpdateSegmentResponse
    UpdateSmsChannelRequest.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateSmsChannelRequest.add_member(:sms_channel_request, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SMSChannelRequest, location_name: 'SMSChannelRequest', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    UpdateSmsChannelRequest[:http_payload] = :sms_channel_request
    UpdateSmsChannelRequest[:http_payload_member] = UpdateSmsChannelRequest.member(:sms_channel_request)
    UpdateSmsChannelRequest.type = Types::UpdateSmsChannelRequest
    UpdateSmsChannelResponse.add_member(:sms_channel_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SMSChannelResponse, location_name: 'SMSChannelResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    UpdateSmsChannelResponse[:http_payload] = :sms_channel_response
    UpdateSmsChannelResponse[:http_payload_member] = UpdateSmsChannelResponse.member(:sms_channel_response)
    UpdateSmsChannelResponse.type = Types::UpdateSmsChannelResponse
    UpdateSmsTemplateRequest.add_member(:create_new_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'CreateNewVersion', traits: {"smithy.api#httpQuery" => "create-new-version"}))
    UpdateSmsTemplateRequest.add_member(:sms_template_request, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SMSTemplateRequest, location_name: 'SMSTemplateRequest', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    UpdateSmsTemplateRequest.add_member(:template_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TemplateName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateSmsTemplateRequest.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Version', traits: {"smithy.api#httpQuery" => "version"}))
    UpdateSmsTemplateRequest[:http_payload] = :sms_template_request
    UpdateSmsTemplateRequest[:http_payload_member] = UpdateSmsTemplateRequest.member(:sms_template_request)
    UpdateSmsTemplateRequest.type = Types::UpdateSmsTemplateRequest
    UpdateSmsTemplateResponse.add_member(:message_body, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageBody, location_name: 'MessageBody', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    UpdateSmsTemplateResponse[:http_payload] = :message_body
    UpdateSmsTemplateResponse[:http_payload_member] = UpdateSmsTemplateResponse.member(:message_body)
    UpdateSmsTemplateResponse.type = Types::UpdateSmsTemplateResponse
    UpdateTemplateActiveVersionRequest.add_member(:template_active_version_request, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateActiveVersionRequest, location_name: 'TemplateActiveVersionRequest', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    UpdateTemplateActiveVersionRequest.add_member(:template_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TemplateName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateTemplateActiveVersionRequest.add_member(:template_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TemplateType', traits: {"smithy.api#httpLabel" => {}, "smithy.api#pattern" => "^[^a-z]*$", "smithy.api#required" => {}}))
    UpdateTemplateActiveVersionRequest[:http_payload] = :template_active_version_request
    UpdateTemplateActiveVersionRequest[:http_payload_member] = UpdateTemplateActiveVersionRequest.member(:template_active_version_request)
    UpdateTemplateActiveVersionRequest.type = Types::UpdateTemplateActiveVersionRequest
    UpdateTemplateActiveVersionResponse.add_member(:message_body, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageBody, location_name: 'MessageBody', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    UpdateTemplateActiveVersionResponse[:http_payload] = :message_body
    UpdateTemplateActiveVersionResponse[:http_payload_member] = UpdateTemplateActiveVersionResponse.member(:message_body)
    UpdateTemplateActiveVersionResponse.type = Types::UpdateTemplateActiveVersionResponse
    UpdateVoiceChannelRequest.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateVoiceChannelRequest.add_member(:voice_channel_request, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VoiceChannelRequest, location_name: 'VoiceChannelRequest', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    UpdateVoiceChannelRequest[:http_payload] = :voice_channel_request
    UpdateVoiceChannelRequest[:http_payload_member] = UpdateVoiceChannelRequest.member(:voice_channel_request)
    UpdateVoiceChannelRequest.type = Types::UpdateVoiceChannelRequest
    UpdateVoiceChannelResponse.add_member(:voice_channel_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VoiceChannelResponse, location_name: 'VoiceChannelResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    UpdateVoiceChannelResponse[:http_payload] = :voice_channel_response
    UpdateVoiceChannelResponse[:http_payload_member] = UpdateVoiceChannelResponse.member(:voice_channel_response)
    UpdateVoiceChannelResponse.type = Types::UpdateVoiceChannelResponse
    UpdateVoiceTemplateRequest.add_member(:create_new_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'CreateNewVersion', traits: {"smithy.api#httpQuery" => "create-new-version"}))
    UpdateVoiceTemplateRequest.add_member(:template_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TemplateName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateVoiceTemplateRequest.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Version', traits: {"smithy.api#httpQuery" => "version"}))
    UpdateVoiceTemplateRequest.add_member(:voice_template_request, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VoiceTemplateRequest, location_name: 'VoiceTemplateRequest', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    UpdateVoiceTemplateRequest[:http_payload] = :voice_template_request
    UpdateVoiceTemplateRequest[:http_payload_member] = UpdateVoiceTemplateRequest.member(:voice_template_request)
    UpdateVoiceTemplateRequest.type = Types::UpdateVoiceTemplateRequest
    UpdateVoiceTemplateResponse.add_member(:message_body, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageBody, location_name: 'MessageBody', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    UpdateVoiceTemplateResponse[:http_payload] = :message_body
    UpdateVoiceTemplateResponse[:http_payload_member] = UpdateVoiceTemplateResponse.member(:message_body)
    UpdateVoiceTemplateResponse.type = Types::UpdateVoiceTemplateResponse
    VerificationResponse.add_member(:valid, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Valid'))
    VerificationResponse.type = Types::VerificationResponse
    VerifyOTPMessageRequest.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    VerifyOTPMessageRequest.add_member(:verify_otp_message_request_parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VerifyOTPMessageRequestParameters, location_name: 'VerifyOTPMessageRequestParameters', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    VerifyOTPMessageRequest[:http_payload] = :verify_otp_message_request_parameters
    VerifyOTPMessageRequest[:http_payload_member] = VerifyOTPMessageRequest.member(:verify_otp_message_request_parameters)
    VerifyOTPMessageRequest.type = Types::VerifyOTPMessageRequest
    VerifyOTPMessageRequestParameters.add_member(:destination_identity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DestinationIdentity', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    VerifyOTPMessageRequestParameters.add_member(:otp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Otp', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    VerifyOTPMessageRequestParameters.add_member(:reference_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReferenceId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    VerifyOTPMessageRequestParameters.type = Types::VerifyOTPMessageRequestParameters
    VerifyOTPMessageResponse.add_member(:verification_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VerificationResponse, location_name: 'VerificationResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    VerifyOTPMessageResponse[:http_payload] = :verification_response
    VerifyOTPMessageResponse[:http_payload_member] = VerifyOTPMessageResponse.member(:verification_response)
    VerifyOTPMessageResponse.type = Types::VerifyOTPMessageResponse
    VoiceChannelRequest.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled'))
    VoiceChannelRequest.type = Types::VoiceChannelRequest
    VoiceChannelResponse.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId'))
    VoiceChannelResponse.add_member(:creation_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreationDate'))
    VoiceChannelResponse.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled'))
    VoiceChannelResponse.add_member(:has_credential, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'HasCredential'))
    VoiceChannelResponse.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id'))
    VoiceChannelResponse.add_member(:is_archived, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IsArchived'))
    VoiceChannelResponse.add_member(:last_modified_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LastModifiedBy'))
    VoiceChannelResponse.add_member(:last_modified_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LastModifiedDate'))
    VoiceChannelResponse.add_member(:platform, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Platform', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    VoiceChannelResponse.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Version'))
    VoiceChannelResponse.type = Types::VoiceChannelResponse
    VoiceMessage.add_member(:body, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Body'))
    VoiceMessage.add_member(:language_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LanguageCode'))
    VoiceMessage.add_member(:origination_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OriginationNumber'))
    VoiceMessage.add_member(:substitutions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfListOfString, location_name: 'Substitutions'))
    VoiceMessage.add_member(:voice_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VoiceId'))
    VoiceMessage.type = Types::VoiceMessage
    VoiceTemplateRequest.add_member(:body, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Body'))
    VoiceTemplateRequest.add_member(:default_substitutions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DefaultSubstitutions'))
    VoiceTemplateRequest.add_member(:language_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LanguageCode'))
    VoiceTemplateRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfString, location_name: 'tags', traits: {"smithy.api#jsonName" => "tags"}))
    VoiceTemplateRequest.add_member(:template_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TemplateDescription'))
    VoiceTemplateRequest.add_member(:voice_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VoiceId'))
    VoiceTemplateRequest.type = Types::VoiceTemplateRequest
    VoiceTemplateResponse.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn'))
    VoiceTemplateResponse.add_member(:body, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Body'))
    VoiceTemplateResponse.add_member(:creation_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreationDate', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    VoiceTemplateResponse.add_member(:default_substitutions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DefaultSubstitutions'))
    VoiceTemplateResponse.add_member(:language_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LanguageCode'))
    VoiceTemplateResponse.add_member(:last_modified_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LastModifiedDate', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    VoiceTemplateResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfString, location_name: 'tags', traits: {"smithy.api#jsonName" => "tags"}))
    VoiceTemplateResponse.add_member(:template_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TemplateDescription'))
    VoiceTemplateResponse.add_member(:template_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TemplateName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    VoiceTemplateResponse.add_member(:template_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateType, location_name: 'TemplateType', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    VoiceTemplateResponse.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Version'))
    VoiceTemplateResponse.add_member(:voice_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VoiceId'))
    VoiceTemplateResponse.type = Types::VoiceTemplateResponse
    WaitActivity.add_member(:next_activity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextActivity'))
    WaitActivity.add_member(:wait_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WaitTime, location_name: 'WaitTime'))
    WaitActivity.type = Types::WaitActivity
    WaitTime.add_member(:wait_for, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'WaitFor'))
    WaitTime.add_member(:wait_until, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'WaitUntil'))
    WaitTime.type = Types::WaitTime
    WriteApplicationSettingsRequest.add_member(:campaign_hook, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignHook, location_name: 'CampaignHook'))
    WriteApplicationSettingsRequest.add_member(:cloud_watch_metrics_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'CloudWatchMetricsEnabled'))
    WriteApplicationSettingsRequest.add_member(:event_tagging_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'EventTaggingEnabled'))
    WriteApplicationSettingsRequest.add_member(:limits, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignLimits, location_name: 'Limits'))
    WriteApplicationSettingsRequest.add_member(:quiet_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QuietTime, location_name: 'QuietTime'))
    WriteApplicationSettingsRequest.add_member(:journey_limits, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationSettingsJourneyLimits, location_name: 'JourneyLimits'))
    WriteApplicationSettingsRequest.type = Types::WriteApplicationSettingsRequest
    WriteCampaignRequest.add_member(:additional_treatments, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfWriteTreatmentResource, location_name: 'AdditionalTreatments'))
    WriteCampaignRequest.add_member(:custom_delivery_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomDeliveryConfiguration, location_name: 'CustomDeliveryConfiguration'))
    WriteCampaignRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description'))
    WriteCampaignRequest.add_member(:holdout_percent, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'HoldoutPercent'))
    WriteCampaignRequest.add_member(:hook, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignHook, location_name: 'Hook'))
    WriteCampaignRequest.add_member(:is_paused, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IsPaused'))
    WriteCampaignRequest.add_member(:limits, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignLimits, location_name: 'Limits'))
    WriteCampaignRequest.add_member(:message_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageConfiguration, location_name: 'MessageConfiguration'))
    WriteCampaignRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name'))
    WriteCampaignRequest.add_member(:schedule, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Schedule, location_name: 'Schedule'))
    WriteCampaignRequest.add_member(:segment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SegmentId'))
    WriteCampaignRequest.add_member(:segment_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'SegmentVersion'))
    WriteCampaignRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfString, location_name: 'tags', traits: {"smithy.api#jsonName" => "tags"}))
    WriteCampaignRequest.add_member(:template_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateConfiguration, location_name: 'TemplateConfiguration'))
    WriteCampaignRequest.add_member(:treatment_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TreatmentDescription'))
    WriteCampaignRequest.add_member(:treatment_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TreatmentName'))
    WriteCampaignRequest.add_member(:priority, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Priority'))
    WriteCampaignRequest.type = Types::WriteCampaignRequest
    WriteEventStream.add_member(:destination_stream_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DestinationStreamArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    WriteEventStream.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RoleArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    WriteEventStream.type = Types::WriteEventStream
    WriteJourneyRequest.add_member(:activities, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfActivity, location_name: 'Activities'))
    WriteJourneyRequest.add_member(:creation_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreationDate'))
    WriteJourneyRequest.add_member(:last_modified_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LastModifiedDate'))
    WriteJourneyRequest.add_member(:limits, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JourneyLimits, location_name: 'Limits'))
    WriteJourneyRequest.add_member(:local_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'LocalTime'))
    WriteJourneyRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    WriteJourneyRequest.add_member(:quiet_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QuietTime, location_name: 'QuietTime'))
    WriteJourneyRequest.add_member(:refresh_frequency, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RefreshFrequency'))
    WriteJourneyRequest.add_member(:schedule, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JourneySchedule, location_name: 'Schedule'))
    WriteJourneyRequest.add_member(:start_activity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StartActivity'))
    WriteJourneyRequest.add_member(:start_condition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartCondition, location_name: 'StartCondition'))
    WriteJourneyRequest.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: State, location_name: 'State'))
    WriteJourneyRequest.add_member(:wait_for_quiet_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'WaitForQuietTime'))
    WriteJourneyRequest.add_member(:refresh_on_segment_update, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'RefreshOnSegmentUpdate'))
    WriteJourneyRequest.add_member(:journey_channel_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JourneyChannelSettings, location_name: 'JourneyChannelSettings'))
    WriteJourneyRequest.add_member(:sending_schedule, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'SendingSchedule'))
    WriteJourneyRequest.add_member(:open_hours, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OpenHours, location_name: 'OpenHours'))
    WriteJourneyRequest.add_member(:closed_days, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClosedDays, location_name: 'ClosedDays'))
    WriteJourneyRequest.add_member(:timezone_estimation_methods, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfTimezoneestimationmethodselement, location_name: 'TimezoneEstimationMethods'))
    WriteJourneyRequest.type = Types::WriteJourneyRequest
    WriteSegmentRequest.add_member(:dimensions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SegmentDimensions, location_name: 'Dimensions'))
    WriteSegmentRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name'))
    WriteSegmentRequest.add_member(:segment_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SegmentGroupList, location_name: 'SegmentGroups'))
    WriteSegmentRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfString, location_name: 'tags', traits: {"smithy.api#jsonName" => "tags"}))
    WriteSegmentRequest.type = Types::WriteSegmentRequest
    WriteTreatmentResource.add_member(:custom_delivery_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomDeliveryConfiguration, location_name: 'CustomDeliveryConfiguration'))
    WriteTreatmentResource.add_member(:message_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageConfiguration, location_name: 'MessageConfiguration'))
    WriteTreatmentResource.add_member(:schedule, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Schedule, location_name: 'Schedule'))
    WriteTreatmentResource.add_member(:size_percent, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'SizePercent', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    WriteTreatmentResource.add_member(:template_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateConfiguration, location_name: 'TemplateConfiguration'))
    WriteTreatmentResource.add_member(:treatment_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TreatmentDescription'))
    WriteTreatmentResource.add_member(:treatment_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TreatmentName'))
    WriteTreatmentResource.type = Types::WriteTreatmentResource
    Endpointtypeselement.add_member(:push, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PUSH', traits: {"smithy.api#enumValue" => "PUSH"}))
    Endpointtypeselement.add_member(:gcm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GCM', traits: {"smithy.api#enumValue" => "GCM"}))
    Endpointtypeselement.add_member(:apns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APNS', traits: {"smithy.api#enumValue" => "APNS"}))
    Endpointtypeselement.add_member(:apns_sandbox, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APNS_SANDBOX', traits: {"smithy.api#enumValue" => "APNS_SANDBOX"}))
    Endpointtypeselement.add_member(:apns_voip, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APNS_VOIP', traits: {"smithy.api#enumValue" => "APNS_VOIP"}))
    Endpointtypeselement.add_member(:apns_voip_sandbox, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APNS_VOIP_SANDBOX', traits: {"smithy.api#enumValue" => "APNS_VOIP_SANDBOX"}))
    Endpointtypeselement.add_member(:adm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ADM', traits: {"smithy.api#enumValue" => "ADM"}))
    Endpointtypeselement.add_member(:sms, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SMS', traits: {"smithy.api#enumValue" => "SMS"}))
    Endpointtypeselement.add_member(:voice, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VOICE', traits: {"smithy.api#enumValue" => "VOICE"}))
    Endpointtypeselement.add_member(:email, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EMAIL', traits: {"smithy.api#enumValue" => "EMAIL"}))
    Endpointtypeselement.add_member(:baidu, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BAIDU', traits: {"smithy.api#enumValue" => "BAIDU"}))
    Endpointtypeselement.add_member(:custom, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CUSTOM', traits: {"smithy.api#enumValue" => "CUSTOM"}))
    Endpointtypeselement.add_member(:in_app, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_APP', traits: {"smithy.api#enumValue" => "IN_APP"}))
    Timezoneestimationmethodselement.add_member(:phone_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PHONE_NUMBER', traits: {"smithy.api#enumValue" => "PHONE_NUMBER"}))
    Timezoneestimationmethodselement.add_member(:postal_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'POSTAL_CODE', traits: {"smithy.api#enumValue" => "POSTAL_CODE"}))

    Pinpoint = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.pinpoint#Pinpoint"
      service.name = "Pinpoint"
      service.version = "2016-12-01"
      service.traits = {"aws.api#service" => {"sdkId" => "Pinpoint", "arnNamespace" => "mobiletargeting", "cloudFormationName" => "Pinpoint", "cloudTrailEventSource" => "pinpoint.amazonaws.com", "endpointPrefix" => "pinpoint"}, "aws.auth#sigv4" => {"name" => "mobiletargeting"}, "aws.protocols#restJson1" => {}, "smithy.api#auth" => ["aws.auth#sigv4"], "smithy.api#title" => "Amazon Pinpoint"}
      service.add_operation(:create_app, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#CreateApp"
        operation.name = "CreateApp"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAppRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAppResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/apps", "code" => 201}}
      end)
      service.add_operation(:create_campaign, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#CreateCampaign"
        operation.name = "CreateCampaign"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCampaignRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCampaignResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/apps/{ApplicationId}/campaigns", "code" => 201}}
      end)
      service.add_operation(:create_email_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#CreateEmailTemplate"
        operation.name = "CreateEmailTemplate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateEmailTemplateRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateEmailTemplateResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/templates/{TemplateName}/email", "code" => 201}}
      end)
      service.add_operation(:create_export_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#CreateExportJob"
        operation.name = "CreateExportJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateExportJobRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateExportJobResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/apps/{ApplicationId}/jobs/export", "code" => 202}}
      end)
      service.add_operation(:create_import_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#CreateImportJob"
        operation.name = "CreateImportJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateImportJobRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateImportJobResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/apps/{ApplicationId}/jobs/import", "code" => 201}}
      end)
      service.add_operation(:create_in_app_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#CreateInAppTemplate"
        operation.name = "CreateInAppTemplate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateInAppTemplateRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateInAppTemplateResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/templates/{TemplateName}/inapp", "code" => 201}}
      end)
      service.add_operation(:create_journey, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#CreateJourney"
        operation.name = "CreateJourney"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateJourneyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateJourneyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/apps/{ApplicationId}/journeys", "code" => 201}}
      end)
      service.add_operation(:create_push_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#CreatePushTemplate"
        operation.name = "CreatePushTemplate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreatePushTemplateRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreatePushTemplateResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/templates/{TemplateName}/push", "code" => 201}}
      end)
      service.add_operation(:create_recommender_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#CreateRecommenderConfiguration"
        operation.name = "CreateRecommenderConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRecommenderConfigurationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRecommenderConfigurationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/recommenders", "code" => 201}}
      end)
      service.add_operation(:create_segment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#CreateSegment"
        operation.name = "CreateSegment"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSegmentRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSegmentResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/apps/{ApplicationId}/segments", "code" => 201}}
      end)
      service.add_operation(:create_sms_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#CreateSmsTemplate"
        operation.name = "CreateSmsTemplate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSmsTemplateRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSmsTemplateResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/templates/{TemplateName}/sms", "code" => 201}}
      end)
      service.add_operation(:create_voice_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#CreateVoiceTemplate"
        operation.name = "CreateVoiceTemplate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateVoiceTemplateRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateVoiceTemplateResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/templates/{TemplateName}/voice", "code" => 201}}
      end)
      service.add_operation(:delete_adm_channel, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#DeleteAdmChannel"
        operation.name = "DeleteAdmChannel"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAdmChannelRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAdmChannelResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/apps/{ApplicationId}/channels/adm", "code" => 200}}
      end)
      service.add_operation(:delete_apns_channel, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#DeleteApnsChannel"
        operation.name = "DeleteApnsChannel"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteApnsChannelRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteApnsChannelResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/apps/{ApplicationId}/channels/apns", "code" => 200}}
      end)
      service.add_operation(:delete_apns_sandbox_channel, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#DeleteApnsSandboxChannel"
        operation.name = "DeleteApnsSandboxChannel"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteApnsSandboxChannelRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteApnsSandboxChannelResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/apps/{ApplicationId}/channels/apns_sandbox", "code" => 200}}
      end)
      service.add_operation(:delete_apns_voip_channel, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#DeleteApnsVoipChannel"
        operation.name = "DeleteApnsVoipChannel"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteApnsVoipChannelRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteApnsVoipChannelResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/apps/{ApplicationId}/channels/apns_voip", "code" => 200}}
      end)
      service.add_operation(:delete_apns_voip_sandbox_channel, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#DeleteApnsVoipSandboxChannel"
        operation.name = "DeleteApnsVoipSandboxChannel"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteApnsVoipSandboxChannelRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteApnsVoipSandboxChannelResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/apps/{ApplicationId}/channels/apns_voip_sandbox", "code" => 200}}
      end)
      service.add_operation(:delete_app, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#DeleteApp"
        operation.name = "DeleteApp"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAppRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAppResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/apps/{ApplicationId}", "code" => 200}}
      end)
      service.add_operation(:delete_baidu_channel, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#DeleteBaiduChannel"
        operation.name = "DeleteBaiduChannel"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteBaiduChannelRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteBaiduChannelResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/apps/{ApplicationId}/channels/baidu", "code" => 200}}
      end)
      service.add_operation(:delete_campaign, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#DeleteCampaign"
        operation.name = "DeleteCampaign"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCampaignRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCampaignResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/apps/{ApplicationId}/campaigns/{CampaignId}", "code" => 200}}
      end)
      service.add_operation(:delete_email_channel, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#DeleteEmailChannel"
        operation.name = "DeleteEmailChannel"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEmailChannelRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEmailChannelResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/apps/{ApplicationId}/channels/email", "code" => 200}}
      end)
      service.add_operation(:delete_email_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#DeleteEmailTemplate"
        operation.name = "DeleteEmailTemplate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEmailTemplateRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEmailTemplateResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/templates/{TemplateName}/email", "code" => 202}}
      end)
      service.add_operation(:delete_endpoint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#DeleteEndpoint"
        operation.name = "DeleteEndpoint"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEndpointRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEndpointResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/apps/{ApplicationId}/endpoints/{EndpointId}", "code" => 202}}
      end)
      service.add_operation(:delete_event_stream, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#DeleteEventStream"
        operation.name = "DeleteEventStream"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEventStreamRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEventStreamResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/apps/{ApplicationId}/eventstream", "code" => 200}}
      end)
      service.add_operation(:delete_gcm_channel, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#DeleteGcmChannel"
        operation.name = "DeleteGcmChannel"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteGcmChannelRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteGcmChannelResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/apps/{ApplicationId}/channels/gcm", "code" => 200}}
      end)
      service.add_operation(:delete_in_app_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#DeleteInAppTemplate"
        operation.name = "DeleteInAppTemplate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteInAppTemplateRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteInAppTemplateResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/templates/{TemplateName}/inapp", "code" => 202}}
      end)
      service.add_operation(:delete_journey, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#DeleteJourney"
        operation.name = "DeleteJourney"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteJourneyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteJourneyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/apps/{ApplicationId}/journeys/{JourneyId}", "code" => 200}}
      end)
      service.add_operation(:delete_push_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#DeletePushTemplate"
        operation.name = "DeletePushTemplate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePushTemplateRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePushTemplateResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/templates/{TemplateName}/push", "code" => 202}}
      end)
      service.add_operation(:delete_recommender_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#DeleteRecommenderConfiguration"
        operation.name = "DeleteRecommenderConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRecommenderConfigurationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRecommenderConfigurationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/recommenders/{RecommenderId}", "code" => 200}}
      end)
      service.add_operation(:delete_segment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#DeleteSegment"
        operation.name = "DeleteSegment"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSegmentRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSegmentResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/apps/{ApplicationId}/segments/{SegmentId}", "code" => 200}}
      end)
      service.add_operation(:delete_sms_channel, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#DeleteSmsChannel"
        operation.name = "DeleteSmsChannel"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSmsChannelRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSmsChannelResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/apps/{ApplicationId}/channels/sms", "code" => 200}}
      end)
      service.add_operation(:delete_sms_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#DeleteSmsTemplate"
        operation.name = "DeleteSmsTemplate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSmsTemplateRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSmsTemplateResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/templates/{TemplateName}/sms", "code" => 202}}
      end)
      service.add_operation(:delete_user_endpoints, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#DeleteUserEndpoints"
        operation.name = "DeleteUserEndpoints"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteUserEndpointsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteUserEndpointsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/apps/{ApplicationId}/users/{UserId}", "code" => 202}}
      end)
      service.add_operation(:delete_voice_channel, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#DeleteVoiceChannel"
        operation.name = "DeleteVoiceChannel"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteVoiceChannelRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteVoiceChannelResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/apps/{ApplicationId}/channels/voice", "code" => 200}}
      end)
      service.add_operation(:delete_voice_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#DeleteVoiceTemplate"
        operation.name = "DeleteVoiceTemplate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteVoiceTemplateRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteVoiceTemplateResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/templates/{TemplateName}/voice", "code" => 202}}
      end)
      service.add_operation(:get_adm_channel, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#GetAdmChannel"
        operation.name = "GetAdmChannel"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAdmChannelRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAdmChannelResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apps/{ApplicationId}/channels/adm", "code" => 200}}
      end)
      service.add_operation(:get_apns_channel, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#GetApnsChannel"
        operation.name = "GetApnsChannel"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetApnsChannelRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetApnsChannelResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apps/{ApplicationId}/channels/apns", "code" => 200}}
      end)
      service.add_operation(:get_apns_sandbox_channel, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#GetApnsSandboxChannel"
        operation.name = "GetApnsSandboxChannel"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetApnsSandboxChannelRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetApnsSandboxChannelResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apps/{ApplicationId}/channels/apns_sandbox", "code" => 200}}
      end)
      service.add_operation(:get_apns_voip_channel, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#GetApnsVoipChannel"
        operation.name = "GetApnsVoipChannel"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetApnsVoipChannelRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetApnsVoipChannelResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apps/{ApplicationId}/channels/apns_voip", "code" => 200}}
      end)
      service.add_operation(:get_apns_voip_sandbox_channel, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#GetApnsVoipSandboxChannel"
        operation.name = "GetApnsVoipSandboxChannel"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetApnsVoipSandboxChannelRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetApnsVoipSandboxChannelResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apps/{ApplicationId}/channels/apns_voip_sandbox", "code" => 200}}
      end)
      service.add_operation(:get_app, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#GetApp"
        operation.name = "GetApp"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAppRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAppResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apps/{ApplicationId}", "code" => 200}, "smithy.test#smokeTests" => [{"id" => "GetAppFailure", "params" => {"ApplicationId" => "InvalidApplicationId"}, "vendorParams" => {"region" => "us-west-2"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"failure" => {}}}]}
      end)
      service.add_operation(:get_application_date_range_kpi, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#GetApplicationDateRangeKpi"
        operation.name = "GetApplicationDateRangeKpi"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetApplicationDateRangeKpiRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetApplicationDateRangeKpiResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apps/{ApplicationId}/kpis/daterange/{KpiName}", "code" => 200}}
      end)
      service.add_operation(:get_application_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#GetApplicationSettings"
        operation.name = "GetApplicationSettings"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetApplicationSettingsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetApplicationSettingsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apps/{ApplicationId}/settings", "code" => 200}}
      end)
      service.add_operation(:get_apps, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#GetApps"
        operation.name = "GetApps"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAppsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAppsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apps", "code" => 200}, "smithy.test#smokeTests" => [{"id" => "GetAppsSuccess", "params" => {}, "vendorParams" => {"region" => "us-west-2"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"success" => {}}}]}
      end)
      service.add_operation(:get_baidu_channel, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#GetBaiduChannel"
        operation.name = "GetBaiduChannel"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetBaiduChannelRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetBaiduChannelResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apps/{ApplicationId}/channels/baidu", "code" => 200}}
      end)
      service.add_operation(:get_campaign, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#GetCampaign"
        operation.name = "GetCampaign"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetCampaignRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetCampaignResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apps/{ApplicationId}/campaigns/{CampaignId}", "code" => 200}}
      end)
      service.add_operation(:get_campaign_activities, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#GetCampaignActivities"
        operation.name = "GetCampaignActivities"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetCampaignActivitiesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetCampaignActivitiesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apps/{ApplicationId}/campaigns/{CampaignId}/activities", "code" => 200}}
      end)
      service.add_operation(:get_campaign_date_range_kpi, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#GetCampaignDateRangeKpi"
        operation.name = "GetCampaignDateRangeKpi"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetCampaignDateRangeKpiRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetCampaignDateRangeKpiResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apps/{ApplicationId}/campaigns/{CampaignId}/kpis/daterange/{KpiName}", "code" => 200}}
      end)
      service.add_operation(:get_campaign_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#GetCampaignVersion"
        operation.name = "GetCampaignVersion"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetCampaignVersionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetCampaignVersionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apps/{ApplicationId}/campaigns/{CampaignId}/versions/{Version}", "code" => 200}}
      end)
      service.add_operation(:get_campaign_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#GetCampaignVersions"
        operation.name = "GetCampaignVersions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetCampaignVersionsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetCampaignVersionsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apps/{ApplicationId}/campaigns/{CampaignId}/versions", "code" => 200}}
      end)
      service.add_operation(:get_campaigns, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#GetCampaigns"
        operation.name = "GetCampaigns"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetCampaignsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetCampaignsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apps/{ApplicationId}/campaigns", "code" => 200}}
      end)
      service.add_operation(:get_channels, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#GetChannels"
        operation.name = "GetChannels"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetChannelsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetChannelsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apps/{ApplicationId}/channels", "code" => 200}}
      end)
      service.add_operation(:get_email_channel, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#GetEmailChannel"
        operation.name = "GetEmailChannel"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetEmailChannelRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetEmailChannelResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apps/{ApplicationId}/channels/email", "code" => 200}}
      end)
      service.add_operation(:get_email_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#GetEmailTemplate"
        operation.name = "GetEmailTemplate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetEmailTemplateRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetEmailTemplateResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/templates/{TemplateName}/email", "code" => 200}}
      end)
      service.add_operation(:get_endpoint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#GetEndpoint"
        operation.name = "GetEndpoint"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetEndpointRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetEndpointResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apps/{ApplicationId}/endpoints/{EndpointId}", "code" => 200}}
      end)
      service.add_operation(:get_event_stream, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#GetEventStream"
        operation.name = "GetEventStream"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetEventStreamRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetEventStreamResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apps/{ApplicationId}/eventstream", "code" => 200}}
      end)
      service.add_operation(:get_export_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#GetExportJob"
        operation.name = "GetExportJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetExportJobRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetExportJobResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apps/{ApplicationId}/jobs/export/{JobId}", "code" => 200}}
      end)
      service.add_operation(:get_export_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#GetExportJobs"
        operation.name = "GetExportJobs"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetExportJobsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetExportJobsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apps/{ApplicationId}/jobs/export", "code" => 200}}
      end)
      service.add_operation(:get_gcm_channel, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#GetGcmChannel"
        operation.name = "GetGcmChannel"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetGcmChannelRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetGcmChannelResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apps/{ApplicationId}/channels/gcm", "code" => 200}}
      end)
      service.add_operation(:get_import_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#GetImportJob"
        operation.name = "GetImportJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetImportJobRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetImportJobResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apps/{ApplicationId}/jobs/import/{JobId}", "code" => 200}}
      end)
      service.add_operation(:get_import_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#GetImportJobs"
        operation.name = "GetImportJobs"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetImportJobsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetImportJobsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apps/{ApplicationId}/jobs/import", "code" => 200}}
      end)
      service.add_operation(:get_in_app_messages, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#GetInAppMessages"
        operation.name = "GetInAppMessages"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetInAppMessagesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetInAppMessagesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apps/{ApplicationId}/endpoints/{EndpointId}/inappmessages", "code" => 200}}
      end)
      service.add_operation(:get_in_app_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#GetInAppTemplate"
        operation.name = "GetInAppTemplate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetInAppTemplateRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetInAppTemplateResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/templates/{TemplateName}/inapp", "code" => 200}}
      end)
      service.add_operation(:get_journey, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#GetJourney"
        operation.name = "GetJourney"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetJourneyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetJourneyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apps/{ApplicationId}/journeys/{JourneyId}", "code" => 200}}
      end)
      service.add_operation(:get_journey_date_range_kpi, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#GetJourneyDateRangeKpi"
        operation.name = "GetJourneyDateRangeKpi"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetJourneyDateRangeKpiRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetJourneyDateRangeKpiResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apps/{ApplicationId}/journeys/{JourneyId}/kpis/daterange/{KpiName}", "code" => 200}}
      end)
      service.add_operation(:get_journey_execution_activity_metrics, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#GetJourneyExecutionActivityMetrics"
        operation.name = "GetJourneyExecutionActivityMetrics"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetJourneyExecutionActivityMetricsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetJourneyExecutionActivityMetricsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apps/{ApplicationId}/journeys/{JourneyId}/activities/{JourneyActivityId}/execution-metrics", "code" => 200}}
      end)
      service.add_operation(:get_journey_execution_metrics, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#GetJourneyExecutionMetrics"
        operation.name = "GetJourneyExecutionMetrics"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetJourneyExecutionMetricsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetJourneyExecutionMetricsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apps/{ApplicationId}/journeys/{JourneyId}/execution-metrics", "code" => 200}}
      end)
      service.add_operation(:get_journey_run_execution_activity_metrics, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#GetJourneyRunExecutionActivityMetrics"
        operation.name = "GetJourneyRunExecutionActivityMetrics"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetJourneyRunExecutionActivityMetricsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetJourneyRunExecutionActivityMetricsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apps/{ApplicationId}/journeys/{JourneyId}/runs/{RunId}/activities/{JourneyActivityId}/execution-metrics", "code" => 200}}
      end)
      service.add_operation(:get_journey_run_execution_metrics, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#GetJourneyRunExecutionMetrics"
        operation.name = "GetJourneyRunExecutionMetrics"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetJourneyRunExecutionMetricsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetJourneyRunExecutionMetricsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apps/{ApplicationId}/journeys/{JourneyId}/runs/{RunId}/execution-metrics", "code" => 200}}
      end)
      service.add_operation(:get_journey_runs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#GetJourneyRuns"
        operation.name = "GetJourneyRuns"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetJourneyRunsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetJourneyRunsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apps/{ApplicationId}/journeys/{JourneyId}/runs", "code" => 200}}
      end)
      service.add_operation(:get_push_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#GetPushTemplate"
        operation.name = "GetPushTemplate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetPushTemplateRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetPushTemplateResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/templates/{TemplateName}/push", "code" => 200}}
      end)
      service.add_operation(:get_recommender_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#GetRecommenderConfiguration"
        operation.name = "GetRecommenderConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetRecommenderConfigurationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetRecommenderConfigurationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/recommenders/{RecommenderId}", "code" => 200}}
      end)
      service.add_operation(:get_recommender_configurations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#GetRecommenderConfigurations"
        operation.name = "GetRecommenderConfigurations"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetRecommenderConfigurationsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetRecommenderConfigurationsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/recommenders", "code" => 200}}
      end)
      service.add_operation(:get_segment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#GetSegment"
        operation.name = "GetSegment"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSegmentRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSegmentResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apps/{ApplicationId}/segments/{SegmentId}", "code" => 200}}
      end)
      service.add_operation(:get_segment_export_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#GetSegmentExportJobs"
        operation.name = "GetSegmentExportJobs"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSegmentExportJobsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSegmentExportJobsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apps/{ApplicationId}/segments/{SegmentId}/jobs/export", "code" => 200}}
      end)
      service.add_operation(:get_segment_import_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#GetSegmentImportJobs"
        operation.name = "GetSegmentImportJobs"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSegmentImportJobsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSegmentImportJobsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apps/{ApplicationId}/segments/{SegmentId}/jobs/import", "code" => 200}}
      end)
      service.add_operation(:get_segment_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#GetSegmentVersion"
        operation.name = "GetSegmentVersion"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSegmentVersionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSegmentVersionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apps/{ApplicationId}/segments/{SegmentId}/versions/{Version}", "code" => 200}}
      end)
      service.add_operation(:get_segment_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#GetSegmentVersions"
        operation.name = "GetSegmentVersions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSegmentVersionsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSegmentVersionsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apps/{ApplicationId}/segments/{SegmentId}/versions", "code" => 200}}
      end)
      service.add_operation(:get_segments, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#GetSegments"
        operation.name = "GetSegments"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSegmentsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSegmentsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apps/{ApplicationId}/segments", "code" => 200}}
      end)
      service.add_operation(:get_sms_channel, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#GetSmsChannel"
        operation.name = "GetSmsChannel"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSmsChannelRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSmsChannelResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apps/{ApplicationId}/channels/sms", "code" => 200}}
      end)
      service.add_operation(:get_sms_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#GetSmsTemplate"
        operation.name = "GetSmsTemplate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSmsTemplateRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSmsTemplateResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/templates/{TemplateName}/sms", "code" => 200}}
      end)
      service.add_operation(:get_user_endpoints, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#GetUserEndpoints"
        operation.name = "GetUserEndpoints"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetUserEndpointsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetUserEndpointsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apps/{ApplicationId}/users/{UserId}", "code" => 200}}
      end)
      service.add_operation(:get_voice_channel, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#GetVoiceChannel"
        operation.name = "GetVoiceChannel"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetVoiceChannelRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetVoiceChannelResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apps/{ApplicationId}/channels/voice", "code" => 200}}
      end)
      service.add_operation(:get_voice_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#GetVoiceTemplate"
        operation.name = "GetVoiceTemplate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetVoiceTemplateRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetVoiceTemplateResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/templates/{TemplateName}/voice", "code" => 200}}
      end)
      service.add_operation(:list_journeys, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#ListJourneys"
        operation.name = "ListJourneys"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListJourneysRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListJourneysResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apps/{ApplicationId}/journeys", "code" => 200}}
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/tags/{ResourceArn}", "code" => 200}}
      end)
      service.add_operation(:list_template_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#ListTemplateVersions"
        operation.name = "ListTemplateVersions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTemplateVersionsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTemplateVersionsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/templates/{TemplateName}/{TemplateType}/versions", "code" => 200}}
      end)
      service.add_operation(:list_templates, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#ListTemplates"
        operation.name = "ListTemplates"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTemplatesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTemplatesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/templates", "code" => 200}}
      end)
      service.add_operation(:phone_number_validate, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#PhoneNumberValidate"
        operation.name = "PhoneNumberValidate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumberValidateRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumberValidateResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/phone/number/validate", "code" => 200}}
      end)
      service.add_operation(:put_event_stream, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#PutEventStream"
        operation.name = "PutEventStream"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutEventStreamRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutEventStreamResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/apps/{ApplicationId}/eventstream", "code" => 200}}
      end)
      service.add_operation(:put_events, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#PutEvents"
        operation.name = "PutEvents"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutEventsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutEventsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/apps/{ApplicationId}/events", "code" => 202}}
      end)
      service.add_operation(:remove_attributes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#RemoveAttributes"
        operation.name = "RemoveAttributes"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RemoveAttributesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RemoveAttributesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/apps/{ApplicationId}/attributes/{AttributeType}", "code" => 200}}
      end)
      service.add_operation(:send_messages, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#SendMessages"
        operation.name = "SendMessages"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SendMessagesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SendMessagesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/apps/{ApplicationId}/messages", "code" => 200}}
      end)
      service.add_operation(:send_otp_message, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#SendOTPMessage"
        operation.name = "SendOTPMessage"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SendOTPMessageRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SendOTPMessageResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/apps/{ApplicationId}/otp", "code" => 200}}
      end)
      service.add_operation(:send_users_messages, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#SendUsersMessages"
        operation.name = "SendUsersMessages"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SendUsersMessagesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SendUsersMessagesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/apps/{ApplicationId}/users-messages", "code" => 200}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#TagResource"
        operation.name = "TagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/tags/{ResourceArn}", "code" => 204}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#UntagResource"
        operation.name = "UntagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/tags/{ResourceArn}", "code" => 204}}
      end)
      service.add_operation(:update_adm_channel, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#UpdateAdmChannel"
        operation.name = "UpdateAdmChannel"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAdmChannelRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAdmChannelResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/apps/{ApplicationId}/channels/adm", "code" => 200}}
      end)
      service.add_operation(:update_apns_channel, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#UpdateApnsChannel"
        operation.name = "UpdateApnsChannel"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateApnsChannelRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateApnsChannelResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/apps/{ApplicationId}/channels/apns", "code" => 200}}
      end)
      service.add_operation(:update_apns_sandbox_channel, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#UpdateApnsSandboxChannel"
        operation.name = "UpdateApnsSandboxChannel"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateApnsSandboxChannelRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateApnsSandboxChannelResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/apps/{ApplicationId}/channels/apns_sandbox", "code" => 200}}
      end)
      service.add_operation(:update_apns_voip_channel, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#UpdateApnsVoipChannel"
        operation.name = "UpdateApnsVoipChannel"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateApnsVoipChannelRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateApnsVoipChannelResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/apps/{ApplicationId}/channels/apns_voip", "code" => 200}}
      end)
      service.add_operation(:update_apns_voip_sandbox_channel, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#UpdateApnsVoipSandboxChannel"
        operation.name = "UpdateApnsVoipSandboxChannel"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateApnsVoipSandboxChannelRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateApnsVoipSandboxChannelResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/apps/{ApplicationId}/channels/apns_voip_sandbox", "code" => 200}}
      end)
      service.add_operation(:update_application_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#UpdateApplicationSettings"
        operation.name = "UpdateApplicationSettings"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateApplicationSettingsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateApplicationSettingsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/apps/{ApplicationId}/settings", "code" => 200}}
      end)
      service.add_operation(:update_baidu_channel, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#UpdateBaiduChannel"
        operation.name = "UpdateBaiduChannel"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateBaiduChannelRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateBaiduChannelResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/apps/{ApplicationId}/channels/baidu", "code" => 200}}
      end)
      service.add_operation(:update_campaign, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#UpdateCampaign"
        operation.name = "UpdateCampaign"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateCampaignRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateCampaignResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/apps/{ApplicationId}/campaigns/{CampaignId}", "code" => 200}}
      end)
      service.add_operation(:update_email_channel, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#UpdateEmailChannel"
        operation.name = "UpdateEmailChannel"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateEmailChannelRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateEmailChannelResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/apps/{ApplicationId}/channels/email", "code" => 200}}
      end)
      service.add_operation(:update_email_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#UpdateEmailTemplate"
        operation.name = "UpdateEmailTemplate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateEmailTemplateRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateEmailTemplateResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/templates/{TemplateName}/email", "code" => 202}}
      end)
      service.add_operation(:update_endpoint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#UpdateEndpoint"
        operation.name = "UpdateEndpoint"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateEndpointRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateEndpointResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/apps/{ApplicationId}/endpoints/{EndpointId}", "code" => 202}}
      end)
      service.add_operation(:update_endpoints_batch, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#UpdateEndpointsBatch"
        operation.name = "UpdateEndpointsBatch"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateEndpointsBatchRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateEndpointsBatchResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/apps/{ApplicationId}/endpoints", "code" => 202}}
      end)
      service.add_operation(:update_gcm_channel, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#UpdateGcmChannel"
        operation.name = "UpdateGcmChannel"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateGcmChannelRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateGcmChannelResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/apps/{ApplicationId}/channels/gcm", "code" => 200}}
      end)
      service.add_operation(:update_in_app_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#UpdateInAppTemplate"
        operation.name = "UpdateInAppTemplate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateInAppTemplateRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateInAppTemplateResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/templates/{TemplateName}/inapp", "code" => 202}}
      end)
      service.add_operation(:update_journey, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#UpdateJourney"
        operation.name = "UpdateJourney"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateJourneyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateJourneyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/apps/{ApplicationId}/journeys/{JourneyId}", "code" => 200}}
      end)
      service.add_operation(:update_journey_state, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#UpdateJourneyState"
        operation.name = "UpdateJourneyState"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateJourneyStateRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateJourneyStateResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/apps/{ApplicationId}/journeys/{JourneyId}/state", "code" => 200}}
      end)
      service.add_operation(:update_push_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#UpdatePushTemplate"
        operation.name = "UpdatePushTemplate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePushTemplateRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePushTemplateResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/templates/{TemplateName}/push", "code" => 202}}
      end)
      service.add_operation(:update_recommender_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#UpdateRecommenderConfiguration"
        operation.name = "UpdateRecommenderConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRecommenderConfigurationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRecommenderConfigurationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/recommenders/{RecommenderId}", "code" => 200}}
      end)
      service.add_operation(:update_segment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#UpdateSegment"
        operation.name = "UpdateSegment"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSegmentRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSegmentResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/apps/{ApplicationId}/segments/{SegmentId}", "code" => 200}}
      end)
      service.add_operation(:update_sms_channel, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#UpdateSmsChannel"
        operation.name = "UpdateSmsChannel"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSmsChannelRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSmsChannelResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/apps/{ApplicationId}/channels/sms", "code" => 200}}
      end)
      service.add_operation(:update_sms_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#UpdateSmsTemplate"
        operation.name = "UpdateSmsTemplate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSmsTemplateRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSmsTemplateResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/templates/{TemplateName}/sms", "code" => 202}}
      end)
      service.add_operation(:update_template_active_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#UpdateTemplateActiveVersion"
        operation.name = "UpdateTemplateActiveVersion"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTemplateActiveVersionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTemplateActiveVersionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/templates/{TemplateName}/{TemplateType}/active-version", "code" => 200}}
      end)
      service.add_operation(:update_voice_channel, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#UpdateVoiceChannel"
        operation.name = "UpdateVoiceChannel"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateVoiceChannelRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateVoiceChannelResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/apps/{ApplicationId}/channels/voice", "code" => 200}}
      end)
      service.add_operation(:update_voice_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#UpdateVoiceTemplate"
        operation.name = "UpdateVoiceTemplate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateVoiceTemplateRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateVoiceTemplateResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/templates/{TemplateName}/voice", "code" => 202}}
      end)
      service.add_operation(:verify_otp_message, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#VerifyOTPMessage"
        operation.name = "VerifyOTPMessage"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: VerifyOTPMessageRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: VerifyOTPMessageResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/apps/{ApplicationId}/verify-otp", "code" => 200}}
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
